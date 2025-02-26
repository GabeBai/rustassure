; ModuleID = 'test4.c'
source_filename = "test4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"Aa\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\C3\A8a\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\E4\BC\9A\E5\93\A1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\F0\A7\80\80\F0\A7\80\8D\00", align 1
@__const.main.s = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 8
@__stdoutp = external local_unnamed_addr global %struct.__sFILE*, align 8
@__stderrp = external local_unnamed_addr global %struct.__sFILE*, align 8
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

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 1
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 1
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 2
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 3
  br label %11

10:                                               ; preds = %122
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6
  ret i32 0

11:                                               ; preds = %2, %122
  %12 = phi i64 [ 0, %2 ], [ %16, %122 ]
  %13 = getelementptr inbounds [4 x i8*], [4 x i8*]* @__const.main.s, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8, !tbaa !10
  %15 = call i32 @u8next_(i8* noundef %14, i32* noundef nonnull %3) #6
  %16 = add nuw nsw i64 %12, 1
  %17 = zext i32 %15 to i64
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32* @__error() #6
  store i32 0, i32* %20, align 4, !tbaa !14
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %22 = call i32 @fflush(%struct.__sFILE* noundef %21)
  %23 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %24 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %25 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %23, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 19)
  br i1 %18, label %26, label %32

26:                                               ; preds = %11
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %28 = trunc i64 %16 to i32
  %29 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %27, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 noundef %28, i32 noundef %15)
  %30 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %31 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %30)
  br label %32

32:                                               ; preds = %26, %11
  %33 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %34 = call i32 @fflush(%struct.__sFILE* noundef %33)
  %35 = call i32* @__error() #6
  store i32 %19, i32* %35, align 4, !tbaa !14
  %36 = load i32, i32* %3, align 4, !tbaa !14
  %37 = call i32 @u8encode_(i32 noundef %36, i8* noundef nonnull %6) #6
  %38 = icmp ne i32 %15, %37
  %39 = zext i1 %38 to i32
  %40 = call i32* @__error() #6
  store i32 0, i32* %40, align 4, !tbaa !14
  %41 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %42 = call i32 @fflush(%struct.__sFILE* noundef %41)
  %43 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %44 = select i1 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %45 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %43, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %44, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 21)
  br i1 %38, label %46, label %51

46:                                               ; preds = %32
  %47 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %48 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %47, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 noundef %15, i32 noundef %37)
  %49 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %50 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %49)
  br label %51

51:                                               ; preds = %46, %32
  %52 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %53 = call i32 @fflush(%struct.__sFILE* noundef %52)
  %54 = call i32* @__error() #6
  store i32 %39, i32* %54, align 4, !tbaa !14
  %55 = sext i32 %15 to i64
  %56 = call i32 @strncmp(i8* noundef %14, i8* noundef nonnull %6, i64 noundef %55)
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32* @__error() #6
  store i32 0, i32* %59, align 4, !tbaa !14
  %60 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %61 = call i32 @fflush(%struct.__sFILE* noundef %60)
  %62 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %63 = select i1 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %64 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %62, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %63, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 22)
  br i1 %57, label %65, label %70

65:                                               ; preds = %51
  %66 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %67 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i64 20, i64 1, %struct.__sFILE* %66)
  %68 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %69 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %68)
  br label %70

70:                                               ; preds = %65, %51
  %71 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %72 = call i32 @fflush(%struct.__sFILE* noundef %71)
  %73 = call i32* @__error() #6
  store i32 %58, i32* %73, align 4, !tbaa !14
  %74 = call i32* @__error() #6
  %75 = load i32, i32* %74, align 4, !tbaa !14
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %105, label %77

77:                                               ; preds = %70
  %78 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %79 = call i32 @fflush(%struct.__sFILE* noundef %78)
  %80 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %81 = load i8, i8* %14, align 1, !tbaa !16
  %82 = sext i8 %81 to i32
  %83 = getelementptr inbounds i8, i8* %14, i64 1
  %84 = load i8, i8* %83, align 1, !tbaa !16
  %85 = sext i8 %84 to i32
  %86 = getelementptr inbounds i8, i8* %14, i64 2
  %87 = load i8, i8* %86, align 1, !tbaa !16
  %88 = sext i8 %87 to i32
  %89 = getelementptr inbounds i8, i8* %14, i64 3
  %90 = load i8, i8* %89, align 1, !tbaa !16
  %91 = sext i8 %90 to i32
  %92 = load i8, i8* %6, align 1, !tbaa !16
  %93 = sext i8 %92 to i32
  %94 = load i8, i8* %7, align 1, !tbaa !16
  %95 = sext i8 %94 to i32
  %96 = load i8, i8* %8, align 1, !tbaa !16
  %97 = sext i8 %96 to i32
  %98 = load i8, i8* %9, align 1, !tbaa !16
  %99 = sext i8 %98 to i32
  %100 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %80, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), i32 noundef %37, i32 noundef %82, i32 noundef %85, i32 noundef %88, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99)
  %101 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %102 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %101, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 25)
  %103 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %104 = call i32 @fflush(%struct.__sFILE* noundef %103)
  br label %105

105:                                              ; preds = %77, %70
  %106 = call i32* @__error() #6
  store i32 0, i32* %106, align 4, !tbaa !14
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 %55
  %108 = load i8, i8* %107, align 1, !tbaa !16
  %109 = icmp ne i8 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32* @__error() #6
  store i32 0, i32* %111, align 4, !tbaa !14
  %112 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %113 = call i32 @fflush(%struct.__sFILE* noundef %112)
  %114 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %115 = select i1 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %116 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %114, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %115, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 28)
  br i1 %109, label %117, label %122

117:                                              ; preds = %105
  %118 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %119 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i64 32, i64 1, %struct.__sFILE* %118)
  %120 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %121 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %120)
  br label %122

122:                                              ; preds = %117, %105
  %123 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %124 = call i32 @fflush(%struct.__sFILE* noundef %123)
  %125 = call i32* @__error() #6
  store i32 %110, i32* %125, align 4, !tbaa !14
  %126 = icmp eq i64 %16, 4
  br i1 %126, label %10, label %11
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @u8next_(i8* noundef, i32* noundef) local_unnamed_addr #2

declare i32* @__error() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(%struct.__sFILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(%struct.__sFILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @u8encode_(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { nofree nounwind }
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
!16 = !{!12, !12, i64 0}
