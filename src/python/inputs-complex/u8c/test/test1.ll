; ModuleID = 'test1.c'
source_filename = "test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"Aa\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\C3\A8a\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\E4\BC\9A\E5\93\A1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\F0\A7\80\80\F0\A7\80\8D\00", align 1
@s = dso_local local_unnamed_addr global [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 16
@s1 = dso_local local_unnamed_addr global i8* null, align 8
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: (%s) \09%s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"l == k+1\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"test1.c\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"    : Expected length: %d, got %d\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"slen == 2\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"    : String len (in codepoints) should be 2, got %d\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"l == l2\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"    : Calling u8next with ch == NULL failed. Expecting %d got %d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5
  br label %6

5:                                                ; preds = %61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5
  ret i32 0

6:                                                ; preds = %2, %61
  %7 = phi i64 [ 0, %2 ], [ %11, %61 ]
  %8 = getelementptr inbounds [4 x i8*], [4 x i8*]* @s, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8, !tbaa !3
  store i8* %9, i8** @s1, align 8, !tbaa !3
  %10 = call i32 @u8next_(i8* noundef %9, i32* noundef nonnull %3) #5
  %11 = add nuw nsw i64 %7, 1
  %12 = zext i32 %10 to i64
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = tail call i32* @__errno_location() #6
  store i32 0, i32* %15, align 4, !tbaa !7
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %17 = call i32 @fflush(%struct._IO_FILE* noundef %16)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %19 = select i1 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 16) #7
  br i1 %13, label %21, label %27

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %23 = trunc i64 %11 to i32
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 noundef %23, i32 noundef %10) #7
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %26 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %25)
  br label %27

27:                                               ; preds = %21, %6
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %29 = call i32 @fflush(%struct._IO_FILE* noundef %28)
  store i32 %14, i32* %15, align 4, !tbaa !7
  %30 = load i8*, i8** @s1, align 8, !tbaa !3
  %31 = call i32 @u8strlen(i8* noundef %30) #5
  %32 = icmp ne i32 %31, 2
  %33 = zext i1 %32 to i32
  store i32 0, i32* %15, align 4, !tbaa !7
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %35 = call i32 @fflush(%struct._IO_FILE* noundef %34)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %37 = select i1 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 18) #7
  br i1 %32, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i32 noundef %31) #7
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %43 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %42)
  br label %44

44:                                               ; preds = %39, %27
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %46 = call i32 @fflush(%struct._IO_FILE* noundef %45)
  store i32 %33, i32* %15, align 4, !tbaa !7
  %47 = load i8*, i8** @s1, align 8, !tbaa !3
  %48 = call i32 @u8next_(i8* noundef %47, i32* noundef null) #5
  %49 = icmp ne i32 %10, %48
  %50 = zext i1 %49 to i32
  store i32 0, i32* %15, align 4, !tbaa !7
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %52 = call i32 @fflush(%struct._IO_FILE* noundef %51)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %54 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %54, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 20) #7
  br i1 %49, label %56, label %61

56:                                               ; preds = %44
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i32 noundef %10, i32 noundef %48) #7
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %60 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %59)
  br label %61

61:                                               ; preds = %56, %44
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %63 = call i32 @fflush(%struct._IO_FILE* noundef %62)
  store i32 %50, i32* %15, align 4, !tbaa !7
  %64 = icmp eq i64 %11, 4
  br i1 %64, label %5, label %6
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @u8next_(i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @u8strlen(i8* noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
