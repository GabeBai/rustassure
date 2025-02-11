; ModuleID = 'src/zbset.c'
source_filename = "src/zbset.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: nounwind ssp uwtable
define void @zbset_ll_set(%struct.zahl* noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %1, 6
  %4 = getelementptr %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  br i1 %6, label %8, label %9

8:                                                ; preds = %2
  store i64 0, i64* %7, align 8, !tbaa !17
  store i32 1, i32* %4, align 8, !tbaa !10
  br label %15

9:                                                ; preds = %2
  %10 = load i64, i64* %7, align 8, !tbaa !17
  %11 = icmp ult i64 %3, %10
  br i1 %11, label %12, label %15, !prof !18

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %14 = load i64*, i64** %13, align 8, !tbaa !19
  br label %41

15:                                               ; preds = %8, %9
  %16 = phi i64 [ 0, %8 ], [ %10, %9 ]
  %17 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %19 = load i64, i64* %18, align 8, !tbaa !20
  %20 = add nuw nsw i64 %3, 1
  %21 = icmp ugt i64 %19, %3
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %20) #3
  %23 = load i64, i64* %17, align 8, !tbaa !17
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi i64 [ %23, %22 ], [ %16, %15 ]
  %26 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %27 = load i64*, i64** %26, align 8, !tbaa !19
  %28 = getelementptr inbounds i64, i64* %27, i64 %25
  %29 = sub i64 %20, %25
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %24, %31
  %32 = phi i64 [ %38, %31 ], [ 0, %24 ]
  %33 = getelementptr inbounds i64, i64* %28, i64 %32
  %34 = bitcast i64* %33 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %34, align 8, !tbaa !21
  %35 = or i64 %32, 2
  %36 = getelementptr inbounds i64, i64* %28, i64 %35
  %37 = bitcast i64* %36 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %37, align 8, !tbaa !21
  %38 = add i64 %32, 4
  %39 = icmp ult i64 %38, %29
  br i1 %39, label %31, label %40

40:                                               ; preds = %31, %24
  store i64 %20, i64* %17, align 8, !tbaa !17
  br label %41

41:                                               ; preds = %12, %40
  %42 = phi i64* [ %14, %12 ], [ %27, %40 ]
  %43 = and i64 %1, 63
  %44 = shl nuw i64 1, %43
  %45 = getelementptr inbounds i64, i64* %42, i64 %3
  %46 = load i64, i64* %45, align 8, !tbaa !21
  %47 = or i64 %46, %44
  store i64 %47, i64* %45, align 8, !tbaa !21
  ret void
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind ssp uwtable
define void @zbset_ll_clear(%struct.zahl* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = lshr i64 %1, 6
  %4 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %5 = load i64, i64* %4, align 8, !tbaa !17
  %6 = icmp ult i64 %3, %5
  br i1 %6, label %7, label %26, !prof !18

7:                                                ; preds = %2
  %8 = and i64 %1, 63
  %9 = shl nuw i64 1, %8
  %10 = xor i64 %9, -1
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %12 = load i64*, i64** %11, align 8, !tbaa !19
  %13 = getelementptr inbounds i64, i64* %12, i64 %3
  %14 = load i64, i64* %13, align 8, !tbaa !21
  %15 = and i64 %14, %10
  store i64 %15, i64* %13, align 8, !tbaa !21
  br label %16

16:                                               ; preds = %7, %22
  %17 = phi i64 [ %18, %22 ], [ %5, %7 ]
  %18 = add i64 %17, -1
  %19 = getelementptr inbounds i64, i64* %12, i64 %18
  %20 = load i64, i64* %19, align 8, !tbaa !21
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  store i64 %18, i64* %4, align 8, !tbaa !17
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %24, label %16

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %25, align 8, !tbaa !10
  br label %26

26:                                               ; preds = %16, %24, %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @zbset_ll_flip(%struct.zahl* noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %1, 6
  %4 = getelementptr %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  br i1 %6, label %8, label %10

8:                                                ; preds = %2
  store i64 0, i64* %7, align 8, !tbaa !17
  store i32 1, i32* %4, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  br label %17

10:                                               ; preds = %2
  %11 = load i64, i64* %7, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %13 = icmp ult i64 %3, %11
  br i1 %13, label %14, label %17, !prof !18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %16 = load i64*, i64** %15, align 8, !tbaa !19
  br label %43

17:                                               ; preds = %8, %10
  %18 = phi i64* [ %9, %8 ], [ %12, %10 ]
  %19 = phi i64 [ 0, %8 ], [ %11, %10 ]
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %21 = load i64, i64* %20, align 8, !tbaa !20
  %22 = add nuw nsw i64 %3, 1
  %23 = icmp ugt i64 %21, %3
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %22) #3
  %25 = load i64, i64* %18, align 8, !tbaa !17
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi i64 [ %25, %24 ], [ %19, %17 ]
  %28 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %29 = load i64*, i64** %28, align 8, !tbaa !19
  %30 = getelementptr inbounds i64, i64* %29, i64 %27
  %31 = sub i64 %22, %27
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26, %33
  %34 = phi i64 [ %40, %33 ], [ 0, %26 ]
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  %36 = bitcast i64* %35 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %36, align 8, !tbaa !21
  %37 = or i64 %34, 2
  %38 = getelementptr inbounds i64, i64* %30, i64 %37
  %39 = bitcast i64* %38 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %39, align 8, !tbaa !21
  %40 = add i64 %34, 4
  %41 = icmp ult i64 %40, %31
  br i1 %41, label %33, label %42

42:                                               ; preds = %33, %26
  store i64 %22, i64* %18, align 8, !tbaa !17
  br label %43

43:                                               ; preds = %42, %14
  %44 = phi i64* [ %12, %14 ], [ %18, %42 ]
  %45 = phi i64 [ %11, %14 ], [ %22, %42 ]
  %46 = phi i64* [ %16, %14 ], [ %29, %42 ]
  %47 = and i64 %1, 63
  %48 = shl nuw i64 1, %47
  %49 = getelementptr inbounds i64, i64* %46, i64 %3
  %50 = load i64, i64* %49, align 8, !tbaa !21
  %51 = xor i64 %50, %48
  store i64 %51, i64* %49, align 8, !tbaa !21
  br label %52

52:                                               ; preds = %43, %58
  %53 = phi i64 [ %54, %58 ], [ %45, %43 ]
  %54 = add i64 %53, -1
  %55 = getelementptr inbounds i64, i64* %46, i64 %54
  %56 = load i64, i64* %55, align 8, !tbaa !21
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  store i64 %54, i64* %44, align 8, !tbaa !17
  %59 = icmp eq i64 %54, 0
  br i1 %59, label %60, label %52

60:                                               ; preds = %58
  store i32 0, i32* %4, align 8, !tbaa !10
  br label %61

61:                                               ; preds = %52, %60
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
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
!17 = !{!11, !15, i64 8}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!11, !16, i64 24}
!20 = !{!11, !15, i64 16}
!21 = !{!22, !22, i64 0}
!22 = !{!"long long", !13, i64 0}
