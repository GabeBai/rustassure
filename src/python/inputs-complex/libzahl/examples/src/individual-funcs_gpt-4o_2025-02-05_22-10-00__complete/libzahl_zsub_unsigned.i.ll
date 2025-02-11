; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_zsub_unsigned.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_zsub_unsigned.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_sub = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_zsub_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store %struct.zahl* %2, %struct.zahl** %6, align 8
  %9 = load %struct.zahl*, %struct.zahl** %5, align 8
  %10 = call i32 @zzero(%struct.zahl* noundef %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.zahl*, %struct.zahl** %4, align 8
  %19 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zabs(%struct.zahl* noundef %18, %struct.zahl* noundef %19)
  %20 = load %struct.zahl*, %struct.zahl** %4, align 8
  %21 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zneg(%struct.zahl* noundef %20, %struct.zahl* noundef %21)
  br label %138

22:                                               ; preds = %3
  %23 = load %struct.zahl*, %struct.zahl** %6, align 8
  %24 = call i32 @zzero(%struct.zahl* noundef %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.zahl*, %struct.zahl** %4, align 8
  %33 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zabs(%struct.zahl* noundef %32, %struct.zahl* noundef %33)
  br label %138

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.zahl*, %struct.zahl** %5, align 8
  %37 = load %struct.zahl*, %struct.zahl** %6, align 8
  %38 = call i32 @zcmpmag(%struct.zahl* noundef %36, %struct.zahl* noundef %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.zahl*, %struct.zahl** %4, align 8
  %56 = getelementptr inbounds %struct.zahl, %struct.zahl* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %138

57:                                               ; preds = %46
  %58 = load %struct.zahl*, %struct.zahl** %5, align 8
  %59 = getelementptr inbounds %struct.zahl, %struct.zahl* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %8, align 8
  %61 = load %struct.zahl*, %struct.zahl** %4, align 8
  %62 = load %struct.zahl*, %struct.zahl** %5, align 8
  %63 = icmp eq %struct.zahl* %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0), %struct.zahl* noundef %65)
  br label %66

66:                                               ; preds = %64
  %67 = load %struct.zahl*, %struct.zahl** %4, align 8
  %68 = load %struct.zahl*, %struct.zahl** %6, align 8
  %69 = icmp ne %struct.zahl* %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.zahl*, %struct.zahl** %4, align 8
  %72 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zset(%struct.zahl* noundef %71, %struct.zahl* noundef %72)
  br label %73

73:                                               ; preds = %70, %66
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.zahl*, %struct.zahl** %4, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 bitcast (i32 (...)* @zsub_impl to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %75, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0), i64 noundef %76)
  br label %92

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.zahl*, %struct.zahl** %4, align 8
  %81 = load %struct.zahl*, %struct.zahl** %6, align 8
  %82 = icmp ne %struct.zahl* %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.zahl*, %struct.zahl** %4, align 8
  %85 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zset(%struct.zahl* noundef %84, %struct.zahl* noundef %85)
  br label %86

86:                                               ; preds = %83, %79
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.zahl*, %struct.zahl** %4, align 8
  %89 = load %struct.zahl*, %struct.zahl** %5, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 bitcast (i32 (...)* @zsub_impl to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %88, %struct.zahl* noundef %89, i64 noundef %90)
  br label %92

92:                                               ; preds = %87, %74
  br label %134

93:                                               ; preds = %35
  %94 = load %struct.zahl*, %struct.zahl** %6, align 8
  %95 = getelementptr inbounds %struct.zahl, %struct.zahl* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %8, align 8
  %97 = load %struct.zahl*, %struct.zahl** %4, align 8
  %98 = load %struct.zahl*, %struct.zahl** %6, align 8
  %99 = icmp eq %struct.zahl* %97, %98
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %93
  %106 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0), %struct.zahl* noundef %106)
  br label %107

107:                                              ; preds = %105
  %108 = load %struct.zahl*, %struct.zahl** %4, align 8
  %109 = load %struct.zahl*, %struct.zahl** %5, align 8
  %110 = icmp ne %struct.zahl* %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load %struct.zahl*, %struct.zahl** %4, align 8
  %113 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zset(%struct.zahl* noundef %112, %struct.zahl* noundef %113)
  br label %114

114:                                              ; preds = %111, %107
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.zahl*, %struct.zahl** %4, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i32 bitcast (i32 (...)* @zsub_impl to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %116, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0), i64 noundef %117)
  br label %133

119:                                              ; preds = %93
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.zahl*, %struct.zahl** %4, align 8
  %122 = load %struct.zahl*, %struct.zahl** %5, align 8
  %123 = icmp ne %struct.zahl* %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load %struct.zahl*, %struct.zahl** %4, align 8
  %126 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zset(%struct.zahl* noundef %125, %struct.zahl* noundef %126)
  br label %127

127:                                              ; preds = %124, %120
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.zahl*, %struct.zahl** %4, align 8
  %130 = load %struct.zahl*, %struct.zahl** %6, align 8
  %131 = load i64, i64* %8, align 8
  %132 = call i32 bitcast (i32 (...)* @zsub_impl to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %129, %struct.zahl* noundef %130, i64 noundef %131)
  br label %133

133:                                              ; preds = %128, %115
  br label %134

134:                                              ; preds = %133, %92
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.zahl*, %struct.zahl** %4, align 8
  %137 = getelementptr inbounds %struct.zahl, %struct.zahl* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %54, %31, %17
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zneg(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsub_impl(...) #1

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
