; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zbtest.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zbtest.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zbtest(%struct.zahl* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.zahl*, %struct.zahl** %4, align 8
  %8 = call i32 @zzero(%struct.zahl* noundef %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = lshr i64 %17, 6
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.zahl*, %struct.zahl** %4, align 8
  %21 = getelementptr inbounds %struct.zahl, %struct.zahl* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %45

30:                                               ; preds = %16
  %31 = load i64, i64* %5, align 8
  %32 = and i64 %31, 63
  %33 = load i64, i64* %5, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load %struct.zahl*, %struct.zahl** %4, align 8
  %36 = getelementptr inbounds %struct.zahl, %struct.zahl* %35, i32 0, i32 4
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = lshr i64 %40, %41
  %43 = and i64 %42, 1
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %30, %29, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare i32 @zzero(%struct.zahl* noundef) #1

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
