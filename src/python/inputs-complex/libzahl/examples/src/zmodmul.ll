; ModuleID = 'src/zmodmul.c'
source_filename = "src/zmodmul.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_modmul = external global [1 x %struct.zahl], align 8
@libzahl_tmp_mod = external global [1 x %struct.zahl], align 8

; Function Attrs: nounwind ssp uwtable
define void @zmodmul(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2, %struct.zahl* noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct.zahl* %0, %3
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %4
  tail call fastcc void @zset(%struct.zahl* noundef %0)
  tail call fastcc void @zmul(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2)
  br label %17

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !11
  %10 = mul nsw i32 %9, %9
  store i32 %10, i32* %8, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !11
  %13 = mul nsw i32 %12, %12
  store i32 %13, i32* %11, align 8, !tbaa !11
  tail call void @zmul_ll(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #4
  store i32 %12, i32* %11, align 8, !tbaa !11
  store i32 %9, i32* %8, align 8, !tbaa !11
  %14 = load i32, i32* %11, align 8, !tbaa !11
  %15 = mul nsw i32 %14, %9
  %16 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %15, i32* %16, align 8, !tbaa !11
  br label %17

17:                                               ; preds = %7, %6
  %18 = phi %struct.zahl* [ %3, %7 ], [ getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0), %6 ]
  tail call void @zdivmod(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_mod, i64 0, i64 0), %struct.zahl* noundef %0, %struct.zahl* noundef %0, %struct.zahl* noundef %18) #4
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @zset(%struct.zahl* nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %1
  store i32 0, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0, i32 0), align 8, !tbaa !11
  br label %112

6:                                                ; preds = %1
  store i32 %3, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0, i32 0), align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %8 = load i64, i64* %7, align 8, !tbaa !18
  store i64 %8, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0, i32 2), align 8, !tbaa !18
  %9 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0, i32 3), align 8, !tbaa !19
  %10 = load i64, i64* %7, align 8, !tbaa !18
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  tail call void @libzahl_realloc(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0), i64 noundef %10) #4
  %13 = load i64, i64* %7, align 8, !tbaa !18
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi i64 [ %10, %6 ], [ %13, %12 ]
  %16 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0, i32 4), align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %18 = load i64*, i64** %17, align 8, !tbaa !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  switch i64 %15, label %97 [
    i64 20, label %19
    i64 19, label %23
    i64 18, label %27
    i64 17, label %31
    i64 16, label %35
    i64 15, label %39
    i64 14, label %43
    i64 13, label %47
    i64 12, label %51
    i64 11, label %55
    i64 10, label %59
    i64 9, label %63
    i64 8, label %67
    i64 7, label %71
    i64 6, label %75
    i64 5, label %79
    i64 4, label %83
    i64 3, label %87
    i64 2, label %91
    i64 1, label %95
    i64 0, label %112
  ]

19:                                               ; preds = %14
  %20 = getelementptr inbounds i64, i64* %18, i64 19
  %21 = load i64, i64* %20, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %22 = getelementptr inbounds i64, i64* %16, i64 19
  store i64 %21, i64* %22, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds i64, i64* %18, i64 18
  %25 = load i64, i64* %24, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %26 = getelementptr inbounds i64, i64* %16, i64 18
  store i64 %25, i64* %26, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %27

27:                                               ; preds = %23, %14
  %28 = getelementptr inbounds i64, i64* %18, i64 17
  %29 = load i64, i64* %28, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %30 = getelementptr inbounds i64, i64* %16, i64 17
  store i64 %29, i64* %30, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %31

31:                                               ; preds = %27, %14
  %32 = getelementptr inbounds i64, i64* %18, i64 16
  %33 = load i64, i64* %32, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %34 = getelementptr inbounds i64, i64* %16, i64 16
  store i64 %33, i64* %34, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %35

35:                                               ; preds = %31, %14
  %36 = getelementptr inbounds i64, i64* %18, i64 15
  %37 = load i64, i64* %36, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %38 = getelementptr inbounds i64, i64* %16, i64 15
  store i64 %37, i64* %38, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %39

39:                                               ; preds = %35, %14
  %40 = getelementptr inbounds i64, i64* %18, i64 14
  %41 = load i64, i64* %40, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %42 = getelementptr inbounds i64, i64* %16, i64 14
  store i64 %41, i64* %42, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %43

43:                                               ; preds = %39, %14
  %44 = getelementptr inbounds i64, i64* %18, i64 13
  %45 = load i64, i64* %44, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %46 = getelementptr inbounds i64, i64* %16, i64 13
  store i64 %45, i64* %46, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %47

47:                                               ; preds = %43, %14
  %48 = getelementptr inbounds i64, i64* %18, i64 12
  %49 = load i64, i64* %48, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %50 = getelementptr inbounds i64, i64* %16, i64 12
  store i64 %49, i64* %50, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %51

51:                                               ; preds = %47, %14
  %52 = getelementptr inbounds i64, i64* %18, i64 11
  %53 = load i64, i64* %52, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %54 = getelementptr inbounds i64, i64* %16, i64 11
  store i64 %53, i64* %54, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %55

