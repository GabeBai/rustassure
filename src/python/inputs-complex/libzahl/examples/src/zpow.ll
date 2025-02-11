; ModuleID = 'src/zpow.c'
source_filename = "src/zpow.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_pow_b = external global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_c = external global [1 x %struct.zahl], align 8
@libzahl_error = external local_unnamed_addr global i32, align 4
@libzahl_temp_stack = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_stack_head = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_allocation = external local_unnamed_addr global i8*, align 8
@libzahl_jmp_buf = external global [48 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @zpow(%struct.zahl* noundef %0, %struct.zahl* noundef readonly %1, %struct.zahl* nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %28, !prof !17

7:                                                ; preds = %3
  %8 = icmp eq i32 %5, 0
  %9 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !10
  %11 = icmp eq i32 %10, 0
  br i1 %8, label %12, label %24

12:                                               ; preds = %7
  br i1 %11, label %13, label %14, !prof !17

13:                                               ; preds = %12
  tail call fastcc void @libzahl_failure(i32 noundef -1)
  unreachable

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %16 = load i64, i64* %15, align 8, !tbaa !18
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef 1) #9
  br label %19

19:                                               ; preds = %14, %18
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 1, i32* %20, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %22 = load i64*, i64** %21, align 8, !tbaa !19
  store i64 1, i64* %22, align 8, !tbaa !20
  %23 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 1, i64* %23, align 8, !tbaa !22
  br label %117

24:                                               ; preds = %7
  br i1 %11, label %25, label %26, !prof !17

25:                                               ; preds = %24
  tail call fastcc void @libzahl_failure(i32 noundef -3)
  unreachable

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %27, align 8, !tbaa !10
  br label %117

28:                                               ; preds = %3
  %29 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %30 = load i32, i32* %29, align 8, !tbaa !10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34, !prof !17

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %33, align 8, !tbaa !10
  br label %117

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %36 = load i64*, i64** %35, align 8, !tbaa !19
  %37 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 2
  %38 = load i64, i64* %37, align 8, !tbaa !22
  %39 = add i64 %38, -1
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8, !tbaa !20
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34, %43
  %44 = phi i64 [ %45, %43 ], [ %39, %34 ]
  %45 = add i64 %44, -1
  %46 = getelementptr inbounds i64, i64* %36, i64 %45
  %47 = load i64, i64* %46, align 8, !tbaa !20
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %43, label %49

49:                                               ; preds = %43
  store i64 %44, i64* %37, align 8, !tbaa !22
  br label %50

50:                                               ; preds = %34, %49
  %51 = phi i64 [ %44, %49 ], [ %38, %34 ]
  %52 = phi i64 [ %47, %49 ], [ %41, %34 ]
  %53 = shl i64 %51, 6
  %54 = tail call i64 @llvm.ctlz.i64(i64 %52, i1 true) #9, !range !23
  %55 = sub i64 %53, %54
  %56 = lshr i64 %55, 6
  %57 = icmp slt i32 %30, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i64, i64* %36, align 8, !tbaa !20
  %60 = and i64 %59, 1
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %58, %50
  %63 = phi i1 [ false, %50 ], [ %61, %58 ]
  %64 = icmp eq %struct.zahl* %1, getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0)
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call fastcc void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef %1) #9
  br label %66

66:                                               ; preds = %62, %65
  %67 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %68 = and i32 %67, 1
  store i32 %68, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0, i32 0), align 8, !tbaa !10
  tail call fastcc void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0), %struct.zahl* noundef nonnull %2)
  %69 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %70 = load i64, i64* %69, align 8, !tbaa !18
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef 1) #9
  br label %73

73:                                               ; preds = %66, %72
  %74 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 1, i32* %74, align 8, !tbaa !10
  %75 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %76 = load i64*, i64** %75, align 8, !tbaa !19
  store i64 1, i64* %76, align 8, !tbaa !20
  %77 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 1, i64* %77, align 8, !tbaa !22
  %78 = icmp ult i64 %55, 64
  br i1 %78, label %99, label %79

79:                                               ; preds = %73
  %80 = call i64 @llvm.umax.i64(i64 %56, i64 1)
  br label %81

