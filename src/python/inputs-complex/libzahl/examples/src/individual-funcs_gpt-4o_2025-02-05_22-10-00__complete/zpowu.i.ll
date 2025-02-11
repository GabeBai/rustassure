; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zpowu.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zpowu.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_pow_b = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zpowu(%struct.zahl* noundef %0, %struct.zahl* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.zahl*, %struct.zahl** %5, align 8
  %18 = call i32 @zzero(%struct.zahl* noundef %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -1)
  br label %27

27:                                               ; preds = %25, %16
  %28 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zsetu(%struct.zahl* noundef %28, i64 noundef 1)
  br label %80

29:                                               ; preds = %3
  %30 = load %struct.zahl*, %struct.zahl** %5, align 8
  %31 = call i32 @zzero(%struct.zahl* noundef %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.zahl*, %struct.zahl** %4, align 8
  %40 = getelementptr inbounds %struct.zahl, %struct.zahl* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %80

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.zahl*, %struct.zahl** %5, align 8
  %44 = call i32 @zsignum(%struct.zahl* noundef %43)
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = and i64 %47, 1
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i1 [ false, %42 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zabs(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef %53)
  %54 = load i64, i64* %6, align 8
  %55 = and i64 %54, 1
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zset(%struct.zahl* noundef %58, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %61

59:                                               ; preds = %50
  %60 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zsetu(%struct.zahl* noundef %60, i64 noundef 1)
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %73, %61
  %63 = load i64, i64* %6, align 8
  %64 = lshr i64 %63, 1
  store i64 %64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  call void @zsqr_ll(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  %67 = load i64, i64* %6, align 8
  %68 = and i64 %67, 1
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.zahl*, %struct.zahl** %4, align 8
  %72 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zmul_ll(%struct.zahl* noundef %71, %struct.zahl* noundef %72, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %66
  br label %62, !llvm.loop !10

74:                                               ; preds = %62
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.zahl*, %struct.zahl** %4, align 8
  %79 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zneg(%struct.zahl* noundef %78, %struct.zahl* noundef %79)
  br label %80

80:                                               ; preds = %27, %38, %77, %74
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare i32 @libzahl_failure(...) #1

declare void @zsetu(%struct.zahl* noundef, i64 noundef) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zsqr_ll(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
