; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zcmp.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zcmp.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zcmp(%struct.zahl* noundef %0, %struct.zahl* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  %6 = load %struct.zahl*, %struct.zahl** %4, align 8
  %7 = call i32 @zsignum(%struct.zahl* noundef %6)
  %8 = load %struct.zahl*, %struct.zahl** %5, align 8
  %9 = call i32 @zsignum(%struct.zahl* noundef %8)
  %10 = icmp ne i32 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.zahl*, %struct.zahl** %4, align 8
  %13 = call i32 @zsignum(%struct.zahl* noundef %12)
  %14 = load %struct.zahl*, %struct.zahl** %5, align 8
  %15 = call i32 @zsignum(%struct.zahl* noundef %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %25

18:                                               ; preds = %11
  %19 = load %struct.zahl*, %struct.zahl** %4, align 8
  %20 = call i32 @zsignum(%struct.zahl* noundef %19)
  %21 = load %struct.zahl*, %struct.zahl** %5, align 8
  %22 = call i32 @zsignum(%struct.zahl* noundef %21)
  %23 = icmp sgt i32 %20, %22
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %18, %17
  %26 = phi i32 [ -1, %17 ], [ %24, %18 ]
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.zahl*, %struct.zahl** %4, align 8
  %29 = call i32 @zsignum(%struct.zahl* noundef %28)
  %30 = load %struct.zahl*, %struct.zahl** %4, align 8
  %31 = load %struct.zahl*, %struct.zahl** %5, align 8
  %32 = call i32 @zcmpmag(%struct.zahl* noundef %30, %struct.zahl* noundef %31)
  %33 = mul nsw i32 %29, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %25
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

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
