; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zbset_ll_clear.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zbset_ll_clear.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zbset_ll_clear(%struct.zahl* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = lshr i64 %7, 6
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.zahl*, %struct.zahl** %3, align 8
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %70

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, 63
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = shl i64 %24, %23
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = xor i64 %26, -1
  %28 = load %struct.zahl*, %struct.zahl** %3, align 8
  %29 = getelementptr inbounds %struct.zahl, %struct.zahl* %28, i32 0, i32 4
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %33, %27
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %56, %35
  %37 = load %struct.zahl*, %struct.zahl** %3, align 8
  %38 = getelementptr inbounds %struct.zahl, %struct.zahl* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.zahl*, %struct.zahl** %3, align 8
  %43 = getelementptr inbounds %struct.zahl, %struct.zahl* %42, i32 0, i32 4
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.zahl*, %struct.zahl** %3, align 8
  %46 = getelementptr inbounds %struct.zahl, %struct.zahl* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %47, 1
  %49 = getelementptr inbounds i64, i64* %44, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %41, %36
  %54 = phi i1 [ false, %36 ], [ %52, %41 ]
  br i1 %54, label %55, label %61

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.zahl*, %struct.zahl** %3, align 8
  %58 = getelementptr inbounds %struct.zahl, %struct.zahl* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %58, align 8
  br label %36, !llvm.loop !10

61:                                               ; preds = %53
  %62 = load %struct.zahl*, %struct.zahl** %3, align 8
  %63 = getelementptr inbounds %struct.zahl, %struct.zahl* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load %struct.zahl*, %struct.zahl** %3, align 8
  %68 = getelementptr inbounds %struct.zahl, %struct.zahl* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %19, %69
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
