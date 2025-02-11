; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zadd.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zadd.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zadd(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #0 {
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
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.zahl*, %struct.zahl** %4, align 8
  %18 = load %struct.zahl*, %struct.zahl** %6, align 8
  %19 = icmp ne %struct.zahl* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.zahl*, %struct.zahl** %4, align 8
  %22 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zset(%struct.zahl* noundef %21, %struct.zahl* noundef %22)
  br label %23

23:                                               ; preds = %20, %16
  br label %24

24:                                               ; preds = %23
  br label %93

25:                                               ; preds = %3
  %26 = load %struct.zahl*, %struct.zahl** %6, align 8
  %27 = call i32 @zzero(%struct.zahl* noundef %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.zahl*, %struct.zahl** %4, align 8
  %37 = load %struct.zahl*, %struct.zahl** %5, align 8
  %38 = icmp ne %struct.zahl* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.zahl*, %struct.zahl** %4, align 8
  %41 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zset(%struct.zahl* noundef %40, %struct.zahl* noundef %41)
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42
  br label %92

44:                                               ; preds = %25
  %45 = load %struct.zahl*, %struct.zahl** %5, align 8
  %46 = call i32 @zsignum(%struct.zahl* noundef %45)
  %47 = icmp slt i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %44
  %54 = load %struct.zahl*, %struct.zahl** %6, align 8
  %55 = call i32 @zsignum(%struct.zahl* noundef %54)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.zahl*, %struct.zahl** %4, align 8
  %59 = load %struct.zahl*, %struct.zahl** %5, align 8
  %60 = load %struct.zahl*, %struct.zahl** %6, align 8
  %61 = call i32 bitcast (i32 (...)* @libzahl_zadd_unsigned to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %58, %struct.zahl* noundef %59, %struct.zahl* noundef %60)
  %62 = load %struct.zahl*, %struct.zahl** %4, align 8
  %63 = call i32 @zsignum(%struct.zahl* noundef %62)
  %64 = sub nsw i32 0, %63
  %65 = load %struct.zahl*, %struct.zahl** %4, align 8
  %66 = getelementptr inbounds %struct.zahl, %struct.zahl* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %71

67:                                               ; preds = %53
  %68 = load %struct.zahl*, %struct.zahl** %4, align 8
  %69 = load %struct.zahl*, %struct.zahl** %6, align 8
  %70 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zsub_unsigned(%struct.zahl* noundef %68, %struct.zahl* noundef %69, %struct.zahl* noundef %70)
  br label %71

71:                                               ; preds = %67, %57
  br label %91

72:                                               ; preds = %44
  %73 = load %struct.zahl*, %struct.zahl** %6, align 8
  %74 = call i32 @zsignum(%struct.zahl* noundef %73)
  %75 = icmp slt i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load %struct.zahl*, %struct.zahl** %4, align 8
  %83 = load %struct.zahl*, %struct.zahl** %5, align 8
  %84 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zsub_unsigned(%struct.zahl* noundef %82, %struct.zahl* noundef %83, %struct.zahl* noundef %84)
  br label %90

85:                                               ; preds = %72
  %86 = load %struct.zahl*, %struct.zahl** %4, align 8
  %87 = load %struct.zahl*, %struct.zahl** %5, align 8
  %88 = load %struct.zahl*, %struct.zahl** %6, align 8
  %89 = call i32 bitcast (i32 (...)* @libzahl_zadd_unsigned to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %86, %struct.zahl* noundef %87, %struct.zahl* noundef %88)
  br label %90

90:                                               ; preds = %85, %81
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %43
  br label %93

93:                                               ; preds = %92, %24
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i32 @libzahl_zadd_unsigned(...) #1

declare void @zsub_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
