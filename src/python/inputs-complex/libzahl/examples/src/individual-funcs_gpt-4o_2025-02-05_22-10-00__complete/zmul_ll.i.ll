; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmul_ll.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmul_ll.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zmul_ll(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1 x %struct.zahl], align 8
  %10 = alloca [1 x %struct.zahl], align 8
  %11 = alloca [1 x %struct.zahl], align 8
  %12 = alloca [1 x %struct.zahl], align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store %struct.zahl* %2, %struct.zahl** %6, align 8
  %13 = load %struct.zahl*, %struct.zahl** %5, align 8
  %14 = load %struct.zahl*, %struct.zahl** %6, align 8
  %15 = call i32 bitcast (i32 (...)* @zzero1 to i32 (%struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %13, %struct.zahl* noundef %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.zahl*, %struct.zahl** %4, align 8
  %24 = getelementptr inbounds %struct.zahl, %struct.zahl* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %114

25:                                               ; preds = %3
  %26 = load %struct.zahl*, %struct.zahl** %5, align 8
  %27 = call i64 @zbits(%struct.zahl* noundef %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.zahl*, %struct.zahl** %5, align 8
  %29 = load %struct.zahl*, %struct.zahl** %6, align 8
  %30 = icmp eq %struct.zahl* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i64, i64* %7, align 8
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.zahl*, %struct.zahl** %6, align 8
  %35 = call i64 @zbits(%struct.zahl* noundef %34)
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i64 [ %32, %31 ], [ %35, %33 ]
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %38, %39
  %41 = icmp ule i64 %40, 64
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.zahl*, %struct.zahl** %4, align 8
  %44 = load %struct.zahl*, %struct.zahl** %5, align 8
  %45 = load %struct.zahl*, %struct.zahl** %6, align 8
  %46 = call i32 bitcast (i32 (...)* @zmul_ll_single_char to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %43, %struct.zahl* noundef %44, %struct.zahl* noundef %45)
  br label %114

47:                                               ; preds = %36
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  br label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = lshr i64 %57, 1
  store i64 %58, i64* %8, align 8
  %59 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %9, i64 0, i64 0
  %60 = call i32 bitcast (i32 (...)* @zinit_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %59)
  %61 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %10, i64 0, i64 0
  %62 = call i32 bitcast (i32 (...)* @zinit_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %61)
  %63 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %11, i64 0, i64 0
  %64 = call i32 bitcast (i32 (...)* @zinit_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %63)
  %65 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %12, i64 0, i64 0
  %66 = call i32 bitcast (i32 (...)* @zinit_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %65)
  %67 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %9, i64 0, i64 0
  %68 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %10, i64 0, i64 0
  %69 = load %struct.zahl*, %struct.zahl** %5, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 bitcast (i32 (...)* @zsplit_pz to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %67, %struct.zahl* noundef %68, %struct.zahl* noundef %69, i64 noundef %70)
  %72 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %11, i64 0, i64 0
  %73 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %12, i64 0, i64 0
  %74 = load %struct.zahl*, %struct.zahl** %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 bitcast (i32 (...)* @zsplit_pz to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %72, %struct.zahl* noundef %73, %struct.zahl* noundef %74, i64 noundef %75)
  %77 = load %struct.zahl*, %struct.zahl** %4, align 8
  %78 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %10, i64 0, i64 0
  %79 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %12, i64 0, i64 0
  call void @zmul_ll(%struct.zahl* noundef %77, %struct.zahl* noundef %78, %struct.zahl* noundef %79)
  %80 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %10, i64 0, i64 0
  %81 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %9, i64 0, i64 0
  call void @zadd_unsigned_assign(%struct.zahl* noundef %80, %struct.zahl* noundef %81)
  %82 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %12, i64 0, i64 0
  %83 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %11, i64 0, i64 0
  call void @zadd_unsigned_assign(%struct.zahl* noundef %82, %struct.zahl* noundef %83)
  %84 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %10, i64 0, i64 0
  %85 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %10, i64 0, i64 0
  %86 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %12, i64 0, i64 0
  call void @zmul_ll(%struct.zahl* noundef %84, %struct.zahl* noundef %85, %struct.zahl* noundef %86)
  %87 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %12, i64 0, i64 0
  %88 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %9, i64 0, i64 0
  %89 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %11, i64 0, i64 0
  call void @zmul_ll(%struct.zahl* noundef %87, %struct.zahl* noundef %88, %struct.zahl* noundef %89)
  %90 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %10, i64 0, i64 0
  %91 = load %struct.zahl*, %struct.zahl** %4, align 8
  call void @zsub_nonnegative_assign(%struct.zahl* noundef %90, %struct.zahl* noundef %91)
  %92 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %10, i64 0, i64 0
  %93 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %12, i64 0, i64 0
  call void @zsub_nonnegative_assign(%struct.zahl* noundef %92, %struct.zahl* noundef %93)
  %94 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %10, i64 0, i64 0
  %95 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %10, i64 0, i64 0
  %96 = load i64, i64* %8, align 8
  call void @zlsh(%struct.zahl* noundef %94, %struct.zahl* noundef %95, i64 noundef %96)
  %97 = load i64, i64* %8, align 8
  %98 = shl i64 %97, 1
  store i64 %98, i64* %8, align 8
  %99 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %12, i64 0, i64 0
  %100 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %12, i64 0, i64 0
  %101 = load i64, i64* %8, align 8
  call void @zlsh(%struct.zahl* noundef %99, %struct.zahl* noundef %100, i64 noundef %101)
  %102 = load %struct.zahl*, %struct.zahl** %4, align 8
  %103 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %10, i64 0, i64 0
  call void @zadd_unsigned_assign(%struct.zahl* noundef %102, %struct.zahl* noundef %103)
  %104 = load %struct.zahl*, %struct.zahl** %4, align 8
  %105 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %12, i64 0, i64 0
  call void @zadd_unsigned_assign(%struct.zahl* noundef %104, %struct.zahl* noundef %105)
  %106 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %12, i64 0, i64 0
  %107 = call i32 bitcast (i32 (...)* @zfree_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %106)
  %108 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %11, i64 0, i64 0
  %109 = call i32 bitcast (i32 (...)* @zfree_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %108)
  %110 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %10, i64 0, i64 0
  %111 = call i32 bitcast (i32 (...)* @zfree_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %110)
  %112 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %9, i64 0, i64 0
  %113 = call i32 bitcast (i32 (...)* @zfree_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %112)
  br label %114

114:                                              ; preds = %55, %42, %22
  ret void
}

declare i32 @zzero1(...) #1

declare i64 @zbits(%struct.zahl* noundef) #1

declare i32 @zmul_ll_single_char(...) #1

declare i32 @zinit_temp(...) #1

declare i32 @zsplit_pz(...) #1

declare void @zadd_unsigned_assign(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zsub_nonnegative_assign(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zlsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

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
