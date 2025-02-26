; ModuleID = 'test5.c'
source_filename = "test5.c"
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
@.str.4 = private unnamed_addr constant [5 x i8] c"b\C3\A8a\00", align 1
@__stdoutp = external local_unnamed_addr global %struct.__sFILE*, align 8
@__stderrp = external local_unnamed_addr global %struct.__sFILE*, align 8
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
@s1 = local_unnamed_addr global i8* null, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [9 x i8], align 1
  %4 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %4) #4
  store i8 0, i8* %4, align 1, !tbaa !10
  %5 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 8) #4
  br label %6

6:                                                ; preds = %2, %29
  %7 = phi i64 [ 0, %2 ], [ %33, %29 ]
  %8 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1, !tbaa !10
  %10 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.4, i64 0, i64 %7
  %11 = load i8, i8* %10, align 1, !tbaa !10
  %12 = icmp ne i8 %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i32* @__error() #4
  store i32 0, i32* %14, align 4, !tbaa !13
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %16 = call i32 @fflush(%struct.__sFILE* noundef %15)
  %17 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %18 = select i1 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %19 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %17, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %18, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 19)
  br i1 %12, label %20, label %29

20:                                               ; preds = %6
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %22 = load i8, i8* %8, align 1, !tbaa !10
  %23 = sext i8 %22 to i32
  %24 = sext i8 %11 to i32
  %25 = trunc i64 %7 to i32
  %26 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %21, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef %25, i32 noundef %23, i32 noundef %24)
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %28 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %27)
  br label %29

29:                                               ; preds = %20, %6
  %30 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %31 = call i32 @fflush(%struct.__sFILE* noundef %30)
  %32 = call i32* @__error() #4
  store i32 %13, i32* %32, align 4, !tbaa !13
  %33 = add nuw nsw i64 %7, 1
  %34 = icmp eq i64 %33, 5
  br i1 %34, label %35, label %6

35:                                               ; preds = %29
  store i8 0, i8* %4, align 1, !tbaa !10
  %36 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 3) #4
  %37 = load i8, i8* %4, align 1, !tbaa !10
  %38 = icmp ne i8 %37, 98
  %39 = zext i1 %38 to i32
  %40 = call i32* @__error() #4
  store i32 0, i32* %40, align 4, !tbaa !13
  %41 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %42 = call i32 @fflush(%struct.__sFILE* noundef %41)
  %43 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %44 = select i1 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %45 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %43, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %44, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 26)
  br i1 %38, label %46, label %53

46:                                               ; preds = %35
  %47 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %48 = load i8, i8* %4, align 1, !tbaa !10
  %49 = sext i8 %48 to i32
  %50 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %47, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i32 noundef %49, i32 noundef 98)
  %51 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %52 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %51)
  br label %53

53:                                               ; preds = %46, %35
  %54 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %55 = call i32 @fflush(%struct.__sFILE* noundef %54)
  %56 = call i32* @__error() #4
  store i32 %39, i32* %56, align 4, !tbaa !13
  %57 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 1
  %58 = load i8, i8* %57, align 1, !tbaa !10
  %59 = icmp ne i8 %58, -61
  %60 = zext i1 %59 to i32
  %61 = call i32* @__error() #4
  store i32 0, i32* %61, align 4, !tbaa !13
  %62 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %63 = call i32 @fflush(%struct.__sFILE* noundef %62)
  %64 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %65 = select i1 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %66 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %64, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %65, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 26)
  br i1 %59, label %67, label %74

67:                                               ; preds = %53
  %68 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %69 = load i8, i8* %57, align 1, !tbaa !10
  %70 = sext i8 %69 to i32
  %71 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %68, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1, i32 noundef %70, i32 noundef -61)
  %72 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %73 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %72)
  br label %74

