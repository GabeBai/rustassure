; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmodmul.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmodmul.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_modmul = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zmodmul(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2, %struct.zahl* noundef %3) #0 {
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca %struct.zahl*, align 8
  %8 = alloca %struct.zahl*, align 8
  store %struct.zahl* %0, %struct.zahl** %5, align 8
  store %struct.zahl* %1, %struct.zahl** %6, align 8
  store %struct.zahl* %2, %struct.zahl** %7, align 8
  store %struct.zahl* %3, %struct.zahl** %8, align 8
  %9 = load %struct.zahl*, %struct.zahl** %5, align 8
  %10 = load %struct.zahl*, %struct.zahl** %8, align 8
  %11 = icmp eq %struct.zahl* %9, %10
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.zahl*, %struct.zahl** %8, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0), %struct.zahl* noundef %18)
  %19 = load %struct.zahl*, %struct.zahl** %5, align 8
  %20 = load %struct.zahl*, %struct.zahl** %6, align 8
  %21 = load %struct.zahl*, %struct.zahl** %7, align 8
  call void @zmul(%struct.zahl* noundef %19, %struct.zahl* noundef %20, %struct.zahl* noundef %21)
  %22 = load %struct.zahl*, %struct.zahl** %5, align 8
  %23 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zmod(%struct.zahl* noundef %22, %struct.zahl* noundef %23, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0))
  br label %31

24:                                               ; preds = %4
  %25 = load %struct.zahl*, %struct.zahl** %5, align 8
  %26 = load %struct.zahl*, %struct.zahl** %6, align 8
  %27 = load %struct.zahl*, %struct.zahl** %7, align 8
  call void @zmul(%struct.zahl* noundef %25, %struct.zahl* noundef %26, %struct.zahl* noundef %27)
  %28 = load %struct.zahl*, %struct.zahl** %5, align 8
  %29 = load %struct.zahl*, %struct.zahl** %5, align 8
  %30 = load %struct.zahl*, %struct.zahl** %8, align 8
  call void @zmod(%struct.zahl* noundef %28, %struct.zahl* noundef %29, %struct.zahl* noundef %30)
  br label %31

31:                                               ; preds = %24, %17
  ret void
}

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmul(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmod(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
