; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/znot.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/znot.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @znot(%struct.zahl* noundef %0, %struct.zahl* noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store %struct.zahl* %1, %struct.zahl** %4, align 8
  %10 = load %struct.zahl*, %struct.zahl** %4, align 8
  %11 = call i32 @zzero(%struct.zahl* noundef %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.zahl*, %struct.zahl** %3, align 8
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %148

21:                                               ; preds = %2
  %22 = load %struct.zahl*, %struct.zahl** %4, align 8
  %23 = call i64 @zbits(%struct.zahl* noundef %22)
  store i64 %23, i64* %5, align 8
  %24 = load %struct.zahl*, %struct.zahl** %4, align 8
  %25 = getelementptr inbounds %struct.zahl, %struct.zahl* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.zahl*, %struct.zahl** %3, align 8
  %28 = getelementptr inbounds %struct.zahl, %struct.zahl* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.zahl*, %struct.zahl** %4, align 8
  %30 = call i32 @zsignum(%struct.zahl* noundef %29)
  %31 = sub nsw i32 0, %30
  %32 = load %struct.zahl*, %struct.zahl** %3, align 8
  %33 = getelementptr inbounds %struct.zahl, %struct.zahl* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %21
  %35 = load %struct.zahl*, %struct.zahl** %3, align 8
  %36 = getelementptr inbounds %struct.zahl, %struct.zahl* %35, i32 0, i32 4
  %37 = load i64*, i64** %36, align 8
  store i64* %37, i64** %6, align 8
  %38 = load %struct.zahl*, %struct.zahl** %4, align 8
  %39 = getelementptr inbounds %struct.zahl, %struct.zahl* %38, i32 0, i32 4
  %40 = load i64*, i64** %39, align 8
  store i64* %40, i64** %7, align 8
  %41 = load %struct.zahl*, %struct.zahl** %3, align 8
  %42 = getelementptr inbounds %struct.zahl, %struct.zahl* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %89, %34
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %92

48:                                               ; preds = %44
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 0
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = xor i64 %53, -1
  %55 = load i64*, i64** %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 0
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %54, i64* %58, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = xor i64 %63, -1
  %65 = load i64*, i64** %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %64, i64* %68, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 2
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = xor i64 %73, -1
  %75 = load i64*, i64** %6, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 2
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 %74, i64* %78, align 8
  %79 = load i64*, i64** %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 3
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = xor i64 %83, -1
  %85 = load i64*, i64** %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 3
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %84, i64* %88, align 8
  br label %89

89:                                               ; preds = %48
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 4
  store i64 %91, i64* %8, align 8
  br label %44, !llvm.loop !10

92:                                               ; preds = %44
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %5, align 8
  %95 = and i64 %94, 63
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load i64, i64* %5, align 8
  %100 = shl i64 1, %99
  %101 = sub i64 %100, 1
  %102 = load %struct.zahl*, %struct.zahl** %3, align 8
  %103 = getelementptr inbounds %struct.zahl, %struct.zahl* %102, i32 0, i32 4
  %104 = load i64*, i64** %103, align 8
  %105 = load %struct.zahl*, %struct.zahl** %3, align 8
  %106 = getelementptr inbounds %struct.zahl, %struct.zahl* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = sub i64 %107, 1
  %109 = getelementptr inbounds i64, i64* %104, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = and i64 %110, %101
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %98, %93
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %134, %113
  %115 = load %struct.zahl*, %struct.zahl** %3, align 8
  %116 = getelementptr inbounds %struct.zahl, %struct.zahl* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %114
  %120 = load %struct.zahl*, %struct.zahl** %3, align 8
  %121 = getelementptr inbounds %struct.zahl, %struct.zahl* %120, i32 0, i32 4
  %122 = load i64*, i64** %121, align 8
  %123 = load %struct.zahl*, %struct.zahl** %3, align 8
  %124 = getelementptr inbounds %struct.zahl, %struct.zahl* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 %125, 1
  %127 = getelementptr inbounds i64, i64* %122, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %119, %114
  %132 = phi i1 [ false, %114 ], [ %130, %119 ]
  br i1 %132, label %133, label %139

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.zahl*, %struct.zahl** %3, align 8
  %136 = getelementptr inbounds %struct.zahl, %struct.zahl* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, -1
  store i64 %138, i64* %136, align 8
  br label %114, !llvm.loop !12

139:                                              ; preds = %131
  %140 = load %struct.zahl*, %struct.zahl** %3, align 8
  %141 = getelementptr inbounds %struct.zahl, %struct.zahl* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load %struct.zahl*, %struct.zahl** %3, align 8
  %146 = getelementptr inbounds %struct.zahl, %struct.zahl* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %139
  br label %148

148:                                              ; preds = %18, %147
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare i64 @zbits(%struct.zahl* noundef) #1

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
!12 = distinct !{!12, !11}
