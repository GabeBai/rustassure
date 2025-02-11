; ModuleID = 'src/ztrunc.c'
source_filename = "src/ztrunc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: nounwind ssp uwtable
define void @ztrunc(%struct.zahl* noundef %0, %struct.zahl* noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %152, label %7, !prof !17

7:                                                ; preds = %3
  %8 = add i64 %2, 63
  %9 = lshr i64 %8, 6
  %10 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %11 = load i64, i64* %10, align 8, !tbaa !18
  %12 = icmp ult i64 %9, %11
  %13 = select i1 %12, i64 %9, i64 %11
  %14 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %13, i64* %14, align 8, !tbaa !18
  %15 = icmp ugt i64 %9, %11
  br i1 %15, label %16, label %17, !prof !17

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16, %7
  %18 = phi i64 [ 0, %16 ], [ %2, %7 ]
  %19 = icmp eq %struct.zahl* %0, %1
  br i1 %19, label %126, label %20, !prof !17

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %5, i32* %21, align 8, !tbaa !10
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %23 = load i64, i64* %22, align 8, !tbaa !19
  %24 = icmp ult i64 %23, %13
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %13) #3
  %26 = load i64, i64* %14, align 8, !tbaa !18
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi i64 [ %26, %25 ], [ %13, %20 ]
  %29 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %30 = load i64*, i64** %29, align 8, !tbaa !20
  %31 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %32 = load i64*, i64** %31, align 8, !tbaa !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  switch i64 %28, label %111 [
    i64 20, label %33
    i64 19, label %37
    i64 18, label %41
    i64 17, label %45
    i64 16, label %49
    i64 15, label %53
    i64 14, label %57
    i64 13, label %61
    i64 12, label %65
    i64 11, label %69
    i64 10, label %73
    i64 9, label %77
    i64 8, label %81
    i64 7, label %85
    i64 6, label %89
    i64 5, label %93
    i64 4, label %97
    i64 3, label %101
    i64 2, label %105
    i64 1, label %109
    i64 0, label %126
  ]

33:                                               ; preds = %27
  %34 = getelementptr inbounds i64, i64* %32, i64 19
  %35 = load i64, i64* %34, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %36 = getelementptr inbounds i64, i64* %30, i64 19
  store i64 %35, i64* %36, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %37

37:                                               ; preds = %33, %27
  %38 = getelementptr inbounds i64, i64* %32, i64 18
  %39 = load i64, i64* %38, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %40 = getelementptr inbounds i64, i64* %30, i64 18
  store i64 %39, i64* %40, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %41

41:                                               ; preds = %37, %27
  %42 = getelementptr inbounds i64, i64* %32, i64 17
  %43 = load i64, i64* %42, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %44 = getelementptr inbounds i64, i64* %30, i64 17
  store i64 %43, i64* %44, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %45

45:                                               ; preds = %41, %27
  %46 = getelementptr inbounds i64, i64* %32, i64 16
  %47 = load i64, i64* %46, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %48 = getelementptr inbounds i64, i64* %30, i64 16
  store i64 %47, i64* %48, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %49

49:                                               ; preds = %45, %27
  %50 = getelementptr inbounds i64, i64* %32, i64 15
  %51 = load i64, i64* %50, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %52 = getelementptr inbounds i64, i64* %30, i64 15
  store i64 %51, i64* %52, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %53

53:                                               ; preds = %49, %27
  %54 = getelementptr inbounds i64, i64* %32, i64 14
  %55 = load i64, i64* %54, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %56 = getelementptr inbounds i64, i64* %30, i64 14
  store i64 %55, i64* %56, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %57

57:                                               ; preds = %53, %27
  %58 = getelementptr inbounds i64, i64* %32, i64 13
  %59 = load i64, i64* %58, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %60 = getelementptr inbounds i64, i64* %30, i64 13
  store i64 %59, i64* %60, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %61

61:                                               ; preds = %57, %27
  %62 = getelementptr inbounds i64, i64* %32, i64 12
  %63 = load i64, i64* %62, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %64 = getelementptr inbounds i64, i64* %30, i64 12
  store i64 %63, i64* %64, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %65

65:                                               ; preds = %61, %27
  %66 = getelementptr inbounds i64, i64* %32, i64 11
  %67 = load i64, i64* %66, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %68 = getelementptr inbounds i64, i64* %30, i64 11
  store i64 %67, i64* %68, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %69

69:                                               ; preds = %65, %27
  %70 = getelementptr inbounds i64, i64* %32, i64 10
  %71 = load i64, i64* %70, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %72 = getelementptr inbounds i64, i64* %30, i64 10
  store i64 %71, i64* %72, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %73

73:                                               ; preds = %69, %27
  %74 = getelementptr inbounds i64, i64* %32, i64 9
  %75 = load i64, i64* %74, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %76 = getelementptr inbounds i64, i64* %30, i64 9
  store i64 %75, i64* %76, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %77