74:                                               ; preds = %67, %53
  %75 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %76 = call i32 @fflush(%struct.__sFILE* noundef %75)
  %77 = call i32* @__error() #4
  store i32 %60, i32* %77, align 4, !tbaa !13
  %78 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 2
  %79 = load i8, i8* %78, align 1, !tbaa !10
  %80 = icmp ne i8 %79, -88
  %81 = zext i1 %80 to i32
  %82 = call i32* @__error() #4
  store i32 0, i32* %82, align 4, !tbaa !13
  %83 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %84 = call i32 @fflush(%struct.__sFILE* noundef %83)
  %85 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %86 = select i1 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %87 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %85, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %86, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 26)
  br i1 %80, label %88, label %95

88:                                               ; preds = %74
  %89 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %90 = load i8, i8* %78, align 1, !tbaa !10
  %91 = sext i8 %90 to i32
  %92 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %89, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 2, i32 noundef %91, i32 noundef -88)
  %93 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %94 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %93)
  br label %95

95:                                               ; preds = %88, %74
  %96 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %97 = call i32 @fflush(%struct.__sFILE* noundef %96)
  %98 = call i32* @__error() #4
  store i32 %81, i32* %98, align 4, !tbaa !13
  store i8 0, i8* %4, align 1, !tbaa !10
  %99 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 2) #4
  %100 = load i8, i8* %4, align 1, !tbaa !10
  %101 = icmp ne i8 %100, 98
  %102 = zext i1 %101 to i32
  %103 = call i32* @__error() #4
  store i32 0, i32* %103, align 4, !tbaa !13
  %104 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %105 = call i32 @fflush(%struct.__sFILE* noundef %104)
  %106 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %107 = select i1 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %108 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %106, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %107, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 32)
  br i1 %101, label %109, label %116

109:                                              ; preds = %95
  %110 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %111 = load i8, i8* %4, align 1, !tbaa !10
  %112 = sext i8 %111 to i32
  %113 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %110, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i32 noundef %112, i32 noundef 98)
  %114 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %115 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %114)
  br label %116

116:                                              ; preds = %109, %95
  %117 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %118 = call i32 @fflush(%struct.__sFILE* noundef %117)
  %119 = call i32* @__error() #4
  store i32 %102, i32* %119, align 4, !tbaa !13
  %120 = load i8, i8* %57, align 1, !tbaa !10
  %121 = icmp eq i8 %120, -61
  %122 = zext i1 %121 to i32
  %123 = call i32* @__error() #4
  store i32 0, i32* %123, align 4, !tbaa !13
  %124 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %125 = call i32 @fflush(%struct.__sFILE* noundef %124)
  %126 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %127 = select i1 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %128 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %126, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %127, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 33)
  br i1 %121, label %129, label %136

129:                                              ; preds = %116
  %130 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %131 = load i8, i8* %57, align 1, !tbaa !10
  %132 = sext i8 %131 to i32
  %133 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %130, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1, i32 noundef %132, i32 noundef -61)
  %134 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %135 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %134)
  br label %136

136:                                              ; preds = %129, %116
  %137 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %138 = call i32 @fflush(%struct.__sFILE* noundef %137)
  %139 = call i32* @__error() #4
  store i32 %122, i32* %139, align 4, !tbaa !13
  %140 = load i8, i8* %57, align 1, !tbaa !10
  %141 = icmp ne i8 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32* @__error() #4
  store i32 0, i32* %143, align 4, !tbaa !13
  %144 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %145 = call i32 @fflush(%struct.__sFILE* noundef %144)
  %146 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %147 = select i1 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %148 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %146, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %147, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 34)
  br i1 %141, label %149, label %156

149:                                              ; preds = %136
  %150 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %151 = load i8, i8* %57, align 1, !tbaa !10
  %152 = sext i8 %151 to i32
  %153 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %150, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 noundef 1, i32 noundef %152)
  %154 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %155 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %154)
  br label %156

