; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_libc_rand48.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_libc_rand48.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrand_libc_rand48(i8* noundef %0, i64 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i8 0, i8* %7, align 1
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %10, align 8
  %12 = load i8, i8* %7, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  store i8 1, i8* %7, align 1
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = call i64 @time(i64* noundef null)
  %18 = or i64 %16, %17
  call void @srand48(i64 noundef %18)
  br label %19

19:                                               ; preds = %14, %3
  br label %20

20:                                               ; preds = %24, %19
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %5, align 8
  %23 = icmp ne i64 %21, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = call i64 @lrand48()
  %26 = and i64 %25, 15
  store i64 %26, i64* %8, align 8
  %27 = call i64 @lrand48()
  %28 = and i64 %27, 15
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = shl i64 %29, 4
  %31 = load i64, i64* %9, align 8
  %32 = or i64 %30, %31
  %33 = trunc i64 %32 to i8
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 %33, i8* %36, align 1
  br label %20, !llvm.loop !10

37:                                               ; preds = %20
  %38 = load i8*, i8** %6, align 8
  ret void
}

declare void @srand48(i64 noundef) #1

declare i64 @time(i64* noundef) #1

declare i64 @lrand48() #1

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
