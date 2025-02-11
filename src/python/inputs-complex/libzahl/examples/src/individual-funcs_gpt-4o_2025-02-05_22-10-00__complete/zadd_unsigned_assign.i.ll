; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zadd_unsigned_assign.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zadd_unsigned_assign.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zadd_unsigned_assign(%struct.zahl* noundef %0, %struct.zahl* noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store %struct.zahl* %1, %struct.zahl** %4, align 8
  %7 = load %struct.zahl*, %struct.zahl** %3, align 8
  %8 = call i32 @zzero(%struct.zahl* noundef %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.zahl*, %struct.zahl** %3, align 8
  %17 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zabs(%struct.zahl* noundef %16, %struct.zahl* noundef %17)
  br label %105

18:                                               ; preds = %2
  %19 = load %struct.zahl*, %struct.zahl** %4, align 8
  %20 = call i32 @zzero(%struct.zahl* noundef %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %105

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.zahl*, %struct.zahl** %3, align 8
  %31 = getelementptr inbounds %struct.zahl, %struct.zahl* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.zahl*, %struct.zahl** %4, align 8
  %34 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.zahl*, %struct.zahl** %3, align 8
  %39 = getelementptr inbounds %struct.zahl, %struct.zahl* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  br label %45

41:                                               ; preds = %29
  %42 = load %struct.zahl*, %struct.zahl** %4, align 8
  %43 = getelementptr inbounds %struct.zahl, %struct.zahl* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i64 [ %40, %37 ], [ %44, %41 ]
  store i64 %46, i64* %5, align 8
  %47 = load %struct.zahl*, %struct.zahl** %3, align 8
  %48 = getelementptr inbounds %struct.zahl, %struct.zahl* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.zahl*, %struct.zahl** %4, align 8
  %51 = getelementptr inbounds %struct.zahl, %struct.zahl* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %49, %52
  %54 = load i64, i64* %5, align 8
  %55 = sub i64 %53, %54
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %45
  %57 = load %struct.zahl*, %struct.zahl** %3, align 8
  %58 = getelementptr inbounds %struct.zahl, %struct.zahl* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.zahl*, %struct.zahl** %3, align 8
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  call void @libzahl_realloc(%struct.zahl* noundef %64, i64 noundef %66)
  br label %67

67:                                               ; preds = %63, %56
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.zahl*, %struct.zahl** %3, align 8
  %70 = getelementptr inbounds %struct.zahl, %struct.zahl* %69, i32 0, i32 4
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 0, i64* %73, align 8
  %74 = load %struct.zahl*, %struct.zahl** %3, align 8
  %75 = getelementptr inbounds %struct.zahl, %struct.zahl* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.zahl*, %struct.zahl** %4, align 8
  %78 = getelementptr inbounds %struct.zahl, %struct.zahl* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %68
  %82 = load %struct.zahl*, %struct.zahl** %4, align 8
  %83 = getelementptr inbounds %struct.zahl, %struct.zahl* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %6, align 8
  %85 = load %struct.zahl*, %struct.zahl** %3, align 8
  %86 = getelementptr inbounds %struct.zahl, %struct.zahl* %85, i32 0, i32 4
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.zahl*, %struct.zahl** %3, align 8
  %89 = getelementptr inbounds %struct.zahl, %struct.zahl* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.zahl*, %struct.zahl** %3, align 8
  %94 = getelementptr inbounds %struct.zahl, %struct.zahl* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %92, %95
  %97 = call i32 bitcast (i32 (...)* @libzahl_memset to i32 (i64*, i32, i64)*)(i64* noundef %91, i32 noundef 0, i64 noundef %96)
  br label %98

98:                                               ; preds = %81, %68
  %99 = load %struct.zahl*, %struct.zahl** %3, align 8
  %100 = load %struct.zahl*, %struct.zahl** %4, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 bitcast (i32 (...)* @zadd_impl_3 to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %99, %struct.zahl* noundef %100, i64 noundef %101)
  %103 = load %struct.zahl*, %struct.zahl** %3, align 8
  %104 = getelementptr inbounds %struct.zahl, %struct.zahl* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %98, %27, %15
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memset(...) #1

declare i32 @zadd_impl_3(...) #1

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
