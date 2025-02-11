; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zcmpu.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zcmpu.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zcmpu(%struct.zahl* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.zahl*, %struct.zahl** %4, align 8
  %16 = call i32 @zsignum(%struct.zahl* noundef %15)
  store i32 %16, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.zahl*, %struct.zahl** %4, align 8
  %19 = call i32 @zsignum(%struct.zahl* noundef %18)
  %20 = icmp sle i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %71

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %40, %27
  %29 = load %struct.zahl*, %struct.zahl** %4, align 8
  %30 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 4
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.zahl*, %struct.zahl** %4, align 8
  %33 = getelementptr inbounds %struct.zahl, %struct.zahl* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i64, i64* %31, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.zahl*, %struct.zahl** %4, align 8
  %42 = getelementptr inbounds %struct.zahl, %struct.zahl* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %42, align 8
  br label %28, !llvm.loop !10

45:                                               ; preds = %28
  %46 = load %struct.zahl*, %struct.zahl** %4, align 8
  %47 = getelementptr inbounds %struct.zahl, %struct.zahl* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %71

51:                                               ; preds = %45
  %52 = load %struct.zahl*, %struct.zahl** %4, align 8
  %53 = getelementptr inbounds %struct.zahl, %struct.zahl* %52, i32 0, i32 4
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %69

60:                                               ; preds = %51
  %61 = load %struct.zahl*, %struct.zahl** %4, align 8
  %62 = getelementptr inbounds %struct.zahl, %struct.zahl* %61, i32 0, i32 4
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ugt i64 %65, %66
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %60, %59
  %70 = phi i32 [ -1, %59 ], [ %68, %60 ]
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %50, %26, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare i32 @zsignum(%struct.zahl* noundef) #1

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
