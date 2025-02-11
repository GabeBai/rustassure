; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zbset_ll_flip.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zbset_ll_flip.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zbset_ll_flip(%struct.zahl* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = lshr i64 %7, 6
  store i64 %8, i64* %6, align 8
  %9 = load %struct.zahl*, %struct.zahl** %3, align 8
  %10 = call i32 @zzero(%struct.zahl* noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.zahl*, %struct.zahl** %3, align 8
  %14 = getelementptr inbounds %struct.zahl, %struct.zahl* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.zahl*, %struct.zahl** %3, align 8
  %16 = getelementptr inbounds %struct.zahl, %struct.zahl* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.zahl*, %struct.zahl** %3, align 8
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.zahl*, %struct.zahl** %3, align 8
  %31 = getelementptr inbounds %struct.zahl, %struct.zahl* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.zahl*, %struct.zahl** %3, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  call void @libzahl_realloc(%struct.zahl* noundef %37, i64 noundef %39)
  br label %40

40:                                               ; preds = %36, %29
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.zahl*, %struct.zahl** %3, align 8
  %43 = getelementptr inbounds %struct.zahl, %struct.zahl* %42, i32 0, i32 4
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.zahl*, %struct.zahl** %3, align 8
  %46 = getelementptr inbounds %struct.zahl, %struct.zahl* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  %51 = load %struct.zahl*, %struct.zahl** %3, align 8
  %52 = getelementptr inbounds %struct.zahl, %struct.zahl* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %50, %53
  %55 = call i32 bitcast (i32 (...)* @libzahl_memset to i32 (i64*, i32, i64)*)(i64* noundef %48, i32 noundef 0, i64 noundef %54)
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  %58 = load %struct.zahl*, %struct.zahl** %3, align 8
  %59 = getelementptr inbounds %struct.zahl, %struct.zahl* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %41, %17
  %61 = load i64, i64* %4, align 8
  %62 = and i64 %61, 63
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = shl i64 %64, %63
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.zahl*, %struct.zahl** %3, align 8
  %68 = getelementptr inbounds %struct.zahl, %struct.zahl* %67, i32 0, i32 4
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = xor i64 %72, %66
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %95, %74
  %76 = load %struct.zahl*, %struct.zahl** %3, align 8
  %77 = getelementptr inbounds %struct.zahl, %struct.zahl* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load %struct.zahl*, %struct.zahl** %3, align 8
  %82 = getelementptr inbounds %struct.zahl, %struct.zahl* %81, i32 0, i32 4
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.zahl*, %struct.zahl** %3, align 8
  %85 = getelementptr inbounds %struct.zahl, %struct.zahl* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %86, 1
  %88 = getelementptr inbounds i64, i64* %83, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %80, %75
  %93 = phi i1 [ false, %75 ], [ %91, %80 ]
  br i1 %93, label %94, label %100

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.zahl*, %struct.zahl** %3, align 8
  %97 = getelementptr inbounds %struct.zahl, %struct.zahl* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, -1
  store i64 %99, i64* %97, align 8
  br label %75, !llvm.loop !10

100:                                              ; preds = %92
  %101 = load %struct.zahl*, %struct.zahl** %3, align 8
  %102 = getelementptr inbounds %struct.zahl, %struct.zahl* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load %struct.zahl*, %struct.zahl** %3, align 8
  %107 = getelementptr inbounds %struct.zahl, %struct.zahl* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %100
  br label %109

109:                                              ; preds = %108
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memset(...) #1

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
