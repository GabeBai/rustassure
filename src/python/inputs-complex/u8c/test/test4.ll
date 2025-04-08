; ModuleID = 'test4.c'
source_filename = "test4.c"
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
@__const.main.s = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 16
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: (%s) \09%s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"l == k+1\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"test4.c\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"    : Expected length: %d, got %d\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"l == l2\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"    : Length should be %d, got %d\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"strncmp(s1,buf,l) == 0\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"    : Encoding error\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"    : len=%d [S %02X %02X %02X %02X] [E %02X %02X %02X %02X]\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" \09%s:%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"buf[l]=='\\0'\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"    : Encoding not 0 terminated!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 1
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 1
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 2
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 3
  br label %11

10:                                               ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7
  ret i32 0

11:                                               ; preds = %2, %111
  %12 = phi i64 [ 0, %2 ], [ %16, %111 ]
  %13 = getelementptr inbounds [4 x i8*], [4 x i8*]* @__const.main.s, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8, !tbaa !3
  %15 = call i32 @u8next_(i8* noundef %14, i32* noundef nonnull %3) #7
  %16 = add nuw nsw i64 %12, 1
  %17 = zext i32 %15 to i64
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = tail call i32* @__errno_location() #8
  store i32 0, i32* %20, align 4, !tbaa !7
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %22 = call i32 @fflush(%struct._IO_FILE* noundef %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %24 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 19) #9
  br i1 %18, label %26, label %32

26:                                               ; preds = %11
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %28 = trunc i64 %16 to i32
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 noundef %28, i32 noundef %15) #9
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %31 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %30)
  br label %32

32:                                               ; preds = %26, %11
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %34 = call i32 @fflush(%struct._IO_FILE* noundef %33)
  store i32 %19, i32* %20, align 4, !tbaa !7
  %35 = load i32, i32* %3, align 4, !tbaa !7
  %36 = call i32 @u8encode_(i32 noundef %35, i8* noundef nonnull %6) #7
  %37 = icmp ne i32 %15, %36
  %38 = zext i1 %37 to i32
  store i32 0, i32* %20, align 4, !tbaa !7
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %40 = call i32 @fflush(%struct._IO_FILE* noundef %39)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %42 = select i1 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %42, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 21) #9
  br i1 %37, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 noundef %15, i32 noundef %36) #9
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %48 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %47)
  br label %49

49:                                               ; preds = %44, %32
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %51 = call i32 @fflush(%struct._IO_FILE* noundef %50)
  store i32 %38, i32* %20, align 4, !tbaa !7
  %52 = sext i32 %15 to i64
  %53 = call i32 @strncmp(i8* noundef %14, i8* noundef nonnull %6, i64 noundef %52) #10
  %54 = icmp ne i32 %53, 0
  store i32 0, i32* %20, align 4, !tbaa !7
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %56 = call i32 @fflush(%struct._IO_FILE* noundef %55)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %58 = select i1 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %58, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 22) #9
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  br i1 %54, label %61, label %94

61:                                               ; preds = %49
  %62 = zext i1 %54 to i32
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %60) #9
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %65 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %64)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %67 = call i32 @fflush(%struct._IO_FILE* noundef %66)
  store i32 %62, i32* %20, align 4, !tbaa !7
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %69 = call i32 @fflush(%struct._IO_FILE* noundef %68)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %71 = load i8, i8* %14, align 1, !tbaa !9
  %72 = sext i8 %71 to i32
  %73 = getelementptr inbounds i8, i8* %14, i64 1
  %74 = load i8, i8* %73, align 1, !tbaa !9
  %75 = sext i8 %74 to i32
  %76 = getelementptr inbounds i8, i8* %14, i64 2
  %77 = load i8, i8* %76, align 1, !tbaa !9
  %78 = sext i8 %77 to i32
  %79 = getelementptr inbounds i8, i8* %14, i64 3
  %80 = load i8, i8* %79, align 1, !tbaa !9
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* %6, align 1, !tbaa !9
  %83 = sext i8 %82 to i32
  %84 = load i8, i8* %7, align 1, !tbaa !9
  %85 = sext i8 %84 to i32
  %86 = load i8, i8* %8, align 1, !tbaa !9
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* %9, align 1, !tbaa !9
  %89 = sext i8 %88 to i32
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), i32 noundef %36, i32 noundef %72, i32 noundef %75, i32 noundef %78, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89) #9
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %91, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 25) #9
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  br label %94

94:                                               ; preds = %49, %61
  %95 = phi %struct._IO_FILE* [ %93, %61 ], [ %60, %49 ]
  %96 = call i32 @fflush(%struct._IO_FILE* noundef %95)
  store i32 0, i32* %20, align 4, !tbaa !7
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 %52
  %98 = load i8, i8* %97, align 1, !tbaa !9
  %99 = icmp ne i8 %98, 0
  %100 = zext i1 %99 to i32
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %102 = call i32 @fflush(%struct._IO_FILE* noundef %101)
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %104 = select i1 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %103, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %104, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 28) #9
  br i1 %99, label %106, label %111

106:                                              ; preds = %94
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %108 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %107) #9
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %110 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %109)
  br label %111

111:                                              ; preds = %106, %94
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %113 = call i32 @fflush(%struct._IO_FILE* noundef %112)
  store i32 %100, i32* %20, align 4, !tbaa !7
  %114 = icmp eq i64 %16, 4
  br i1 %114, label %10, label %11
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

declare dso_local i32 @u8encode_(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { cold }
attributes #10 = { nounwind readonly willreturn }

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
!9 = !{!5, !5, i64 0}
