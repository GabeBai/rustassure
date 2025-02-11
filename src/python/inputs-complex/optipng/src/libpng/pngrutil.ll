; ModuleID = 'pngrutil.c'
source_filename = "pngrutil.c"
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

@.str = private unnamed_addr constant [34 x i8] c"PNG unsigned integer out of range\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Not a PNG file\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"PNG file corrupted by ASCII conversion\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CRC error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"out of place\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"ignored in grayscale PNG\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"tRNS must be after\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"hIST must be after\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"bKGD must be after\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"invalid with alpha channel\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"no space in chunk cache\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"unhandled critical chunk\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"invalid chunk type\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"internal row logic error\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"internal row size calculation error\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"internal row width error\00", align 1
@png_combine_row.row_mask = internal constant [2 x [3 x [6 x i32]]] [[3 x [6 x i32]] [[6 x i32] [i32 16843009, i32 269488144, i32 286331153, i32 1145324612, i32 1431655765, i32 -1431655766], [6 x i32] [i32 196611, i32 50332416, i32 50529027, i32 808464432, i32 858993459, i32 -858993460], [6 x i32] [i32 15, i32 983040, i32 983055, i32 251662080, i32 252645135, i32 -252645136]], [3 x [6 x i32]] [[6 x i32] [i32 -2139062144, i32 134744072, i32 -2004318072, i32 572662306, i32 -1431655766, i32 1431655765], [6 x i32] [i32 12583104, i32 -1073692672, i32 -1061109568, i32 202116108, i32 -858993460, i32 858993459], [6 x i32] [i32 240, i32 15728640, i32 15728880, i32 -268374016, i32 -252645136, i32 252645135]]], align 4
@png_combine_row.display_mask = internal constant [2 x [3 x [3 x i32]]] [[3 x [3 x i32]] [[3 x i32] [i32 -252645136, i32 -858993460, i32 -1431655766], [3 x i32] [i32 -16711936, i32 -252645136, i32 -858993460], [3 x i32] [i32 -65536, i32 -16711936, i32 -252645136]], [3 x [3 x i32]] [[3 x i32] [i32 252645135, i32 858993459, i32 1431655765], [3 x i32] [i32 -16711936, i32 252645135, i32 858993459], [3 x i32] [i32 -65536, i32 -16711936, i32 252645135]]], align 4
@.str.20 = private unnamed_addr constant [35 x i8] c"invalid user transform pixel depth\00", align 1
@png_do_read_interlace.png_pass_inc = internal constant [7 x i32] [i32 8, i32 8, i32 4, i32 4, i32 2, i32 2, i32 1], align 4
@.str.21 = private unnamed_addr constant [22 x i8] c"Not enough image data\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Extra compressed data\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Too much image data\00", align 1
@png_read_finish_row.png_pass_start = internal constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@png_read_finish_row.png_pass_inc = internal constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@png_read_finish_row.png_pass_ystart = internal constant [7 x i8] c"\00\00\04\00\02\00\01", align 1
@png_read_finish_row.png_pass_yinc = internal constant [7 x i8] c"\08\08\08\04\04\02\02", align 1
@png_read_start_row.png_pass_start = internal constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@png_read_start_row.png_pass_inc = internal constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@png_read_start_row.png_pass_ystart = internal constant [7 x i8] c"\00\00\04\00\02\00\01", align 1
@png_read_start_row.png_pass_yinc = internal constant [7 x i8] c"\08\08\08\04\04\02\02", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Row has too many bytes to allocate in memory\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"unknown chunk exceeds memory limits\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"insufficient memory to read chunk\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c" using zstream\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"1.2.8-optipng\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_uint_31(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl i32 %8, 24
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 %13, 16
  %15 = add i32 %9, %14
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 8
  %21 = add i32 %15, %20
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = add i32 %21, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ugt i32 %27, 2147483647
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_error(%struct.png_struct_def* noundef %30, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #5
  unreachable

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_uint_32(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl i32 %6, 24
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 16
  %13 = add i32 %7, %12
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 8
  %19 = add i32 %13, %18
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = add i32 %19, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_get_int_32(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl i32 %7, 24
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl i32 %12, 16
  %14 = add i32 %8, %13
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 %18, 8
  %20 = add i32 %14, %19
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = add i32 %20, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, -2147483648
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = xor i32 %32, -1
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, -2147483648
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %38, %29
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i16 @png_get_uint_16(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl i32 %6, 8
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add i32 %7, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = trunc i32 %13 to i16
  ret i16 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_sig(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 53
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sge i32 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 53
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub i64 8, %18
  store i64 %19, i64* %6, align 8
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 82
  store i32 17, i32* %21, align 4
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %23 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %24 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %23, i32 0, i32 15
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 %25
  %27 = load i64, i64* %6, align 8
  call void @png_read_data(%struct.png_struct_def* noundef %22, i8* noundef %26, i64 noundef %27)
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 53
  store i8 8, i8* %29, align 1
  %30 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %31 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %30, i32 0, i32 15
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %31, i64 0, i64 0
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @png_sig_cmp(i8* noundef %32, i64 noundef %33, i64 noundef %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %13
  %38 = load i64, i64* %5, align 8
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %42 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %41, i32 0, i32 15
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %42, i64 0, i64 0
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = sub i64 %45, 4
  %47 = call i32 @png_sig_cmp(i8* noundef %43, i64 noundef %44, i64 noundef %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_error(%struct.png_struct_def* noundef %50, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #5
  unreachable

51:                                               ; preds = %40, %37
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_error(%struct.png_struct_def* noundef %52, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0)) #5
  unreachable

53:                                               ; preds = %13
  %54 = load i64, i64* %5, align 8
  %55 = icmp ult i64 %54, 3
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %58 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, 4096
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %12, %56, %53
  ret void
}

declare void @png_read_data(%struct.png_struct_def* noundef, i8* noundef, i64 noundef) #2

declare i32 @png_sig_cmp(i8* noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_read_chunk_header(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  %3 = alloca [8 x i8], align 1
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 82
  store i32 33, i32* %6, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @png_read_data(%struct.png_struct_def* noundef %7, i8* noundef %8, i64 noundef 8)
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %11 = call i32 @png_get_uint_31(%struct.png_struct_def* noundef %9, i8* noundef %10)
  store i32 %11, i32* %4, align 4
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 255, %16
  %18 = shl i32 %17, 24
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 255, %23
  %25 = shl i32 %24, 16
  %26 = or i32 %18, %25
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 255, %31
  %33 = shl i32 %32, 8
  %34 = or i32 %26, %33
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 255, %39
  %41 = shl i32 %40, 0
  %42 = or i32 %34, %41
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %44 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %43, i32 0, i32 30
  store i32 %42, i32* %44, align 8
  %45 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_reset_crc(%struct.png_struct_def* noundef %45)
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  call void @png_calculate_crc(%struct.png_struct_def* noundef %46, i8* noundef %48, i64 noundef 4)
  %49 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %50 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %51 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %50, i32 0, i32 30
  %52 = load i32, i32* %51, align 8
  call void @png_check_chunk_name(%struct.png_struct_def* noundef %49, i32 noundef %52)
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %54 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %53, i32 0, i32 82
  store i32 65, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare void @png_reset_crc(%struct.png_struct_def* noundef) #2

declare void @png_calculate_crc(%struct.png_struct_def* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_check_chunk_name(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 4
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 255
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 65
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 122
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 90
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 97
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %15, %10
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %25, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0)) #5
  unreachable

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %4, align 4
  %28 = lshr i32 %27, 8
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %7, !llvm.loop !10

32:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_crc_read(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = icmp eq %struct.png_struct_def* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %19

10:                                               ; preds = %3
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  call void @png_read_data(%struct.png_struct_def* noundef %11, i8* noundef %12, i64 noundef %14)
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  call void @png_calculate_crc(%struct.png_struct_def* noundef %15, i8* noundef %16, i64 noundef %18)
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_crc_finish(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %17, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ugt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  store i32 1024, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sub i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %23 = load i32, i32* %6, align 4
  call void @png_crc_read(%struct.png_struct_def* noundef %21, i8* noundef %22, i32 noundef %23)
  br label %8, !llvm.loop !12

24:                                               ; preds = %8
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = call i32 @png_crc_error(%struct.png_struct_def* noundef %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %30 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %29, i32 0, i32 30
  %31 = load i32, i32* %30, align 8
  %32 = lshr i32 %31, 29
  %33 = and i32 1, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %49

41:                                               ; preds = %28
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1024
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %35
  %48 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_warning(%struct.png_struct_def* noundef %48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %51

49:                                               ; preds = %41, %35
  %50 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %50, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #5
  unreachable

51:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %53

52:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_crc_error(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 30
  %9 = load i32, i32* %8, align 8
  %10 = lshr i32 %9, 29
  %11 = and i32 1, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 768
  %18 = icmp eq i32 %17, 768
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %13
  br label %29

21:                                               ; preds = %1
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 2048
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %21
  br label %29

29:                                               ; preds = %28, %20
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %30, i32 0, i32 82
  store i32 129, i32* %31, align 4
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  call void @png_read_data(%struct.png_struct_def* noundef %32, i8* noundef %33, i64 noundef 4)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %29
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 24
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 16
  %46 = add i32 %40, %45
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 8
  %52 = add i32 %46, %51
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = add i32 %52, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %60 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %59, i32 0, i32 37
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %58, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %36
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare void @png_chunk_warning(%struct.png_struct_def* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @png_chunk_error(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_handle_IHDR(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [13 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %21, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #5
  unreachable

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 13
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %26, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #5
  unreachable

27:                                               ; preds = %22
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %33 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  call void @png_crc_read(%struct.png_struct_def* noundef %32, i8* noundef %33, i32 noundef 13)
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %35 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %34, i32 noundef 0)
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %37 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %38 = call i32 @png_get_uint_31(%struct.png_struct_def* noundef %36, i8* noundef %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %40 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  %42 = call i32 @png_get_uint_31(%struct.png_struct_def* noundef %39, i8* noundef %41)
  store i32 %42, i32* %9, align 4
  %43 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 9
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 10
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 11
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 12
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %60 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %59, i32 0, i32 23
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %63 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %62, i32 0, i32 24
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = trunc i32 %64 to i8
  %66 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %67 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %66, i32 0, i32 48
  store i8 %65, i8* %67, align 8
  %68 = load i32, i32* %14, align 4
  %69 = trunc i32 %68 to i8
  %70 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %71 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %70, i32 0, i32 44
  store i8 %69, i8* %71, align 4
  %72 = load i32, i32* %11, align 4
  %73 = trunc i32 %72 to i8
  %74 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %75 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %74, i32 0, i32 47
  store i8 %73, i8* %75, align 1
  %76 = load i32, i32* %12, align 4
  %77 = trunc i32 %76 to i8
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %79 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %78, i32 0, i32 72
  store i8 %77, i8* %79, align 8
  %80 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %81 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %80, i32 0, i32 47
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  switch i32 %83, label %84 [
    i32 0, label %85
    i32 3, label %85
    i32 2, label %88
    i32 4, label %91
    i32 6, label %94
  ]

84:                                               ; preds = %27
  br label %85

85:                                               ; preds = %27, %27, %84
  %86 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %87 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %86, i32 0, i32 51
  store i8 1, i8* %87, align 1
  br label %97

88:                                               ; preds = %27
  %89 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %90 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %89, i32 0, i32 51
  store i8 3, i8* %90, align 1
  br label %97

91:                                               ; preds = %27
  %92 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %93 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %92, i32 0, i32 51
  store i8 2, i8* %93, align 1
  br label %97

94:                                               ; preds = %27
  %95 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %96 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %95, i32 0, i32 51
  store i8 4, i8* %96, align 1
  br label %97

97:                                               ; preds = %94, %91, %88, %85
  %98 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %99 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %98, i32 0, i32 48
  %100 = load i8, i8* %99, align 8
  %101 = zext i8 %100 to i32
  %102 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %103 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %102, i32 0, i32 51
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = mul nsw i32 %101, %105
  %107 = trunc i32 %106 to i8
  %108 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %109 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %108, i32 0, i32 50
  store i8 %107, i8* %109, align 2
  %110 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %111 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %110, i32 0, i32 50
  %112 = load i8, i8* %111, align 2
  %113 = zext i8 %112 to i32
  %114 = icmp sge i32 %113, 8
  br i1 %114, label %115, label %126

115:                                              ; preds = %97
  %116 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %117 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %116, i32 0, i32 23
  %118 = load i32, i32* %117, align 4
  %119 = zext i32 %118 to i64
  %120 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %121 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %120, i32 0, i32 50
  %122 = load i8, i8* %121, align 2
  %123 = zext i8 %122 to i64
  %124 = lshr i64 %123, 3
  %125 = mul i64 %119, %124
  br label %138

126:                                              ; preds = %97
  %127 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %128 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %127, i32 0, i32 23
  %129 = load i32, i32* %128, align 4
  %130 = zext i32 %129 to i64
  %131 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %132 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %131, i32 0, i32 50
  %133 = load i8, i8* %132, align 2
  %134 = zext i8 %133 to i64
  %135 = mul i64 %130, %134
  %136 = add i64 %135, 7
  %137 = lshr i64 %136, 3
  br label %138

138:                                              ; preds = %126, %115
  %139 = phi i64 [ %125, %115 ], [ %137, %126 ]
  %140 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %141 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %140, i32 0, i32 27
  store i64 %139, i64* %141, align 8
  %142 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %143 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %142, %struct.png_info_def* noundef %143, i32 noundef %144, i32 noundef %145, i32 noundef %146, i32 noundef %147, i32 noundef %148, i32 noundef %149, i32 noundef %150)
  ret void
}

declare void @png_set_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_handle_PLTE(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x %struct.png_color_struct], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.png_color_struct*, align 8
  %12 = alloca [3 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %19, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #5
  unreachable

20:                                               ; preds = %3
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %27, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #5
  unreachable

28:                                               ; preds = %20
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %30 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %35, i32 noundef %36)
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %38, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %182

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, 2
  store i32 %45, i32* %43, align 8
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %47 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %46, i32 0, i32 47
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %53, i32 noundef %54)
  %56 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %56, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %182

57:                                               ; preds = %41
  %58 = load i32, i32* %6, align 4
  %59 = icmp ugt i32 %58, 768
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = urem i32 %61, 3
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %60, %57
  %65 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %65, i32 noundef %66)
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %69 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %68, i32 0, i32 47
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %74, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %77

75:                                               ; preds = %64
  %76 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %76, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #5
  unreachable

77:                                               ; preds = %73
  br label %182

78:                                               ; preds = %60
  %79 = load i32, i32* %6, align 4
  %80 = sdiv i32 %79, 3
  store i32 %80, i32* %9, align 4
  %81 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %82 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %81, i32 0, i32 47
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %88 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %87, i32 0, i32 48
  %89 = load i8, i8* %88, align 8
  %90 = zext i8 %89 to i32
  %91 = shl i32 1, %90
  store i32 %91, i32* %8, align 4
  br label %93

92:                                               ; preds = %78
  store i32 256, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %86
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %93
  store i32 0, i32* %10, align 4
  %100 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %7, i64 0, i64 0
  store %struct.png_color_struct* %100, %struct.png_color_struct** %11, align 8
  br label %101

101:                                              ; preds = %120, %99
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %101
  %106 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %107 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  call void @png_crc_read(%struct.png_struct_def* noundef %106, i8* noundef %107, i32 noundef 3)
  %108 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = load %struct.png_color_struct*, %struct.png_color_struct** %11, align 8
  %111 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %110, i32 0, i32 0
  store i8 %109, i8* %111, align 1
  %112 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = load %struct.png_color_struct*, %struct.png_color_struct** %11, align 8
  %115 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %114, i32 0, i32 1
  store i8 %113, i8* %115, align 1
  %116 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 2
  %117 = load i8, i8* %116, align 1
  %118 = load %struct.png_color_struct*, %struct.png_color_struct** %11, align 8
  %119 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %118, i32 0, i32 2
  store i8 %117, i8* %119, align 1
  br label %120

120:                                              ; preds = %105
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  %123 = load %struct.png_color_struct*, %struct.png_color_struct** %11, align 8
  %124 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %123, i32 1
  store %struct.png_color_struct* %124, %struct.png_color_struct** %11, align 8
  br label %101, !llvm.loop !13

125:                                              ; preds = %101
  %126 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %9, align 4
  %129 = mul nsw i32 %128, 3
  %130 = sub nsw i32 %127, %129
  %131 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %126, i32 noundef %130)
  %132 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %133 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %134 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %7, i64 0, i64 0
  %135 = load i32, i32* %9, align 4
  call void @png_set_PLTE(%struct.png_struct_def* noundef %132, %struct.png_info_def* noundef %133, %struct.png_color_struct* noundef %134, i32 noundef %135)
  %136 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %137 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %136, i32 0, i32 41
  %138 = load i16, i16* %137, align 8
  %139 = zext i16 %138 to i32
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %125
  %142 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %143 = icmp ne %struct.png_info_def* %142, null
  br i1 %143, label %144, label %160

144:                                              ; preds = %141
  %145 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %146 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, 16
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %144, %125
  %151 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %152 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %151, i32 0, i32 41
  store i16 0, i16* %152, align 8
  %153 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %154 = icmp ne %struct.png_info_def* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %157 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %156, i32 0, i32 6
  store i16 0, i16* %157, align 2
  br label %158

158:                                              ; preds = %155, %150
  %159 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %159, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %144, %141
  %161 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %162 = icmp ne %struct.png_info_def* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %165 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, 64
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %170, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %163, %160
  %172 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %173 = icmp ne %struct.png_info_def* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %176 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, 32
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %181, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %182

182:                                              ; preds = %34, %52, %77, %180, %174, %171
  ret void
}

declare void @png_chunk_benign_error(%struct.png_struct_def* noundef, i8* noundef) #2

declare void @png_set_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_struct* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_handle_IEND(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %3
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %19, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #5
  unreachable

20:                                               ; preds = %12
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, 24
  store i32 %24, i32* %22, align 8
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %25, i32 noundef %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %31, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %20
  %33 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_handle_sBIT(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [4 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %17, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #5
  unreachable

18:                                               ; preds = %3
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 6
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %25, i32 noundef %26)
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %28, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %170

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %32 = icmp ne %struct.png_info_def* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %35 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 2
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %40, i32 noundef %41)
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %43, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %170

44:                                               ; preds = %33, %30
  %45 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %46 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %45, i32 0, i32 47
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 3, i32* %7, align 4
  store i8 8, i8* %9, align 1
  br label %59

51:                                               ; preds = %44
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %53 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %52, i32 0, i32 51
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %57 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %56, i32 0, i32 48
  %58 = load i8, i8* %57, align 8
  store i8 %58, i8* %9, align 1
  br label %59

59:                                               ; preds = %51, %50
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = icmp ugt i32 %64, 4
  br i1 %65, label %66, label %71

66:                                               ; preds = %63, %59
  %67 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %67, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %68, i32 noundef %69)
  br label %170

71:                                               ; preds = %63
  %72 = load i8, i8* %9, align 1
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  store i8 %72, i8* %73, align 1
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  store i8 %72, i8* %74, align 1
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  store i8 %72, i8* %75, align 1
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 %72, i8* %76, align 1
  %77 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %79 = load i32, i32* %7, align 4
  call void @png_crc_read(%struct.png_struct_def* noundef %77, i8* noundef %78, i32 noundef %79)
  %80 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %81 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %80, i32 noundef 0)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %170

84:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %108, %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* %9, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp sgt i32 %101, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %96, %89
  %106 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %106, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %170

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %85, !llvm.loop !14

111:                                              ; preds = %85
  %112 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %113 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %112, i32 0, i32 47
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 2
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %111
  %119 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %122 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %121, i32 0, i32 62
  %123 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %122, i32 0, i32 0
  store i8 %120, i8* %123, align 8
  %124 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %127 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %126, i32 0, i32 62
  %128 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %127, i32 0, i32 1
  store i8 %125, i8* %128, align 1
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %132 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %131, i32 0, i32 62
  %133 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %132, i32 0, i32 2
  store i8 %130, i8* %133, align 2
  %134 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  %135 = load i8, i8* %134, align 1
  %136 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %137 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %136, i32 0, i32 62
  %138 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %137, i32 0, i32 4
  store i8 %135, i8* %138, align 4
  br label %165

139:                                              ; preds = %111
  %140 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %143 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %142, i32 0, i32 62
  %144 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %143, i32 0, i32 3
  store i8 %141, i8* %144, align 1
  %145 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %148 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %147, i32 0, i32 62
  %149 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %148, i32 0, i32 0
  store i8 %146, i8* %149, align 8
  %150 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %153 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %152, i32 0, i32 62
  %154 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %153, i32 0, i32 1
  store i8 %151, i8* %154, align 1
  %155 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %158 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %157, i32 0, i32 62
  %159 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %158, i32 0, i32 2
  store i8 %156, i8* %159, align 2
  %160 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %161 = load i8, i8* %160, align 1
  %162 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %163 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %162, i32 0, i32 62
  %164 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %163, i32 0, i32 4
  store i8 %161, i8* %164, align 4
  br label %165

165:                                              ; preds = %139, %118
  %166 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %167 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %168 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %169 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %168, i32 0, i32 62
  call void @png_set_sBIT(%struct.png_struct_def* noundef %166, %struct.png_info_def* noundef %167, %struct.png_color_8_struct* noundef %169)
  br label %170

170:                                              ; preds = %165, %105, %83, %66, %39, %24
  ret void
}

declare void @png_set_sBIT(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_8_struct* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_handle_tRNS(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca [6 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %16, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #5
  unreachable

17:                                               ; preds = %3
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %24, i32 noundef %25)
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %27, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %206

28:                                               ; preds = %17
  %29 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %30 = icmp ne %struct.png_info_def* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %33 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 16
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %38, i32 noundef %39)
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %41, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %206

42:                                               ; preds = %31, %28
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %46 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %45, i32 0, i32 47
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %54, i32 noundef %55)
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %57, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %206

58:                                               ; preds = %50
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %60 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  call void @png_crc_read(%struct.png_struct_def* noundef %59, i8* noundef %60, i32 noundef 2)
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %62 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %61, i32 0, i32 41
  store i16 1, i16* %62, align 8
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 8
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = add i32 %66, %70
  %72 = trunc i32 %71 to i16
  %73 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %74 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %73, i32 0, i32 64
  %75 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %74, i32 0, i32 4
  store i16 %72, i16* %75, align 8
  br label %189

76:                                               ; preds = %44
  %77 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %78 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %77, i32 0, i32 47
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %139

82:                                               ; preds = %76
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 6
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %86, i32 noundef %87)
  %89 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %89, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %206

90:                                               ; preds = %82
  %91 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %92 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %93 = load i32, i32* %6, align 4
  call void @png_crc_read(%struct.png_struct_def* noundef %91, i8* noundef %92, i32 noundef %93)
  %94 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %95 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %94, i32 0, i32 41
  store i16 1, i16* %95, align 8
  %96 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = shl i32 %98, 8
  %100 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = add i32 %99, %103
  %105 = trunc i32 %104 to i16
  %106 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %107 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %106, i32 0, i32 64
  %108 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %107, i32 0, i32 1
  store i16 %105, i16* %108, align 2
  %109 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 %112, 8
  %114 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add i32 %113, %118
  %120 = trunc i32 %119 to i16
  %121 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %122 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %121, i32 0, i32 64
  %123 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %122, i32 0, i32 2
  store i16 %120, i16* %123, align 4
  %124 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %125 = getelementptr inbounds i8, i8* %124, i64 4
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = shl i32 %127, 8
  %129 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %130 = getelementptr inbounds i8, i8* %129, i64 4
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = add i32 %128, %133
  %135 = trunc i32 %134 to i16
  %136 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %137 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %136, i32 0, i32 64
  %138 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %137, i32 0, i32 3
  store i16 %135, i16* %138, align 2
  br label %188

139:                                              ; preds = %76
  %140 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %141 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %140, i32 0, i32 47
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 3
  br i1 %144, label %145, label %182

145:                                              ; preds = %139
  %146 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %147 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, 2
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %152, i32 noundef %153)
  %155 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %155, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %206

156:                                              ; preds = %145
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %159 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %158, i32 0, i32 39
  %160 = load i16, i16* %159, align 8
  %161 = zext i16 %160 to i32
  %162 = icmp ugt i32 %157, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %6, align 4
  %165 = icmp ugt i32 %164, 256
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %6, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166, %163, %156
  %170 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %170, i32 noundef %171)
  %173 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %173, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %206

174:                                              ; preds = %166
  %175 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %176 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %177 = load i32, i32* %6, align 4
  call void @png_crc_read(%struct.png_struct_def* noundef %175, i8* noundef %176, i32 noundef %177)
  %178 = load i32, i32* %6, align 4
  %179 = trunc i32 %178 to i16
  %180 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %181 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %180, i32 0, i32 41
  store i16 %179, i16* %181, align 8
  br label %187

182:                                              ; preds = %139
  %183 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %183, i32 noundef %184)
  %186 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %186, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %206

187:                                              ; preds = %174
  br label %188

188:                                              ; preds = %187, %90
  br label %189

189:                                              ; preds = %188, %58
  %190 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %191 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %190, i32 noundef 0)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %195 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %194, i32 0, i32 41
  store i16 0, i16* %195, align 8
  br label %206

196:                                              ; preds = %189
  %197 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %198 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %199 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %200 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %201 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %200, i32 0, i32 41
  %202 = load i16, i16* %201, align 8
  %203 = zext i16 %202 to i32
  %204 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %205 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %204, i32 0, i32 64
  call void @png_set_tRNS(%struct.png_struct_def* noundef %197, %struct.png_info_def* noundef %198, i8* noundef %199, i32 noundef %203, %struct.png_color_16_struct* noundef %205)
  br label %206

206:                                              ; preds = %196, %193, %182, %169, %151, %85, %53, %37, %23
  ret void
}

declare void @png_set_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8* noundef, i32 noundef, %struct.png_color_16_struct* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_handle_bKGD(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca %struct.png_color_16_struct, align 2
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %16, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #5
  unreachable

17:                                               ; preds = %3
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 47
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29, %17
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %36, i32 noundef %37)
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %39, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %226

40:                                               ; preds = %29, %23
  %41 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %42 = icmp ne %struct.png_info_def* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %45 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %50, i32 noundef %51)
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %226

54:                                               ; preds = %43, %40
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %58 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %57, i32 0, i32 47
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %7, align 4
  br label %73

63:                                               ; preds = %56
  %64 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %65 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %64, i32 0, i32 47
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 2
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 6, i32* %7, align 4
  br label %72

71:                                               ; preds = %63
  store i32 2, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %70
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %78, i32 noundef %79)
  %81 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %81, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %226

82:                                               ; preds = %73
  %83 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %84 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %85 = load i32, i32* %7, align 4
  call void @png_crc_read(%struct.png_struct_def* noundef %83, i8* noundef %84, i32 noundef %85)
  %86 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %87 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %86, i32 noundef 0)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %226

90:                                               ; preds = %82
  %91 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %92 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %91, i32 0, i32 47
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %159

96:                                               ; preds = %90
  %97 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 0
  store i8 %98, i8* %99, align 2
  %100 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %101 = icmp ne %struct.png_info_def* %100, null
  br i1 %101, label %102, label %153

102:                                              ; preds = %96
  %103 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %104 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %103, i32 0, i32 5
  %105 = load i16, i16* %104, align 8
  %106 = zext i16 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %153

108:                                              ; preds = %102
  %109 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %113 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %112, i32 0, i32 5
  %114 = load i16, i16* %113, align 8
  %115 = zext i16 %114 to i32
  %116 = icmp sge i32 %111, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %118, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %226

119:                                              ; preds = %108
  %120 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %121 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %120, i32 0, i32 38
  %122 = load %struct.png_color_struct*, %struct.png_color_struct** %121, align 8
  %123 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %122, i64 %125
  %127 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %126, i32 0, i32 0
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i16
  %130 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 1
  store i16 %129, i16* %130, align 2
  %131 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %132 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %131, i32 0, i32 38
  %133 = load %struct.png_color_struct*, %struct.png_color_struct** %132, align 8
  %134 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %133, i64 %136
  %138 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %137, i32 0, i32 1
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i16
  %141 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 2
  store i16 %140, i16* %141, align 2
  %142 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %143 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %142, i32 0, i32 38
  %144 = load %struct.png_color_struct*, %struct.png_color_struct** %143, align 8
  %145 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %144, i64 %147
  %149 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %148, i32 0, i32 2
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i16
  %152 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 3
  store i16 %151, i16* %152, align 2
  br label %157

153:                                              ; preds = %102, %96
  %154 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 3
  store i16 0, i16* %154, align 2
  %155 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 2
  store i16 0, i16* %155, align 2
  %156 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 1
  store i16 0, i16* %156, align 2
  br label %157

157:                                              ; preds = %153, %119
  %158 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 4
  store i16 0, i16* %158, align 2
  br label %223

159:                                              ; preds = %90
  %160 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %161 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %160, i32 0, i32 47
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = and i32 %163, 2
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %182

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 0
  store i8 0, i8* %167, align 2
  %168 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = shl i32 %170, 8
  %172 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = add i32 %171, %175
  %177 = trunc i32 %176 to i16
  %178 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 4
  store i16 %177, i16* %178, align 2
  %179 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 3
  store i16 %177, i16* %179, align 2
  %180 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 2
  store i16 %177, i16* %180, align 2
  %181 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 1
  store i16 %177, i16* %181, align 2
  br label %222

182:                                              ; preds = %159
  %183 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 0
  store i8 0, i8* %183, align 2
  %184 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = shl i32 %186, 8
  %188 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = add i32 %187, %191
  %193 = trunc i32 %192 to i16
  %194 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 1
  store i16 %193, i16* %194, align 2
  %195 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %196 = getelementptr inbounds i8, i8* %195, i64 2
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = shl i32 %198, 8
  %200 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %201 = getelementptr inbounds i8, i8* %200, i64 2
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = add i32 %199, %204
  %206 = trunc i32 %205 to i16
  %207 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 2
  store i16 %206, i16* %207, align 2
  %208 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %209 = getelementptr inbounds i8, i8* %208, i64 4
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = shl i32 %211, 8
  %213 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %214 = getelementptr inbounds i8, i8* %213, i64 4
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = add i32 %212, %217
  %219 = trunc i32 %218 to i16
  %220 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 3
  store i16 %219, i16* %220, align 2
  %221 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %9, i32 0, i32 4
  store i16 0, i16* %221, align 2
  br label %222

222:                                              ; preds = %182, %166
  br label %223

223:                                              ; preds = %222, %157
  %224 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %225 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  call void @png_set_bKGD(%struct.png_struct_def* noundef %224, %struct.png_info_def* noundef %225, %struct.png_color_16_struct* noundef %9)
  br label %226

226:                                              ; preds = %223, %117, %89, %77, %49, %35
  ret void
}

