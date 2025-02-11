; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsqr_ll.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsqr_ll.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsqr_ll(%struct.zahl* noundef %0, %struct.zahl* noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca [1 x %struct.zahl], align 8
  %6 = alloca [1 x %struct.zahl], align 8
  %7 = alloca [1 x %struct.zahl], align 8
  %8 = alloca [1 x %struct.zahl], align 8
  %9 = alloca [12 x i64], align 8
  %10 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store %struct.zahl* %1, %struct.zahl** %4, align 8
  %11 = load %struct.zahl*, %struct.zahl** %4, align 8
  %12 = call i64 @zbits(%struct.zahl* noundef %11)
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ule i64 %13, 32
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.zahl*, %struct.zahl** %3, align 8
  %17 = load %struct.zahl*, %struct.zahl** %4, align 8
  %18 = call i32 bitcast (i32 (...)* @zsqr_ll_single_char to i32 (%struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %16, %struct.zahl* noundef %17)
  br label %89

19:                                               ; preds = %2
  %20 = load i64, i64* %10, align 8
  %21 = lshr i64 %20, 1
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %22, 64
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = getelementptr inbounds [12 x i64], [12 x i64]* %9, i64 0, i64 0
  %26 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %8, i64 0, i64 0
  %27 = getelementptr inbounds %struct.zahl, %struct.zahl* %26, i32 0, i32 4
  store i64* %25, i64** %27, align 8
  %28 = getelementptr inbounds [12 x i64], [12 x i64]* %9, i64 0, i64 0
  %29 = getelementptr inbounds i64, i64* %28, i64 4
  %30 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %7, i64 0, i64 0
  %31 = getelementptr inbounds %struct.zahl, %struct.zahl* %30, i32 0, i32 4
  store i64* %29, i64** %31, align 8
  %32 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %7, i64 0, i64 0
  %33 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %8, i64 0, i64 0
  %34 = load %struct.zahl*, %struct.zahl** %4, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 bitcast (i32 (...)* @zsplit_unsigned_fast_small_auto to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %32, %struct.zahl* noundef %33, %struct.zahl* noundef %34, i64 noundef %35)
  br label %45

37:                                               ; preds = %19
  %38 = load i64, i64* %10, align 8
  %39 = and i64 %38, -64
  store i64 %39, i64* %10, align 8
  %40 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %7, i64 0, i64 0
  %41 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %8, i64 0, i64 0
  %42 = load %struct.zahl*, %struct.zahl** %4, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 bitcast (i32 (...)* @zsplit_unsigned_fast_large_taint to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %40, %struct.zahl* noundef %41, %struct.zahl* noundef %42, i64 noundef %43)
  br label %45

45:                                               ; preds = %37, %24
  %46 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %8, i64 0, i64 0
  %47 = call i32 @zzero(%struct.zahl* noundef %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load %struct.zahl*, %struct.zahl** %3, align 8
  %56 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %7, i64 0, i64 0
  call void @zsqr_ll(%struct.zahl* noundef %55, %struct.zahl* noundef %56)
  %57 = load %struct.zahl*, %struct.zahl** %3, align 8
  %58 = load %struct.zahl*, %struct.zahl** %3, align 8
  %59 = load i64, i64* %10, align 8
  %60 = shl i64 %59, 1
  call void @zlsh(%struct.zahl* noundef %57, %struct.zahl* noundef %58, i64 noundef %60)
  br label %89

61:                                               ; preds = %45
  %62 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0
  %63 = call i32 bitcast (i32 (...)* @zinit_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %62)
  %64 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0
  %65 = call i32 bitcast (i32 (...)* @zinit_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %64)
  %66 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0
  %67 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %8, i64 0, i64 0
  call void @zsqr_ll(%struct.zahl* noundef %66, %struct.zahl* noundef %67)
  %68 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0
  %69 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %8, i64 0, i64 0
  %70 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %7, i64 0, i64 0
  call void @zmul_ll(%struct.zahl* noundef %68, %struct.zahl* noundef %69, %struct.zahl* noundef %70)
  %71 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0
  %72 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  call void @zlsh(%struct.zahl* noundef %71, %struct.zahl* noundef %72, i64 noundef %74)
  %75 = load %struct.zahl*, %struct.zahl** %3, align 8
  %76 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %7, i64 0, i64 0
  call void @zsqr_ll(%struct.zahl* noundef %75, %struct.zahl* noundef %76)
  %77 = load %struct.zahl*, %struct.zahl** %3, align 8
  %78 = load %struct.zahl*, %struct.zahl** %3, align 8
  %79 = load i64, i64* %10, align 8
  %80 = shl i64 %79, 1
  call void @zlsh(%struct.zahl* noundef %77, %struct.zahl* noundef %78, i64 noundef %80)
  %81 = load %struct.zahl*, %struct.zahl** %3, align 8
  %82 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0
  call void @zadd_unsigned_assign(%struct.zahl* noundef %81, %struct.zahl* noundef %82)
  %83 = load %struct.zahl*, %struct.zahl** %3, align 8
  %84 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0
  call void @zadd_unsigned_assign(%struct.zahl* noundef %83, %struct.zahl* noundef %84)
  %85 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %6, i64 0, i64 0
  %86 = call i32 bitcast (i32 (...)* @zfree_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %85)
  %87 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %5, i64 0, i64 0
  %88 = call i32 bitcast (i32 (...)* @zfree_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %87)
  br label %89

89:                                               ; preds = %15, %61, %54
  ret void
}

declare i64 @zbits(%struct.zahl* noundef) #1

declare i32 @zsqr_ll_single_char(...) #1

declare i32 @zsplit_unsigned_fast_small_auto(...) #1

declare i32 @zsplit_unsigned_fast_large_taint(...) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zlsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

declare i32 @zinit_temp(...) #1

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zadd_unsigned_assign(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zfree_temp(...) #1

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
