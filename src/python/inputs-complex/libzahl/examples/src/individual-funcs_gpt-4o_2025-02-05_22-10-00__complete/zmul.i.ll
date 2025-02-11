; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmul.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmul.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zmul(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store %struct.zahl* %2, %struct.zahl** %6, align 8
  %9 = load %struct.zahl*, %struct.zahl** %5, align 8
  %10 = getelementptr inbounds %struct.zahl, %struct.zahl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.zahl*, %struct.zahl** %5, align 8
  %14 = getelementptr inbounds %struct.zahl, %struct.zahl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.zahl*, %struct.zahl** %6, align 8
  %18 = getelementptr inbounds %struct.zahl, %struct.zahl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.zahl*, %struct.zahl** %6, align 8
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.zahl*, %struct.zahl** %4, align 8
  %26 = load %struct.zahl*, %struct.zahl** %5, align 8
  %27 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zmul_ll(%struct.zahl* noundef %25, %struct.zahl* noundef %26, %struct.zahl* noundef %27)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.zahl*, %struct.zahl** %6, align 8
  %30 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.zahl*, %struct.zahl** %5, align 8
  %33 = getelementptr inbounds %struct.zahl, %struct.zahl* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.zahl*, %struct.zahl** %5, align 8
  %35 = call i32 @zsignum(%struct.zahl* noundef %34)
  %36 = load %struct.zahl*, %struct.zahl** %6, align 8
  %37 = call i32 @zsignum(%struct.zahl* noundef %36)
  %38 = mul nsw i32 %35, %37
  %39 = load %struct.zahl*, %struct.zahl** %4, align 8
  %40 = getelementptr inbounds %struct.zahl, %struct.zahl* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  ret void
}

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

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
