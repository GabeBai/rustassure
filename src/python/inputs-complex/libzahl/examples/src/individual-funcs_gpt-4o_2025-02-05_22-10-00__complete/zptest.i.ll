; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zptest.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zptest.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_ptest_n1 = external global [1 x %struct.zahl], align 8
@libzahl_const_1 = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_n4 = external global [1 x %struct.zahl], align 8
@libzahl_const_4 = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_d = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_a = external global [1 x %struct.zahl], align 8
@libzahl_const_2 = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_x = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zptest(%struct.zahl* noundef %0, %struct.zahl* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %5, align 8
  store %struct.zahl* %1, %struct.zahl** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.zahl*, %struct.zahl** %6, align 8
  %11 = call i32 @zcmpu(%struct.zahl* noundef %10, i64 noundef 3)
  %12 = icmp sle i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load %struct.zahl*, %struct.zahl** %6, align 8
  %20 = call i32 @zcmpu(%struct.zahl* noundef %19, i64 noundef 1)
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.zahl*, %struct.zahl** %5, align 8
  %24 = icmp ne %struct.zahl* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.zahl*, %struct.zahl** %5, align 8
  %28 = load %struct.zahl*, %struct.zahl** %6, align 8
  %29 = icmp ne %struct.zahl* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.zahl*, %struct.zahl** %5, align 8
  %32 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zset(%struct.zahl* noundef %31, %struct.zahl* noundef %32)
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %22
  store i32 0, i32* %4, align 4
  br label %104

36:                                               ; preds = %18
  store i32 2, i32* %4, align 4
  br label %104

37:                                               ; preds = %3
  %38 = load %struct.zahl*, %struct.zahl** %6, align 8
  %39 = call i32 @zeven(%struct.zahl* noundef %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load %struct.zahl*, %struct.zahl** %5, align 8
  %48 = icmp ne %struct.zahl* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zsetu(%struct.zahl* noundef %50, i64 noundef 2)
  br label %51

51:                                               ; preds = %49, %46
  store i32 0, i32* %4, align 4
  br label %104

52:                                               ; preds = %37
  %53 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zsub_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0), %struct.zahl* noundef %53, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0))
  %54 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zsub_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n4, i64 0, i64 0), %struct.zahl* noundef %54, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_4, i64 0, i64 0))
  %55 = call i64 @zlsb(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0))
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  call void @zrsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_d, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0), i64 noundef %56)
  br label %57

57:                                               ; preds = %102, %68, %52
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %7, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %103

61:                                               ; preds = %57
  call void @zrand(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0), i32 noundef 2, i32 noundef 1, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n4, i64 0, i64 0))
  call void @zadd_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_2, i64 0, i64 0))
  %62 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zmodpow(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_d, i64 0, i64 0), %struct.zahl* noundef %62)
  %63 = call i32 @zcmp(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = call i32 @zcmp(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65, %61
  br label %57, !llvm.loop !10

69:                                               ; preds = %65
  store i64 1, i64* %8, align 8
  br label %70

70:                                               ; preds = %89, %69
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zmodsqr(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef %75)
  %76 = call i32 @zcmp(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = load %struct.zahl*, %struct.zahl** %5, align 8
  %80 = icmp ne %struct.zahl* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zswap(%struct.zahl* noundef %82, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %78
  store i32 0, i32* %4, align 4
  br label %104

84:                                               ; preds = %74
  %85 = call i32 @zcmp(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  br label %92

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %70, !llvm.loop !12

92:                                               ; preds = %87, %70
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load %struct.zahl*, %struct.zahl** %5, align 8
  %98 = icmp ne %struct.zahl* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zswap(%struct.zahl* noundef %100, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96
  store i32 0, i32* %4, align 4
  br label %104

102:                                              ; preds = %92
  br label %57, !llvm.loop !10

103:                                              ; preds = %57
  store i32 1, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %101, %83, %51, %36, %35
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare i32 @zcmpu(%struct.zahl* noundef, i64 noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zeven(%struct.zahl* noundef) #1

declare void @zsetu(%struct.zahl* noundef, i64 noundef) #1

declare void @zsub_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare i64 @zlsb(%struct.zahl* noundef) #1

declare void @zrsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

declare void @zrand(%struct.zahl* noundef, i32 noundef, i32 noundef, %struct.zahl* noundef) #1

declare void @zadd_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmodpow(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zcmp(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmodsqr(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zswap(%struct.zahl* noundef, %struct.zahl* noundef) #1

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
