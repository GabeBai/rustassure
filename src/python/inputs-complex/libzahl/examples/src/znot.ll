; ModuleID = 'src/znot.c'
source_filename = "src/znot.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: nofree nosync nounwind ssp uwtable
define void @znot(%struct.zahl* nocapture noundef %0, %struct.zahl* nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %75, label %6, !prof !17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %8 = load i64*, i64** %7, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !19
  %11 = add i64 %10, -1
  %12 = getelementptr inbounds i64, i64* %8, i64 %11
  %13 = load i64, i64* %12, align 8, !tbaa !20
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %6, %15
  %16 = phi i64 [ %17, %15 ], [ %11, %6 ]
  %17 = add i64 %16, -1
  %18 = getelementptr inbounds i64, i64* %8, i64 %17
  %19 = load i64, i64* %18, align 8, !tbaa !20
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %15, label %21

21:                                               ; preds = %15
  store i64 %16, i64* %9, align 8, !tbaa !19
  br label %22

22:                                               ; preds = %21, %6
  %23 = phi i64 [ %16, %21 ], [ %10, %6 ]
  %24 = phi i64 [ %19, %21 ], [ %13, %6 ]
  %25 = tail call i64 @llvm.ctlz.i64(i64 %24, i1 true) #2, !range !22
  %26 = sub nsw i64 0, %25
  %27 = and i64 %26, 63
  %28 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %23, i64* %28, align 8, !tbaa !19
  %29 = sub nsw i32 0, %4
  %30 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %29, i32* %30, align 8, !tbaa !10
  %31 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %32 = load i64*, i64** %31, align 8, !tbaa !18
  %33 = icmp eq i64 %23, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %22, %34
  %35 = phi i64 [ %55, %34 ], [ 0, %22 ]
  %36 = getelementptr inbounds i64, i64* %8, i64 %35
  %37 = load i64, i64* %36, align 8, !tbaa !20
  %38 = xor i64 %37, -1
  %39 = getelementptr inbounds i64, i64* %32, i64 %35
  store i64 %38, i64* %39, align 8, !tbaa !20
  %40 = or i64 %35, 1
  %41 = getelementptr inbounds i64, i64* %8, i64 %40
  %42 = load i64, i64* %41, align 8, !tbaa !20
  %43 = xor i64 %42, -1
  %44 = getelementptr inbounds i64, i64* %32, i64 %40
  store i64 %43, i64* %44, align 8, !tbaa !20
  %45 = or i64 %35, 2
  %46 = getelementptr inbounds i64, i64* %8, i64 %45
  %47 = load i64, i64* %46, align 8, !tbaa !20
  %48 = xor i64 %47, -1
  %49 = getelementptr inbounds i64, i64* %32, i64 %45
  store i64 %48, i64* %49, align 8, !tbaa !20
  %50 = or i64 %35, 3
  %51 = getelementptr inbounds i64, i64* %8, i64 %50
  %52 = load i64, i64* %51, align 8, !tbaa !20
  %53 = xor i64 %52, -1
  %54 = getelementptr inbounds i64, i64* %32, i64 %50
  store i64 %53, i64* %54, align 8, !tbaa !20
  %55 = add i64 %35, 4
  %56 = icmp ult i64 %55, %23
  br i1 %56, label %34, label %57

57:                                               ; preds = %34, %22
  %58 = icmp eq i64 %27, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %57
  %60 = shl nsw i64 -1, %27
  %61 = xor i64 %60, -1
  %62 = add i64 %23, -1
  %63 = getelementptr inbounds i64, i64* %32, i64 %62
  %64 = load i64, i64* %63, align 8, !tbaa !20
  %65 = and i64 %64, %61
  store i64 %65, i64* %63, align 8, !tbaa !20
  br label %66

66:                                               ; preds = %57, %59
  br i1 %33, label %75, label %67

67:                                               ; preds = %66, %73
  %68 = phi i64 [ %69, %73 ], [ %23, %66 ]
  %69 = add i64 %68, -1
  %70 = getelementptr inbounds i64, i64* %32, i64 %69
  %71 = load i64, i64* %70, align 8, !tbaa !20
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  store i64 %69, i64* %28, align 8, !tbaa !19
  %74 = icmp eq i64 %69, 0
  br i1 %74, label %75, label %67

75:                                               ; preds = %73, %2, %66
  %76 = getelementptr %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %76, align 8, !tbaa !10
  br label %77

77:                                               ; preds = %67, %75
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
!18 = !{!11, !16, i64 24}
!19 = !{!11, !15, i64 8}
!20 = !{!21, !21, i64 0}
!21 = !{!"long long", !13, i64 0}
!22 = !{i64 0, i64 65}
