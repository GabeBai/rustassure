; ModuleID = 'test6.c'
source_filename = "test6.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"Aa\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\C3\A8a\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\E4\BC\9A\E5\93\A1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\F0\A7\80\80\F0\A7\80\8D\00", align 1
@s = local_unnamed_addr global [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 8
@cp = local_unnamed_addr global [4 x i32] [i32 65, i32 232, i32 20250, i32 159744], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"kk2\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@__stdoutp = external local_unnamed_addr global %struct.__sFILE*, align 8
@__stderrp = external local_unnamed_addr global %struct.__sFILE*, align 8
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
@s1 = local_unnamed_addr global i8* null, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [9 x i8], align 1
  %4 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %4) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %4, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 3, i1 false)
  %5 = call i8* @__strcat_chk(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 noundef 9) #7
  %6 = call i32 @memcmp(i8* noundef nonnull dereferenceable(5) %4, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 5)
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32* @__error() #7
  store i32 0, i32* %9, align 4, !tbaa !10
  %10 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %11 = call i32 @fflush(%struct.__sFILE* noundef %10)
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %13 = select i1 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %14 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %12, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %13, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 17)
  br i1 %7, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %17 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %16, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %4)
  %18 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %19 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %22 = call i32 @fflush(%struct.__sFILE* noundef %21)
  %23 = call i32* @__error() #7
  store i32 %8, i32* %23, align 4, !tbaa !10
  %24 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 6
  store i8 65, i8* %24, align 1, !tbaa !16
  %25 = icmp slt i32 %0, 100
  %26 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %27 = call i8* @__strncat_chk(i8* noundef nonnull %4, i8* noundef %26, i64 noundef 2, i64 noundef 9) #7
  %28 = call i32 @memcmp(i8* noundef nonnull dereferenceable(6) %4, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 6)
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32* @__error() #7
  store i32 0, i32* %31, align 4, !tbaa !10
  %32 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %33 = call i32 @fflush(%struct.__sFILE* noundef %32)
  %34 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %35 = select i1 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %36 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %34, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %35, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 22)
  br i1 %29, label %37, label %42

37:                                               ; preds = %20
  %38 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %39 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %38, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %4)
  %40 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %41 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %40)
  br label %42

42:                                               ; preds = %37, %20
  %43 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %44 = call i32 @fflush(%struct.__sFILE* noundef %43)
  %45 = call i32* @__error() #7
  store i32 %30, i32* %45, align 4, !tbaa !10
  %46 = load i8, i8* %24, align 1, !tbaa !16
  %47 = icmp ne i8 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32* @__error() #7
  store i32 0, i32* %49, align 4, !tbaa !10
  %50 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %51 = call i32 @fflush(%struct.__sFILE* noundef %50)
  %52 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %53 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %54 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %52, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %53, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 23)
  br i1 %47, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %57 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i64 34, i64 1, %struct.__sFILE* %56)
  %58 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %59 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %58)
  br label %60

60:                                               ; preds = %55, %42
  %61 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %62 = call i32 @fflush(%struct.__sFILE* noundef %61)
  %63 = call i32* @__error() #7
  store i32 %48, i32* %63, align 4, !tbaa !10
  %64 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 8
  store i8 66, i8* %64, align 1, !tbaa !16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %4, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 5, i1 false)
  %65 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %66 = call i8* @__strncat_chk(i8* noundef nonnull %4, i8* noundef %65, i64 noundef 4, i64 noundef 9) #7
  %67 = call i32 @memcmp(i8* noundef nonnull dereferenceable(8) %4, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i64 8)
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32* @__error() #7
  store i32 0, i32* %70, align 4, !tbaa !10
  %71 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %72 = call i32 @fflush(%struct.__sFILE* noundef %71)
  %73 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %74 = select i1 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %75 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %73, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %74, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 29)
  br i1 %68, label %76, label %81

76:                                               ; preds = %60
  %77 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %78 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %77, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %4)
  %79 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %80 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %79)
  br label %81

81:                                               ; preds = %76, %60
  %82 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %83 = call i32 @fflush(%struct.__sFILE* noundef %82)
  %84 = call i32* @__error() #7
  store i32 %69, i32* %84, align 4, !tbaa !10
  %85 = load i8, i8* %64, align 1, !tbaa !16
  %86 = icmp ne i8 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32* @__error() #7
  store i32 0, i32* %88, align 4, !tbaa !10
  %89 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %90 = call i32 @fflush(%struct.__sFILE* noundef %89)
  %91 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %92 = select i1 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %93 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %91, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %92, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 30)
  br i1 %86, label %94, label %99

94:                                               ; preds = %81
  %95 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %96 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i64 38, i64 1, %struct.__sFILE* %95)
  %97 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %98 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %97)
  br label %99

99:                                               ; preds = %94, %81
  %100 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %101 = call i32 @fflush(%struct.__sFILE* noundef %100)
  %102 = call i32* @__error() #7
  store i32 %87, i32* %102, align 4, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %4, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 3, i1 false)
  %103 = call i8* @__strcat_chk(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 noundef 9) #7
  %104 = call i32 @memcmp(i8* noundef nonnull dereferenceable(5) %4, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 5)
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32* @__error() #7
  store i32 0, i32* %107, align 4, !tbaa !10
  %108 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %109 = call i32 @fflush(%struct.__sFILE* noundef %108)
  %110 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %111 = select i1 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %112 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %110, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %111, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 35)
  br i1 %105, label %113, label %118