declare void @png_set_bKGD(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_16_struct* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_handle_hIST(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x i16], align 2
  %10 = alloca [2 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %17, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #5
  unreachable

18:                                               ; preds = %3
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24, %18
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %31, i32 noundef %32)
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %34, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %101

35:                                               ; preds = %24
  %36 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %37 = icmp ne %struct.png_info_def* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %40 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 64
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %45, i32 noundef %46)
  %48 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %101

49:                                               ; preds = %38, %35
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = udiv i32 %52, 2
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %56 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %55, i32 0, i32 39
  %57 = load i16, i16* %56, align 8
  %58 = zext i16 %57 to i32
  %59 = icmp ne i32 %54, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = icmp ugt i32 %61, 256
  br i1 %62, label %63, label %68

63:                                               ; preds = %60, %51
  %64 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %64, i32 noundef %65)
  %67 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %67, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %101

68:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %89, %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %75 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  call void @png_crc_read(%struct.png_struct_def* noundef %74, i8* noundef %75, i32 noundef 2)
  %76 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl i32 %78, 8
  %80 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = add i32 %79, %83
  %85 = trunc i32 %84 to i16
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [256 x i16], [256 x i16]* %9, i64 0, i64 %87
  store i16 %85, i16* %88, align 2
  br label %89

