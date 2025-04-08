; ModuleID = 'test6.c'
source_filename = "test6.c"
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
@cp = dso_local local_unnamed_addr global [4 x i32] [i32 65, i32 232, i32 20250, i32 159744], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"kk2\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"%s: (%s) \09%s:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"strcmp(buf,\22abcd\22) == 0\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"test6.c\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"    : strcpy/cat error!! '%s'\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"ef\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"strncmp(buf,\22abcdef\22,6) == 0\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"buf[6] == '\\0'\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"    : strncat() does not terminate\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"efgh\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"abcdefgh\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"strncmp(buf,\22abcdefgh\22,8) == 0\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"buf[8] == '\\0'\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"    : strncat() did not null terminate\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"u8strcmp(buf,\22abcd\22) == 0\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"    : u8strcpy/cat error!! '%s'\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"u8strncmp(buf,\22abcdef\22,6) == 0\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"    : u8strncat() does not terminate\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"u8strncmp(buf,\22abcdefgh\22,8) == 0\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"buf[7] != '\\0'\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"    : strncat() does not terminate %02X\00", align 1
@s1 = dso_local local_unnamed_addr global i8* null, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [9 x i8], align 1
  %4 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %4) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %4, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 3, i1 false) #9
  %5 = call i64 @strlen(i8* noundef nonnull %4)
  %6 = getelementptr [9 x i8], [9 x i8]* %3, i64 0, i64 %5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %6, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 3, i1 false)
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %4, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 5)
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = tail call i32* @__errno_location() #10
  store i32 0, i32* %10, align 4, !tbaa !3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %12 = tail call i32 @fflush(%struct._IO_FILE* noundef %11)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %14 = select i1 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %14, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 17) #11
  br i1 %8, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %4) #11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %20 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %23 = call i32 @fflush(%struct._IO_FILE* noundef %22)
  store i32 %9, i32* %10, align 4, !tbaa !3
  %24 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 6
  store i8 65, i8* %24, align 1, !tbaa !9
  %25 = icmp slt i32 %0, 100
  %26 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %27 = call i8* @strncat(i8* noundef nonnull %4, i8* noundef nonnull dereferenceable(1) %26, i64 noundef 2) #9
  %28 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %4, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 6)
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 0, i32* %10, align 4, !tbaa !3
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %32 = call i32 @fflush(%struct._IO_FILE* noundef %31)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %34 = select i1 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %34, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 22) #11
  br i1 %29, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %4) #11
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %40 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %39)
  br label %41

41:                                               ; preds = %36, %21
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %43 = call i32 @fflush(%struct._IO_FILE* noundef %42)
  store i32 %30, i32* %10, align 4, !tbaa !3
  %44 = load i8, i8* %24, align 1, !tbaa !9
  %45 = icmp ne i8 %44, 0
  %46 = zext i1 %45 to i32
  store i32 0, i32* %10, align 4, !tbaa !3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %48 = call i32 @fflush(%struct._IO_FILE* noundef %47)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %50 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %50, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 23) #11
  br i1 %45, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %54 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %53) #11
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %56 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %55)
  br label %57

57:                                               ; preds = %52, %41
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %59 = call i32 @fflush(%struct._IO_FILE* noundef %58)
  store i32 %46, i32* %10, align 4, !tbaa !3
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 8
  store i8 66, i8* %60, align 1, !tbaa !9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %4, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 5, i1 false) #9
  %61 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %62 = call i8* @strncat(i8* noundef nonnull %4, i8* noundef nonnull dereferenceable(1) %61, i64 noundef 4) #9
  %63 = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %4, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i64 8)
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  store i32 0, i32* %10, align 4, !tbaa !3
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %67 = call i32 @fflush(%struct._IO_FILE* noundef %66)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %69 = select i1 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %69, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 29) #11
  br i1 %64, label %71, label %76

71:                                               ; preds = %57
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %4) #11
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %75 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %74)
  br label %76

76:                                               ; preds = %71, %57
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %78 = call i32 @fflush(%struct._IO_FILE* noundef %77)
  store i32 %65, i32* %10, align 4, !tbaa !3
  %79 = load i8, i8* %60, align 1, !tbaa !9
  %80 = icmp ne i8 %79, 0
  %81 = zext i1 %80 to i32
  store i32 0, i32* %10, align 4, !tbaa !3
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %83 = call i32 @fflush(%struct._IO_FILE* noundef %82)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %85 = select i1 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %84, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %85, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 30) #11
  br i1 %80, label %87, label %92

87:                                               ; preds = %76
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %89 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %88) #11
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %91 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %90)
  br label %92

