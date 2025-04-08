; ModuleID = 'dbgstat.c'
source_filename = "dbgstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@s = dso_local global [1024 x i8] zeroinitializer, align 16
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"PASS: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"FAIL: \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"FAIL: %d\0APASS: %d\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !3
  %4 = tail call i8* @fgets(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @s, i64 0, i64 0), i32 noundef 1024, %struct._IO_FILE* noundef %3)
  %5 = icmp eq i8* %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2, %19
  %7 = phi i8* [ %23, %19 ], [ %4, %2 ]
  %8 = phi i32 [ %21, %19 ], [ 0, %2 ]
  %9 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %10 = tail call i32 @strncmp(i8* noundef nonnull %7, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 noundef 6) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = add nsw i32 %9, 1
  br label %19

14:                                               ; preds = %6
  %15 = tail call i32 @strncmp(i8* noundef nonnull %7, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 noundef 6) #4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = add nsw i32 %8, %17
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi i32 [ %13, %12 ], [ %9, %14 ]
  %21 = phi i32 [ %8, %12 ], [ %18, %14 ]
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !3
  %23 = tail call i8* @fgets(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @s, i64 0, i64 0), i32 noundef 1024, %struct._IO_FILE* noundef %22)
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
  tail call void @exit(i32 noundef %32) #5
  unreachable
}

; Function Attrs: nofree nounwind
declare dso_local noundef i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
