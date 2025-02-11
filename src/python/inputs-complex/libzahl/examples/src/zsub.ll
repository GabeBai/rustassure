; ModuleID = 'src/zsub.c'
source_filename = "src/zsub.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_sub = external global [1 x %struct.zahl], align 8

; Function Attrs: nounwind ssp uwtable
define void @zsub_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @libzahl_zsub_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2)
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @libzahl_zsub_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) unnamed_addr #1 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !17

7:                                                ; preds = %3
  %8 = icmp eq %struct.zahl* %0, %2
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef %2) #6
  br label %10

10:                                               ; preds = %7, %9
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !10
  %13 = and i32 %12, 1
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 8, !tbaa !10
  br label %153

15:                                               ; preds = %3
  %16 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26, !prof !17

19:                                               ; preds = %15
  %20 = icmp eq %struct.zahl* %0, %1
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1) #6
  br label %22

22:                                               ; preds = %19, %21
  %23 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %24 = load i32, i32* %23, align 8, !tbaa !10
  %25 = and i32 %24, 1
  store i32 %25, i32* %23, align 8, !tbaa !10
  br label %153

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %28 = load i64, i64* %27, align 8, !tbaa !18
  %29 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 2
  %30 = load i64, i64* %29, align 8, !tbaa !18
  %31 = add i64 %30, -1
  %32 = add i64 %28, -1
  %33 = icmp ugt i64 %32, %31
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %36 = load i64*, i64** %35, align 8, !tbaa !19
  br label %42

37:                                               ; preds = %26
  %38 = icmp ugt i64 %31, %32
  br i1 %38, label %39, label %52

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %41 = load i64*, i64** %40, align 8, !tbaa !19
  br label %59

42:                                               ; preds = %48, %34
  %43 = phi i64 [ %28, %34 ], [ %49, %48 ]
  %44 = phi i64 [ %32, %34 ], [ %50, %48 ]
  %45 = getelementptr inbounds i64, i64* %36, i64 %44
  %46 = load i64, i64* %45, align 8, !tbaa !20
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %102

48:                                               ; preds = %42
  %49 = add i64 %43, -1
  store i64 %49, i64* %27, align 8, !tbaa !18
  %50 = add i64 %44, -1
  %51 = icmp ugt i64 %50, %31
  br i1 %51, label %42, label %52

52:                                               ; preds = %65, %48, %37
  %53 = phi i64 [ %32, %37 ], [ %31, %48 ], [ %32, %65 ]
  %54 = icmp eq i64 %53, 0
  %55 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %56 = load i64*, i64** %55, align 8, !tbaa !19
  %57 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %58 = load i64*, i64** %57, align 8, !tbaa !19
  br i1 %54, label %79, label %69

59:                                               ; preds = %65, %39
  %60 = phi i64 [ %30, %39 ], [ %66, %65 ]
  %61 = phi i64 [ %31, %39 ], [ %67, %65 ]
  %62 = getelementptr inbounds i64, i64* %41, i64 %61
  %63 = load i64, i64* %62, align 8, !tbaa !20
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %59
  %66 = add i64 %60, -1
  store i64 %66, i64* %29, align 8, !tbaa !18
  %67 = add i64 %61, -1
  %68 = icmp ugt i64 %67, %32
  br i1 %68, label %59, label %52

69:                                               ; preds = %52, %76
  %70 = phi i64 [ %77, %76 ], [ %53, %52 ]
  %71 = getelementptr inbounds i64, i64* %56, i64 %70
  %72 = load i64, i64* %71, align 8, !tbaa !20
  %73 = getelementptr inbounds i64, i64* %58, i64 %70
  %74 = load i64, i64* %73, align 8, !tbaa !20
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = add i64 %70, -1
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %69

