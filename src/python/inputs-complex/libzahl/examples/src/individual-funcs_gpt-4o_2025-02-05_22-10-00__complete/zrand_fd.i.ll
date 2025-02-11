; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_fd.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_fd.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrand_fd(i8* noundef %0, i64 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %36, %3
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @"\01_read"(i32 noundef %19, i8* noundef %22, i64 noundef %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  %33 = call i32* @__error()
  %34 = load i32, i32* %33, align 4
  %35 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef %34)
  br label %36

36:                                               ; preds = %32, %18
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %5, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %5, align 8
  br label %15, !llvm.loop !10

43:                                               ; preds = %15
  ret void
}

declare i64 @"\01_read"(i32 noundef, i8* noundef, i64 noundef) #1

declare i32 @libzahl_failure(...) #1

declare i32* @__error() #1

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
