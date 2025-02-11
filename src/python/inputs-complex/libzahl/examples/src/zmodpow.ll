; ModuleID = 'src/zmodpow.c'
source_filename = "src/zmodpow.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_pow_b = external global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_c = external global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_d = external global [1 x %struct.zahl], align 8
@libzahl_error = external local_unnamed_addr global i32, align 4
@libzahl_temp_stack = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_stack_head = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_allocation = external local_unnamed_addr global i8*, align 8
@libzahl_jmp_buf = external global [48 x i32], align 4
@libzahl_tmp_mod = external global [1 x %struct.zahl], align 8

; Function Attrs: nounwind ssp uwtable
define void @zmodpow(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* nocapture noundef %2, %struct.zahl* noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !10
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %38, !prof !17

8:                                                ; preds = %4
  %9 = icmp eq i32 %6, 0
  %10 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !10
  %12 = icmp eq i32 %11, 0
  br i1 %9, label %13, label %30

13:                                               ; preds = %8
  br i1 %12, label %14, label %15, !prof !17

14:                                               ; preds = %13
  tail call fastcc void @libzahl_failure(i32 noundef -1)
  unreachable

15:                                               ; preds = %13
  %16 = getelementptr %struct.zahl, %struct.zahl* %3, i64 0, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !17

19:                                               ; preds = %15
  tail call fastcc void @libzahl_failure(i32 noundef -3)
  unreachable

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %22 = load i64, i64* %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef 1) #8
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 1, i32* %26, align 8, !tbaa !10
  %27 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %28 = load i64*, i64** %27, align 8, !tbaa !19
  store i64 1, i64* %28, align 8, !tbaa !20
  %29 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 1, i64* %29, align 8, !tbaa !22
  br label %113

30:                                               ; preds = %8
  br i1 %12, label %35, label %31

31:                                               ; preds = %30
  %32 = getelementptr %struct.zahl, %struct.zahl* %3, i64 0, i32 0
  %33 = load i32, i32* %32, align 8, !tbaa !10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36, !prof !17

35:                                               ; preds = %30, %31
  tail call fastcc void @libzahl_failure(i32 noundef -3)
  unreachable

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %37, align 8, !tbaa !10
  br label %113

38:                                               ; preds = %4
  %39 = getelementptr %struct.zahl, %struct.zahl* %3, i64 0, i32 0
  %40 = load i32, i32* %39, align 8, !tbaa !10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43, !prof !17

42:                                               ; preds = %38
  tail call fastcc void @libzahl_failure(i32 noundef -3)
  unreachable

43:                                               ; preds = %38
  %44 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %45 = load i32, i32* %44, align 8, !tbaa !10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49, !prof !17

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %48, align 8, !tbaa !10
  br label %113

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %51 = load i64*, i64** %50, align 8, !tbaa !19
  %52 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 2
  %53 = load i64, i64* %52, align 8, !tbaa !22
  %54 = add i64 %53, -1
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8, !tbaa !20
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49, %58
  %59 = phi i64 [ %60, %58 ], [ %54, %49 ]
  %60 = add i64 %59, -1
  %61 = getelementptr inbounds i64, i64* %51, i64 %60
  %62 = load i64, i64* %61, align 8, !tbaa !20
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %58, label %64

64:                                               ; preds = %58
  store i64 %59, i64* %52, align 8, !tbaa !22
  br label %65

65:                                               ; preds = %49, %64
  %66 = phi i64 [ %59, %64 ], [ %53, %49 ]
  %67 = phi i64 [ %62, %64 ], [ %56, %49 ]
  %68 = shl i64 %66, 6
  %69 = tail call i64 @llvm.ctlz.i64(i64 %67, i1 true) #8, !range !23
  %70 = sub i64 %68, %69
  %71 = lshr i64 %70, 6
  tail call void @zdivmod(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_mod, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef %1, %struct.zahl* noundef %3) #8
  tail call fastcc void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0), %struct.zahl* noundef nonnull %2)
  tail call fastcc void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0), %struct.zahl* noundef %3)
  %72 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %73 = load i64, i64* %72, align 8, !tbaa !18
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef 1) #8
  br label %76

76:                                               ; preds = %65, %75
  %77 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 1, i32* %77, align 8, !tbaa !10
  %78 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %79 = load i64*, i64** %78, align 8, !tbaa !19
  store i64 1, i64* %79, align 8, !tbaa !20
  %80 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 1, i64* %80, align 8, !tbaa !22
  %81 = icmp ult i64 %70, 64
  br i1 %81, label %100, label %82

82:                                               ; preds = %76, %97
  %83 = phi i64 [ %98, %97 ], [ 0, %76 ]
  %84 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 4), align 8, !tbaa !19
  %85 = getelementptr inbounds i64, i64* %84, i64 %83
  %86 = load i64, i64* %85, align 8, !tbaa !20
  br label %87

87:                                               ; preds = %82, %93
  %88 = phi i64 [ 63, %82 ], [ %95, %93 ]
  %89 = phi i64 [ %86, %82 ], [ %94, %93 ]
  %90 = and i64 %89, 1
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  tail call void @zmodmul(%struct.zahl* noundef %0, %struct.zahl* noundef %0, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0)) #8
  br label %93

93:                                               ; preds = %92, %87
  tail call void @zmodsqr(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0)) #8
  %94 = lshr i64 %89, 1
  %95 = add nsw i64 %88, -1
  %96 = icmp eq i64 %88, 0
  br i1 %96, label %97, label %87

97:                                               ; preds = %93
  %98 = add nuw nsw i64 %83, 1
  %99 = icmp eq i64 %98, %71
  br i1 %99, label %100, label %82

100:                                              ; preds = %97, %76
  %101 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 4), align 8, !tbaa !19
  %102 = getelementptr inbounds i64, i64* %101, i64 %71
  %103 = load i64, i64* %102, align 8, !tbaa !20
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %100, %110
  %106 = phi i64 [ %111, %110 ], [ %103, %100 ]
  %107 = and i64 %106, 1
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void @zmodmul(%struct.zahl* noundef %0, %struct.zahl* noundef %0, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0)) #8
  br label %110

110:                                              ; preds = %109, %105
  tail call void @zmodsqr(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0)) #8
  %111 = lshr i64 %106, 1
  %112 = icmp ult i64 %106, 2
  br i1 %112, label %113, label %105

113:                                              ; preds = %110, %100, %25, %36, %47
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
  tail call void @zfree(%struct.zahl* noundef %10) #8
  %11 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !25
  %12 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !25
  %13 = icmp eq %struct.zahl** %11, %12
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %1
  %15 = load i8*, i8** @libzahl_temp_allocation, align 8, !tbaa !25
  tail call void @free(i8* noundef %15)
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !25
  tail call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #9
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
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %14) #8
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

declare void @zmodmul(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @zmodsqr(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @zfree(%struct.zahl* noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) local_unnamed_addr #5

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

declare void @zdivmod(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
