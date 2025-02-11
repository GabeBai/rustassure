; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memmovef.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memmovef.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_memmovef(i64* noundef %0, i64* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %11, 4
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 %16, i64* %18, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 %21, i64* %23, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %4, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 2
  store i64 %26, i64* %28, align 8
  br label %75

29:                                               ; preds = %10, %3
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %71, %29
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %30
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 0
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 0
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %39, i64* %43, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 1
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %4, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %48, i64* %52, align 8
  %53 = load i64*, i64** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 2
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %4, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 2
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %57, i64* %61, align 8
  %62 = load i64*, i64** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 3
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %4, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 3
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %66, i64* %70, align 8
  br label %71

71:                                               ; preds = %34
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %7, align 8
  br label %30, !llvm.loop !10

74:                                               ; preds = %30
  br label %75

75:                                               ; preds = %74, %13
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