156:                                              ; preds = %149, %136
  %157 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %158 = call i32 @fflush(%struct.__sFILE* noundef %157)
  %159 = call i32* @__error() #4
  store i32 %142, i32* %159, align 4, !tbaa !13
  store i8 0, i8* %4, align 1, !tbaa !10
  %160 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 noundef 2) #4
  %161 = load i8, i8* %4, align 1, !tbaa !10
  %162 = icmp ne i8 %161, -61
  %163 = zext i1 %162 to i32
  %164 = call i32* @__error() #4
  store i32 0, i32* %164, align 4, !tbaa !13
  %165 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %166 = call i32 @fflush(%struct.__sFILE* noundef %165)
  %167 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %168 = select i1 %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %169 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %167, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %168, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 39)
  br i1 %162, label %170, label %177

170:                                              ; preds = %156
  %171 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %172 = load i8, i8* %4, align 1, !tbaa !10
  %173 = sext i8 %172 to i32
  %174 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %171, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i32 noundef %173, i32 noundef -61)
  %175 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %176 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %175)
  br label %177

177:                                              ; preds = %170, %156
  %178 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %179 = call i32 @fflush(%struct.__sFILE* noundef %178)
  %180 = call i32* @__error() #4
  store i32 %163, i32* %180, align 4, !tbaa !13
  %181 = load i8, i8* %57, align 1, !tbaa !10
  %182 = icmp ne i8 %181, -88
  %183 = zext i1 %182 to i32
  %184 = call i32* @__error() #4
  store i32 0, i32* %184, align 4, !tbaa !13
  %185 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %186 = call i32 @fflush(%struct.__sFILE* noundef %185)
  %187 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %188 = select i1 %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %189 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %187, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %188, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 40)
  br i1 %182, label %190, label %197

190:                                              ; preds = %177
  %191 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %192 = load i8, i8* %57, align 1, !tbaa !10
  %193 = sext i8 %192 to i32
  %194 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %191, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1, i32 noundef %193, i32 noundef -88)
  %195 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %196 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %195)
  br label %197

197:                                              ; preds = %190, %177
  %198 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %199 = call i32 @fflush(%struct.__sFILE* noundef %198)
  %200 = call i32* @__error() #4
  store i32 %183, i32* %200, align 4, !tbaa !13
  store i8 0, i8* %4, align 1, !tbaa !10
  %201 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 noundef 1) #4
  %202 = load i8, i8* %4, align 1, !tbaa !10
  %203 = icmp eq i8 %202, -61
  %204 = zext i1 %203 to i32
  %205 = call i32* @__error() #4
  store i32 0, i32* %205, align 4, !tbaa !13
  %206 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %207 = call i32 @fflush(%struct.__sFILE* noundef %206)
  %208 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %209 = select i1 %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %210 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %208, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %209, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 45)
  br i1 %203, label %211, label %218

211:                                              ; preds = %197
  %212 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %213 = load i8, i8* %4, align 1, !tbaa !10
  %214 = sext i8 %213 to i32
  %215 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %212, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i32 noundef %214, i32 noundef -61)
  %216 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %217 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %216)
  br label %218

218:                                              ; preds = %211, %197
  %219 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %220 = call i32 @fflush(%struct.__sFILE* noundef %219)
  %221 = call i32* @__error() #4
  store i32 %204, i32* %221, align 4, !tbaa !13
  %222 = load i8, i8* %4, align 1, !tbaa !10
  %223 = icmp ne i8 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i32* @__error() #4
  store i32 0, i32* %225, align 4, !tbaa !13
  %226 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %227 = call i32 @fflush(%struct.__sFILE* noundef %226)
  %228 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %229 = select i1 %223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %230 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %228, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %229, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 46)
  br i1 %223, label %231, label %238

231:                                              ; preds = %218
  %232 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %233 = load i8, i8* %4, align 1, !tbaa !10
  %234 = sext i8 %233 to i32
  %235 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %232, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 noundef 0, i32 noundef %234)
  %236 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %237 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %236)
  br label %238

238:                                              ; preds = %231, %218
  %239 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %240 = call i32 @fflush(%struct.__sFILE* noundef %239)
  %241 = call i32* @__error() #4
  store i32 %224, i32* %241, align 4, !tbaa !13
  store i8 0, i8* %4, align 1, !tbaa !10
  %242 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 noundef 8) #4
  br label %243

