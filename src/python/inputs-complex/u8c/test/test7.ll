; ModuleID = 'test7.c'
source_filename = "test7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [12 x i8] c"TEST: Latin\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" \09%s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"test7.c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: (%s) \09%s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ret == 0\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"    : '%s' != '%s'\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ABc\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"aBC\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"TEST: Cyrillic\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\D0\96\D0\94\D0\91\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\D0\96\D0\B4\D0\91\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\D0\B6\D0\94\D0\B1\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\D0\96\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\D0\B6\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"    : '%s' != '%s' %06X (%06X) != %06X (%06X)\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"\D4\90\D0\82\D1\93\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"\D4\91\D1\92\D0\83\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"TEST: Greek\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"\CE\94\CE\98\CE\9E\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"\CE\94\CE\98\CE\BE\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\CE\B4\CE\B8\CE\9E\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"\E1\BC\88\E1\BC\B4\E1\BD\88\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"\E1\BC\80\E1\BC\BC\E1\BD\80\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"cs == 0x2031\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"    : Wrong encoding!\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"\E2\80\B1\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"strcmp(t,buf)==0\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"    : \\u failed %02X %02x\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8], align 1
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %7) #7
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %9 = tail call i32 @fflush(%struct._IO_FILE* noundef %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %10) #8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 13) #8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %15 = tail call i32 @fflush(%struct._IO_FILE* noundef %14)
  %16 = tail call i32 @u8stricmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #7
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = tail call i32* @__errno_location() #9
  store i32 0, i32* %19, align 4, !tbaa !7
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %21 = tail call i32 @fflush(%struct._IO_FILE* noundef %20)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %23 = select i1 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %23, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 16) #8
  br i1 %17, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %29 = tail call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %32 = tail call i32 @fflush(%struct._IO_FILE* noundef %31)
  store i32 %18, i32* %19, align 4, !tbaa !7
  %33 = tail call i32 @u8stricmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 0, i32* %19, align 4, !tbaa !7
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %37 = tail call i32 @fflush(%struct._IO_FILE* noundef %36)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %39 = select i1 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %40 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %39, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 20) #8
  br i1 %34, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %43 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %45 = tail call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %44)
  br label %46

46:                                               ; preds = %41, %30
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %48 = tail call i32 @fflush(%struct._IO_FILE* noundef %47)
  store i32 %35, i32* %19, align 4, !tbaa !7
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %50 = tail call i32 @fflush(%struct._IO_FILE* noundef %49)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %52 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %51) #8
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %54 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 22) #8
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %56 = tail call i32 @fflush(%struct._IO_FILE* noundef %55)
  %57 = tail call i32 @u8stricmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #7
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  store i32 0, i32* %19, align 4, !tbaa !7
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %61 = tail call i32 @fflush(%struct._IO_FILE* noundef %60)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %63 = select i1 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %64 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %63, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 25) #8
  br i1 %58, label %65, label %70

65:                                               ; preds = %46
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %67 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %66, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #8
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %69 = tail call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %68)
  br label %70

70:                                               ; preds = %65, %46
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %72 = tail call i32 @fflush(%struct._IO_FILE* noundef %71)
  store i32 %59, i32* %19, align 4, !tbaa !7
  %73 = tail call i32 @u8stricmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #7
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i32
  store i32 0, i32* %19, align 4, !tbaa !7
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %77 = tail call i32 @fflush(%struct._IO_FILE* noundef %76)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %79 = select i1 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %80 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %79, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 29) #8
  br i1 %74, label %81, label %86

81:                                               ; preds = %70
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %83 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %82, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #8
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %85 = tail call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %84)
  br label %86

86:                                               ; preds = %81, %70
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %88 = tail call i32 @fflush(%struct._IO_FILE* noundef %87)
  store i32 %75, i32* %19, align 4, !tbaa !7
  %89 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %89) #7
  %90 = call i32 @u8next_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* noundef nonnull %5) #7
  %91 = load i32, i32* %5, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %89) #7
  %92 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %92) #7
  %93 = call i32 @u8next_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32* noundef nonnull %4) #7
  %94 = load i32, i32* %4, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %92) #7
  %95 = call i32 @u8stricmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)) #7
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  store i32 0, i32* %19, align 4, !tbaa !7
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %99 = call i32 @fflush(%struct._IO_FILE* noundef %98)
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %101 = select i1 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %100, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %101, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 35) #8
  br i1 %96, label %103, label %110

103:                                              ; preds = %86
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %105 = call i32 @u8fold(i32 noundef %91) #7
  %106 = call i32 @u8fold(i32 noundef %94) #7
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %104, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 noundef %91, i32 noundef %105, i32 noundef %94, i32 noundef %106) #8
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %109 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %108)
  br label %110

