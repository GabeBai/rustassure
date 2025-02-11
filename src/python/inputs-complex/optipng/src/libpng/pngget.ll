; ModuleID = 'pngget.c'
source_filename = "pngget.c"
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_valid(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %9 = icmp ne %struct.png_struct_def* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %12 = icmp ne %struct.png_info_def* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %4, align 4
  br label %20

19:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @png_get_rowbytes(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = icmp ne %struct.png_info_def* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  br label %16

15:                                               ; preds = %8, %2
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i64, i64* %3, align 8
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8** @png_get_rows(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = icmp ne %struct.png_info_def* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 24
  %14 = load i8**, i8*** %13, align 8
  store i8** %14, i8*** %3, align 8
  br label %16

15:                                               ; preds = %8, %2
  store i8** null, i8*** %3, align 8
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i8**, i8*** %3, align 8
  ret i8** %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_image_width(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = icmp ne %struct.png_info_def* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  br label %16

15:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_image_height(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = icmp ne %struct.png_info_def* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  br label %16

15:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i8 @png_get_bit_depth(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = icmp ne %struct.png_info_def* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 7
  %14 = load i8, i8* %13, align 4
  store i8 %14, i8* %3, align 1
  br label %16

15:                                               ; preds = %8, %2
  store i8 0, i8* %3, align 1
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i8, i8* %3, align 1
  ret i8 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i8 @png_get_color_type(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = icmp ne %struct.png_info_def* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %3, align 1
  br label %16

15:                                               ; preds = %8, %2
  store i8 0, i8* %3, align 1
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i8, i8* %3, align 1
  ret i8 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i8 @png_get_filter_type(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = icmp ne %struct.png_info_def* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 10
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %3, align 1
  br label %16

15:                                               ; preds = %8, %2
  store i8 0, i8* %3, align 1
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i8, i8* %3, align 1
  ret i8 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i8 @png_get_interlace_type(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = icmp ne %struct.png_info_def* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 11
  %14 = load i8, i8* %13, align 8
  store i8 %14, i8* %3, align 1
  br label %16

15:                                               ; preds = %8, %2
  store i8 0, i8* %3, align 1
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i8, i8* %3, align 1
  ret i8 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i8 @png_get_compression_type(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = icmp ne %struct.png_info_def* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 9
  %14 = load i8, i8* %13, align 2
  store i8 %14, i8* %3, align 1
  br label %16

15:                                               ; preds = %8, %2
  store i8 0, i8* %3, align 1
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i8, i8* %3, align 1
  ret i8 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_x_pixels_per_meter(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_y_pixels_per_meter(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_pixels_per_meter(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_pixel_aspect_ratio_fixed(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_x_offset_microns(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_y_offset_microns(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_x_offset_pixels(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_y_offset_pixels(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i8 @png_get_channels(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = icmp ne %struct.png_info_def* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 12
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %3, align 1
  br label %16

15:                                               ; preds = %8, %2
  store i8 0, i8* %3, align 1
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i8, i8* %3, align 1
  ret i8 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @png_get_signature(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = icmp ne %struct.png_info_def* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 15
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  store i8* %14, i8** %3, align 8
  br label %16

15:                                               ; preds = %8, %2
  store i8* null, i8** %3, align 8
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i8*, i8** %3, align 8
  ret i8* %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_bKGD(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, %struct.png_color_16_struct** noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca %struct.png_color_16_struct**, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store %struct.png_color_16_struct** %2, %struct.png_color_16_struct*** %7, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %9 = icmp ne %struct.png_struct_def* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %12 = icmp ne %struct.png_info_def* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.png_color_16_struct**, %struct.png_color_16_struct*** %7, align 8
  %21 = icmp ne %struct.png_color_16_struct** %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %24 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %23, i32 0, i32 19
  %25 = load %struct.png_color_16_struct**, %struct.png_color_16_struct*** %7, align 8
  store %struct.png_color_16_struct* %24, %struct.png_color_16_struct** %25, align 8
  store i32 32, i32* %4, align 4
  br label %27

26:                                               ; preds = %19, %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_hIST(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i16** noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i16**, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i16** %2, i16*** %7, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %9 = icmp ne %struct.png_struct_def* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %12 = icmp ne %struct.png_info_def* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 64
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i16**, i16*** %7, align 8
  %21 = icmp ne i16** %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %24 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %23, i32 0, i32 20
  %25 = load i16*, i16** %24, align 8
  %26 = load i16**, i16*** %7, align 8
  store i16* %25, i16** %26, align 8
  store i32 64, i32* %4, align 4
  br label %28

27:                                               ; preds = %19, %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_IHDR(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32* noundef %2, i32* noundef %3, i32* noundef %4, i32* noundef %5, i32* noundef %6, i32* noundef %7, i32* noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.png_struct_def*, align 8
  %12 = alloca %struct.png_info_def*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %11, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %11, align 8
  %21 = icmp eq %struct.png_struct_def* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %9
  %23 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %24 = icmp eq %struct.png_info_def* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %9
  store i32 0, i32* %10, align 4
  br label %115

26:                                               ; preds = %22
  %27 = load i32*, i32** %13, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %31 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %13, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i32*, i32** %14, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %39 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %14, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32*, i32** %15, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %47 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %46, i32 0, i32 7
  %48 = load i8, i8* %47, align 4
  %49 = zext i8 %48 to i32
  %50 = load i32*, i32** %15, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32*, i32** %16, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %56 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %55, i32 0, i32 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i32*, i32** %16, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32*, i32** %18, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %65 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %64, i32 0, i32 9
  %66 = load i8, i8* %65, align 2
  %67 = zext i8 %66 to i32
  %68 = load i32*, i32** %18, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32*, i32** %19, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %74 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %73, i32 0, i32 10
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32*, i32** %19, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32*, i32** %17, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %83 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %82, i32 0, i32 11
  %84 = load i8, i8* %83, align 8
  %85 = zext i8 %84 to i32
  %86 = load i32*, i32** %17, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %78
  %88 = load %struct.png_struct_def*, %struct.png_struct_def** %11, align 8
  %89 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %90 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %93 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %96 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %95, i32 0, i32 7
  %97 = load i8, i8* %96, align 4
  %98 = zext i8 %97 to i32
  %99 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %100 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %99, i32 0, i32 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %104 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %103, i32 0, i32 11
  %105 = load i8, i8* %104, align 8
  %106 = zext i8 %105 to i32
  %107 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %108 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %107, i32 0, i32 9
  %109 = load i8, i8* %108, align 2
  %110 = zext i8 %109 to i32
  %111 = load %struct.png_info_def*, %struct.png_info_def** %12, align 8
  %112 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %111, i32 0, i32 10
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  call void @png_check_IHDR(%struct.png_struct_def* noundef %88, i32 noundef %91, i32 noundef %94, i32 noundef %98, i32 noundef %102, i32 noundef %106, i32 noundef %110, i32 noundef %114)
  store i32 1, i32* %10, align 4
  br label %115

115:                                              ; preds = %87, %25
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

declare void @png_check_IHDR(%struct.png_struct_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_PLTE(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, %struct.png_color_struct** noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.png_struct_def*, align 8
  %7 = alloca %struct.png_info_def*, align 8
  %8 = alloca %struct.png_color_struct**, align 8
  %9 = alloca i32*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %6, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %7, align 8
  store %struct.png_color_struct** %2, %struct.png_color_struct*** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %11 = icmp ne %struct.png_struct_def* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %4
  %13 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %14 = icmp ne %struct.png_info_def* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %17 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.png_color_struct**, %struct.png_color_struct*** %8, align 8
  %23 = icmp ne %struct.png_color_struct** %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %26 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %25, i32 0, i32 4
  %27 = load %struct.png_color_struct*, %struct.png_color_struct** %26, align 8
  %28 = load %struct.png_color_struct**, %struct.png_color_struct*** %8, align 8
  store %struct.png_color_struct* %27, %struct.png_color_struct** %28, align 8
  %29 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %30 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %29, i32 0, i32 5
  %31 = load i16, i16* %30, align 8
  %32 = zext i16 %31 to i32
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  store i32 8, i32* %5, align 4
  br label %35

34:                                               ; preds = %21, %15, %12, %4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_sBIT(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, %struct.png_color_8_struct** noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca %struct.png_color_8_struct**, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store %struct.png_color_8_struct** %2, %struct.png_color_8_struct*** %7, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %9 = icmp ne %struct.png_struct_def* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %12 = icmp ne %struct.png_info_def* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.png_color_8_struct**, %struct.png_color_8_struct*** %7, align 8
  %21 = icmp ne %struct.png_color_8_struct** %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %24 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %23, i32 0, i32 16
  %25 = load %struct.png_color_8_struct**, %struct.png_color_8_struct*** %7, align 8
  store %struct.png_color_8_struct* %24, %struct.png_color_8_struct** %25, align 8
  store i32 2, i32* %4, align 4
  br label %27

26:                                               ; preds = %19, %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_tRNS(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i8** noundef %2, i32* noundef %3, %struct.png_color_16_struct** noundef %4) #0 {
  %6 = alloca %struct.png_struct_def*, align 8
  %7 = alloca %struct.png_info_def*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.png_color_16_struct**, align 8
  %11 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %6, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.png_color_16_struct** %4, %struct.png_color_16_struct*** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %13 = icmp ne %struct.png_struct_def* %12, null
  br i1 %13, label %14, label %74

14:                                               ; preds = %5
  %15 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %16 = icmp ne %struct.png_info_def* %15, null
  br i1 %16, label %17, label %74

17:                                               ; preds = %14
  %18 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %19 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 16
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %74

23:                                               ; preds = %17
  %24 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %25 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %24, i32 0, i32 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load i8**, i8*** %8, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %34 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %33, i32 0, i32 17
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** %8, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, 16
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %32, %29
  %40 = load %struct.png_color_16_struct**, %struct.png_color_16_struct*** %10, align 8
  %41 = icmp ne %struct.png_color_16_struct** %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %44 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %43, i32 0, i32 18
  %45 = load %struct.png_color_16_struct**, %struct.png_color_16_struct*** %10, align 8
  store %struct.png_color_16_struct* %44, %struct.png_color_16_struct** %45, align 8
  br label %46

46:                                               ; preds = %42, %39
  br label %62

47:                                               ; preds = %23
  %48 = load %struct.png_color_16_struct**, %struct.png_color_16_struct*** %10, align 8
  %49 = icmp ne %struct.png_color_16_struct** %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %52 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %51, i32 0, i32 18
  %53 = load %struct.png_color_16_struct**, %struct.png_color_16_struct*** %10, align 8
  store %struct.png_color_16_struct* %52, %struct.png_color_16_struct** %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, 16
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i8**, i8*** %8, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i8**, i8*** %8, align 8
  store i8* null, i8** %60, align 8
  br label %61

61:                                               ; preds = %59, %56
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i32*, i32** %9, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %67 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %66, i32 0, i32 6
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, 16
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %65, %62
  br label %74

74:                                               ; preds = %73, %17, %14, %5
  %75 = load i32, i32* %11, align 4
  ret i32 %75
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_unknown_chunks(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, %struct.png_unknown_chunk_t** noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca %struct.png_unknown_chunk_t**, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store %struct.png_unknown_chunk_t** %2, %struct.png_unknown_chunk_t*** %7, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %9 = icmp ne %struct.png_struct_def* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %12 = icmp ne %struct.png_info_def* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.png_unknown_chunk_t**, %struct.png_unknown_chunk_t*** %7, align 8
  %15 = icmp ne %struct.png_unknown_chunk_t** %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %18 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %17, i32 0, i32 22
  %19 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %18, align 8
  %20 = load %struct.png_unknown_chunk_t**, %struct.png_unknown_chunk_t*** %7, align 8
  store %struct.png_unknown_chunk_t* %19, %struct.png_unknown_chunk_t** %20, align 8
  %21 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %22 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %21, i32 0, i32 23
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %4, align 4
  br label %25

24:                                               ; preds = %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @png_get_compression_buffer_size(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %5 = icmp eq %struct.png_struct_def* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %23

7:                                                ; preds = %1
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 32768
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 81
  %16 = load i32, i32* %15, align 8
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %2, align 8
  br label %23

18:                                               ; preds = %7
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 8
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %18, %13, %6
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_user_width_max(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = icmp ne %struct.png_struct_def* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 73
  %8 = load i32, i32* %7, align 4
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ %8, %5 ], [ 0, %9 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_user_height_max(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = icmp ne %struct.png_struct_def* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 74
  %8 = load i32, i32* %7, align 8
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ %8, %5 ], [ 0, %9 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_chunk_cache_max(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = icmp ne %struct.png_struct_def* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 75
  %8 = load i32, i32* %7, align 4
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ %8, %5 ], [ 0, %9 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @png_get_chunk_malloc_max(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = icmp ne %struct.png_struct_def* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 76
  %8 = load i64, i64* %7, align 8
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i64 [ %8, %5 ], [ 0, %9 ]
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_io_state(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i32 0, i32 82
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_io_chunk_type(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i32 0, i32 30
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_palette_max(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %10 = icmp ne %struct.png_info_def* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 40
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  br label %16

15:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

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