81:                                               ; preds = %79, %96
  %82 = phi i64 [ %97, %96 ], [ 0, %79 ]
  %83 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 4), align 8, !tbaa !19
  %84 = getelementptr inbounds i64, i64* %83, i64 %82
  %85 = load i64, i64* %84, align 8, !tbaa !20
  br label %86

86:                                               ; preds = %81, %92
  %87 = phi i64 [ 63, %81 ], [ %94, %92 ]
  %88 = phi i64 [ %85, %81 ], [ %93, %92 ]
  %89 = and i64 %88, 1
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  tail call void @zmul_ll(%struct.zahl* noundef %0, %struct.zahl* noundef %0, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0)) #9
  br label %92

92:                                               ; preds = %91, %86
  tail call void @zsqr_ll(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0)) #9
  %93 = lshr i64 %88, 1
  %94 = add nsw i64 %87, -1
  %95 = icmp eq i64 %87, 0
  br i1 %95, label %96, label %86

96:                                               ; preds = %92
  %97 = add nuw nsw i64 %82, 1
  %98 = icmp eq i64 %97, %80
  br i1 %98, label %99, label %81

99:                                               ; preds = %96, %73
  %100 = phi i64 [ 0, %73 ], [ %80, %96 ]
  %101 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 4), align 8, !tbaa !19
  %102 = getelementptr inbounds i64, i64* %101, i64 %100
  %103 = load i64, i64* %102, align 8, !tbaa !20
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %99, %110
  %106 = phi i64 [ %111, %110 ], [ %103, %99 ]
  %107 = and i64 %106, 1
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void @zmul_ll(%struct.zahl* noundef %0, %struct.zahl* noundef %0, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0)) #9
  br label %110

110:                                              ; preds = %109, %105
  tail call void @zsqr_ll(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0)) #9
  %111 = lshr i64 %106, 1
  %112 = icmp ult i64 %106, 2
  br i1 %112, label %113, label %105

113:                                              ; preds = %110, %99
  br i1 %63, label %114, label %117

114:                                              ; preds = %113
  %115 = load i32, i32* %74, align 8, !tbaa !10
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %74, align 8, !tbaa !10
  br label %117

117:                                              ; preds = %113, %114, %19, %26, %32
  ret void
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal fastcc void @libzahl_failure(i32 noundef %0) unnamed_addr #1 {
  store i32 %0, i32* @libzahl_error, align 4, !tbaa !24
  %2 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !25
  %3 = icmp eq %struct.zahl** %2, null
  %4 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %5 = icmp eq %struct.zahl** %4, %2
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %1, %7
  %8 = phi %struct.zahl** [ %11, %7 ], [ %4, %1 ]
  %9 = getelementptr inbounds %struct.zahl*, %struct.zahl** %8, i64 -1
  store %struct.zahl** %9, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !25
  %10 = load %struct.zahl*, %struct.zahl** %9, align 8, !tbaa !25
  tail call void @zfree(%struct.zahl* noundef %10) #9
  %11 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !25
  %12 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !25
  %13 = icmp eq %struct.zahl** %11, %12
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %1
  %15 = load i8*, i8** @libzahl_temp_allocation, align 8, !tbaa !25
  tail call void @free(i8* noundef %15)
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !25
  tail call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #10
  unreachable
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* nocapture noundef readonly %1) unnamed_addr #2 {
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
  %10 = load i64, i64* %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %10, i64* %11, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %13 = load i64, i64* %12, align 8, !tbaa !18
  %14 = load i64, i64* %9, align 8, !tbaa !22
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %14) #9
  %17 = load i64, i64* %9, align 8, !tbaa !22
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

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @zsqr_ll(%struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @zfree(%struct.zahl* noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) local_unnamed_addr #5

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
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
!18 = !{!11, !15, i64 16}
!19 = !{!11, !16, i64 24}
!20 = !{!21, !21, i64 0}
!21 = !{!"long long", !13, i64 0}
!22 = !{!11, !15, i64 8}
!23 = !{i64 0, i64 65}
!24 = !{!12, !12, i64 0}
!25 = !{!16, !16, i64 0}
!26 = !{!27}
!27 = distinct !{!27, !28, !"libzahl_memcpy: argument 0"}
!28 = distinct !{!28, !"libzahl_memcpy"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"libzahl_memcpy: argument 1"}
