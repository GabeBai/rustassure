; ModuleID = 'pngset.c'
source_filename = "pngset.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type { void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*, i8*, void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)*, i8*, i32, i32, i32, i32, %struct.z_stream_s, %struct.png_compression_buffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i64, i32, i32, %struct.png_color_struct*, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.png_color_16_struct, void (%struct.png_struct_def*)*, i32, i32, %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)*, i32, i32, i32, i8*, i8*, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, i8*, i64, i32, i32, i8*, [4 x void (%struct.png_row_info_struct*, i8*, i8*)*] }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }
%struct.png_compression_buffer = type { %struct.png_compression_buffer*, [1 x i8] }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }
%struct.png_info_def = type { i32, i32, i32, i64, %struct.png_color_struct*, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, %struct.png_color_16_struct, i16*, i32, %struct.png_unknown_chunk_t*, i32, i8** }

@.str = private unnamed_addr constant [46 x i8] c"Invalid palette size, hIST allocation skipped\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Insufficient memory for hIST chunk data\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid palette length\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Invalid palette\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"tRNS chunk has out-of-range samples for bit_depth\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"too many unknown chunks\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unknown chunk: out of memory\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"invalid unknown chunk location\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"png_set_keep_unknown_chunks: invalid keep\00", align 1
@png_set_keep_unknown_chunks.chunks_to_ignore = internal constant [85 x i8] c"bKGD\00cHRM\00gAMA\00hIST\00iCCP\00iTXt\00oFFs\00pCAL\00pHYs\00sBIT\00sCAL\00sPLT\00sTER\00sRGB\00tEXt\00tIME\00zTXt\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"png_set_keep_unknown_chunks: no chunk list\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"png_set_keep_unknown_chunks: too many chunks\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"invalid compression buffer size\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"Compression buffer size cannot be changed because it is in use\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Compression buffer size limited to system maximum\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"Compression buffer size cannot be reduced below 6\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"png_set_unknown_chunks now expects a valid location\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"invalid location in png_set_unknown_chunks\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_bKGD(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, %struct.png_color_16_struct* noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca %struct.png_color_16_struct*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store %struct.png_color_16_struct* %2, %struct.png_color_16_struct** %6, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = icmp eq %struct.png_struct_def* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %11 = icmp eq %struct.png_info_def* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %6, align 8
  %14 = icmp eq %struct.png_color_16_struct* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9, %3
  br label %26

16:                                               ; preds = %12
  %17 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %18 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %17, i32 0, i32 19
  %19 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %6, align 8
  %20 = bitcast %struct.png_color_16_struct* %18 to i8*
  %21 = bitcast %struct.png_color_16_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %20, i8* align 2 %21, i64 10, i1 false)
  %22 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %23 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, 32
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_hIST(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i16* noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i16* %2, i16** %6, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %9 = icmp eq %struct.png_struct_def* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %12 = icmp eq %struct.png_info_def* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  br label %74

14:                                               ; preds = %10
  %15 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %16 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %15, i32 0, i32 5
  %17 = load i16, i16* %16, align 8
  %18 = zext i16 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %22 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %21, i32 0, i32 5
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = icmp sgt i32 %24, 256
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %14
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %27, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %74

28:                                               ; preds = %20
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %30 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %29, %struct.png_info_def* noundef %30, i32 noundef 8, i32 noundef 0)
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %32 = call noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef %31, i64 noundef 512)
  %33 = bitcast i8* %32 to i16*
  %34 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %35 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %34, i32 0, i32 20
  store i16* %33, i16** %35, align 8
  %36 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %37 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %36, i32 0, i32 20
  %38 = load i16*, i16** %37, align 8
  %39 = icmp eq i16* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %41, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %74