77:                                               ; preds = %73, %27
  %78 = getelementptr inbounds i64, i64* %32, i64 8
  %79 = load i64, i64* %78, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %80 = getelementptr inbounds i64, i64* %30, i64 8
  store i64 %79, i64* %80, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %81

81:                                               ; preds = %77, %27
  %82 = getelementptr inbounds i64, i64* %32, i64 7
  %83 = load i64, i64* %82, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %84 = getelementptr inbounds i64, i64* %30, i64 7
  store i64 %83, i64* %84, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %85

85:                                               ; preds = %81, %27
  %86 = getelementptr inbounds i64, i64* %32, i64 6
  %87 = load i64, i64* %86, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %88 = getelementptr inbounds i64, i64* %30, i64 6
  store i64 %87, i64* %88, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %89

89:                                               ; preds = %85, %27
  %90 = getelementptr inbounds i64, i64* %32, i64 5
  %91 = load i64, i64* %90, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %92 = getelementptr inbounds i64, i64* %30, i64 5
  store i64 %91, i64* %92, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %93

93:                                               ; preds = %89, %27
  %94 = getelementptr inbounds i64, i64* %32, i64 4
  %95 = load i64, i64* %94, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %96 = getelementptr inbounds i64, i64* %30, i64 4
  store i64 %95, i64* %96, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %97

97:                                               ; preds = %93, %27
  %98 = getelementptr inbounds i64, i64* %32, i64 3
  %99 = load i64, i64* %98, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %100 = getelementptr inbounds i64, i64* %30, i64 3
  store i64 %99, i64* %100, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %101

101:                                              ; preds = %97, %27
  %102 = getelementptr inbounds i64, i64* %32, i64 2
  %103 = load i64, i64* %102, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %104 = getelementptr inbounds i64, i64* %30, i64 2
  store i64 %103, i64* %104, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %105

105:                                              ; preds = %101, %27
  %106 = getelementptr inbounds i64, i64* %32, i64 1
  %107 = load i64, i64* %106, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %108 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 %107, i64* %108, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %109

109:                                              ; preds = %105, %27
  %110 = load i64, i64* %32, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  store i64 %110, i64* %30, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  br label %126

111:                                              ; preds = %27, %111
  %112 = phi i64 [ %124, %111 ], [ 0, %27 ]
  %113 = getelementptr inbounds i64, i64* %32, i64 %112
  %114 = getelementptr inbounds i64, i64* %30, i64 %112
  %115 = bitcast i64* %113 to <2 x i64>*
  %116 = load <2 x i64>, <2 x i64>* %115, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %117 = bitcast i64* %114 to <2 x i64>*
  store <2 x i64> %116, <2 x i64>* %117, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  %118 = or i64 %112, 2
  %119 = getelementptr inbounds i64, i64* %32, i64 %118
  %120 = getelementptr inbounds i64, i64* %30, i64 %118
  %121 = bitcast i64* %119 to <2 x i64>*
  %122 = load <2 x i64>, <2 x i64>* %121, align 8, !tbaa !26, !alias.scope !24, !noalias !21
  %123 = bitcast i64* %120 to <2 x i64>*
  store <2 x i64> %122, <2 x i64>* %123, align 8, !tbaa !26, !alias.scope !21, !noalias !24
  %124 = add i64 %112, 4
  %125 = icmp ult i64 %124, %28
  br i1 %125, label %111, label %126

126:                                              ; preds = %111, %109, %27, %17
  %127 = phi i64 [ %28, %109 ], [ %28, %27 ], [ %13, %17 ], [ %28, %111 ]
  %128 = and i64 %18, 63
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %139, label %130, !prof !17

130:                                              ; preds = %126
  %131 = shl nsw i64 -1, %128
  %132 = xor i64 %131, -1
  %133 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %134 = load i64*, i64** %133, align 8, !tbaa !20
  %135 = add i64 %127, -1
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8, !tbaa !26
  %138 = and i64 %137, %132
  store i64 %138, i64* %136, align 8, !tbaa !26
  br label %139

139:                                              ; preds = %126, %130
  %140 = icmp eq i64 %127, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %143 = load i64*, i64** %142, align 8, !tbaa !20
  br label %144

144:                                              ; preds = %141, %150
  %145 = phi i64 [ %127, %141 ], [ %146, %150 ]
  %146 = add i64 %145, -1
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  %148 = load i64, i64* %147, align 8, !tbaa !26
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  store i64 %146, i64* %14, align 8, !tbaa !18
  %151 = icmp eq i64 %146, 0
  br i1 %151, label %152, label %144

152:                                              ; preds = %150, %139, %3
  %153 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %153, align 8, !tbaa !10
  br label %154

154:                                              ; preds = %144, %152
  ret void
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
!21 = !{!22}
!22 = distinct !{!22, !23, !"libzahl_memcpy: argument 0"}
!23 = distinct !{!23, !"libzahl_memcpy"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"libzahl_memcpy: argument 1"}
!26 = !{!27, !27, i64 0}
!27 = !{!"long long", !13, i64 0}
