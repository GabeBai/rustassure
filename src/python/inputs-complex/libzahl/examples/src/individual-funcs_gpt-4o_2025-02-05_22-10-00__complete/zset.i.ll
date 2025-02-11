; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zset.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zset.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca %struct.zahl*, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store %struct.zahl* %1, %struct.zahl** %4, align 8
  %5 = load %struct.zahl*, %struct.zahl** %4, align 8
  %6 = getelementptr inbounds %struct.zahl, %struct.zahl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.zahl*, %struct.zahl** %3, align 8
  %16 = getelementptr inbounds %struct.zahl, %struct.zahl* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.zahl*, %struct.zahl** %4, align 8
  %19 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.zahl*, %struct.zahl** %3, align 8
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.zahl*, %struct.zahl** %4, align 8
  %24 = getelementptr inbounds %struct.zahl, %struct.zahl* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.zahl*, %struct.zahl** %3, align 8
  %27 = getelementptr inbounds %struct.zahl, %struct.zahl* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %17
  %29 = load %struct.zahl*, %struct.zahl** %3, align 8
  %30 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.zahl*, %struct.zahl** %4, align 8
  %33 = getelementptr inbounds %struct.zahl, %struct.zahl* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.zahl*, %struct.zahl** %3, align 8
  %38 = load %struct.zahl*, %struct.zahl** %4, align 8
  %39 = getelementptr inbounds %struct.zahl, %struct.zahl* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %37, i64 noundef %40)
  br label %41

41:                                               ; preds = %36, %28
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.zahl*, %struct.zahl** %3, align 8
  %44 = getelementptr inbounds %struct.zahl, %struct.zahl* %43, i32 0, i32 4
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.zahl*, %struct.zahl** %4, align 8
  %47 = getelementptr inbounds %struct.zahl, %struct.zahl* %46, i32 0, i32 4
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.zahl*, %struct.zahl** %4, align 8
  %50 = getelementptr inbounds %struct.zahl, %struct.zahl* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %45, i64* noundef %48, i64 noundef %51)
  br label %53

53:                                               ; preds = %42, %14
  ret void
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memcpy(...) #1

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
