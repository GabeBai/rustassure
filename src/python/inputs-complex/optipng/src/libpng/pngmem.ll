; ModuleID = 'pngmem.c'
source_filename = "pngmem.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type { void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*, i8*, void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)*, i8*, i32, i32, i32, i32, %struct.z_stream_s, %struct.png_compression_buffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i64, i32, i32, %struct.png_color_struct*, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.png_color_16_struct, {}*, i32, i32, %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)*, i32, i32, i32, i8*, i8*, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, i8*, i64, i32, i32, i8*, [4 x void (%struct.png_row_info_struct*, i8*, i8*)*] }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }
%struct.png_compression_buffer = type { %struct.png_compression_buffer*, [1 x i8] }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [28 x i8] c"internal error: array alloc\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"internal error: array realloc\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_destroy_png_struct(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  %3 = alloca %struct.png_struct_def, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %5 = icmp ne %struct.png_struct_def* %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %8 = bitcast %struct.png_struct_def* %3 to i8*
  %9 = bitcast %struct.png_struct_def* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 600, i1 false)
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %11 = bitcast %struct.png_struct_def* %10 to i8*
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %13 = bitcast %struct.png_struct_def* %12 to i8*
  %14 = call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false, i1 true, i1 false)
  %15 = call i8* @__memset_chk(i8* noundef %11, i32 noundef 0, i64 noundef 600, i64 noundef %14) #7
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %17 = bitcast %struct.png_struct_def* %16 to i8*
  call void @png_free(%struct.png_struct_def* noundef %3, i8* noundef %17)
  br label %18

18:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_free(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %13

11:                                               ; preds = %7
  %12 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %12)
  br label %13

13:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define noalias i8* @png_calloc(%struct.png_struct_def* noalias noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %6, i64 noundef %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @llvm.objectsize.i64.p0i8(i8* %14, i1 false, i1 true, i1 false)
  %16 = call i8* @__memset_chk(i8* noundef %12, i32 noundef 0, i64 noundef %13, i64 noundef %15) #7
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i8*, i8** %5, align 8
  ret i8* %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define noalias i8* @png_malloc(%struct.png_struct_def* noalias noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = icmp eq %struct.png_struct_def* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %20

10:                                               ; preds = %2
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call noalias i8* @png_malloc_base(%struct.png_struct_def* noundef %11, i64 noundef %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %17, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #8
  unreachable

18:                                               ; preds = %10
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %18, %9
  %21 = load i8*, i8** %3, align 8
  ret i8* %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define noalias i8* @png_malloc_base(%struct.png_struct_def* noalias noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ugt i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp ule i64 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i64, i64* %5, align 8
  %14 = call i8* @malloc(i64 noundef %13) #9
  store i8* %14, i8** %3, align 8
  br label %16

15:                                               ; preds = %9, %2
  store i8* null, i8** %3, align 8
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i8*, i8** %3, align 8
  ret i8* %17
}

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define noalias i8* @png_malloc_array(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %3
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %13, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #8
  unreachable

14:                                               ; preds = %9
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i8* @png_malloc_array_checked(%struct.png_struct_def* noundef %15, i32 noundef %16, i64 noundef %17)
  ret i8* %18
}

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @png_malloc_array_checked(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = udiv i64 -1, %12
  %14 = icmp ule i64 %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = mul i64 %17, %18
  %20 = call noalias i8* @png_malloc_base(%struct.png_struct_def* noundef %16, i64 noundef %19)
  store i8* %20, i8** %4, align 8
  br label %22

21:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i8*, i8** %4, align 8
  ret i8* %23
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define noalias i8* @png_realloc_array(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.png_struct_def*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %5
  %16 = load i64, i64* %11, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %18, %15, %5
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %7, align 8
  call void @png_error(%struct.png_struct_def* noundef %28, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #8
  unreachable

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 2147483647, %31
  %33 = icmp sle i32 %30, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %29
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i64, i64* %11, align 8
  %40 = call i8* @png_malloc_array_checked(%struct.png_struct_def* noundef %35, i32 noundef %38, i64 noundef %39)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %76

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = mul i64 %49, %51
  %53 = load i8*, i8** %12, align 8
  %54 = call i64 @llvm.objectsize.i64.p0i8(i8* %53, i1 false, i1 true, i1 false)
  %55 = call i8* @__memcpy_chk(i8* noundef %47, i8* noundef %48, i64 noundef %52, i64 noundef %54) #7
  br label %56

56:                                               ; preds = %46, %43
  %57 = load i8*, i8** %12, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = mul i64 %58, %60
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = mul i64 %63, %65
  %67 = load i8*, i8** %12, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = mul i64 %68, %70
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = call i64 @llvm.objectsize.i64.p0i8(i8* %72, i1 false, i1 true, i1 false)
  %74 = call i8* @__memset_chk(i8* noundef %62, i32 noundef 0, i64 noundef %66, i64 noundef %73) #7
  %75 = load i8*, i8** %12, align 8
  store i8* %75, i8** %6, align 8
  br label %78

76:                                               ; preds = %34
  br label %77

77:                                               ; preds = %76, %29
  store i8* null, i8** %6, align 8
  br label %78

78:                                               ; preds = %77, %56
  %79 = load i8*, i8** %6, align 8
  ret i8* %79
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define noalias i8* @png_malloc_warn(%struct.png_struct_def* noalias noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = icmp ne %struct.png_struct_def* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call noalias i8* @png_malloc_base(%struct.png_struct_def* noundef %10, i64 noundef %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %3, align 8
  br label %20

17:                                               ; preds = %9
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %18, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  store i8* null, i8** %3, align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i8*, i8** %3, align 8
  ret i8* %21
}

declare void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #6

declare void @free(i8* noundef) #6

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { allocsize(0) }

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
