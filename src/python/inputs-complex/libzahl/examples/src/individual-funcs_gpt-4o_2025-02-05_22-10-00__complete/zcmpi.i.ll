; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zcmpi.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zcmpi.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zcmpi(%struct.zahl* noundef %0, i64 noundef %1) #0 {
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
  br label %144

17:                                               ; preds = %2
  %18 = load %struct.zahl*, %struct.zahl** %4, align 8
  %19 = call i32 @zzero(%struct.zahl* noundef %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load i64, i64* %5, align 8
  %28 = icmp slt i64 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 -1
  store i32 %35, i32* %3, align 4
  br label %144

36:                                               ; preds = %17
  %37 = load i64, i64* %5, align 8
  %38 = icmp slt i64 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %95

44:                                               ; preds = %36
  %45 = load %struct.zahl*, %struct.zahl** %4, align 8
  %46 = call i32 @zsignum(%struct.zahl* noundef %45)
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %144

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %62, %49
  %51 = load %struct.zahl*, %struct.zahl** %4, align 8
  %52 = getelementptr inbounds %struct.zahl, %struct.zahl* %51, i32 0, i32 4
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.zahl*, %struct.zahl** %4, align 8
  %55 = getelementptr inbounds %struct.zahl, %struct.zahl* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, 1
  %58 = getelementptr inbounds i64, i64* %53, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %67

62:                                               ; preds = %50
  %63 = load %struct.zahl*, %struct.zahl** %4, align 8
  %64 = getelementptr inbounds %struct.zahl, %struct.zahl* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %64, align 8
  br label %50, !llvm.loop !10

67:                                               ; preds = %50
  %68 = load %struct.zahl*, %struct.zahl** %4, align 8
  %69 = getelementptr inbounds %struct.zahl, %struct.zahl* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ugt i64 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %144

73:                                               ; preds = %67
  %74 = load %struct.zahl*, %struct.zahl** %4, align 8
  %75 = getelementptr inbounds %struct.zahl, %struct.zahl* %74, i32 0, i32 4
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = sub nsw i64 0, %79
  %81 = icmp ugt i64 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %93

83:                                               ; preds = %73
  %84 = load %struct.zahl*, %struct.zahl** %4, align 8
  %85 = getelementptr inbounds %struct.zahl, %struct.zahl* %84, i32 0, i32 4
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = sub nsw i64 0, %89
  %91 = icmp ult i64 %88, %90
  %92 = zext i1 %91 to i32
  br label %93

93:                                               ; preds = %83, %82
  %94 = phi i32 [ -1, %82 ], [ %92, %83 ]
  store i32 %94, i32* %3, align 4
  br label %144

95:                                               ; preds = %36
  %96 = load %struct.zahl*, %struct.zahl** %4, align 8
  %97 = call i32 @zsignum(%struct.zahl* noundef %96)
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 -1, i32* %3, align 4
  br label %144

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %113, %100
  %102 = load %struct.zahl*, %struct.zahl** %4, align 8
  %103 = getelementptr inbounds %struct.zahl, %struct.zahl* %102, i32 0, i32 4
  %104 = load i64*, i64** %103, align 8
  %105 = load %struct.zahl*, %struct.zahl** %4, align 8
  %106 = getelementptr inbounds %struct.zahl, %struct.zahl* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = sub i64 %107, 1
  %109 = getelementptr inbounds i64, i64* %104, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  %112 = xor i1 %111, true
  br i1 %112, label %113, label %118

113:                                              ; preds = %101
  %114 = load %struct.zahl*, %struct.zahl** %4, align 8
  %115 = getelementptr inbounds %struct.zahl, %struct.zahl* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* %115, align 8
  br label %101, !llvm.loop !12

118:                                              ; preds = %101
  %119 = load %struct.zahl*, %struct.zahl** %4, align 8
  %120 = getelementptr inbounds %struct.zahl, %struct.zahl* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ugt i64 %121, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 1, i32* %3, align 4
  br label %144

124:                                              ; preds = %118
  %125 = load %struct.zahl*, %struct.zahl** %4, align 8
  %126 = getelementptr inbounds %struct.zahl, %struct.zahl* %125, i32 0, i32 4
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %142

133:                                              ; preds = %124
  %134 = load %struct.zahl*, %struct.zahl** %4, align 8
  %135 = getelementptr inbounds %struct.zahl, %struct.zahl* %134, i32 0, i32 4
  %136 = load i64*, i64** %135, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %5, align 8
  %140 = icmp ugt i64 %138, %139
  %141 = zext i1 %140 to i32
  br label %142

142:                                              ; preds = %133, %132
  %143 = phi i32 [ -1, %132 ], [ %141, %133 ]
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %123, %99, %93, %72, %48, %26, %14
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare i32 @zsignum(%struct.zahl* noundef) #1

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