243:                                              ; preds = %238, %266
  %244 = phi i64 [ 0, %238 ], [ %270, %266 ]
  %245 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 %244
  %246 = load i8, i8* %245, align 1, !tbaa !10
  %247 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.3, i64 0, i64 %244
  %248 = load i8, i8* %247, align 1, !tbaa !10
  %249 = icmp ne i8 %246, %248
  %250 = zext i1 %249 to i32
  %251 = call i32* @__error() #4
  store i32 0, i32* %251, align 4, !tbaa !13
  %252 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %253 = call i32 @fflush(%struct.__sFILE* noundef %252)
  %254 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %255 = select i1 %249, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %256 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %254, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %255, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 58)
  br i1 %249, label %257, label %266

257:                                              ; preds = %243
  %258 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %259 = load i8, i8* %245, align 1, !tbaa !10
  %260 = sext i8 %259 to i32
  %261 = sext i8 %248 to i32
  %262 = trunc i64 %244 to i32
  %263 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %258, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef %262, i32 noundef %260, i32 noundef %261)
  %264 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %265 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %264)
  br label %266

266:                                              ; preds = %257, %243
  %267 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %268 = call i32 @fflush(%struct.__sFILE* noundef %267)
  %269 = call i32* @__error() #4
  store i32 %250, i32* %269, align 4, !tbaa !13
  %270 = add nuw nsw i64 %244, 1
  %271 = icmp eq i64 %270, 8
  br i1 %271, label %272, label %243

272:                                              ; preds = %266
  store i8 0, i8* %4, align 1, !tbaa !10
  %273 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 noundef 7) #4
  %274 = load i8, i8* %4, align 1, !tbaa !10
  %275 = icmp ne i8 %274, -16
  %276 = zext i1 %275 to i32
  %277 = call i32* @__error() #4
  store i32 0, i32* %277, align 4, !tbaa !13
  %278 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %279 = call i32 @fflush(%struct.__sFILE* noundef %278)
  %280 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %281 = select i1 %275, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %282 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %280, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %281, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 64)
  br i1 %275, label %283, label %290

283:                                              ; preds = %272
  %284 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %285 = load i8, i8* %4, align 1, !tbaa !10
  %286 = sext i8 %285 to i32
  %287 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %284, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i32 noundef %286, i32 noundef -16)
  %288 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %289 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %288)
  br label %290

290:                                              ; preds = %283, %272
  %291 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %292 = call i32 @fflush(%struct.__sFILE* noundef %291)
  %293 = call i32* @__error() #4
  store i32 %276, i32* %293, align 4, !tbaa !13
  %294 = load i8, i8* %57, align 1, !tbaa !10
  %295 = icmp ne i8 %294, -89
  %296 = zext i1 %295 to i32
  %297 = call i32* @__error() #4
  store i32 0, i32* %297, align 4, !tbaa !13
  %298 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %299 = call i32 @fflush(%struct.__sFILE* noundef %298)
  %300 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %301 = select i1 %295, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %302 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %300, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %301, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 64)
  br i1 %295, label %303, label %310

303:                                              ; preds = %290
  %304 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %305 = load i8, i8* %57, align 1, !tbaa !10
  %306 = sext i8 %305 to i32
  %307 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %304, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1, i32 noundef %306, i32 noundef -89)
  %308 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %309 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %308)
  br label %310

310:                                              ; preds = %303, %290
  %311 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %312 = call i32 @fflush(%struct.__sFILE* noundef %311)
  %313 = call i32* @__error() #4
  store i32 %296, i32* %313, align 4, !tbaa !13
  %314 = load i8, i8* %78, align 1, !tbaa !10
  %315 = icmp ne i8 %314, -128
  %316 = zext i1 %315 to i32
  %317 = call i32* @__error() #4
  store i32 0, i32* %317, align 4, !tbaa !13
  %318 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %319 = call i32 @fflush(%struct.__sFILE* noundef %318)
  %320 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %321 = select i1 %315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %322 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %320, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %321, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 64)
  br i1 %315, label %323, label %330

