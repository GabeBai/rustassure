; ModuleID = 'ratio.c'
source_filename = "ratio.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_ulratio = type { i64, i64 }
%struct.opng_ullratio = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"??%%\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"INFTY%%\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%u.%02u%%\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%llu%02u%%\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%llu.%02ux\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%llux\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_ulratio_to_factor_string(i8* noundef %0, i64 noundef %1, %struct.opng_ulratio* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.opng_ulratio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.opng_ulratio* %2, %struct.opng_ulratio** %6, align 8
  %9 = load %struct.opng_ulratio*, %struct.opng_ulratio** %6, align 8
  %10 = getelementptr inbounds %struct.opng_ulratio, %struct.opng_ulratio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.opng_ulratio*, %struct.opng_ulratio** %6, align 8
  %13 = getelementptr inbounds %struct.opng_ulratio, %struct.opng_ulratio* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @opng_sprint_uratio_impl(i8* noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i32 noundef 0)
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @opng_sprint_uratio_impl(i8* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i64, i64* %10, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %26 = call i32 (i8*, i64, i8*, ...) @opng_snprintf_impl(i8* noundef %20, i64 noundef %21, i8* noundef %25)
  store i32 %26, i32* %6, align 4
  br label %123

27:                                               ; preds = %5
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = sub i64 %33, %34
  %36 = udiv i64 %32, %35
  %37 = icmp ult i64 %36, 20000
  br i1 %37, label %38, label %64

38:                                               ; preds = %31
  store i32 10000, i32* %15, align 4
  %39 = load i64, i64* %9, align 8
  %40 = uitofp i64 %39 to double
  %41 = load i32, i32* %15, align 4
  %42 = uitofp i32 %41 to double
  %43 = fmul double %40, %42
  %44 = load i64, i64* %10, align 8
  %45 = uitofp i64 %44 to double
  %46 = fdiv double %43, %45
  store double %46, double* %16, align 8
  %47 = load double, double* %16, align 8
  %48 = fadd double %47, 5.000000e-01
  %49 = fptoui double %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp uge i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load i32, i32* %15, align 4
  %55 = sub i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %53, %38
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* %14, align 4
  %60 = udiv i32 %59, 100
  %61 = load i32, i32* %14, align 4
  %62 = urem i32 %61, 100
  %63 = call i32 (i8*, i64, i8*, ...) @opng_snprintf_impl(i8* noundef %57, i64 noundef %58, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef %60, i32 noundef %62)
  store i32 %63, i32* %6, align 4
  br label %123

64:                                               ; preds = %31, %27
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = udiv i64 %65, %66
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = urem i64 %68, %69
  store i64 %70, i64* %13, align 8
  store i32 100, i32* %15, align 4
  %71 = load i64, i64* %13, align 8
  %72 = uitofp i64 %71 to double
  %73 = load i32, i32* %15, align 4
  %74 = uitofp i32 %73 to double
  %75 = fmul double %72, %74
  %76 = load i64, i64* %10, align 8
  %77 = uitofp i64 %76 to double
  %78 = fdiv double %75, %77
  store double %78, double* %16, align 8
  %79 = load double, double* %16, align 8
  %80 = fadd double %79, 5.000000e-01
  %81 = fptoui double %80 to i32
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp uge i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %85, %64
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 (i8*, i64, i8*, ...) @opng_snprintf_impl(i8* noundef %92, i64 noundef %93, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 noundef %94, i32 noundef %95)
  store i32 %96, i32* %6, align 4
  br label %123

97:                                               ; preds = %88
  %98 = load i64, i64* %12, align 8
  %99 = icmp ult i64 %98, 100
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i8*, i8** %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i32 (i8*, i64, i8*, ...) @opng_snprintf_impl(i8* noundef %101, i64 noundef %102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 noundef %103, i32 noundef %104)
  store i32 %105, i32* %6, align 4
  br label %123

106:                                              ; preds = %97
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %10, align 8
  %109 = udiv i64 %107, %108
  store i64 %109, i64* %12, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* %10, align 8
  %112 = sub i64 %111, 1
  %113 = udiv i64 %112, 2
  %114 = icmp ugt i64 %110, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i64, i64* %12, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %12, align 8
  br label %118

118:                                              ; preds = %115, %106
  %119 = load i8*, i8** %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %12, align 8
  %122 = call i32 (i8*, i64, i8*, ...) @opng_snprintf_impl(i8* noundef %119, i64 noundef %120, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 noundef %121)
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %118, %100, %91, %56, %19
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_ulratio_to_percent_string(i8* noundef %0, i64 noundef %1, %struct.opng_ulratio* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.opng_ulratio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.opng_ulratio* %2, %struct.opng_ulratio** %6, align 8
  %9 = load %struct.opng_ulratio*, %struct.opng_ulratio** %6, align 8
  %10 = getelementptr inbounds %struct.opng_ulratio, %struct.opng_ulratio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.opng_ulratio*, %struct.opng_ulratio** %6, align 8
  %13 = getelementptr inbounds %struct.opng_ulratio, %struct.opng_ulratio* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @opng_sprint_uratio_impl(i8* noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i32 noundef 1)
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_ullratio_to_factor_string(i8* noundef %0, i64 noundef %1, %struct.opng_ullratio* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.opng_ullratio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.opng_ullratio* %2, %struct.opng_ullratio** %6, align 8
  %9 = load %struct.opng_ullratio*, %struct.opng_ullratio** %6, align 8
  %10 = getelementptr inbounds %struct.opng_ullratio, %struct.opng_ullratio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.opng_ullratio*, %struct.opng_ullratio** %6, align 8
  %13 = getelementptr inbounds %struct.opng_ullratio, %struct.opng_ullratio* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @opng_sprint_uratio_impl(i8* noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i32 noundef 0)
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_ullratio_to_percent_string(i8* noundef %0, i64 noundef %1, %struct.opng_ullratio* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.opng_ullratio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.opng_ullratio* %2, %struct.opng_ullratio** %6, align 8
  %9 = load %struct.opng_ullratio*, %struct.opng_ullratio** %6, align 8
  %10 = getelementptr inbounds %struct.opng_ullratio, %struct.opng_ullratio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.opng_ullratio*, %struct.opng_ullratio** %6, align 8
  %13 = getelementptr inbounds %struct.opng_ullratio, %struct.opng_ullratio* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @opng_sprint_uratio_impl(i8* noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i32 noundef 1)
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @opng_snprintf_impl(i8* noundef %0, i64 noundef %1, i8* noundef %2, ...) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = bitcast i8** %8 to i8*
  call void @llvm.va_start(i8* %10)
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false, i1 true, i1 false)
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @__vsnprintf_chk(i8* noundef %11, i64 noundef %12, i32 noundef 0, i64 noundef %14, i8* noundef %15, i8* noundef %16)
  store i32 %17, i32* %9, align 4
  %18 = bitcast i8** %8 to i8*
  call void @llvm.va_end(i8* %18)
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %6, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21, %3
  %27 = load i64, i64* %6, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %29, %26
  store i32 -1, i32* %4, align 4
  br label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare i32 @__vsnprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

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
