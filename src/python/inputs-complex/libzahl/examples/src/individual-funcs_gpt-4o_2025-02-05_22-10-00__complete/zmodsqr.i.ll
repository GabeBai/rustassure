; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmodsqr.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmodsqr.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_modsqr = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zmodsqr(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store %struct.zahl* %2, %struct.zahl** %6, align 8
  %7 = load %struct.zahl*, %struct.zahl** %4, align 8
  %8 = load %struct.zahl*, %struct.zahl** %6, align 8
  %9 = icmp eq %struct.zahl* %7, %8
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modsqr, i64 0, i64 0), %struct.zahl* noundef %16)
  %17 = load %struct.zahl*, %struct.zahl** %4, align 8
  %18 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zsqr(%struct.zahl* noundef %17, %struct.zahl* noundef %18)
  %19 = load %struct.zahl*, %struct.zahl** %4, align 8
  %20 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zmod(%struct.zahl* noundef %19, %struct.zahl* noundef %20, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modsqr, i64 0, i64 0))
  br label %27

21:                                               ; preds = %3
  %22 = load %struct.zahl*, %struct.zahl** %4, align 8
  %23 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zsqr(%struct.zahl* noundef %22, %struct.zahl* noundef %23)
  %24 = load %struct.zahl*, %struct.zahl** %4, align 8
  %25 = load %struct.zahl*, %struct.zahl** %4, align 8
  %26 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zmod(%struct.zahl* noundef %24, %struct.zahl* noundef %25, %struct.zahl* noundef %26)
  br label %27

27:                                               ; preds = %21, %15
  ret void
}

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zsqr(%struct.zahl* noundef, %struct.zahl* noundef) #1

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