89:                                               ; preds = %73
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %69, !llvm.loop !15

92:                                               ; preds = %69
  %93 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %94 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %93, i32 noundef 0)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %101

97:                                               ; preds = %92
  %98 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %99 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %100 = getelementptr inbounds [256 x i16], [256 x i16]* %9, i64 0, i64 0
  call void @png_set_hIST(%struct.png_struct_def* noundef %98, %struct.png_info_def* noundef %99, i16* noundef %100)
  br label %101

101:                                              ; preds = %97, %96, %63, %44, %30
  ret void
}

declare void @png_set_hIST(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i16* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_handle_unknown(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 68
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %12, %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %24 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %23, i32 0, i32 30
  %25 = load i32, i32* %24, align 8
  %26 = lshr i32 %25, 29
  %27 = and i32 1, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22, %16
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @png_cache_unknown_chunk(%struct.png_struct_def* noundef %30, i32 noundef %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %29
  br label %40

36:                                               ; preds = %22, %19
  %37 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %37, i32 noundef %38)
  br label %40

40:                                               ; preds = %36, %35
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %73

46:                                               ; preds = %43
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %48 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %47, i32 0, i32 30
  %49 = load i32, i32* %48, align 8
  %50 = lshr i32 %49, 29
  %51 = and i32 1, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %46, %40
  %54 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %55 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %54, i32 0, i32 75
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %62 [
    i32 2, label %57
    i32 1, label %61
    i32 0, label %67
  ]

57:                                               ; preds = %53
  %58 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %59 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %58, i32 0, i32 75
  store i32 1, i32* %59, align 4
  %60 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %60, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  br label %61

61:                                               ; preds = %53, %57
  br label %72

62:                                               ; preds = %53
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %64 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %63, i32 0, i32 75
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, -1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %53, %62
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %69 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %70 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %71 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %70, i32 0, i32 77
  call void @png_set_unknown_chunks(%struct.png_struct_def* noundef %68, %struct.png_info_def* noundef %69, %struct.png_unknown_chunk_t* noundef %71, i32 noundef 1)
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %72, %46, %43
  %74 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %75 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %74, i32 0, i32 77
  %76 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %81 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %82 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %81, i32 0, i32 77
  %83 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  call void @png_free(%struct.png_struct_def* noundef %80, i8* noundef %84)
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %87 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %86, i32 0, i32 77
  %88 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %87, i32 0, i32 1
  store i8* null, i8** %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %93 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %92, i32 0, i32 30
  %94 = load i32, i32* %93, align 8
  %95 = lshr i32 %94, 29
  %96 = and i32 1, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %91
  %99 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %99, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0)) #5
  unreachable

100:                                              ; preds = %91, %85
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @png_cache_unknown_chunk(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 -1, i64* %6, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 77
  %9 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 77
  %16 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  call void @png_free(%struct.png_struct_def* noundef %13, i8* noundef %17)
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 77
  %20 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %19, i32 0, i32 1
  store i8* null, i8** %20, align 8
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 76
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %28 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %27, i32 0, i32 76
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %34 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %33, i32 0, i32 76
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %32, %26, %21
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %6, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %117

41:                                               ; preds = %36
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %42, i32 0, i32 30
  %44 = load i32, i32* %43, align 8
  %45 = lshr i32 %44, 24
  %46 = and i32 %45, 255
  %47 = trunc i32 %46 to i8
  %48 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %49 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %48, i32 0, i32 77
  %50 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %49, i32 0, i32 0
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %50, i64 0, i64 0
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %47, i8* %52, align 8
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %54 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %53, i32 0, i32 30
  %55 = load i32, i32* %54, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = trunc i32 %57 to i8
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %60 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %59, i32 0, i32 77
  %61 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %60, i32 0, i32 0
  %62 = getelementptr inbounds [5 x i8], [5 x i8]* %61, i64 0, i64 0
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 %58, i8* %63, align 1
  %64 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %65 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %64, i32 0, i32 30
  %66 = load i32, i32* %65, align 8
  %67 = lshr i32 %66, 8
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %71 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %70, i32 0, i32 77
  %72 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %71, i32 0, i32 0
  %73 = getelementptr inbounds [5 x i8], [5 x i8]* %72, i64 0, i64 0
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8 %69, i8* %74, align 2
  %75 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %76 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %75, i32 0, i32 30
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 255
  %79 = trunc i32 %78 to i8
  %80 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %81 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %80, i32 0, i32 77
  %82 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %81, i32 0, i32 0
  %83 = getelementptr inbounds [5 x i8], [5 x i8]* %82, i64 0, i64 0
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  store i8 %79, i8* %84, align 1
  %85 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %86 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %85, i32 0, i32 77
  %87 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %86, i32 0, i32 0
  %88 = getelementptr inbounds [5 x i8], [5 x i8]* %87, i64 0, i64 0
  %89 = getelementptr inbounds i8, i8* %88, i64 4
  store i8 0, i8* %89, align 4
  %90 = load i32, i32* %5, align 4
  %91 = zext i32 %90 to i64
  %92 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %93 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %92, i32 0, i32 77
  %94 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %93, i32 0, i32 2
  store i64 %91, i64* %94, align 8
  %95 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %96 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = trunc i32 %97 to i8
  %99 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %100 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %99, i32 0, i32 77
  %101 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %100, i32 0, i32 3
  store i8 %98, i8* %101, align 8
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %41
  %105 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %106 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %105, i32 0, i32 77
  %107 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %106, i32 0, i32 1
  store i8* null, i8** %107, align 8
  br label %116

108:                                              ; preds = %41
  %109 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = zext i32 %110 to i64
  %112 = call noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef %109, i64 noundef %111)
  %113 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %114 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %113, i32 0, i32 77
  %115 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  br label %116

116:                                              ; preds = %108, %104
  br label %117

117:                                              ; preds = %116, %36
  %118 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %119 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %118, i32 0, i32 77
  %120 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = load i32, i32* %5, align 4
  %125 = icmp ugt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %127, i32 noundef %128)
  %130 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %130, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %144

131:                                              ; preds = %123, %117
  %132 = load i32, i32* %5, align 4
  %133 = icmp ugt i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %136 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %137 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %136, i32 0, i32 77
  %138 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %5, align 4
  call void @png_crc_read(%struct.png_struct_def* noundef %135, i8* noundef %139, i32 noundef %140)
  br label %141

141:                                              ; preds = %134, %131
  %142 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %143 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %142, i32 noundef 0)
  store i32 1, i32* %3, align 4
  br label %144

144:                                              ; preds = %141, %126
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare void @png_set_unknown_chunks(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_unknown_chunk_t* noundef, i32 noundef) #2

declare void @png_free(%struct.png_struct_def* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_combine_row(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i16*, align 8
  %25 = alloca i16*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 55
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %33 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %32, i32 0, i32 32
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %8, align 8
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 23
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %38 to i64
  store i64 %39, i64* %9, align 8
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %41 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %40, i32 0, i32 45
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8 0, i8* %12, align 1
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %47, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0)) #5
  unreachable

48:                                               ; preds = %3
  %49 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %50 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %49, i32 0, i32 35
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %48
  %54 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %55 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %54, i32 0, i32 35
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = icmp uge i32 %57, 8
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = lshr i64 %62, 3
  %64 = mul i64 %60, %63
  br label %72

65:                                               ; preds = %53
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = mul i64 %66, %68
  %70 = add i64 %69, 7
  %71 = lshr i64 %70, 3
  br label %72

72:                                               ; preds = %65, %59
  %73 = phi i64 [ %64, %59 ], [ %71, %65 ]
  %74 = icmp ne i64 %56, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %76, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0)) #5
  unreachable

77:                                               ; preds = %72, %48
  %78 = load i64, i64* %9, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %81, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0)) #5
  unreachable

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* %9, align 8
  %86 = mul i64 %84, %85
  %87 = and i64 %86, 7
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %82
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = icmp uge i32 %93, 8
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = lshr i64 %98, 3
  %100 = mul i64 %96, %99
  br label %108

101:                                              ; preds = %91
  %102 = load i64, i64* %9, align 8
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = mul i64 %102, %104
  %106 = add i64 %105, 7
  %107 = lshr i64 %106, 3
  br label %108

108:                                              ; preds = %101, %95
  %109 = phi i64 [ %100, %95 ], [ %107, %101 ]
  %110 = getelementptr inbounds i8, i8* %92, i64 %109
  %111 = getelementptr inbounds i8, i8* %110, i64 -1
  store i8* %111, i8** %11, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i8, i8* %112, align 1
  store i8 %113, i8* %12, align 1
  %114 = load i32, i32* %13, align 4
  %115 = ashr i32 255, %114
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %108, %82
  %117 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %118 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %117, i32 0, i32 44
  %119 = load i8, i8* %118, align 4
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %617

122:                                              ; preds = %116
  %123 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %124 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, 2
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %617

128:                                              ; preds = %122
  %129 = load i32, i32* %10, align 4
  %130 = icmp ult i32 %129, 6
  br i1 %130, label %131, label %617

131:                                              ; preds = %128
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %617

137:                                              ; preds = %134
  %138 = load i32, i32* %10, align 4
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %617

141:                                              ; preds = %137, %131
  %142 = load i64, i64* %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = and i32 1, %143
  %145 = load i32, i32* %10, align 4
  %146 = add i32 %145, 1
  %147 = lshr i32 %146, 1
  %148 = sub i32 3, %147
  %149 = shl i32 %144, %148
  %150 = and i32 %149, 7
  %151 = zext i32 %150 to i64
  %152 = icmp ule i64 %142, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  br label %657