79:                                               ; preds = %76, %69, %52
  %80 = phi i64 [ 0, %52 ], [ %70, %69 ], [ 0, %76 ]
  %81 = getelementptr inbounds i64, i64* %56, i64 %80
  %82 = load i64, i64* %81, align 8, !tbaa !20
  %83 = getelementptr inbounds i64, i64* %58, i64 %80
  %84 = load i64, i64* %83, align 8, !tbaa !20
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = icmp ugt i64 %82, %84
  br i1 %87, label %102, label %88, !prof !22

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %89, align 8, !tbaa !10
  br label %153

90:                                               ; preds = %59, %79
  %91 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %92 = load i64, i64* %91, align 8, !tbaa !18
  %93 = icmp eq %struct.zahl* %0, %1
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  tail call fastcc void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0), %struct.zahl* noundef nonnull %1)
  %95 = icmp eq %struct.zahl* %1, %2
  br i1 %95, label %97, label %96

96:                                               ; preds = %94
  tail call fastcc void @zset(%struct.zahl* noundef nonnull %1, %struct.zahl* noundef %2)
  br label %97

97:                                               ; preds = %96, %94
  tail call fastcc void @zsub_impl(%struct.zahl* noundef nonnull %1, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0), i64 noundef %92)
  br label %150

98:                                               ; preds = %90
  %99 = icmp eq %struct.zahl* %0, %2
  br i1 %99, label %101, label %100

100:                                              ; preds = %98
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef %2)
  br label %101

101:                                              ; preds = %100, %98
  tail call fastcc void @zsub_impl(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1, i64 noundef %92)
  br label %150

102:                                              ; preds = %42, %86
  %103 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 2
  %104 = load i64, i64* %103, align 8, !tbaa !18
  %105 = icmp eq %struct.zahl* %0, %2
  br i1 %105, label %106, label %110, !prof !17

106:                                              ; preds = %102
  tail call fastcc void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0), %struct.zahl* noundef nonnull %2)
  %107 = icmp eq %struct.zahl* %2, %1
  br i1 %107, label %109, label %108

108:                                              ; preds = %106
  tail call fastcc void @zset(%struct.zahl* noundef nonnull %2, %struct.zahl* noundef %1)
  br label %109

109:                                              ; preds = %108, %106
  tail call fastcc void @zsub_impl(%struct.zahl* noundef nonnull %2, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0), i64 noundef %104)
  br label %150

110:                                              ; preds = %102
  %111 = icmp eq %struct.zahl* %0, %1
  br i1 %111, label %113, label %112

112:                                              ; preds = %110
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef %1)
  br label %113

113:                                              ; preds = %112, %110
  %114 = icmp eq i64 %104, 0
  br i1 %114, label %150, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %117 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %118 = load i64*, i64** %117, align 8, !tbaa !19
  %119 = load i64*, i64** %116, align 8, !tbaa !19
  br label %120

120:                                              ; preds = %120, %115
  %121 = phi i64 [ 0, %115 ], [ %134, %120 ]
  %122 = phi i64 [ 0, %115 ], [ %131, %120 ]
  %123 = icmp eq i64 %122, 0
  %124 = getelementptr inbounds i64, i64* %119, i64 %121
  %125 = load i64, i64* %124, align 8, !tbaa !20
  %126 = getelementptr inbounds i64, i64* %118, i64 %121
  %127 = load i64, i64* %126, align 8, !tbaa !20
  %128 = icmp ule i64 %125, %127
  %129 = icmp ult i64 %125, %127
  %130 = select i1 %123, i1 %129, i1 %128
  %131 = zext i1 %130 to i64
  %132 = add i64 %122, %127
  %133 = sub i64 %125, %132
  store i64 %133, i64* %124, align 8, !tbaa !20
  %134 = add nuw i64 %121, 1
  %135 = icmp eq i64 %134, %104
  br i1 %135, label %136, label %120

136:                                              ; preds = %120
  br i1 %130, label %137, label %150

137:                                              ; preds = %136, %141
  %138 = phi i64 [ %142, %141 ], [ %104, %136 ]
  %139 = getelementptr inbounds i64, i64* %119, i64 %138
  %140 = load i64, i64* %139, align 8, !tbaa !20
  switch i64 %140, label %146 [
    i64 0, label %141
    i64 1, label %143
  ]

