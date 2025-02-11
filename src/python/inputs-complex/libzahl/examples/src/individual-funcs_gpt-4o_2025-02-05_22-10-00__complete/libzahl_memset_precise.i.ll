; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memset_precise.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memset_precise.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_memset_precise(i64* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ule i64 %8, 4
  br i1 %9, label %10, label %39

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = icmp uge i64 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i64, i64* %6, align 8
  %19 = icmp uge i64 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i64, i64* %6, align 8
  %26 = icmp uge i64 %25, 3
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = load i64*, i64** %4, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i64, i64* %6, align 8
  %33 = icmp uge i64 %32, 4
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* %5, align 8
  %36 = load i64*, i64** %4, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 3
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %31
  br label %87

39:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %40

40:                                               ; preds = %45, %39
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load i64, i64* %5, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %46, i64* %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64*, i64** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, 2
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %51, i64* %55, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64*, i64** %4, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %58, 3
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 %56, i64* %60, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64*, i64** %4, align 8
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %63, 4
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %61, i64* %65, align 8
  br label %40, !llvm.loop !10

66:                                               ; preds = %40
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  %71 = load i64, i64* %7, align 8
  %72 = sub i64 %71, 4
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %82, %70
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i64, i64* %5, align 8
  %79 = load i64*, i64** %4, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %77
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %73, !llvm.loop !12

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %66
  br label %87

87:                                               ; preds = %86, %38
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
!12 = distinct !{!12, !11}
