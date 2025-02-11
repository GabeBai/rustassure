; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub_impl.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub_impl.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsub_impl(%struct.zahl* noundef %0, %struct.zahl* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %72, %3
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %75

14:                                               ; preds = %10
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.zahl*, %struct.zahl** %4, align 8
  %19 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 4
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.zahl*, %struct.zahl** %5, align 8
  %25 = getelementptr inbounds %struct.zahl, %struct.zahl* %24, i32 0, i32 4
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ule i64 %23, %29
  %31 = zext i1 %30 to i32
  br label %47

32:                                               ; preds = %14
  %33 = load %struct.zahl*, %struct.zahl** %4, align 8
  %34 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 4
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.zahl*, %struct.zahl** %5, align 8
  %40 = getelementptr inbounds %struct.zahl, %struct.zahl* %39, i32 0, i32 4
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %38, %44
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %32, %17
  %48 = phi i32 [ %31, %17 ], [ %46, %32 ]
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %8, align 8
  %50 = load %struct.zahl*, %struct.zahl** %5, align 8
  %51 = getelementptr inbounds %struct.zahl, %struct.zahl* %50, i32 0, i32 4
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.zahl*, %struct.zahl** %4, align 8
  %57 = getelementptr inbounds %struct.zahl, %struct.zahl* %56, i32 0, i32 4
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %61, %55
  store i64 %62, i64* %60, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.zahl*, %struct.zahl** %4, align 8
  %65 = getelementptr inbounds %struct.zahl, %struct.zahl* %64, i32 0, i32 4
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %69, %63
  store i64 %70, i64* %68, align 8
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %47
  %73 = load i64, i64* %9, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %9, align 8
  br label %10, !llvm.loop !10

75:                                               ; preds = %10
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %117

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %88, %78
  %80 = load %struct.zahl*, %struct.zahl** %4, align 8
  %81 = getelementptr inbounds %struct.zahl, %struct.zahl* %80, i32 0, i32 4
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.zahl*, %struct.zahl** %4, align 8
  %90 = getelementptr inbounds %struct.zahl, %struct.zahl* %89, i32 0, i32 4
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %9, align 8
  %94 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 -1, i64* %94, align 8
  br label %79, !llvm.loop !12

95:                                               ; preds = %79
  %96 = load %struct.zahl*, %struct.zahl** %4, align 8
  %97 = getelementptr inbounds %struct.zahl, %struct.zahl* %96, i32 0, i32 4
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 1
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load %struct.zahl*, %struct.zahl** %4, align 8
  %105 = getelementptr inbounds %struct.zahl, %struct.zahl* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, -1
  store i64 %107, i64* %105, align 8
  br label %116

108:                                              ; preds = %95
  %109 = load %struct.zahl*, %struct.zahl** %4, align 8
  %110 = getelementptr inbounds %struct.zahl, %struct.zahl* %109, i32 0, i32 4
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %114, 1
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %108, %103
  br label %117

117:                                              ; preds = %116, %75
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
