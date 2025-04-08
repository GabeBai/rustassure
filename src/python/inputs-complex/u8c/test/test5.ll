; ModuleID = 'test5.c'
source_filename = "test5.c"
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
@.str.4 = private unnamed_addr constant [5 x i8] c"b\C3\A8a\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"%s: (%s) \09%s:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"buf[k] == t[k]\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"test5.c\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"    : u8nstrcpy failed at %d (%02X != %02X)\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"buf[k] != t[k]\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"buf[1] == '\\0'\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"    : u8nstrcpy failed at %d (%02X)\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"buf[0] == '\\0'\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"buf[4] == '\\0'\00", align 1
@s1 = dso_local local_unnamed_addr global i8* null, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [9 x i8], align 1
  %4 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %4) #5
  store i8 0, i8* %4, align 1, !tbaa !3
  %5 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 8) #5
  %6 = tail call i32* @__errno_location() #6
  %7 = load i8, i8* %4, align 1, !tbaa !3
  %8 = icmp ne i8 %7, 98
  %9 = zext i1 %8 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %11 = call i32 @fflush(%struct._IO_FILE* noundef %10)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %13 = select i1 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %13, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 19) #7
  br i1 %8, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %17 = load i8, i8* %4, align 1, !tbaa !3
  %18 = sext i8 %17 to i32
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i32 noundef %18, i32 noundef 98) #7
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %21 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %20)
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %24 = call i32 @fflush(%struct._IO_FILE* noundef %23)
  store i32 %9, i32* %6, align 4, !tbaa !6
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 1
  %26 = load i8, i8* %25, align 1, !tbaa !3
  %27 = icmp ne i8 %26, -61
  %28 = zext i1 %27 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %30 = call i32 @fflush(%struct._IO_FILE* noundef %29)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %32 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %32, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 19) #7
  br i1 %27, label %34, label %41

34:                                               ; preds = %22
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %36 = load i8, i8* %25, align 1, !tbaa !3
  %37 = sext i8 %36 to i32
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1, i32 noundef %37, i32 noundef -61) #7
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %40 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %39)
  br label %41

41:                                               ; preds = %34, %22
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %43 = call i32 @fflush(%struct._IO_FILE* noundef %42)
  store i32 %28, i32* %6, align 4, !tbaa !6
  %44 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 2
  %45 = load i8, i8* %44, align 1, !tbaa !3
  %46 = icmp ne i8 %45, -88
  %47 = zext i1 %46 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %49 = call i32 @fflush(%struct._IO_FILE* noundef %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %51 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %51, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 19) #7
  br i1 %46, label %53, label %60

53:                                               ; preds = %41
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %55 = load i8, i8* %44, align 1, !tbaa !3
  %56 = sext i8 %55 to i32
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 2, i32 noundef %56, i32 noundef -88) #7
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %59 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %58)
  br label %60

60:                                               ; preds = %53, %41
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %62 = call i32 @fflush(%struct._IO_FILE* noundef %61)
  store i32 %47, i32* %6, align 4, !tbaa !6
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 3
  %64 = load i8, i8* %63, align 1, !tbaa !3
  %65 = icmp ne i8 %64, 97
  %66 = zext i1 %65 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %68 = call i32 @fflush(%struct._IO_FILE* noundef %67)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %70 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %70, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 19) #7
  br i1 %65, label %72, label %79

72:                                               ; preds = %60
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %74 = load i8, i8* %63, align 1, !tbaa !3
  %75 = sext i8 %74 to i32
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 3, i32 noundef %75, i32 noundef 97) #7
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %78 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %77)
  br label %79

79:                                               ; preds = %72, %60
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %81 = call i32 @fflush(%struct._IO_FILE* noundef %80)
  store i32 %66, i32* %6, align 4, !tbaa !6
  %82 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 4
  %83 = load i8, i8* %82, align 1, !tbaa !3
  %84 = icmp ne i8 %83, 0
  %85 = zext i1 %84 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %87 = call i32 @fflush(%struct._IO_FILE* noundef %86)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %89 = select i1 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %89, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 19) #7
  br i1 %84, label %91, label %98

