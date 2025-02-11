; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zload.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zload.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @zload(%struct.zahl* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = load %struct.zahl*, %struct.zahl** %3, align 8
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 8
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.zahl*, %struct.zahl** %3, align 8
  %19 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  store i8* %21, i8** %5, align 8
  %22 = load %struct.zahl*, %struct.zahl** %3, align 8
  %23 = getelementptr inbounds %struct.zahl, %struct.zahl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.zahl*, %struct.zahl** %3, align 8
  %34 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.zahl*, %struct.zahl** %3, align 8
  %37 = getelementptr inbounds %struct.zahl, %struct.zahl* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.zahl*, %struct.zahl** %3, align 8
  %42 = load %struct.zahl*, %struct.zahl** %3, align 8
  %43 = getelementptr inbounds %struct.zahl, %struct.zahl* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %41, i64 noundef %44)
  br label %45

45:                                               ; preds = %40, %32
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.zahl*, %struct.zahl** %3, align 8
  %48 = getelementptr inbounds %struct.zahl, %struct.zahl* %47, i32 0, i32 4
  %49 = load i64*, i64** %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = bitcast i8* %50 to i64*
  %52 = load %struct.zahl*, %struct.zahl** %3, align 8
  %53 = getelementptr inbounds %struct.zahl, %struct.zahl* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %49, i64* noundef %51, i64 noundef %54)
  br label %56

56:                                               ; preds = %46, %2
  %57 = load %struct.zahl*, %struct.zahl** %3, align 8
  %58 = call i32 @zzero(%struct.zahl* noundef %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %68

61:                                               ; preds = %56
  %62 = load %struct.zahl*, %struct.zahl** %3, align 8
  %63 = getelementptr inbounds %struct.zahl, %struct.zahl* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 3
  %66 = and i64 %65, -4
  %67 = mul i64 %66, 8
  br label %68

68:                                               ; preds = %61, %60
  %69 = phi i64 [ 0, %60 ], [ %67, %61 ]
  %70 = add i64 16, %69
  ret i64 %70
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memcpy(...) #1

declare i32 @zzero(%struct.zahl* noundef) #1

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
