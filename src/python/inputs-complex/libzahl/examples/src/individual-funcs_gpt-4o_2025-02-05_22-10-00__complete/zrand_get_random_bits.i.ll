; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_get_random_bits.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand_get_random_bits.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrand_get_random_bits(%struct.zahl* noundef %0, i64 noundef %1, void (i8*, i64, i8*)* noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca void (i8*, i64, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %5, align 8
  store i64 %1, i64* %6, align 8
  store void (i8*, i64, i8*)* %2, void (i8*, i64, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %12, 63
  %14 = lshr i64 %13, 6
  store i64 %14, i64* %10, align 8
  store i64 1, i64* %11, align 8
  br label %15

15:                                               ; preds = %4
  %16 = load %struct.zahl*, %struct.zahl** %5, align 8
  %17 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.zahl*, %struct.zahl** %5, align 8
  %23 = load i64, i64* %10, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %22, i64 noundef %23)
  br label %24

24:                                               ; preds = %21, %15
  br label %25

25:                                               ; preds = %24
  %26 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %7, align 8
  %27 = load %struct.zahl*, %struct.zahl** %5, align 8
  %28 = getelementptr inbounds %struct.zahl, %struct.zahl* %27, i32 0, i32 4
  %29 = load i64*, i64** %28, align 8
  %30 = bitcast i64* %29 to i8*
  %31 = load i64, i64* %10, align 8
  %32 = mul i64 %31, 8
  %33 = load i8*, i8** %8, align 8
  call void %26(i8* noundef %30, i64 noundef %32, i8* noundef %33)
  %34 = load i64, i64* %6, align 8
  %35 = and i64 %34, 63
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = shl i64 %37, %36
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = sub i64 %39, 1
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.zahl*, %struct.zahl** %5, align 8
  %43 = getelementptr inbounds %struct.zahl, %struct.zahl* %42, i32 0, i32 4
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = and i64 %48, %41
  store i64 %49, i64* %47, align 8
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %75, %25
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %9, align 8
  %54 = icmp ne i64 %52, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load %struct.zahl*, %struct.zahl** %5, align 8
  %57 = getelementptr inbounds %struct.zahl, %struct.zahl* %56, i32 0, i32 4
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %55
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  %71 = load %struct.zahl*, %struct.zahl** %5, align 8
  %72 = getelementptr inbounds %struct.zahl, %struct.zahl* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.zahl*, %struct.zahl** %5, align 8
  %74 = getelementptr inbounds %struct.zahl, %struct.zahl* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %79

75:                                               ; preds = %55
  br label %51, !llvm.loop !10

76:                                               ; preds = %51
  %77 = load %struct.zahl*, %struct.zahl** %5, align 8
  %78 = getelementptr inbounds %struct.zahl, %struct.zahl* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %68
  ret void
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

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