154:                                              ; preds = %141
  %155 = load i32, i32* %7, align 4
  %156 = icmp ult i32 %155, 8
  br i1 %156, label %157, label %249

157:                                              ; preds = %154
  %158 = load i32, i32* %7, align 4
  %159 = udiv i32 8, %158
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %157
  %163 = load i32, i32* %7, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %171

166:                                              ; preds = %162
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 2
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 1, i32 2
  br label %171

171:                                              ; preds = %166, %165
  %172 = phi i32 [ 0, %165 ], [ %170, %166 ]
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* getelementptr inbounds ([2 x [3 x [3 x i32]]], [2 x [3 x [3 x i32]]]* @png_combine_row.display_mask, i64 0, i64 1), i64 0, i64 %173
  %175 = load i32, i32* %10, align 4
  %176 = lshr i32 %175, 1
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %174, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  br label %197

180:                                              ; preds = %157
  %181 = load i32, i32* %7, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %189

184:                                              ; preds = %180
  %185 = load i32, i32* %7, align 4
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 1, i32 2
  br label %189

189:                                              ; preds = %184, %183
  %190 = phi i32 [ 0, %183 ], [ %188, %184 ]
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* getelementptr inbounds ([2 x [3 x [6 x i32]]], [2 x [3 x [6 x i32]]]* @png_combine_row.row_mask, i64 0, i64 1), i64 0, i64 %191
  %193 = load i32, i32* %10, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [6 x i32], [6 x i32]* %192, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  br label %197

197:                                              ; preds = %189, %171
  %198 = phi i32 [ %179, %171 ], [ %196, %189 ]
  store i32 %198, i32* %15, align 4
  br label %199

199:                                              ; preds = %239, %197
  %200 = load i32, i32* %15, align 4
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %16, align 4
  %202 = lshr i32 %201, 8
  %203 = load i32, i32* %16, align 4
  %204 = shl i32 %203, 24
  %205 = or i32 %202, %204
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %16, align 4
  %207 = and i32 %206, 255
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %16, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %233

210:                                              ; preds = %199
  %211 = load i32, i32* %16, align 4
  %212 = icmp ne i32 %211, 255
  br i1 %212, label %213, label %228

213:                                              ; preds = %210
  %214 = load i8*, i8** %5, align 8
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = load i32, i32* %16, align 4
  %218 = xor i32 %217, -1
  %219 = and i32 %216, %218
  %220 = load i8*, i8** %8, align 8
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = load i32, i32* %16, align 4
  %224 = and i32 %222, %223
  %225 = or i32 %219, %224
  %226 = trunc i32 %225 to i8
  %227 = load i8*, i8** %5, align 8
  store i8 %226, i8* %227, align 1
  br label %232

228:                                              ; preds = %210
  %229 = load i8*, i8** %8, align 8
  %230 = load i8, i8* %229, align 1
  %231 = load i8*, i8** %5, align 8
  store i8 %230, i8* %231, align 1
  br label %232

232:                                              ; preds = %228, %213
  br label %233

233:                                              ; preds = %232, %199
  %234 = load i64, i64* %9, align 8
  %235 = load i32, i32* %14, align 4
  %236 = zext i32 %235 to i64
  %237 = icmp ule i64 %234, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %248

239:                                              ; preds = %233
  %240 = load i32, i32* %14, align 4
  %241 = zext i32 %240 to i64
  %242 = load i64, i64* %9, align 8
  %243 = sub i64 %242, %241
  store i64 %243, i64* %9, align 8
  %244 = load i8*, i8** %5, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %5, align 8
  %246 = load i8*, i8** %8, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %8, align 8
  br label %199

248:                                              ; preds = %238
  br label %616

249:                                              ; preds = %154
  %250 = load i32, i32* %7, align 4
  %251 = and i32 %250, 7
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %249
  %254 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %254, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0)) #5
  unreachable

255:                                              ; preds = %249
  %256 = load i32, i32* %7, align 4
  %257 = lshr i32 %256, 3
  store i32 %257, i32* %7, align 4
  %258 = load i32, i32* %7, align 4
  %259 = zext i32 %258 to i64
  %260 = load i64, i64* %9, align 8
  %261 = mul i64 %260, %259
  store i64 %261, i64* %9, align 8
  %262 = load i32, i32* %10, align 4
  %263 = and i32 1, %262
  %264 = load i32, i32* %10, align 4
  %265 = add i32 %264, 1
  %266 = lshr i32 %265, 1
  %267 = sub i32 3, %266
  %268 = shl i32 %263, %267
  %269 = and i32 %268, 7
  %270 = load i32, i32* %7, align 4
  %271 = mul i32 %269, %270
  store i32 %271, i32* %19, align 4
  %272 = load i32, i32* %19, align 4
  %273 = zext i32 %272 to i64
  %274 = load i64, i64* %9, align 8
  %275 = sub i64 %274, %273
  store i64 %275, i64* %9, align 8
  %276 = load i32, i32* %19, align 4
  %277 = load i8*, i8** %5, align 8
  %278 = zext i32 %276 to i64
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  store i8* %279, i8** %5, align 8
  %280 = load i32, i32* %19, align 4
  %281 = load i8*, i8** %8, align 8
  %282 = zext i32 %280 to i64
  %283 = getelementptr inbounds i8, i8* %281, i64 %282
  store i8* %283, i8** %8, align 8
  %284 = load i32, i32* %6, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %301

286:                                              ; preds = %255
  %287 = load i32, i32* %10, align 4
  %288 = sub i32 6, %287
  %289 = lshr i32 %288, 1
  %290 = shl i32 1, %289
  %291 = load i32, i32* %7, align 4
  %292 = mul i32 %290, %291
  store i32 %292, i32* %17, align 4
  %293 = load i32, i32* %17, align 4
  %294 = zext i32 %293 to i64
  %295 = load i64, i64* %9, align 8
  %296 = icmp ugt i64 %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %286
  %298 = load i64, i64* %9, align 8
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %17, align 4
  br label %300

300:                                              ; preds = %297, %286
  br label %303

301:                                              ; preds = %255
  %302 = load i32, i32* %7, align 4
  store i32 %302, i32* %17, align 4
  br label %303

303:                                              ; preds = %301, %300
  %304 = load i32, i32* %10, align 4
  %305 = sub i32 7, %304
  %306 = lshr i32 %305, 1
  %307 = shl i32 1, %306
  %308 = load i32, i32* %7, align 4
  %309 = mul i32 %307, %308
  store i32 %309, i32* %18, align 4
  %310 = load i32, i32* %17, align 4
  switch i32 %310, label %406 [
    i32 1, label %311
    i32 2, label %334
    i32 3, label %371
  ]

311:                                              ; preds = %303
  br label %312

312:                                              ; preds = %321, %311
  %313 = load i8*, i8** %8, align 8
  %314 = load i8, i8* %313, align 1
  %315 = load i8*, i8** %5, align 8
  store i8 %314, i8* %315, align 1
  %316 = load i64, i64* %9, align 8
  %317 = load i32, i32* %18, align 4
  %318 = zext i32 %317 to i64
  %319 = icmp ule i64 %316, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %312
  br label %657

321:                                              ; preds = %312
  %322 = load i32, i32* %18, align 4
  %323 = load i8*, i8** %5, align 8
  %324 = zext i32 %322 to i64
  %325 = getelementptr inbounds i8, i8* %323, i64 %324
  store i8* %325, i8** %5, align 8
  %326 = load i32, i32* %18, align 4
  %327 = load i8*, i8** %8, align 8
  %328 = zext i32 %326 to i64
  %329 = getelementptr inbounds i8, i8* %327, i64 %328
  store i8* %329, i8** %8, align 8
  %330 = load i32, i32* %18, align 4
  %331 = zext i32 %330 to i64
  %332 = load i64, i64* %9, align 8
  %333 = sub i64 %332, %331
  store i64 %333, i64* %9, align 8
  br label %312

334:                                              ; preds = %303
  br label %335

335:                                              ; preds = %364, %334
  %336 = load i8*, i8** %8, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 0
  %338 = load i8, i8* %337, align 1
  %339 = load i8*, i8** %5, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 0
  store i8 %338, i8* %340, align 1
  %341 = load i8*, i8** %8, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 1
  %343 = load i8, i8* %342, align 1
  %344 = load i8*, i8** %5, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 1
  store i8 %343, i8* %345, align 1
  %346 = load i64, i64* %9, align 8
  %347 = load i32, i32* %18, align 4
  %348 = zext i32 %347 to i64
  %349 = icmp ule i64 %346, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %335
  br label %657

351:                                              ; preds = %335
  %352 = load i32, i32* %18, align 4
  %353 = load i8*, i8** %8, align 8
  %354 = zext i32 %352 to i64
  %355 = getelementptr inbounds i8, i8* %353, i64 %354
  store i8* %355, i8** %8, align 8
  %356 = load i32, i32* %18, align 4
  %357 = load i8*, i8** %5, align 8
  %358 = zext i32 %356 to i64
  %359 = getelementptr inbounds i8, i8* %357, i64 %358
  store i8* %359, i8** %5, align 8
  %360 = load i32, i32* %18, align 4
  %361 = zext i32 %360 to i64
  %362 = load i64, i64* %9, align 8
  %363 = sub i64 %362, %361
  store i64 %363, i64* %9, align 8
  br label %364

364:                                              ; preds = %351
  %365 = load i64, i64* %9, align 8
  %366 = icmp ugt i64 %365, 1
  br i1 %366, label %335, label %367, !llvm.loop !16

367:                                              ; preds = %364
  %368 = load i8*, i8** %8, align 8
  %369 = load i8, i8* %368, align 1
  %370 = load i8*, i8** %5, align 8
  store i8 %369, i8* %370, align 1
  br label %657

371:                                              ; preds = %303
  br label %372

372:                                              ; preds = %393, %371
  %373 = load i8*, i8** %8, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 0
  %375 = load i8, i8* %374, align 1
  %376 = load i8*, i8** %5, align 8
  %377 = getelementptr inbounds i8, i8* %376, i64 0
  store i8 %375, i8* %377, align 1
  %378 = load i8*, i8** %8, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 1
  %380 = load i8, i8* %379, align 1
  %381 = load i8*, i8** %5, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 1
  store i8 %380, i8* %382, align 1
  %383 = load i8*, i8** %8, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 2
  %385 = load i8, i8* %384, align 1
  %386 = load i8*, i8** %5, align 8
  %387 = getelementptr inbounds i8, i8* %386, i64 2
  store i8 %385, i8* %387, align 1
  %388 = load i64, i64* %9, align 8
  %389 = load i32, i32* %18, align 4
  %390 = zext i32 %389 to i64
  %391 = icmp ule i64 %388, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %372
  br label %657

393:                                              ; preds = %372
  %394 = load i32, i32* %18, align 4
  %395 = load i8*, i8** %8, align 8
  %396 = zext i32 %394 to i64
  %397 = getelementptr inbounds i8, i8* %395, i64 %396
  store i8* %397, i8** %8, align 8
  %398 = load i32, i32* %18, align 4
  %399 = load i8*, i8** %5, align 8
  %400 = zext i32 %398 to i64
  %401 = getelementptr inbounds i8, i8* %399, i64 %400
  store i8* %401, i8** %5, align 8
  %402 = load i32, i32* %18, align 4
  %403 = zext i32 %402 to i64
  %404 = load i64, i64* %9, align 8
  %405 = sub i64 %404, %403
  store i64 %405, i64* %9, align 8
  br label %372

406:                                              ; preds = %303
  %407 = load i32, i32* %17, align 4
  %408 = icmp ult i32 %407, 16
  br i1 %408, label %409, label %581

409:                                              ; preds = %406
  %410 = load i8*, i8** %5, align 8
  %411 = ptrtoint i8* %410 to i64
  %412 = sub i64 %411, 0
  %413 = and i64 %412, 1
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %581

415:                                              ; preds = %409
  %416 = load i8*, i8** %8, align 8
  %417 = ptrtoint i8* %416 to i64
  %418 = sub i64 %417, 0
  %419 = and i64 %418, 1
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %581

421:                                              ; preds = %415
  %422 = load i32, i32* %17, align 4
  %423 = zext i32 %422 to i64
  %424 = urem i64 %423, 2
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %581

426:                                              ; preds = %421
  %427 = load i32, i32* %18, align 4
  %428 = zext i32 %427 to i64
  %429 = urem i64 %428, 2
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %431, label %581

431:                                              ; preds = %426
  %432 = load i8*, i8** %5, align 8
  %433 = ptrtoint i8* %432 to i64
  %434 = sub i64 %433, 0
  %435 = and i64 %434, 3
  %436 = icmp eq i64 %435, 0
  %437 = zext i1 %436 to i32
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %519

439:                                              ; preds = %431
  %440 = load i8*, i8** %8, align 8
  %441 = ptrtoint i8* %440 to i64
  %442 = sub i64 %441, 0
  %443 = and i64 %442, 3
  %444 = icmp eq i64 %443, 0
  %445 = zext i1 %444 to i32
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %519

447:                                              ; preds = %439
  %448 = load i32, i32* %17, align 4
  %449 = zext i32 %448 to i64
  %450 = urem i64 %449, 4
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %452, label %519

452:                                              ; preds = %447
  %453 = load i32, i32* %18, align 4
  %454 = zext i32 %453 to i64
  %455 = urem i64 %454, 4
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %457, label %519

457:                                              ; preds = %452
  %458 = load i8*, i8** %5, align 8
  %459 = bitcast i8* %458 to i32*
  store i32* %459, i32** %20, align 8
  %460 = load i8*, i8** %8, align 8
  %461 = bitcast i8* %460 to i32*
  store i32* %461, i32** %21, align 8
  %462 = load i32, i32* %18, align 4
  %463 = load i32, i32* %17, align 4
  %464 = sub i32 %462, %463
  %465 = zext i32 %464 to i64
  %466 = udiv i64 %465, 4
  store i64 %466, i64* %22, align 8
  br label %467

