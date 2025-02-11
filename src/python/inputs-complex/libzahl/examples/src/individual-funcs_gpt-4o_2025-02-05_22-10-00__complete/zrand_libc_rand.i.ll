; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_libc_rand.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_libc_rand.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrand_libc_rand(i8* noundef %0, i64 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i8 0, i8* %7, align 1
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %10, align 8
  %12 = load i8, i8* %7, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  store i8 1, i8* %7, align 1
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = call i64 @time(i64* noundef null)
  %18 = or i64 %16, %17
  %19 = trunc i64 %18 to i32
  call void @srand(i32 noundef %19)
  br label %20

20:                                               ; preds = %14, %3
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %5, align 8
  %24 = icmp ne i64 %22, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = call i32 @rand()
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = uitofp i32 %27 to double
  %29 = fdiv double %28, 0x41E0000000000000
  store double %29, double* %9, align 8
  %30 = load double, double* %9, align 8
  %31 = fmul double %30, 6.553600e+04
  store double %31, double* %9, align 8
  %32 = load double, double* %9, align 8
  %33 = fptoui double %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = lshr i32 %34, 0
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8 %37, i8* %40, align 1
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %5, align 8
  %43 = icmp ne i64 %41, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %25
  br label %53

45:                                               ; preds = %25
  %46 = load i32, i32* %8, align 4
  %47 = lshr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 %49, i8* %52, align 1
  br label %21, !llvm.loop !10

53:                                               ; preds = %44, %21
  %54 = load i8*, i8** %6, align 8
  ret void
}

declare void @srand(i32 noundef) #1

declare i64 @time(i64* noundef) #1

declare i32 @rand() #1

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
