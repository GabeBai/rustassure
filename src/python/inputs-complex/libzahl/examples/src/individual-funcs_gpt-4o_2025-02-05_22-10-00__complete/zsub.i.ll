; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsub(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store %struct.zahl* %2, %struct.zahl** %6, align 8
  %7 = load %struct.zahl*, %struct.zahl** %5, align 8
  %8 = call i32 @zzero(%struct.zahl* noundef %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.zahl*, %struct.zahl** %4, align 8
  %17 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zneg(%struct.zahl* noundef %16, %struct.zahl* noundef %17)
  br label %81

18:                                               ; preds = %3
  %19 = load %struct.zahl*, %struct.zahl** %6, align 8
  %20 = call i32 @zzero(%struct.zahl* noundef %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.zahl*, %struct.zahl** %4, align 8
  %30 = load %struct.zahl*, %struct.zahl** %5, align 8
  %31 = icmp ne %struct.zahl* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.zahl*, %struct.zahl** %4, align 8
  %34 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zset(%struct.zahl* noundef %33, %struct.zahl* noundef %34)
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35
  br label %80

37:                                               ; preds = %18
  %38 = load %struct.zahl*, %struct.zahl** %5, align 8
  %39 = call i32 @zsignum(%struct.zahl* noundef %38)
  %40 = icmp slt i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %37
  %47 = load %struct.zahl*, %struct.zahl** %6, align 8
  %48 = call i32 @zsignum(%struct.zahl* noundef %47)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.zahl*, %struct.zahl** %4, align 8
  %52 = load %struct.zahl*, %struct.zahl** %6, align 8
  %53 = load %struct.zahl*, %struct.zahl** %5, align 8
  %54 = call i32 bitcast (i32 (...)* @libzahl_zsub_unsigned to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %51, %struct.zahl* noundef %52, %struct.zahl* noundef %53)
  br label %64

55:                                               ; preds = %46
  %56 = load %struct.zahl*, %struct.zahl** %4, align 8
  %57 = load %struct.zahl*, %struct.zahl** %5, align 8
  %58 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zadd_unsigned(%struct.zahl* noundef %56, %struct.zahl* noundef %57, %struct.zahl* noundef %58)
  %59 = load %struct.zahl*, %struct.zahl** %4, align 8
  %60 = call i32 @zsignum(%struct.zahl* noundef %59)
  %61 = sub nsw i32 0, %60
  %62 = load %struct.zahl*, %struct.zahl** %4, align 8
  %63 = getelementptr inbounds %struct.zahl, %struct.zahl* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %55, %50
  br label %79

65:                                               ; preds = %37
  %66 = load %struct.zahl*, %struct.zahl** %6, align 8
  %67 = call i32 @zsignum(%struct.zahl* noundef %66)
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.zahl*, %struct.zahl** %4, align 8
  %71 = load %struct.zahl*, %struct.zahl** %5, align 8
  %72 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zadd_unsigned(%struct.zahl* noundef %70, %struct.zahl* noundef %71, %struct.zahl* noundef %72)
  br label %78

73:                                               ; preds = %65
  %74 = load %struct.zahl*, %struct.zahl** %4, align 8
  %75 = load %struct.zahl*, %struct.zahl** %5, align 8
  %76 = load %struct.zahl*, %struct.zahl** %6, align 8
  %77 = call i32 bitcast (i32 (...)* @libzahl_zsub_unsigned to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %74, %struct.zahl* noundef %75, %struct.zahl* noundef %76)
  br label %78

78:                                               ; preds = %73, %69
  br label %79

79:                                               ; preds = %78, %64
  br label %80

80:                                               ; preds = %79, %36
  br label %81

81:                                               ; preds = %80, %15
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zneg(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i32 @libzahl_zsub_unsigned(...) #1

declare void @zadd_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