91:                                               ; preds = %79
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %93 = load i8, i8* %82, align 1, !tbaa !3
  %94 = sext i8 %93 to i32
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %92, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 4, i32 noundef %94, i32 noundef 0) #7
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %97 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %96)
  br label %98

98:                                               ; preds = %91, %79
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %100 = call i32 @fflush(%struct._IO_FILE* noundef %99)
  store i32 %85, i32* %6, align 4, !tbaa !6
  store i8 0, i8* %4, align 1, !tbaa !3
  %101 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 3) #5
  %102 = load i8, i8* %4, align 1, !tbaa !3
  %103 = icmp ne i8 %102, 98
  %104 = zext i1 %103 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %106 = call i32 @fflush(%struct._IO_FILE* noundef %105)
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %108 = select i1 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %107, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %108, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 26) #7
  br i1 %103, label %110, label %117

110:                                              ; preds = %98
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %112 = load i8, i8* %4, align 1, !tbaa !3
  %113 = sext i8 %112 to i32
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %111, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i32 noundef %113, i32 noundef 98) #7
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %116 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %115)
  br label %117

117:                                              ; preds = %110, %98
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %119 = call i32 @fflush(%struct._IO_FILE* noundef %118)
  store i32 %104, i32* %6, align 4, !tbaa !6
  %120 = load i8, i8* %25, align 1, !tbaa !3
  %121 = icmp ne i8 %120, -61
  %122 = zext i1 %121 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %124 = call i32 @fflush(%struct._IO_FILE* noundef %123)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %126 = select i1 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %125, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %126, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 26) #7
  br i1 %121, label %128, label %135

128:                                              ; preds = %117
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %130 = load i8, i8* %25, align 1, !tbaa !3
  %131 = sext i8 %130 to i32
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %129, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1, i32 noundef %131, i32 noundef -61) #7
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %134 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %133)
  br label %135

135:                                              ; preds = %128, %117
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %137 = call i32 @fflush(%struct._IO_FILE* noundef %136)
  store i32 %122, i32* %6, align 4, !tbaa !6
  %138 = load i8, i8* %44, align 1, !tbaa !3
  %139 = icmp ne i8 %138, -88
  %140 = zext i1 %139 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %142 = call i32 @fflush(%struct._IO_FILE* noundef %141)
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %144 = select i1 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %143, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %144, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 26) #7
  br i1 %139, label %146, label %153

146:                                              ; preds = %135
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %148 = load i8, i8* %44, align 1, !tbaa !3
  %149 = sext i8 %148 to i32
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %147, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 2, i32 noundef %149, i32 noundef -88) #7
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %152 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %151)
  br label %153

153:                                              ; preds = %146, %135
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %155 = call i32 @fflush(%struct._IO_FILE* noundef %154)
  store i32 %140, i32* %6, align 4, !tbaa !6
  store i8 0, i8* %4, align 1, !tbaa !3
  %156 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 2) #5
  %157 = load i8, i8* %4, align 1, !tbaa !3
  %158 = icmp ne i8 %157, 98
  %159 = zext i1 %158 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %161 = call i32 @fflush(%struct._IO_FILE* noundef %160)
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %163 = select i1 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %162, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %163, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 32) #7
  br i1 %158, label %165, label %172

165:                                              ; preds = %153
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %167 = load i8, i8* %4, align 1, !tbaa !3
  %168 = sext i8 %167 to i32
  %169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %166, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i32 noundef %168, i32 noundef 98) #7
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %171 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %170)
  br label %172

