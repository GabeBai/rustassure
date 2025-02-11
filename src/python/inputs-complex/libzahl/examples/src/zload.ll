; ModuleID = 'src/zload.c'
source_filename = "src/zload.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: nounwind ssp uwtable
define i64 @zload(%struct.zahl* noundef %0, i8* noundef readonly %1) local_unnamed_addr #0 {
  %3 = bitcast i8* %1 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !10
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %5, i32* %6, align 8, !tbaa !14
  %7 = getelementptr inbounds i8, i8* %1, i64 8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %9, i64* %10, align 8, !tbaa !18
  %11 = getelementptr inbounds i8, i8* %1, i64 16
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %136, label %13, !prof !19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %15 = load i64, i64* %14, align 8, !tbaa !20
  %16 = icmp ult i64 %15, %9
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %9) #3
  %18 = load i64, i64* %10, align 8, !tbaa !18
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i64 [ %18, %17 ], [ %9, %13 ]
  %21 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %22 = load i64*, i64** %21, align 8, !tbaa !21
  %23 = bitcast i8* %11 to i64*
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  switch i64 %20, label %121 [
    i64 20, label %24
    i64 19, label %29
    i64 18, label %34
    i64 17, label %39
    i64 16, label %44
    i64 15, label %49
    i64 14, label %54
    i64 13, label %59
    i64 12, label %64
    i64 11, label %69
    i64 10, label %74
    i64 9, label %79
    i64 8, label %84
    i64 7, label %89
    i64 6, label %94
    i64 5, label %99
    i64 4, label %104
    i64 3, label %109
    i64 2, label %114
    i64 1, label %119
    i64 0, label %136
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, i8* %1, i64 168
  %26 = bitcast i8* %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %28 = getelementptr inbounds i64, i64* %22, i64 19
  store i64 %27, i64* %28, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %29

29:                                               ; preds = %24, %19
  %30 = getelementptr inbounds i8, i8* %1, i64 160
  %31 = bitcast i8* %30 to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %33 = getelementptr inbounds i64, i64* %22, i64 18
  store i64 %32, i64* %33, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds i8, i8* %1, i64 152
  %36 = bitcast i8* %35 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %38 = getelementptr inbounds i64, i64* %22, i64 17
  store i64 %37, i64* %38, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %39

39:                                               ; preds = %34, %19
  %40 = getelementptr inbounds i8, i8* %1, i64 144
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %43 = getelementptr inbounds i64, i64* %22, i64 16
  store i64 %42, i64* %43, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %44

44:                                               ; preds = %39, %19
  %45 = getelementptr inbounds i8, i8* %1, i64 136
  %46 = bitcast i8* %45 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %48 = getelementptr inbounds i64, i64* %22, i64 15
  store i64 %47, i64* %48, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %49

49:                                               ; preds = %44, %19
  %50 = getelementptr inbounds i8, i8* %1, i64 128
  %51 = bitcast i8* %50 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %53 = getelementptr inbounds i64, i64* %22, i64 14
  store i64 %52, i64* %53, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %54

54:                                               ; preds = %49, %19
  %55 = getelementptr inbounds i8, i8* %1, i64 120
  %56 = bitcast i8* %55 to i64*
  %57 = load i64, i64* %56, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %58 = getelementptr inbounds i64, i64* %22, i64 13
  store i64 %57, i64* %58, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %59

59:                                               ; preds = %54, %19
  %60 = getelementptr inbounds i8, i8* %1, i64 112
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %63 = getelementptr inbounds i64, i64* %22, i64 12
  store i64 %62, i64* %63, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %64

64:                                               ; preds = %59, %19
  %65 = getelementptr inbounds i8, i8* %1, i64 104
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %68 = getelementptr inbounds i64, i64* %22, i64 11
  store i64 %67, i64* %68, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %69

69:                                               ; preds = %64, %19
  %70 = getelementptr inbounds i8, i8* %1, i64 96
  %71 = bitcast i8* %70 to i64*
  %72 = load i64, i64* %71, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %73 = getelementptr inbounds i64, i64* %22, i64 10
  store i64 %72, i64* %73, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %74

74:                                               ; preds = %69, %19
  %75 = getelementptr inbounds i8, i8* %1, i64 88
  %76 = bitcast i8* %75 to i64*
  %77 = load i64, i64* %76, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %78 = getelementptr inbounds i64, i64* %22, i64 9
  store i64 %77, i64* %78, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %79

79:                                               ; preds = %74, %19
  %80 = getelementptr inbounds i8, i8* %1, i64 80
  %81 = bitcast i8* %80 to i64*
  %82 = load i64, i64* %81, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %83 = getelementptr inbounds i64, i64* %22, i64 8
  store i64 %82, i64* %83, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %84

84:                                               ; preds = %79, %19
  %85 = getelementptr inbounds i8, i8* %1, i64 72
  %86 = bitcast i8* %85 to i64*
  %87 = load i64, i64* %86, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %88 = getelementptr inbounds i64, i64* %22, i64 7
  store i64 %87, i64* %88, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %89

89:                                               ; preds = %84, %19
  %90 = getelementptr inbounds i8, i8* %1, i64 64
  %91 = bitcast i8* %90 to i64*
  %92 = load i64, i64* %91, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %93 = getelementptr inbounds i64, i64* %22, i64 6
  store i64 %92, i64* %93, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %94

94:                                               ; preds = %89, %19
  %95 = getelementptr inbounds i8, i8* %1, i64 56
  %96 = bitcast i8* %95 to i64*
  %97 = load i64, i64* %96, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %98 = getelementptr inbounds i64, i64* %22, i64 5
  store i64 %97, i64* %98, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %99

99:                                               ; preds = %94, %19
  %100 = getelementptr inbounds i8, i8* %1, i64 48
  %101 = bitcast i8* %100 to i64*
  %102 = load i64, i64* %101, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %103 = getelementptr inbounds i64, i64* %22, i64 4
  store i64 %102, i64* %103, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %104

104:                                              ; preds = %99, %19
  %105 = getelementptr inbounds i8, i8* %1, i64 40
  %106 = bitcast i8* %105 to i64*
  %107 = load i64, i64* %106, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %108 = getelementptr inbounds i64, i64* %22, i64 3
  store i64 %107, i64* %108, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %109

109:                                              ; preds = %104, %19
  %110 = getelementptr inbounds i8, i8* %1, i64 32
  %111 = bitcast i8* %110 to i64*
  %112 = load i64, i64* %111, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %113 = getelementptr inbounds i64, i64* %22, i64 2
  store i64 %112, i64* %113, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %114

114:                                              ; preds = %109, %19
  %115 = getelementptr inbounds i8, i8* %1, i64 24
  %116 = bitcast i8* %115 to i64*
  %117 = load i64, i64* %116, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %118 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 %117, i64* %118, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %119

119:                                              ; preds = %114, %19
  %120 = load i64, i64* %23, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  store i64 %120, i64* %22, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  br label %136

121:                                              ; preds = %19, %121
  %122 = phi i64 [ %134, %121 ], [ 0, %19 ]
  %123 = getelementptr inbounds i64, i64* %23, i64 %122
  %124 = getelementptr inbounds i64, i64* %22, i64 %122
  %125 = bitcast i64* %123 to <2 x i64>*
  %126 = load <2 x i64>, <2 x i64>* %125, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %127 = bitcast i64* %124 to <2 x i64>*
  store <2 x i64> %126, <2 x i64>* %127, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  %128 = or i64 %122, 2
  %129 = getelementptr inbounds i64, i64* %23, i64 %128
  %130 = getelementptr inbounds i64, i64* %22, i64 %128
  %131 = bitcast i64* %129 to <2 x i64>*
  %132 = load <2 x i64>, <2 x i64>* %131, align 8, !tbaa !27, !alias.scope !25, !noalias !22
  %133 = bitcast i64* %130 to <2 x i64>*
  store <2 x i64> %132, <2 x i64>* %133, align 8, !tbaa !27, !alias.scope !22, !noalias !25
  %134 = add i64 %122, 4
  %135 = icmp ult i64 %134, %20
  br i1 %135, label %121, label %136

136:                                              ; preds = %121, %119, %19, %2
  %137 = phi i64 [ %20, %119 ], [ %20, %19 ], [ %9, %2 ], [ %20, %121 ]
  %138 = load i32, i32* %6, align 8, !tbaa !14
  %139 = icmp eq i32 %138, 0
  %140 = shl i64 %137, 3
  %141 = add i64 %140, 24
  %142 = and i64 %141, -32
  %143 = or i64 %142, 16
  %144 = select i1 %139, i64 16, i64 %143
  ret i64 %144
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!15, !16, i64 0}
!15 = !{!"zahl", !16, i64 0, !16, i64 4, !11, i64 8, !11, i64 16, !17, i64 24}
!16 = !{!"int", !12, i64 0}
!17 = !{!"any pointer", !12, i64 0}
!18 = !{!15, !11, i64 8}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!15, !11, i64 16}
!21 = !{!15, !17, i64 24}
!22 = !{!23}
!23 = distinct !{!23, !24, !"libzahl_memcpy: argument 0"}
!24 = distinct !{!24, !"libzahl_memcpy"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"libzahl_memcpy: argument 1"}
!27 = !{!28, !28, i64 0}
!28 = !{!"long long", !12, i64 0}
