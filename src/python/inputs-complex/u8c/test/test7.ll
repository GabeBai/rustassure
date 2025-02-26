; ModuleID = 'test7.c'
source_filename = "test7.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stdoutp = external local_unnamed_addr global %struct.__sFILE*, align 8
@__stderrp = external local_unnamed_addr global %struct.__sFILE*, align 8
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

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8], align 1
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %7) #6
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %9 = tail call i32 @fflush(%struct.__sFILE* noundef %8)
  %10 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 11, i64 1, %struct.__sFILE* %10)
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %12, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 13)
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %15 = tail call i32 @fflush(%struct.__sFILE* noundef %14)
  %16 = tail call i32 @u8stricmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = tail call i32* @__error() #6
  store i32 0, i32* %19, align 4, !tbaa !14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %21 = tail call i32 @fflush(%struct.__sFILE* noundef %20)
  %22 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %23 = select i1 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %22, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %23, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 16)
  br i1 %17, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %26, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %29 = tail call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %32 = tail call i32 @fflush(%struct.__sFILE* noundef %31)
  %33 = tail call i32* @__error() #6
  store i32 %18, i32* %33, align 4, !tbaa !14
  %34 = tail call i32 @u8stricmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #6
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = tail call i32* @__error() #6
  store i32 0, i32* %37, align 4, !tbaa !14
  %38 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %39 = tail call i32 @fflush(%struct.__sFILE* noundef %38)
  %40 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %41 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %40, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %41, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 20)
  br i1 %35, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %45 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %44, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %46 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %47 = tail call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %46)
  br label %48

48:                                               ; preds = %43, %30
  %49 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %50 = tail call i32 @fflush(%struct.__sFILE* noundef %49)
  %51 = tail call i32* @__error() #6
  store i32 %36, i32* %51, align 4, !tbaa !14
  %52 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %53 = tail call i32 @fflush(%struct.__sFILE* noundef %52)
  %54 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %55 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %54)
  %56 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %57 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %56, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 22)
  %58 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %59 = tail call i32 @fflush(%struct.__sFILE* noundef %58)
  %60 = tail call i32 @u8stricmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #6
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = tail call i32* @__error() #6
  store i32 0, i32* %63, align 4, !tbaa !14
  %64 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %65 = tail call i32 @fflush(%struct.__sFILE* noundef %64)
  %66 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %67 = select i1 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %68 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %66, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %67, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 25)
  br i1 %61, label %69, label %74

69:                                               ; preds = %48
  %70 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %71 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %70, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %72 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %73 = tail call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %72)
  br label %74

74:                                               ; preds = %69, %48
  %75 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %76 = tail call i32 @fflush(%struct.__sFILE* noundef %75)
  %77 = tail call i32* @__error() #6
  store i32 %62, i32* %77, align 4, !tbaa !14
  %78 = tail call i32 @u8stricmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #6
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = tail call i32* @__error() #6
  store i32 0, i32* %81, align 4, !tbaa !14
  %82 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %83 = tail call i32 @fflush(%struct.__sFILE* noundef %82)
  %84 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %85 = select i1 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %86 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %84, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %85, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 29)
  br i1 %79, label %87, label %92

87:                                               ; preds = %74
  %88 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %89 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %88, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %90 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %91 = tail call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %90)
  br label %92

92:                                               ; preds = %87, %74
  %93 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %94 = tail call i32 @fflush(%struct.__sFILE* noundef %93)
  %95 = tail call i32* @__error() #6
  store i32 %80, i32* %95, align 4, !tbaa !14
  %96 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %96) #6
  %97 = call i32 @u8next_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* noundef nonnull %5) #6
  %98 = load i32, i32* %5, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %96) #6
  %99 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %99) #6
  %100 = call i32 @u8next_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32* noundef nonnull %4) #6
  %101 = load i32, i32* %4, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %99) #6
  %102 = call i32 @u8stricmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)) #6
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32* @__error() #6
  store i32 0, i32* %105, align 4, !tbaa !14
  %106 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %107 = call i32 @fflush(%struct.__sFILE* noundef %106)
  %108 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %109 = select i1 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %110 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %108, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %109, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 35)
  br i1 %103, label %111, label %118

111:                                              ; preds = %92
  %112 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %113 = call i32 @u8fold(i32 noundef %98) #6
  %114 = call i32 @u8fold(i32 noundef %101) #6
  %115 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %112, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 noundef %98, i32 noundef %113, i32 noundef %101, i32 noundef %114)
  %116 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %117 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %116)
  br label %118

118:                                              ; preds = %111, %92
  %119 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %120 = call i32 @fflush(%struct.__sFILE* noundef %119)
  %121 = call i32* @__error() #6
  store i32 %104, i32* %121, align 4, !tbaa !14
  %122 = call i32 @u8stricmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #6
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32* @__error() #6
  store i32 0, i32* %125, align 4, !tbaa !14
  %126 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %127 = call i32 @fflush(%struct.__sFILE* noundef %126)
  %128 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %129 = select i1 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %130 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %128, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %129, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 39)
  br i1 %123, label %131, label %136

