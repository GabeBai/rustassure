; ModuleID = 'test1.c'
source_filename = "test1.c"
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
@s1 = local_unnamed_addr global i8* null, align 8
@__stdoutp = external local_unnamed_addr global %struct.__sFILE*, align 8
@__stderrp = external local_unnamed_addr global %struct.__sFILE*, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: (%s) \09%s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"l == k+1\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"test1.c\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"    : Expected length: %d, got %d\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"slen == 2\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"    : String len (in codepoints) should be 2, got %d\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"l == l2\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"    : Calling u8next with ch == NULL failed. Expecting %d got %d\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  br label %6

5:                                                ; preds = %65
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  ret i32 0

6:                                                ; preds = %2, %65
  %7 = phi i64 [ 0, %2 ], [ %11, %65 ]
  %8 = getelementptr inbounds [4 x i8*], [4 x i8*]* @s, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8, !tbaa !10
  store i8* %9, i8** @s1, align 8, !tbaa !10
  %10 = call i32 @u8next_(i8* noundef %9, i32* noundef nonnull %3) #4
  %11 = add nuw nsw i64 %7, 1
  %12 = zext i32 %10 to i64
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32* @__error() #4
  store i32 0, i32* %15, align 4, !tbaa !14
  %16 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %17 = call i32 @fflush(%struct.__sFILE* noundef %16)
  %18 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %19 = select i1 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %20 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %18, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 16)
  br i1 %13, label %21, label %27

21:                                               ; preds = %6
  %22 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %23 = trunc i64 %11 to i32
  %24 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %22, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 noundef %23, i32 noundef %10)
  %25 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %26 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %25)
  br label %27

27:                                               ; preds = %21, %6
  %28 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %29 = call i32 @fflush(%struct.__sFILE* noundef %28)
  %30 = call i32* @__error() #4
  store i32 %14, i32* %30, align 4, !tbaa !14
  %31 = load i8*, i8** @s1, align 8, !tbaa !10
  %32 = call i32 @u8strlen(i8* noundef %31) #4
  %33 = icmp ne i32 %32, 2
  %34 = zext i1 %33 to i32
  %35 = call i32* @__error() #4
  store i32 0, i32* %35, align 4, !tbaa !14
  %36 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %37 = call i32 @fflush(%struct.__sFILE* noundef %36)
  %38 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %39 = select i1 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %40 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %38, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %39, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 18)
  br i1 %33, label %41, label %46

41:                                               ; preds = %27
  %42 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %43 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %42, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i32 noundef %32)
  %44 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %45 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %44)
  br label %46

46:                                               ; preds = %41, %27
  %47 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %48 = call i32 @fflush(%struct.__sFILE* noundef %47)
  %49 = call i32* @__error() #4
  store i32 %34, i32* %49, align 4, !tbaa !14
  %50 = load i8*, i8** @s1, align 8, !tbaa !10
  %51 = call i32 @u8next_(i8* noundef %50, i32* noundef null) #4
  %52 = icmp ne i32 %10, %51
  %53 = zext i1 %52 to i32
  %54 = call i32* @__error() #4
  store i32 0, i32* %54, align 4, !tbaa !14
  %55 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !10
  %56 = call i32 @fflush(%struct.__sFILE* noundef %55)
  %57 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %58 = select i1 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %59 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %57, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %58, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 20)
  br i1 %52, label %60, label %65

60:                                               ; preds = %46
  %61 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %62 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %61, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i32 noundef %10, i32 noundef %51)
  %63 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %64 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %63)
  br label %65

65:                                               ; preds = %60, %46
  %66 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !10
  %67 = call i32 @fflush(%struct.__sFILE* noundef %66)
  %68 = call i32* @__error() #4
  store i32 %53, i32* %68, align 4, !tbaa !14
  %69 = icmp eq i64 %11, 4
  br i1 %69, label %5, label %6
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

declare i32 @u8strlen(i8* noundef) local_unnamed_addr #2

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
!11 = !{!"any pointer", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !12, i64 0}
