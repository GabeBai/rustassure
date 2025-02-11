; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsetu.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsetu.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsetu(%struct.zahl* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.zahl*, %struct.zahl** %3, align 8
  %15 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  br label %35

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.zahl*, %struct.zahl** %3, align 8
  %19 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load %struct.zahl*, %struct.zahl** %3, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %23, i64 noundef 1)
  br label %24

24:                                               ; preds = %22, %17
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.zahl*, %struct.zahl** %3, align 8
  %27 = getelementptr inbounds %struct.zahl, %struct.zahl* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.zahl*, %struct.zahl** %3, align 8
  %30 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 4
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 %28, i64* %32, align 8
  %33 = load %struct.zahl*, %struct.zahl** %3, align 8
  %34 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 2
  store i64 1, i64* %34, align 8
  br label %35

35:                                               ; preds = %25, %13
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