172:                                              ; preds = %165, %153
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %174 = call i32 @fflush(%struct._IO_FILE* noundef %173)
  store i32 %159, i32* %6, align 4, !tbaa !6
  %175 = load i8, i8* %25, align 1, !tbaa !3
  %176 = icmp eq i8 %175, -61
  %177 = zext i1 %176 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %179 = call i32 @fflush(%struct._IO_FILE* noundef %178)
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %181 = select i1 %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %181, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 33) #7
  br i1 %176, label %183, label %190

183:                                              ; preds = %172
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %185 = load i8, i8* %25, align 1, !tbaa !3
  %186 = sext i8 %185 to i32
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %184, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1, i32 noundef %186, i32 noundef -61) #7
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %189 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %188)
  br label %190

190:                                              ; preds = %183, %172
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %192 = call i32 @fflush(%struct._IO_FILE* noundef %191)
  store i32 %177, i32* %6, align 4, !tbaa !6
  %193 = load i8, i8* %25, align 1, !tbaa !3
  %194 = icmp ne i8 %193, 0
  %195 = zext i1 %194 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %197 = call i32 @fflush(%struct._IO_FILE* noundef %196)
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %199 = select i1 %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %200 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %198, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %199, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 34) #7
  br i1 %194, label %201, label %208

201:                                              ; preds = %190
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %203 = load i8, i8* %25, align 1, !tbaa !3
  %204 = sext i8 %203 to i32
  %205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %202, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 noundef 1, i32 noundef %204) #7
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %207 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %206)
  br label %208

208:                                              ; preds = %201, %190
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %210 = call i32 @fflush(%struct._IO_FILE* noundef %209)
  store i32 %195, i32* %6, align 4, !tbaa !6
  store i8 0, i8* %4, align 1, !tbaa !3
  %211 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 noundef 2) #5
  %212 = load i8, i8* %4, align 1, !tbaa !3
  %213 = icmp ne i8 %212, -61
  %214 = zext i1 %213 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %216 = call i32 @fflush(%struct._IO_FILE* noundef %215)
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %218 = select i1 %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %217, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %218, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 39) #7
  br i1 %213, label %220, label %227

220:                                              ; preds = %208
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %222 = load i8, i8* %4, align 1, !tbaa !3
  %223 = sext i8 %222 to i32
  %224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %221, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i32 noundef %223, i32 noundef -61) #7
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %226 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %225)
  br label %227

227:                                              ; preds = %220, %208
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %229 = call i32 @fflush(%struct._IO_FILE* noundef %228)
  store i32 %214, i32* %6, align 4, !tbaa !6
  %230 = load i8, i8* %25, align 1, !tbaa !3
  %231 = icmp ne i8 %230, -88
  %232 = zext i1 %231 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %234 = call i32 @fflush(%struct._IO_FILE* noundef %233)
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %236 = select i1 %231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %235, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %236, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 40) #7
  br i1 %231, label %238, label %245

238:                                              ; preds = %227
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %240 = load i8, i8* %25, align 1, !tbaa !3
  %241 = sext i8 %240 to i32
  %242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %239, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1, i32 noundef %241, i32 noundef -88) #7
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %244 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %243)
  br label %245

245:                                              ; preds = %238, %227
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %247 = call i32 @fflush(%struct._IO_FILE* noundef %246)
  store i32 %232, i32* %6, align 4, !tbaa !6
  store i8 0, i8* %4, align 1, !tbaa !3
  %248 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 noundef 1) #5
  %249 = load i8, i8* %4, align 1, !tbaa !3
  %250 = icmp eq i8 %249, -61
  %251 = zext i1 %250 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %253 = call i32 @fflush(%struct._IO_FILE* noundef %252)
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %255 = select i1 %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %254, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %255, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 45) #7
  br i1 %250, label %257, label %264

257:                                              ; preds = %245
  %258 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %259 = load i8, i8* %4, align 1, !tbaa !3
  %260 = sext i8 %259 to i32
  %261 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %258, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i32 noundef %260, i32 noundef -61) #7
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %263 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %262)
  br label %264

