; ModuleID = 'dbgstat.c'
source_filename = "dbgstat.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@s = global [1024 x i8] zeroinitializer, align 1
@__stdinp = external local_unnamed_addr global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"PASS: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"FAIL: \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"FAIL: %d\0APASS: %d\0A\00", align 1

; Function Attrs: noreturn nounwind ssp uwtable
define i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !10
  %4 = tail call i8* @fgets(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @s, i64 0, i64 0), i32 noundef 1024, %struct.__sFILE* noundef %3)
  %5 = icmp eq i8* %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2, %19
  %7 = phi i8* [ %23, %19 ], [ %4, %2 ]
  %8 = phi i32 [ %21, %19 ], [ 0, %2 ]
  %9 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %10 = tail call i32 @strncmp(i8* noundef nonnull %7, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 noundef 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = add nsw i32 %9, 1
  br label %19

14:                                               ; preds = %6
  %15 = tail call i32 @strncmp(i8* noundef nonnull %7, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 noundef 6)
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = add nsw i32 %8, %17
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi i32 [ %13, %12 ], [ %9, %14 ]
  %21 = phi i32 [ %8, %12 ], [ %18, %14 ]
  %22 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !10
  %23 = tail call i8* @fgets(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @s, i64 0, i64 0), i32 noundef 1024, %struct.__sFILE* noundef %22)
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %6

25:                                               ; preds = %19, %2
  %26 = phi i32 [ 0, %2 ], [ %20, %19 ]
  %27 = phi i32 [ 0, %2 ], [ %21, %19 ]
  %28 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef %27, i32 noundef %26)
  %29 = icmp ne i32 %27, 0
  %30 = icmp eq i32 %26, 0
  %31 = or i1 %29, %30
  %32 = zext i1 %31 to i32
  tail call void @exit(i32 noundef %32) #4
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i8* @fgets(i8* noundef, i32 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn nounwind }

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
!11 = !{!"any pointer", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
