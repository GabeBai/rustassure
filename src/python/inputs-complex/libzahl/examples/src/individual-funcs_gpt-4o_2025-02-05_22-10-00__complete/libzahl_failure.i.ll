; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_failure.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_failure.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_error = external global i32, align 4
@libzahl_temp_stack = external global %struct.zahl**, align 8
@libzahl_temp_stack_head = external global %struct.zahl**, align 8
@libzahl_temp_allocation = external global i8*, align 8
@libzahl_jmp_buf = external global [48 x i32], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_failure(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @libzahl_error, align 4
  %4 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8
  %5 = icmp ne %struct.zahl** %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %11, %6
  %8 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %9 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8
  %10 = icmp ne %struct.zahl** %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %13 = getelementptr inbounds %struct.zahl*, %struct.zahl** %12, i32 -1
  store %struct.zahl** %13, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %14 = load %struct.zahl*, %struct.zahl** %13, align 8
  call void @zfree(%struct.zahl* noundef %14)
  br label %7, !llvm.loop !10

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i8*, i8** @libzahl_temp_allocation, align 8
  call void @free(i8* noundef %17)
  store i8* null, i8** @libzahl_temp_allocation, align 8
  call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #3
  unreachable
}

declare void @zfree(%struct.zahl* noundef) #1

declare void @free(i8* noundef) #1

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