113:                                              ; preds = %99
  %114 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %115 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %114, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %4)
  %116 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %117 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %116)
  br label %118

118:                                              ; preds = %113, %99
  %119 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %120 = call i32 @fflush(%struct.__sFILE* noundef %119)
  %121 = call i32* @__error() #7
  store i32 %106, i32* %121, align 4, !tbaa !10
  store i8 65, i8* %24, align 1, !tbaa !16
  %122 = call i8* @u8strncat(i8* noundef nonnull %4, i8* noundef %26, i64 noundef 2) #7
  %123 = call i32 @memcmp(i8* noundef nonnull dereferenceable(6) %4, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 6)
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32* @__error() #7
  store i32 0, i32* %126, align 4, !tbaa !10
  %127 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %128 = call i32 @fflush(%struct.__sFILE* noundef %127)
  %129 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %130 = select i1 %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %131 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %129, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %130, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 40)
  br i1 %124, label %132, label %137

132:                                              ; preds = %118
  %133 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %134 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %133, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %4)
  %135 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %136 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %135)
  br label %137

137:                                              ; preds = %132, %118
  %138 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %139 = call i32 @fflush(%struct.__sFILE* noundef %138)
  %140 = call i32* @__error() #7
  store i32 %125, i32* %140, align 4, !tbaa !10
  %141 = load i8, i8* %24, align 1, !tbaa !16
  %142 = icmp ne i8 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32* @__error() #7
  store i32 0, i32* %144, align 4, !tbaa !10
  %145 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %146 = call i32 @fflush(%struct.__sFILE* noundef %145)
  %147 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %148 = select i1 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %149 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %147, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %148, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 41)
  br i1 %142, label %150, label %155

150:                                              ; preds = %137
  %151 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %152 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i64 36, i64 1, %struct.__sFILE* %151)
  %153 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %154 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %153)
  br label %155

155:                                              ; preds = %150, %137
  %156 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %157 = call i32 @fflush(%struct.__sFILE* noundef %156)
  %158 = call i32* @__error() #7
  store i32 %143, i32* %158, align 4, !tbaa !10
  %159 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 7
  store i8 66, i8* %159, align 1, !tbaa !16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %4, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 5, i1 false)
  %160 = call i8* @u8strncat(i8* noundef nonnull %4, i8* noundef %65, i64 noundef 4) #7
  %161 = call i32 @memcmp(i8* noundef nonnull dereferenceable(8) %4, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i64 8)
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32* @__error() #7
  store i32 0, i32* %164, align 4, !tbaa !10
  %165 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %166 = call i32 @fflush(%struct.__sFILE* noundef %165)
  %167 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %168 = select i1 %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %169 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %167, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %168, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 47)
  br i1 %162, label %170, label %175

170:                                              ; preds = %155
  %171 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %172 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %171, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %4)
  %173 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %174 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %173)
  br label %175

175:                                              ; preds = %170, %155
  %176 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %177 = call i32 @fflush(%struct.__sFILE* noundef %176)
  %178 = call i32* @__error() #7
  store i32 %163, i32* %178, align 4, !tbaa !10
  %179 = load i8, i8* %159, align 1, !tbaa !16
  %180 = icmp eq i8 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32* @__error() #7
  store i32 0, i32* %182, align 4, !tbaa !10
  %183 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %184 = call i32 @fflush(%struct.__sFILE* noundef %183)
  %185 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %186 = select i1 %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %187 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %185, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %186, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 48)
  br i1 %180, label %188, label %195

188:                                              ; preds = %175
  %189 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %190 = load i8, i8* %159, align 1, !tbaa !16
  %191 = zext i8 %190 to i32
  %192 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %189, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i32 noundef %191)
  %193 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %194 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %193)
  br label %195

195:                                              ; preds = %188, %175
  %196 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %197 = call i32 @fflush(%struct.__sFILE* noundef %196)
  %198 = call i32* @__error() #7
  store i32 %181, i32* %198, align 4, !tbaa !10
  %199 = load i8, i8* %64, align 1, !tbaa !16
  %200 = icmp ne i8 %199, 0
  %201 = call i32* @__error() #7
  store i32 0, i32* %201, align 4, !tbaa !10
  %202 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !14
  %203 = call i32 @fflush(%struct.__sFILE* noundef %202)
  %204 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %205 = select i1 %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %206 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %204, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %205, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 49)
  br i1 %200, label %207, label %214

207:                                              ; preds = %195
  %208 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %209 = load i8, i8* %64, align 1, !tbaa !16
  %210 = zext i8 %209 to i32
  %211 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %208, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i32 noundef %210)
  %212 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %213 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %212)
  br label %214

214:                                              ; preds = %207, %195
  %215 = zext i1 %200 to i32
  %216 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %217 = call i32 @fflush(%struct.__sFILE* noundef %216)
  %218 = call i32* @__error() #7
  store i32 %215, i32* %218, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %4) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare i8* @__strcat_chk(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32* @__error() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(%struct.__sFILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(%struct.__sFILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare i8* @__strncat_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i8* @u8strncat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !12, i64 0}
!16 = !{!12, !12, i64 0}
