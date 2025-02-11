; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsave.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsave.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @zsave(%struct.zahl* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %5, align 8
  %15 = load %struct.zahl*, %struct.zahl** %3, align 8
  %16 = getelementptr inbounds %struct.zahl, %struct.zahl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to i64*
  store i64 %18, i64* %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  store i8* %22, i8** %5, align 8
  %23 = load %struct.zahl*, %struct.zahl** %3, align 8
  %24 = getelementptr inbounds %struct.zahl, %struct.zahl* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to i64*
  store i64 %25, i64* %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 8
  store i8* %29, i8** %5, align 8
  %30 = load %struct.zahl*, %struct.zahl** %3, align 8
  %31 = call i32 @zzero(%struct.zahl* noundef %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %13
  %40 = load %struct.zahl*, %struct.zahl** %3, align 8
  %41 = getelementptr inbounds %struct.zahl, %struct.zahl* %40, i32 0, i32 4
  %42 = load i64*, i64** %41, align 8
  %43 = load %struct.zahl*, %struct.zahl** %3, align 8
  %44 = getelementptr inbounds %struct.zahl, %struct.zahl* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 2
  %47 = getelementptr inbounds i64, i64* %42, i64 %46
  store i64 0, i64* %47, align 8
  %48 = load %struct.zahl*, %struct.zahl** %3, align 8
  %49 = getelementptr inbounds %struct.zahl, %struct.zahl* %48, i32 0, i32 4
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.zahl*, %struct.zahl** %3, align 8
  %52 = getelementptr inbounds %struct.zahl, %struct.zahl* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  %55 = getelementptr inbounds i64, i64* %50, i64 %54
  store i64 0, i64* %55, align 8
  %56 = load %struct.zahl*, %struct.zahl** %3, align 8
  %57 = getelementptr inbounds %struct.zahl, %struct.zahl* %56, i32 0, i32 4
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.zahl*, %struct.zahl** %3, align 8
  %60 = getelementptr inbounds %struct.zahl, %struct.zahl* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 0
  %63 = getelementptr inbounds i64, i64* %58, i64 %62
  store i64 0, i64* %63, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = bitcast i8* %64 to i64*
  %66 = load %struct.zahl*, %struct.zahl** %3, align 8
  %67 = getelementptr inbounds %struct.zahl, %struct.zahl* %66, i32 0, i32 4
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.zahl*, %struct.zahl** %3, align 8
  %70 = getelementptr inbounds %struct.zahl, %struct.zahl* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %65, i64* noundef %68, i64 noundef %71)
  br label %73

73:                                               ; preds = %39, %13
  br label %74

74:                                               ; preds = %73, %2
  %75 = load %struct.zahl*, %struct.zahl** %3, align 8
  %76 = call i32 @zzero(%struct.zahl* noundef %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %86

79:                                               ; preds = %74
  %80 = load %struct.zahl*, %struct.zahl** %3, align 8
  %81 = getelementptr inbounds %struct.zahl, %struct.zahl* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 3
  %84 = and i64 %83, -4
  %85 = mul i64 %84, 8
  br label %86

86:                                               ; preds = %79, %78
  %87 = phi i64 [ 0, %78 ], [ %85, %79 ]
  %88 = add i64 16, %87
  ret i64 %88
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare i32 @libzahl_memcpy(...) #1

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
