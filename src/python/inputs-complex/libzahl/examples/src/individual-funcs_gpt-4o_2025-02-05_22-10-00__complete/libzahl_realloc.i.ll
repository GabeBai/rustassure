; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_realloc.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_realloc.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_pool_n = external global [64 x i64], align 8
@libzahl_pool = external global [64 x i64**], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_realloc(%struct.zahl* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.zahl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.zahl* %0, %struct.zahl** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @llvm.ctlz.i64(i64 %8, i1 false)
  %10 = trunc i64 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = sub i64 63, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = shl i64 %13, %12
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %15, %16
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = shl i64 %26, 1
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %23, %2
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %28
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %43
  %45 = load i64**, i64*** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64*, i64** %45, i64 %48
  %50 = load i64*, i64** %49, align 8
  store i64* %50, i64** %7, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load %struct.zahl*, %struct.zahl** %3, align 8
  %53 = getelementptr inbounds %struct.zahl, %struct.zahl* %52, i32 0, i32 4
  %54 = load i64*, i64** %53, align 8
  %55 = load %struct.zahl*, %struct.zahl** %3, align 8
  %56 = getelementptr inbounds %struct.zahl, %struct.zahl* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %51, i64* noundef %54, i64 noundef %57)
  %59 = load %struct.zahl*, %struct.zahl** %3, align 8
  call void @zfree(%struct.zahl* noundef %59)
  %60 = load i64*, i64** %7, align 8
  %61 = load %struct.zahl*, %struct.zahl** %3, align 8
  %62 = getelementptr inbounds %struct.zahl, %struct.zahl* %61, i32 0, i32 4
  store i64* %60, i64** %62, align 8
  br label %88

63:                                               ; preds = %28
  %64 = load %struct.zahl*, %struct.zahl** %3, align 8
  %65 = getelementptr inbounds %struct.zahl, %struct.zahl* %64, i32 0, i32 4
  %66 = load i64*, i64** %65, align 8
  %67 = bitcast i64* %66 to i8*
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, 4
  %70 = mul i64 %69, 8
  %71 = call i8* @realloc(i8* noundef %67, i64 noundef %70) #4
  %72 = bitcast i8* %71 to i64*
  %73 = load %struct.zahl*, %struct.zahl** %3, align 8
  %74 = getelementptr inbounds %struct.zahl, %struct.zahl* %73, i32 0, i32 4
  store i64* %72, i64** %74, align 8
  %75 = load %struct.zahl*, %struct.zahl** %3, align 8
  %76 = getelementptr inbounds %struct.zahl, %struct.zahl* %75, i32 0, i32 4
  %77 = load i64*, i64** %76, align 8
  %78 = icmp ne i64* %77, null
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = sext i32 %82 to i64
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %63
  %86 = call i32 bitcast (i32 (...)* @libzahl_memfailure to i32 ()*)()
  br label %87

87:                                               ; preds = %85, %63
  br label %88

88:                                               ; preds = %87, %38
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.zahl*, %struct.zahl** %3, align 8
  %91 = getelementptr inbounds %struct.zahl, %struct.zahl* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

declare i32 @libzahl_memcpy(...) #2

declare void @zfree(%struct.zahl* noundef) #2

; Function Attrs: allocsize(1)
declare i8* @realloc(i8* noundef, i64 noundef) #3

declare i32 @libzahl_memfailure(...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(1) }

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
