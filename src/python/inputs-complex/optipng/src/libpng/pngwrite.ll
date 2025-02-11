; ModuleID = 'pngwrite.c'
source_filename = "pngwrite.c"
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

@.str = private unnamed_addr constant [43 x i8] c"Valid palette required for paletted images\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"No IDATs written into file\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Wrote palette index exceeding num_palette\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"png_write_info was never called before png_write_row\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"internal write transform logic error\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unknown row filter for method 0\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"png_set_filter: UP/AVG/PAETH cannot be added after start\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Unknown custom filter method\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Only compression windows <= 32k supported by PNG\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Only compression windows >= 256 supported by PNG\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Only compression method 8 is supported by PNG\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"no rows for png_write_image to write\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"PNG_TRANSFORM_INVERT_MONO not supported\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"PNG_TRANSFORM_SHIFT not supported\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"PNG_TRANSFORM_PACKING not supported\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"PNG_TRANSFORM_SWAP_ALPHA not supported\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"PNG_TRANSFORM_STRIP_FILLER not supported\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"PNG_TRANSFORM_BGR not supported\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"PNG_TRANSFORM_SWAP_ENDIAN not supported\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"PNG_TRANSFORM_PACKSWAP not supported\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"PNG_TRANSFORM_INVERT_ALPHA not supported\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Writing zero-length unknown chunk\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_info_before_PLTE(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %9 = icmp eq %struct.png_info_def* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %66

11:                                               ; preds = %7
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 1024
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_write_sig(%struct.png_struct_def* noundef %18)
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %20 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %21 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %24 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %27 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %26, i32 0, i32 7
  %28 = load i8, i8* %27, align 4
  %29 = zext i8 %28 to i32
  %30 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %31 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %30, i32 0, i32 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %35 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %34, i32 0, i32 9
  %36 = load i8, i8* %35, align 2
  %37 = zext i8 %36 to i32
  %38 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %39 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %38, i32 0, i32 10
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %43 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %42, i32 0, i32 11
  %44 = load i8, i8* %43, align 8
  %45 = zext i8 %44 to i32
  call void @png_write_IHDR(%struct.png_struct_def* noundef %19, i32 noundef %22, i32 noundef %25, i32 noundef %29, i32 noundef %33, i32 noundef %37, i32 noundef %41, i32 noundef %45)
  %46 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %47 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %17
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %53 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %54 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %53, i32 0, i32 16
  %55 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %56 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %55, i32 0, i32 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  call void @png_write_sBIT(%struct.png_struct_def* noundef %52, %struct.png_color_8_struct* noundef %54, i32 noundef %58)
  br label %59

59:                                               ; preds = %51, %17
  %60 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %61 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  call void @write_unknown_chunks(%struct.png_struct_def* noundef %60, %struct.png_info_def* noundef %61, i32 noundef 1)
  %62 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %63 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, 1024
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %10, %59, %11
  ret void
}

declare void @png_write_sig(%struct.png_struct_def* noundef) #1

