; ModuleID = 'src/zfree.c'
source_filename = "src/zfree.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_pool_n = external local_unnamed_addr global [64 x i64], align 8
@libzahl_pool_alloc = external local_unnamed_addr global [64 x i64], align 8
@libzahl_pool = external local_unnamed_addr global [64 x i64**], align 8

; Function Attrs: mustprogress nounwind ssp uwtable willreturn
define void @zfree(%struct.zahl* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %3 = load i64*, i64** %2, align 8, !tbaa !10
  %4 = icmp eq i64* %3, null
  br i1 %4, label %41, label %5, !prof !17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %7 = load i64, i64* %6, align 8, !tbaa !18
  %8 = tail call i64 @llvm.ctlz.i64(i64 %7, i1 false), !range !19
  %9 = sub nsw i64 63, %8
  %10 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %9
  %11 = load i64, i64* %10, align 8, !tbaa !20
  %12 = add i64 %11, 1
  store i64 %12, i64* %10, align 8, !tbaa !20
  %13 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_alloc, i64 0, i64 %9
  %14 = load i64, i64* %13, align 8, !tbaa !20
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %9
  %18 = load i64**, i64*** %17, align 8, !tbaa !21
  br label %37

19:                                               ; preds = %5
  %20 = icmp eq i64 %11, 0
  %21 = mul i64 %11, 3
  %22 = lshr i64 %21, 1
  %23 = select i1 %20, i64 128, i64 %22
  %24 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %9
  %25 = bitcast i64*** %24 to i8**
  %26 = load i8*, i8** %25, align 8, !tbaa !21
  %27 = shl i64 %23, 3
  %28 = tail call i8* @realloc(i8* noundef %26, i64 noundef %27) #4
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34, !prof !17

30:                                               ; preds = %19
  %31 = bitcast i64** %2 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !10
  tail call void @free(i8* noundef %32)
  %33 = load i8*, i8** %25, align 8, !tbaa !21
  tail call void @free(i8* noundef %33)
  store i64 0, i64* %10, align 8, !tbaa !20
  store i64** null, i64*** %24, align 8, !tbaa !21
  store i64 0, i64* %13, align 8, !tbaa !20
  br label %41

34:                                               ; preds = %19
  store i8* %28, i8** %25, align 8, !tbaa !21
  store i64 %23, i64* %13, align 8, !tbaa !20
  %35 = load i64*, i64** %2, align 8, !tbaa !10
  %36 = bitcast i8* %28 to i64**
  br label %37

37:                                               ; preds = %16, %34
  %38 = phi i64** [ %36, %34 ], [ %18, %16 ]
  %39 = phi i64* [ %35, %34 ], [ %3, %16 ]
  %40 = getelementptr inbounds i64*, i64** %38, i64 %11
  store i64* %39, i64** %40, align 8, !tbaa !21
  br label %41

41:                                               ; preds = %1, %37, %30
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind ssp uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(1) }

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
!10 = !{!11, !16, i64 24}
!11 = !{!"zahl", !12, i64 0, !12, i64 4, !15, i64 8, !15, i64 16, !16, i64 24}
!12 = !{!"int", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"long", !13, i64 0}
!16 = !{!"any pointer", !13, i64 0}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!11, !15, i64 16}
!19 = !{i64 0, i64 65}
!20 = !{!15, !15, i64 0}
!21 = !{!16, !16, i64 0}
