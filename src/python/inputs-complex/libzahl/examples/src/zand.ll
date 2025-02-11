; ModuleID = 'src/zand.c'
source_filename = "src/zand.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: nounwind ssp uwtable
define void @zand(%struct.zahl* noundef %0, %struct.zahl* noundef readonly %1, %struct.zahl* noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %155, label %7, !prof !17

7:                                                ; preds = %3
  %8 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %155, label %11, !prof !17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %13 = load i64, i64* %12, align 8, !tbaa !18
  %14 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 2
  %15 = load i64, i64* %14, align 8, !tbaa !18
  %16 = icmp ult i64 %13, %15
  %17 = select i1 %16, i64 %13, i64 %15
  %18 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %17, i64* %18, align 8, !tbaa !18
  %19 = icmp eq %struct.zahl* %0, %1
  br i1 %19, label %20, label %53

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %22 = load i64*, i64** %21, align 8, !tbaa !19
  %23 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %24 = load i64*, i64** %23, align 8, !tbaa !19
  %25 = icmp eq i64 %17, 0
  br i1 %25, label %155, label %26

26:                                               ; preds = %20, %26
  %27 = phi i64 [ %51, %26 ], [ 0, %20 ]
  %28 = getelementptr inbounds i64, i64* %22, i64 %27
  %29 = load i64, i64* %28, align 8, !tbaa !20
  %30 = getelementptr inbounds i64, i64* %24, i64 %27
  %31 = load i64, i64* %30, align 8, !tbaa !20
  %32 = and i64 %31, %29
  store i64 %32, i64* %28, align 8, !tbaa !20
  %33 = or i64 %27, 1
  %34 = getelementptr inbounds i64, i64* %22, i64 %33
  %35 = load i64, i64* %34, align 8, !tbaa !20
  %36 = getelementptr inbounds i64, i64* %24, i64 %33
  %37 = load i64, i64* %36, align 8, !tbaa !20
  %38 = and i64 %37, %35
  store i64 %38, i64* %34, align 8, !tbaa !20
  %39 = or i64 %27, 2
  %40 = getelementptr inbounds i64, i64* %22, i64 %39
  %41 = load i64, i64* %40, align 8, !tbaa !20
  %42 = getelementptr inbounds i64, i64* %24, i64 %39
  %43 = load i64, i64* %42, align 8, !tbaa !20
  %44 = and i64 %43, %41
  store i64 %44, i64* %40, align 8, !tbaa !20
  %45 = or i64 %27, 3
  %46 = getelementptr inbounds i64, i64* %22, i64 %45
  %47 = load i64, i64* %46, align 8, !tbaa !20
  %48 = getelementptr inbounds i64, i64* %24, i64 %45
  %49 = load i64, i64* %48, align 8, !tbaa !20
  %50 = and i64 %49, %47
  store i64 %50, i64* %46, align 8, !tbaa !20
  %51 = add i64 %27, 4
  %52 = icmp ult i64 %51, %17
  br i1 %52, label %26, label %134

53:                                               ; preds = %11
  %54 = icmp eq %struct.zahl* %0, %2
  br i1 %54, label %55, label %88, !prof !17

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %57 = load i64*, i64** %56, align 8, !tbaa !19
  %58 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %59 = load i64*, i64** %58, align 8, !tbaa !19
  %60 = icmp eq i64 %17, 0
  br i1 %60, label %155, label %61

61:                                               ; preds = %55, %61
  %62 = phi i64 [ %86, %61 ], [ 0, %55 ]
  %63 = getelementptr inbounds i64, i64* %57, i64 %62
  %64 = load i64, i64* %63, align 8, !tbaa !20
  %65 = getelementptr inbounds i64, i64* %59, i64 %62
  %66 = load i64, i64* %65, align 8, !tbaa !20
  %67 = and i64 %66, %64
  store i64 %67, i64* %63, align 8, !tbaa !20
  %68 = or i64 %62, 1
  %69 = getelementptr inbounds i64, i64* %57, i64 %68
  %70 = load i64, i64* %69, align 8, !tbaa !20
  %71 = getelementptr inbounds i64, i64* %59, i64 %68
  %72 = load i64, i64* %71, align 8, !tbaa !20
  %73 = and i64 %72, %70
  store i64 %73, i64* %69, align 8, !tbaa !20
  %74 = or i64 %62, 2
  %75 = getelementptr inbounds i64, i64* %57, i64 %74
  %76 = load i64, i64* %75, align 8, !tbaa !20
  %77 = getelementptr inbounds i64, i64* %59, i64 %74
  %78 = load i64, i64* %77, align 8, !tbaa !20
  %79 = and i64 %78, %76
  store i64 %79, i64* %75, align 8, !tbaa !20
  %80 = or i64 %62, 3
  %81 = getelementptr inbounds i64, i64* %57, i64 %80
  %82 = load i64, i64* %81, align 8, !tbaa !20
  %83 = getelementptr inbounds i64, i64* %59, i64 %80
  %84 = load i64, i64* %83, align 8, !tbaa !20
  %85 = and i64 %84, %82
  store i64 %85, i64* %81, align 8, !tbaa !20
  %86 = add i64 %62, 4
  %87 = icmp ult i64 %86, %17
  br i1 %87, label %61, label %134

88:                                               ; preds = %53
  %89 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %90 = load i64, i64* %89, align 8, !tbaa !22
  %91 = icmp ult i64 %90, %17
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %17) #2
  %93 = load i64, i64* %18, align 8, !tbaa !18
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i64 [ %93, %92 ], [ %17, %88 ]
  %96 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %97 = load i64*, i64** %96, align 8, !tbaa !19
  %98 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %99 = load i64*, i64** %98, align 8, !tbaa !19
  %100 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %101 = load i64*, i64** %100, align 8, !tbaa !19
  %102 = icmp eq i64 %95, 0
  br i1 %102, label %155, label %103

