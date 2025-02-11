; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zdivmod.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zdivmod.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zdivmod(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2, %struct.zahl* noundef %3) #0 {
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca %struct.zahl*, align 8
  %8 = alloca %struct.zahl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.zahl* %0, %struct.zahl** %5, align 8
  store %struct.zahl* %1, %struct.zahl** %6, align 8
  store %struct.zahl* %2, %struct.zahl** %7, align 8
  store %struct.zahl* %3, %struct.zahl** %8, align 8
  %12 = load %struct.zahl*, %struct.zahl** %7, align 8
  %13 = call i32 @zsignum(%struct.zahl* noundef %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.zahl*, %struct.zahl** %8, align 8
  %16 = call i32 @zsignum(%struct.zahl* noundef %15)
  %17 = mul nsw i32 %14, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %4
  %27 = load %struct.zahl*, %struct.zahl** %7, align 8
  %28 = call i32 @zzero(%struct.zahl* noundef %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -3)
  br label %55

38:                                               ; preds = %26
  %39 = load %struct.zahl*, %struct.zahl** %8, align 8
  %40 = call i32 @zzero(%struct.zahl* noundef %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -2)
  br label %54

49:                                               ; preds = %38
  %50 = load %struct.zahl*, %struct.zahl** %5, align 8
  %51 = getelementptr inbounds %struct.zahl, %struct.zahl* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.zahl*, %struct.zahl** %6, align 8
  %53 = getelementptr inbounds %struct.zahl, %struct.zahl* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %49, %47
  br label %55

55:                                               ; preds = %54, %36
  br label %111

56:                                               ; preds = %4
  %57 = load %struct.zahl*, %struct.zahl** %7, align 8
  %58 = load %struct.zahl*, %struct.zahl** %8, align 8
  %59 = call i32 @zcmpmag(%struct.zahl* noundef %57, %struct.zahl* noundef %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp sle i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %56
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.zahl*, %struct.zahl** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  call void @zseti(%struct.zahl* noundef %76, i64 noundef %78)
  %79 = load %struct.zahl*, %struct.zahl** %6, align 8
  %80 = getelementptr inbounds %struct.zahl, %struct.zahl* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %93

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.zahl*, %struct.zahl** %6, align 8
  %84 = load %struct.zahl*, %struct.zahl** %7, align 8
  %85 = icmp ne %struct.zahl* %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.zahl*, %struct.zahl** %6, align 8
  %88 = load %struct.zahl*, %struct.zahl** %7, align 8
  call void @zset(%struct.zahl* noundef %87, %struct.zahl* noundef %88)
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.zahl*, %struct.zahl** %5, align 8
  %92 = getelementptr inbounds %struct.zahl, %struct.zahl* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %75
  br label %111

94:                                               ; preds = %56
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.zahl*, %struct.zahl** %5, align 8
  %97 = load %struct.zahl*, %struct.zahl** %6, align 8
  %98 = load %struct.zahl*, %struct.zahl** %7, align 8
  %99 = load %struct.zahl*, %struct.zahl** %8, align 8
  %100 = call i32 bitcast (i32 (...)* @zdivmod_impl to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %96, %struct.zahl* noundef %97, %struct.zahl* noundef %98, %struct.zahl* noundef %99)
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.zahl*, %struct.zahl** %5, align 8
  %103 = getelementptr inbounds %struct.zahl, %struct.zahl* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.zahl*, %struct.zahl** %6, align 8
  %105 = call i32 @zsignum(%struct.zahl* noundef %104)
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %95
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.zahl*, %struct.zahl** %6, align 8
  %110 = getelementptr inbounds %struct.zahl, %struct.zahl* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %55, %93, %107, %95
  ret void
}

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare i32 @libzahl_failure(...) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zseti(%struct.zahl* noundef, i64 noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zdivmod_impl(...) #1

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
