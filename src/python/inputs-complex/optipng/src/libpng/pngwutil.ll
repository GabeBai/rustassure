; ModuleID = 'pngwutil.c'
source_filename = "pngwutil.c"
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

@__const.png_write_sig.png_signature = private unnamed_addr constant [8 x i8] c"\89PNG\0D\0A\1A\0A", align 1
@.str = private unnamed_addr constant [38 x i8] c"Invalid bit depth for grayscale image\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid bit depth for RGB image\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Invalid bit depth for paletted image\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Invalid bit depth for grayscale+alpha image\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Invalid bit depth for RGBA image\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Invalid image color type specified\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Invalid compression type specified\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Invalid filter type specified\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Invalid interlace type specified\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Invalid number of colors in palette\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Ignoring request to write a PLTE chunk in grayscale PNG\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Z_OK on Z_FINISH with output space\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Invalid sBIT depth specified\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Invalid number of transparent colors specified\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write tRNS chunk out-of-range for bit_depth\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Can't write tRNS with an alpha channel\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Invalid background palette index\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write 16-bit bKGD chunk when bit_depth is 8\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write bKGD chunk out-of-range for bit_depth\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"Invalid number of histogram entries specified\00", align 1
@png_write_start_row.png_pass_start = internal constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@png_write_start_row.png_pass_inc = internal constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@png_write_start_row.png_pass_ystart = internal constant [7 x i8] c"\00\00\04\00\02\00\01", align 1
@png_write_start_row.png_pass_yinc = internal constant [7 x i8] c"\08\08\08\04\04\02\02", align 1
@png_write_finish_row.png_pass_start = internal constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@png_write_finish_row.png_pass_inc = internal constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@png_write_finish_row.png_pass_ystart = internal constant [7 x i8] c"\00\00\04\00\02\00\01", align 1
@png_write_finish_row.png_pass_yinc = internal constant [7 x i8] c"\08\08\08\04\04\02\02", align 1
@png_do_write_interlace.png_pass_start = internal constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@png_do_write_interlace.png_pass_inc = internal constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"length exceeds PNG maximum\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c" using zstream\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"in use by IDAT\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"deflateEnd failed (ignored)\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"1.2.8-optipng\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_save_uint_32(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = lshr i32 %5, 24
  %7 = trunc i32 %6 to i8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %7, i8* %9, align 1
  %10 = load i32, i32* %4, align 4
  %11 = lshr i32 %10, 16
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %12, i8* %14, align 1
  %15 = load i32, i32* %4, align 4
  %16 = lshr i32 %15, 8
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %17, i8* %19, align 1
  %20 = load i32, i32* %4, align 4
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  store i8 %21, i8* %23, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_save_uint_16(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = lshr i32 %5, 8
  %7 = trunc i32 %6 to i8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %7, i8* %9, align 1
  %10 = load i32, i32* %4, align 4
  %11 = trunc i32 %10 to i8
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 %11, i8* %13, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_sig(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  %3 = alloca [8 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %4 = bitcast [8 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.png_write_sig.png_signature, i32 0, i32 0), i64 8, i1 false)
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 82
  store i32 18, i32* %6, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 53
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %11
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 53
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = sub nsw i32 8, %16
  %18 = sext i32 %17 to i64
  call void @png_write_data(%struct.png_struct_def* noundef %7, i8* noundef %12, i64 noundef %18)
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %19, i32 0, i32 53
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %26 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, 4096
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare void @png_write_data(%struct.png_struct_def* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_chunk_start(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 255, %11
  %13 = shl i32 %12, 24
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 255, %17
  %19 = shl i32 %18, 16
  %20 = or i32 %13, %19
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 255, %24
  %26 = shl i32 %25, 8
  %27 = or i32 %20, %26
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 255, %31
  %33 = shl i32 %32, 0
  %34 = or i32 %27, %33
  %35 = load i32, i32* %6, align 4
  call void @png_write_chunk_header(%struct.png_struct_def* noundef %7, i32 noundef %34, i32 noundef %35)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_write_chunk_header(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %9 = icmp eq %struct.png_struct_def* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %30

11:                                               ; preds = %3
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 82
  store i32 34, i32* %13, align 4
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %15 = load i32, i32* %6, align 4
  call void @png_save_uint_32(i8* noundef %14, i32 noundef %15)
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  %18 = load i32, i32* %5, align 4
  call void @png_save_uint_32(i8* noundef %17, i32 noundef %18)
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  call void @png_write_data(%struct.png_struct_def* noundef %19, i8* noundef %20, i64 noundef 8)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 30
  store i32 %21, i32* %23, align 8
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_reset_crc(%struct.png_struct_def* noundef %24)
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  call void @png_calculate_crc(%struct.png_struct_def* noundef %25, i8* noundef %27, i64 noundef 4)
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 82
  store i32 66, i32* %29, align 4
  br label %30

30:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_chunk_data(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = icmp eq %struct.png_struct_def* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %23

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  call void @png_write_data(%struct.png_struct_def* noundef %17, i8* noundef %18, i64 noundef %19)
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  call void @png_calculate_crc(%struct.png_struct_def* noundef %20, i8* noundef %21, i64 noundef %22)
  br label %23

23:                                               ; preds = %9, %16, %13, %10
  ret void
}

declare void @png_calculate_crc(%struct.png_struct_def* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_chunk_end(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  %3 = alloca [4 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %5 = icmp eq %struct.png_struct_def* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %16

7:                                                ; preds = %1
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 82
  store i32 130, i32* %9, align 4
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 37
  %13 = load i32, i32* %12, align 4
  call void @png_save_uint_32(i8* noundef %10, i32 noundef %13)
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  call void @png_write_data(%struct.png_struct_def* noundef %14, i8* noundef %15, i64 noundef 4)
  br label %16

16:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_chunk(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 255, %13
  %15 = shl i32 %14, 24
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 255, %19
  %21 = shl i32 %20, 16
  %22 = or i32 %15, %21
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 255, %26
  %28 = shl i32 %27, 8
  %29 = or i32 %22, %28
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 255, %33
  %35 = shl i32 %34, 0
  %36 = or i32 %29, %35
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  call void @png_write_complete_chunk(%struct.png_struct_def* noundef %9, i32 noundef %36, i8* noundef %37, i64 noundef %38)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_write_complete_chunk(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %10 = icmp eq %struct.png_struct_def* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %26

12:                                               ; preds = %4
  %13 = load i64, i64* %8, align 8
  %14 = icmp ugt i64 %13, 2147483647
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %16, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0)) #6
  unreachable

17:                                               ; preds = %12
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  call void @png_write_chunk_header(%struct.png_struct_def* noundef %18, i32 noundef %19, i32 noundef %21)
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  call void @png_write_chunk_data(%struct.png_struct_def* noundef %22, i8* noundef %23, i64 noundef %24)
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_write_chunk_end(%struct.png_struct_def* noundef %25)
  br label %26

26:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_free_buffer_list(%struct.png_struct_def* noalias noundef %0, %struct.png_compression_buffer** noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_compression_buffer**, align 8
  %5 = alloca %struct.png_compression_buffer*, align 8
  %6 = alloca %struct.png_compression_buffer*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_compression_buffer** %1, %struct.png_compression_buffer*** %4, align 8
  %7 = load %struct.png_compression_buffer**, %struct.png_compression_buffer*** %4, align 8
  %8 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %7, align 8
  store %struct.png_compression_buffer* %8, %struct.png_compression_buffer** %5, align 8
  %9 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %5, align 8
  %10 = icmp ne %struct.png_compression_buffer* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.png_compression_buffer**, %struct.png_compression_buffer*** %4, align 8
  store %struct.png_compression_buffer* null, %struct.png_compression_buffer** %12, align 8
  br label %13

13:                                               ; preds = %21, %11
  %14 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %14, i32 0, i32 0
  %16 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %15, align 8
  store %struct.png_compression_buffer* %16, %struct.png_compression_buffer** %6, align 8
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %18 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %5, align 8
  %19 = bitcast %struct.png_compression_buffer* %18 to i8*
  call void @png_free(%struct.png_struct_def* noundef %17, i8* noundef %19)
  %20 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %6, align 8
  store %struct.png_compression_buffer* %20, %struct.png_compression_buffer** %5, align 8
  br label %21

21:                                               ; preds = %13
  %22 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %5, align 8
  %23 = icmp ne %struct.png_compression_buffer* %22, null
  br i1 %23, label %13, label %24, !llvm.loop !10

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %2
  ret void
}

declare void @png_free(%struct.png_struct_def* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_IHDR(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.png_struct_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [13 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %13, align 4
  switch i32 %18, label %68 [
    i32 0, label %19
    i32 2, label %27
    i32 3, label %38
    i32 4, label %46
    i32 6, label %57
  ]

19:                                               ; preds = %8
  %20 = load i32, i32* %12, align 4
  switch i32 %20, label %24 [
    i32 1, label %21
    i32 2, label %21
    i32 4, label %21
    i32 8, label %21
    i32 16, label %21
  ]

21:                                               ; preds = %19, %19, %19, %19, %19
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 51
  store i8 1, i8* %23, align 1
  br label %26

24:                                               ; preds = %19
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_error(%struct.png_struct_def* noundef %25, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0)) #6
  unreachable

26:                                               ; preds = %21
  br label %70

27:                                               ; preds = %8
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 8
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 16
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_error(%struct.png_struct_def* noundef %34, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)) #6
  unreachable

35:                                               ; preds = %30, %27
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 51
  store i8 3, i8* %37, align 1
  br label %70

38:                                               ; preds = %8
  %39 = load i32, i32* %12, align 4
  switch i32 %39, label %43 [
    i32 1, label %40
    i32 2, label %40
    i32 4, label %40
    i32 8, label %40
  ]

40:                                               ; preds = %38, %38, %38, %38
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %42 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %41, i32 0, i32 51
  store i8 1, i8* %42, align 1
  br label %45

43:                                               ; preds = %38
  %44 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_error(%struct.png_struct_def* noundef %44, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0)) #6
  unreachable

45:                                               ; preds = %40
  br label %70

46:                                               ; preds = %8
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 8
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 16
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_error(%struct.png_struct_def* noundef %53, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0)) #6
  unreachable

54:                                               ; preds = %49, %46
  %55 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %56 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %55, i32 0, i32 51
  store i8 2, i8* %56, align 1
  br label %70

57:                                               ; preds = %8
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 8
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 16
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_error(%struct.png_struct_def* noundef %64, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)) #6
  unreachable

65:                                               ; preds = %60, %57
  %66 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %67 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %66, i32 0, i32 51
  store i8 4, i8* %67, align 1
  br label %70

68:                                               ; preds = %8
  %69 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_error(%struct.png_struct_def* noundef %69, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #6
  unreachable

70:                                               ; preds = %65, %54, %45, %35, %26
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %74, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %79, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %87, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %88

88:                                               ; preds = %86, %83, %80
  %89 = load i32, i32* %12, align 4
  %90 = trunc i32 %89 to i8
  %91 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %92 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %91, i32 0, i32 48
  store i8 %90, i8* %92, align 8
  %93 = load i32, i32* %13, align 4
  %94 = trunc i32 %93 to i8
  %95 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %96 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %95, i32 0, i32 47
  store i8 %94, i8* %96, align 1
  %97 = load i32, i32* %16, align 4
  %98 = trunc i32 %97 to i8
  %99 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %100 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %99, i32 0, i32 44
  store i8 %98, i8* %100, align 4
  %101 = load i32, i32* %14, align 4
  %102 = trunc i32 %101 to i8
  %103 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %104 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %103, i32 0, i32 72
  store i8 %102, i8* %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %107 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %106, i32 0, i32 23
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %110 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %109, i32 0, i32 24
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %113 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %112, i32 0, i32 51
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = mul nsw i32 %111, %115
  %117 = trunc i32 %116 to i8
  %118 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %119 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %118, i32 0, i32 50
  store i8 %117, i8* %119, align 2
  %120 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %121 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %120, i32 0, i32 50
  %122 = load i8, i8* %121, align 2
  %123 = zext i8 %122 to i32
  %124 = icmp sge i32 %123, 8
  br i1 %124, label %125, label %134

125:                                              ; preds = %88
  %126 = load i32, i32* %10, align 4
  %127 = zext i32 %126 to i64
  %128 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %129 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %128, i32 0, i32 50
  %130 = load i8, i8* %129, align 2
  %131 = zext i8 %130 to i64
  %132 = lshr i64 %131, 3
  %133 = mul i64 %127, %132
  br label %144

134:                                              ; preds = %88
  %135 = load i32, i32* %10, align 4
  %136 = zext i32 %135 to i64
  %137 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %138 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %137, i32 0, i32 50
  %139 = load i8, i8* %138, align 2
  %140 = zext i8 %139 to i64
  %141 = mul i64 %136, %140
  %142 = add i64 %141, 7
  %143 = lshr i64 %142, 3
  br label %144

144:                                              ; preds = %134, %125
  %145 = phi i64 [ %133, %125 ], [ %143, %134 ]
  %146 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %147 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %146, i32 0, i32 27
  store i64 %145, i64* %147, align 8
  %148 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %149 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %148, i32 0, i32 23
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %152 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %151, i32 0, i32 26
  store i32 %150, i32* %152, align 8
  %153 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %154 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %153, i32 0, i32 48
  %155 = load i8, i8* %154, align 8
  %156 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %157 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %156, i32 0, i32 49
  store i8 %155, i8* %157, align 1
  %158 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %159 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %158, i32 0, i32 51
  %160 = load i8, i8* %159, align 1
  %161 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %162 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %161, i32 0, i32 52
  store i8 %160, i8* %162, align 4
  %163 = getelementptr inbounds [13 x i8], [13 x i8]* %17, i64 0, i64 0
  %164 = load i32, i32* %10, align 4
  call void @png_save_uint_32(i8* noundef %163, i32 noundef %164)
  %165 = getelementptr inbounds [13 x i8], [13 x i8]* %17, i64 0, i64 0
  %166 = getelementptr inbounds i8, i8* %165, i64 4
  %167 = load i32, i32* %11, align 4
  call void @png_save_uint_32(i8* noundef %166, i32 noundef %167)
  %168 = load i32, i32* %12, align 4
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds [13 x i8], [13 x i8]* %17, i64 0, i64 8
  store i8 %169, i8* %170, align 1
  %171 = load i32, i32* %13, align 4
  %172 = trunc i32 %171 to i8
  %173 = getelementptr inbounds [13 x i8], [13 x i8]* %17, i64 0, i64 9
  store i8 %172, i8* %173, align 1
  %174 = load i32, i32* %14, align 4
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds [13 x i8], [13 x i8]* %17, i64 0, i64 10
  store i8 %175, i8* %176, align 1
  %177 = load i32, i32* %15, align 4
  %178 = trunc i32 %177 to i8
  %179 = getelementptr inbounds [13 x i8], [13 x i8]* %17, i64 0, i64 11
  store i8 %178, i8* %179, align 1
  %180 = load i32, i32* %16, align 4
  %181 = trunc i32 %180 to i8
  %182 = getelementptr inbounds [13 x i8], [13 x i8]* %17, i64 0, i64 12
  store i8 %181, i8* %182, align 1
  %183 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %184 = getelementptr inbounds [13 x i8], [13 x i8]* %17, i64 0, i64 0
  call void @png_write_complete_chunk(%struct.png_struct_def* noundef %183, i32 noundef 1229472850, i8* noundef %184, i64 noundef 13)
  %185 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %186 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %185, i32 0, i32 46
  %187 = load i8, i8* %186, align 2
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %209

190:                                              ; preds = %144
  %191 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %192 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %191, i32 0, i32 47
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp eq i32 %194, 3
  br i1 %195, label %202, label %196

196:                                              ; preds = %190
  %197 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %198 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %197, i32 0, i32 48
  %199 = load i8, i8* %198, align 8
  %200 = zext i8 %199 to i32
  %201 = icmp slt i32 %200, 8
  br i1 %201, label %202, label %205

202:                                              ; preds = %196, %190
  %203 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %204 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %203, i32 0, i32 46
  store i8 8, i8* %204, align 2
  br label %208

205:                                              ; preds = %196
  %206 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %207 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %206, i32 0, i32 46
  store i8 -8, i8* %207, align 2
  br label %208

208:                                              ; preds = %205, %202
  br label %209

209:                                              ; preds = %208, %144
  %210 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %211 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %210, i32 0, i32 6
  store i32 1, i32* %211, align 8
  ret void
}

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #3

declare void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_PLTE(%struct.png_struct_def* noalias noundef %0, %struct.png_color_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_color_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.png_color_struct*, align 8
  %10 = alloca [3 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_color_struct* %1, %struct.png_color_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 47
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 48
  %19 = load i8, i8* %18, align 8
  %20 = zext i8 %19 to i32
  %21 = shl i32 1, %20
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi i32 [ %21, %16 ], [ 256, %22 ]
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27, %23
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %33 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %32, i32 0, i32 47
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %38, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0)) #6
  unreachable

39:                                               ; preds = %31
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %40, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %89

41:                                               ; preds = %27
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %42, i32 0, i32 47
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %49, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  br label %89

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = trunc i32 %51 to i16
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %54 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %53, i32 0, i32 39
  store i16 %52, i16* %54, align 8
  %55 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = mul i32 %56, 3
  call void @png_write_chunk_header(%struct.png_struct_def* noundef %55, i32 noundef 1347179589, i32 noundef %57)
  store i32 0, i32* %8, align 4
  %58 = load %struct.png_color_struct*, %struct.png_color_struct** %5, align 8
  store %struct.png_color_struct* %58, %struct.png_color_struct** %9, align 8
  br label %59

59:                                               ; preds = %78, %50
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %65 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 1
  %67 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  store i8 %66, i8* %67, align 1
  %68 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %69 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %68, i32 0, i32 1
  %70 = load i8, i8* %69, align 1
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  store i8 %70, i8* %71, align 1
  %72 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %73 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %72, i32 0, i32 2
  %74 = load i8, i8* %73, align 1
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  store i8 %74, i8* %75, align 1
  %76 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %77 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  call void @png_write_chunk_data(%struct.png_struct_def* noundef %76, i8* noundef %77, i64 noundef 3)
  br label %78

78:                                               ; preds = %63
  %79 = load i32, i32* %8, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %8, align 4
  %81 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %82 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %81, i32 1
  store %struct.png_color_struct* %82, %struct.png_color_struct** %9, align 8
  br label %59, !llvm.loop !12

83:                                               ; preds = %59
  %84 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_write_chunk_end(%struct.png_struct_def* noundef %84)
  %85 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %86 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, 2
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %48, %39
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_compress_IDAT(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 1229209940
  br i1 %18, label %19, label %72

19:                                               ; preds = %4
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 11
  %22 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %21, align 8
  %23 = icmp eq %struct.png_compression_buffer* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %27 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 8
  %29 = zext i32 %28 to i64
  %30 = add i64 8, %29
  %31 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %25, i64 noundef %30)
  %32 = bitcast i8* %31 to %struct.png_compression_buffer*
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %34 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %33, i32 0, i32 11
  store %struct.png_compression_buffer* %32, %struct.png_compression_buffer** %34, align 8
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %36 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %35, i32 0, i32 11
  %37 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %36, align 8
  %38 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %37, i32 0, i32 0
  store %struct.png_compression_buffer* null, %struct.png_compression_buffer** %38, align 8
  br label %45

39:                                               ; preds = %19
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %42 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %41, i32 0, i32 11
  %43 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %42, align 8
  %44 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %43, i32 0, i32 0
  call void @png_free_buffer_list(%struct.png_struct_def* noundef %40, %struct.png_compression_buffer** noundef %44)
  br label %45

45:                                               ; preds = %39, %24
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %48 = call i64 @png_image_size(%struct.png_struct_def* noundef %47)
  %49 = call i32 @png_deflate_claim(%struct.png_struct_def* noundef %46, i32 noundef 1229209940, i64 noundef %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %54 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %53, i32 0, i32 10
  %55 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %54, i32 0, i32 6
  %56 = load i8*, i8** %55, align 8
  call void @png_error(%struct.png_struct_def* noundef %52, i8* noundef %56) #6
  unreachable

57:                                               ; preds = %45
  %58 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %59 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %58, i32 0, i32 11
  %60 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %59, align 8
  %61 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %60, i32 0, i32 1
  %62 = getelementptr inbounds [1 x i8], [1 x i8]* %61, i64 0, i64 0
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %64 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %63, i32 0, i32 10
  %65 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %64, i32 0, i32 3
  store i8* %62, i8** %65, align 8
  %66 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %67 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %70 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %69, i32 0, i32 10
  %71 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %70, i32 0, i32 4
  store i32 %68, i32* %71, align 8
  br label %72

72:                                               ; preds = %57, %4
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %75 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  %77 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %78 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %77, i32 0, i32 10
  %79 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %78, i32 0, i32 1
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %243, %168, %72
  store i32 -1, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %7, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i64, i64* %7, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %91 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %90, i32 0, i32 10
  %92 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %7, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %7, align 8
  %97 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %98 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %97, i32 0, i32 10
  %99 = load i64, i64* %7, align 8
  %100 = icmp ugt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %104

102:                                              ; preds = %88
  %103 = load i32, i32* %8, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = phi i32 [ 0, %101 ], [ %103, %102 ]
  %106 = call i32 @deflate(%struct.z_stream_s* noundef %98, i32 noundef %105)
  store i32 %106, i32* %9, align 4
  %107 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %108 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %107, i32 0, i32 10
  %109 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %7, align 8
  %114 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %115 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %114, i32 0, i32 10
  %116 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %115, i32 0, i32 1
  store i32 0, i32* %116, align 8
  %117 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %118 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %117, i32 0, i32 10
  %119 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %170

122:                                              ; preds = %104
  %123 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %124 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %123, i32 0, i32 11
  %125 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %124, align 8
  %126 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %125, i32 0, i32 1
  %127 = getelementptr inbounds [1 x i8], [1 x i8]* %126, i64 0, i64 0
  store i8* %127, i8** %11, align 8
  %128 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %129 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %128, i32 0, i32 12
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %12, align 4
  %131 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %132 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %122
  %137 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %138 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %137, i32 0, i32 72
  %139 = load i8, i8* %138, align 8
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i8*, i8** %11, align 8
  %144 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %145 = call i64 @png_image_size(%struct.png_struct_def* noundef %144)
  call void @optimize_cmf(i8* noundef %143, i64 noundef %145)
  br label %146

146:                                              ; preds = %142, %136, %122
  %147 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = load i32, i32* %12, align 4
  %150 = zext i32 %149 to i64
  call void @png_write_complete_chunk(%struct.png_struct_def* noundef %147, i32 noundef 1229209940, i8* noundef %148, i64 noundef %150)
  %151 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %152 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, 4
  store i32 %154, i32* %152, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %157 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %156, i32 0, i32 10
  %158 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %157, i32 0, i32 3
  store i8* %155, i8** %158, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %161 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %160, i32 0, i32 10
  %162 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %161, i32 0, i32 4
  store i32 %159, i32* %162, align 8
  %163 = load i32, i32* %9, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %146
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %80

169:                                              ; preds = %165, %146
  br label %170

170:                                              ; preds = %169, %104
  %171 = load i32, i32* %9, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load i64, i64* %7, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load i32, i32* %8, align 4
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %180, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #6
  unreachable

181:                                              ; preds = %176
  br label %244

182:                                              ; preds = %173
  br label %243

183:                                              ; preds = %170
  %184 = load i32, i32* %9, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %235

186:                                              ; preds = %183
  %187 = load i32, i32* %8, align 4
  %188 = icmp eq i32 %187, 4
  br i1 %188, label %189, label %235

189:                                              ; preds = %186
  %190 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %191 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %190, i32 0, i32 11
  %192 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %191, align 8
  %193 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %192, i32 0, i32 1
  %194 = getelementptr inbounds [1 x i8], [1 x i8]* %193, i64 0, i64 0
  store i8* %194, i8** %13, align 8
  %195 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %196 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %195, i32 0, i32 12
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %199 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %198, i32 0, i32 10
  %200 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = sub i32 %197, %201
  store i32 %202, i32* %14, align 4
  %203 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %204 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %189
  %209 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %210 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %209, i32 0, i32 72
  %211 = load i8, i8* %210, align 8
  %212 = zext i8 %211 to i32
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i8*, i8** %13, align 8
  %216 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %217 = call i64 @png_image_size(%struct.png_struct_def* noundef %216)
  call void @optimize_cmf(i8* noundef %215, i64 noundef %217)
  br label %218

218:                                              ; preds = %214, %208, %189
  %219 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %220 = load i8*, i8** %13, align 8
  %221 = load i32, i32* %14, align 4
  %222 = zext i32 %221 to i64
  call void @png_write_complete_chunk(%struct.png_struct_def* noundef %219, i32 noundef 1229209940, i8* noundef %220, i64 noundef %222)
  %223 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %224 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %223, i32 0, i32 10
  %225 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %224, i32 0, i32 4
  store i32 0, i32* %225, align 8
  %226 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %227 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %226, i32 0, i32 10
  %228 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %227, i32 0, i32 3
  store i8* null, i8** %228, align 8
  %229 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %230 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, 12
  store i32 %232, i32* %230, align 8
  %233 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %234 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %233, i32 0, i32 9
  store i32 0, i32* %234, align 4
  br label %244

235:                                              ; preds = %186, %183
  %236 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %237 = load i32, i32* %9, align 4
  call void @png_zstream_error(%struct.png_struct_def* noundef %236, i32 noundef %237)
  %238 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %239 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %240 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %239, i32 0, i32 10
  %241 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %240, i32 0, i32 6
  %242 = load i8*, i8** %241, align 8
  call void @png_error(%struct.png_struct_def* noundef %238, i8* noundef %242) #6
  unreachable

243:                                              ; preds = %182
  br label %80

244:                                              ; preds = %218, %181
  ret void
}

declare noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @png_deflate_claim(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [64 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %96

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = lshr i32 %21, 24
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %24, i8* %26, align 1
  %27 = load i32, i32* %6, align 4
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %30, i8* %32, align 1
  %33 = load i32, i32* %6, align 4
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 255
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %43 = getelementptr inbounds i8, i8* %42, i64 3
  store i8 %41, i8* %43, align 1
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 4
  store i8 58, i8* %44, align 1
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 5
  store i8 32, i8* %45, align 1
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %47 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = lshr i32 %48, 24
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %53 = getelementptr inbounds i8, i8* %52, i64 6
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 %51, i8* %54, align 1
  %55 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %56 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %62 = getelementptr inbounds i8, i8* %61, i64 6
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 %60, i8* %63, align 1
  %64 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %65 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = lshr i32 %66, 8
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %71 = getelementptr inbounds i8, i8* %70, i64 6
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  store i8 %69, i8* %72, align 1
  %73 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %74 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 255
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %79 = getelementptr inbounds i8, i8* %78, i64 6
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  store i8 %77, i8* %80, align 1
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %82 = call i64 @png_safecat(i8* noundef %81, i64 noundef 64, i64 noundef 10, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %83 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  call void @png_warning(%struct.png_struct_def* noundef %83, i8* noundef %84)
  %85 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %86 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1229209940
  br i1 %88, label %89, label %93

89:                                               ; preds = %20
  %90 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %91 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %90, i32 0, i32 10
  %92 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %91, i32 0, i32 6
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8** %92, align 8
  store i32 -2, i32* %4, align 4
  br label %250

93:                                               ; preds = %20
  %94 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %95 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %94, i32 0, i32 9
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %3
  %97 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %98 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %9, align 4
  %100 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %101 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %100, i32 0, i32 14
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %10, align 4
  %103 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %104 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %103, i32 0, i32 15
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %11, align 4
  %106 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %107 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %106, i32 0, i32 16
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 1229209940
  br i1 %110, label %111, label %131

111:                                              ; preds = %96
  %112 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %113 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %119 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %118, i32 0, i32 17
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %13, align 4
  br label %130

121:                                              ; preds = %111
  %122 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %123 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %122, i32 0, i32 46
  %124 = load i8, i8* %123, align 2
  %125 = zext i8 %124 to i32
  %126 = icmp ne i32 %125, 8
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 1, i32* %13, align 4
  br label %129

128:                                              ; preds = %121
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %128, %127
  br label %130

130:                                              ; preds = %129, %117
  br label %132

131:                                              ; preds = %96
  store i32 0, i32* %13, align 4
  br label %132

132:                                              ; preds = %131, %130
  %133 = load i64, i64* %7, align 8
  %134 = icmp ule i64 %133, 16384
  br i1 %134, label %135, label %151

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %136, 1
  %138 = shl i32 1, %137
  store i32 %138, i32* %15, align 4
  br label %139

139:                                              ; preds = %145, %135
  %140 = load i64, i64* %7, align 8
  %141 = add i64 %140, 262
  %142 = load i32, i32* %15, align 4
  %143 = zext i32 %142 to i64
  %144 = icmp ule i64 %141, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i32, i32* %15, align 4
  %147 = lshr i32 %146, 1
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %11, align 4
  br label %139, !llvm.loop !13

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150, %132
  %152 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %153 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 2
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %199

157:                                              ; preds = %151
  %158 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %159 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %158, i32 0, i32 18
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %187, label %163

163:                                              ; preds = %157
  %164 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %165 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %164, i32 0, i32 19
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %187, label %169

169:                                              ; preds = %163
  %170 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %171 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %170, i32 0, i32 20
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %187, label %175

175:                                              ; preds = %169
  %176 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %177 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %176, i32 0, i32 21
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %187, label %181

181:                                              ; preds = %175
  %182 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %183 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %182, i32 0, i32 22
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %13, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %181, %175, %169, %163, %157
  %188 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %189 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %188, i32 0, i32 10
  %190 = call i32 @deflateEnd(%struct.z_stream_s* noundef %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_warning(%struct.png_struct_def* noundef %193, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %187
  %195 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %196 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, -3
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %194, %181, %151
  %200 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %201 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %200, i32 0, i32 10
  %202 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %201, i32 0, i32 0
  store i8* null, i8** %202, align 8
  %203 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %204 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %203, i32 0, i32 10
  %205 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %204, i32 0, i32 1
  store i32 0, i32* %205, align 8
  %206 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %207 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %206, i32 0, i32 10
  %208 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %207, i32 0, i32 3
  store i8* null, i8** %208, align 8
  %209 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %210 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %209, i32 0, i32 10
  %211 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %210, i32 0, i32 4
  store i32 0, i32* %211, align 8
  %212 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %213 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 2
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %199
  %218 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %219 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %218, i32 0, i32 10
  %220 = call i32 @deflateReset(%struct.z_stream_s* noundef %219)
  store i32 %220, i32* %14, align 4
  br label %238

221:                                              ; preds = %199
  %222 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %223 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %222, i32 0, i32 10
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @deflateInit2_(%struct.z_stream_s* noundef %223, i32 noundef %224, i32 noundef %225, i32 noundef %226, i32 noundef %227, i32 noundef %228, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 noundef 112)
  store i32 %229, i32* %14, align 4
  %230 = load i32, i32* %14, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %221
  %233 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %234 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, 2
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %232, %221
  br label %238

238:                                              ; preds = %237, %217
  %239 = load i32, i32* %14, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load i32, i32* %6, align 4
  %243 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %244 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %243, i32 0, i32 9
  store i32 %242, i32* %244, align 4
  br label %248

245:                                              ; preds = %238
  %246 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %247 = load i32, i32* %14, align 4
  call void @png_zstream_error(%struct.png_struct_def* noundef %246, i32 noundef %247)
  br label %248

248:                                              ; preds = %245, %241
  %249 = load i32, i32* %14, align 4
  store i32 %249, i32* %4, align 4
  br label %250

250:                                              ; preds = %248, %89
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @png_image_size(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 24
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 27
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %15, 32768
  br i1 %16, label %17, label %143

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp ult i32 %18, 32768
  br i1 %19, label %20, label %143

20:                                               ; preds = %17
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %21, i32 0, i32 44
  %23 = load i8, i8* %22, align 4
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %135

26:                                               ; preds = %20
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %28 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %27, i32 0, i32 23
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %30, i32 0, i32 50
  %32 = load i8, i8* %31, align 2
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %130, %26
  %35 = load i32, i32* %8, align 4
  %36 = icmp sle i32 %35, 6
  br i1 %36, label %37, label %133

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 7, %42
  %44 = ashr i32 %43, 1
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 3, %45 ]
  %48 = shl i32 1, %47
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 1, %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  %54 = ashr i32 %53, 1
  %55 = sub nsw i32 3, %54
  %56 = shl i32 %51, %55
  %57 = and i32 %56, 7
  %58 = sub nsw i32 %49, %57
  %59 = add i32 %38, %58
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 7, %63
  %65 = ashr i32 %64, 1
  br label %67

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ %65, %62 ], [ 3, %66 ]
  %69 = lshr i32 %59, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ugt i32 %70, 0
  br i1 %71, label %72, label %129

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = icmp uge i32 %73, 8
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = lshr i64 %79, 3
  %81 = mul i64 %77, %80
  br label %90

82:                                               ; preds = %72
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = load i32, i32* %6, align 4
  %86 = zext i32 %85 to i64
  %87 = mul i64 %84, %86
  %88 = add i64 %87, 7
  %89 = lshr i64 %88, 3
  br label %90

90:                                               ; preds = %82, %75
  %91 = phi i64 [ %81, %75 ], [ %89, %82 ]
  %92 = add i64 %91, 1
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %94, 2
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 8, %97
  %99 = ashr i32 %98, 1
  br label %101

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i32 [ %99, %96 ], [ 3, %100 ]
  %103 = shl i32 1, %102
  %104 = sub nsw i32 %103, 1
  %105 = load i32, i32* %8, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 1, %106
  %108 = load i32, i32* %8, align 4
  %109 = ashr i32 %108, 1
  %110 = sub nsw i32 3, %109
  %111 = shl i32 %107, %110
  %112 = and i32 %111, 7
  %113 = sub nsw i32 %104, %112
  %114 = add i32 %93, %113
  %115 = load i32, i32* %8, align 4
  %116 = icmp sgt i32 %115, 2
  br i1 %116, label %117, label %121

117:                                              ; preds = %101
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 8, %118
  %120 = ashr i32 %119, 1
  br label %122

121:                                              ; preds = %101
  br label %122

122:                                              ; preds = %121, %117
  %123 = phi i32 [ %120, %117 ], [ 3, %121 ]
  %124 = lshr i32 %114, %123
  %125 = zext i32 %124 to i64
  %126 = mul i64 %92, %125
  %127 = load i64, i64* %7, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %7, align 8
  br label %129

129:                                              ; preds = %122, %67
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %34, !llvm.loop !14

133:                                              ; preds = %34
  %134 = load i64, i64* %7, align 8
  store i64 %134, i64* %2, align 8
  br label %144

135:                                              ; preds = %20
  %136 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %137 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %136, i32 0, i32 27
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  %140 = load i32, i32* %4, align 4
  %141 = zext i32 %140 to i64
  %142 = mul i64 %139, %141
  store i64 %142, i64* %2, align 8
  br label %144

143:                                              ; preds = %17, %1
  store i64 4294967295, i64* %2, align 8
  br label %144

144:                                              ; preds = %143, %135, %133
  %145 = load i64, i64* %2, align 8
  ret i64 %145
}

declare i32 @deflate(%struct.z_stream_s* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @optimize_cmf(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ule i64 %9, 16384
  br i1 %10, label %11, label %78

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 15
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %77

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 240
  %22 = icmp ule i32 %21, 112
  br i1 %22, label %23, label %77

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = lshr i32 %24, 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 7
  %28 = shl i32 1, %27
  store i32 %28, i32* %7, align 4
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = icmp ule i64 %29, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %7, align 4
  %36 = lshr i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, -1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = icmp ugt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp ule i64 %43, %45
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  br i1 %48, label %34, label %49, !llvm.loop !15

49:                                               ; preds = %47
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 15
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 4
  %54 = or i32 %51, %53
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 %56, i8* %58, align 1
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 224
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = shl i32 %64, 8
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %65, %66
  %68 = urem i32 %67, 31
  %69 = sub i32 31, %68
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 %73, i8* %75, align 1
  br label %76

76:                                               ; preds = %49, %23
  br label %77

77:                                               ; preds = %76, %19, %11
  br label %78

78:                                               ; preds = %77, %2
  ret void
}

declare void @png_zstream_error(%struct.png_struct_def* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_IEND(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_write_complete_chunk(%struct.png_struct_def* noundef %3, i32 noundef 1229278788, i8* noundef null, i64 noundef 0)
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 8
  %7 = or i32 %6, 16
  store i32 %7, i32* %5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_sBIT(%struct.png_struct_def* noalias noundef %0, %struct.png_color_8_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_color_8_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_color_8_struct* %1, %struct.png_color_8_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %81

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %22

17:                                               ; preds = %13
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 49
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  br label %22

22:                                               ; preds = %17, %16
  %23 = phi i32 [ 8, %16 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %9, align 1
  %25 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %26 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %22
  %31 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %32 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %9, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %66, label %38

38:                                               ; preds = %30
  %39 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %40 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %38
  %45 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %46 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %66, label %52

52:                                               ; preds = %44
  %53 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %54 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %53, i32 0, i32 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %60 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %59, i32 0, i32 2
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %9, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58, %52, %44, %38, %30, %22
  %67 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %67, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %137

68:                                               ; preds = %58
  %69 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %70 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %69, i32 0, i32 0
  %71 = load i8, i8* %70, align 1
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 %71, i8* %72, align 1
  %73 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %74 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %73, i32 0, i32 1
  %75 = load i8, i8* %74, align 1
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  store i8 %75, i8* %76, align 1
  %77 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %78 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %77, i32 0, i32 2
  %79 = load i8, i8* %78, align 1
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  store i8 %79, i8* %80, align 1
  store i64 3, i64* %8, align 8
  br label %104

81:                                               ; preds = %3
  %82 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %83 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %82, i32 0, i32 3
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %81
  %88 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %89 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %88, i32 0, i32 3
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %93 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %92, i32 0, i32 49
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp sgt i32 %91, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %87, %81
  %98 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %98, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %137

99:                                               ; preds = %87
  %100 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %101 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %100, i32 0, i32 3
  %102 = load i8, i8* %101, align 1
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 %102, i8* %103, align 1
  store i64 1, i64* %8, align 8
  br label %104

104:                                              ; preds = %99, %68
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %104
  %109 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %110 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %109, i32 0, i32 4
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %108
  %115 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %116 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %115, i32 0, i32 4
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %120 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %119, i32 0, i32 49
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp sgt i32 %118, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %114, %108
  %125 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %125, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %137

126:                                              ; preds = %114
  %127 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %5, align 8
  %128 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %127, i32 0, i32 4
  %129 = load i8, i8* %128, align 1
  %130 = load i64, i64* %8, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %8, align 8
  %132 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 %130
  store i8 %129, i8* %132, align 1
  br label %133

133:                                              ; preds = %126, %104
  %134 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %135 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %136 = load i64, i64* %8, align 8
  call void @png_write_complete_chunk(%struct.png_struct_def* noundef %134, i32 noundef 1933723988, i8* noundef %135, i64 noundef %136)
  br label %137

137:                                              ; preds = %133, %124, %97, %66
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_tRNS(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, %struct.png_color_16_struct* noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.png_struct_def*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.png_color_16_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.png_color_16_struct* %2, %struct.png_color_16_struct** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %31

14:                                               ; preds = %5
  %15 = load i32, i32* %9, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %19, i32 0, i32 39
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = icmp sgt i32 %18, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17, %14
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  call void @png_app_warning(%struct.png_struct_def* noundef %25, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  br label %103

26:                                               ; preds = %17
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  call void @png_write_complete_chunk(%struct.png_struct_def* noundef %27, i32 noundef 1951551059, i8* noundef %28, i64 noundef %30)
  br label %103

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %8, align 8
  %36 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %35, i32 0, i32 4
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %40 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %39, i32 0, i32 48
  %41 = load i8, i8* %40, align 8
  %42 = zext i8 %41 to i32
  %43 = shl i32 1, %42
  %44 = icmp sge i32 %38, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  call void @png_app_warning(%struct.png_struct_def* noundef %46, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.14, i64 0, i64 0))
  br label %103

47:                                               ; preds = %34
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %49 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %8, align 8
  %50 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %49, i32 0, i32 4
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  call void @png_save_uint_16(i8* noundef %48, i32 noundef %52)
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %54 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  call void @png_write_complete_chunk(%struct.png_struct_def* noundef %53, i32 noundef 1951551059, i8* noundef %54, i64 noundef 2)
  br label %102

55:                                               ; preds = %31
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %99

58:                                               ; preds = %55
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %60 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %8, align 8
  %61 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %60, i32 0, i32 1
  %62 = load i16, i16* %61, align 2
  %63 = zext i16 %62 to i32
  call void @png_save_uint_16(i8* noundef %59, i32 noundef %63)
  %64 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %8, align 8
  %67 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %66, i32 0, i32 2
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  call void @png_save_uint_16(i8* noundef %65, i32 noundef %69)
  %70 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %8, align 8
  %73 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %72, i32 0, i32 3
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  call void @png_save_uint_16(i8* noundef %71, i32 noundef %75)
  %76 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %77 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %76, i32 0, i32 48
  %78 = load i8, i8* %77, align 8
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 8
  br i1 %80, label %81, label %96

81:                                               ; preds = %58
  %82 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %84, %87
  %89 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 4
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  call void @png_app_warning(%struct.png_struct_def* noundef %95, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0))
  br label %103

96:                                               ; preds = %81, %58
  %97 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %98 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  call void @png_write_complete_chunk(%struct.png_struct_def* noundef %97, i32 noundef 1951551059, i8* noundef %98, i64 noundef 6)
  br label %101

99:                                               ; preds = %55
  %100 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  call void @png_app_warning(%struct.png_struct_def* noundef %100, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96
  br label %102

102:                                              ; preds = %101, %47
  br label %103

103:                                              ; preds = %24, %45, %94, %102, %26
  ret void
}

declare void @png_app_warning(%struct.png_struct_def* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_bKGD(%struct.png_struct_def* noalias noundef %0, %struct.png_color_16_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_color_16_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_color_16_struct* %1, %struct.png_color_16_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %5, align 8
  %12 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 2
  %14 = zext i8 %13 to i32
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %15, i32 0, i32 39
  %17 = load i16, i16* %16, align 8
  %18 = zext i16 %17 to i32
  %19 = icmp sge i32 %14, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %21, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  br label %96

22:                                               ; preds = %10
  %23 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %5, align 8
  %24 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 2
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  store i8 %25, i8* %26, align 1
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %28 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  call void @png_write_complete_chunk(%struct.png_struct_def* noundef %27, i32 noundef 1649100612, i8* noundef %28, i64 noundef 1)
  br label %96

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %35 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %5, align 8
  %36 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %35, i32 0, i32 1
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  call void @png_save_uint_16(i8* noundef %34, i32 noundef %38)
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %5, align 8
  %42 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %41, i32 0, i32 2
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  call void @png_save_uint_16(i8* noundef %40, i32 noundef %44)
  %45 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  %47 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %5, align 8
  %48 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %47, i32 0, i32 3
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  call void @png_save_uint_16(i8* noundef %46, i32 noundef %50)
  %51 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %52 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %51, i32 0, i32 48
  %53 = load i8, i8* %52, align 8
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %71

56:                                               ; preds = %33
  %57 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  %64 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 4
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %70, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0))
  br label %96

71:                                               ; preds = %56, %33
  %72 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %73 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  call void @png_write_complete_chunk(%struct.png_struct_def* noundef %72, i32 noundef 1649100612, i8* noundef %73, i64 noundef 6)
  br label %95

74:                                               ; preds = %29
  %75 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %5, align 8
  %76 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %75, i32 0, i32 4
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %80 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %79, i32 0, i32 48
  %81 = load i8, i8* %80, align 8
  %82 = zext i8 %81 to i32
  %83 = shl i32 1, %82
  %84 = icmp sge i32 %78, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %86, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0))
  br label %96

87:                                               ; preds = %74
  %88 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %89 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %5, align 8
  %90 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %89, i32 0, i32 4
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  call void @png_save_uint_16(i8* noundef %88, i32 noundef %92)
  %93 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %94 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  call void @png_write_complete_chunk(%struct.png_struct_def* noundef %93, i32 noundef 1649100612, i8* noundef %94, i64 noundef 2)
  br label %95

95:                                               ; preds = %87, %71
  br label %96

96:                                               ; preds = %20, %69, %85, %95, %22
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_hIST(%struct.png_struct_def* noalias noundef %0, i16* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 39
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = icmp sgt i32 %9, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %16, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0))
  br label %40

17:                                               ; preds = %3
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %19, 2
  call void @png_write_chunk_header(%struct.png_struct_def* noundef %18, i32 noundef 1749635924, i32 noundef %20)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %35, %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %27 = load i16*, i16** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %27, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  call void @png_save_uint_16(i8* noundef %26, i32 noundef %32)
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  call void @png_write_chunk_data(%struct.png_struct_def* noundef %33, i8* noundef %34, i64 noundef 2)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %21, !llvm.loop !16

38:                                               ; preds = %21
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_write_chunk_end(%struct.png_struct_def* noundef %39)
  br label %40

40:                                               ; preds = %38, %15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_start_row(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 52
  %9 = load i8, i8* %8, align 4
  %10 = zext i8 %9 to i32
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 49
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = mul nsw i32 %10, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 8
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %19, i32 0, i32 23
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = lshr i64 %24, 3
  %26 = mul i64 %22, %25
  br label %37

27:                                               ; preds = %1
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 23
  %30 = load i32, i32* %29, align 4
  %31 = zext i32 %30 to i64
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %31, %33
  %35 = add i64 %34, 7
  %36 = lshr i64 %35, 3
  br label %37

37:                                               ; preds = %27, %18
  %38 = phi i64 [ %26, %18 ], [ %36, %27 ]
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %41 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %40, i32 0, i32 50
  %42 = load i8, i8* %41, align 2
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %44 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %43, i32 0, i32 55
  store i8 %42, i8* %44, align 1
  %45 = load i32, i32* %4, align 4
  %46 = trunc i32 %45 to i8
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %48 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %47, i32 0, i32 54
  store i8 %46, i8* %48, align 2
  %49 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %50 = load i64, i64* %3, align 8
  %51 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %49, i64 noundef %50)
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %53 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %52, i32 0, i32 32
  store i8* %51, i8** %53, align 8
  %54 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %55 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %54, i32 0, i32 32
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 0, i8* %57, align 1
  %58 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %59 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %58, i32 0, i32 46
  %60 = load i8, i8* %59, align 2
  store i8 %60, i8* %5, align 1
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %62 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %61, i32 0, i32 24
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %37
  %66 = load i8, i8* %5, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %5, align 1
  br label %70

70:                                               ; preds = %65, %37
  %71 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %72 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %71, i32 0, i32 23
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8, i8* %5, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 47
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %5, align 1
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i8, i8* %5, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i8 8, i8* %5, align 1
  br label %85

85:                                               ; preds = %84, %80
  %86 = load i8, i8* %5, align 1
  %87 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %88 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %87, i32 0, i32 46
  store i8 %86, i8* %88, align 2
  %89 = load i8, i8* %5, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 240
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %145

93:                                               ; preds = %85
  %94 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %95 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %94, i32 0, i32 33
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %145

98:                                               ; preds = %93
  store i32 0, i32* %6, align 4
  %99 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %100 = load i64, i64* %3, align 8
  %101 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %99, i64 noundef %100)
  %102 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %103 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %102, i32 0, i32 33
  store i8* %101, i8** %103, align 8
  %104 = load i8, i8* %5, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 16
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %108, %98
  %112 = load i8, i8* %5, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %113, 32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i8, i8* %5, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 %121, 64
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %124, %119
  %128 = load i8, i8* %5, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %129, 128
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i32, i32* %6, align 4
  %137 = icmp sgt i32 %136, 1
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %140 = load i64, i64* %3, align 8
  %141 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %139, i64 noundef %140)
  %142 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %143 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %142, i32 0, i32 34
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %138, %135
  br label %145

145:                                              ; preds = %144, %93, %85
  %146 = load i8, i8* %5, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 224
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %152 = load i64, i64* %3, align 8
  %153 = call noalias i8* @png_calloc(%struct.png_struct_def* noundef %151, i64 noundef %152)
  %154 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %155 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %154, i32 0, i32 31
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %150, %145
  %157 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %158 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %157, i32 0, i32 44
  %159 = load i8, i8* %158, align 4
  %160 = zext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %211

162:                                              ; preds = %156
  %163 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %164 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, 2
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %199

168:                                              ; preds = %162
  %169 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %170 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %169, i32 0, i32 24
  %171 = load i32, i32* %170, align 8
  %172 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @png_write_start_row.png_pass_yinc, i64 0, i64 0), align 1
  %173 = zext i8 %172 to i32
  %174 = add i32 %171, %173
  %175 = sub i32 %174, 1
  %176 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @png_write_start_row.png_pass_ystart, i64 0, i64 0), align 1
  %177 = zext i8 %176 to i32
  %178 = sub i32 %175, %177
  %179 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @png_write_start_row.png_pass_yinc, i64 0, i64 0), align 1
  %180 = zext i8 %179 to i32
  %181 = udiv i32 %178, %180
  %182 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %183 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %182, i32 0, i32 25
  store i32 %181, i32* %183, align 4
  %184 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %185 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %184, i32 0, i32 23
  %186 = load i32, i32* %185, align 4
  %187 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @png_write_start_row.png_pass_inc, i64 0, i64 0), align 1
  %188 = zext i8 %187 to i32
  %189 = add i32 %186, %188
  %190 = sub i32 %189, 1
  %191 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @png_write_start_row.png_pass_start, i64 0, i64 0), align 1
  %192 = zext i8 %191 to i32
  %193 = sub i32 %190, %192
  %194 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @png_write_start_row.png_pass_inc, i64 0, i64 0), align 1
  %195 = zext i8 %194 to i32
  %196 = udiv i32 %193, %195
  %197 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %198 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %197, i32 0, i32 26
  store i32 %196, i32* %198, align 8
  br label %210

199:                                              ; preds = %162
  %200 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %201 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %200, i32 0, i32 24
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %204 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %203, i32 0, i32 25
  store i32 %202, i32* %204, align 4
  %205 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %206 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %205, i32 0, i32 23
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %209 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %208, i32 0, i32 26
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %199, %168
  br label %222

211:                                              ; preds = %156
  %212 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %213 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %212, i32 0, i32 24
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %216 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %215, i32 0, i32 25
  store i32 %214, i32* %216, align 4
  %217 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %218 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %217, i32 0, i32 23
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %221 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %220, i32 0, i32 26
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %211, %210
  ret void
}

declare noalias i8* @png_calloc(%struct.png_struct_def* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_finish_row(%struct.png_struct_def* noalias noundef %0) #0 {
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
  br label %199

15:                                               ; preds = %1
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 44
  %18 = load i8, i8* %17, align 4
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %197

21:                                               ; preds = %15
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 29
  store i32 0, i32* %23, align 4
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %30, i32 0, i32 45
  %32 = load i8, i8* %31, align 1
  %33 = add i8 %32, 1
  store i8 %33, i8* %31, align 1
  br label %127

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %124, %34
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 45
  %38 = load i8, i8* %37, align 1
  %39 = add i8 %38, 1
  store i8 %39, i8* %37, align 1
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %41 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %40, i32 0, i32 45
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sge i32 %43, 7
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %126

46:                                               ; preds = %35
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %48 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %47, i32 0, i32 23
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %51 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %50, i32 0, i32 45
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds [7 x i8], [7 x i8]* @png_write_finish_row.png_pass_inc, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = add i32 %49, %56
  %58 = sub i32 %57, 1
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %60 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %59, i32 0, i32 45
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds [7 x i8], [7 x i8]* @png_write_finish_row.png_pass_start, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = sub i32 %58, %65
  %67 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %68 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %67, i32 0, i32 45
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds [7 x i8], [7 x i8]* @png_write_finish_row.png_pass_inc, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = udiv i32 %66, %73
  %75 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %76 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %75, i32 0, i32 26
  store i32 %74, i32* %76, align 8
  %77 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %78 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %77, i32 0, i32 24
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %81 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %80, i32 0, i32 45
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [7 x i8], [7 x i8]* @png_write_finish_row.png_pass_yinc, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = add i32 %79, %86
  %88 = sub i32 %87, 1
  %89 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %90 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %89, i32 0, i32 45
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds [7 x i8], [7 x i8]* @png_write_finish_row.png_pass_ystart, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = sub i32 %88, %95
  %97 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %98 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %97, i32 0, i32 45
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds [7 x i8], [7 x i8]* @png_write_finish_row.png_pass_yinc, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = udiv i32 %96, %103
  %105 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %106 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %105, i32 0, i32 25
  store i32 %104, i32* %106, align 4
  %107 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %108 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 2
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %46
  br label %126

113:                                              ; preds = %46
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %116 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %115, i32 0, i32 26
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %121 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %120, i32 0, i32 25
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br label %124

124:                                              ; preds = %119, %114
  %125 = phi i1 [ true, %114 ], [ %123, %119 ]
  br i1 %125, label %35, label %126, !llvm.loop !17

126:                                              ; preds = %124, %112, %45
  br label %127

127:                                              ; preds = %126, %29
  %128 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %129 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %128, i32 0, i32 45
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp slt i32 %131, 7
  br i1 %132, label %133, label %196

133:                                              ; preds = %127
  %134 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %135 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %134, i32 0, i32 31
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %195

138:                                              ; preds = %133
  %139 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %140 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %139, i32 0, i32 31
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %143 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %142, i32 0, i32 52
  %144 = load i8, i8* %143, align 4
  %145 = zext i8 %144 to i32
  %146 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %147 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %146, i32 0, i32 49
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = mul nsw i32 %145, %149
  %151 = icmp sge i32 %150, 8
  br i1 %151, label %152, label %169

152:                                              ; preds = %138
  %153 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %154 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %153, i32 0, i32 23
  %155 = load i32, i32* %154, align 4
  %156 = zext i32 %155 to i64
  %157 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %158 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %157, i32 0, i32 52
  %159 = load i8, i8* %158, align 4
  %160 = zext i8 %159 to i32
  %161 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %162 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %161, i32 0, i32 49
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = mul nsw i32 %160, %164
  %166 = sext i32 %165 to i64
  %167 = lshr i64 %166, 3
  %168 = mul i64 %156, %167
  br label %187

169:                                              ; preds = %138
  %170 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %171 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %170, i32 0, i32 23
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  %174 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %175 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %174, i32 0, i32 52
  %176 = load i8, i8* %175, align 4
  %177 = zext i8 %176 to i32
  %178 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %179 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %178, i32 0, i32 49
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = mul nsw i32 %177, %181
  %183 = sext i32 %182 to i64
  %184 = mul i64 %173, %183
  %185 = add i64 %184, 7
  %186 = lshr i64 %185, 3
  br label %187

187:                                              ; preds = %169, %152
  %188 = phi i64 [ %168, %152 ], [ %186, %169 ]
  %189 = add i64 %188, 1
  %190 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %191 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %190, i32 0, i32 31
  %192 = load i8*, i8** %191, align 8
  %193 = call i64 @llvm.objectsize.i64.p0i8(i8* %192, i1 false, i1 true, i1 false)
  %194 = call i8* @__memset_chk(i8* noundef %141, i32 noundef 0, i64 noundef %189, i64 noundef %193) #7
  br label %195

195:                                              ; preds = %187, %133
  br label %199

196:                                              ; preds = %127
  br label %197

197:                                              ; preds = %196, %15
  %198 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_compress_IDAT(%struct.png_struct_def* noundef %198, i8* noundef null, i64 noundef 0, i32 noundef 4)
  br label %199

199:                                              ; preds = %197, %195, %14
  ret void
}

; Function Attrs: nounwind
declare i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_do_write_interlace(%struct.png_row_info_struct* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_row_info_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  store %struct.png_row_info_struct* %0, %struct.png_row_info_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %329

35:                                               ; preds = %3
  %36 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %37 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %36, i32 0, i32 5
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  switch i32 %39, label %222 [
    i32 1, label %40
    i32 2, label %100
    i32 4, label %161
  ]

40:                                               ; preds = %35
  %41 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %42 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %13, align 4
  %44 = load i8*, i8** %5, align 8
  store i8* %44, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 7, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_start, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %84, %40
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %12, align 4
  %57 = lshr i32 %56, 3
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 7
  %65 = sub nsw i32 7, %64
  %66 = ashr i32 %62, %65
  %67 = and i32 %66, 1
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %54
  store i32 7, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %8, align 8
  store i8 %77, i8* %78, align 1
  store i32 0, i32* %10, align 4
  br label %83

80:                                               ; preds = %54
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %81, -1
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_inc, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load i32, i32* %12, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %12, align 4
  br label %50, !llvm.loop !18

92:                                               ; preds = %50
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 7
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %8, align 8
  store i8 %97, i8* %98, align 1
  br label %99

99:                                               ; preds = %95, %92
  br label %272

100:                                              ; preds = %35
  %101 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %102 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %20, align 4
  %104 = load i8*, i8** %5, align 8
  store i8* %104, i8** %15, align 8
  store i32 6, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_start, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %145, %100
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %20, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %153

114:                                              ; preds = %110
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* %19, align 4
  %117 = lshr i32 %116, 2
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  store i8* %119, i8** %14, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = load i32, i32* %19, align 4
  %124 = and i32 %123, 3
  %125 = sub nsw i32 3, %124
  %126 = shl i32 %125, 1
  %127 = ashr i32 %122, %126
  %128 = and i32 %127, 3
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %16, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* %17, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %114
  store i32 6, i32* %16, align 4
  %137 = load i32, i32* %17, align 4
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %15, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %15, align 8
  store i8 %138, i8* %139, align 1
  store i32 0, i32* %17, align 4
  br label %144

141:                                              ; preds = %114
  %142 = load i32, i32* %16, align 4
  %143 = sub i32 %142, 2
  store i32 %143, i32* %16, align 4
  br label %144

144:                                              ; preds = %141, %136
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_inc, i64 0, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = load i32, i32* %19, align 4
  %152 = add i32 %151, %150
  store i32 %152, i32* %19, align 4
  br label %110, !llvm.loop !19

153:                                              ; preds = %110
  %154 = load i32, i32* %16, align 4
  %155 = icmp ne i32 %154, 6
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* %17, align 4
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %15, align 8
  store i8 %158, i8* %159, align 1
  br label %160

160:                                              ; preds = %156, %153
  br label %272

161:                                              ; preds = %35
  %162 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %163 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %27, align 4
  %165 = load i8*, i8** %5, align 8
  store i8* %165, i8** %22, align 8
  store i32 4, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_start, i64 0, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  store i32 %170, i32* %26, align 4
  br label %171

171:                                              ; preds = %206, %161
  %172 = load i32, i32* %26, align 4
  %173 = load i32, i32* %27, align 4
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %175, label %214

175:                                              ; preds = %171
  %176 = load i8*, i8** %5, align 8
  %177 = load i32, i32* %26, align 4
  %178 = lshr i32 %177, 1
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %176, i64 %179
  store i8* %180, i8** %21, align 8
  %181 = load i8*, i8** %21, align 8
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = load i32, i32* %26, align 4
  %185 = and i32 %184, 1
  %186 = sub nsw i32 1, %185
  %187 = shl i32 %186, 2
  %188 = ashr i32 %183, %187
  %189 = and i32 %188, 15
  store i32 %189, i32* %25, align 4
  %190 = load i32, i32* %25, align 4
  %191 = load i32, i32* %23, align 4
  %192 = shl i32 %190, %191
  %193 = load i32, i32* %24, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %24, align 4
  %195 = load i32, i32* %23, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %175
  store i32 4, i32* %23, align 4
  %198 = load i32, i32* %24, align 4
  %199 = trunc i32 %198 to i8
  %200 = load i8*, i8** %22, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %22, align 8
  store i8 %199, i8* %200, align 1
  store i32 0, i32* %24, align 4
  br label %205

202:                                              ; preds = %175
  %203 = load i32, i32* %23, align 4
  %204 = sub i32 %203, 4
  store i32 %204, i32* %23, align 4
  br label %205

205:                                              ; preds = %202, %197
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_inc, i64 0, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = load i32, i32* %26, align 4
  %213 = add i32 %212, %211
  store i32 %213, i32* %26, align 4
  br label %171, !llvm.loop !20

214:                                              ; preds = %171
  %215 = load i32, i32* %23, align 4
  %216 = icmp ne i32 %215, 4
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load i32, i32* %24, align 4
  %219 = trunc i32 %218 to i8
  %220 = load i8*, i8** %22, align 8
  store i8 %219, i8* %220, align 1
  br label %221

221:                                              ; preds = %217, %214
  br label %272

222:                                              ; preds = %35
  %223 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %224 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  store i32 %225, i32* %31, align 4
  %226 = load i8*, i8** %5, align 8
  store i8* %226, i8** %29, align 8
  %227 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %228 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %227, i32 0, i32 5
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = ashr i32 %230, 3
  %232 = sext i32 %231 to i64
  store i64 %232, i64* %32, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_start, i64 0, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  store i32 %237, i32* %30, align 4
  br label %238

238:                                              ; preds = %263, %222
  %239 = load i32, i32* %30, align 4
  %240 = load i32, i32* %31, align 4
  %241 = icmp ult i32 %239, %240
  br i1 %241, label %242, label %271

242:                                              ; preds = %238
  %243 = load i8*, i8** %5, align 8
  %244 = load i32, i32* %30, align 4
  %245 = zext i32 %244 to i64
  %246 = load i64, i64* %32, align 8
  %247 = mul i64 %245, %246
  %248 = getelementptr inbounds i8, i8* %243, i64 %247
  store i8* %248, i8** %28, align 8
  %249 = load i8*, i8** %29, align 8
  %250 = load i8*, i8** %28, align 8
  %251 = icmp ne i8* %249, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %242
  %253 = load i8*, i8** %29, align 8
  %254 = load i8*, i8** %28, align 8
  %255 = load i64, i64* %32, align 8
  %256 = load i8*, i8** %29, align 8
  %257 = call i64 @llvm.objectsize.i64.p0i8(i8* %256, i1 false, i1 true, i1 false)
  %258 = call i8* @__memcpy_chk(i8* noundef %253, i8* noundef %254, i64 noundef %255, i64 noundef %257) #7
  br label %259

259:                                              ; preds = %252, %242
  %260 = load i64, i64* %32, align 8
  %261 = load i8*, i8** %29, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 %260
  store i8* %262, i8** %29, align 8
  br label %263

263:                                              ; preds = %259
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_inc, i64 0, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = load i32, i32* %30, align 4
  %270 = add i32 %269, %268
  store i32 %270, i32* %30, align 4
  br label %238, !llvm.loop !21

271:                                              ; preds = %238
  br label %272

272:                                              ; preds = %271, %221, %160, %99
  %273 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %274 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_inc, i64 0, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = add i32 %275, %280
  %282 = sub i32 %281, 1
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_start, i64 0, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = sub i32 %282, %287
  %289 = load i32, i32* %6, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_inc, i64 0, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = udiv i32 %288, %293
  %295 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %296 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 8
  %297 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %298 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %297, i32 0, i32 5
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i32
  %301 = icmp sge i32 %300, 8
  br i1 %301, label %302, label %313

302:                                              ; preds = %272
  %303 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %304 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = zext i32 %305 to i64
  %307 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %308 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %307, i32 0, i32 5
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i64
  %311 = lshr i64 %310, 3
  %312 = mul i64 %306, %311
  br label %325

313:                                              ; preds = %272
  %314 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %315 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = zext i32 %316 to i64
  %318 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %319 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %318, i32 0, i32 5
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i64
  %322 = mul i64 %317, %321
  %323 = add i64 %322, 7
  %324 = lshr i64 %323, 3
  br label %325

325:                                              ; preds = %313, %302
  %326 = phi i64 [ %312, %302 ], [ %324, %313 ]
  %327 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %328 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %327, i32 0, i32 1
  store i64 %326, i64* %328, align 8
  br label %329

329:                                              ; preds = %325, %3
  ret void
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_find_filter(%struct.png_struct_def* noalias noundef %0, %struct.png_row_info_struct* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_row_info_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_row_info_struct* %1, %struct.png_row_info_struct** %4, align 8
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %24 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %23, i32 0, i32 46
  %25 = load i8, i8* %24, align 2
  store i8 %25, i8* %5, align 1
  %26 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %27 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %30 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %29, i32 0, i32 5
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %32, 7
  %34 = ashr i32 %33, 3
  store i32 %34, i32* %8, align 4
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %36 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %35, i32 0, i32 32
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %6, align 8
  store i64 -257, i64* %9, align 8
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %39 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %38, i32 0, i32 32
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %7, align 8
  %41 = load i8, i8* %5, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %116

45:                                               ; preds = %2
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 8
  br i1 %48, label %49, label %116

49:                                               ; preds = %45
  store i64 0, i64* %12, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ule i64 144115188075855871, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %49
  store i64 0, i64* %13, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %79, %52
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %55
  %60 = load i64, i64* %12, align 8
  %61 = icmp ugt i64 %60, 144115188075855615
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %84

63:                                               ; preds = %59
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 128
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %14, align 4
  br label %74

71:                                               ; preds = %63
  %72 = load i32, i32* %14, align 4
  %73 = sub nsw i32 256, %72
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi i32 [ %70, %69 ], [ %73, %71 ]
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %12, align 8
  br label %79

79:                                               ; preds = %74
  %80 = load i64, i64* %13, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %13, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %11, align 8
  br label %55, !llvm.loop !22

84:                                               ; preds = %62, %55
  br label %114

85:                                               ; preds = %49
  store i64 0, i64* %13, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8* %87, i8** %11, align 8
  br label %88

88:                                               ; preds = %108, %85
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %88
  %93 = load i8*, i8** %11, align 8
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 128
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %14, align 4
  br label %103

100:                                              ; preds = %92
  %101 = load i32, i32* %14, align 4
  %102 = sub nsw i32 256, %101
  br label %103

103:                                              ; preds = %100, %98
  %104 = phi i32 [ %99, %98 ], [ %102, %100 ]
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %12, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %12, align 8
  br label %108

108:                                              ; preds = %103
  %109 = load i64, i64* %13, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %13, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %11, align 8
  br label %88, !llvm.loop !23

113:                                              ; preds = %88
  br label %114

114:                                              ; preds = %113, %84
  %115 = load i64, i64* %12, align 8
  store i64 %115, i64* %9, align 8
  br label %116

116:                                              ; preds = %114, %45, %2
  %117 = load i8, i8* %5, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 16
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i64 @png_setup_sub_row(%struct.png_struct_def* noundef %121, i32 noundef %122, i64 noundef %123, i64 noundef %124)
  %126 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %127 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %126, i32 0, i32 33
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %7, align 8
  br label %165

129:                                              ; preds = %116
  %130 = load i8, i8* %5, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 16
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %164

134:                                              ; preds = %129
  %135 = load i64, i64* %9, align 8
  store i64 %135, i64* %16, align 8
  %136 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* %16, align 8
  %140 = call i64 @png_setup_sub_row(%struct.png_struct_def* noundef %136, i32 noundef %137, i64 noundef %138, i64 noundef %139)
  store i64 %140, i64* %15, align 8
  %141 = load i64, i64* %15, align 8
  %142 = load i64, i64* %9, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %134
  %145 = load i64, i64* %15, align 8
  store i64 %145, i64* %9, align 8
  %146 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %147 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %146, i32 0, i32 33
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %7, align 8
  %149 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %150 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %149, i32 0, i32 34
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %144
  %154 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %155 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %154, i32 0, i32 34
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %158 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %157, i32 0, i32 33
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %161 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %160, i32 0, i32 34
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %153, %144
  br label %163

163:                                              ; preds = %162, %134
  br label %164

164:                                              ; preds = %163, %129
  br label %165

165:                                              ; preds = %164, %120
  %166 = load i8, i8* %5, align 1
  %167 = zext i8 %166 to i32
  %168 = icmp eq i32 %167, 32
  br i1 %168, label %169, label %177

169:                                              ; preds = %165
  %170 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %171 = load i64, i64* %10, align 8
  %172 = load i64, i64* %9, align 8
  %173 = call i64 @png_setup_up_row(%struct.png_struct_def* noundef %170, i64 noundef %171, i64 noundef %172)
  %174 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %175 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %174, i32 0, i32 33
  %176 = load i8*, i8** %175, align 8
  store i8* %176, i8** %7, align 8
  br label %212

177:                                              ; preds = %165
  %178 = load i8, i8* %5, align 1
  %179 = zext i8 %178 to i32
  %180 = and i32 %179, 32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %211

182:                                              ; preds = %177
  %183 = load i64, i64* %9, align 8
  store i64 %183, i64* %18, align 8
  %184 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %185 = load i64, i64* %10, align 8
  %186 = load i64, i64* %18, align 8
  %187 = call i64 @png_setup_up_row(%struct.png_struct_def* noundef %184, i64 noundef %185, i64 noundef %186)
  store i64 %187, i64* %17, align 8
  %188 = load i64, i64* %17, align 8
  %189 = load i64, i64* %9, align 8
  %190 = icmp ult i64 %188, %189
  br i1 %190, label %191, label %210

191:                                              ; preds = %182
  %192 = load i64, i64* %17, align 8
  store i64 %192, i64* %9, align 8
  %193 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %194 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %193, i32 0, i32 33
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %7, align 8
  %196 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %197 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %196, i32 0, i32 34
  %198 = load i8*, i8** %197, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %209

200:                                              ; preds = %191
  %201 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %202 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %201, i32 0, i32 34
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %205 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %204, i32 0, i32 33
  store i8* %203, i8** %205, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %208 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %207, i32 0, i32 34
  store i8* %206, i8** %208, align 8
  br label %209

209:                                              ; preds = %200, %191
  br label %210

210:                                              ; preds = %209, %182
  br label %211

211:                                              ; preds = %210, %177
  br label %212

212:                                              ; preds = %211, %169
  %213 = load i8, i8* %5, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp eq i32 %214, 64
  br i1 %215, label %216, label %225

216:                                              ; preds = %212
  %217 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %218 = load i32, i32* %8, align 4
  %219 = load i64, i64* %10, align 8
  %220 = load i64, i64* %9, align 8
  %221 = call i64 @png_setup_avg_row(%struct.png_struct_def* noundef %217, i32 noundef %218, i64 noundef %219, i64 noundef %220)
  %222 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %223 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %222, i32 0, i32 33
  %224 = load i8*, i8** %223, align 8
  store i8* %224, i8** %7, align 8
  br label %261

225:                                              ; preds = %212
  %226 = load i8, i8* %5, align 1
  %227 = zext i8 %226 to i32
  %228 = and i32 %227, 64
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %260

230:                                              ; preds = %225
  %231 = load i64, i64* %9, align 8
  store i64 %231, i64* %20, align 8
  %232 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %233 = load i32, i32* %8, align 4
  %234 = load i64, i64* %10, align 8
  %235 = load i64, i64* %20, align 8
  %236 = call i64 @png_setup_avg_row(%struct.png_struct_def* noundef %232, i32 noundef %233, i64 noundef %234, i64 noundef %235)
  store i64 %236, i64* %19, align 8
  %237 = load i64, i64* %19, align 8
  %238 = load i64, i64* %9, align 8
  %239 = icmp ult i64 %237, %238
  br i1 %239, label %240, label %259

240:                                              ; preds = %230
  %241 = load i64, i64* %19, align 8
  store i64 %241, i64* %9, align 8
  %242 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %243 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %242, i32 0, i32 33
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** %7, align 8
  %245 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %246 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %245, i32 0, i32 34
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %258

249:                                              ; preds = %240
  %250 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %251 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %250, i32 0, i32 34
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %254 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %253, i32 0, i32 33
  store i8* %252, i8** %254, align 8
  %255 = load i8*, i8** %7, align 8
  %256 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %257 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %256, i32 0, i32 34
  store i8* %255, i8** %257, align 8
  br label %258

258:                                              ; preds = %249, %240
  br label %259

259:                                              ; preds = %258, %230
  br label %260

260:                                              ; preds = %259, %225
  br label %261

261:                                              ; preds = %260, %216
  %262 = load i8, i8* %5, align 1
  %263 = zext i8 %262 to i32
  %264 = icmp eq i32 %263, 128
  %265 = zext i1 %264 to i32
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %261
  %268 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %269 = load i32, i32* %8, align 4
  %270 = load i64, i64* %10, align 8
  %271 = load i64, i64* %9, align 8
  %272 = call i64 @png_setup_paeth_row(%struct.png_struct_def* noundef %268, i32 noundef %269, i64 noundef %270, i64 noundef %271)
  %273 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %274 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %273, i32 0, i32 33
  %275 = load i8*, i8** %274, align 8
  store i8* %275, i8** %7, align 8
  br label %311

276:                                              ; preds = %261
  %277 = load i8, i8* %5, align 1
  %278 = zext i8 %277 to i32
  %279 = and i32 %278, 128
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %310

281:                                              ; preds = %276
  %282 = load i64, i64* %9, align 8
  store i64 %282, i64* %22, align 8
  %283 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %284 = load i32, i32* %8, align 4
  %285 = load i64, i64* %10, align 8
  %286 = load i64, i64* %22, align 8
  %287 = call i64 @png_setup_paeth_row(%struct.png_struct_def* noundef %283, i32 noundef %284, i64 noundef %285, i64 noundef %286)
  store i64 %287, i64* %21, align 8
  %288 = load i64, i64* %21, align 8
  %289 = load i64, i64* %9, align 8
  %290 = icmp ult i64 %288, %289
  br i1 %290, label %291, label %309

291:                                              ; preds = %281
  %292 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %293 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %292, i32 0, i32 33
  %294 = load i8*, i8** %293, align 8
  store i8* %294, i8** %7, align 8
  %295 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %296 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %295, i32 0, i32 34
  %297 = load i8*, i8** %296, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %308

299:                                              ; preds = %291
  %300 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %301 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %300, i32 0, i32 34
  %302 = load i8*, i8** %301, align 8
  %303 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %304 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %303, i32 0, i32 33
  store i8* %302, i8** %304, align 8
  %305 = load i8*, i8** %7, align 8
  %306 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %307 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %306, i32 0, i32 34
  store i8* %305, i8** %307, align 8
  br label %308

308:                                              ; preds = %299, %291
  br label %309

309:                                              ; preds = %308, %281
  br label %310

310:                                              ; preds = %309, %276
  br label %311

311:                                              ; preds = %310, %267
  %312 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %313 = load i8*, i8** %7, align 8
  %314 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %315 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = add i64 %316, 1
  call void @png_write_filtered_row(%struct.png_struct_def* noundef %312, i8* noundef %313, i64 noundef %317)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @png_setup_sub_row(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %13, align 8
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %15, i32 0, i32 33
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 1, i8* %18, align 1
  store i64 0, i64* %12, align 8
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %19, i32 0, i32 32
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %9, align 8
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %24 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %23, i32 0, i32 33
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %49, %4
  %28 = load i64, i64* %12, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %10, align 8
  store i8 %34, i8* %35, align 1
  %36 = zext i8 %34 to i32
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 128
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  br label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %14, align 4
  %43 = sub nsw i32 256, %42
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ %43, %41 ]
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %13, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %12, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %10, align 8
  br label %27, !llvm.loop !24

56:                                               ; preds = %27
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %58 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %57, i32 0, i32 32
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8* %60, i8** %11, align 8
  br label %61

61:                                               ; preds = %94, %56
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %61
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8*, i8** %11, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = sub nsw i32 %68, %71
  %73 = and i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %10, align 8
  store i8 %74, i8* %75, align 1
  %76 = zext i8 %74 to i32
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 128
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32, i32* %14, align 4
  br label %84

81:                                               ; preds = %65
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 256, %82
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi i32 [ %80, %79 ], [ %83, %81 ]
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %13, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %103

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %12, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %11, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %10, align 8
  br label %61, !llvm.loop !25

103:                                              ; preds = %92, %61
  %104 = load i64, i64* %13, align 8
  ret i64 %104
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @png_setup_up_row(%struct.png_struct_def* noalias noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 33
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 2, i8* %16, align 1
  store i64 0, i64* %10, align 8
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 32
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %7, align 8
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %21, i32 0, i32 33
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %8, align 8
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %25, i32 0, i32 31
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %62, %3
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = sub nsw i32 %36, %39
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %8, align 8
  store i8 %42, i8* %43, align 1
  %44 = zext i8 %42 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 128
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %12, align 4
  br label %52

49:                                               ; preds = %33
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 256, %50
  br label %52

52:                                               ; preds = %49, %47
  %53 = phi i32 [ %48, %47 ], [ %51, %49 ]
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %71

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %10, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %9, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %8, align 8
  br label %29, !llvm.loop !26

71:                                               ; preds = %60, %29
  %72 = load i64, i64* %11, align 8
  ret i64 %72
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @png_setup_avg_row(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %14, align 8
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 33
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 3, i8* %19, align 1
  store i32 0, i32* %13, align 4
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 32
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %9, align 8
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 33
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %10, align 8
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 31
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %11, align 8
  br label %32

32:                                               ; preds = %64, %4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %11, align 8
  %43 = load i8, i8* %41, align 1
  %44 = zext i8 %43 to i32
  %45 = sdiv i32 %44, 2
  %46 = sub nsw i32 %40, %45
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %10, align 8
  store i8 %48, i8* %49, align 1
  %51 = zext i8 %48 to i32
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 128
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load i32, i32* %15, align 4
  br label %59

56:                                               ; preds = %36
  %57 = load i32, i32* %15, align 4
  %58 = sub nsw i32 256, %57
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i32 [ %55, %54 ], [ %58, %56 ]
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %14, align 8
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %13, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %32, !llvm.loop !27

67:                                               ; preds = %32
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %69 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %68, i32 0, i32 32
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8* %71, i8** %12, align 8
  br label %72

72:                                               ; preds = %115, %67
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* %7, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %118

77:                                               ; preds = %72
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %11, align 8
  %84 = load i8, i8* %82, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8*, i8** %12, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %12, align 8
  %88 = load i8, i8* %86, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %85, %89
  %91 = sdiv i32 %90, 2
  %92 = sub nsw i32 %81, %91
  %93 = and i32 %92, 255
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %10, align 8
  store i8 %94, i8* %95, align 1
  %97 = zext i8 %94 to i32
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 128
  br i1 %99, label %100, label %102

100:                                              ; preds = %77
  %101 = load i32, i32* %15, align 4
  br label %105

102:                                              ; preds = %77
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 256, %103
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi i32 [ %101, %100 ], [ %104, %102 ]
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %14, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %8, align 8
  %112 = icmp ugt i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %118

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %13, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %72, !llvm.loop !28

118:                                              ; preds = %113, %72
  %119 = load i64, i64* %14, align 8
  ret i64 %119
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @png_setup_paeth_row(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %15, align 8
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 33
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 4, i8* %27, align 1
  store i64 0, i64* %14, align 8
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 32
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %9, align 8
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %33 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %32, i32 0, i32 33
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %10, align 8
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 31
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %72, %4
  %41 = load i64, i64* %14, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  %48 = load i8, i8* %46, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %11, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %49, %53
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %10, align 8
  store i8 %56, i8* %57, align 1
  %59 = zext i8 %56 to i32
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 128
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i32, i32* %16, align 4
  br label %67

64:                                               ; preds = %45
  %65 = load i32, i32* %16, align 4
  %66 = sub nsw i32 256, %65
  br label %67

67:                                               ; preds = %64, %62
  %68 = phi i32 [ %63, %62 ], [ %66, %64 ]
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %15, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %15, align 8
  br label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %14, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %14, align 8
  br label %40, !llvm.loop !29

75:                                               ; preds = %40
  %76 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %77 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %76, i32 0, i32 32
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8* %79, i8** %13, align 8
  %80 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %81 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %80, i32 0, i32 31
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %12, align 8
  br label %84

84:                                               ; preds = %189, %75
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %192

88:                                               ; preds = %84
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %11, align 8
  %91 = load i8, i8* %89, align 1
  %92 = zext i8 %91 to i32
  store i32 %92, i32* %18, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %12, align 8
  %95 = load i8, i8* %93, align 1
  %96 = zext i8 %95 to i32
  store i32 %96, i32* %19, align 4
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %13, align 8
  %99 = load i8, i8* %97, align 1
  %100 = zext i8 %99 to i32
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %19, align 4
  %103 = sub nsw i32 %101, %102
  store i32 %103, i32* %23, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %19, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* %23, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %88
  %110 = load i32, i32* %23, align 4
  %111 = sub nsw i32 0, %110
  br label %114

112:                                              ; preds = %88
  %113 = load i32, i32* %23, align 4
  br label %114

114:                                              ; preds = %112, %109
  %115 = phi i32 [ %111, %109 ], [ %113, %112 ]
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %22, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %22, align 4
  %120 = sub nsw i32 0, %119
  br label %123

121:                                              ; preds = %114
  %122 = load i32, i32* %22, align 4
  br label %123

123:                                              ; preds = %121, %118
  %124 = phi i32 [ %120, %118 ], [ %122, %121 ]
  store i32 %124, i32* %21, align 4
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %22, align 4
  %127 = add nsw i32 %125, %126
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load i32, i32* %23, align 4
  %131 = load i32, i32* %22, align 4
  %132 = add nsw i32 %130, %131
  %133 = sub nsw i32 0, %132
  br label %138

134:                                              ; preds = %123
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* %22, align 4
  %137 = add nsw i32 %135, %136
  br label %138

138:                                              ; preds = %134, %129
  %139 = phi i32 [ %133, %129 ], [ %137, %134 ]
  store i32 %139, i32* %22, align 4
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %21, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %22, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* %17, align 4
  br label %159

149:                                              ; preds = %143, %138
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %22, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i32, i32* %18, align 4
  br label %157

155:                                              ; preds = %149
  %156 = load i32, i32* %19, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  br label %159

159:                                              ; preds = %157, %147
  %160 = phi i32 [ %148, %147 ], [ %158, %157 ]
  store i32 %160, i32* %23, align 4
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %9, align 8
  %163 = load i8, i8* %161, align 1
  %164 = zext i8 %163 to i32
  %165 = load i32, i32* %23, align 4
  %166 = sub nsw i32 %164, %165
  %167 = and i32 %166, 255
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %10, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %10, align 8
  store i8 %168, i8* %169, align 1
  %171 = zext i8 %168 to i32
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %16, align 4
  %173 = icmp slt i32 %172, 128
  br i1 %173, label %174, label %176

174:                                              ; preds = %159
  %175 = load i32, i32* %16, align 4
  br label %179

176:                                              ; preds = %159
  %177 = load i32, i32* %16, align 4
  %178 = sub nsw i32 256, %177
  br label %179

179:                                              ; preds = %176, %174
  %180 = phi i32 [ %175, %174 ], [ %178, %176 ]
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %15, align 8
  %183 = add i64 %182, %181
  store i64 %183, i64* %15, align 8
  %184 = load i64, i64* %15, align 8
  %185 = load i64, i64* %8, align 8
  %186 = icmp ugt i64 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %192

188:                                              ; preds = %179
  br label %189

189:                                              ; preds = %188
  %190 = load i64, i64* %14, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %14, align 8
  br label %84, !llvm.loop !30

192:                                              ; preds = %187, %84
  %193 = load i64, i64* %15, align 8
  ret i64 %193
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_write_filtered_row(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @png_compress_IDAT(%struct.png_struct_def* noundef %8, i8* noundef %9, i64 noundef %10, i32 noundef 0)
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 31
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 31
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %19, i32 0, i32 32
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 31
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %25, i32 0, i32 32
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %15, %3
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_write_finish_row(%struct.png_struct_def* noundef %28)
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %30 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %29, i32 0, i32 61
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %34 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %33, i32 0, i32 60
  %35 = load i32, i32* %34, align 8
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %39 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %38, i32 0, i32 61
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %42 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %41, i32 0, i32 60
  %43 = load i32, i32* %42, align 8
  %44 = icmp uge i32 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_write_flush(%struct.png_struct_def* noundef %46)
  br label %47

47:                                               ; preds = %45, %37, %27
  ret void
}

declare void @png_reset_crc(%struct.png_struct_def* noundef) #2

declare i64 @png_safecat(i8* noundef, i64 noundef, i64 noundef, i8* noundef) #2

declare i32 @deflateEnd(%struct.z_stream_s* noundef) #2

declare i32 @deflateReset(%struct.z_stream_s* noundef) #2

declare i32 @deflateInit2_(%struct.z_stream_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #2

declare void @png_write_flush(%struct.png_struct_def* noundef) #2

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
