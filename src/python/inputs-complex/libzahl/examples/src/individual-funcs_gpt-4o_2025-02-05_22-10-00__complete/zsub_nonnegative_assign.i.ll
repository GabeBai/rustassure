; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub_nonnegative_assign.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub_nonnegative_assign.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsub_nonnegative_assign(%struct.zahl* noundef %0, %struct.zahl* noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca %struct.zahl*, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store %struct.zahl* %1, %struct.zahl** %4, align 8
  %5 = load %struct.zahl*, %struct.zahl** %4, align 8
  %6 = call i32 @zzero(%struct.zahl* noundef %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.zahl*, %struct.zahl** %3, align 8
  %15 = load %struct.zahl*, %struct.zahl** %3, align 8
  call void @zabs(%struct.zahl* noundef %14, %struct.zahl* noundef %15)
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.zahl*, %struct.zahl** %3, align 8
  %18 = load %struct.zahl*, %struct.zahl** %4, align 8
  %19 = call i32 @zcmpmag(%struct.zahl* noundef %17, %struct.zahl* noundef %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.zahl*, %struct.zahl** %3, align 8
  %29 = getelementptr inbounds %struct.zahl, %struct.zahl* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %37

30:                                               ; preds = %16
  %31 = load %struct.zahl*, %struct.zahl** %3, align 8
  %32 = load %struct.zahl*, %struct.zahl** %4, align 8
  %33 = load %struct.zahl*, %struct.zahl** %4, align 8
  %34 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 bitcast (i32 (...)* @zsub_impl to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %31, %struct.zahl* noundef %32, i64 noundef %35)
  br label %37

37:                                               ; preds = %30, %27
  br label %38

38:                                               ; preds = %37, %13
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsub_impl(...) #1

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
