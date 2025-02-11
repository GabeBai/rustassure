; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsplit_unsigned_fast_large_taint.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsplit_unsigned_fast_large_taint.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsplit_unsigned_fast_large_taint(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca %struct.zahl*, align 8
  %8 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %5, align 8
  store %struct.zahl* %1, %struct.zahl** %6, align 8
  store %struct.zahl* %2, %struct.zahl** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = lshr i64 %9, 6
  store i64 %10, i64* %8, align 8
  %11 = load %struct.zahl*, %struct.zahl** %5, align 8
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.zahl*, %struct.zahl** %7, align 8
  %14 = getelementptr inbounds %struct.zahl, %struct.zahl* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %8, align 8
  %17 = sub i64 %15, %16
  %18 = load %struct.zahl*, %struct.zahl** %5, align 8
  %19 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.zahl*, %struct.zahl** %7, align 8
  %21 = getelementptr inbounds %struct.zahl, %struct.zahl* %20, i32 0, i32 4
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load %struct.zahl*, %struct.zahl** %5, align 8
  %26 = getelementptr inbounds %struct.zahl, %struct.zahl* %25, i32 0, i32 4
  store i64* %24, i64** %26, align 8
  %27 = load %struct.zahl*, %struct.zahl** %6, align 8
  %28 = getelementptr inbounds %struct.zahl, %struct.zahl* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.zahl*, %struct.zahl** %6, align 8
  %31 = getelementptr inbounds %struct.zahl, %struct.zahl* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.zahl*, %struct.zahl** %7, align 8
  %33 = getelementptr inbounds %struct.zahl, %struct.zahl* %32, i32 0, i32 4
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.zahl*, %struct.zahl** %6, align 8
  %36 = getelementptr inbounds %struct.zahl, %struct.zahl* %35, i32 0, i32 4
  store i64* %34, i64** %36, align 8
  br label %37

37:                                               ; preds = %4
  br label %38

38:                                               ; preds = %58, %37
  %39 = load %struct.zahl*, %struct.zahl** %6, align 8
  %40 = getelementptr inbounds %struct.zahl, %struct.zahl* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.zahl*, %struct.zahl** %6, align 8
  %45 = getelementptr inbounds %struct.zahl, %struct.zahl* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.zahl*, %struct.zahl** %6, align 8
  %48 = getelementptr inbounds %struct.zahl, %struct.zahl* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i64, i64* %46, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %43, %38
  %56 = phi i1 [ false, %38 ], [ %54, %43 ]
  br i1 %56, label %57, label %63

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.zahl*, %struct.zahl** %6, align 8
  %60 = getelementptr inbounds %struct.zahl, %struct.zahl* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %60, align 8
  br label %38, !llvm.loop !10

63:                                               ; preds = %55
  %64 = load %struct.zahl*, %struct.zahl** %6, align 8
  %65 = getelementptr inbounds %struct.zahl, %struct.zahl* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.zahl*, %struct.zahl** %6, align 8
  %70 = getelementptr inbounds %struct.zahl, %struct.zahl* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71
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
