; ModuleID = 'tiffbase.c'
source_filename = "tiffbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.minitiff_info = type { void (i8*)*, void (i8*)*, i32, i64, i64, i32, i32, i32, i64, i64*, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Invalid TIFF dimensions\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid TIFF strip info\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unknown photometric interpretation\00", align 1
@minitiff_sig_m = dso_local constant [4 x i8] c"MM\00*", align 1
@minitiff_sig_i = dso_local constant [4 x i8] c"II*\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"** Error: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"** Warning: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minitiff_init_info(%struct.minitiff_info* noundef %0) #0 {
  %2 = alloca %struct.minitiff_info*, align 8
  store %struct.minitiff_info* %0, %struct.minitiff_info** %2, align 8
  %3 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %4 = bitcast %struct.minitiff_info* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 80, i1 false)
  %5 = load %struct.minitiff_info*, %struct.minitiff_info** %2, align 8
  %6 = getelementptr inbounds %struct.minitiff_info, %struct.minitiff_info* %5, i32 0, i32 7
  store i32 -1, i32* %6, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minitiff_validate_info(%struct.minitiff_info* noundef %0) #0 {
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minitiff_error(%struct.minitiff_info* noundef %0, i8* noundef %1) #0 {
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
  call void @abort() #5
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minitiff_destroy_info(%struct.minitiff_info* noundef %0) #0 {
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
  call void @free(i8* noundef %11) #6
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minitiff_default_error_handler(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* noundef %4)
  call void @exit(i32 noundef 1) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minitiff_warning(%struct.minitiff_info* noundef %0, i8* noundef %1) #0 {
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

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minitiff_default_warning_handler(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* noundef %4)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
