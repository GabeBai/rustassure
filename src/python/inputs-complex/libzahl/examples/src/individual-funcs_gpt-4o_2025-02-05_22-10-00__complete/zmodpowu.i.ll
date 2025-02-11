; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmodpowu.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmodpowu.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_pow_b = external global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_d = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zmodpowu(%struct.zahl* noundef %0, %struct.zahl* noundef %1, i64 noundef %2, %struct.zahl* noundef %3) #0 {
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.zahl*, align 8
  store %struct.zahl* %0, %struct.zahl** %5, align 8
  store %struct.zahl* %1, %struct.zahl** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.zahl* %3, %struct.zahl** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %4
  %18 = load %struct.zahl*, %struct.zahl** %6, align 8
  %19 = call i32 @zzero(%struct.zahl* noundef %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -1)
  br label %42

28:                                               ; preds = %17
  %29 = load %struct.zahl*, %struct.zahl** %8, align 8
  %30 = call i32 @zzero(%struct.zahl* noundef %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -3)
  br label %41

39:                                               ; preds = %28
  %40 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zsetu(%struct.zahl* noundef %40, i64 noundef 1)
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %26
  br label %92

43:                                               ; preds = %4
  %44 = load %struct.zahl*, %struct.zahl** %8, align 8
  %45 = call i32 @zzero(%struct.zahl* noundef %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -3)
  br label %67

54:                                               ; preds = %43
  %55 = load %struct.zahl*, %struct.zahl** %6, align 8
  %56 = call i32 @zzero(%struct.zahl* noundef %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.zahl*, %struct.zahl** %5, align 8
  %65 = getelementptr inbounds %struct.zahl, %struct.zahl* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  br label %92

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %52
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.zahl*, %struct.zahl** %6, align 8
  %70 = load %struct.zahl*, %struct.zahl** %8, align 8
  call void @zmod(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef %69, %struct.zahl* noundef %70)
  %71 = load %struct.zahl*, %struct.zahl** %8, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0), %struct.zahl* noundef %71)
  %72 = load i64, i64* %7, align 8
  %73 = and i64 %72, 1
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zset(%struct.zahl* noundef %76, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %79

77:                                               ; preds = %68
  %78 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zsetu(%struct.zahl* noundef %78, i64 noundef 1)
  br label %79

79:                                               ; preds = %77, %75
  br label %80

80:                                               ; preds = %91, %79
  %81 = load i64, i64* %7, align 8
  %82 = lshr i64 %81, 1
  store i64 %82, i64* %7, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  call void @zmodsqr(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0))
  %85 = load i64, i64* %7, align 8
  %86 = and i64 %85, 1
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.zahl*, %struct.zahl** %5, align 8
  %90 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zmodmul(%struct.zahl* noundef %89, %struct.zahl* noundef %90, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %84
  br label %80, !llvm.loop !10

92:                                               ; preds = %42, %63, %80
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare i32 @libzahl_failure(...) #1

declare void @zsetu(%struct.zahl* noundef, i64 noundef) #1

declare void @zmod(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmodsqr(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmodmul(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
