; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsplit_unsigned_fast_small_auto.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsplit_unsigned_fast_small_auto.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsplit_unsigned_fast_small_auto(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca %struct.zahl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %5, align 8
  store %struct.zahl* %1, %struct.zahl** %6, align 8
  store %struct.zahl* %2, %struct.zahl** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 1, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = shl i64 %10, %11
  %13 = sub i64 %12, 1
  store i64 %13, i64* %9, align 8
  %14 = load %struct.zahl*, %struct.zahl** %5, align 8
  %15 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.zahl*, %struct.zahl** %5, align 8
  %17 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 2
  store i64 1, i64* %17, align 8
  %18 = load %struct.zahl*, %struct.zahl** %7, align 8
  %19 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 4
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = lshr i64 %22, %23
  %25 = load %struct.zahl*, %struct.zahl** %5, align 8
  %26 = getelementptr inbounds %struct.zahl, %struct.zahl* %25, i32 0, i32 4
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %24, i64* %28, align 8
  %29 = load %struct.zahl*, %struct.zahl** %7, align 8
  %30 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 2
  br i1 %32, label %33, label %76

33:                                               ; preds = %4
  %34 = load %struct.zahl*, %struct.zahl** %7, align 8
  %35 = getelementptr inbounds %struct.zahl, %struct.zahl* %34, i32 0, i32 4
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = lshr i64 %38, %39
  %41 = load %struct.zahl*, %struct.zahl** %5, align 8
  %42 = getelementptr inbounds %struct.zahl, %struct.zahl* %41, i32 0, i32 4
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  store i64 %40, i64* %44, align 8
  %45 = load %struct.zahl*, %struct.zahl** %5, align 8
  %46 = getelementptr inbounds %struct.zahl, %struct.zahl* %45, i32 0, i32 4
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = load %struct.zahl*, %struct.zahl** %5, align 8
  %56 = getelementptr inbounds %struct.zahl, %struct.zahl* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %8, align 8
  %60 = sub i64 64, %59
  store i64 %60, i64* %8, align 8
  %61 = load %struct.zahl*, %struct.zahl** %7, align 8
  %62 = getelementptr inbounds %struct.zahl, %struct.zahl* %61, i32 0, i32 4
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = and i64 %65, %66
  %68 = load i64, i64* %8, align 8
  %69 = shl i64 %67, %68
  %70 = load %struct.zahl*, %struct.zahl** %5, align 8
  %71 = getelementptr inbounds %struct.zahl, %struct.zahl* %70, i32 0, i32 4
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %69
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %33, %4
  %77 = load %struct.zahl*, %struct.zahl** %6, align 8
  %78 = getelementptr inbounds %struct.zahl, %struct.zahl* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.zahl*, %struct.zahl** %6, align 8
  %80 = getelementptr inbounds %struct.zahl, %struct.zahl* %79, i32 0, i32 2
  store i64 1, i64* %80, align 8
  %81 = load %struct.zahl*, %struct.zahl** %7, align 8
  %82 = getelementptr inbounds %struct.zahl, %struct.zahl* %81, i32 0, i32 4
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = and i64 %85, %86
  %88 = load %struct.zahl*, %struct.zahl** %6, align 8
  %89 = getelementptr inbounds %struct.zahl, %struct.zahl* %88, i32 0, i32 4
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  store i64 %87, i64* %91, align 8
  %92 = load %struct.zahl*, %struct.zahl** %6, align 8
  %93 = getelementptr inbounds %struct.zahl, %struct.zahl* %92, i32 0, i32 4
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %76
  %105 = load %struct.zahl*, %struct.zahl** %6, align 8
  %106 = getelementptr inbounds %struct.zahl, %struct.zahl* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %76
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
