; ModuleID = 'test3.c'
source_filename = "test3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@buf = dso_local global [20000 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"text1.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"%s: (%s) \09%s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"test3.c\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"    : Unable to open text file!\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"f>0\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Timing u8next() (%d times)\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" \09%s:%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"TIME: %ld/%ld sec.\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Timing u8next_FAST() (%d times)\00", align 1
@s1 = dso_local local_unnamed_addr global i8* null, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7
  store i8 0, i8* getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), align 16, !tbaa !3
  %5 = tail call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp eq %struct._IO_FILE* %5, null
  %7 = zext i1 %6 to i32
  %8 = tail call i32* @__errno_location() #8
  store i32 0, i32* %8, align 4, !tbaa !6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %10 = tail call i32 @fflush(%struct._IO_FILE* noundef %9)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %12 = select i1 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 23) #9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  br i1 %6, label %15, label %21

15:                                               ; preds = %2
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %14) #9
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %18 = tail call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %17)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %20 = tail call i32 @fflush(%struct._IO_FILE* noundef %19)
  store i32 %7, i32* %8, align 4, !tbaa !6
  br label %32

21:                                               ; preds = %2
  %22 = tail call i32 @fflush(%struct._IO_FILE* noundef %14)
  store i32 %7, i32* %8, align 4, !tbaa !6
  %23 = tail call i64 @fread(i8* noundef getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), i64 noundef 1, i64 noundef 20000, %struct._IO_FILE* noundef nonnull %5)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %3, align 4, !tbaa !6
  store i32 0, i32* %8, align 4, !tbaa !6
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %26 = tail call i32 @fflush(%struct._IO_FILE* noundef %25)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 26) #9
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %30 = tail call i32 @fflush(%struct._IO_FILE* noundef %29)
  store i32 0, i32* %8, align 4, !tbaa !6
  %31 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %5)
  br label %32

32:                                               ; preds = %15, %21
  %33 = load i8, i8* getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), align 16, !tbaa !3
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %107, label %35

35:                                               ; preds = %32
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %37 = tail call i32 @fflush(%struct._IO_FILE* noundef %36)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 noundef 100000) #9
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 31) #9
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %43 = tail call i32 @fflush(%struct._IO_FILE* noundef %42)
  %44 = tail call i64 @clock() #7
  %45 = icmp eq i64 %44, -1
  br i1 %45, label %46, label %57

46:                                               ; preds = %61, %35
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %48 = call i32 @fflush(%struct._IO_FILE* noundef %47)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 noundef 100000) #9
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 42) #9
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %54 = call i32 @fflush(%struct._IO_FILE* noundef %53)
  %55 = call i64 @clock() #7
  %56 = icmp eq i64 %55, -1
  br i1 %56, label %107, label %82

57:                                               ; preds = %35, %79
  %58 = phi i32 [ %80, %79 ], [ 0, %35 ]
  %59 = load i8, i8* getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), align 16, !tbaa !3
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %79, label %72

61:                                               ; preds = %79
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %63 = call i32 @fflush(%struct._IO_FILE* noundef %62)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %65 = call i64 @clock() #7
  %66 = sub nsw i64 %65, %44
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 noundef %66, i64 noundef 1000000) #9
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 32) #9
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %71 = call i32 @fflush(%struct._IO_FILE* noundef %70)
  br label %46

72:                                               ; preds = %57, %72
  %73 = phi i8* [ %76, %72 ], [ getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), %57 ]
  %74 = call i32 @u8next_(i8* noundef nonnull %73, i32* noundef nonnull %3) #7
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1, !tbaa !3
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %72

79:                                               ; preds = %72, %57
  %80 = add nuw nsw i32 %58, 1
  %81 = icmp eq i32 %80, 100000
  br i1 %81, label %61, label %57

82:                                               ; preds = %46, %104
  %83 = phi i32 [ %105, %104 ], [ 0, %46 ]
  %84 = load i8, i8* getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), align 16, !tbaa !3
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %104, label %97

86:                                               ; preds = %104
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %88 = call i32 @fflush(%struct._IO_FILE* noundef %87)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %90 = call i64 @clock() #7
  %91 = sub nsw i64 %90, %55
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 noundef %91, i64 noundef 1000000) #9
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 43) #9
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %96 = call i32 @fflush(%struct._IO_FILE* noundef %95)
  br label %107

97:                                               ; preds = %82, %97
  %98 = phi i8* [ %101, %97 ], [ getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), %82 ]
  %99 = call i32 @u8next_FAST(i8* noundef nonnull %98, i32* noundef nonnull %3) #7
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1, !tbaa !3
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %97

104:                                              ; preds = %97, %82
  %105 = add nuw nsw i32 %83, 1
  %106 = icmp eq i32 %105, 100000
  br i1 %106, label %86, label %82

107:                                              ; preds = %46, %86, %32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i64 @clock() local_unnamed_addr #4

declare dso_local i32 @u8next_(i8* noundef, i32* noundef) local_unnamed_addr #5

declare dso_local i32 @u8next_FAST(i8* noundef, i32* noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