467:                                              ; preds = %498, %457
  %468 = load i32, i32* %17, align 4
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %23, align 8
  br label %470

470:                                              ; preds = %478, %467
  %471 = load i32*, i32** %21, align 8
  %472 = getelementptr inbounds i32, i32* %471, i32 1
  store i32* %472, i32** %21, align 8
  %473 = load i32, i32* %471, align 4
  %474 = load i32*, i32** %20, align 8
  %475 = getelementptr inbounds i32, i32* %474, i32 1
  store i32* %475, i32** %20, align 8
  store i32 %473, i32* %474, align 4
  %476 = load i64, i64* %23, align 8
  %477 = sub i64 %476, 4
  store i64 %477, i64* %23, align 8
  br label %478

478:                                              ; preds = %470
  %479 = load i64, i64* %23, align 8
  %480 = icmp ugt i64 %479, 0
  br i1 %480, label %470, label %481, !llvm.loop !17

481:                                              ; preds = %478
  %482 = load i64, i64* %9, align 8
  %483 = load i32, i32* %18, align 4
  %484 = zext i32 %483 to i64
  %485 = icmp ule i64 %482, %484
  br i1 %485, label %486, label %487

486:                                              ; preds = %481
  br label %657

487:                                              ; preds = %481
  %488 = load i64, i64* %22, align 8
  %489 = load i32*, i32** %20, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 %488
  store i32* %490, i32** %20, align 8
  %491 = load i64, i64* %22, align 8
  %492 = load i32*, i32** %21, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 %491
  store i32* %493, i32** %21, align 8
  %494 = load i32, i32* %18, align 4
  %495 = zext i32 %494 to i64
  %496 = load i64, i64* %9, align 8
  %497 = sub i64 %496, %495
  store i64 %497, i64* %9, align 8
  br label %498

498:                                              ; preds = %487
  %499 = load i32, i32* %17, align 4
  %500 = zext i32 %499 to i64
  %501 = load i64, i64* %9, align 8
  %502 = icmp ule i64 %500, %501
  br i1 %502, label %467, label %503, !llvm.loop !18

503:                                              ; preds = %498
  %504 = load i32*, i32** %20, align 8
  %505 = bitcast i32* %504 to i8*
  store i8* %505, i8** %5, align 8
  %506 = load i32*, i32** %21, align 8
  %507 = bitcast i32* %506 to i8*
  store i8* %507, i8** %8, align 8
  br label %508

508:                                              ; preds = %514, %503
  %509 = load i8*, i8** %8, align 8
  %510 = getelementptr inbounds i8, i8* %509, i32 1
  store i8* %510, i8** %8, align 8
  %511 = load i8, i8* %509, align 1
  %512 = load i8*, i8** %5, align 8
  %513 = getelementptr inbounds i8, i8* %512, i32 1
  store i8* %513, i8** %5, align 8
  store i8 %511, i8* %512, align 1
  br label %514

514:                                              ; preds = %508
  %515 = load i64, i64* %9, align 8
  %516 = add i64 %515, -1
  store i64 %516, i64* %9, align 8
  %517 = icmp ugt i64 %516, 0
  br i1 %517, label %508, label %518, !llvm.loop !19

518:                                              ; preds = %514
  br label %657

519:                                              ; preds = %452, %447, %439, %431
  %520 = load i8*, i8** %5, align 8
  %521 = bitcast i8* %520 to i16*
  store i16* %521, i16** %24, align 8
  %522 = load i8*, i8** %8, align 8
  %523 = bitcast i8* %522 to i16*
  store i16* %523, i16** %25, align 8
  %524 = load i32, i32* %18, align 4
  %525 = load i32, i32* %17, align 4
  %526 = sub i32 %524, %525
  %527 = zext i32 %526 to i64
  %528 = udiv i64 %527, 2
  store i64 %528, i64* %26, align 8
  br label %529

529:                                              ; preds = %560, %519
  %530 = load i32, i32* %17, align 4
  %531 = zext i32 %530 to i64
  store i64 %531, i64* %27, align 8
  br label %532

532:                                              ; preds = %540, %529
  %533 = load i16*, i16** %25, align 8
  %534 = getelementptr inbounds i16, i16* %533, i32 1
  store i16* %534, i16** %25, align 8
  %535 = load i16, i16* %533, align 2
  %536 = load i16*, i16** %24, align 8
  %537 = getelementptr inbounds i16, i16* %536, i32 1
  store i16* %537, i16** %24, align 8
  store i16 %535, i16* %536, align 2
  %538 = load i64, i64* %27, align 8
  %539 = sub i64 %538, 2
  store i64 %539, i64* %27, align 8
  br label %540

540:                                              ; preds = %532
  %541 = load i64, i64* %27, align 8
  %542 = icmp ugt i64 %541, 0
  br i1 %542, label %532, label %543, !llvm.loop !20

543:                                              ; preds = %540
  %544 = load i64, i64* %9, align 8
  %545 = load i32, i32* %18, align 4
  %546 = zext i32 %545 to i64
  %547 = icmp ule i64 %544, %546
  br i1 %547, label %548, label %549

548:                                              ; preds = %543
  br label %657

549:                                              ; preds = %543
  %550 = load i64, i64* %26, align 8
  %551 = load i16*, i16** %24, align 8
  %552 = getelementptr inbounds i16, i16* %551, i64 %550
  store i16* %552, i16** %24, align 8
  %553 = load i64, i64* %26, align 8
  %554 = load i16*, i16** %25, align 8
  %555 = getelementptr inbounds i16, i16* %554, i64 %553
  store i16* %555, i16** %25, align 8
  %556 = load i32, i32* %18, align 4
  %557 = zext i32 %556 to i64
  %558 = load i64, i64* %9, align 8
  %559 = sub i64 %558, %557
  store i64 %559, i64* %9, align 8
  br label %560

560:                                              ; preds = %549
  %561 = load i32, i32* %17, align 4
  %562 = zext i32 %561 to i64
  %563 = load i64, i64* %9, align 8
  %564 = icmp ule i64 %562, %563
  br i1 %564, label %529, label %565, !llvm.loop !21

565:                                              ; preds = %560
  %566 = load i16*, i16** %24, align 8
  %567 = bitcast i16* %566 to i8*
  store i8* %567, i8** %5, align 8
  %568 = load i16*, i16** %25, align 8
  %569 = bitcast i16* %568 to i8*
  store i8* %569, i8** %8, align 8
  br label %570

570:                                              ; preds = %576, %565
  %571 = load i8*, i8** %8, align 8
  %572 = getelementptr inbounds i8, i8* %571, i32 1
  store i8* %572, i8** %8, align 8
  %573 = load i8, i8* %571, align 1
  %574 = load i8*, i8** %5, align 8
  %575 = getelementptr inbounds i8, i8* %574, i32 1
  store i8* %575, i8** %5, align 8
  store i8 %573, i8* %574, align 1
  br label %576

576:                                              ; preds = %570
  %577 = load i64, i64* %9, align 8
  %578 = add i64 %577, -1
  store i64 %578, i64* %9, align 8
  %579 = icmp ugt i64 %578, 0
  br i1 %579, label %570, label %580, !llvm.loop !22

580:                                              ; preds = %576
  br label %657

581:                                              ; preds = %426, %421, %415, %409, %406
  br label %582

582:                                              ; preds = %615, %581
  %583 = load i8*, i8** %5, align 8
  %584 = load i8*, i8** %8, align 8
  %585 = load i32, i32* %17, align 4
  %586 = zext i32 %585 to i64
  %587 = load i8*, i8** %5, align 8
  %588 = call i64 @llvm.objectsize.i64.p0i8(i8* %587, i1 false, i1 true, i1 false)
  %589 = call i8* @__memcpy_chk(i8* noundef %583, i8* noundef %584, i64 noundef %586, i64 noundef %588) #6
  %590 = load i64, i64* %9, align 8
  %591 = load i32, i32* %18, align 4
  %592 = zext i32 %591 to i64
  %593 = icmp ule i64 %590, %592
  br i1 %593, label %594, label %595

594:                                              ; preds = %582
  br label %657

595:                                              ; preds = %582
  %596 = load i32, i32* %18, align 4
  %597 = load i8*, i8** %8, align 8
  %598 = zext i32 %596 to i64
  %599 = getelementptr inbounds i8, i8* %597, i64 %598
  store i8* %599, i8** %8, align 8
  %600 = load i32, i32* %18, align 4
  %601 = load i8*, i8** %5, align 8
  %602 = zext i32 %600 to i64
  %603 = getelementptr inbounds i8, i8* %601, i64 %602
  store i8* %603, i8** %5, align 8
  %604 = load i32, i32* %18, align 4
  %605 = zext i32 %604 to i64
  %606 = load i64, i64* %9, align 8
  %607 = sub i64 %606, %605
  store i64 %607, i64* %9, align 8
  %608 = load i32, i32* %17, align 4
  %609 = zext i32 %608 to i64
  %610 = load i64, i64* %9, align 8
  %611 = icmp ugt i64 %609, %610
  br i1 %611, label %612, label %615

612:                                              ; preds = %595
  %613 = load i64, i64* %9, align 8
  %614 = trunc i64 %613 to i32
  store i32 %614, i32* %17, align 4
  br label %615

615:                                              ; preds = %612, %595
  br label %582

616:                                              ; preds = %248
  br label %640

617:                                              ; preds = %137, %134, %128, %122, %116
  %618 = load i8*, i8** %5, align 8
  %619 = load i8*, i8** %8, align 8
  %620 = load i32, i32* %7, align 4
  %621 = icmp uge i32 %620, 8
  br i1 %621, label %622, label %628

622:                                              ; preds = %617
  %623 = load i64, i64* %9, align 8
  %624 = load i32, i32* %7, align 4
  %625 = zext i32 %624 to i64
  %626 = lshr i64 %625, 3
  %627 = mul i64 %623, %626
  br label %635

628:                                              ; preds = %617
  %629 = load i64, i64* %9, align 8
  %630 = load i32, i32* %7, align 4
  %631 = zext i32 %630 to i64
  %632 = mul i64 %629, %631
  %633 = add i64 %632, 7
  %634 = lshr i64 %633, 3
  br label %635

635:                                              ; preds = %628, %622
  %636 = phi i64 [ %627, %622 ], [ %634, %628 ]
  %637 = load i8*, i8** %5, align 8
  %638 = call i64 @llvm.objectsize.i64.p0i8(i8* %637, i1 false, i1 true, i1 false)
  %639 = call i8* @__memcpy_chk(i8* noundef %618, i8* noundef %619, i64 noundef %636, i64 noundef %638) #6
  br label %640

640:                                              ; preds = %635, %616
  %641 = load i8*, i8** %11, align 8
  %642 = icmp ne i8* %641, null
  br i1 %642, label %643, label %657

643:                                              ; preds = %640
  %644 = load i8, i8* %12, align 1
  %645 = zext i8 %644 to i32
  %646 = load i32, i32* %13, align 4
  %647 = and i32 %645, %646
  %648 = load i8*, i8** %11, align 8
  %649 = load i8, i8* %648, align 1
  %650 = zext i8 %649 to i32
  %651 = load i32, i32* %13, align 4
  %652 = xor i32 %651, -1
  %653 = and i32 %650, %652
  %654 = or i32 %647, %653
  %655 = trunc i32 %654 to i8
  %656 = load i8*, i8** %11, align 8
  store i8 %655, i8* %656, align 1
  br label %657

