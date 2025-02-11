; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zunsetup.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zunsetup.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_set_up = external global i32, align 4
@libzahl_tmp_div = external global [1 x %struct.zahl], align 8
@libzahl_tmp_mod = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_num = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_mag = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_div = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_rem = external global [1 x %struct.zahl], align 8
@libzahl_tmp_gcd_u = external global [1 x %struct.zahl], align 8
@libzahl_tmp_gcd_v = external global [1 x %struct.zahl], align 8
@libzahl_tmp_sub = external global [1 x %struct.zahl], align 8
@libzahl_tmp_modmul = external global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_b = external global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_c = external global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_d = external global [1 x %struct.zahl], align 8
@libzahl_tmp_modsqr = external global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_a = external global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_b = external global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_d = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_x = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_a = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_d = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_n1 = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_n4 = external global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_ds = external global [64 x [1 x %struct.zahl]], align 8
@libzahl_pool_n = external global [64 x i64], align 8
@libzahl_pool = external global [64 x i64**], align 8
@libzahl_temp_stack = external global %struct.zahl**, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zunsetup() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @libzahl_set_up, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %90

4:                                                ; preds = %0
  store i32 0, i32* @libzahl_set_up, align 4
  %5 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_div, i64 0, i64 0, i32 4), align 8
  %6 = bitcast i64* %5 to i8*
  call void @free(i8* noundef %6)
  %7 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_mod, i64 0, i64 0, i32 4), align 8
  %8 = bitcast i64* %7 to i8*
  call void @free(i8* noundef %8)
  %9 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 4), align 8
  %10 = bitcast i64* %9 to i8*
  call void @free(i8* noundef %10)
  %11 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 4), align 8
  %12 = bitcast i64* %11 to i8*
  call void @free(i8* noundef %12)
  %13 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0, i32 4), align 8
  %14 = bitcast i64* %13 to i8*
  call void @free(i8* noundef %14)
  %15 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0, i32 4), align 8
  %16 = bitcast i64* %15 to i8*
  call void @free(i8* noundef %16)
  %17 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 4), align 8
  %18 = bitcast i64* %17 to i8*
  call void @free(i8* noundef %18)
  %19 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 4), align 8
  %20 = bitcast i64* %19 to i8*
  call void @free(i8* noundef %20)
  %21 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0, i32 4), align 8
  %22 = bitcast i64* %21 to i8*
  call void @free(i8* noundef %22)
  %23 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0, i32 4), align 8
  %24 = bitcast i64* %23 to i8*
  call void @free(i8* noundef %24)
  %25 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0, i32 4), align 8
  %26 = bitcast i64* %25 to i8*
  call void @free(i8* noundef %26)
  %27 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 4), align 8
  %28 = bitcast i64* %27 to i8*
  call void @free(i8* noundef %28)
  %29 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0, i32 4), align 8
  %30 = bitcast i64* %29 to i8*
  call void @free(i8* noundef %30)
  %31 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modsqr, i64 0, i64 0, i32 4), align 8
  %32 = bitcast i64* %31 to i8*
  call void @free(i8* noundef %32)
  %33 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0, i32 4), align 8
  %34 = bitcast i64* %33 to i8*
  call void @free(i8* noundef %34)
  %35 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 4), align 8
  %36 = bitcast i64* %35 to i8*
  call void @free(i8* noundef %36)
  %37 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0, i32 4), align 8
  %38 = bitcast i64* %37 to i8*
  call void @free(i8* noundef %38)
  %39 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 4), align 8
  %40 = bitcast i64* %39 to i8*
  call void @free(i8* noundef %40)
  %41 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0, i32 4), align 8
  %42 = bitcast i64* %41 to i8*
  call void @free(i8* noundef %42)
  %43 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_d, i64 0, i64 0, i32 4), align 8
  %44 = bitcast i64* %43 to i8*
  call void @free(i8* noundef %44)
  %45 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 4), align 8
  %46 = bitcast i64* %45 to i8*
  call void @free(i8* noundef %46)
  %47 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n4, i64 0, i64 0, i32 4), align 8
  %48 = bitcast i64* %47 to i8*
  call void @free(i8* noundef %48)
  store i64 64, i64* %1, align 8
  br label %49

49:                                               ; preds = %53, %4
  %50 = load i64, i64* %1, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %1, align 8
  %52 = icmp ne i64 %50, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i64, i64* %1, align 8
  %55 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 %54
  %56 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %55, i64 0, i64 0
  %57 = getelementptr inbounds %struct.zahl, %struct.zahl* %56, i32 0, i32 4
  %58 = load i64*, i64** %57, align 8
  %59 = bitcast i64* %58 to i8*
  call void @free(i8* noundef %59)
  br label %49, !llvm.loop !10

60:                                               ; preds = %49
  store i64 64, i64* %1, align 8
  br label %61

61:                                               ; preds = %82, %60
  %62 = load i64, i64* %1, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %1, align 8
  %64 = icmp ne i64 %62, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %72, %65
  %67 = load i64, i64* %1, align 8
  %68 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %68, align 8
  %71 = icmp ne i64 %69, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i64, i64* %1, align 8
  %74 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %73
  %75 = load i64**, i64*** %74, align 8
  %76 = load i64, i64* %1, align 8
  %77 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i64*, i64** %75, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = bitcast i64* %80 to i8*
  call void @free(i8* noundef %81)
  br label %66, !llvm.loop !12

82:                                               ; preds = %66
  %83 = load i64, i64* %1, align 8
  %84 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %83
  %85 = load i64**, i64*** %84, align 8
  %86 = bitcast i64** %85 to i8*
  call void @free(i8* noundef %86)
  br label %61, !llvm.loop !13

87:                                               ; preds = %61
  %88 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8
  %89 = bitcast %struct.zahl** %88 to i8*
  call void @free(i8* noundef %89)
  br label %90

90:                                               ; preds = %87, %0
  ret void
}

declare void @free(i8* noundef) #1

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
!13 = distinct !{!13, !11}
