; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrsh_taint.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrsh_taint.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrsh_taint(%struct.zahl* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %143

17:                                               ; preds = %2
  %18 = load %struct.zahl*, %struct.zahl** %3, align 8
  %19 = call i32 @zzero(%struct.zahl* noundef %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %143

27:                                               ; preds = %17
  %28 = load i64, i64* %4, align 8
  %29 = lshr i64 %28, 6
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.zahl*, %struct.zahl** %3, align 8
  %32 = getelementptr inbounds %struct.zahl, %struct.zahl* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %30, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load %struct.zahl*, %struct.zahl** %3, align 8
  %37 = call i64 @zbits(%struct.zahl* noundef %36)
  %38 = load i64, i64* %4, align 8
  %39 = icmp ule i64 %37, %38
  br label %40

40:                                               ; preds = %35, %27
  %41 = phi i1 [ true, %27 ], [ %39, %35 ]
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.zahl*, %struct.zahl** %3, align 8
  %49 = getelementptr inbounds %struct.zahl, %struct.zahl* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %143

50:                                               ; preds = %40
  %51 = load i64, i64* %4, align 8
  %52 = and i64 %51, 63
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = sub i64 64, %53
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %50
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.zahl*, %struct.zahl** %3, align 8
  %65 = getelementptr inbounds %struct.zahl, %struct.zahl* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.zahl*, %struct.zahl** %3, align 8
  %70 = getelementptr inbounds %struct.zahl, %struct.zahl* %69, i32 0, i32 4
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 %68
  store i64* %72, i64** %70, align 8
  br label %73

73:                                               ; preds = %62, %50
  %74 = load i64, i64* %4, align 8
  %75 = icmp ne i64 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %143

81:                                               ; preds = %73
  %82 = load i64, i64* %4, align 8
  %83 = load %struct.zahl*, %struct.zahl** %3, align 8
  %84 = getelementptr inbounds %struct.zahl, %struct.zahl* %83, i32 0, i32 4
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = lshr i64 %87, %82
  store i64 %88, i64* %86, align 8
  store i64 1, i64* %5, align 8
  br label %89

89:                                               ; preds = %120, %81
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.zahl*, %struct.zahl** %3, align 8
  %92 = getelementptr inbounds %struct.zahl, %struct.zahl* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %90, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %89
  %96 = load %struct.zahl*, %struct.zahl** %3, align 8
  %97 = getelementptr inbounds %struct.zahl, %struct.zahl* %96, i32 0, i32 4
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = shl i64 %101, %102
  %104 = load %struct.zahl*, %struct.zahl** %3, align 8
  %105 = getelementptr inbounds %struct.zahl, %struct.zahl* %104, i32 0, i32 4
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %5, align 8
  %108 = sub i64 %107, 1
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = or i64 %110, %103
  store i64 %111, i64* %109, align 8
  %112 = load i64, i64* %4, align 8
  %113 = load %struct.zahl*, %struct.zahl** %3, align 8
  %114 = getelementptr inbounds %struct.zahl, %struct.zahl* %113, i32 0, i32 4
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = lshr i64 %118, %112
  store i64 %119, i64* %117, align 8
  br label %120

120:                                              ; preds = %95
  %121 = load i64, i64* %5, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %5, align 8
  br label %89, !llvm.loop !10

123:                                              ; preds = %89
  br label %124

124:                                              ; preds = %137, %123
  %125 = load %struct.zahl*, %struct.zahl** %3, align 8
  %126 = getelementptr inbounds %struct.zahl, %struct.zahl* %125, i32 0, i32 4
  %127 = load i64*, i64** %126, align 8
  %128 = load %struct.zahl*, %struct.zahl** %3, align 8
  %129 = getelementptr inbounds %struct.zahl, %struct.zahl* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = sub i64 %130, 1
  %132 = getelementptr inbounds i64, i64* %127, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  %135 = xor i1 %134, true
  br i1 %135, label %136, label %142

136:                                              ; preds = %124
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.zahl*, %struct.zahl** %3, align 8
  %139 = getelementptr inbounds %struct.zahl, %struct.zahl* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, -1
  store i64 %141, i64* %139, align 8
  br label %124, !llvm.loop !12

142:                                              ; preds = %124
  br label %143

143:                                              ; preds = %16, %26, %47, %142, %73
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare i64 @zbits(%struct.zahl* noundef) #1

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