657:                                              ; preds = %153, %320, %350, %367, %392, %486, %518, %548, %580, %594, %643, %640
  ret void
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_do_read_interlace(%struct.png_row_info_struct* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.png_row_info_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8, align 1
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i8, align 1
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i64, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i8*, align 8
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca [8 x i8], align 1
  %52 = alloca i32, align 4
  store %struct.png_row_info_struct* %0, %struct.png_row_info_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %463

55:                                               ; preds = %4
  %56 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %57 = icmp ne %struct.png_row_info_struct* %56, null
  br i1 %57, label %58, label %463

58:                                               ; preds = %55
  %59 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %60 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [7 x i32], [7 x i32]* @png_do_read_interlace.png_pass_inc, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = mul i32 %61, %65
  store i32 %66, i32* %9, align 4
  %67 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %68 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %67, i32 0, i32 5
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  switch i32 %70, label %366 [
    i32 1, label %71
    i32 2, label %168
    i32 4, label %267
  ]

71:                                               ; preds = %58
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %74 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub i32 %75, 1
  %77 = lshr i32 %76, 3
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %72, i64 %78
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sub i32 %81, 1
  %83 = lshr i32 %82, 3
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  store i8* %85, i8** %11, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [7 x i32], [7 x i32]* @png_do_read_interlace.png_pass_inc, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %17, align 4
  %90 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %91 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add i32 %92, 7
  %94 = and i32 %93, 7
  %95 = sub nsw i32 7, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 7
  %98 = and i32 %97, 7
  %99 = sub nsw i32 7, %98
  store i32 %99, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 7, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %100

100:                                              ; preds = %164, %71
  %101 = load i32, i32* %19, align 4
  %102 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %103 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ult i32 %101, %104
  br i1 %105, label %106, label %167

106:                                              ; preds = %100
  %107 = load i8*, i8** %10, align 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i32, i32* %12, align 4
  %111 = ashr i32 %109, %110
  %112 = and i32 %111, 1
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %18, align 1
  store i32 0, i32* %20, align 4
  br label %114

114:                                              ; preds = %148, %106
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %114
  %119 = load i8*, i8** %11, align 8
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* %13, align 4
  %123 = sub nsw i32 7, %122
  %124 = ashr i32 32639, %123
  %125 = and i32 %121, %124
  store i32 %125, i32* %21, align 4
  %126 = load i8, i8* %18, align 1
  %127 = zext i8 %126 to i32
  %128 = load i32, i32* %13, align 4
  %129 = shl i32 %127, %128
  %130 = load i32, i32* %21, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %21, align 4
  %133 = and i32 %132, 255
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %11, align 8
  store i8 %134, i8* %135, align 1
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %118
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %13, align 4
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 -1
  store i8* %142, i8** %11, align 8
  br label %147

143:                                              ; preds = %118
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %143, %139
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %20, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %20, align 4
  br label %114, !llvm.loop !23

151:                                              ; preds = %114
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* %14, align 4
  store i32 %156, i32* %12, align 4
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 -1
  store i8* %158, i8** %10, align 8
  br label %163

159:                                              ; preds = %151
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %159, %155
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %19, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %19, align 4
  br label %100, !llvm.loop !24

167:                                              ; preds = %100
  br label %431

168:                                              ; preds = %58
  %169 = load i8*, i8** %6, align 8
  %170 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %171 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sub i32 %172, 1
  %174 = lshr i32 %173, 2
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %169, i64 %175
  store i8* %176, i8** %22, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sub i32 %178, 1
  %180 = lshr i32 %179, 2
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %177, i64 %181
  store i8* %182, i8** %23, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [7 x i32], [7 x i32]* @png_do_read_interlace.png_pass_inc, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %29, align 4
  %187 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %188 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add i32 %189, 3
  %191 = and i32 %190, 3
  %192 = sub i32 3, %191
  %193 = shl i32 %192, 1
  store i32 %193, i32* %24, align 4
  %194 = load i32, i32* %9, align 4
  %195 = add i32 %194, 3
  %196 = and i32 %195, 3
  %197 = sub i32 3, %196
  %198 = shl i32 %197, 1
  store i32 %198, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 6, i32* %27, align 4
  store i32 2, i32* %28, align 4
  store i32 0, i32* %30, align 4
  br label %199

199:                                              ; preds = %263, %168
  %200 = load i32, i32* %30, align 4
  %201 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %202 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp ult i32 %200, %203
  br i1 %204, label %205, label %266

205:                                              ; preds = %199
  %206 = load i8*, i8** %22, align 8
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = load i32, i32* %24, align 4
  %210 = ashr i32 %208, %209
  %211 = and i32 %210, 3
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %31, align 1
  store i32 0, i32* %32, align 4
  br label %213

213:                                              ; preds = %247, %205
  %214 = load i32, i32* %32, align 4
  %215 = load i32, i32* %29, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %250

217:                                              ; preds = %213
  %218 = load i8*, i8** %23, align 8
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = load i32, i32* %25, align 4
  %222 = sub nsw i32 6, %221
  %223 = ashr i32 16191, %222
  %224 = and i32 %220, %223
  store i32 %224, i32* %33, align 4
  %225 = load i8, i8* %31, align 1
  %226 = zext i8 %225 to i32
  %227 = load i32, i32* %25, align 4
  %228 = shl i32 %226, %227
  %229 = load i32, i32* %33, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %33, align 4
  %231 = load i32, i32* %33, align 4
  %232 = and i32 %231, 255
  %233 = trunc i32 %232 to i8
  %234 = load i8*, i8** %23, align 8
  store i8 %233, i8* %234, align 1
  %235 = load i32, i32* %25, align 4
  %236 = load i32, i32* %27, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %217
  %239 = load i32, i32* %26, align 4
  store i32 %239, i32* %25, align 4
  %240 = load i8*, i8** %23, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 -1
  store i8* %241, i8** %23, align 8
  br label %246

242:                                              ; preds = %217
  %243 = load i32, i32* %28, align 4
  %244 = load i32, i32* %25, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %25, align 4
  br label %246

246:                                              ; preds = %242, %238
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %32, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %32, align 4
  br label %213, !llvm.loop !25

250:                                              ; preds = %213
  %251 = load i32, i32* %24, align 4
  %252 = load i32, i32* %27, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %250
  %255 = load i32, i32* %26, align 4
  store i32 %255, i32* %24, align 4
  %256 = load i8*, i8** %22, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 -1
  store i8* %257, i8** %22, align 8
  br label %262

258:                                              ; preds = %250
  %259 = load i32, i32* %28, align 4
  %260 = load i32, i32* %24, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %24, align 4
  br label %262

262:                                              ; preds = %258, %254
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %30, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %30, align 4
  br label %199, !llvm.loop !26

266:                                              ; preds = %199
  br label %431

267:                                              ; preds = %58
  %268 = load i8*, i8** %6, align 8
  %269 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %270 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = sub i32 %271, 1
  %273 = lshr i32 %272, 1
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %268, i64 %274
  store i8* %275, i8** %34, align 8
  %276 = load i8*, i8** %6, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sub i32 %277, 1
  %279 = lshr i32 %278, 1
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %276, i64 %280
  store i8* %281, i8** %35, align 8
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [7 x i32], [7 x i32]* @png_do_read_interlace.png_pass_inc, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %42, align 4
  %286 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %287 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = add i32 %288, 1
  %290 = and i32 %289, 1
  %291 = sub i32 1, %290
  %292 = shl i32 %291, 2
  store i32 %292, i32* %36, align 4
  %293 = load i32, i32* %9, align 4
  %294 = add i32 %293, 1
  %295 = and i32 %294, 1
  %296 = sub i32 1, %295
  %297 = shl i32 %296, 2
  store i32 %297, i32* %37, align 4
  store i32 0, i32* %38, align 4
  store i32 4, i32* %39, align 4
  store i32 4, i32* %40, align 4
  store i32 0, i32* %41, align 4
  br label %298

298:                                              ; preds = %362, %267
  %299 = load i32, i32* %41, align 4
  %300 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %301 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp ult i32 %299, %302
  br i1 %303, label %304, label %365

304:                                              ; preds = %298
  %305 = load i8*, i8** %34, align 8
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  %308 = load i32, i32* %36, align 4
  %309 = ashr i32 %307, %308
  %310 = and i32 %309, 15
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %43, align 1
  store i32 0, i32* %44, align 4
  br label %312

312:                                              ; preds = %346, %304
  %313 = load i32, i32* %44, align 4
  %314 = load i32, i32* %42, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %349

316:                                              ; preds = %312
  %317 = load i8*, i8** %35, align 8
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i32
  %320 = load i32, i32* %37, align 4
  %321 = sub nsw i32 4, %320
  %322 = ashr i32 3855, %321
  %323 = and i32 %319, %322
  store i32 %323, i32* %45, align 4
  %324 = load i8, i8* %43, align 1
  %325 = zext i8 %324 to i32
  %326 = load i32, i32* %37, align 4
  %327 = shl i32 %325, %326
  %328 = load i32, i32* %45, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %45, align 4
  %330 = load i32, i32* %45, align 4
  %331 = and i32 %330, 255
  %332 = trunc i32 %331 to i8
  %333 = load i8*, i8** %35, align 8
  store i8 %332, i8* %333, align 1
  %334 = load i32, i32* %37, align 4
  %335 = load i32, i32* %39, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %341

337:                                              ; preds = %316
  %338 = load i32, i32* %38, align 4
  store i32 %338, i32* %37, align 4
  %339 = load i8*, i8** %35, align 8
  %340 = getelementptr inbounds i8, i8* %339, i32 -1
  store i8* %340, i8** %35, align 8
  br label %345

341:                                              ; preds = %316
  %342 = load i32, i32* %40, align 4
  %343 = load i32, i32* %37, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %37, align 4
  br label %345

345:                                              ; preds = %341, %337
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %44, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %44, align 4
  br label %312, !llvm.loop !27

349:                                              ; preds = %312
  %350 = load i32, i32* %36, align 4
  %351 = load i32, i32* %39, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %357

353:                                              ; preds = %349
  %354 = load i32, i32* %38, align 4
  store i32 %354, i32* %36, align 4
  %355 = load i8*, i8** %34, align 8
  %356 = getelementptr inbounds i8, i8* %355, i32 -1
  store i8* %356, i8** %34, align 8
  br label %361

357:                                              ; preds = %349
  %358 = load i32, i32* %40, align 4
  %359 = load i32, i32* %36, align 4
  %360 = add nsw i32 %359, %358
  store i32 %360, i32* %36, align 4
  br label %361

361:                                              ; preds = %357, %353
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %41, align 4
  %364 = add i32 %363, 1
  store i32 %364, i32* %41, align 4
  br label %298, !llvm.loop !28

365:                                              ; preds = %298
  br label %431

366:                                              ; preds = %58
  %367 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %368 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %367, i32 0, i32 5
  %369 = load i8, i8* %368, align 1
  %370 = zext i8 %369 to i32
  %371 = ashr i32 %370, 3
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %46, align 8
  %373 = load i8*, i8** %6, align 8
  %374 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %375 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = sub i32 %376, 1
  %378 = zext i32 %377 to i64
  %379 = load i64, i64* %46, align 8
  %380 = mul i64 %378, %379
  %381 = getelementptr inbounds i8, i8* %373, i64 %380
  store i8* %381, i8** %47, align 8
  %382 = load i8*, i8** %6, align 8
  %383 = load i32, i32* %9, align 4
  %384 = sub i32 %383, 1
  %385 = zext i32 %384 to i64
  %386 = load i64, i64* %46, align 8
  %387 = mul i64 %385, %386
  %388 = getelementptr inbounds i8, i8* %382, i64 %387
  store i8* %388, i8** %48, align 8
  %389 = load i32, i32* %7, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [7 x i32], [7 x i32]* @png_do_read_interlace.png_pass_inc, i64 0, i64 %390
  %392 = load i32, i32* %391, align 4
  store i32 %392, i32* %49, align 4
  store i32 0, i32* %50, align 4
  br label %393

393:                                              ; preds = %427, %366
  %394 = load i32, i32* %50, align 4
  %395 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %396 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = icmp ult i32 %394, %397
  br i1 %398, label %399, label %430

399:                                              ; preds = %393
  %400 = getelementptr inbounds [8 x i8], [8 x i8]* %51, i64 0, i64 0
  %401 = load i8*, i8** %47, align 8
  %402 = load i64, i64* %46, align 8
  %403 = call i8* @__memcpy_chk(i8* noundef %400, i8* noundef %401, i64 noundef %402, i64 noundef 8) #6
  store i32 0, i32* %52, align 4
  br label %404

404:                                              ; preds = %419, %399
  %405 = load i32, i32* %52, align 4
  %406 = load i32, i32* %49, align 4
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %408, label %422

408:                                              ; preds = %404
  %409 = load i8*, i8** %48, align 8
  %410 = getelementptr inbounds [8 x i8], [8 x i8]* %51, i64 0, i64 0
  %411 = load i64, i64* %46, align 8
  %412 = load i8*, i8** %48, align 8
  %413 = call i64 @llvm.objectsize.i64.p0i8(i8* %412, i1 false, i1 true, i1 false)
  %414 = call i8* @__memcpy_chk(i8* noundef %409, i8* noundef %410, i64 noundef %411, i64 noundef %413) #6
  %415 = load i64, i64* %46, align 8
  %416 = load i8*, i8** %48, align 8
  %417 = sub i64 0, %415
  %418 = getelementptr inbounds i8, i8* %416, i64 %417
  store i8* %418, i8** %48, align 8
  br label %419

419:                                              ; preds = %408
  %420 = load i32, i32* %52, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %52, align 4
  br label %404, !llvm.loop !29

422:                                              ; preds = %404
  %423 = load i64, i64* %46, align 8
  %424 = load i8*, i8** %47, align 8
  %425 = sub i64 0, %423
  %426 = getelementptr inbounds i8, i8* %424, i64 %425
  store i8* %426, i8** %47, align 8
  br label %427

427:                                              ; preds = %422
  %428 = load i32, i32* %50, align 4
  %429 = add i32 %428, 1
  store i32 %429, i32* %50, align 4
  br label %393, !llvm.loop !30

430:                                              ; preds = %393
  br label %431

431:                                              ; preds = %430, %365, %266, %167
  %432 = load i32, i32* %9, align 4
  %433 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %434 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %433, i32 0, i32 0
  store i32 %432, i32* %434, align 8
  %435 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %436 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %435, i32 0, i32 5
  %437 = load i8, i8* %436, align 1
  %438 = zext i8 %437 to i32
  %439 = icmp sge i32 %438, 8
  br i1 %439, label %440, label %449

440:                                              ; preds = %431
  %441 = load i32, i32* %9, align 4
  %442 = zext i32 %441 to i64
  %443 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %444 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %443, i32 0, i32 5
  %445 = load i8, i8* %444, align 1
  %446 = zext i8 %445 to i64
  %447 = lshr i64 %446, 3
  %448 = mul i64 %442, %447
  br label %459

449:                                              ; preds = %431
  %450 = load i32, i32* %9, align 4
  %451 = zext i32 %450 to i64
  %452 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %453 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %452, i32 0, i32 5
  %454 = load i8, i8* %453, align 1
  %455 = zext i8 %454 to i64
  %456 = mul i64 %451, %455
  %457 = add i64 %456, 7
  %458 = lshr i64 %457, 3
  br label %459

459:                                              ; preds = %449, %440
  %460 = phi i64 [ %448, %440 ], [ %458, %449 ]
  %461 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %462 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %461, i32 0, i32 1
  store i64 %460, i64* %462, align 8
  br label %463

463:                                              ; preds = %459, %55, %4
  %464 = load i32, i32* %8, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_filter_row(%struct.png_struct_def* noalias noundef %0, %struct.png_row_info_struct* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.png_struct_def*, align 8
  %7 = alloca %struct.png_row_info_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %6, align 8
  store %struct.png_row_info_struct* %1, %struct.png_row_info_struct** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %5
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 84
  %19 = getelementptr inbounds [4 x void (%struct.png_row_info_struct*, i8*, i8*)*], [4 x void (%struct.png_row_info_struct*, i8*, i8*)*]* %18, i64 0, i64 0
  %20 = load void (%struct.png_row_info_struct*, i8*, i8*)*, void (%struct.png_row_info_struct*, i8*, i8*)** %19, align 8
  %21 = icmp eq void (%struct.png_row_info_struct*, i8*, i8*)* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  call void @png_init_filter_functions(%struct.png_struct_def* noundef %23)
  br label %24

24:                                               ; preds = %22, %16
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %26 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %25, i32 0, i32 84
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x void (%struct.png_row_info_struct*, i8*, i8*)*], [4 x void (%struct.png_row_info_struct*, i8*, i8*)*]* %26, i64 0, i64 %29
  %31 = load void (%struct.png_row_info_struct*, i8*, i8*)*, void (%struct.png_row_info_struct*, i8*, i8*)** %30, align 8
  %32 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  call void %31(%struct.png_row_info_struct* noundef %32, i8* noundef %33, i8* noundef %34)
  br label %35

35:                                               ; preds = %24, %13, %5
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_init_filter_functions(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  %3 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %4, i32 0, i32 50
  %6 = load i8, i8* %5, align 2
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, 7
  %9 = ashr i32 %8, 3
  store i32 %9, i32* %3, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 84
  %12 = getelementptr inbounds [4 x void (%struct.png_row_info_struct*, i8*, i8*)*], [4 x void (%struct.png_row_info_struct*, i8*, i8*)*]* %11, i64 0, i64 0
  store void (%struct.png_row_info_struct*, i8*, i8*)* @png_read_filter_row_sub, void (%struct.png_row_info_struct*, i8*, i8*)** %12, align 8
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 84
  %15 = getelementptr inbounds [4 x void (%struct.png_row_info_struct*, i8*, i8*)*], [4 x void (%struct.png_row_info_struct*, i8*, i8*)*]* %14, i64 0, i64 1
  store void (%struct.png_row_info_struct*, i8*, i8*)* @png_read_filter_row_up, void (%struct.png_row_info_struct*, i8*, i8*)** %15, align 8
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 84
  %18 = getelementptr inbounds [4 x void (%struct.png_row_info_struct*, i8*, i8*)*], [4 x void (%struct.png_row_info_struct*, i8*, i8*)*]* %17, i64 0, i64 2
  store void (%struct.png_row_info_struct*, i8*, i8*)* @png_read_filter_row_avg, void (%struct.png_row_info_struct*, i8*, i8*)** %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 84
  %24 = getelementptr inbounds [4 x void (%struct.png_row_info_struct*, i8*, i8*)*], [4 x void (%struct.png_row_info_struct*, i8*, i8*)*]* %23, i64 0, i64 3
  store void (%struct.png_row_info_struct*, i8*, i8*)* @png_read_filter_row_paeth_1byte_pixel, void (%struct.png_row_info_struct*, i8*, i8*)** %24, align 8
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %27 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %26, i32 0, i32 84
  %28 = getelementptr inbounds [4 x void (%struct.png_row_info_struct*, i8*, i8*)*], [4 x void (%struct.png_row_info_struct*, i8*, i8*)*]* %27, i64 0, i64 3
  store void (%struct.png_row_info_struct*, i8*, i8*)* @png_read_filter_row_paeth_multibyte_pixel, void (%struct.png_row_info_struct*, i8*, i8*)** %28, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %31 = load i32, i32* %3, align 4
  call void @png_init_filter_functions_neon(%struct.png_struct_def* noundef %30, i32 noundef %31)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_IDAT_data(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 10
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %14, i32 0, i32 3
  store i8* %12, i8** %15, align 8
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 10
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %17, i32 0, i32 4
  store i32 0, i32* %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %21, %3
  br label %23

23:                                               ; preds = %186, %22
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %83

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %48, %29
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %32 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %31, i32 0, i32 36
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %37 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %36, i32 noundef 0)
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %39 = call i32 @png_read_chunk_header(%struct.png_struct_def* noundef %38)
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %41 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %40, i32 0, i32 36
  store i32 %39, i32* %41, align 8
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %42, i32 0, i32 30
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 1229209940
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %47, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0)) #5
  unreachable

