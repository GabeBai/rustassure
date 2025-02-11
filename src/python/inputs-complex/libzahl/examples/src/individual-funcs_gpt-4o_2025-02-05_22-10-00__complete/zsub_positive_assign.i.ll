; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub_positive_assign.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsub_positive_assign.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsub_positive_assign(%struct.zahl* noundef %0, %struct.zahl* noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca %struct.zahl*, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store %struct.zahl* %1, %struct.zahl** %4, align 8
  %5 = load %struct.zahl*, %struct.zahl** %3, align 8
  %6 = load %struct.zahl*, %struct.zahl** %4, align 8
  %7 = load %struct.zahl*, %struct.zahl** %4, align 8
  %8 = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = call i32 bitcast (i32 (...)* @zsub_impl to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %5, %struct.zahl* noundef %6, i64 noundef %9)
  ret void
}

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