110:                                              ; preds = %103, %86
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %112 = call i32 @fflush(%struct._IO_FILE* noundef %111)
  store i32 %97, i32* %19, align 4, !tbaa !7
  %113 = call i32 @u8stricmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #7
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  store i32 0, i32* %19, align 4, !tbaa !7
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %117 = call i32 @fflush(%struct._IO_FILE* noundef %116)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %119 = select i1 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %118, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %119, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 39) #8
  br i1 %114, label %121, label %126

121:                                              ; preds = %110
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %122, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #8
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %125 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %124)
  br label %126

126:                                              ; preds = %121, %110
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %128 = call i32 @fflush(%struct._IO_FILE* noundef %127)
  store i32 %115, i32* %19, align 4, !tbaa !7
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %130 = call i32 @fflush(%struct._IO_FILE* noundef %129)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %132 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %131) #8
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %133, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 41) #8
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %136 = call i32 @fflush(%struct._IO_FILE* noundef %135)
  %137 = call i32 @u8stricmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #7
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i32
  store i32 0, i32* %19, align 4, !tbaa !7
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %141 = call i32 @fflush(%struct._IO_FILE* noundef %140)
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %143 = select i1 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %142, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %143, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 44) #8
  br i1 %138, label %145, label %150

145:                                              ; preds = %126
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %146, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #8
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %149 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %148)
  br label %150

150:                                              ; preds = %145, %126
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %152 = call i32 @fflush(%struct._IO_FILE* noundef %151)
  store i32 %139, i32* %19, align 4, !tbaa !7
  %153 = call i32 @u8stricmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #7
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i32
  store i32 0, i32* %19, align 4, !tbaa !7
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %157 = call i32 @fflush(%struct._IO_FILE* noundef %156)
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %159 = select i1 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %158, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %159, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 48) #8
  br i1 %154, label %161, label %166

161:                                              ; preds = %150
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %162, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #8
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %165 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %164)
  br label %166

166:                                              ; preds = %161, %150
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %168 = call i32 @fflush(%struct._IO_FILE* noundef %167)
  store i32 %155, i32* %19, align 4, !tbaa !7
  %169 = call i32 @u8stricmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0)) #7
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i32
  store i32 0, i32* %19, align 4, !tbaa !7
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %173 = call i32 @fflush(%struct._IO_FILE* noundef %172)
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %175 = select i1 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %174, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %175, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 52) #8
  br i1 %170, label %177, label %182

177:                                              ; preds = %166
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %178, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0)) #8
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %181 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %180)
  br label %182

182:                                              ; preds = %177, %166
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %184 = call i32 @fflush(%struct._IO_FILE* noundef %183)
  store i32 %171, i32* %19, align 4, !tbaa !7
  %185 = call i32 @u8encode_(i32 noundef 8241, i8* noundef nonnull %7) #7
  %186 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %186) #7
  %187 = call i32 @u8next_(i8* noundef nonnull %7, i32* noundef nonnull %3) #7
  %188 = load i32, i32* %3, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %186) #7
  %189 = icmp ne i32 %188, 8241
  %190 = zext i1 %189 to i32
  store i32 0, i32* %19, align 4, !tbaa !7
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %192 = call i32 @fflush(%struct._IO_FILE* noundef %191)
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %194 = select i1 %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %195 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %193, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %194, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 56) #8
  br i1 %189, label %196, label %201

196:                                              ; preds = %182
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %198 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %197) #8
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %200 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %199)
  br label %201

201:                                              ; preds = %196, %182
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %203 = call i32 @fflush(%struct._IO_FILE* noundef %202)
  store i32 %190, i32* %19, align 4, !tbaa !7
  %204 = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull dereferenceable(4) %7, i64 4)
  %205 = icmp ne i32 %204, 0
  store i32 0, i32* %19, align 4, !tbaa !7
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %207 = call i32 @fflush(%struct._IO_FILE* noundef %206)
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %209 = select i1 %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %208, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %209, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 58) #8
  br i1 %205, label %211, label %216

211:                                              ; preds = %201
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %212, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i32 noundef -30, i32 noundef -128) #8
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %215 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %214)
  br label %216

216:                                              ; preds = %211, %201
  %217 = zext i1 %205 to i32
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %219 = call i32 @fflush(%struct._IO_FILE* noundef %218)
  store i32 %217, i32* %19, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %7) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

declare dso_local i32 @u8stricmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @u8fold(i32 noundef) local_unnamed_addr #3

declare dso_local i32 @u8encode_(i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @u8next_(i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind readnone willreturn }

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
