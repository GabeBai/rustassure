; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zstr_length.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zstr_length.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_str_num = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_mag = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_div = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @zstr_length(%struct.zahl* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ult i64 %7, 2
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -5)
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.zahl*, %struct.zahl** %3, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef %17)
  br label %18

18:                                               ; preds = %30, %16
  %19 = call i32 @zzero(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  call void @zsetu(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0), i64 noundef %23)
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0))
  store i64 1, i64* %6, align 8
  br label %24

24:                                               ; preds = %27, %22
  %25 = call i32 @zcmpmag(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0))
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0))
  call void @zsqr(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0))
  %28 = load i64, i64* %6, align 8
  %29 = shl i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %24, !llvm.loop !10

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = lshr i64 %31, 1
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %5, align 8
  call void @zdiv(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0))
  br label %18, !llvm.loop !12

36:                                               ; preds = %18
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.zahl*, %struct.zahl** %3, align 8
  %39 = call i32 @zsignum(%struct.zahl* noundef %38)
  %40 = icmp slt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = add i64 %37, %42
  ret i64 %43
}

declare i32 @libzahl_failure(...) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zsetu(%struct.zahl* noundef, i64 noundef) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zsqr(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zdiv(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