55:                                               ; preds = %51, %14
  %56 = getelementptr inbounds i64, i64* %18, i64 10
  %57 = load i64, i64* %56, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %58 = getelementptr inbounds i64, i64* %16, i64 10
  store i64 %57, i64* %58, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %59

59:                                               ; preds = %55, %14
  %60 = getelementptr inbounds i64, i64* %18, i64 9
  %61 = load i64, i64* %60, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %62 = getelementptr inbounds i64, i64* %16, i64 9
  store i64 %61, i64* %62, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %63

63:                                               ; preds = %59, %14
  %64 = getelementptr inbounds i64, i64* %18, i64 8
  %65 = load i64, i64* %64, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %66 = getelementptr inbounds i64, i64* %16, i64 8
  store i64 %65, i64* %66, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %67

67:                                               ; preds = %63, %14
  %68 = getelementptr inbounds i64, i64* %18, i64 7
  %69 = load i64, i64* %68, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %70 = getelementptr inbounds i64, i64* %16, i64 7
  store i64 %69, i64* %70, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %71

71:                                               ; preds = %67, %14
  %72 = getelementptr inbounds i64, i64* %18, i64 6
  %73 = load i64, i64* %72, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %74 = getelementptr inbounds i64, i64* %16, i64 6
  store i64 %73, i64* %74, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %75

75:                                               ; preds = %71, %14
  %76 = getelementptr inbounds i64, i64* %18, i64 5
  %77 = load i64, i64* %76, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %78 = getelementptr inbounds i64, i64* %16, i64 5
  store i64 %77, i64* %78, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %79

79:                                               ; preds = %75, %14
  %80 = getelementptr inbounds i64, i64* %18, i64 4
  %81 = load i64, i64* %80, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %82 = getelementptr inbounds i64, i64* %16, i64 4
  store i64 %81, i64* %82, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %83

83:                                               ; preds = %79, %14
  %84 = getelementptr inbounds i64, i64* %18, i64 3
  %85 = load i64, i64* %84, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %86 = getelementptr inbounds i64, i64* %16, i64 3
  store i64 %85, i64* %86, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %87

87:                                               ; preds = %83, %14
  %88 = getelementptr inbounds i64, i64* %18, i64 2
  %89 = load i64, i64* %88, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %90 = getelementptr inbounds i64, i64* %16, i64 2
  store i64 %89, i64* %90, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %91

91:                                               ; preds = %87, %14
  %92 = getelementptr inbounds i64, i64* %18, i64 1
  %93 = load i64, i64* %92, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %94 = getelementptr inbounds i64, i64* %16, i64 1
  store i64 %93, i64* %94, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %95

95:                                               ; preds = %91, %14
  %96 = load i64, i64* %18, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  store i64 %96, i64* %16, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %112

97:                                               ; preds = %14, %97
  %98 = phi i64 [ %110, %97 ], [ 0, %14 ]
  %99 = getelementptr inbounds i64, i64* %18, i64 %98
  %100 = getelementptr inbounds i64, i64* %16, i64 %98
  %101 = bitcast i64* %99 to <2 x i64>*
  %102 = load <2 x i64>, <2 x i64>* %101, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %103 = bitcast i64* %100 to <2 x i64>*
  store <2 x i64> %102, <2 x i64>* %103, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  %104 = or i64 %98, 2
  %105 = getelementptr inbounds i64, i64* %18, i64 %104
  %106 = getelementptr inbounds i64, i64* %16, i64 %104
  %107 = bitcast i64* %105 to <2 x i64>*
  %108 = load <2 x i64>, <2 x i64>* %107, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %109 = bitcast i64* %106 to <2 x i64>*
  store <2 x i64> %108, <2 x i64>* %109, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  %110 = add i64 %98, 4
  %111 = icmp ult i64 %110, %15
  br i1 %111, label %97, label %112

112:                                              ; preds = %97, %95, %14, %5
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @zmul(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !11
  %6 = mul nsw i32 %5, %5
  store i32 %6, i32* %4, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !11
  %9 = mul nsw i32 %8, %8
  store i32 %9, i32* %7, align 8, !tbaa !11
  tail call void @zmul_ll(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #4
  store i32 %8, i32* %7, align 8, !tbaa !11
  store i32 %5, i32* %4, align 8, !tbaa !11
  %10 = load i32, i32* %7, align 8, !tbaa !11
  %11 = mul nsw i32 %10, %5
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %11, i32* %12, align 8, !tbaa !11
  ret void
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #2

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #2

declare void @zdivmod(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

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
!19 = !{!12, !16, i64 16}
!20 = !{!12, !17, i64 24}
!21 = !{!22}
!22 = distinct !{!22, !23, !"libzahl_memcpy: argument 0"}
!23 = distinct !{!23, !"libzahl_memcpy"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"libzahl_memcpy: argument 1"}
!26 = !{!27, !27, i64 0}
!27 = !{!"long long", !14, i64 0}