42:                                               ; preds = %28
  %43 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %44 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %43, i32 0, i32 21
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, 8
  store i32 %46, i32* %44, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %66, %42
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %50 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %49, i32 0, i32 5
  %51 = load i16, i16* %50, align 8
  %52 = zext i16 %51 to i32
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load i16*, i16** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, i16* %55, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %61 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %60, i32 0, i32 20
  %62 = load i16*, i16** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i16, i16* %62, i64 %64
  store i16 %59, i16* %65, align 2
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %47, !llvm.loop !10

69:                                               ; preds = %47
  %70 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %71 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, 64
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %69, %40, %26, %13
  ret void
}

declare void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #2

declare void @png_free_data(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) #2

declare noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_IHDR(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca %struct.png_struct_def*, align 8
  %11 = alloca %struct.png_info_def*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %10, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %10, align 8
  %20 = icmp eq %struct.png_struct_def* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %9
  %22 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %23 = icmp eq %struct.png_info_def* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %9
  br label %154

25:                                               ; preds = %21
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %28 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %31 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %14, align 4
  %33 = trunc i32 %32 to i8
  %34 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %35 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %34, i32 0, i32 7
  store i8 %33, i8* %35, align 4
  %36 = load i32, i32* %15, align 4
  %37 = trunc i32 %36 to i8
  %38 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %39 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %38, i32 0, i32 8
  store i8 %37, i8* %39, align 1
  %40 = load i32, i32* %17, align 4
  %41 = trunc i32 %40 to i8
  %42 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %43 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %42, i32 0, i32 9
  store i8 %41, i8* %43, align 2
  %44 = load i32, i32* %18, align 4
  %45 = trunc i32 %44 to i8
  %46 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %47 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %46, i32 0, i32 10
  store i8 %45, i8* %47, align 1
  %48 = load i32, i32* %16, align 4
  %49 = trunc i32 %48 to i8
  %50 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %51 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %50, i32 0, i32 11
  store i8 %49, i8* %51, align 8
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %10, align 8
  %53 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %54 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %57 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %60 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %59, i32 0, i32 7
  %61 = load i8, i8* %60, align 4
  %62 = zext i8 %61 to i32
  %63 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %64 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %63, i32 0, i32 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %68 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %67, i32 0, i32 11
  %69 = load i8, i8* %68, align 8
  %70 = zext i8 %69 to i32
  %71 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %72 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %71, i32 0, i32 9
  %73 = load i8, i8* %72, align 2
  %74 = zext i8 %73 to i32
  %75 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %76 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %75, i32 0, i32 10
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  call void @png_check_IHDR(%struct.png_struct_def* noundef %52, i32 noundef %55, i32 noundef %58, i32 noundef %62, i32 noundef %66, i32 noundef %70, i32 noundef %74, i32 noundef %78)
  %79 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %80 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %79, i32 0, i32 8
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %84, label %87

84:                                               ; preds = %25
  %85 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %86 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %85, i32 0, i32 12
  store i8 1, i8* %86, align 1
  br label %101

87:                                               ; preds = %25
  %88 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %89 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %88, i32 0, i32 8
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 2
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %96 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %95, i32 0, i32 12
  store i8 3, i8* %96, align 1
  br label %100

97:                                               ; preds = %87
  %98 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %99 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %98, i32 0, i32 12
  store i8 1, i8* %99, align 1
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %84
  %102 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %103 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %102, i32 0, i32 8
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %110 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %109, i32 0, i32 12
  %111 = load i8, i8* %110, align 1
  %112 = add i8 %111, 1
  store i8 %112, i8* %110, align 1
  br label %113

113:                                              ; preds = %108, %101
  %114 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %115 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %114, i32 0, i32 12
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %119 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %118, i32 0, i32 7
  %120 = load i8, i8* %119, align 4
  %121 = zext i8 %120 to i32
  %122 = mul nsw i32 %117, %121
  %123 = trunc i32 %122 to i8
  %124 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %125 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %124, i32 0, i32 13
  store i8 %123, i8* %125, align 2
  %126 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %127 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %126, i32 0, i32 13
  %128 = load i8, i8* %127, align 2
  %129 = zext i8 %128 to i32
  %130 = icmp sge i32 %129, 8
  br i1 %130, label %131, label %140

131:                                              ; preds = %113
  %132 = load i32, i32* %12, align 4
  %133 = zext i32 %132 to i64
  %134 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %135 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %134, i32 0, i32 13
  %136 = load i8, i8* %135, align 2
  %137 = zext i8 %136 to i64
  %138 = lshr i64 %137, 3
  %139 = mul i64 %133, %138
  br label %150

140:                                              ; preds = %113
  %141 = load i32, i32* %12, align 4
  %142 = zext i32 %141 to i64
  %143 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %144 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %143, i32 0, i32 13
  %145 = load i8, i8* %144, align 2
  %146 = zext i8 %145 to i64
  %147 = mul i64 %142, %146
  %148 = add i64 %147, 7
  %149 = lshr i64 %148, 3
  br label %150

150:                                              ; preds = %140, %131
  %151 = phi i64 [ %139, %131 ], [ %149, %140 ]
  %152 = load %struct.png_info_def*, %struct.png_info_def** %11, align 8
  %153 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %150, %24
  ret void
}