103:                                              ; preds = %94, %103
  %104 = phi i64 [ %132, %103 ], [ 0, %94 ]
  %105 = getelementptr inbounds i64, i64* %99, i64 %104
  %106 = load i64, i64* %105, align 8, !tbaa !20
  %107 = getelementptr inbounds i64, i64* %101, i64 %104
  %108 = load i64, i64* %107, align 8, !tbaa !20
  %109 = and i64 %108, %106
  %110 = getelementptr inbounds i64, i64* %97, i64 %104
  store i64 %109, i64* %110, align 8, !tbaa !20
  %111 = or i64 %104, 1
  %112 = getelementptr inbounds i64, i64* %99, i64 %111
  %113 = load i64, i64* %112, align 8, !tbaa !20
  %114 = getelementptr inbounds i64, i64* %101, i64 %111
  %115 = load i64, i64* %114, align 8, !tbaa !20
  %116 = and i64 %115, %113
  %117 = getelementptr inbounds i64, i64* %97, i64 %111
  store i64 %116, i64* %117, align 8, !tbaa !20
  %118 = or i64 %104, 2
  %119 = getelementptr inbounds i64, i64* %99, i64 %118
  %120 = load i64, i64* %119, align 8, !tbaa !20
  %121 = getelementptr inbounds i64, i64* %101, i64 %118
  %122 = load i64, i64* %121, align 8, !tbaa !20
  %123 = and i64 %122, %120
  %124 = getelementptr inbounds i64, i64* %97, i64 %118
  store i64 %123, i64* %124, align 8, !tbaa !20
  %125 = or i64 %104, 3
  %126 = getelementptr inbounds i64, i64* %99, i64 %125
  %127 = load i64, i64* %126, align 8, !tbaa !20
  %128 = getelementptr inbounds i64, i64* %101, i64 %125
  %129 = load i64, i64* %128, align 8, !tbaa !20
  %130 = and i64 %129, %127
  %131 = getelementptr inbounds i64, i64* %97, i64 %125
  store i64 %130, i64* %131, align 8, !tbaa !20
  %132 = add i64 %104, 4
  %133 = icmp ult i64 %132, %95
  br i1 %133, label %103, label %134

134:                                              ; preds = %103, %61, %26
  %135 = phi i64 [ %17, %26 ], [ %17, %61 ], [ %95, %103 ]
  %136 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %137 = load i64*, i64** %136, align 8, !tbaa !19
  br label %138

138:                                              ; preds = %134, %144
  %139 = phi i64 [ %135, %134 ], [ %140, %144 ]
  %140 = add i64 %139, -1
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  %142 = load i64, i64* %141, align 8, !tbaa !20
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  store i64 %140, i64* %18, align 8, !tbaa !18
  %145 = icmp eq i64 %140, 0
  br i1 %145, label %155, label %138

146:                                              ; preds = %138
  %147 = load i32, i32* %4, align 8, !tbaa !10
  %148 = icmp sgt i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %8, align 8, !tbaa !10
  %151 = icmp sgt i32 %150, 0
  %152 = sext i1 %151 to i32
  %153 = icmp eq i32 %149, %152
  %154 = select i1 %153, i32 -1, i32 1
  br label %155

155:                                              ; preds = %144, %146, %94, %55, %20, %7, %3
  %156 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %154, %146 ], [ 0, %94 ], [ 0, %55 ], [ 0, %20 ], [ 0, %144 ]
  %157 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %156, i32* %157, align 8, !tbaa !10
  ret void
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind }

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
!22 = !{!11, !15, i64 16}