48:                                               ; preds = %35
  br label %30, !llvm.loop !31

49:                                               ; preds = %30
  %50 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %51 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %50, i32 0, i32 81
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %55 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %54, i32 0, i32 36
  %56 = load i32, i32* %55, align 8
  %57 = icmp ugt i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %60 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %59, i32 0, i32 36
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %49
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = call i8* @png_read_buffer(%struct.png_struct_def* noundef %63, i64 noundef %65, i32 noundef 0)
  store i8* %66, i8** %10, align 8
  %67 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %9, align 4
  call void @png_crc_read(%struct.png_struct_def* noundef %67, i8* noundef %68, i32 noundef %69)
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %72 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %71, i32 0, i32 36
  %73 = load i32, i32* %72, align 8
  %74 = sub i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %77 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %81 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %80, i32 0, i32 10
  %82 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  br label %83

83:                                               ; preds = %62, %23
  %84 = load i8*, i8** %5, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  store i32 -1, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %6, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i64, i64* %6, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = load i64, i64* %6, align 8
  %98 = sub i64 %97, %96
  store i64 %98, i64* %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %101 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %100, i32 0, i32 10
  %102 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %101, i32 0, i32 4
  store i32 %99, i32* %102, align 8
  br label %111

103:                                              ; preds = %83
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %105 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %106 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %105, i32 0, i32 10
  %107 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %106, i32 0, i32 3
  store i8* %104, i8** %107, align 8
  %108 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %109 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %108, i32 0, i32 10
  %110 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %109, i32 0, i32 4
  store i32 1024, i32* %110, align 8
  br label %111

111:                                              ; preds = %103, %94
  %112 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %113 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %112, i32 0, i32 10
  %114 = call i32 @inflate(%struct.z_stream_s* noundef %113, i32 noundef 0)
  store i32 %114, i32* %7, align 4
  %115 = load i8*, i8** %5, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %119 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %118, i32 0, i32 10
  %120 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = zext i32 %121 to i64
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %6, align 8
  br label %134

125:                                              ; preds = %111
  %126 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %127 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = zext i32 %129 to i64
  %131 = sub i64 1024, %130
  %132 = load i64, i64* %6, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %6, align 8
  br label %134

134:                                              ; preds = %125, %117
  %135 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %136 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %135, i32 0, i32 10
  %137 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %136, i32 0, i32 4
  store i32 0, i32* %137, align 8
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %165

140:                                              ; preds = %134
  %141 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %142 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %141, i32 0, i32 10
  %143 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %142, i32 0, i32 3
  store i8* null, i8** %143, align 8
  %144 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %145 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, 8
  store i32 %147, i32* %145, align 8
  %148 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %149 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, 8
  store i32 %151, i32* %149, align 4
  %152 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %153 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %152, i32 0, i32 10
  %154 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp ugt i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %140
  %158 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %159 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %158, i32 0, i32 36
  %160 = load i32, i32* %159, align 8
  %161 = icmp ugt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157, %140
  %163 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %163, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %157
  br label %189

165:                                              ; preds = %134
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %165
  %169 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %170 = load i32, i32* %7, align 4
  call void @png_zstream_error(%struct.png_struct_def* noundef %169, i32 noundef %170)
  %171 = load i8*, i8** %5, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %175 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %176 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %175, i32 0, i32 10
  %177 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %176, i32 0, i32 6
  %178 = load i8*, i8** %177, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %174, i8* noundef %178) #5
  unreachable

179:                                              ; preds = %168
  %180 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %181 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %182 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %181, i32 0, i32 10
  %183 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %182, i32 0, i32 6
  %184 = load i8*, i8** %183, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %180, i8* noundef %184)
  br label %200

185:                                              ; preds = %165
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %6, align 8
  %188 = icmp ugt i64 %187, 0
  br i1 %188, label %23, label %189, !llvm.loop !32

189:                                              ; preds = %186, %164
  %190 = load i64, i64* %6, align 8
  %191 = icmp ugt i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %189
  %193 = load i8*, i8** %5, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %196, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0)) #5
  unreachable

197:                                              ; preds = %192
  %198 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %198, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197
  br label %200

200:                                              ; preds = %179, %199, %189
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @png_read_buffer(%struct.png_struct_def* noalias noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 79
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %15, i32 0, i32 80
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 79
  store i8* null, i8** %21, align 8
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 79
  store i8* null, i8** %23, align 8
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 80
  store i64 0, i64* %25, align 8
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %27 = load i8*, i8** %7, align 8
  call void @png_free(%struct.png_struct_def* noundef %26, i8* noundef %27)
  store i8* null, i8** %7, align 8
  br label %28

28:                                               ; preds = %19, %13, %3
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call noalias i8* @png_malloc_base(%struct.png_struct_def* noundef %32, i64 noundef %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %40 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %39, i32 0, i32 79
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %42, i32 0, i32 80
  store i64 %41, i64* %43, align 8
  br label %56

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_warning(%struct.png_struct_def* noundef %51, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0))
  br label %54

52:                                               ; preds = %47
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %53, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #5
  unreachable

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55, %37
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i8*, i8** %7, align 8
  ret i8* %58
}

declare i32 @inflate(%struct.z_stream_s* noundef, i32 noundef) #2

declare void @png_zstream_error(%struct.png_struct_def* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_finish_IDAT(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_read_IDAT_data(%struct.png_struct_def* noundef %9, i8* noundef null, i64 noundef 0)
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 10
  %12 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 3
  store i8* null, i8** %12, align 8
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %8
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, 8
  store i32 %22, i32* %20, align 8
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %24 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, 8
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %18, %8
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %30 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1229209940
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %34, i32 0, i32 10
  %36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %35, i32 0, i32 0
  store i8* null, i8** %36, align 8
  %37 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %38 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %37, i32 0, i32 10
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %38, i32 0, i32 1
  store i32 0, i32* %39, align 8
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %41 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %40, i32 0, i32 9
  store i32 0, i32* %41, align 4
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %44 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %43, i32 0, i32 36
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %42, i32 noundef %45)
  br label %47

47:                                               ; preds = %33, %28
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_finish_row(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i32 0, i32 29
  %5 = load i32, i32* %4, align 4
  %6 = add i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 29
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 25
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %138

15:                                               ; preds = %1
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 44
  %18 = load i8, i8* %17, align 4
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %136

21:                                               ; preds = %15
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 29
  store i32 0, i32* %23, align 4
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 31
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %28 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %27, i32 0, i32 27
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %32 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %31, i32 0, i32 31
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @llvm.objectsize.i64.p0i8(i8* %33, i1 false, i1 true, i1 false)
  %35 = call i8* @__memset_chk(i8* noundef %26, i32 noundef 0, i64 noundef %30, i64 noundef %34) #6
  br label %36

36:                                               ; preds = %126, %21
  %37 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %38 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %37, i32 0, i32 45
  %39 = load i8, i8* %38, align 1
  %40 = add i8 %39, 1
  store i8 %40, i8* %38, align 1
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %42 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %41, i32 0, i32 45
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sge i32 %44, 7
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %128

47:                                               ; preds = %36
  %48 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %49 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %48, i32 0, i32 23
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %52 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %51, i32 0, i32 45
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_finish_row.png_pass_inc, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = add i32 %50, %57
  %59 = sub i32 %58, 1
  %60 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %61 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %60, i32 0, i32 45
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_finish_row.png_pass_start, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = sub i32 %59, %66
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %69 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %68, i32 0, i32 45
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_finish_row.png_pass_inc, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = udiv i32 %67, %74
  %76 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %77 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %76, i32 0, i32 28
  store i32 %75, i32* %77, align 8
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %79 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %47
  %84 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %85 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %84, i32 0, i32 24
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %88 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %87, i32 0, i32 45
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_finish_row.png_pass_yinc, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = add i32 %86, %93
  %95 = sub i32 %94, 1
  %96 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %97 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %96, i32 0, i32 45
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_finish_row.png_pass_ystart, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = sub i32 %95, %102
  %104 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %105 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %104, i32 0, i32 45
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_finish_row.png_pass_yinc, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = udiv i32 %103, %110
  %112 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %113 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %112, i32 0, i32 25
  store i32 %111, i32* %113, align 4
  br label %115

114:                                              ; preds = %47
  br label %128

115:                                              ; preds = %83
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %118 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %117, i32 0, i32 25
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %123 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %122, i32 0, i32 28
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 0
  br label %126

126:                                              ; preds = %121, %116
  %127 = phi i1 [ true, %116 ], [ %125, %121 ]
  br i1 %127, label %36, label %128, !llvm.loop !33

128:                                              ; preds = %126, %114, %46
  %129 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %130 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %129, i32 0, i32 45
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp slt i32 %132, 7
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %138

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135, %15
  %137 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_read_finish_IDAT(%struct.png_struct_def* noundef %137)
  br label %138

138:                                              ; preds = %136, %134, %14
  ret void
}

; Function Attrs: nounwind
declare i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_start_row(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_init_read_transformations(%struct.png_struct_def* noundef %8)
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %9, i32 0, i32 44
  %11 = load i8, i8* %10, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %73

14:                                               ; preds = %1
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %21, i32 0, i32 24
  %23 = load i32, i32* %22, align 8
  %24 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @png_read_start_row.png_pass_yinc, i64 0, i64 0), align 1
  %25 = zext i8 %24 to i32
  %26 = add i32 %23, %25
  %27 = sub i32 %26, 1
  %28 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @png_read_start_row.png_pass_ystart, i64 0, i64 0), align 1
  %29 = zext i8 %28 to i32
  %30 = sub i32 %27, %29
  %31 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @png_read_start_row.png_pass_yinc, i64 0, i64 0), align 1
  %32 = zext i8 %31 to i32
  %33 = udiv i32 %30, %32
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %34, i32 0, i32 25
  store i32 %33, i32* %35, align 4
  br label %42