declare void @png_write_IHDR(%struct.png_struct_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @png_write_sBIT(%struct.png_struct_def* noundef, %struct.png_color_8_struct* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @write_unknown_chunks(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.png_unknown_chunk_t*, align 8
  %8 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %9, i32 0, i32 23
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %87

13:                                               ; preds = %3
  %14 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %14, i32 0, i32 22
  %16 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %15, align 8
  store %struct.png_unknown_chunk_t* %16, %struct.png_unknown_chunk_t** %7, align 8
  br label %17

17:                                               ; preds = %83, %13
  %18 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %19 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %20 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %19, i32 0, i32 22
  %21 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %20, align 8
  %22 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %23 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %22, i32 0, i32 23
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %21, i64 %25
  %27 = icmp ult %struct.png_unknown_chunk_t* %18, %26
  br i1 %27, label %28, label %86

28:                                               ; preds = %17
  %29 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %30 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 8
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %28
  %37 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %38 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %39 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %38, i32 0, i32 0
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %39, i64 0, i64 0
  %41 = call i32 @png_handle_as_unknown(%struct.png_struct_def* noundef %37, i8* noundef %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %81

44:                                               ; preds = %36
  %45 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %46 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %45, i32 0, i32 0
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %46, i64 0, i64 3
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %60 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %59, i32 0, i32 68
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %81

63:                                               ; preds = %58, %52, %44
  %64 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %65 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %69, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %72 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %73 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %72, i32 0, i32 0
  %74 = getelementptr inbounds [5 x i8], [5 x i8]* %73, i64 0, i64 0
  %75 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %76 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %79 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  call void @png_write_chunk(%struct.png_struct_def* noundef %71, i8* noundef %74, i8* noundef %77, i64 noundef %80)
  br label %81

81:                                               ; preds = %70, %58, %55, %36
  br label %82

82:                                               ; preds = %81, %28
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %7, align 8
  %85 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %84, i32 1
  store %struct.png_unknown_chunk_t* %85, %struct.png_unknown_chunk_t** %7, align 8
  br label %17, !llvm.loop !10

86:                                               ; preds = %17
  br label %87

87:                                               ; preds = %86, %3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_info(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %9 = icmp eq %struct.png_info_def* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %90

11:                                               ; preds = %7
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %13 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  call void @png_write_info_before_PLTE(%struct.png_struct_def* noundef %12, %struct.png_info_def* noundef %13)
  %14 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %21 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %22 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %21, i32 0, i32 4
  %23 = load %struct.png_color_struct*, %struct.png_color_struct** %22, align 8
  %24 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %25 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %24, i32 0, i32 5
  %26 = load i16, i16* %25, align 8
  %27 = zext i16 %26 to i32
  call void @png_write_PLTE(%struct.png_struct_def* noundef %20, %struct.png_color_struct* noundef %23, i32 noundef %27)
  br label %37

28:                                               ; preds = %11
  %29 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %30 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %29, i32 0, i32 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_error(%struct.png_struct_def* noundef %35, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0)) #5
  unreachable

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %39 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 16
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %45 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %46 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %45, i32 0, i32 17
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %49 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %48, i32 0, i32 18
  %50 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %51 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %50, i32 0, i32 6
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %55 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %54, i32 0, i32 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  call void @png_write_tRNS(%struct.png_struct_def* noundef %44, i8* noundef %47, %struct.png_color_16_struct* noundef %49, i32 noundef %53, i32 noundef %57)
  br label %58

58:                                               ; preds = %43, %37
  %59 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %60 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %66 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %67 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %66, i32 0, i32 19
  %68 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %69 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %68, i32 0, i32 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  call void @png_write_bKGD(%struct.png_struct_def* noundef %65, %struct.png_color_16_struct* noundef %67, i32 noundef %71)
  br label %72

72:                                               ; preds = %64, %58
  %73 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %74 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 64
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %80 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %81 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %80, i32 0, i32 20
  %82 = load i16*, i16** %81, align 8
  %83 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %84 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %83, i32 0, i32 5
  %85 = load i16, i16* %84, align 8
  %86 = zext i16 %85 to i32
  call void @png_write_hIST(%struct.png_struct_def* noundef %79, i16* noundef %82, i32 noundef %86)
  br label %87

87:                                               ; preds = %78, %72
  %88 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %89 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  call void @write_unknown_chunks(%struct.png_struct_def* noundef %88, %struct.png_info_def* noundef %89, i32 noundef 2)
  br label %90

90:                                               ; preds = %87, %10
  ret void
}

declare void @png_write_PLTE(%struct.png_struct_def* noundef, %struct.png_color_struct* noundef, i32 noundef) #1

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #2

declare void @png_write_tRNS(%struct.png_struct_def* noundef, i8* noundef, %struct.png_color_16_struct* noundef, i32 noundef, i32 noundef) #1

declare void @png_write_bKGD(%struct.png_struct_def* noundef, %struct.png_color_16_struct* noundef, i32 noundef) #1

declare void @png_write_hIST(%struct.png_struct_def* noundef, i16* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_end(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %39

8:                                                ; preds = %2
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_error(%struct.png_struct_def* noundef %15, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5
  unreachable

16:                                               ; preds = %8
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 40
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 39
  %22 = load i16, i16* %21, align 8
  %23 = zext i16 %22 to i32
  %24 = icmp sgt i32 %19, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_benign_error(%struct.png_struct_def* noundef %26, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %16
  %28 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %29 = icmp ne %struct.png_info_def* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %32 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  call void @write_unknown_chunks(%struct.png_struct_def* noundef %31, %struct.png_info_def* noundef %32, i32 noundef 8)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, 8
  store i32 %37, i32* %35, align 8
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_write_IEND(%struct.png_struct_def* noundef %38)
  br label %39

39:                                               ; preds = %33, %7
  ret void
}

declare void @png_benign_error(%struct.png_struct_def* noundef, i8* noundef) #1

declare void @png_write_IEND(%struct.png_struct_def* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define noalias %struct.png_struct_def* @png_create_write_struct(i8* noundef %0, i8* noundef %1, void (%struct.png_struct_def*, i8*)* noundef %2, void (%struct.png_struct_def*, i8*)* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (%struct.png_struct_def*, i8*)*, align 8
  %8 = alloca void (%struct.png_struct_def*, i8*)*, align 8
  %9 = alloca %struct.png_struct_def*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store void (%struct.png_struct_def*, i8*)* %2, void (%struct.png_struct_def*, i8*)** %7, align 8
  store void (%struct.png_struct_def*, i8*)* %3, void (%struct.png_struct_def*, i8*)** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %7, align 8
  %13 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %8, align 8
  %14 = call noalias %struct.png_struct_def* @png_create_png_struct(i8* noundef %10, i8* noundef %11, void (%struct.png_struct_def*, i8*)* noundef %12, void (%struct.png_struct_def*, i8*)* noundef %13, i8* noundef null, i8* (%struct.png_struct_def*, i64)* noundef null, void (%struct.png_struct_def*, i8*)* noundef null)
  store %struct.png_struct_def* %14, %struct.png_struct_def** %9, align 8
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %16 = icmp ne %struct.png_struct_def* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %4
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 12
  store i32 8192, i32* %19, align 8
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 17
  store i32 1, i32* %21, align 4
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 13
  store i32 -1, i32* %23, align 4
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 16
  store i32 8, i32* %25, align 8
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %27 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %26, i32 0, i32 15
  store i32 15, i32* %27, align 4
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 14
  store i32 8, i32* %29, align 8
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, 2097152
  store i32 %33, i32* %31, align 4
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_set_write_fn(%struct.png_struct_def* noundef %34, i8* noundef null, void (%struct.png_struct_def*, i8*, i64)* noundef null, void (%struct.png_struct_def*)* noundef null)
  br label %35

35:                                               ; preds = %17, %4
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  ret %struct.png_struct_def* %36
}

declare noalias %struct.png_struct_def* @png_create_png_struct(i8* noundef, i8* noundef, void (%struct.png_struct_def*, i8*)* noundef, void (%struct.png_struct_def*, i8*)* noundef, i8* noundef, i8* (%struct.png_struct_def*, i64)* noundef, void (%struct.png_struct_def*, i8*)* noundef) #1

declare void @png_set_write_fn(%struct.png_struct_def* noundef, i8* noundef, void (%struct.png_struct_def*, i8*, i64)* noundef, void (%struct.png_struct_def*)* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_rows(%struct.png_struct_def* noalias noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %10 = icmp eq %struct.png_struct_def* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %27

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %13 = load i8**, i8*** %5, align 8
  store i8** %13, i8*** %8, align 8
  br label %14

14:                                               ; preds = %22, %12
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = load i8*, i8** %20, align 8
  call void @png_write_row(%struct.png_struct_def* noundef %19, i8* noundef %21)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load i8**, i8*** %8, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %8, align 8
  br label %14, !llvm.loop !12

27:                                               ; preds = %11, %14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_row(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.png_row_info_struct, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %7 = icmp eq %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %274

9:                                                ; preds = %2
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 29
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %15, i32 0, i32 45
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 1024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_error(%struct.png_struct_def* noundef %27, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #5
  unreachable

28:                                               ; preds = %20
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_write_start_row(%struct.png_struct_def* noundef %29)
  br label %30

30:                                               ; preds = %28, %14, %9
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %32 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %31, i32 0, i32 44
  %33 = load i8, i8* %32, align 4
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %127

36:                                               ; preds = %30
  %37 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %38 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %127

42:                                               ; preds = %36
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %44 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %43, i32 0, i32 45
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  switch i32 %46, label %125 [
    i32 0, label %47
    i32 1, label %56
    i32 2, label %70
    i32 3, label %79
    i32 4, label %93
    i32 5, label %102
    i32 6, label %116
  ]

47:                                               ; preds = %42
  %48 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %49 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %48, i32 0, i32 29
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 7
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_write_finish_row(%struct.png_struct_def* noundef %54)
  br label %274

55:                                               ; preds = %47
  br label %126

56:                                               ; preds = %42
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %58 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %57, i32 0, i32 29
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 7
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %64 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %63, i32 0, i32 23
  %65 = load i32, i32* %64, align 4
  %66 = icmp ult i32 %65, 5
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %56
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_write_finish_row(%struct.png_struct_def* noundef %68)
  br label %274

69:                                               ; preds = %62
  br label %126

70:                                               ; preds = %42
  %71 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %72 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %71, i32 0, i32 29
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 7
  %75 = icmp ne i32 %74, 4
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_write_finish_row(%struct.png_struct_def* noundef %77)
  br label %274

78:                                               ; preds = %70
  br label %126

79:                                               ; preds = %42
  %80 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %81 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %80, i32 0, i32 29
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 3
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %87 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %86, i32 0, i32 23
  %88 = load i32, i32* %87, align 4
  %89 = icmp ult i32 %88, 3
  br i1 %89, label %90, label %92

90:                                               ; preds = %85, %79
  %91 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_write_finish_row(%struct.png_struct_def* noundef %91)
  br label %274

92:                                               ; preds = %85
  br label %126

93:                                               ; preds = %42
  %94 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %95 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %94, i32 0, i32 29
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 3
  %98 = icmp ne i32 %97, 2
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_write_finish_row(%struct.png_struct_def* noundef %100)
  br label %274

101:                                              ; preds = %93
  br label %126

102:                                              ; preds = %42
  %103 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %104 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %103, i32 0, i32 29
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %110 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %109, i32 0, i32 23
  %111 = load i32, i32* %110, align 4
  %112 = icmp ult i32 %111, 2
  br i1 %112, label %113, label %115

113:                                              ; preds = %108, %102
  %114 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_write_finish_row(%struct.png_struct_def* noundef %114)
  br label %274

115:                                              ; preds = %108
  br label %126

116:                                              ; preds = %42
  %117 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %118 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %117, i32 0, i32 29
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_write_finish_row(%struct.png_struct_def* noundef %123)
  br label %274

124:                                              ; preds = %116
  br label %126

125:                                              ; preds = %42
  br label %126

126:                                              ; preds = %125, %124, %115, %101, %92, %78, %69, %55
  br label %127

127:                                              ; preds = %126, %36, %30
  %128 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %129 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %128, i32 0, i32 47
  %130 = load i8, i8* %129, align 1
  %131 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 2
  store i8 %130, i8* %131, align 8
  %132 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %133 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %132, i32 0, i32 26
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 0
  store i32 %134, i32* %135, align 8
  %136 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %137 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %136, i32 0, i32 52
  %138 = load i8, i8* %137, align 4
  %139 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 4
  store i8 %138, i8* %139, align 2
  %140 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %141 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %140, i32 0, i32 49
  %142 = load i8, i8* %141, align 1
  %143 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 3
  store i8 %142, i8* %143, align 1
  %144 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 3
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 4
  %148 = load i8, i8* %147, align 2
  %149 = zext i8 %148 to i32
  %150 = mul nsw i32 %146, %149
  %151 = trunc i32 %150 to i8
  %152 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 5
  store i8 %151, i8* %152, align 1
  %153 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 5
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp sge i32 %155, 8
  br i1 %156, label %157, label %166

157:                                              ; preds = %127
  %158 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 5
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i64
  %164 = lshr i64 %163, 3
  %165 = mul i64 %160, %164
  br label %176

166:                                              ; preds = %127
  %167 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 5
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i64
  %173 = mul i64 %169, %172
  %174 = add i64 %173, 7
  %175 = lshr i64 %174, 3
  br label %176

176:                                              ; preds = %166, %157
  %177 = phi i64 [ %165, %157 ], [ %175, %166 ]
  %178 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 1
  store i64 %177, i64* %178, align 8
  %179 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %180 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %179, i32 0, i32 32
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load i8*, i8** %4, align 8
  %184 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %187 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %186, i32 0, i32 32
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  %190 = call i64 @llvm.objectsize.i64.p0i8(i8* %189, i1 false, i1 true, i1 false)
  %191 = call i8* @__memcpy_chk(i8* noundef %182, i8* noundef %183, i64 noundef %185, i64 noundef %190) #6
  %192 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %193 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %192, i32 0, i32 44
  %194 = load i8, i8* %193, align 4
  %195 = zext i8 %194 to i32
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %224

197:                                              ; preds = %176
  %198 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %199 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %198, i32 0, i32 45
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp slt i32 %201, 6
  br i1 %202, label %203, label %224

203:                                              ; preds = %197
  %204 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %205 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, 2
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %224

209:                                              ; preds = %203
  %210 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %211 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %210, i32 0, i32 32
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  %214 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %215 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %214, i32 0, i32 45
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  call void @png_do_write_interlace(%struct.png_row_info_struct* noundef %5, i8* noundef %213, i32 noundef %217)
  %218 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %209
  %222 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_write_finish_row(%struct.png_struct_def* noundef %222)
  br label %274

223:                                              ; preds = %209
  br label %224

224:                                              ; preds = %223, %203, %197, %176
  %225 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 5
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %229 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %228, i32 0, i32 50
  %230 = load i8, i8* %229, align 2
  %231 = zext i8 %230 to i32
  %232 = icmp ne i32 %227, %231
  br i1 %232, label %242, label %233

233:                                              ; preds = %224
  %234 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 5
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %238 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %237, i32 0, i32 55
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = icmp ne i32 %236, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %233, %224
  %243 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_error(%struct.png_struct_def* noundef %243, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)) #5
  unreachable

244:                                              ; preds = %233
  %245 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %5, i32 0, i32 2
  %246 = load i8, i8* %245, align 8
  %247 = zext i8 %246 to i32
  %248 = icmp eq i32 %247, 3
  br i1 %248, label %249, label %256

249:                                              ; preds = %244
  %250 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %251 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %250, i32 0, i32 40
  %252 = load i32, i32* %251, align 4
  %253 = icmp sge i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %249
  %255 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_do_check_palette_indexes(%struct.png_struct_def* noundef %255, %struct.png_row_info_struct* noundef %5)
  br label %256

256:                                              ; preds = %254, %249, %244
  %257 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_write_find_filter(%struct.png_struct_def* noundef %257, %struct.png_row_info_struct* noundef %5)
  %258 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %259 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %258, i32 0, i32 66
  %260 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %259, align 8
  %261 = icmp ne void (%struct.png_struct_def*, i32, i32)* %260, null
  br i1 %261, label %262, label %274

262:                                              ; preds = %256
  %263 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %264 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %263, i32 0, i32 66
  %265 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %264, align 8
  %266 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %267 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %268 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %267, i32 0, i32 29
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %271 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %270, i32 0, i32 45
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  call void %265(%struct.png_struct_def* noundef %266, i32 noundef %269, i32 noundef %273)
  br label %274

274:                                              ; preds = %8, %53, %67, %76, %90, %99, %113, %122, %221, %262, %256
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_image(%struct.png_struct_def* noalias noundef %0, i8** noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %10 = icmp eq %struct.png_struct_def* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %14 = call i32 @png_set_interlace_handling(%struct.png_struct_def* noundef %13)
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %37, %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  %20 = load i8**, i8*** %4, align 8
  store i8** %20, i8*** %8, align 8
  br label %21

21:                                               ; preds = %31, %19
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %24 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %23, i32 0, i32 24
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = load i8*, i8** %29, align 8
  call void @png_write_row(%struct.png_struct_def* noundef %28, i8* noundef %30)
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load i8**, i8*** %8, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %8, align 8
  br label %21, !llvm.loop !13

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %15, !llvm.loop !14

40:                                               ; preds = %11, %15
  ret void
}

declare i32 @png_set_interlace_handling(%struct.png_struct_def* noundef) #1

declare void @png_write_start_row(%struct.png_struct_def* noundef) #1

declare void @png_write_finish_row(%struct.png_struct_def* noundef) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

declare void @png_do_write_interlace(%struct.png_row_info_struct* noundef, i8* noundef, i32 noundef) #1

declare void @png_do_check_palette_indexes(%struct.png_struct_def* noundef, %struct.png_row_info_struct* noundef) #1

declare void @png_write_find_filter(%struct.png_struct_def* noundef, %struct.png_row_info_struct* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_flush(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %18

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %14

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ 0, %11 ], [ %13, %12 ]
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 60
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %14, %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_flush(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = icmp eq %struct.png_struct_def* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %20

6:                                                ; preds = %1
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 29
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 25
  %12 = load i32, i32* %11, align 4
  %13 = icmp uge i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  br label %20

15:                                               ; preds = %6
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_compress_IDAT(%struct.png_struct_def* noundef %16, i8* noundef null, i64 noundef 0, i32 noundef 2)
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 61
  store i32 0, i32* %18, align 4
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_flush(%struct.png_struct_def* noundef %19)
  br label %20

20:                                               ; preds = %15, %14, %5
  ret void
}

declare void @png_compress_IDAT(%struct.png_struct_def* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare void @png_flush(%struct.png_struct_def* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_destroy_write_struct(%struct.png_struct_def** noundef %0, %struct.png_info_def** noundef %1) #0 {
  %3 = alloca %struct.png_struct_def**, align 8
  %4 = alloca %struct.png_info_def**, align 8
  %5 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def** %0, %struct.png_struct_def*** %3, align 8
  store %struct.png_info_def** %1, %struct.png_info_def*** %4, align 8
  %6 = load %struct.png_struct_def**, %struct.png_struct_def*** %3, align 8
  %7 = icmp ne %struct.png_struct_def** %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load %struct.png_struct_def**, %struct.png_struct_def*** %3, align 8
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  store %struct.png_struct_def* %10, %struct.png_struct_def** %5, align 8
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %12 = icmp ne %struct.png_struct_def* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %15 = load %struct.png_info_def**, %struct.png_info_def*** %4, align 8
  call void @png_destroy_info_struct(%struct.png_struct_def* noundef %14, %struct.png_info_def** noundef %15)
  %16 = load %struct.png_struct_def**, %struct.png_struct_def*** %3, align 8
  store %struct.png_struct_def* null, %struct.png_struct_def** %16, align 8
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_write_destroy(%struct.png_struct_def* noundef %17)
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_destroy_png_struct(%struct.png_struct_def* noundef %18)
  br label %19

19:                                               ; preds = %13, %8
  br label %20

20:                                               ; preds = %19, %2
  ret void
}

declare void @png_destroy_info_struct(%struct.png_struct_def* noundef, %struct.png_info_def** noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_write_destroy(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %9, i32 0, i32 10
  %11 = call i32 @deflateEnd(%struct.z_stream_s* noundef %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 11
  call void @png_free_buffer_list(%struct.png_struct_def* noundef %13, %struct.png_compression_buffer** noundef %15)
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 32
  %19 = load i8*, i8** %18, align 8
  call void @png_free(%struct.png_struct_def* noundef %16, i8* noundef %19)
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 32
  store i8* null, i8** %21, align 8
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %24 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %23, i32 0, i32 31
  %25 = load i8*, i8** %24, align 8
  call void @png_free(%struct.png_struct_def* noundef %22, i8* noundef %25)
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %28 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %27, i32 0, i32 33
  %29 = load i8*, i8** %28, align 8
  call void @png_free(%struct.png_struct_def* noundef %26, i8* noundef %29)
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %32 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %31, i32 0, i32 34
  %33 = load i8*, i8** %32, align 8
  call void @png_free(%struct.png_struct_def* noundef %30, i8* noundef %33)
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %34, i32 0, i32 31
  store i8* null, i8** %35, align 8
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 33
  store i8* null, i8** %37, align 8
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %39 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %38, i32 0, i32 34
  store i8* null, i8** %39, align 8
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %42 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %41, i32 0, i32 70
  %43 = load i8*, i8** %42, align 8
  call void @png_free(%struct.png_struct_def* noundef %40, i8* noundef %43)
  %44 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %45 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %44, i32 0, i32 70
  store i8* null, i8** %45, align 8
  ret void
}

declare void @png_destroy_png_struct(%struct.png_struct_def* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_filter(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %10 = icmp eq %struct.png_struct_def* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %184

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %182

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 255
  switch i32 %17, label %35 [
    i32 5, label %18
    i32 6, label %18
    i32 7, label %18
    i32 0, label %20
    i32 1, label %23
    i32 2, label %26
    i32 3, label %29
    i32 4, label %32
  ]

18:                                               ; preds = %15, %15, %15
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %19, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %18
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %21, i32 0, i32 46
  store i8 8, i8* %22, align 2
  br label %40

23:                                               ; preds = %15
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 46
  store i8 16, i8* %25, align 2
  br label %40

26:                                               ; preds = %15
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %28 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %27, i32 0, i32 46
  store i8 32, i8* %28, align 2
  br label %40

29:                                               ; preds = %15
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %30, i32 0, i32 46
  store i8 64, i8* %31, align 2
  br label %40

32:                                               ; preds = %15
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %34 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %33, i32 0, i32 46
  store i8 -128, i8* %34, align 2
  br label %40

35:                                               ; preds = %15
  %36 = load i32, i32* %6, align 4
  %37 = trunc i32 %36 to i8
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %39 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %38, i32 0, i32 46
  store i8 %37, i8* %39, align 2
  br label %40

40:                                               ; preds = %35, %32, %29, %26, %23, %20
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %42 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %41, i32 0, i32 32
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %177

45:                                               ; preds = %40
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %47 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %46, i32 0, i32 24
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, -225
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %55 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %54, i32 0, i32 23
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, -209
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 224
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %67 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %66, i32 0, i32 31
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_app_warning(%struct.png_struct_def* noundef %71, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, -225
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %65, %61
  store i32 0, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 16
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, 32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, 64
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 128
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %99, %95
  %103 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %104 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %103, i32 0, i32 52
  %105 = load i8, i8* %104, align 4
  %106 = zext i8 %105 to i32
  %107 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %108 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %107, i32 0, i32 49
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = mul nsw i32 %106, %110
  %112 = icmp sge i32 %111, 8
  br i1 %112, label %113, label %130

113:                                              ; preds = %102
  %114 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %115 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %114, i32 0, i32 23
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  %118 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %119 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %118, i32 0, i32 52
  %120 = load i8, i8* %119, align 4
  %121 = zext i8 %120 to i32
  %122 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %123 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %122, i32 0, i32 49
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = mul nsw i32 %121, %125
  %127 = sext i32 %126 to i64
  %128 = lshr i64 %127, 3
  %129 = mul i64 %117, %128
  br label %148

130:                                              ; preds = %102
  %131 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %132 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %131, i32 0, i32 23
  %133 = load i32, i32* %132, align 4
  %134 = zext i32 %133 to i64
  %135 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %136 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %135, i32 0, i32 52
  %137 = load i8, i8* %136, align 4
  %138 = zext i8 %137 to i32
  %139 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %140 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %139, i32 0, i32 49
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = mul nsw i32 %138, %142
  %144 = sext i32 %143 to i64
  %145 = mul i64 %134, %144
  %146 = add i64 %145, 7
  %147 = lshr i64 %146, 3
  br label %148

148:                                              ; preds = %130, %113
  %149 = phi i64 [ %129, %113 ], [ %147, %130 ]
  %150 = add i64 %149, 1
  store i64 %150, i64* %8, align 8
  %151 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %152 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %151, i32 0, i32 33
  %153 = load i8*, i8** %152, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %156, i64 noundef %157)
  %159 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %160 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %159, i32 0, i32 33
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %155, %148
  %162 = load i32, i32* %7, align 4
  %163 = icmp sgt i32 %162, 1
  br i1 %163, label %164, label %176

164:                                              ; preds = %161
  %165 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %166 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %165, i32 0, i32 34
  %167 = load i8*, i8** %166, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %171 = load i64, i64* %8, align 8
  %172 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %170, i64 noundef %171)
  %173 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %174 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %173, i32 0, i32 34
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %169, %164
  br label %176

176:                                              ; preds = %175, %161
  br label %177

177:                                              ; preds = %176, %40
  %178 = load i32, i32* %6, align 4
  %179 = trunc i32 %178 to i8
  %180 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %181 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %180, i32 0, i32 46
  store i8 %179, i8* %181, align 2
  br label %184

182:                                              ; preds = %12
  %183 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %183, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #5
  unreachable

184:                                              ; preds = %11, %177
  ret void
}

declare void @png_app_error(%struct.png_struct_def* noundef, i8* noundef) #1

declare void @png_app_warning(%struct.png_struct_def* noundef, i8* noundef) #1

declare noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_compression_level(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 13
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_compression_mem_level(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 16
  store i32 %9, i32* %11, align 8
  br label %12

12:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_compression_strategy(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %16

8:                                                ; preds = %2
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 17
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_compression_window_bits(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %23

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 15
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_warning(%struct.png_struct_def* noundef %12, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  store i32 15, i32* %4, align 4
  br label %19

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_warning(%struct.png_struct_def* noundef %17, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  store i32 8, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %13
  br label %19

19:                                               ; preds = %18, %11
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %21, i32 0, i32 15
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %7
  ret void
}

declare void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_compression_method(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %17

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 8
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_warning(%struct.png_struct_def* noundef %12, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %15, i32 0, i32 14
  store i32 %14, i32* %16, align 8
  br label %17

17:                                               ; preds = %13, %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_write_status_fn(%struct.png_struct_def* noalias noundef %0, void (%struct.png_struct_def*, i32, i32)* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca void (%struct.png_struct_def*, i32, i32)*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store void (%struct.png_struct_def*, i32, i32)* %1, void (%struct.png_struct_def*, i32, i32)** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %12

8:                                                ; preds = %2
  %9 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %4, align 8
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 66
  store void (%struct.png_struct_def*, i32, i32)* %9, void (%struct.png_struct_def*, i32, i32)** %11, align 8
  br label %12

12:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_png(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %10 = icmp eq %struct.png_struct_def* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %13 = icmp eq %struct.png_info_def* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %4
  br label %87

15:                                               ; preds = %11
  %16 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %17 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 32768
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %22, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  br label %87

23:                                               ; preds = %15
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %25 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_write_info(%struct.png_struct_def* noundef %24, %struct.png_info_def* noundef %25)
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %30, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 64
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %36, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %42, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 256
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %48, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 6144
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %54, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 128
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %60, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 512
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %66, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %72, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 1024
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %78, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73
  %80 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %81 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %82 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %81, i32 0, i32 24
  %83 = load i8**, i8*** %82, align 8
  call void @png_write_image(%struct.png_struct_def* noundef %80, i8** noundef %83)
  %84 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %85 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_write_end(%struct.png_struct_def* noundef %84, %struct.png_info_def* noundef %85)
  %86 = load i8*, i8** %8, align 8
  br label %87

87:                                               ; preds = %79, %21, %14
  ret void
}

declare i32 @png_handle_as_unknown(%struct.png_struct_def* noundef, i8* noundef) #1

declare void @png_write_chunk(%struct.png_struct_def* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare i32 @deflateEnd(%struct.z_stream_s* noundef) #1

declare void @png_free_buffer_list(%struct.png_struct_def* noundef, %struct.png_compression_buffer** noundef) #1

declare void @png_free(%struct.png_struct_def* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

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
