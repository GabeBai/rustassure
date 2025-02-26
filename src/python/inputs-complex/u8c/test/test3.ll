; ModuleID = 'test3.c'
source_filename = "test3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@buf = global [20000 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"text1.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@__stdoutp = external local_unnamed_addr global %struct.__sFILE*, align 8
@__stderrp = external local_unnamed_addr global %struct.__sFILE*, align 8
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
@s1 = local_unnamed_addr global i8* null, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5
  store i8 0, i8* getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), align 1, !tbaa !10
  %5 = tail call %struct.__sFILE* @"\01_fopen"(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #5
  %6 = icmp eq %struct.__sFILE* %5, null
  %7 = zext i1 %6 to i32
  %8 = tail call i32* @__error() #5
  store i32 0, i32* %8, align 4, !tbaa !13
  %9 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %10 = tail call i32 @fflush(%struct.__sFILE* noundef %9)
  %11 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %12 = select i1 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %11, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 23)
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  br i1 %6, label %15, label %22

15:                                               ; preds = %2
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 31, i64 1, %struct.__sFILE* %14)
  %17 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %18 = tail call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %17)
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %20 = tail call i32 @fflush(%struct.__sFILE* noundef %19)
  %21 = tail call i32* @__error() #5
  store i32 %7, i32* %21, align 4, !tbaa !13
  br label %36

22:                                               ; preds = %2
  %23 = tail call i32 @fflush(%struct.__sFILE* noundef %14)
  %24 = tail call i32* @__error() #5
  store i32 %7, i32* %24, align 4, !tbaa !13
  %25 = tail call i64 @fread(i8* noundef getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), i64 noundef 1, i64 noundef 20000, %struct.__sFILE* noundef nonnull %5)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4, !tbaa !13
  %27 = tail call i32* @__error() #5
  store i32 0, i32* %27, align 4, !tbaa !13
  %28 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %29 = tail call i32 @fflush(%struct.__sFILE* noundef %28)
  %30 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %30, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 26)
  %32 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %33 = tail call i32 @fflush(%struct.__sFILE* noundef %32)
  %34 = tail call i32* @__error() #5
  store i32 0, i32* %34, align 4, !tbaa !13
  %35 = tail call i32 @fclose(%struct.__sFILE* noundef nonnull %5)
  br label %36

36:                                               ; preds = %15, %22
  %37 = load i8, i8* getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), align 1, !tbaa !10
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %111, label %39

39:                                               ; preds = %36
  %40 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %41 = tail call i32 @fflush(%struct.__sFILE* noundef %40)
  %42 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %43 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %42, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 noundef 100000)
  %44 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %45 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %44, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 31)
  %46 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %47 = tail call i32 @fflush(%struct.__sFILE* noundef %46)
  %48 = tail call i64 @"\01_clock"() #5
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %50, label %61

50:                                               ; preds = %65, %39
  %51 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %52 = call i32 @fflush(%struct.__sFILE* noundef %51)
  %53 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %54 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %53, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 noundef 100000)
  %55 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %56 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %55, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 42)
  %57 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %58 = call i32 @fflush(%struct.__sFILE* noundef %57)
  %59 = call i64 @"\01_clock"() #5
  %60 = icmp eq i64 %59, -1
  br i1 %60, label %111, label %86

61:                                               ; preds = %39, %83
  %62 = phi i32 [ %84, %83 ], [ 0, %39 ]
  %63 = load i8, i8* getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), align 1, !tbaa !10
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %83, label %76

65:                                               ; preds = %83
  %66 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %67 = call i32 @fflush(%struct.__sFILE* noundef %66)
  %68 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %69 = call i64 @"\01_clock"() #5
  %70 = sub i64 %69, %48
  %71 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %68, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 noundef %70, i64 noundef 1000000)
  %72 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %73 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %72, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 32)
  %74 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %75 = call i32 @fflush(%struct.__sFILE* noundef %74)
  br label %50

76:                                               ; preds = %61, %76
  %77 = phi i8* [ %80, %76 ], [ getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), %61 ]
  %78 = call i32 @u8next_(i8* noundef nonnull %77, i32* noundef nonnull %3) #5
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1, !tbaa !10
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %76

83:                                               ; preds = %76, %61
  %84 = add nuw nsw i32 %62, 1
  %85 = icmp eq i32 %84, 100000
  br i1 %85, label %65, label %61

86:                                               ; preds = %50, %108
  %87 = phi i32 [ %109, %108 ], [ 0, %50 ]
  %88 = load i8, i8* getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), align 1, !tbaa !10
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %108, label %101

90:                                               ; preds = %108
  %91 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !15
  %92 = call i32 @fflush(%struct.__sFILE* noundef %91)
  %93 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %94 = call i64 @"\01_clock"() #5
  %95 = sub i64 %94, %59
  %96 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %93, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 noundef %95, i64 noundef 1000000)
  %97 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %98 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %97, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 43)
  %99 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %100 = call i32 @fflush(%struct.__sFILE* noundef %99)
  br label %111

101:                                              ; preds = %86, %101
  %102 = phi i8* [ %105, %101 ], [ getelementptr inbounds ([20000 x i8], [20000 x i8]* @buf, i64 0, i64 0), %86 ]
  %103 = call i32 @u8next_FAST(i8* noundef nonnull %102, i32* noundef nonnull %3) #5
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1, !tbaa !10
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %101

108:                                              ; preds = %101, %86
  %109 = add nuw nsw i32 %87, 1
  %110 = icmp eq i32 %109, 100000
  br i1 %110, label %90, label %86

111:                                              ; preds = %50, %90, %36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.__sFILE* @"\01_fopen"(i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32* @__error() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(%struct.__sFILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(%struct.__sFILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(%struct.__sFILE* nocapture noundef) local_unnamed_addr #3

declare i64 @"\01_clock"() local_unnamed_addr #2

declare i32 @u8next_(i8* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @u8next_FAST(i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
