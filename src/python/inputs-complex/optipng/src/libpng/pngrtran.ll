; ModuleID = 'pngrtran.c'
source_filename = "pngrtran.c"
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

@.str = private unnamed_addr constant [41 x i8] c"Can't discard critical data on CRC error\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"NULL row buffer\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Uninitialized row\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_crc_action(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  br label %75

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %34 [
    i32 5, label %12
    i32 3, label %13
    i32 4, label %22
    i32 2, label %31
    i32 1, label %33
    i32 0, label %33
  ]

12:                                               ; preds = %10
  br label %39

13:                                               ; preds = %10
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, -3073
  store i32 %17, i32* %15, align 4
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 1024
  store i32 %21, i32* %19, align 4
  br label %39

22:                                               ; preds = %10
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %24 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, -3073
  store i32 %26, i32* %24, align 4
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %28 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, 3072
  store i32 %30, i32* %28, align 4
  br label %39

31:                                               ; preds = %10
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %32, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %10, %10, %31
  br label %34

34:                                               ; preds = %10, %33
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %36 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, -3073
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %22, %13, %12
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %70 [
    i32 5, label %41
    i32 3, label %42
    i32 4, label %51
    i32 1, label %60
    i32 2, label %69
    i32 0, label %69
  ]

41:                                               ; preds = %39
  br label %75

42:                                               ; preds = %39
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %44 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, -769
  store i32 %46, i32* %44, align 4
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %48 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, 256
  store i32 %50, i32* %48, align 4
  br label %75

51:                                               ; preds = %39
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %53 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, -769
  store i32 %55, i32* %53, align 4
  %56 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %57 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, 768
  store i32 %59, i32* %57, align 4
  br label %75

60:                                               ; preds = %39
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %62 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, -769
  store i32 %64, i32* %62, align 4
  %65 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %66 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, 512
  store i32 %68, i32* %66, align 4
  br label %75

69:                                               ; preds = %39, %39
  br label %70

70:                                               ; preds = %39, %69
  %71 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %72 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, -769
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %9, %70, %60, %51, %42, %41
  ret void
}

declare void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_init_read_transformations(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i32 0, i32 47
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_init_palette_transformations(%struct.png_struct_def* noundef %9)
  br label %12

10:                                               ; preds = %1
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_init_rgb_transformations(%struct.png_struct_def* noundef %11)
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_init_palette_transformations(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 41
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %44, %11
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 41
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %12
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 63
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 255
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %44

30:                                               ; preds = %19
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %32 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %31, i32 0, i32 63
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %42

41:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %47

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %12, !llvm.loop !10

47:                                               ; preds = %41, %12
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %53 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, -8388609
  store i32 %55, i32* %53, align 8
  %56 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %57 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, -8193
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %64 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, -385
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %62, %51
  br label %68

68:                                               ; preds = %67, %48
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_init_rgb_transformations(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 47
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 41
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, -385
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %23, %20
  br label %29

29:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_transform_info(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %6 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %5, i32 0, i32 7
  %7 = load i8, i8* %6, align 4
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 16
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %2
  %12 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %19 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %18, i32 0, i32 12
  store i8 1, i8* %19, align 1
  br label %34

20:                                               ; preds = %11
  %21 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %22 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %21, i32 0, i32 8
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %29 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %28, i32 0, i32 12
  store i8 3, i8* %29, align 1
  br label %33

30:                                               ; preds = %20
  %31 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %32 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %31, i32 0, i32 12
  store i8 1, i8* %32, align 1
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %36 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %35, i32 0, i32 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %43 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %42, i32 0, i32 12
  %44 = load i8, i8* %43, align 1
  %45 = add i8 %44, 1
  store i8 %45, i8* %43, align 1
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %48 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %47, i32 0, i32 12
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %52 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %51, i32 0, i32 7
  %53 = load i8, i8* %52, align 4
  %54 = zext i8 %53 to i32
  %55 = mul nsw i32 %50, %54
  %56 = trunc i32 %55 to i8
  %57 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %58 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %57, i32 0, i32 13
  store i8 %56, i8* %58, align 2
  %59 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %60 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %59, i32 0, i32 13
  %61 = load i8, i8* %60, align 2
  %62 = zext i8 %61 to i32
  %63 = icmp sge i32 %62, 8
  br i1 %63, label %64, label %75

64:                                               ; preds = %46
  %65 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %66 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = zext i32 %67 to i64
  %69 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %70 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %69, i32 0, i32 13
  %71 = load i8, i8* %70, align 2
  %72 = zext i8 %71 to i64
  %73 = lshr i64 %72, 3
  %74 = mul i64 %68, %73
  br label %87

75:                                               ; preds = %46
  %76 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %77 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %78 to i64
  %80 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %81 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %80, i32 0, i32 13
  %82 = load i8, i8* %81, align 2
  %83 = zext i8 %82 to i64
  %84 = mul i64 %79, %83
  %85 = add i64 %84, 7
  %86 = lshr i64 %85, 3
  br label %87

87:                                               ; preds = %75, %64
  %88 = phi i64 [ %74, %64 ], [ %86, %75 ]
  %89 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %90 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %92 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %95 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %94, i32 0, i32 35
  store i64 %93, i64* %95, align 8
  %96 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %97 = icmp ne %struct.png_struct_def* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %87
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_do_read_transformations(%struct.png_struct_def* noalias noundef %0, %struct.png_row_info_struct* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_row_info_struct*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_row_info_struct* %1, %struct.png_row_info_struct** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 32
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_error(%struct.png_struct_def* noundef %10, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #3
  unreachable

11:                                               ; preds = %2
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 16384
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_error(%struct.png_struct_def* noundef %24, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)) #3
  unreachable

25:                                               ; preds = %17, %11
  %26 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %27 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %26, i32 0, i32 2
  %28 = load i8, i8* %27, align 8
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %33 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %32, i32 0, i32 40
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %38 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  call void @png_do_check_palette_indexes(%struct.png_struct_def* noundef %37, %struct.png_row_info_struct* noundef %38)
  br label %39

39:                                               ; preds = %36, %31, %25
  ret void
}

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #2

declare void @png_do_check_palette_indexes(%struct.png_struct_def* noundef, %struct.png_row_info_struct* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