declare void @png_check_IHDR(%struct.png_struct_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_PLTE(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, %struct.png_color_struct* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca %struct.png_color_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store %struct.png_color_struct* %2, %struct.png_color_struct** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %11 = icmp eq %struct.png_struct_def* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %14 = icmp eq %struct.png_info_def* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  br label %104

16:                                               ; preds = %12
  %17 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %18 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %17, i32 0, i32 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %24 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %23, i32 0, i32 7
  %25 = load i8, i8* %24, align 4
  %26 = zext i8 %25 to i32
  %27 = shl i32 1, %26
  br label %29

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ %27, %22 ], [ 256, %28 ]
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33, %29
  %38 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %39 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %38, i32 0, i32 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %44, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0)) #6
  unreachable

45:                                               ; preds = %37
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_warning(%struct.png_struct_def* noundef %46, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %104

47:                                               ; preds = %33
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.png_color_struct*, %struct.png_color_struct** %7, align 8
  %52 = icmp eq %struct.png_color_struct* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53, %50
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %57, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #6
  unreachable

58:                                               ; preds = %53
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %60 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %59, %struct.png_info_def* noundef %60, i32 noundef 4096, i32 noundef 0)
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %62 = call noalias i8* @png_calloc(%struct.png_struct_def* noundef %61, i64 noundef 768)
  %63 = bitcast i8* %62 to %struct.png_color_struct*
  %64 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %65 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %64, i32 0, i32 38
  store %struct.png_color_struct* %63, %struct.png_color_struct** %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %58
  %69 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %70 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %69, i32 0, i32 38
  %71 = load %struct.png_color_struct*, %struct.png_color_struct** %70, align 8
  %72 = bitcast %struct.png_color_struct* %71 to i8*
  %73 = load %struct.png_color_struct*, %struct.png_color_struct** %7, align 8
  %74 = bitcast %struct.png_color_struct* %73 to i8*
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 3
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %79 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %78, i32 0, i32 38
  %80 = load %struct.png_color_struct*, %struct.png_color_struct** %79, align 8
  %81 = bitcast %struct.png_color_struct* %80 to i8*
  %82 = call i64 @llvm.objectsize.i64.p0i8(i8* %81, i1 false, i1 true, i1 false)
  %83 = call i8* @__memcpy_chk(i8* noundef %72, i8* noundef %74, i64 noundef %77, i64 noundef %82) #7
  br label %84

84:                                               ; preds = %68, %58
  %85 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %86 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %85, i32 0, i32 38
  %87 = load %struct.png_color_struct*, %struct.png_color_struct** %86, align 8
  %88 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %89 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %88, i32 0, i32 4
  store %struct.png_color_struct* %87, %struct.png_color_struct** %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = trunc i32 %90 to i16
  %92 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %93 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %92, i32 0, i32 39
  store i16 %91, i16* %93, align 8
  %94 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %95 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %94, i32 0, i32 5
  store i16 %91, i16* %95, align 8
  %96 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %97 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %96, i32 0, i32 21
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, 4096
  store i32 %99, i32* %97, align 8
  %100 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %101 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, 8
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %84, %45, %15
  ret void
}

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #3

