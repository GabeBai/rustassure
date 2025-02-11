; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_libc_random.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_libc_random.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrand_libc_random(i8* noundef %0, i64 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i8 0, i8* %7, align 1
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i8, i8* %7, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  store i8 1, i8* %7, align 1
  %14 = load i8*, i8** %4, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = call i64 @time(i64* noundef null)
  %17 = or i64 %15, %16
  %18 = trunc i64 %17 to i32
  call void @srandom(i32 noundef %18)
  br label %19

19:                                               ; preds = %13, %3
  br label %20

20:                                               ; preds = %49, %19
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %5, align 8
  %23 = icmp ne i64 %21, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = call i64 @random()
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = ashr i64 %26, 0
  %28 = and i64 %27, 255
  %29 = trunc i64 %28 to i8
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 %29, i8* %32, align 1
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %5, align 8
  %35 = icmp ne i64 %33, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %57

37:                                               ; preds = %24
  %38 = load i64, i64* %8, align 8
  %39 = ashr i64 %38, 8
  %40 = and i64 %39, 255
  %41 = trunc i64 %40 to i8
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %41, i8* %44, align 1
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %5, align 8
  %47 = icmp ne i64 %45, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  br label %57

49:                                               ; preds = %37
  %50 = load i64, i64* %8, align 8
  %51 = ashr i64 %50, 16
  %52 = and i64 %51, 255
  %53 = trunc i64 %52 to i8
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 %53, i8* %56, align 1
  br label %20, !llvm.loop !10

57:                                               ; preds = %48, %36, %20
  %58 = load i8*, i8** %6, align 8
  ret void
}

declare void @srandom(i32 noundef) #1

declare i64 @time(i64* noundef) #1

declare i64 @random() #1

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
