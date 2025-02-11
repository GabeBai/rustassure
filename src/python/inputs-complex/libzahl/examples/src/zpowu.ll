; ModuleID = 'src/zpowu.c'
source_filename = "src/zpowu.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_pow_b = external global [1 x %struct.zahl], align 8
@libzahl_error = external local_unnamed_addr global i32, align 4
@libzahl_temp_stack = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_stack_head = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_allocation = external local_unnamed_addr global i8*, align 8
@libzahl_jmp_buf = external global [48 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @zpowu(%struct.zahl* noundef %0, %struct.zahl* noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  %5 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !10
  %7 = icmp eq i32 %6, 0
  br i1 %4, label %8, label %20, !prof !17

8:                                                ; preds = %3
  br i1 %7, label %9, label %10, !prof !17

9:                                                ; preds = %8
  tail call fastcc void @libzahl_failure()
  unreachable

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %12 = load i64, i64* %11, align 8, !tbaa !18
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef 1) #7
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 1, i32* %16, align 8, !tbaa !10
  %17 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %18 = load i64*, i64** %17, align 8, !tbaa !19
  store i64 1, i64* %18, align 8, !tbaa !20
  %19 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 1, i64* %19, align 8, !tbaa !22
  br label %59

20:                                               ; preds = %3
  br i1 %7, label %21, label %23, !prof !17

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %22, align 8, !tbaa !10
  br label %59

23:                                               ; preds = %20
  %24 = icmp slt i32 %6, 0
  %25 = and i64 %2, 1
  %26 = icmp ne i64 %25, 0
  %27 = and i1 %26, %24
  %28 = icmp eq %struct.zahl* %1, getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0)
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call fastcc void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef %1) #7
  br label %30

30:                                               ; preds = %23, %29
  %31 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %32 = and i32 %31, 1
  store i32 %32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0, i32 0), align 8, !tbaa !10
  br i1 %26, label %33, label %34

33:                                               ; preds = %30
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %44

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %36 = load i64, i64* %35, align 8, !tbaa !18
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef 1) #7
  br label %39

39:                                               ; preds = %34, %38
  %40 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 1, i32* %40, align 8, !tbaa !10
  %41 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %42 = load i64*, i64** %41, align 8, !tbaa !19
  store i64 1, i64* %42, align 8, !tbaa !20
  %43 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 1, i64* %43, align 8, !tbaa !22
  br label %44

44:                                               ; preds = %39, %33
  %45 = icmp ult i64 %2, 2
  br i1 %45, label %54, label %46

46:                                               ; preds = %44, %52
  %47 = phi i64 [ %48, %52 ], [ %2, %44 ]
  %48 = lshr i64 %47, 1
  tail call void @zsqr_ll(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0)) #7
  %49 = and i64 %47, 2
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  tail call void @zmul_ll(%struct.zahl* noundef %0, %struct.zahl* noundef %0, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0)) #7
  br label %52

52:                                               ; preds = %51, %46
  %53 = icmp ult i64 %47, 4
  br i1 %53, label %54, label %46

54:                                               ; preds = %52, %44
  br i1 %27, label %55, label %59

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %57 = load i32, i32* %56, align 8, !tbaa !10
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %56, align 8, !tbaa !10
  br label %59

59:                                               ; preds = %54, %55, %21, %15
  ret void
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal fastcc void @libzahl_failure() unnamed_addr #1 {
  store i32 -1, i32* @libzahl_error, align 4, !tbaa !23
  %1 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  %2 = icmp eq %struct.zahl** %1, null
  %3 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %4 = icmp eq %struct.zahl** %3, %1
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %0, %6
  %7 = phi %struct.zahl** [ %10, %6 ], [ %3, %0 ]
  %8 = getelementptr inbounds %struct.zahl*, %struct.zahl** %7, i64 -1
  store %struct.zahl** %8, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %9 = load %struct.zahl*, %struct.zahl** %8, align 8, !tbaa !24
  tail call void @zfree(%struct.zahl* noundef %9) #7
  %10 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !24
  %11 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !24
  %12 = icmp eq %struct.zahl** %10, %11
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %0
  %14 = load i8*, i8** @libzahl_temp_allocation, align 8, !tbaa !24
  tail call void @free(i8* noundef %14)
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !24
  tail call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #8
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
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %14) #7
  %17 = load i64, i64* %9, align 8, !tbaa !22
  br label %18