264:                                              ; preds = %257, %245
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %266 = call i32 @fflush(%struct._IO_FILE* noundef %265)
  store i32 %251, i32* %6, align 4, !tbaa !6
  %267 = load i8, i8* %4, align 1, !tbaa !3
  %268 = icmp ne i8 %267, 0
  %269 = zext i1 %268 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %271 = call i32 @fflush(%struct._IO_FILE* noundef %270)
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %273 = select i1 %268, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %274 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %272, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %273, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 46) #7
  br i1 %268, label %275, label %282

275:                                              ; preds = %264
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %277 = load i8, i8* %4, align 1, !tbaa !3
  %278 = sext i8 %277 to i32
  %279 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %276, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 noundef 0, i32 noundef %278) #7
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %281 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %280)
  br label %282

282:                                              ; preds = %275, %264
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %284 = call i32 @fflush(%struct._IO_FILE* noundef %283)
  store i32 %269, i32* %6, align 4, !tbaa !6
  store i8 0, i8* %4, align 1, !tbaa !3
  %285 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 noundef 8) #5
  br label %286

286:                                              ; preds = %282, %308
  %287 = phi i64 [ 0, %282 ], [ %311, %308 ]
  %288 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 %287
  %289 = load i8, i8* %288, align 1, !tbaa !3
  %290 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.3, i64 0, i64 %287
  %291 = load i8, i8* %290, align 1, !tbaa !3
  %292 = icmp ne i8 %289, %291
  %293 = zext i1 %292 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %295 = call i32 @fflush(%struct._IO_FILE* noundef %294)
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %297 = select i1 %292, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %298 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %296, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %297, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 58) #7
  br i1 %292, label %299, label %308

299:                                              ; preds = %286
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %301 = load i8, i8* %288, align 1, !tbaa !3
  %302 = sext i8 %301 to i32
  %303 = sext i8 %291 to i32
  %304 = trunc i64 %287 to i32
  %305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %300, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef %304, i32 noundef %302, i32 noundef %303) #7
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %307 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %306)
  br label %308

308:                                              ; preds = %299, %286
  %309 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %310 = call i32 @fflush(%struct._IO_FILE* noundef %309)
  store i32 %293, i32* %6, align 4, !tbaa !6
  %311 = add nuw nsw i64 %287, 1
  %312 = icmp eq i64 %311, 8
  br i1 %312, label %313, label %286

313:                                              ; preds = %308
  store i8 0, i8* %4, align 1, !tbaa !3
  %314 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 noundef 7) #5
  %315 = load i8, i8* %4, align 1, !tbaa !3
  %316 = icmp ne i8 %315, -16
  %317 = zext i1 %316 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %319 = call i32 @fflush(%struct._IO_FILE* noundef %318)
  %320 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %321 = select i1 %316, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %322 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %320, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %321, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 64) #7
  br i1 %316, label %323, label %330

323:                                              ; preds = %313
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %325 = load i8, i8* %4, align 1, !tbaa !3
  %326 = sext i8 %325 to i32
  %327 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %324, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i32 noundef %326, i32 noundef -16) #7
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %329 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %328)
  br label %330

330:                                              ; preds = %323, %313
  %331 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %332 = call i32 @fflush(%struct._IO_FILE* noundef %331)
  store i32 %317, i32* %6, align 4, !tbaa !6
  %333 = load i8, i8* %25, align 1, !tbaa !3
  %334 = icmp ne i8 %333, -89
  %335 = zext i1 %334 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %336 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %337 = call i32 @fflush(%struct._IO_FILE* noundef %336)
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %339 = select i1 %334, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %340 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %338, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %339, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 64) #7
  br i1 %334, label %341, label %348

