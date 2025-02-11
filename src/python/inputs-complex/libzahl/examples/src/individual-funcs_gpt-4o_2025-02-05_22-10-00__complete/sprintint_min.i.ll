; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/sprintint_min.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/sprintint_min.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @sprintint_min(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 bitcast (i32 (...)* @sprintint_fix to i32 (i8*, i64)*)(i8* noundef %7, i64 noundef %8)
  br label %10

10:                                               ; preds = %18, %2
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 48
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %5, align 8
  br label %10, !llvm.loop !10

21:                                               ; preds = %10
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i64, i64* %5, align 8
  %27 = sub nsw i64 19, %26
  store i64 %27, i64* %6, align 8
  %28 = call i32 bitcast (i32 (...)* @cmemmove to i32 (i8*, i8*, i64)*)(i8* noundef %22, i8* noundef %25, i64 noundef %27)
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i64, i64* %6, align 8
  ret i64 %32
}

declare i32 @sprintint_fix(...) #1

declare i32 @cmemmove(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
