; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zcmpmag.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zcmpmag.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zcmpmag(%struct.zahl* noundef %0, %struct.zahl* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  %8 = load %struct.zahl*, %struct.zahl** %4, align 8
  %9 = call i32 @zzero(%struct.zahl* noundef %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.zahl*, %struct.zahl** %5, align 8
  %18 = call i32 @zzero(%struct.zahl* noundef %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %141

23:                                               ; preds = %2
  %24 = load %struct.zahl*, %struct.zahl** %5, align 8
  %25 = call i32 @zzero(%struct.zahl* noundef %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %141

33:                                               ; preds = %23
  %34 = load %struct.zahl*, %struct.zahl** %4, align 8
  %35 = getelementptr inbounds %struct.zahl, %struct.zahl* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %36, 1
  store i64 %37, i64* %6, align 8
  %38 = load %struct.zahl*, %struct.zahl** %5, align 8
  %39 = getelementptr inbounds %struct.zahl, %struct.zahl* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %60, %33
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.zahl*, %struct.zahl** %4, align 8
  %48 = getelementptr inbounds %struct.zahl, %struct.zahl* %47, i32 0, i32 4
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %141

55:                                               ; preds = %46
  %56 = load %struct.zahl*, %struct.zahl** %4, align 8
  %57 = getelementptr inbounds %struct.zahl, %struct.zahl* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %6, align 8
  br label %42, !llvm.loop !10

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %82, %63
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load %struct.zahl*, %struct.zahl** %5, align 8
  %70 = getelementptr inbounds %struct.zahl, %struct.zahl* %69, i32 0, i32 4
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %141

77:                                               ; preds = %68
  %78 = load %struct.zahl*, %struct.zahl** %5, align 8
  %79 = getelementptr inbounds %struct.zahl, %struct.zahl* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %77
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %7, align 8
  br label %64, !llvm.loop !12

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %106, %85
  %87 = load i64, i64* %6, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load %struct.zahl*, %struct.zahl** %4, align 8
  %91 = getelementptr inbounds %struct.zahl, %struct.zahl* %90, i32 0, i32 4
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.zahl*, %struct.zahl** %5, align 8
  %97 = getelementptr inbounds %struct.zahl, %struct.zahl* %96, i32 0, i32 4
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %95, %101
  br label %103

103:                                              ; preds = %89, %86
  %104 = phi i1 [ false, %86 ], [ %102, %89 ]
  br i1 %104, label %105, label %109

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %6, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %6, align 8
  br label %86, !llvm.loop !13

109:                                              ; preds = %103
  %110 = load %struct.zahl*, %struct.zahl** %4, align 8
  %111 = getelementptr inbounds %struct.zahl, %struct.zahl* %110, i32 0, i32 4
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.zahl*, %struct.zahl** %5, align 8
  %117 = getelementptr inbounds %struct.zahl, %struct.zahl* %116, i32 0, i32 4
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %6, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %115, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  br label %139

124:                                              ; preds = %109
  %125 = load %struct.zahl*, %struct.zahl** %4, align 8
  %126 = getelementptr inbounds %struct.zahl, %struct.zahl* %125, i32 0, i32 4
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.zahl*, %struct.zahl** %5, align 8
  %132 = getelementptr inbounds %struct.zahl, %struct.zahl* %131, i32 0, i32 4
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %6, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp ugt i64 %130, %136
  %138 = zext i1 %137 to i32
  br label %139

139:                                              ; preds = %124, %123
  %140 = phi i32 [ -1, %123 ], [ %138, %124 ]
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %76, %54, %32, %16
  %142 = load i32, i32* %3, align 4
  ret i32 %142
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