36:                                               ; preds = %14
  %37 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %38 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %37, i32 0, i32 24
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %41 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %40, i32 0, i32 25
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %20
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %44 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %43, i32 0, i32 23
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %47 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %46, i32 0, i32 45
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_start_row.png_pass_inc, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add i32 %45, %52
  %54 = sub i32 %53, 1
  %55 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %56 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %55, i32 0, i32 45
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_start_row.png_pass_start, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = sub i32 %54, %61
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %64 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %63, i32 0, i32 45
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_start_row.png_pass_inc, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = udiv i32 %62, %69
  %71 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %72 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %71, i32 0, i32 28
  store i32 %70, i32* %72, align 8
  br label %84

73:                                               ; preds = %1
  %74 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %75 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %74, i32 0, i32 24
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %78 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %77, i32 0, i32 25
  store i32 %76, i32* %78, align 4
  %79 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %80 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %79, i32 0, i32 23
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %83 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %82, i32 0, i32 28
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %73, %42
  %85 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %86 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %85, i32 0, i32 50
  %87 = load i8, i8* %86, align 2
  %88 = zext i8 %87 to i32
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = trunc i32 %89 to i8
  %91 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %92 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %91, i32 0, i32 54
  store i8 %90, i8* %92, align 2
  %93 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %94 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %93, i32 0, i32 55
  store i8 0, i8* %94, align 1
  %95 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %96 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %95, i32 0, i32 23
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, 7
  %99 = and i32 %98, -8
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %4, align 8
  %101 = load i32, i32* %3, align 4
  %102 = icmp sge i32 %101, 8
  br i1 %102, label %103, label %109

103:                                              ; preds = %84
  %104 = load i64, i64* %4, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = lshr i64 %106, 3
  %108 = mul i64 %104, %107
  br label %116

109:                                              ; preds = %84
  %110 = load i64, i64* %4, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %110, %112
  %114 = add i64 %113, 7
  %115 = lshr i64 %114, 3
  br label %116

116:                                              ; preds = %109, %103
  %117 = phi i64 [ %108, %103 ], [ %115, %109 ]
  %118 = add i64 %117, 1
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 7
  %121 = ashr i32 %120, 3
  %122 = sext i32 %121 to i64
  %123 = add i64 %118, %122
  store i64 %123, i64* %4, align 8
  %124 = load i64, i64* %4, align 8
  %125 = add i64 %124, 48
  %126 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %127 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %126, i32 0, i32 78
  %128 = load i64, i64* %127, align 8
  %129 = icmp ugt i64 %125, %128
  br i1 %129, label %130, label %203

130:                                              ; preds = %116
  %131 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %132 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %133 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %132, i32 0, i32 71
  %134 = load i8*, i8** %133, align 8
  call void @png_free(%struct.png_struct_def* noundef %131, i8* noundef %134)
  %135 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %136 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %137 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %136, i32 0, i32 83
  %138 = load i8*, i8** %137, align 8
  call void @png_free(%struct.png_struct_def* noundef %135, i8* noundef %138)
  %139 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %140 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %139, i32 0, i32 44
  %141 = load i8, i8* %140, align 4
  %142 = zext i8 %141 to i32
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %130
  %145 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %146 = load i64, i64* %4, align 8
  %147 = add i64 %146, 48
  %148 = call noalias i8* @png_calloc(%struct.png_struct_def* noundef %145, i64 noundef %147)
  %149 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %150 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %149, i32 0, i32 71
  store i8* %148, i8** %150, align 8
  br label %158

151:                                              ; preds = %130
  %152 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %153 = load i64, i64* %4, align 8
  %154 = add i64 %153, 48
  %155 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %152, i64 noundef %154)
  %156 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %157 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %156, i32 0, i32 71
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %151, %144
  %159 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %160 = load i64, i64* %4, align 8
  %161 = add i64 %160, 48
  %162 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %159, i64 noundef %161)
  %163 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %164 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %163, i32 0, i32 83
  store i8* %162, i8** %164, align 8
  %165 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %166 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %165, i32 0, i32 71
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 32
  store i8* %168, i8** %5, align 8
  %169 = load i8*, i8** %5, align 8
  %170 = ptrtoint i8* %169 to i64
  %171 = sub i64 %170, 0
  %172 = and i64 %171, 15
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %6, align 4
  %174 = load i8*, i8** %5, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = sub i64 0, %176
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  %179 = getelementptr inbounds i8, i8* %178, i64 -1
  %180 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %181 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %180, i32 0, i32 32
  store i8* %179, i8** %181, align 8
  %182 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %183 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %182, i32 0, i32 83
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 32
  store i8* %185, i8** %5, align 8
  %186 = load i8*, i8** %5, align 8
  %187 = ptrtoint i8* %186 to i64
  %188 = sub i64 %187, 0
  %189 = and i64 %188, 15
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %6, align 4
  %191 = load i8*, i8** %5, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = sub i64 0, %193
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  %196 = getelementptr inbounds i8, i8* %195, i64 -1
  %197 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %198 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %197, i32 0, i32 31
  store i8* %196, i8** %198, align 8
  %199 = load i64, i64* %4, align 8
  %200 = add i64 %199, 48
  %201 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %202 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %201, i32 0, i32 78
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %158, %116
  %204 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %205 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %204, i32 0, i32 27
  %206 = load i64, i64* %205, align 8
  %207 = icmp ugt i64 %206, -2
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_error(%struct.png_struct_def* noundef %209, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0)) #5
  unreachable

210:                                              ; preds = %203
  %211 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %212 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %211, i32 0, i32 31
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %215 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %214, i32 0, i32 27
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %216, 1
  %218 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %219 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %218, i32 0, i32 31
  %220 = load i8*, i8** %219, align 8
  %221 = call i64 @llvm.objectsize.i64.p0i8(i8* %220, i1 false, i1 true, i1 false)
  %222 = call i8* @__memset_chk(i8* noundef %213, i32 noundef 0, i64 noundef %217, i64 noundef %221) #6
  %223 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %224 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %223, i32 0, i32 79
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %237

227:                                              ; preds = %210
  %228 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %229 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %228, i32 0, i32 79
  %230 = load i8*, i8** %229, align 8
  store i8* %230, i8** %7, align 8
  %231 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %232 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %231, i32 0, i32 80
  store i64 0, i64* %232, align 8
  %233 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %234 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %233, i32 0, i32 79
  store i8* null, i8** %234, align 8
  %235 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %236 = load i8*, i8** %7, align 8
  call void @png_free(%struct.png_struct_def* noundef %235, i8* noundef %236)
  br label %237

237:                                              ; preds = %227, %210
  %238 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %239 = call i32 @png_inflate_claim(%struct.png_struct_def* noundef %238, i32 noundef 1229209940)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %243 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %244 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %243, i32 0, i32 10
  %245 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %244, i32 0, i32 6
  %246 = load i8*, i8** %245, align 8
  call void @png_error(%struct.png_struct_def* noundef %242, i8* noundef %246) #5
  unreachable

247:                                              ; preds = %237
  %248 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %249 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, 64
  store i32 %251, i32* %249, align 4
  ret void
}

declare void @png_init_read_transformations(%struct.png_struct_def* noundef) #2

declare noalias i8* @png_calloc(%struct.png_struct_def* noundef, i64 noundef) #2

declare noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @png_inflate_claim(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 1
  %6 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = lshr i32 %14, 24
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %17, i8* %19, align 1
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 %25, i8* %27, align 1
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = lshr i32 %30, 8
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 %33, i8* %35, align 1
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  store i8 %40, i8* %42, align 1
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %44 = call i64 @png_safecat(i8* noundef %43, i64 noundef 64, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  %45 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  call void @png_chunk_warning(%struct.png_struct_def* noundef %45, i8* noundef %46)
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %48 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %47, i32 0, i32 9
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %11, %2
  %50 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %51 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %50, i32 0, i32 10
  %52 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %51, i32 0, i32 0
  store i8* null, i8** %52, align 8
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %54 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %53, i32 0, i32 10
  %55 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %57 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %56, i32 0, i32 10
  %58 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %57, i32 0, i32 3
  store i8* null, i8** %58, align 8
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %60 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %59, i32 0, i32 10
  %61 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %60, i32 0, i32 4
  store i32 0, i32* %61, align 8
  %62 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %63 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %49
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %69 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %68, i32 0, i32 10
  %70 = call i32 @inflateReset(%struct.z_stream_s* noundef %69)
  store i32 %70, i32* %6, align 4
  br label %83

71:                                               ; preds = %49
  %72 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %73 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %72, i32 0, i32 10
  %74 = call i32 @inflateInit_(%struct.z_stream_s* noundef %73, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 noundef 112)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %79 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, 2
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %71
  br label %83

83:                                               ; preds = %82, %67
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %89 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 4
  br label %93

90:                                               ; preds = %83
  %91 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %92 = load i32, i32* %6, align 4
  call void @png_zstream_error(%struct.png_struct_def* noundef %91, i32 noundef %92)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_read_filter_row_sub(%struct.png_row_info_struct* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.png_row_info_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.png_row_info_struct* %0, %struct.png_row_info_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %12 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %15 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %14, i32 0, i32 5
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %17, 7
  %19 = ashr i32 %18, 3
  store i32 %19, i32* %9, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %48, %3
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %34, %41
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %10, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %31
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %27, !llvm.loop !34

51:                                               ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_read_filter_row_up(%struct.png_row_info_struct* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.png_row_info_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.png_row_info_struct* %0, %struct.png_row_info_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %12 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %10, align 8
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %34, %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i8*, i8** %9, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %10, align 8
  %26 = load i8, i8* %24, align 1
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %23, %27
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %9, align 8
  store i8 %30, i8* %31, align 1
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %20
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %16, !llvm.loop !35

37:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_read_filter_row_avg(%struct.png_row_info_struct* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.png_row_info_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.png_row_info_struct* %0, %struct.png_row_info_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  %14 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %15 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %14, i32 0, i32 5
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %17, 7
  %19 = ashr i32 %18, 3
  store i32 %19, i32* %10, align 4
  %20 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %21 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = sub i64 %22, %24
  store i64 %25, i64* %11, align 8
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %46, %3
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i32
  %39 = sdiv i32 %38, 2
  %40 = add nsw i32 %34, %39
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %8, align 8
  store i8 %42, i8* %43, align 1
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %31
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %26, !llvm.loop !36

49:                                               ; preds = %26
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %77, %49
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %9, align 8
  %60 = load i8, i8* %58, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %61, %68
  %70 = sdiv i32 %69, 2
  %71 = add nsw i32 %57, %70
  %72 = and i32 %71, 255
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %8, align 8
  store i8 %73, i8* %74, align 1
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %8, align 8
  br label %77

77:                                               ; preds = %54
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %50, !llvm.loop !37

80:                                               ; preds = %50
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_read_filter_row_paeth_1byte_pixel(%struct.png_row_info_struct* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.png_row_info_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.png_row_info_struct* %0, %struct.png_row_info_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %17 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8
  %22 = load i8, i8* %20, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  store i8 %30, i8* %31, align 1
  br label %33

33:                                               ; preds = %95, %3
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %106

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 255
  store i32 %39, i32* %8, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  %42 = load i8, i8* %40, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load i32, i32* %14, align 4
  %54 = sub nsw i32 0, %53
  br label %57

55:                                               ; preds = %37
  %56 = load i32, i32* %14, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i32 [ %54, %52 ], [ %56, %55 ]
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 0, %62
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i32 [ %63, %61 ], [ %65, %64 ]
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %68, %69
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %73, %74
  %76 = sub nsw i32 0, %75
  br label %81

77:                                               ; preds = %66
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %78, %79
  br label %81

81:                                               ; preds = %77, %72
  %82 = phi i32 [ %76, %72 ], [ %80, %77 ]
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %9, align 4
  %97 = load i8*, i8** %5, align 8
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %5, align 8
  store i8 %103, i8* %104, align 1
  br label %33, !llvm.loop !38

106:                                              ; preds = %33
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_read_filter_row_paeth_multibyte_pixel(%struct.png_row_info_struct* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.png_row_info_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.png_row_info_struct* %0, %struct.png_row_info_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %18 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %17, i32 0, i32 5
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %20, 7
  %22 = ashr i32 %21, 3
  store i32 %22, i32* %7, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %31, %3
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i32
  %39 = add nsw i32 %34, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  store i8 %41, i8* %42, align 1
  br label %27, !llvm.loop !39

44:                                               ; preds = %27
  %45 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %46 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %47, %49
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %8, align 8
  br label %53

53:                                               ; preds = %127, %44
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %137

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  store i32 %64, i32* %12, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 0, %67
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  %74 = load i8, i8* %72, align 1
  %75 = zext i8 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %57
  %85 = load i32, i32* %16, align 4
  %86 = sub nsw i32 0, %85
  br label %89

87:                                               ; preds = %57
  %88 = load i32, i32* %16, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi i32 [ %86, %84 ], [ %88, %87 ]
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* %15, align 4
  %95 = sub nsw i32 0, %94
  br label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %15, align 4
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi i32 [ %95, %93 ], [ %97, %96 ]
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %100, %101
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %105, %106
  %108 = sub nsw i32 0, %107
  br label %113

109:                                              ; preds = %98
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %110, %111
  br label %113

113:                                              ; preds = %109, %104
  %114 = phi i32 [ %108, %104 ], [ %112, %109 ]
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %125, %121
  %128 = load i8*, i8** %5, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %5, align 8
  store i8 %134, i8* %135, align 1
  br label %53, !llvm.loop !40

137:                                              ; preds = %53
  ret void
}

declare void @png_init_filter_functions_neon(%struct.png_struct_def* noundef, i32 noundef) #2

declare noalias i8* @png_malloc_base(%struct.png_struct_def* noundef, i64 noundef) #2

declare i64 @png_safecat(i8* noundef, i64 noundef, i64 noundef, i8* noundef) #2

declare i32 @inflateReset(%struct.z_stream_s* noundef) #2

declare i32 @inflateInit_(%struct.z_stream_s* noundef, i8* noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
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
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
