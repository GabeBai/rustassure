; ModuleID = 'pnmutil.c'
source_filename = "pnmutil.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.pnm_struct = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pnm_is_valid(%struct.pnm_struct* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnm_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pnm_struct* %0, %struct.pnm_struct** %3, align 8
  %9 = load %struct.pnm_struct*, %struct.pnm_struct** %3, align 8
  %10 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.pnm_struct*, %struct.pnm_struct** %3, align 8
  %13 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.pnm_struct*, %struct.pnm_struct** %3, align 8
  %16 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.pnm_struct*, %struct.pnm_struct** %3, align 8
  %19 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.pnm_struct*, %struct.pnm_struct** %3, align 8
  %22 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29, %26, %1
  store i32 0, i32* %2, align 4
  br label %60

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %59 [
    i32 1, label %38
    i32 4, label %38
    i32 2, label %48
    i32 5, label %48
    i32 3, label %53
    i32 6, label %53
    i32 7, label %58
  ]

38:                                               ; preds = %36, %36
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 1
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ false, %38 ], [ %43, %41 ]
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  store i32 %47, i32* %2, align 4
  br label %60

48:                                               ; preds = %36, %36
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %2, align 4
  br label %60

53:                                               ; preds = %36, %36
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 3
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %60

59:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %58, %53, %48, %44, %35
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @pnm_raw_sample_size(%struct.pnm_struct* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pnm_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.pnm_struct* %0, %struct.pnm_struct** %3, align 8
  %5 = load %struct.pnm_struct*, %struct.pnm_struct** %3, align 8
  %6 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32* @__error()
  store i32 22, i32* %11, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ule i32 %13, 255
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i64 1, i64* %2, align 8
  br label %30

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = icmp ule i32 %17, 65535
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i64 2, i64* %2, align 8
  br label %30

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = icmp ule i32 %21, 16777215
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i64 3, i64* %2, align 8
  br label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = icmp ule i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i64 4, i64* %2, align 8
  br label %30

28:                                               ; preds = %24
  %29 = call i32* @__error()
  store i32 22, i32* %29, align 4
  store i64 0, i64* %2, align 8
  br label %30

30:                                               ; preds = %28, %27, %23, %19, %15
  %31 = load i64, i64* %2, align 8
  ret i64 %31
}

declare i32* @__error() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @pnm_mem_size(%struct.pnm_struct* noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.pnm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pnm_struct* %0, %struct.pnm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pnm_struct*, %struct.pnm_struct** %5, align 8
  %11 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.pnm_struct*, %struct.pnm_struct** %5, align 8
  %14 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18, %3
  %25 = call i32* @__error()
  store i32 22, i32* %25, align 4
  store i64 0, i64* %4, align 8
  br label %51

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %6, align 8
  %30 = udiv i64 -1, %29
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = udiv i64 %30, %32
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = udiv i64 %33, %35
  %37 = icmp ugt i64 %28, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = call i32* @__error()
  store i32 34, i32* %39, align 4
  store i64 0, i64* %4, align 8
  br label %51

40:                                               ; preds = %26
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = mul i64 %41, %43
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = mul i64 %44, %46
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = mul i64 %47, %49
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %40, %38, %24
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

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
