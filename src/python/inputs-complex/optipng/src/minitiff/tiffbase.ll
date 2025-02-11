; ModuleID = 'tiffbase.c'
source_filename = "tiffbase.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.minitiff_info = type { void (i8*)*, void (i8*)*, i32, i64, i64, i32, i32, i32, i64, i64*, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Invalid TIFF dimensions\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid TIFF strip info\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unknown photometric interpretation\00", align 1
@minitiff_sig_m = constant [4 x i8] c"MM\00*", align 1
@minitiff_sig_i = constant [4 x i8] c"II*\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"** Error: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"** Warning: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @minitiff_init_info(%struct.minitiff_info* noundef %0) #0 {
  %2 = alloca %struct.minitiff_info*, align 8
  store %struct.minitiff_info* %0, %struct.minitiff_info** %2, align 8
  %3 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %4 = bitcast %struct.minitiff_info* %3 to i8*
  %5 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %6 = bitcast %struct.minitiff_info* %5 to i8*
  %7 = call i64 @llvm.objectsize.i64.p0i8(i8* %6, i1 false, i1 true, i1 false)
  %8 = call i8* @__memset_chk(i8* noundef %4, i32 noundef 0, i64 noundef 80, i64 noundef %7) #6
  %9 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %10 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %9, i32 0, i32 7
  store i32 -1, i32* %10, align 8
  ret void
}

; Function Attrs: nounwind
declare i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @minitiff_validate_info(%struct.minitiff_info* noundef %0) #0 {
  %2 = alloca %struct.minitiff_info*, align 8
  store %struct.minitiff_info* %0, %struct.minitiff_info** %2, align 8
  %3 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %4 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %9 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %14 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %19 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %12, %7, %1
  %23 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  call void @minitiff_error(%struct.minitiff_info* noundef %23, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %26 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %25, i32 0, i32 9
  %27 = load i64*, i64** %26, align 8
  %28 = icmp eq i64* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %31 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %24
  %35 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  call void @minitiff_error(%struct.minitiff_info* noundef %35, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %38 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = icmp uge i32 %39, 3
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  call void @minitiff_error(%struct.minitiff_info* noundef %42, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @minitiff_error(%struct.minitiff_info* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.minitiff_info*, align 8
  %4 = alloca i8*, align 8
  store %struct.minitiff_info* %0, %struct.minitiff_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %6 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %5, i32 0, i32 0
  %7 = load void (i8*)*, void (i8*)** %6, align 8
  %8 = icmp ne void (i8*)* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %11 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %10, i32 0, i32 0
  %12 = load void (i8*)*, void (i8*)** %11, align 8
  %13 = load i8*, i8** %4, align 8
  call void %12(i8* noundef %13)
  br label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  call void @minitiff_default_error_handler(i8* noundef %15)
  br label %16

16:                                               ; preds = %14, %9
  call void @abort() #7
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @minitiff_destroy_info(%struct.minitiff_info* noundef %0) #0 {
  %2 = alloca %struct.minitiff_info*, align 8
  store %struct.minitiff_info* %0, %struct.minitiff_info** %2, align 8
  %3 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %4 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %3, i32 0, i32 9
  %5 = load i64*, i64** %4, align 8
  %6 = icmp ne i64* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %9 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %8, i32 0, i32 9
  %10 = load i64*, i64** %9, align 8
  %11 = bitcast i64* %10 to i8*
  call void @free(i8* noundef %11)
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @minitiff_default_error_handler(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* noundef %4)
  call void @exit(i32 noundef 1) #8
  unreachable
}

; Function Attrs: cold noreturn
declare void @abort() #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @minitiff_warning(%struct.minitiff_info* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.minitiff_info*, align 8
  %4 = alloca i8*, align 8
  store %struct.minitiff_info* %0, %struct.minitiff_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %6 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %5, i32 0, i32 1
  %7 = load void (i8*)*, void (i8*)** %6, align 8
  %8 = icmp ne void (i8*)* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.minitiff_info*, %struct.minitiff_info** %3, align 8
  %11 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %10, i32 0, i32 1
  %12 = load void (i8*)*, void (i8*)** %11, align 8
  %13 = load i8*, i8** %4, align 8
  call void %12(i8* noundef %13)
  br label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  call void @minitiff_default_warning_handler(i8* noundef %15)
  br label %16

16:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @minitiff_default_warning_handler(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* noundef %4)
  ret void
}

declare i32 @fprintf(%struct.__sFILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #5

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind }
attributes #7 = { cold noreturn }
attributes #8 = { noreturn }

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