declare noalias i8* @png_calloc(%struct.png_struct_def* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_sBIT(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, %struct.png_color_8_struct* noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca %struct.png_color_8_struct*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store %struct.png_color_8_struct* %2, %struct.png_color_8_struct** %6, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = icmp eq %struct.png_struct_def* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %11 = icmp eq %struct.png_info_def* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %6, align 8
  %14 = icmp eq %struct.png_color_8_struct* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9, %3
  br label %26

16:                                               ; preds = %12
  %17 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %18 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %17, i32 0, i32 16
  %19 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %6, align 8
  %20 = bitcast %struct.png_color_8_struct* %18 to i8*
  %21 = bitcast %struct.png_color_8_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 1 %21, i64 5, i1 false)
  %22 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %23 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, 2
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_tRNS(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i8* noundef %2, i32 noundef %3, %struct.png_color_16_struct* noundef %4) #0 {
  %6 = alloca %struct.png_struct_def*, align 8
  %7 = alloca %struct.png_info_def*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.png_color_16_struct*, align 8
  %11 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %6, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.png_color_16_struct* %4, %struct.png_color_16_struct** %10, align 8
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %13 = icmp eq %struct.png_struct_def* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %16 = icmp eq %struct.png_info_def* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %5
  br label %132

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %23 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %22, %struct.png_info_def* noundef %23, i32 noundef 8192, i32 noundef 0)
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %25 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %24, i64 noundef 256)
  %26 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %27 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %26, i32 0, i32 17
  store i8* %25, i8** %27, align 8
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 63
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  %34 = icmp sle i32 %33, 256
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %37 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %36, i32 0, i32 17
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %43 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %42, i32 0, i32 17
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @llvm.objectsize.i64.p0i8(i8* %44, i1 false, i1 true, i1 false)
  %46 = call i8* @__memcpy_chk(i8* noundef %38, i8* noundef %39, i64 noundef %41, i64 noundef %45) #7
  br label %47

47:                                               ; preds = %35, %32, %21
  br label %48

48:                                               ; preds = %47, %18
  %49 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %10, align 8
  %50 = icmp ne %struct.png_color_16_struct* %49, null
  br i1 %50, label %51, label %116

51:                                               ; preds = %48
  %52 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %53 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %52, i32 0, i32 7
  %54 = load i8, i8* %53, align 4
  %55 = zext i8 %54 to i32
  %56 = icmp slt i32 %55, 16
  br i1 %56, label %57, label %106

57:                                               ; preds = %51
  %58 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %59 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %58, i32 0, i32 7
  %60 = load i8, i8* %59, align 4
  %61 = zext i8 %60 to i32
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %65 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %64, i32 0, i32 8
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %57
  %70 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %10, align 8
  %71 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %70, i32 0, i32 4
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = load i32, i32* %11, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %103, label %76

76:                                               ; preds = %69, %57
  %77 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %78 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %77, i32 0, i32 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %105

82:                                               ; preds = %76
  %83 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %10, align 8
  %84 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %83, i32 0, i32 1
  %85 = load i16, i16* %84, align 2
  %86 = zext i16 %85 to i32
  %87 = load i32, i32* %11, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %103, label %89