141:                                              ; preds = %137
  %142 = add i64 %138, 1
  store i64 -1, i64* %139, align 8, !tbaa !20
  br label %137

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %145 = load i64, i64* %144, align 8, !tbaa !18
  br label %146

146:                                              ; preds = %137, %143
  %147 = phi i64 [ %145, %143 ], [ %140, %137 ]
  %148 = phi i64* [ %144, %143 ], [ %139, %137 ]
  %149 = add i64 %147, -1
  store i64 %149, i64* %148, align 8, !tbaa !23
  br label %150

150:                                              ; preds = %146, %136, %113, %109, %97, %101
  %151 = phi i32 [ 1, %109 ], [ -1, %97 ], [ -1, %101 ], [ 1, %113 ], [ 1, %136 ], [ 1, %146 ]
  %152 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %151, i32* %152, align 8, !tbaa !10
  br label %153

153:                                              ; preds = %150, %88, %22, %10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind ssp uwtable
define void @zsub_nonnegative_assign(%struct.zahl* nocapture noundef %0, %struct.zahl* nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !10
  br i1 %5, label %8, label %10, !prof !17

8:                                                ; preds = %2
  %9 = and i32 %7, 1
  store i32 %9, i32* %6, align 8, !tbaa !10
  br label %112

10:                                               ; preds = %2
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %73, label %12, !prof !17

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %14 = load i64, i64* %13, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %16 = load i64, i64* %15, align 8, !tbaa !18
  %17 = add i64 %16, -1
  %18 = add i64 %14, -1
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %22 = load i64*, i64** %21, align 8, !tbaa !19
  br label %28

23:                                               ; preds = %12
  %24 = icmp ugt i64 %17, %18
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %27 = load i64*, i64** %26, align 8, !tbaa !19
  br label %45

28:                                               ; preds = %34, %20
  %29 = phi i64 [ %14, %20 ], [ %35, %34 ]
  %30 = phi i64 [ %18, %20 ], [ %36, %34 ]
  %31 = getelementptr inbounds i64, i64* %22, i64 %30
  %32 = load i64, i64* %31, align 8, !tbaa !20
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %73

34:                                               ; preds = %28
  %35 = add i64 %29, -1
  store i64 %35, i64* %13, align 8, !tbaa !18
  %36 = add i64 %30, -1
  %37 = icmp ugt i64 %36, %17
  br i1 %37, label %28, label %38

38:                                               ; preds = %51, %34, %23
  %39 = phi i64 [ %18, %23 ], [ %17, %34 ], [ %18, %51 ]
  %40 = icmp eq i64 %39, 0
  %41 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %42 = load i64*, i64** %41, align 8, !tbaa !19
  %43 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %44 = load i64*, i64** %43, align 8, !tbaa !19
  br i1 %40, label %65, label %55

45:                                               ; preds = %51, %25
  %46 = phi i64 [ %16, %25 ], [ %52, %51 ]
  %47 = phi i64 [ %17, %25 ], [ %53, %51 ]
  %48 = getelementptr inbounds i64, i64* %27, i64 %47
  %49 = load i64, i64* %48, align 8, !tbaa !20
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = add i64 %46, -1
  store i64 %52, i64* %15, align 8, !tbaa !18
  %53 = add i64 %47, -1
  %54 = icmp ugt i64 %53, %18
  br i1 %54, label %45, label %38

55:                                               ; preds = %38, %62
  %56 = phi i64 [ %63, %62 ], [ %39, %38 ]
  %57 = getelementptr inbounds i64, i64* %42, i64 %56
  %58 = load i64, i64* %57, align 8, !tbaa !20
  %59 = getelementptr inbounds i64, i64* %44, i64 %56
  %60 = load i64, i64* %59, align 8, !tbaa !20
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = add i64 %56, -1
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %55

65:                                               ; preds = %62, %55, %38
  %66 = phi i64 [ 0, %38 ], [ %56, %55 ], [ 0, %62 ]
  %67 = getelementptr inbounds i64, i64* %42, i64 %66
  %68 = load i64, i64* %67, align 8, !tbaa !20
  %69 = getelementptr inbounds i64, i64* %44, i64 %66
  %70 = load i64, i64* %69, align 8, !tbaa !20
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %73, !prof !24

72:                                               ; preds = %65
  store i32 0, i32* %6, align 8, !tbaa !10
  br label %112

73:                                               ; preds = %45, %28, %10, %65
  %74 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %75 = load i64, i64* %74, align 8, !tbaa !18
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %112, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %79 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %80 = load i64*, i64** %79, align 8, !tbaa !19
  %81 = load i64*, i64** %78, align 8, !tbaa !19
  br label %82

82:                                               ; preds = %82, %77
  %83 = phi i64 [ 0, %77 ], [ %96, %82 ]
  %84 = phi i64 [ 0, %77 ], [ %93, %82 ]
  %85 = icmp eq i64 %84, 0
  %86 = getelementptr inbounds i64, i64* %81, i64 %83
  %87 = load i64, i64* %86, align 8, !tbaa !20
  %88 = getelementptr inbounds i64, i64* %80, i64 %83
  %89 = load i64, i64* %88, align 8, !tbaa !20
  %90 = icmp ule i64 %87, %89
  %91 = icmp ult i64 %87, %89
  %92 = select i1 %85, i1 %91, i1 %90
  %93 = zext i1 %92 to i64
  %94 = add i64 %84, %89
  %95 = sub i64 %87, %94
  store i64 %95, i64* %86, align 8, !tbaa !20
  %96 = add nuw i64 %83, 1
  %97 = icmp eq i64 %96, %75
  br i1 %97, label %98, label %82

98:                                               ; preds = %82
  br i1 %92, label %99, label %112

99:                                               ; preds = %98, %103
  %100 = phi i64 [ %104, %103 ], [ %75, %98 ]
  %101 = getelementptr inbounds i64, i64* %81, i64 %100
  %102 = load i64, i64* %101, align 8, !tbaa !20
  switch i64 %102, label %108 [
    i64 0, label %103
    i64 1, label %105
  ]

103:                                              ; preds = %99
  %104 = add i64 %100, 1
  store i64 -1, i64* %101, align 8, !tbaa !20
  br label %99

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %107 = load i64, i64* %106, align 8, !tbaa !18
  br label %108

108:                                              ; preds = %99, %105
  %109 = phi i64 [ %107, %105 ], [ %102, %99 ]
  %110 = phi i64* [ %106, %105 ], [ %101, %99 ]
  %111 = add i64 %109, -1
  store i64 %111, i64* %110, align 8, !tbaa !23
  br label %112

112:                                              ; preds = %108, %98, %73, %72, %8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind ssp uwtable
define internal fastcc void @zsub_impl(%struct.zahl* nocapture noundef %0, %struct.zahl* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #3 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %8 = load i64*, i64** %7, align 8, !tbaa !19
  %9 = load i64*, i64** %6, align 8, !tbaa !19
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i64 [ 0, %5 ], [ %25, %10 ]
  %12 = phi i64 [ 0, %5 ], [ %21, %10 ]
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds i64, i64* %9, i64 %11
  %15 = load i64, i64* %14, align 8, !tbaa !20
  %16 = getelementptr inbounds i64, i64* %8, i64 %11
  %17 = load i64, i64* %16, align 8, !tbaa !20
  %18 = icmp ule i64 %15, %17
  %19 = icmp ult i64 %15, %17
  %20 = select i1 %13, i1 %19, i1 %18
  %21 = zext i1 %20 to i64
  %22 = getelementptr inbounds i64, i64* %9, i64 %11
  %23 = add i64 %17, %12
  %24 = sub i64 %15, %23
  store i64 %24, i64* %22, align 8, !tbaa !20
  %25 = add nuw i64 %11, 1
  %26 = icmp eq i64 %25, %2
  br i1 %26, label %27, label %10

27:                                               ; preds = %10
  br i1 %20, label %28, label %44

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %30 = load i64*, i64** %29, align 8, !tbaa !19
  br label %31

31:                                               ; preds = %28, %35
  %32 = phi i64 [ %36, %35 ], [ %2, %28 ]
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8, !tbaa !20
  switch i64 %34, label %40 [
    i64 0, label %35
    i64 1, label %37
  ]

35:                                               ; preds = %31
  %36 = add i64 %32, 1
  store i64 -1, i64* %33, align 8, !tbaa !20
  br label %31

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %39 = load i64, i64* %38, align 8, !tbaa !18
  br label %40

40:                                               ; preds = %31, %37
  %41 = phi i64 [ %39, %37 ], [ %34, %31 ]
  %42 = phi i64* [ %38, %37 ], [ %33, %31 ]
  %43 = add i64 %41, -1
  store i64 %43, i64* %42, align 8, !tbaa !23
  br label %44

44:                                               ; preds = %40, %3, %27
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind ssp uwtable
define void @zsub_positive_assign(%struct.zahl* nocapture noundef %0, %struct.zahl* nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %4 = load i64, i64* %3, align 8, !tbaa !18
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %9 = load i64*, i64** %8, align 8, !tbaa !19
  %10 = load i64*, i64** %7, align 8, !tbaa !19
  br label %11

11:                                               ; preds = %11, %6
  %12 = phi i64 [ 0, %6 ], [ %25, %11 ]
  %13 = phi i64 [ 0, %6 ], [ %22, %11 ]
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds i64, i64* %10, i64 %12
  %16 = load i64, i64* %15, align 8, !tbaa !20
  %17 = getelementptr inbounds i64, i64* %9, i64 %12
  %18 = load i64, i64* %17, align 8, !tbaa !20
  %19 = icmp ule i64 %16, %18
  %20 = icmp ult i64 %16, %18
  %21 = select i1 %14, i1 %20, i1 %19
  %22 = zext i1 %21 to i64
  %23 = add i64 %13, %18
  %24 = sub i64 %16, %23
  store i64 %24, i64* %15, align 8, !tbaa !20
  %25 = add nuw i64 %12, 1
  %26 = icmp eq i64 %25, %4
  br i1 %26, label %27, label %11

27:                                               ; preds = %11
  br i1 %21, label %28, label %41

28:                                               ; preds = %27, %32
  %29 = phi i64 [ %33, %32 ], [ %4, %27 ]
  %30 = getelementptr inbounds i64, i64* %10, i64 %29
  %31 = load i64, i64* %30, align 8, !tbaa !20
  switch i64 %31, label %37 [
    i64 0, label %32
    i64 1, label %34
  ]

32:                                               ; preds = %28
  %33 = add i64 %29, 1
  store i64 -1, i64* %30, align 8, !tbaa !20
  br label %28

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %36 = load i64, i64* %35, align 8, !tbaa !18
  br label %37

37:                                               ; preds = %28, %34
  %38 = phi i64 [ %36, %34 ], [ %31, %28 ]
  %39 = phi i64* [ %35, %34 ], [ %30, %28 ]
  %40 = add i64 %38, -1
  store i64 %40, i64* %39, align 8, !tbaa !23
  br label %41

41:                                               ; preds = %2, %27, %37
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @zsub(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14, !prof !17

7:                                                ; preds = %3
  %8 = icmp eq %struct.zahl* %0, %2
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef %2) #6
  br label %10

10:                                               ; preds = %7, %9
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !10
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 8, !tbaa !10
  br label %33

14:                                               ; preds = %3
  %15 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %16 = load i32, i32* %15, align 8, !tbaa !10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21, !prof !17

18:                                               ; preds = %14
  %19 = icmp eq %struct.zahl* %0, %1
  br i1 %19, label %33, label %20

20:                                               ; preds = %18
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1)
  br label %33

21:                                               ; preds = %14
  %22 = icmp slt i32 %5, 0
  %23 = icmp slt i32 %16, 0
  br i1 %22, label %24, label %30, !prof !17

24:                                               ; preds = %21
  br i1 %23, label %25, label %26

25:                                               ; preds = %24
  tail call fastcc void @libzahl_zsub_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %2, %struct.zahl* noundef nonnull %1)
  br label %33

26:                                               ; preds = %24
  tail call void @zadd_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1, %struct.zahl* noundef nonnull %2) #6
  %27 = getelementptr %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %28 = load i32, i32* %27, align 8, !tbaa !10
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %27, align 8, !tbaa !10
  br label %33

