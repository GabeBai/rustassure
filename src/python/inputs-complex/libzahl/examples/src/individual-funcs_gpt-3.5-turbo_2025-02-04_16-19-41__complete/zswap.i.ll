; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zswap.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zswap.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zswap(%struct.zahl* noundef %a_, %struct.zahl* noundef %b_) #0 {
entry:
  %a_.addr = alloca %struct.zahl*, align 8
  %b_.addr = alloca %struct.zahl*, align 8
  %t = alloca i64, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  store %struct.zahl* %a_, %struct.zahl** %a_.addr, align 8
  store %struct.zahl* %b_, %struct.zahl** %b_.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %a_.addr, align 8
  %1 = bitcast %struct.zahl* %0 to i64*
  store i64* %1, i64** %a, align 8
  %2 = load %struct.zahl*, %struct.zahl** %b_.addr, align 8
  %3 = bitcast %struct.zahl* %2 to i64*
  store i64* %3, i64** %b, align 8
  %4 = load i64*, i64** %a, align 8
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 0
  %5 = load i64, i64* %arrayidx, align 8
  store i64 %5, i64* %t, align 8
  %6 = load i64*, i64** %b, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %6, i64 0
  %7 = load i64, i64* %arrayidx1, align 8
  %8 = load i64*, i64** %a, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %8, i64 0
  store i64 %7, i64* %arrayidx2, align 8
  %9 = load i64, i64* %t, align 8
  %10 = load i64*, i64** %b, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %9, i64* %arrayidx3, align 8
  %11 = load i64*, i64** %b, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %11, i64 1
  %12 = load i64, i64* %arrayidx4, align 8
  store i64 %12, i64* %t, align 8
  %13 = load i64*, i64** %a, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %13, i64 1
  %14 = load i64, i64* %arrayidx5, align 8
  %15 = load i64*, i64** %b, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %15, i64 1
  store i64 %14, i64* %arrayidx6, align 8
  %16 = load i64, i64* %t, align 8
  %17 = load i64*, i64** %a, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %17, i64 1
  store i64 %16, i64* %arrayidx7, align 8
  %18 = load i64*, i64** %a, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %18, i64 2
  %19 = load i64, i64* %arrayidx8, align 8
  store i64 %19, i64* %t, align 8
  %20 = load i64*, i64** %b, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %20, i64 2
  %21 = load i64, i64* %arrayidx9, align 8
  %22 = load i64*, i64** %a, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %22, i64 2
  store i64 %21, i64* %arrayidx10, align 8
  %23 = load i64, i64* %t, align 8
  %24 = load i64*, i64** %b, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %24, i64 2
  store i64 %23, i64* %arrayidx11, align 8
  %25 = load i64*, i64** %b, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %25, i64 3
  %26 = load i64, i64* %arrayidx12, align 8
  store i64 %26, i64* %t, align 8
  %27 = load i64*, i64** %a, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %27, i64 3
  %28 = load i64, i64* %arrayidx13, align 8
  %29 = load i64*, i64** %b, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %29, i64 3
  store i64 %28, i64* %arrayidx14, align 8
  %30 = load i64, i64* %t, align 8
  %31 = load i64*, i64** %a, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %31, i64 3
  store i64 %30, i64* %arrayidx15, align 8
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
!9 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git 6fd4c483fd129052982b4c7498e7ea910578ab6c)"}