89:                                               ; preds = %82
  %90 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %10, align 8
  %91 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %90, i32 0, i32 2
  %92 = load i16, i16* %91, align 2
  %93 = zext i16 %92 to i32
  %94 = load i32, i32* %11, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %10, align 8
  %98 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %97, i32 0, i32 3
  %99 = load i16, i16* %98, align 2
  %100 = zext i16 %99 to i32
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %96, %89, %82, %69
  %104 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  call void @png_warning(%struct.png_struct_def* noundef %104, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %96, %76
  br label %106

106:                                              ; preds = %105, %51
  %107 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %108 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %107, i32 0, i32 18
  %109 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %10, align 8
  %110 = bitcast %struct.png_color_16_struct* %108 to i8*
  %111 = bitcast %struct.png_color_16_struct* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 2 %111, i64 10, i1 false)
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 1, i32* %9, align 4
  br label %115

115:                                              ; preds = %114, %106
  br label %116

116:                                              ; preds = %115, %48
  %117 = load i32, i32* %9, align 4
  %118 = trunc i32 %117 to i16
  %119 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %120 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %119, i32 0, i32 6
  store i16 %118, i16* %120, align 2
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %125 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, 16
  store i32 %127, i32* %125, align 8
  %128 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %129 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %128, i32 0, i32 21
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, 8192
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %17, %123, %116
  ret void
}

declare noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_unknown_chunks(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, %struct.png_unknown_chunk_t* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca %struct.png_unknown_chunk_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.png_unknown_chunk_t*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store %struct.png_unknown_chunk_t* %2, %struct.png_unknown_chunk_t** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %11 = icmp eq %struct.png_struct_def* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %14 = icmp eq %struct.png_info_def* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %20 = icmp eq %struct.png_unknown_chunk_t* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %12, %4
  br label %138

22:                                               ; preds = %18
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %24 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %25 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %24, i32 0, i32 22
  %26 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %25, align 8
  %27 = bitcast %struct.png_unknown_chunk_t* %26 to i8*
  %28 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %29 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %28, i32 0, i32 23
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call noalias i8* @png_realloc_array(%struct.png_struct_def* noundef %23, i8* noundef %27, i32 noundef %30, i32 noundef %31, i64 noundef 32)
  %33 = bitcast i8* %32 to %struct.png_unknown_chunk_t*
  store %struct.png_unknown_chunk_t* %33, %struct.png_unknown_chunk_t** %9, align 8
  %34 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %35 = icmp eq %struct.png_unknown_chunk_t* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_chunk_report(%struct.png_struct_def* noundef %37, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1)
  br label %138

38:                                               ; preds = %22
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %40 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %41 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %40, i32 0, i32 22
  %42 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %41, align 8
  %43 = bitcast %struct.png_unknown_chunk_t* %42 to i8*
  call void @png_free(%struct.png_struct_def* noundef %39, i8* noundef %43)
  %44 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %45 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %46 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %45, i32 0, i32 22
  store %struct.png_unknown_chunk_t* %44, %struct.png_unknown_chunk_t** %46, align 8
  %47 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %48 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %47, i32 0, i32 21
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, 512
  store i32 %50, i32* %48, align 8
  %51 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %52 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %51, i32 0, i32 23
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %54, i64 %55
  store %struct.png_unknown_chunk_t* %56, %struct.png_unknown_chunk_t** %9, align 8
  br label %57

57:                                               ; preds = %133, %38
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %138

60:                                               ; preds = %57
  %61 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %62 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %61, i32 0, i32 0
  %63 = getelementptr inbounds [5 x i8], [5 x i8]* %62, i64 0, i64 0
  %64 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %65 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %64, i32 0, i32 0
  %66 = getelementptr inbounds [5 x i8], [5 x i8]* %65, i64 0, i64 0
  %67 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %68 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %67, i32 0, i32 0
  %69 = getelementptr inbounds [5 x i8], [5 x i8]* %68, i64 0, i64 0
  %70 = call i64 @llvm.objectsize.i64.p0i8(i8* %69, i1 false, i1 true, i1 false)
  %71 = call i8* @__memcpy_chk(i8* noundef %63, i8* noundef %66, i64 noundef 5, i64 noundef %70) #7
  %72 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %73 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %72, i32 0, i32 0
  %74 = getelementptr inbounds [5 x i8], [5 x i8]* %73, i64 0, i64 4
  store i8 0, i8* %74, align 4
  %75 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %76 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %77 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %76, i32 0, i32 3
  %78 = load i8, i8* %77, align 8
  %79 = zext i8 %78 to i32
  %80 = call zeroext i8 @check_location(%struct.png_struct_def* noundef %75, i32 noundef %79)
  %81 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %82 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %81, i32 0, i32 3
  store i8 %80, i8* %82, align 8
  %83 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %84 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %60
  %88 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %89 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %88, i32 0, i32 1
  store i8* null, i8** %89, align 8
  %90 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %91 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  br label %126

92:                                               ; preds = %60
  %93 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %94 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %95 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call noalias i8* @png_malloc_base(%struct.png_struct_def* noundef %93, i64 noundef %96)
  %98 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %99 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %101 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_chunk_report(%struct.png_struct_def* noundef %105, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 noundef 1)
  br label %133

106:                                              ; preds = %92
  %107 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %108 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %111 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %114 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %117 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @llvm.objectsize.i64.p0i8(i8* %118, i1 false, i1 true, i1 false)
  %120 = call i8* @__memcpy_chk(i8* noundef %109, i8* noundef %112, i64 noundef %115, i64 noundef %119) #7
  %121 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %122 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %125 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %106, %87
  %127 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %9, align 8
  %128 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %127, i32 1
  store %struct.png_unknown_chunk_t* %128, %struct.png_unknown_chunk_t** %9, align 8
  %129 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %130 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %129, i32 0, i32 23
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %126, %104
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %8, align 4
  %136 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %137 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %136, i32 1
  store %struct.png_unknown_chunk_t* %137, %struct.png_unknown_chunk_t** %7, align 8
  br label %57, !llvm.loop !12

138:                                              ; preds = %21, %36, %57
  ret void
}