30:                                               ; preds = %21
  br i1 %23, label %31, label %32

31:                                               ; preds = %30
  tail call void @zadd_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1, %struct.zahl* noundef nonnull %2) #6
  br label %33

32:                                               ; preds = %30
  tail call fastcc void @libzahl_zsub_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1, %struct.zahl* noundef nonnull %2)
  br label %33

33:                                               ; preds = %18, %20, %31, %32, %25, %26, %10
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
  br label %117

8:                                                ; preds = %2
  store i32 %4, i32* %6, align 8, !tbaa !10
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
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %14) #6
  %17 = load i64, i64* %9, align 8, !tbaa !18
  br label %18

18:                                               ; preds = %8, %16
  %19 = phi i64 [ %14, %8 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %23 = load i64*, i64** %22, align 8, !tbaa !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
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
  %26 = load i64, i64* %25, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %27 = getelementptr inbounds i64, i64* %21, i64 19
  store i64 %26, i64* %27, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds i64, i64* %23, i64 18
  %30 = load i64, i64* %29, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %31 = getelementptr inbounds i64, i64* %21, i64 18
  store i64 %30, i64* %31, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %32

32:                                               ; preds = %28, %18
  %33 = getelementptr inbounds i64, i64* %23, i64 17
  %34 = load i64, i64* %33, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %35 = getelementptr inbounds i64, i64* %21, i64 17
  store i64 %34, i64* %35, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %36

36:                                               ; preds = %32, %18
  %37 = getelementptr inbounds i64, i64* %23, i64 16
  %38 = load i64, i64* %37, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %39 = getelementptr inbounds i64, i64* %21, i64 16
  store i64 %38, i64* %39, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %40

40:                                               ; preds = %36, %18
  %41 = getelementptr inbounds i64, i64* %23, i64 15
  %42 = load i64, i64* %41, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %43 = getelementptr inbounds i64, i64* %21, i64 15
  store i64 %42, i64* %43, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %44

44:                                               ; preds = %40, %18
  %45 = getelementptr inbounds i64, i64* %23, i64 14
  %46 = load i64, i64* %45, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %47 = getelementptr inbounds i64, i64* %21, i64 14
  store i64 %46, i64* %47, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %48

48:                                               ; preds = %44, %18
  %49 = getelementptr inbounds i64, i64* %23, i64 13
  %50 = load i64, i64* %49, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %51 = getelementptr inbounds i64, i64* %21, i64 13
  store i64 %50, i64* %51, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %52

52:                                               ; preds = %48, %18
  %53 = getelementptr inbounds i64, i64* %23, i64 12
  %54 = load i64, i64* %53, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %55 = getelementptr inbounds i64, i64* %21, i64 12
  store i64 %54, i64* %55, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %56

56:                                               ; preds = %52, %18
  %57 = getelementptr inbounds i64, i64* %23, i64 11
  %58 = load i64, i64* %57, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %59 = getelementptr inbounds i64, i64* %21, i64 11
  store i64 %58, i64* %59, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %60

60:                                               ; preds = %56, %18
  %61 = getelementptr inbounds i64, i64* %23, i64 10
  %62 = load i64, i64* %61, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %63 = getelementptr inbounds i64, i64* %21, i64 10
  store i64 %62, i64* %63, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %64

64:                                               ; preds = %60, %18
  %65 = getelementptr inbounds i64, i64* %23, i64 9
  %66 = load i64, i64* %65, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %67 = getelementptr inbounds i64, i64* %21, i64 9
  store i64 %66, i64* %67, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %68

68:                                               ; preds = %64, %18
  %69 = getelementptr inbounds i64, i64* %23, i64 8
  %70 = load i64, i64* %69, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %71 = getelementptr inbounds i64, i64* %21, i64 8
  store i64 %70, i64* %71, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %72

72:                                               ; preds = %68, %18
  %73 = getelementptr inbounds i64, i64* %23, i64 7
  %74 = load i64, i64* %73, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %75 = getelementptr inbounds i64, i64* %21, i64 7
  store i64 %74, i64* %75, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %76

76:                                               ; preds = %72, %18
  %77 = getelementptr inbounds i64, i64* %23, i64 6
  %78 = load i64, i64* %77, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %79 = getelementptr inbounds i64, i64* %21, i64 6
  store i64 %78, i64* %79, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %80

80:                                               ; preds = %76, %18
  %81 = getelementptr inbounds i64, i64* %23, i64 5
  %82 = load i64, i64* %81, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %83 = getelementptr inbounds i64, i64* %21, i64 5
  store i64 %82, i64* %83, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %84

84:                                               ; preds = %80, %18
  %85 = getelementptr inbounds i64, i64* %23, i64 4
  %86 = load i64, i64* %85, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %87 = getelementptr inbounds i64, i64* %21, i64 4
  store i64 %86, i64* %87, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %88

88:                                               ; preds = %84, %18
  %89 = getelementptr inbounds i64, i64* %23, i64 3
  %90 = load i64, i64* %89, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %91 = getelementptr inbounds i64, i64* %21, i64 3
  store i64 %90, i64* %91, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %92

92:                                               ; preds = %88, %18
  %93 = getelementptr inbounds i64, i64* %23, i64 2
  %94 = load i64, i64* %93, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %95 = getelementptr inbounds i64, i64* %21, i64 2
  store i64 %94, i64* %95, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %96

96:                                               ; preds = %92, %18
  %97 = getelementptr inbounds i64, i64* %23, i64 1
  %98 = load i64, i64* %97, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %99 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %98, i64* %99, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %100

100:                                              ; preds = %96, %18
  %101 = load i64, i64* %23, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  store i64 %101, i64* %21, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %117

102:                                              ; preds = %18, %102
  %103 = phi i64 [ %115, %102 ], [ 0, %18 ]
  %104 = getelementptr inbounds i64, i64* %23, i64 %103
  %105 = getelementptr inbounds i64, i64* %21, i64 %103
  %106 = bitcast i64* %104 to <2 x i64>*
  %107 = load <2 x i64>, <2 x i64>* %106, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %108 = bitcast i64* %105 to <2 x i64>*
  store <2 x i64> %107, <2 x i64>* %108, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  %109 = or i64 %103, 2
  %110 = getelementptr inbounds i64, i64* %23, i64 %109
  %111 = getelementptr inbounds i64, i64* %21, i64 %109
  %112 = bitcast i64* %110 to <2 x i64>*
  %113 = load <2 x i64>, <2 x i64>* %112, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %114 = bitcast i64* %111 to <2 x i64>*
  store <2 x i64> %113, <2 x i64>* %114, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  %115 = add i64 %103, 4
  %116 = icmp ult i64 %115, %19
  br i1 %116, label %102, label %117

117:                                              ; preds = %102, %100, %18, %7
  ret void
}

declare void @zadd_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #4

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { inaccessiblememonly nofree nosync nounwind willreturn }
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
!19 = !{!11, !16, i64 24}
!20 = !{!21, !21, i64 0}
!21 = !{!"long long", !13, i64 0}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{!13, !13, i64 0}
!24 = !{!"branch_weights", i32 1, i32 4001}
!25 = !{!11, !15, i64 16}
!26 = !{!27}
!27 = distinct !{!27, !28, !"libzahl_memcpy: argument 0"}
!28 = distinct !{!28, !"libzahl_memcpy"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"libzahl_memcpy: argument 1"}
