; ModuleID = 'src/zerror.c'
source_filename = "src/zerror.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@libzahl_error = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [36 x i8] c"indeterminate form: 0:th power of 0\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"indeterminate form: 0 divided by 0\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"undefined result: division by 0\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"argument must be non-negative\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @zerror(i8** noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @libzahl_error, align 4, !tbaa !10
  %3 = icmp sgt i32 %2, -1
  %4 = icmp eq i8** %0, null
  br i1 %3, label %5, label %12

5:                                                ; preds = %1
  br i1 %4, label %9, label %6

6:                                                ; preds = %5
  %7 = tail call i8* @"\01_strerror"(i32 noundef %2) #3
  store i8* %7, i8** %0, align 8, !tbaa !14
  %8 = load i32, i32* @libzahl_error, align 4, !tbaa !10
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i32 [ %8, %6 ], [ %2, %5 ]
  %11 = tail call i32* @__error() #3
  store i32 %10, i32* %11, align 4, !tbaa !10
  br label %20

12:                                               ; preds = %1
  %13 = sub nsw i32 0, %2
  br i1 %4, label %20, label %14

14:                                               ; preds = %12
  switch i32 %13, label %19 [
    i32 1, label %15
    i32 2, label %16
    i32 3, label %17
    i32 4, label %18
  ]

15:                                               ; preds = %14
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %0, align 8, !tbaa !14
  br label %20

16:                                               ; preds = %14
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %0, align 8, !tbaa !14
  br label %20

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8** %0, align 8, !tbaa !14
  br label %20

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %0, align 8, !tbaa !14
  br label %20

19:                                               ; preds = %14
  tail call void @abort() #4
  unreachable

20:                                               ; preds = %12, %18, %17, %16, %15, %9
  %21 = phi i32 [ 0, %9 ], [ 1, %15 ], [ 2, %16 ], [ 3, %17 ], [ 4, %18 ], [ %13, %12 ]
  ret i32 %21
}

declare i8* @"\01_strerror"(i32 noundef) local_unnamed_addr #1

declare i32* @__error() local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @abort() local_unnamed_addr #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind }
attributes #4 = { cold noreturn nounwind }

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