341:                                              ; preds = %330
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %343 = load i8, i8* %25, align 1, !tbaa !3
  %344 = sext i8 %343 to i32
  %345 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %342, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1, i32 noundef %344, i32 noundef -89) #7
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %347 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %346)
  br label %348

348:                                              ; preds = %341, %330
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %350 = call i32 @fflush(%struct._IO_FILE* noundef %349)
  store i32 %335, i32* %6, align 4, !tbaa !6
  %351 = load i8, i8* %44, align 1, !tbaa !3
  %352 = icmp ne i8 %351, -128
  %353 = zext i1 %352 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %355 = call i32 @fflush(%struct._IO_FILE* noundef %354)
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %357 = select i1 %352, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %358 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %356, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %357, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 64) #7
  br i1 %352, label %359, label %366

359:                                              ; preds = %348
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %361 = load i8, i8* %44, align 1, !tbaa !3
  %362 = sext i8 %361 to i32
  %363 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %360, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 2, i32 noundef %362, i32 noundef -128) #7
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %365 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %364)
  br label %366

366:                                              ; preds = %359, %348
  %367 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %368 = call i32 @fflush(%struct._IO_FILE* noundef %367)
  store i32 %353, i32* %6, align 4, !tbaa !6
  %369 = load i8, i8* %63, align 1, !tbaa !3
  %370 = icmp ne i8 %369, -128
  %371 = zext i1 %370 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %372 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %373 = call i32 @fflush(%struct._IO_FILE* noundef %372)
  %374 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %375 = select i1 %370, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %376 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %374, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %375, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 64) #7
  br i1 %370, label %377, label %384

377:                                              ; preds = %366
  %378 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %379 = load i8, i8* %63, align 1, !tbaa !3
  %380 = sext i8 %379 to i32
  %381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %378, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 3, i32 noundef %380, i32 noundef -128) #7
  %382 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %383 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %382)
  br label %384

384:                                              ; preds = %377, %366
  %385 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %386 = call i32 @fflush(%struct._IO_FILE* noundef %385)
  store i32 %371, i32* %6, align 4, !tbaa !6
  %387 = load i8, i8* %82, align 1, !tbaa !3
  %388 = icmp ne i8 %387, 0
  %389 = zext i1 %388 to i32
  store i32 0, i32* %6, align 4, !tbaa !6
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %391 = call i32 @fflush(%struct._IO_FILE* noundef %390)
  %392 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %393 = select i1 %388, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %394 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %392, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %393, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 66) #7
  br i1 %388, label %395, label %402

395:                                              ; preds = %384
  %396 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %397 = load i8, i8* %82, align 1, !tbaa !3
  %398 = sext i8 %397 to i32
  %399 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %396, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 noundef 4, i32 noundef %398) #7
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %401 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %400)
  br label %402

402:                                              ; preds = %395, %384
  %403 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %404 = call i32 @fflush(%struct._IO_FILE* noundef %403)
  store i32 %389, i32* %6, align 4, !tbaa !6
  store i8 0, i8* %4, align 1, !tbaa !3
  %405 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3) #5
  %406 = load i8, i8* %4, align 1, !tbaa !3
  %407 = icmp ne i8 %406, 0
  store i32 0, i32* %6, align 4, !tbaa !6
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %409 = call i32 @fflush(%struct._IO_FILE* noundef %408)
  %410 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %411 = select i1 %407, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %412 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %410, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %411, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 70) #7
  br i1 %407, label %413, label %420

413:                                              ; preds = %402
  %414 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %415 = load i8, i8* %4, align 1, !tbaa !3
  %416 = sext i8 %415 to i32
  %417 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %414, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 noundef 4, i32 noundef %416) #7
  %418 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %419 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %418)
  br label %420

420:                                              ; preds = %413, %402
  %421 = zext i1 %407 to i32
  %422 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %423 = call i32 @fflush(%struct._IO_FILE* noundef %422)
  store i32 %421, i32* %6, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %4) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @u8strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

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
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