18:                                               ; preds = %8, %16
  %19 = phi i64 [ %14, %8 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %23 = load i64*, i64** %22, align 8, !tbaa !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
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
  %26 = load i64, i64* %25, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %27 = getelementptr inbounds i64, i64* %21, i64 19
  store i64 %26, i64* %27, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds i64, i64* %23, i64 18
  %30 = load i64, i64* %29, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %31 = getelementptr inbounds i64, i64* %21, i64 18
  store i64 %30, i64* %31, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %32

32:                                               ; preds = %28, %18
  %33 = getelementptr inbounds i64, i64* %23, i64 17
  %34 = load i64, i64* %33, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %35 = getelementptr inbounds i64, i64* %21, i64 17
  store i64 %34, i64* %35, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %36

36:                                               ; preds = %32, %18
  %37 = getelementptr inbounds i64, i64* %23, i64 16
  %38 = load i64, i64* %37, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %39 = getelementptr inbounds i64, i64* %21, i64 16
  store i64 %38, i64* %39, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %40

40:                                               ; preds = %36, %18
  %41 = getelementptr inbounds i64, i64* %23, i64 15
  %42 = load i64, i64* %41, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %43 = getelementptr inbounds i64, i64* %21, i64 15
  store i64 %42, i64* %43, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %44

44:                                               ; preds = %40, %18
  %45 = getelementptr inbounds i64, i64* %23, i64 14
  %46 = load i64, i64* %45, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %47 = getelementptr inbounds i64, i64* %21, i64 14
  store i64 %46, i64* %47, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %48

48:                                               ; preds = %44, %18
  %49 = getelementptr inbounds i64, i64* %23, i64 13
  %50 = load i64, i64* %49, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %51 = getelementptr inbounds i64, i64* %21, i64 13
  store i64 %50, i64* %51, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %52

52:                                               ; preds = %48, %18
  %53 = getelementptr inbounds i64, i64* %23, i64 12
  %54 = load i64, i64* %53, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %55 = getelementptr inbounds i64, i64* %21, i64 12
  store i64 %54, i64* %55, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %56

56:                                               ; preds = %52, %18
  %57 = getelementptr inbounds i64, i64* %23, i64 11
  %58 = load i64, i64* %57, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %59 = getelementptr inbounds i64, i64* %21, i64 11
  store i64 %58, i64* %59, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %60

60:                                               ; preds = %56, %18
  %61 = getelementptr inbounds i64, i64* %23, i64 10
  %62 = load i64, i64* %61, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %63 = getelementptr inbounds i64, i64* %21, i64 10
  store i64 %62, i64* %63, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %64

64:                                               ; preds = %60, %18
  %65 = getelementptr inbounds i64, i64* %23, i64 9
  %66 = load i64, i64* %65, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %67 = getelementptr inbounds i64, i64* %21, i64 9
  store i64 %66, i64* %67, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %68

68:                                               ; preds = %64, %18
  %69 = getelementptr inbounds i64, i64* %23, i64 8
  %70 = load i64, i64* %69, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %71 = getelementptr inbounds i64, i64* %21, i64 8
  store i64 %70, i64* %71, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %72

72:                                               ; preds = %68, %18
  %73 = getelementptr inbounds i64, i64* %23, i64 7
  %74 = load i64, i64* %73, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %75 = getelementptr inbounds i64, i64* %21, i64 7
  store i64 %74, i64* %75, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %76

76:                                               ; preds = %72, %18
  %77 = getelementptr inbounds i64, i64* %23, i64 6
  %78 = load i64, i64* %77, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %79 = getelementptr inbounds i64, i64* %21, i64 6
  store i64 %78, i64* %79, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %80

80:                                               ; preds = %76, %18
  %81 = getelementptr inbounds i64, i64* %23, i64 5
  %82 = load i64, i64* %81, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %83 = getelementptr inbounds i64, i64* %21, i64 5
  store i64 %82, i64* %83, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %84

84:                                               ; preds = %80, %18
  %85 = getelementptr inbounds i64, i64* %23, i64 4
  %86 = load i64, i64* %85, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %87 = getelementptr inbounds i64, i64* %21, i64 4
  store i64 %86, i64* %87, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %88

88:                                               ; preds = %84, %18
  %89 = getelementptr inbounds i64, i64* %23, i64 3
  %90 = load i64, i64* %89, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %91 = getelementptr inbounds i64, i64* %21, i64 3
  store i64 %90, i64* %91, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %92

92:                                               ; preds = %88, %18
  %93 = getelementptr inbounds i64, i64* %23, i64 2
  %94 = load i64, i64* %93, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %95 = getelementptr inbounds i64, i64* %21, i64 2
  store i64 %94, i64* %95, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %96

96:                                               ; preds = %92, %18
  %97 = getelementptr inbounds i64, i64* %23, i64 1
  %98 = load i64, i64* %97, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %99 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %98, i64* %99, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %100

100:                                              ; preds = %96, %18
  %101 = load i64, i64* %23, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  store i64 %101, i64* %21, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  br label %117

102:                                              ; preds = %18, %102
  %103 = phi i64 [ %115, %102 ], [ 0, %18 ]
  %104 = getelementptr inbounds i64, i64* %23, i64 %103
  %105 = getelementptr inbounds i64, i64* %21, i64 %103
  %106 = bitcast i64* %104 to <2 x i64>*
  %107 = load <2 x i64>, <2 x i64>* %106, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %108 = bitcast i64* %105 to <2 x i64>*
  store <2 x i64> %107, <2 x i64>* %108, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  %109 = or i64 %103, 2
  %110 = getelementptr inbounds i64, i64* %23, i64 %109
  %111 = getelementptr inbounds i64, i64* %21, i64 %109
  %112 = bitcast i64* %110 to <2 x i64>*
  %113 = load <2 x i64>, <2 x i64>* %112, align 8, !tbaa !20, !alias.scope !28, !noalias !25
  %114 = bitcast i64* %111 to <2 x i64>*
  store <2 x i64> %113, <2 x i64>* %114, align 8, !tbaa !20, !alias.scope !25, !noalias !28
  %115 = add i64 %103, 4
  %116 = icmp ult i64 %115, %19
  br i1 %116, label %102, label %117

117:                                              ; preds = %102, %100, %18, %7
  ret void
}

declare void @zsqr_ll(%struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @zfree(%struct.zahl* noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) local_unnamed_addr #5

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { inaccessiblememonly nofree nosync nounwind willreturn }
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
!23 = !{!12, !12, i64 0}
!24 = !{!16, !16, i64 0}
!25 = !{!26}
!26 = distinct !{!26, !27, !"libzahl_memcpy: argument 0"}
!27 = distinct !{!27, !"libzahl_memcpy"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"libzahl_memcpy: argument 1"}