declare noalias i8* @png_realloc_array(%struct.png_struct_def* noundef, i8* noundef, i32 noundef, i32 noundef, i64 noundef) #2

declare void @png_chunk_report(%struct.png_struct_def* noundef, i8* noundef, i32 noundef) #2

declare void @png_free(%struct.png_struct_def* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i8 @check_location(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 11
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 32768
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_app_warning(%struct.png_struct_def* noundef %16, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0))
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 11
  %21 = trunc i32 %20 to i8
  %22 = zext i8 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %15, %9, %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_error(%struct.png_struct_def* noundef %27, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0)) #6
  unreachable

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %36, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 0, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %30, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 0, %38
  %40 = and i32 %37, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %29, !llvm.loop !13

44:                                               ; preds = %29
  %45 = load i32, i32* %4, align 4
  %46 = trunc i32 %45 to i8
  ret i8 %46
}

declare noalias i8* @png_malloc_base(%struct.png_struct_def* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_unknown_chunk_location(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %10 = icmp ne %struct.png_struct_def* %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %4
  %12 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %13 = icmp ne %struct.png_info_def* %12, null
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %20 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %19, i32 0, i32 23
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %28, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 8, i32* %8, align 4
  br label %34

33:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call zeroext i8 @check_location(%struct.png_struct_def* noundef %36, i32 noundef %37)
  %39 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %40 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %39, i32 0, i32 22
  %41 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %41, i64 %43
  %45 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %44, i32 0, i32 3
  store i8 %38, i8* %45, align 8
  br label %46

46:                                               ; preds = %35, %17, %14, %11, %4
  ret void
}

declare void @png_app_error(%struct.png_struct_def* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_keep_unknown_chunks(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %16 = icmp eq %struct.png_struct_def* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %189

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %25, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %189

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %32 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %31, i32 0, i32 68
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %189

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i8* getelementptr inbounds ([85 x i8], [85 x i8]* @png_set_keep_unknown_chunks.chunks_to_ignore, i64 0, i64 0), i8** %7, align 8
  store i32 17, i32* %10, align 4
  br label %48

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %45, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %189

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %50 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %49, i32 0, i32 69
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %53 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %52, i32 0, i32 70
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %56, %48
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %58, %59
  %61 = icmp ugt i32 %60, 858993459
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %63, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  br label %189

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %64
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add i32 %69, %70
  %72 = mul i32 5, %71
  %73 = zext i32 %72 to i64
  %74 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %68, i64 noundef %73)
  store i8* %74, i8** %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = icmp ugt i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %67
  %78 = load i8*, i8** %9, align 8
  %79 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %80 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %79, i32 0, i32 70
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = mul i32 5, %82
  %84 = zext i32 %83 to i64
  %85 = load i8*, i8** %9, align 8
  %86 = call i64 @llvm.objectsize.i64.p0i8(i8* %85, i1 false, i1 true, i1 false)
  %87 = call i8* @__memcpy_chk(i8* noundef %78, i8* noundef %81, i64 noundef %84, i64 noundef %86) #7
  br label %88

88:                                               ; preds = %77, %67
  br label %98

89:                                               ; preds = %64
  %90 = load i32, i32* %11, align 4
  %91 = icmp ugt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %94 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %93, i32 0, i32 70
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %9, align 8
  br label %97

96:                                               ; preds = %89
  store i8* null, i8** %9, align 8
  br label %97

97:                                               ; preds = %96, %92
  br label %98

98:                                               ; preds = %97, %88
  %99 = load i8*, i8** %9, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %165

101:                                              ; preds = %98
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %116, %101
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %14, align 4
  %111 = mul i32 5, %110
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @add_one_chunk(i8* noundef %107, i32 noundef %108, i8* noundef %113, i32 noundef %114)
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %14, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %102, !llvm.loop !14

119:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %120 = load i8*, i8** %9, align 8
  store i8* %120, i8** %13, align 8
  store i8* %120, i8** %12, align 8
  br label %121

121:                                              ; preds = %146, %119
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %151

125:                                              ; preds = %121
  %126 = load i8*, i8** %12, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 4
  %128 = load i8, i8* %127, align 1
  %129 = icmp ne i8 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %125
  %131 = load i8*, i8** %13, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = icmp ne i8* %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i8*, i8** %13, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = call i64 @llvm.objectsize.i64.p0i8(i8* %137, i1 false, i1 true, i1 false)
  %139 = call i8* @__memcpy_chk(i8* noundef %135, i8* noundef %136, i64 noundef 5, i64 noundef %138) #7
  br label %140

140:                                              ; preds = %134, %130
  %141 = load i8*, i8** %13, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 5
  store i8* %142, i8** %13, align 8
  %143 = load i32, i32* %10, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %140, %125
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %14, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %14, align 4
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 5
  store i8* %150, i8** %12, align 8
  br label %121, !llvm.loop !15

151:                                              ; preds = %121
  %152 = load i32, i32* %10, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %156 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %155, i32 0, i32 70
  %157 = load i8*, i8** %156, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = icmp ne i8* %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %162 = load i8*, i8** %9, align 8
  call void @png_free(%struct.png_struct_def* noundef %161, i8* noundef %162)
  br label %163

163:                                              ; preds = %160, %154
  store i8* null, i8** %9, align 8
  br label %164

164:                                              ; preds = %163, %151
  br label %166

165:                                              ; preds = %98
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %165, %164
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %169 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %168, i32 0, i32 69
  store i32 %167, i32* %169, align 8
  %170 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %171 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %170, i32 0, i32 70
  %172 = load i8*, i8** %171, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = icmp ne i8* %172, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %166
  %176 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %177 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %176, i32 0, i32 70
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %182 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %183 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %182, i32 0, i32 70
  %184 = load i8*, i8** %183, align 8
  call void @png_free(%struct.png_struct_def* noundef %181, i8* noundef %184)
  br label %185

185:                                              ; preds = %180, %175
  %186 = load i8*, i8** %9, align 8
  %187 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %188 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %187, i32 0, i32 70
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %17, %24, %35, %44, %62, %185, %166
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @add_one_chunk(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %27, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @memcmp(i8* noundef %16, i8* noundef %17, i64 noundef 4)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  store i8 %22, i8* %24, align 1
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %5, align 4
  br label %49

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %10, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 5
  store i8* %31, i8** %6, align 8
  br label %11, !llvm.loop !16

32:                                               ; preds = %11
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @llvm.objectsize.i64.p0i8(i8* %40, i1 false, i1 true, i1 false)
  %42 = call i8* @__memcpy_chk(i8* noundef %38, i8* noundef %39, i64 noundef 4, i64 noundef %41) #7
  %43 = load i32, i32* %9, align 4
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  store i8 %44, i8* %46, align 1
  br label %47

47:                                               ; preds = %35, %32
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %20
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_rows(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i8** noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i8**, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = icmp eq %struct.png_struct_def* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %11 = icmp eq %struct.png_info_def* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %3
  br label %38

13:                                               ; preds = %9
  %14 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %14, i32 0, i32 24
  %16 = load i8**, i8*** %15, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %20 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %19, i32 0, i32 24
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = icmp ne i8** %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %25, %struct.png_info_def* noundef %26, i32 noundef 64, i32 noundef 0)
  br label %27

27:                                               ; preds = %24, %18, %13
  %28 = load i8**, i8*** %6, align 8
  %29 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %30 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %29, i32 0, i32 24
  store i8** %28, i8*** %30, align 8
  %31 = load i8**, i8*** %6, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %35 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, 32768
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %12, %33, %27
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_compression_buffer_size(%struct.png_struct_def* noalias noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %66

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ugt i64 %12, 2147483647
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %8
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_error(%struct.png_struct_def* noundef %15, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0)) #6
  unreachable

16:                                               ; preds = %11
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 32768
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %26 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %25, i32 0, i32 81
  store i32 %24, i32* %26, align 8
  br label %66

27:                                               ; preds = %16
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 32768
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %27
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_warning(%struct.png_struct_def* noundef %39, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0))
  br label %66

40:                                               ; preds = %33
  %41 = load i64, i64* %4, align 8
  %42 = icmp ugt i64 %41, 4294967295
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_warning(%struct.png_struct_def* noundef %44, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  store i64 4294967295, i64* %4, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i64, i64* %4, align 8
  %47 = icmp ult i64 %46, 6
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_warning(%struct.png_struct_def* noundef %49, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0))
  br label %66

50:                                               ; preds = %45
  %51 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %52 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 8
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* %4, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %60 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %59, i32 0, i32 11
  call void @png_free_buffer_list(%struct.png_struct_def* noundef %58, %struct.png_compression_buffer** noundef %60)
  %61 = load i64, i64* %4, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %64 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %63, i32 0, i32 12
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %57, %50
  br label %66

66:                                               ; preds = %7, %22, %38, %48, %65, %27
  ret void
}

declare void @png_free_buffer_list(%struct.png_struct_def* noundef, %struct.png_compression_buffer** noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_invalid(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = icmp ne %struct.png_struct_def* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %11 = icmp ne %struct.png_info_def* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %16 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %12, %9, %3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_user_limits(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = icmp eq %struct.png_struct_def* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %17

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 73
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %15, i32 0, i32 74
  store i32 %14, i32* %16, align 8
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_chunk_cache_max(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp ne %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %9, i32 0, i32 75
  store i32 %8, i32* %10, align 4
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_chunk_malloc_max(%struct.png_struct_def* noalias noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp ne %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %9, i32 0, i32 76
  store i64 %8, i64* %10, align 8
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_benign_errors(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, 7340032
  store i32 %11, i32* %9, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, -7340033
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_check_for_invalid_index(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 40
  store i32 0, i32* %9, align 4
  br label %13

10:                                               ; preds = %2
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 40
  store i32 -1, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

declare void @png_app_warning(%struct.png_struct_def* noundef, i8* noundef) #2

declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

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
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