92:                                               ; preds = %87, %76
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %94 = call i32 @fflush(%struct._IO_FILE* noundef %93)
  store i32 %81, i32* %10, align 4, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %4, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 3, i1 false) #9
  %95 = call i64 @strlen(i8* noundef nonnull %4)
  %96 = getelementptr [9 x i8], [9 x i8]* %3, i64 0, i64 %95
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %96, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 3, i1 false)
  %97 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %4, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 5)
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  store i32 0, i32* %10, align 4, !tbaa !3
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %101 = call i32 @fflush(%struct._IO_FILE* noundef %100)
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %103 = select i1 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %102, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %103, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 35) #11
  br i1 %98, label %105, label %110

105:                                              ; preds = %92
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %106, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %4) #11
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %109 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %108)
  br label %110

110:                                              ; preds = %105, %92
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %112 = call i32 @fflush(%struct._IO_FILE* noundef %111)
  store i32 %99, i32* %10, align 4, !tbaa !3
  store i8 65, i8* %24, align 1, !tbaa !9
  %113 = call i8* @u8strncat(i8* noundef nonnull %4, i8* noundef %26, i64 noundef 2) #9
  %114 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %4, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 6)
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i32
  store i32 0, i32* %10, align 4, !tbaa !3
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %118 = call i32 @fflush(%struct._IO_FILE* noundef %117)
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %120 = select i1 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %119, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %120, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 40) #11
  br i1 %115, label %122, label %127

122:                                              ; preds = %110
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %123, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %4) #11
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %126 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %125)
  br label %127

127:                                              ; preds = %122, %110
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %129 = call i32 @fflush(%struct._IO_FILE* noundef %128)
  store i32 %116, i32* %10, align 4, !tbaa !3
  %130 = load i8, i8* %24, align 1, !tbaa !9
  %131 = icmp ne i8 %130, 0
  %132 = zext i1 %131 to i32
  store i32 0, i32* %10, align 4, !tbaa !3
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %134 = call i32 @fflush(%struct._IO_FILE* noundef %133)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %136 = select i1 %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %136, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 41) #11
  br i1 %131, label %138, label %143

138:                                              ; preds = %127
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %140 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %139) #11
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %142 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %141)
  br label %143

143:                                              ; preds = %138, %127
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %145 = call i32 @fflush(%struct._IO_FILE* noundef %144)
  store i32 %132, i32* %10, align 4, !tbaa !3
  %146 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 7
  store i8 66, i8* %146, align 1, !tbaa !9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %4, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 5, i1 false) #9
  %147 = call i8* @u8strncat(i8* noundef nonnull %4, i8* noundef %61, i64 noundef 4) #9
  %148 = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %4, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i64 8)
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i32
  store i32 0, i32* %10, align 4, !tbaa !3
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %152 = call i32 @fflush(%struct._IO_FILE* noundef %151)
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %154 = select i1 %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %153, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %154, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 47) #11
  br i1 %149, label %156, label %161

156:                                              ; preds = %143
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %157, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %4) #11
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %160 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %159)
  br label %161

161:                                              ; preds = %156, %143
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %163 = call i32 @fflush(%struct._IO_FILE* noundef %162)
  store i32 %150, i32* %10, align 4, !tbaa !3
  %164 = load i8, i8* %146, align 1, !tbaa !9
  %165 = icmp eq i8 %164, 0
  %166 = zext i1 %165 to i32
  store i32 0, i32* %10, align 4, !tbaa !3
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %168 = call i32 @fflush(%struct._IO_FILE* noundef %167)
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %170 = select i1 %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %169, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %170, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 48) #11
  br i1 %165, label %172, label %179

172:                                              ; preds = %161
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %174 = load i8, i8* %146, align 1, !tbaa !9
  %175 = zext i8 %174 to i32
  %176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %173, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i32 noundef %175) #11
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %178 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %177)
  br label %179

179:                                              ; preds = %172, %161
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %181 = call i32 @fflush(%struct._IO_FILE* noundef %180)
  store i32 %166, i32* %10, align 4, !tbaa !3
  %182 = load i8, i8* %60, align 1, !tbaa !9
  %183 = icmp ne i8 %182, 0
  store i32 0, i32* %10, align 4, !tbaa !3
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %185 = call i32 @fflush(%struct._IO_FILE* noundef %184)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %187 = select i1 %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %188 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %186, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %187, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 49) #11
  br i1 %183, label %189, label %196

189:                                              ; preds = %179
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %191 = load i8, i8* %60, align 1, !tbaa !9
  %192 = zext i8 %191 to i32
  %193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %190, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i32 noundef %192) #11
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %195 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %194)
  br label %196

196:                                              ; preds = %189, %179
  %197 = zext i1 %183 to i32
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %199 = call i32 @fflush(%struct._IO_FILE* noundef %198)
  store i32 %197, i32* %10, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %4) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare dso_local i8* @strncat(i8* noalias noundef returned, i8* noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

declare dso_local i8* @u8strncat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