131:                                              ; preds = %118
  %132 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %133 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %132, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %134 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %135 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %134)
  br label %136

136:                                              ; preds = %131, %118
  %137 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %138 = call i32 @fflush(%struct.__sFILE* noundef %137)
  %139 = call i32* @__error() #6
  store i32 %124, i32* %139, align 4, !tbaa !14
  %140 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %141 = call i32 @fflush(%struct.__sFILE* noundef %140)
  %142 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %143 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 11, i64 1, %struct.__sFILE* %142)
  %144 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %145 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %144, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 41)
  %146 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %147 = call i32 @fflush(%struct.__sFILE* noundef %146)
  %148 = call i32 @u8stricmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #6
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32* @__error() #6
  store i32 0, i32* %151, align 4, !tbaa !14
  %152 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %153 = call i32 @fflush(%struct.__sFILE* noundef %152)
  %154 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %155 = select i1 %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %156 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %154, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %155, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 44)
  br i1 %149, label %157, label %162

157:                                              ; preds = %136
  %158 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %159 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %158, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %160 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %161 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %160)
  br label %162

162:                                              ; preds = %157, %136
  %163 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %164 = call i32 @fflush(%struct.__sFILE* noundef %163)
  %165 = call i32* @__error() #6
  store i32 %150, i32* %165, align 4, !tbaa !14
  %166 = call i32 @u8stricmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #6
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32* @__error() #6
  store i32 0, i32* %169, align 4, !tbaa !14
  %170 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %171 = call i32 @fflush(%struct.__sFILE* noundef %170)
  %172 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %173 = select i1 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %174 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %172, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %173, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 48)
  br i1 %167, label %175, label %180

175:                                              ; preds = %162
  %176 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %177 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %176, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %178 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %179 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %178)
  br label %180

180:                                              ; preds = %175, %162
  %181 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %182 = call i32 @fflush(%struct.__sFILE* noundef %181)
  %183 = call i32* @__error() #6
  store i32 %168, i32* %183, align 4, !tbaa !14
  %184 = call i32 @u8stricmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0)) #6
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32* @__error() #6
  store i32 0, i32* %187, align 4, !tbaa !14
  %188 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %189 = call i32 @fflush(%struct.__sFILE* noundef %188)
  %190 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %191 = select i1 %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %192 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %190, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %191, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 52)
  br i1 %185, label %193, label %198

193:                                              ; preds = %180
  %194 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %195 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %194, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %196 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %197 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %196)
  br label %198

198:                                              ; preds = %193, %180
  %199 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %200 = call i32 @fflush(%struct.__sFILE* noundef %199)
  %201 = call i32* @__error() #6
  store i32 %186, i32* %201, align 4, !tbaa !14
  %202 = call i32 @u8encode_(i32 noundef 8241, i8* noundef nonnull %7) #6
  %203 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %203) #6
  %204 = call i32 @u8next_(i8* noundef nonnull %7, i32* noundef nonnull %3) #6
  %205 = load i32, i32* %3, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %203) #6
  %206 = icmp ne i32 %205, 8241
  %207 = zext i1 %206 to i32
  %208 = call i32* @__error() #6
  store i32 0, i32* %208, align 4, !tbaa !14
  %209 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %210 = call i32 @fflush(%struct.__sFILE* noundef %209)
  %211 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %212 = select i1 %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %213 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %211, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %212, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 56)
  br i1 %206, label %214, label %219

214:                                              ; preds = %198
  %215 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %216 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %215)
  %217 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %218 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %217)
  br label %219

219:                                              ; preds = %214, %198
  %220 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %221 = call i32 @fflush(%struct.__sFILE* noundef %220)
  %222 = call i32* @__error() #6
  store i32 %207, i32* %222, align 4, !tbaa !14
  %223 = call i32 @memcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull dereferenceable(4) %7, i64 4)
  %224 = icmp ne i32 %223, 0
  %225 = call i32* @__error() #6
  store i32 0, i32* %225, align 4, !tbaa !14
  %226 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %227 = call i32 @fflush(%struct.__sFILE* noundef %226)
  %228 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %229 = select i1 %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %230 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %228, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %229, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 58)
  br i1 %224, label %231, label %236

231:                                              ; preds = %219
  %232 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %233 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %232, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i32 noundef -30, i32 noundef -128)
  %234 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %235 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %234)
  br label %236

236:                                              ; preds = %231, %219
  %237 = zext i1 %224 to i32
  %238 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %239 = call i32 @fflush(%struct.__sFILE* noundef %238)
  %240 = call i32* @__error() #6
  store i32 %237, i32* %240, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %7) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(%struct.__sFILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(%struct.__sFILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

declare i32 @u8stricmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare i32* @__error() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @u8fold(i32 noundef) local_unnamed_addr #3

declare i32 @u8encode_(i32 noundef, i8* noundef) local_unnamed_addr #3

declare i32 @u8next_(i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nounwind }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !12, i64 0}
