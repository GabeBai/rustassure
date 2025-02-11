; ModuleID = 'png.c'
source_filename = "png.c"
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
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Too many bytes for PNG signature\00", align 1
@__const.png_sig_cmp.png_signature = private unnamed_addr constant [8 x i8] c"\89PNG\0D\0A\1A\0A", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Potential overflow in png_zalloc()\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"1.6.21\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Application built with libpng-\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c" but running with \00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Unknown freer parameter in png_data_freer\00", align 1
@.str.6 = private unnamed_addr constant [201 x i8] c"\0Alibpng version 1.6.21 - January 15, 2016\0ACopyright (c) 1998-2002,2004,2006-2016 Glenn Randers-Pehrson\0ACopyright (c) 1996-1997 Andreas Dilger\0ACopyright (c) 1995-1996 Guy Eric Schalnat, Group 42, Inc.\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c" libpng version 1.6.21 - January 15, 2016\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"unexpected zlib return code\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"unexpected end of LZ stream\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"missing LZ dictionary\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"zlib IO error\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"bad parameters to zlib\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"damaged LZ stream\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"insufficient memory\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"unsupported zlib version\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"unexpected zlib return\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Image width is zero in IHDR\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Invalid image width in IHDR\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"Image width is too large for this architecture\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Image width exceeds user limit in IHDR\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Image height is zero in IHDR\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Invalid image height in IHDR\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Image height exceeds user limit in IHDR\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Invalid bit depth in IHDR\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Invalid color type in IHDR\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"Invalid color type/bit depth combination in IHDR\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"Unknown interlace method in IHDR\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Unknown compression method in IHDR\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Unknown filter method in IHDR\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Invalid IHDR data\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_sig_bytes(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %8 = icmp eq %struct.png_struct_def* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %24

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %5, align 4
  %16 = icmp ugt i32 %15, 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_error(%struct.png_struct_def* noundef %18, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = trunc i32 %20 to i8
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 53
  store i8 %21, i8* %23, align 1
  br label %24

24:                                               ; preds = %19, %9
  ret void
}

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_sig_cmp(i8* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [8 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = bitcast [8 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.png_sig_cmp.png_signature, i32 0, i32 0), i64 8, i1 false)
  %10 = load i64, i64* %7, align 8
  %11 = icmp ugt i64 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i64 8, i64* %7, align 8
  br label %18

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %38

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i64, i64* %6, align 8
  %20 = icmp ugt i64 %19, 7
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %38

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %23, %24
  %26 = icmp ugt i64 %25, 8
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 8, %28
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %34
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @memcmp(i8* noundef %33, i8* noundef %35, i64 noundef %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %21, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define noalias i8* @png_zalloc(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %33

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = udiv i64 -1, %18
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.png_struct_def*
  call void @png_warning(%struct.png_struct_def* noundef %23, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %33

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* %8, align 8
  %28 = mul i64 %27, %26
  store i64 %28, i64* %8, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = bitcast i8* %29 to %struct.png_struct_def*
  %31 = load i64, i64* %8, align 8
  %32 = call noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef %30, i64 noundef %31)
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %24, %21, %13
  %34 = load i8*, i8** %4, align 8
  ret i8* %34
}

declare void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #3

declare noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_zfree(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.png_struct_def*
  %7 = load i8*, i8** %4, align 8
  call void @png_free(%struct.png_struct_def* noundef %6, i8* noundef %7)
  ret void
}

declare void @png_free(%struct.png_struct_def* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_reset_crc(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = call i64 @crc32(i64 noundef 0, i8* noundef null, i32 noundef 0)
  %4 = trunc i64 %3 to i32
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 37
  store i32 %4, i32* %6, align 4
  ret void
}

declare i64 @crc32(i64 noundef, i8* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_calculate_crc(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 30
  %12 = load i32, i32* %11, align 8
  %13 = lshr i32 %12, 29
  %14 = and i32 1, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 768
  %21 = icmp eq i32 %20, 768
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %16
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 2048
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %24
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %32
  %36 = load i64, i64* %6, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %40 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %39, i32 0, i32 37
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %62, %38
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 -1, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i64, i64* %8, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @crc32(i64 noundef %50, i8* noundef %51, i32 noundef %52)
  store i64 %53, i64* %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %6, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %49
  %63 = load i64, i64* %6, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %43, label %65, !llvm.loop !10

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %69 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %68, i32 0, i32 37
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %35, %32
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_user_version_check(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [128 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %66

12:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %63, %12
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [7 x i8], [7 x i8]* @.str.2, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %21, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %13
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %30 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 131072
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %13
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 46
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [7 x i8], [7 x i8]* @.str.2, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %56, %48, %45
  %64 = phi i1 [ false, %48 ], [ false, %45 ], [ %62, %56 ]
  br i1 %64, label %13, label %65, !llvm.loop !12

65:                                               ; preds = %63
  br label %71

66:                                               ; preds = %2
  %67 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %68 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, 131072
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %66, %65
  %72 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %73 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 131072
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %71
  store i64 0, i64* %8, align 8
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @png_safecat(i8* noundef %78, i64 noundef 128, i64 noundef %79, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i64 %80, i64* %8, align 8
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %82 = load i64, i64* %8, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i64 @png_safecat(i8* noundef %81, i64 noundef 128, i64 noundef %82, i8* noundef %83)
  store i64 %84, i64* %8, align 8
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @png_safecat(i8* noundef %85, i64 noundef 128, i64 noundef %86, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i64 %87, i64* %8, align 8
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @png_safecat(i8* noundef %88, i64 noundef 128, i64 noundef %89, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  call void @png_warning(%struct.png_struct_def* noundef %92, i8* noundef %93)
  store i32 0, i32* %3, align 4
  br label %95

94:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %77
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare i64 @png_safecat(i8* noundef, i64 noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define noalias %struct.png_struct_def* @png_create_png_struct(i8* noundef %0, i8* noundef %1, void (%struct.png_struct_def*, i8*)* noundef %2, void (%struct.png_struct_def*, i8*)* noundef %3, i8* noundef %4, i8* (%struct.png_struct_def*, i64)* noundef %5, void (%struct.png_struct_def*, i8*)* noundef %6) #0 {
  %8 = alloca %struct.png_struct_def*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca void (%struct.png_struct_def*, i8*)*, align 8
  %12 = alloca void (%struct.png_struct_def*, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8* (%struct.png_struct_def*, i64)*, align 8
  %15 = alloca void (%struct.png_struct_def*, i8*)*, align 8
  %16 = alloca %struct.png_struct_def, align 8
  %17 = alloca %struct.png_struct_def*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store void (%struct.png_struct_def*, i8*)* %2, void (%struct.png_struct_def*, i8*)** %11, align 8
  store void (%struct.png_struct_def*, i8*)* %3, void (%struct.png_struct_def*, i8*)** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* (%struct.png_struct_def*, i64)* %5, i8* (%struct.png_struct_def*, i64)** %14, align 8
  store void (%struct.png_struct_def*, i8*)* %6, void (%struct.png_struct_def*, i8*)** %15, align 8
  %18 = bitcast %struct.png_struct_def* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 600, i1 false)
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 73
  store i32 1000000, i32* %19, align 4
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 74
  store i32 1000000, i32* %20, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 75
  store i32 1000, i32* %21, align 4
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 76
  store i64 8000000, i64* %22, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i8* (%struct.png_struct_def*, i64)*, i8* (%struct.png_struct_def*, i64)** %14, align 8
  %25 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %15, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %11, align 8
  %28 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %12, align 8
  call void @png_set_error_fn(%struct.png_struct_def* noundef %16, i8* noundef %26, void (%struct.png_struct_def*, i8*)* noundef %27, void (%struct.png_struct_def*, i8*)* noundef %28)
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @png_user_version_check(%struct.png_struct_def* noundef %16, i8* noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %7
  %33 = call noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef %16, i64 noundef 600)
  %34 = bitcast i8* %33 to %struct.png_struct_def*
  store %struct.png_struct_def* %34, %struct.png_struct_def** %17, align 8
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %17, align 8
  %36 = icmp ne %struct.png_struct_def* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 10
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %38, i32 0, i32 8
  store i8* (i8*, i32, i32)* @png_zalloc, i8* (i8*, i32, i32)** %39, align 8
  %40 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 10
  %41 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %40, i32 0, i32 9
  store void (i8*, i8*)* @png_zfree, void (i8*, i8*)** %41, align 8
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %17, align 8
  %43 = bitcast %struct.png_struct_def* %42 to i8*
  %44 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 10
  %45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %44, i32 0, i32 10
  store i8* %43, i8** %45, align 8
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %17, align 8
  %47 = bitcast %struct.png_struct_def* %46 to i8*
  %48 = bitcast %struct.png_struct_def* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 600, i1 false)
  %49 = load %struct.png_struct_def*, %struct.png_struct_def** %17, align 8
  store %struct.png_struct_def* %49, %struct.png_struct_def** %8, align 8
  br label %52

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %7
  store %struct.png_struct_def* null, %struct.png_struct_def** %8, align 8
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %8, align 8
  ret %struct.png_struct_def* %53
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare void @png_set_error_fn(%struct.png_struct_def* noundef, i8* noundef, void (%struct.png_struct_def*, i8*)* noundef, void (%struct.png_struct_def*, i8*)* noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_info_def*, align 8
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.png_info_def* null, %struct.png_info_def** %2, align 8
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %10 = call noalias i8* @png_malloc_base(%struct.png_struct_def* noundef %9, i64 noundef 136)
  %11 = bitcast i8* %10 to %struct.png_info_def*
  store %struct.png_info_def* %11, %struct.png_info_def** %4, align 8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %13 = icmp ne %struct.png_info_def* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %16 = bitcast %struct.png_info_def* %15 to i8*
  %17 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %18 = bitcast %struct.png_info_def* %17 to i8*
  %19 = call i64 @llvm.objectsize.i64.p0i8(i8* %18, i1 false, i1 true, i1 false)
  %20 = call i8* @__memset_chk(i8* noundef %16, i32 noundef 0, i64 noundef 136, i64 noundef %19) #8
  br label %21

21:                                               ; preds = %14, %8
  %22 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  store %struct.png_info_def* %22, %struct.png_info_def** %2, align 8
  br label %23

23:                                               ; preds = %21, %7
  %24 = load %struct.png_info_def*, %struct.png_info_def** %2, align 8
  ret %struct.png_info_def* %24
}

declare noalias i8* @png_malloc_base(%struct.png_struct_def* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_destroy_info_struct(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def** noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def**, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def** %1, %struct.png_info_def*** %4, align 8
  store %struct.png_info_def* null, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %7 = icmp eq %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %31

9:                                                ; preds = %2
  %10 = load %struct.png_info_def**, %struct.png_info_def*** %4, align 8
  %11 = icmp ne %struct.png_info_def** %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load %struct.png_info_def**, %struct.png_info_def*** %4, align 8
  %14 = load %struct.png_info_def*, %struct.png_info_def** %13, align 8
  store %struct.png_info_def* %14, %struct.png_info_def** %5, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %17 = icmp ne %struct.png_info_def* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.png_info_def**, %struct.png_info_def*** %4, align 8
  store %struct.png_info_def* null, %struct.png_info_def** %19, align 8
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %21 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %20, %struct.png_info_def* noundef %21, i32 noundef 32767, i32 noundef -1)
  %22 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %23 = bitcast %struct.png_info_def* %22 to i8*
  %24 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %25 = bitcast %struct.png_info_def* %24 to i8*
  %26 = call i64 @llvm.objectsize.i64.p0i8(i8* %25, i1 false, i1 true, i1 false)
  %27 = call i8* @__memset_chk(i8* noundef %23, i32 noundef 0, i64 noundef 136, i64 noundef %26) #8
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %29 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %30 = bitcast %struct.png_info_def* %29 to i8*
  call void @png_free(%struct.png_struct_def* noundef %28, i8* noundef %30)
  br label %31

31:                                               ; preds = %8, %18, %15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_free_data(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %12 = icmp eq %struct.png_struct_def* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %15 = icmp eq %struct.png_info_def* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  br label %202

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 8192
  %20 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %21 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %20, i32 0, i32 21
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %17
  %26 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %27 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, -17
  store i32 %29, i32* %27, align 8
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %31 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %32 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %31, i32 0, i32 17
  %33 = load i8*, i8** %32, align 8
  call void @png_free(%struct.png_struct_def* noundef %30, i8* noundef %33)
  %34 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %35 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %34, i32 0, i32 17
  store i8* null, i8** %35, align 8
  %36 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %37 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %36, i32 0, i32 6
  store i16 0, i16* %37, align 2
  br label %38

38:                                               ; preds = %25, %17
  %39 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %40 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %39, i32 0, i32 22
  %41 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %40, align 8
  %42 = icmp ne %struct.png_unknown_chunk_t* %41, null
  br i1 %42, label %43, label %102

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 512
  %46 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %47 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %46, i32 0, i32 21
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %102

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %56 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %57 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %56, i32 0, i32 22
  %58 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %58, i64 %60
  %62 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  call void @png_free(%struct.png_struct_def* noundef %55, i8* noundef %63)
  %64 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %65 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %64, i32 0, i32 22
  %66 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %66, i64 %68
  %70 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %69, i32 0, i32 1
  store i8* null, i8** %70, align 8
  br label %101

71:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %88, %71
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %75 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %74, i32 0, i32 23
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %80 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %81 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %80, i32 0, i32 22
  %82 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %82, i64 %84
  %86 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  call void @png_free(%struct.png_struct_def* noundef %79, i8* noundef %87)
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %72, !llvm.loop !13

91:                                               ; preds = %72
  %92 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %93 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %94 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %93, i32 0, i32 22
  %95 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %94, align 8
  %96 = bitcast %struct.png_unknown_chunk_t* %95 to i8*
  call void @png_free(%struct.png_struct_def* noundef %92, i8* noundef %96)
  %97 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %98 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %97, i32 0, i32 22
  store %struct.png_unknown_chunk_t* null, %struct.png_unknown_chunk_t** %98, align 8
  %99 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %100 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %99, i32 0, i32 23
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %91, %54
  br label %102

102:                                              ; preds = %101, %43, %38
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %103, 8
  %105 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %106 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %105, i32 0, i32 21
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %102
  %111 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %112 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %113 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %112, i32 0, i32 20
  %114 = load i16*, i16** %113, align 8
  %115 = bitcast i16* %114 to i8*
  call void @png_free(%struct.png_struct_def* noundef %111, i8* noundef %115)
  %116 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %117 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %116, i32 0, i32 20
  store i16* null, i16** %117, align 8
  %118 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %119 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, -65
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %110, %102
  %123 = load i32, i32* %7, align 4
  %124 = and i32 %123, 4096
  %125 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %126 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %125, i32 0, i32 21
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %122
  %131 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %132 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %133 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %132, i32 0, i32 4
  %134 = load %struct.png_color_struct*, %struct.png_color_struct** %133, align 8
  %135 = bitcast %struct.png_color_struct* %134 to i8*
  call void @png_free(%struct.png_struct_def* noundef %131, i8* noundef %135)
  %136 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %137 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %136, i32 0, i32 4
  store %struct.png_color_struct* null, %struct.png_color_struct** %137, align 8
  %138 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %139 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, -9
  store i32 %141, i32* %139, align 8
  %142 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %143 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %142, i32 0, i32 5
  store i16 0, i16* %143, align 8
  br label %144

144:                                              ; preds = %130, %122
  %145 = load i32, i32* %7, align 4
  %146 = and i32 %145, 64
  %147 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %148 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %147, i32 0, i32 21
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %146, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %189

152:                                              ; preds = %144
  %153 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %154 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %153, i32 0, i32 24
  %155 = load i8**, i8*** %154, align 8
  %156 = icmp ne i8** %155, null
  br i1 %156, label %157, label %184

157:                                              ; preds = %152
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %173, %157
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %161 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ult i32 %159, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %158
  %165 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %166 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %167 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %166, i32 0, i32 24
  %168 = load i8**, i8*** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8*, i8** %171, align 8
  call void @png_free(%struct.png_struct_def* noundef %165, i8* noundef %172)
  br label %173

173:                                              ; preds = %164
  %174 = load i32, i32* %10, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %158, !llvm.loop !14

176:                                              ; preds = %158
  %177 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %178 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %179 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %178, i32 0, i32 24
  %180 = load i8**, i8*** %179, align 8
  %181 = bitcast i8** %180 to i8*
  call void @png_free(%struct.png_struct_def* noundef %177, i8* noundef %181)
  %182 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %183 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %182, i32 0, i32 24
  store i8** null, i8*** %183, align 8
  br label %184

184:                                              ; preds = %176, %152
  %185 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %186 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, -32769
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %184, %144
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, -1
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %7, align 4
  %194 = and i32 %193, -16929
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i32, i32* %7, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %199 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %198, i32 0, i32 21
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %195, %16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_info_init_3(%struct.png_info_def** noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.png_info_def**, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_info_def** %0, %struct.png_info_def*** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.png_info_def**, %struct.png_info_def*** %3, align 8
  %7 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  store %struct.png_info_def* %7, %struct.png_info_def** %5, align 8
  %8 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %9 = icmp eq %struct.png_info_def* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %33

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp ugt i64 136, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.png_info_def**, %struct.png_info_def*** %3, align 8
  store %struct.png_info_def* null, %struct.png_info_def** %15, align 8
  %16 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %17 = bitcast %struct.png_info_def* %16 to i8*
  call void @free(i8* noundef %17)
  %18 = call noalias i8* @png_malloc_base(%struct.png_struct_def* noundef null, i64 noundef 136)
  %19 = bitcast i8* %18 to %struct.png_info_def*
  store %struct.png_info_def* %19, %struct.png_info_def** %5, align 8
  %20 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %21 = icmp eq %struct.png_info_def* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %33

23:                                               ; preds = %14
  %24 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %25 = load %struct.png_info_def**, %struct.png_info_def*** %3, align 8
  store %struct.png_info_def* %24, %struct.png_info_def** %25, align 8
  br label %26

26:                                               ; preds = %23, %11
  %27 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %28 = bitcast %struct.png_info_def* %27 to i8*
  %29 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %30 = bitcast %struct.png_info_def* %29 to i8*
  %31 = call i64 @llvm.objectsize.i64.p0i8(i8* %30, i1 false, i1 true, i1 false)
  %32 = call i8* @__memset_chk(i8* noundef %28, i32 noundef 0, i64 noundef 136, i64 noundef %31) #8
  br label %33

33:                                               ; preds = %26, %22, %10
  ret void
}

declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_data_freer(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %10 = icmp eq %struct.png_struct_def* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %13 = icmp eq %struct.png_info_def* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %4
  br label %37

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %21 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %20, i32 0, i32 21
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %37

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %31 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %30, i32 0, i32 21
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %36

34:                                               ; preds = %24
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %35, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0)) #7
  unreachable

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %14, %36, %18
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @png_get_io_ptr(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %5 = icmp eq %struct.png_struct_def* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 5
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i8*, i8** %2, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_init_io(%struct.png_struct_def* noalias noundef %0, %struct.__sFILE* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.__sFILE*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.__sFILE* %1, %struct.__sFILE** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %13

8:                                                ; preds = %2
  %9 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8
  %10 = bitcast %struct.__sFILE* %9 to i8*
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 5
  store i8* %10, i8** %12, align 8
  br label %13

13:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_save_int_32(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %4, align 4
  call void @png_save_uint_32(i8* noundef %5, i32 noundef %6)
  ret void
}

declare void @png_save_uint_32(i8* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @png_get_copyright(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  ret i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.6, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @png_get_libpng_ver(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = call i8* @png_get_header_ver(%struct.png_struct_def* noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @png_get_header_ver(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @png_get_header_version(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  ret i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_handle_as_unknown(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %9 = icmp eq %struct.png_struct_def* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 69
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %10, %2
  store i32 0, i32* %3, align 4
  br label %48

19:                                               ; preds = %13
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 70
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 69
  %26 = load i32, i32* %25, align 8
  %27 = mul i32 %26, 5
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %23, i64 %28
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %43, %19
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 -5
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @memcmp(i8* noundef %33, i8* noundef %34, i64 noundef 4)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %48

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ugt i8* %44, %45
  br i1 %46, label %30, label %47, !llvm.loop !15

47:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %37, %18
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_chunk_unknown_handling(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [5 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = lshr i32 %6, 24
  %8 = and i32 %7, 255
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %9, i8* %11, align 1
  %12 = load i32, i32* %4, align 4
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 %15, i8* %17, align 1
  %18 = load i32, i32* %4, align 4
  %19 = lshr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 %21, i8* %23, align 1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  store i8 %26, i8* %28, align 1
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 4
  store i8 0, i8* %30, align 1
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %33 = call i32 @png_handle_as_unknown(%struct.png_struct_def* noundef %31, i8* noundef %32)
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_reset_zstream(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %5 = icmp eq %struct.png_struct_def* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 10
  %10 = call i32 @inflateReset(%struct.z_stream_s* noundef %9)
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

declare i32 @inflateReset(%struct.z_stream_s* noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_access_version_number() #0 {
  ret i32 10621
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_zstream_error(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 10
  %7 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i32 0, i32 6
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %54

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %12 [
    i32 0, label %13
    i32 1, label %17
    i32 2, label %21
    i32 -1, label %25
    i32 -2, label %29
    i32 -3, label %33
    i32 -4, label %37
    i32 -5, label %41
    i32 -6, label %45
    i32 -7, label %49
  ]

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %10, %12
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 10
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 6
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8** %16, align 8
  br label %53

17:                                               ; preds = %10
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 10
  %20 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 6
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8** %20, align 8
  br label %53

21:                                               ; preds = %10
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 10
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 6
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8** %24, align 8
  br label %53

25:                                               ; preds = %10
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %27 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %26, i32 0, i32 10
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %27, i32 0, i32 6
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %28, align 8
  br label %53

29:                                               ; preds = %10
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %30, i32 0, i32 10
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %31, i32 0, i32 6
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8** %32, align 8
  br label %53

33:                                               ; preds = %10
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %34, i32 0, i32 10
  %36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %35, i32 0, i32 6
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8** %36, align 8
  br label %53

37:                                               ; preds = %10
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %39 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %38, i32 0, i32 10
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %39, i32 0, i32 6
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8** %40, align 8
  br label %53

41:                                               ; preds = %10
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %42, i32 0, i32 10
  %44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %43, i32 0, i32 6
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %44, align 8
  br label %53

45:                                               ; preds = %10
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %47 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %46, i32 0, i32 10
  %48 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %47, i32 0, i32 6
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8** %48, align 8
  br label %53

49:                                               ; preds = %10
  %50 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %51 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %50, i32 0, i32 10
  %52 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %51, i32 0, i32 6
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8** %52, align 8
  br label %53

53:                                               ; preds = %49, %45, %41, %37, %33, %29, %25, %21, %17, %13
  br label %54

54:                                               ; preds = %53, %2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_check_IHDR(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.png_struct_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %21, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %22

22:                                               ; preds = %20, %8
  %23 = load i32, i32* %10, align 4
  %24 = icmp ugt i32 %23, 2147483647
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %26, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* %10, align 4
  %29 = add i32 %28, 7
  %30 = and i32 %29, -8
  %31 = zext i32 %30 to i64
  %32 = call i32 @png_gt(i64 noundef %31, i64 noundef 2305843009213693944)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %35, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %39 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %38, i32 0, i32 73
  %40 = load i32, i32* %39, align 4
  %41 = icmp ugt i32 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %43, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %48, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %11, align 4
  %51 = icmp ugt i32 %50, 2147483647
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %53, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %57 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %56, i32 0, i32 74
  %58 = load i32, i32* %57, align 8
  %59 = icmp ugt i32 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %61, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 2
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 4
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 8
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 16
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %78, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %79

79:                                               ; preds = %77, %74, %71, %68, %65, %62
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  %87 = icmp eq i32 %86, 5
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %13, align 4
  %90 = icmp sgt i32 %89, 6
  br i1 %90, label %91, label %93

91:                                               ; preds = %88, %85, %82, %79
  %92 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %92, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = icmp sgt i32 %97, 8
  br i1 %98, label %111, label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %13, align 4
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %13, align 4
  %104 = icmp eq i32 %103, 4
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %13, align 4
  %107 = icmp eq i32 %106, 6
  br i1 %107, label %108, label %113

108:                                              ; preds = %105, %102, %99
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %109, 8
  br i1 %110, label %111, label %113

111:                                              ; preds = %108, %96
  %112 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %112, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %113

113:                                              ; preds = %111, %108, %105
  %114 = load i32, i32* %14, align 4
  %115 = icmp sge i32 %114, 2
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %117, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %118

118:                                              ; preds = %116, %113
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %122, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %123

123:                                              ; preds = %121, %118
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_warning(%struct.png_struct_def* noundef %127, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %128

128:                                              ; preds = %126, %123
  %129 = load i32, i32* %17, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_error(%struct.png_struct_def* noundef %132, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0)) #7
  unreachable

133:                                              ; preds = %128
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @png_gt(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ugt i64 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { noreturn }
attributes #8 = { nounwind }

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
