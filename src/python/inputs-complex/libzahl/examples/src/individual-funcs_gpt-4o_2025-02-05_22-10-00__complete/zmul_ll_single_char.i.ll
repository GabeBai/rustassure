; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmul_ll_single_char.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmul_ll_single_char.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zmul_ll_single_char(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store %struct.zahl* %2, %struct.zahl** %6, align 8
  br label %7

7:                                                ; preds = %3
  %8 = load %struct.zahl*, %struct.zahl** %4, align 8
  %9 = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %13, i64 noundef 1)
  br label %14

14:                                               ; preds = %12, %7
  br label %15

15:                                               ; preds = %14
  %16 = load %struct.zahl*, %struct.zahl** %4, align 8
  %17 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 2
  store i64 1, i64* %17, align 8
  %18 = load %struct.zahl*, %struct.zahl** %5, align 8
  %19 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 4
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.zahl*, %struct.zahl** %6, align 8
  %24 = getelementptr inbounds %struct.zahl, %struct.zahl* %23, i32 0, i32 4
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = mul i64 %22, %27
  %29 = load %struct.zahl*, %struct.zahl** %4, align 8
  %30 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 4
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 %28, i64* %32, align 8
  %33 = load %struct.zahl*, %struct.zahl** %4, align 8
  %34 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
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