323:                                              ; preds = %310
  %324 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %325 = load i8, i8* %78, align 1, !tbaa !10
  %326 = sext i8 %325 to i32
  %327 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %324, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 2, i32 noundef %326, i32 noundef -128)
  %328 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %329 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %328)
  br label %330

330:                                              ; preds = %323, %310
  %331 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %332 = call i32 @fflush(%struct.__sFILE* noundef %331)
  %333 = call i32* @__error() #4
  store i32 %316, i32* %333, align 4, !tbaa !13
  %334 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 3
  %335 = load i8, i8* %334, align 1, !tbaa !10
  %336 = icmp ne i8 %335, -128
  %337 = zext i1 %336 to i32
  %338 = call i32* @__error() #4
  store i32 0, i32* %338, align 4, !tbaa !13
  %339 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %340 = call i32 @fflush(%struct.__sFILE* noundef %339)
  %341 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %342 = select i1 %336, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %343 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %341, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %342, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 64)
  br i1 %336, label %344, label %351

344:                                              ; preds = %330
  %345 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %346 = load i8, i8* %334, align 1, !tbaa !10
  %347 = sext i8 %346 to i32
  %348 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %345, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 noundef 3, i32 noundef %347, i32 noundef -128)
  %349 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %350 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %349)
  br label %351

351:                                              ; preds = %344, %330
  %352 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %353 = call i32 @fflush(%struct.__sFILE* noundef %352)
  %354 = call i32* @__error() #4
  store i32 %337, i32* %354, align 4, !tbaa !13
  %355 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 4
  %356 = load i8, i8* %355, align 1, !tbaa !10
  %357 = icmp ne i8 %356, 0
  %358 = zext i1 %357 to i32
  %359 = call i32* @__error() #4
  store i32 0, i32* %359, align 4, !tbaa !13
  %360 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %361 = call i32 @fflush(%struct.__sFILE* noundef %360)
  %362 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %363 = select i1 %357, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %364 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %362, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %363, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 66)
  br i1 %357, label %365, label %372

365:                                              ; preds = %351
  %366 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %367 = load i8, i8* %355, align 1, !tbaa !10
  %368 = sext i8 %367 to i32
  %369 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %366, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 noundef 4, i32 noundef %368)
  %370 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %371 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %370)
  br label %372

372:                                              ; preds = %365, %351
  %373 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %374 = call i32 @fflush(%struct.__sFILE* noundef %373)
  %375 = call i32* @__error() #4
  store i32 %358, i32* %375, align 4, !tbaa !13
  store i8 0, i8* %4, align 1, !tbaa !10
  %376 = call i8* @u8strncpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3) #4
  %377 = load i8, i8* %4, align 1, !tbaa !10
  %378 = icmp ne i8 %377, 0
  %379 = call i32* @__error() #4
  store i32 0, i32* %379, align 4, !tbaa !13
  %380 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %381 = call i32 @fflush(%struct.__sFILE* noundef %380)
  %382 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %383 = select i1 %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %384 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %382, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %383, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef 70)
  br i1 %378, label %385, label %392

385:                                              ; preds = %372
  %386 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %387 = load i8, i8* %4, align 1, !tbaa !10
  %388 = sext i8 %387 to i32
  %389 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %386, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 noundef 4, i32 noundef %388)
  %390 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %391 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %390)
  br label %392

392:                                              ; preds = %385, %372
  %393 = zext i1 %378 to i32
  %394 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %395 = call i32 @fflush(%struct.__sFILE* noundef %394)
  %396 = call i32* @__error() #4
  store i32 %393, i32* %396, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %4) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @u8strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32* @__error() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(%struct.__sFILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(%struct.__sFILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !11, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !11, i64 0}
