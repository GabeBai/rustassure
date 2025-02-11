; ModuleID = 'src/allocator.c'
source_filename = "src/allocator.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_pool_n = external local_unnamed_addr global [64 x i64], align 8
@libzahl_pool = external local_unnamed_addr global [64 x i64**], align 8
@libzahl_error = external local_unnamed_addr global i32, align 4
@libzahl_temp_stack = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_stack_head = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_allocation = external local_unnamed_addr global i8*, align 8
@libzahl_jmp_buf = external global [48 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @libzahl_realloc(%struct.zahl* noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @llvm.ctlz.i64(i64 %1, i1 false), !range !10
  %4 = lshr i64 -9223372036854775808, %3
  %5 = icmp eq i64 %4, %1
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i64
  %8 = shl i64 %4, %7
  %9 = select i1 %5, i64 63, i64 64, !prof !11
  %10 = sub nsw i64 %9, %3
  %11 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %10
  %12 = load i64, i64* %11, align 8, !tbaa !12
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %118, label %14, !prof !11

14:                                               ; preds = %2
  %15 = add i64 %12, -1
  store i64 %15, i64* %11, align 8, !tbaa !12
  %16 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %10
  %17 = load i64**, i64*** %16, align 8, !tbaa !16
  %18 = getelementptr inbounds i64*, i64** %17, i64 %15
  %19 = load i64*, i64** %18, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8, !tbaa !18
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %23 = load i64, i64* %22, align 8, !tbaa !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  switch i64 %23, label %102 [
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

24:                                               ; preds = %14
  %25 = getelementptr inbounds i64, i64* %21, i64 19
  %26 = load i64, i64* %25, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %27 = getelementptr inbounds i64, i64* %19, i64 19
  store i64 %26, i64* %27, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %28

28:                                               ; preds = %24, %14
  %29 = getelementptr inbounds i64, i64* %21, i64 18
  %30 = load i64, i64* %29, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %31 = getelementptr inbounds i64, i64* %19, i64 18
  store i64 %30, i64* %31, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %32

32:                                               ; preds = %28, %14
  %33 = getelementptr inbounds i64, i64* %21, i64 17
  %34 = load i64, i64* %33, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %35 = getelementptr inbounds i64, i64* %19, i64 17
  store i64 %34, i64* %35, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %36

36:                                               ; preds = %32, %14
  %37 = getelementptr inbounds i64, i64* %21, i64 16
  %38 = load i64, i64* %37, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %39 = getelementptr inbounds i64, i64* %19, i64 16
  store i64 %38, i64* %39, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %40

40:                                               ; preds = %36, %14
  %41 = getelementptr inbounds i64, i64* %21, i64 15
  %42 = load i64, i64* %41, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %43 = getelementptr inbounds i64, i64* %19, i64 15
  store i64 %42, i64* %43, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %44

44:                                               ; preds = %40, %14
  %45 = getelementptr inbounds i64, i64* %21, i64 14
  %46 = load i64, i64* %45, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %47 = getelementptr inbounds i64, i64* %19, i64 14
  store i64 %46, i64* %47, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %48

48:                                               ; preds = %44, %14
  %49 = getelementptr inbounds i64, i64* %21, i64 13
  %50 = load i64, i64* %49, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %51 = getelementptr inbounds i64, i64* %19, i64 13
  store i64 %50, i64* %51, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %52

52:                                               ; preds = %48, %14
  %53 = getelementptr inbounds i64, i64* %21, i64 12
  %54 = load i64, i64* %53, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %55 = getelementptr inbounds i64, i64* %19, i64 12
  store i64 %54, i64* %55, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %56

56:                                               ; preds = %52, %14
  %57 = getelementptr inbounds i64, i64* %21, i64 11
  %58 = load i64, i64* %57, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %59 = getelementptr inbounds i64, i64* %19, i64 11
  store i64 %58, i64* %59, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %60

60:                                               ; preds = %56, %14
  %61 = getelementptr inbounds i64, i64* %21, i64 10
  %62 = load i64, i64* %61, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %63 = getelementptr inbounds i64, i64* %19, i64 10
  store i64 %62, i64* %63, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %64

64:                                               ; preds = %60, %14
  %65 = getelementptr inbounds i64, i64* %21, i64 9
  %66 = load i64, i64* %65, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %67 = getelementptr inbounds i64, i64* %19, i64 9
  store i64 %66, i64* %67, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %68

68:                                               ; preds = %64, %14
  %69 = getelementptr inbounds i64, i64* %21, i64 8
  %70 = load i64, i64* %69, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %71 = getelementptr inbounds i64, i64* %19, i64 8
  store i64 %70, i64* %71, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %72

72:                                               ; preds = %68, %14
  %73 = getelementptr inbounds i64, i64* %21, i64 7
  %74 = load i64, i64* %73, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %75 = getelementptr inbounds i64, i64* %19, i64 7
  store i64 %74, i64* %75, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %76

76:                                               ; preds = %72, %14
  %77 = getelementptr inbounds i64, i64* %21, i64 6
  %78 = load i64, i64* %77, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %79 = getelementptr inbounds i64, i64* %19, i64 6
  store i64 %78, i64* %79, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %80

80:                                               ; preds = %76, %14
  %81 = getelementptr inbounds i64, i64* %21, i64 5
  %82 = load i64, i64* %81, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %83 = getelementptr inbounds i64, i64* %19, i64 5
  store i64 %82, i64* %83, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %84

84:                                               ; preds = %80, %14
  %85 = getelementptr inbounds i64, i64* %21, i64 4
  %86 = load i64, i64* %85, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %87 = getelementptr inbounds i64, i64* %19, i64 4
  store i64 %86, i64* %87, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %88

88:                                               ; preds = %84, %14
  %89 = getelementptr inbounds i64, i64* %21, i64 3
  %90 = load i64, i64* %89, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %91 = getelementptr inbounds i64, i64* %19, i64 3
  store i64 %90, i64* %91, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %92

92:                                               ; preds = %88, %14
  %93 = getelementptr inbounds i64, i64* %21, i64 2
  %94 = load i64, i64* %93, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %95 = getelementptr inbounds i64, i64* %19, i64 2
  store i64 %94, i64* %95, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %96

96:                                               ; preds = %92, %14
  %97 = getelementptr inbounds i64, i64* %21, i64 1
  %98 = load i64, i64* %97, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %99 = getelementptr inbounds i64, i64* %19, i64 1
  store i64 %98, i64* %99, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %100

100:                                              ; preds = %96, %14
  %101 = load i64, i64* %21, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  store i64 %101, i64* %19, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %117

102:                                              ; preds = %14, %102
  %103 = phi i64 [ %115, %102 ], [ 0, %14 ]
  %104 = getelementptr inbounds i64, i64* %21, i64 %103
  %105 = getelementptr inbounds i64, i64* %19, i64 %103
  %106 = bitcast i64* %104 to <2 x i64>*
  %107 = load <2 x i64>, <2 x i64>* %106, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %108 = bitcast i64* %105 to <2 x i64>*
  store <2 x i64> %107, <2 x i64>* %108, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  %109 = or i64 %103, 2
  %110 = getelementptr inbounds i64, i64* %21, i64 %109
  %111 = getelementptr inbounds i64, i64* %19, i64 %109
  %112 = bitcast i64* %110 to <2 x i64>*
  %113 = load <2 x i64>, <2 x i64>* %112, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %114 = bitcast i64* %111 to <2 x i64>*
  store <2 x i64> %113, <2 x i64>* %114, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  %115 = add i64 %103, 4
  %116 = icmp ult i64 %115, %23
  br i1 %116, label %102, label %117

117:                                              ; preds = %102, %14, %100
  tail call void @zfree(%struct.zahl* noundef %0) #8
  store i64* %19, i64** %20, align 8, !tbaa !18
  br label %127

118:                                              ; preds = %2
  %119 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %120 = bitcast i64** %119 to i8**
  %121 = load i8*, i8** %120, align 8, !tbaa !18
  %122 = shl i64 %8, 3
  %123 = add i64 %122, 32
  %124 = tail call i8* @realloc(i8* noundef %121, i64 noundef %123) #9
  store i8* %124, i8** %120, align 8, !tbaa !18
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %127, !prof !11

126:                                              ; preds = %118
  tail call fastcc void @libzahl_memfailure()
  unreachable

127:                                              ; preds = %118, %117
  %128 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  store i64 %8, i64* %128, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

declare void @zfree(%struct.zahl* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint noreturn nounwind ssp uwtable
define internal fastcc void @libzahl_memfailure() unnamed_addr #4 {
  %1 = tail call i32* @__error() #8
  %2 = load i32, i32* %1, align 4, !tbaa !29
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32* @__error() #8
  store i32 2, i32* %5, align 4, !tbaa !29
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call i32* @__error() #8
  %8 = load i32, i32* %7, align 4, !tbaa !29
  store i32 %8, i32* @libzahl_error, align 4, !tbaa !29
  %9 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !16
  %10 = icmp eq %struct.zahl** %9, null
  %11 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %12 = icmp eq %struct.zahl** %11, %9
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %6, %14
  %15 = phi %struct.zahl** [ %18, %14 ], [ %11, %6 ]
  %16 = getelementptr inbounds %struct.zahl*, %struct.zahl** %15, i64 -1
  store %struct.zahl** %16, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !16
  %17 = load %struct.zahl*, %struct.zahl** %16, align 8, !tbaa !16
  tail call void @zfree(%struct.zahl* noundef %17) #8
  %18 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !16
  %19 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !16
  %20 = icmp eq %struct.zahl** %18, %19
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %6
  %22 = load i8*, i8** @libzahl_temp_allocation, align 8, !tbaa !16
  tail call void @free(i8* noundef %22) #8
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !16
  tail call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #10
  unreachable
}

declare i32* @__error() local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { inlinehint noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { allocsize(1) }
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
!10 = !{i64 0, i64 65}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !14, i64 0}
!18 = !{!19, !17, i64 24}
!19 = !{!"zahl", !20, i64 0, !20, i64 4, !13, i64 8, !13, i64 16, !17, i64 24}
!20 = !{!"int", !14, i64 0}
!21 = !{!19, !13, i64 16}
!22 = !{!23}
!23 = distinct !{!23, !24, !"libzahl_memcpy: argument 0"}
!24 = distinct !{!24, !"libzahl_memcpy"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"libzahl_memcpy: argument 1"}
!27 = !{!28, !28, i64 0}
!28 = !{!"long long", !14, i64 0}
!29 = !{!20, !20, i64 0}
