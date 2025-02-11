; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zpow.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zpow.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_pow_b = external global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_c = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zpow(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store %struct.zahl* %2, %struct.zahl** %6, align 8
  %13 = load %struct.zahl*, %struct.zahl** %6, align 8
  %14 = call i32 @zsignum(%struct.zahl* noundef %13)
  %15 = icmp sle i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %3
  %22 = load %struct.zahl*, %struct.zahl** %6, align 8
  %23 = call i32 @zzero(%struct.zahl* noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.zahl*, %struct.zahl** %5, align 8
  %27 = call i32 @zzero(%struct.zahl* noundef %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -1)
  br label %36

36:                                               ; preds = %34, %25
  %37 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zsetu(%struct.zahl* noundef %37, i64 noundef 1)
  br label %53

38:                                               ; preds = %21
  %39 = load %struct.zahl*, %struct.zahl** %5, align 8
  %40 = call i32 @zzero(%struct.zahl* noundef %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -3)
  br label %52

49:                                               ; preds = %38
  %50 = load %struct.zahl*, %struct.zahl** %4, align 8
  %51 = getelementptr inbounds %struct.zahl, %struct.zahl* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %47
  br label %53

53:                                               ; preds = %52, %36
  br label %138

54:                                               ; preds = %3
  %55 = load %struct.zahl*, %struct.zahl** %5, align 8
  %56 = call i32 @zzero(%struct.zahl* noundef %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.zahl*, %struct.zahl** %4, align 8
  %65 = getelementptr inbounds %struct.zahl, %struct.zahl* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  br label %138

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.zahl*, %struct.zahl** %6, align 8
  %69 = call i64 @zbits(%struct.zahl* noundef %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = lshr i64 %70, 6
  store i64 %71, i64* %9, align 8
  %72 = load %struct.zahl*, %struct.zahl** %5, align 8
  %73 = call i32 @zsignum(%struct.zahl* noundef %72)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.zahl*, %struct.zahl** %6, align 8
  %77 = call i32 @zodd(%struct.zahl* noundef %76)
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %75, %67
  %80 = phi i1 [ false, %67 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zabs(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef %82)
  %83 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0), %struct.zahl* noundef %83)
  %84 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zsetu(%struct.zahl* noundef %84, i64 noundef 1)
  store i64 0, i64* %7, align 8
  br label %85

85:                                               ; preds = %110, %79
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %85
  %90 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 4), align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %11, align 8
  store i64 64, i64* %8, align 8
  br label %94

94:                                               ; preds = %106, %89
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, -1
  store i64 %96, i64* %8, align 8
  %97 = icmp ne i64 %95, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i64, i64* %11, align 8
  %100 = and i64 %99, 1
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.zahl*, %struct.zahl** %4, align 8
  %104 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zmul_ll(%struct.zahl* noundef %103, %struct.zahl* noundef %104, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %98
  call void @zsqr_ll(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %11, align 8
  %108 = lshr i64 %107, 1
  store i64 %108, i64* %11, align 8
  br label %94, !llvm.loop !10

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %7, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %7, align 8
  br label %85, !llvm.loop !12

113:                                              ; preds = %85
  %114 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 4), align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %11, align 8
  br label %118

118:                                              ; preds = %129, %113
  %119 = load i64, i64* %11, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = load i64, i64* %11, align 8
  %123 = and i64 %122, 1
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.zahl*, %struct.zahl** %4, align 8
  %127 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zmul_ll(%struct.zahl* noundef %126, %struct.zahl* noundef %127, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %121
  call void @zsqr_ll(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %11, align 8
  %131 = lshr i64 %130, 1
  store i64 %131, i64* %11, align 8
  br label %118, !llvm.loop !13

132:                                              ; preds = %118
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.zahl*, %struct.zahl** %4, align 8
  %137 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zneg(%struct.zahl* noundef %136, %struct.zahl* noundef %137)
  br label %138

138:                                              ; preds = %53, %63, %135, %132
  ret void
}

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare i32 @libzahl_failure(...) #1

declare void @zsetu(%struct.zahl* noundef, i64 noundef) #1

declare i64 @zbits(%struct.zahl* noundef) #1

declare i32 @zodd(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zsqr_ll(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zneg(%struct.zahl* noundef, %struct.zahl* noundef) #1

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
