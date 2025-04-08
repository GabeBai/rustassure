; ModuleID = 'opngreduc.c'
source_filename = "opngreduc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [66 x i8] c"Image reduction requires the presence of all critical information\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"src_bit_depth >= 8\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"opngreduc.c\00", align 1
@__PRETTY_FUNCTION__.opng_reduce_bits = private unnamed_addr constant [66 x i8] c"png_uint_32 opng_reduce_bits(png_structp, png_infop, png_uint_32)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"src_bit_depth == 16\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"src_color_type & 2\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"src_color_type & 4\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"src_sample_size > dest_sample_size\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"trans_alpha != ((void*)0) && num_trans > 0\00", align 1
@__PRETTY_FUNCTION__.opng_reduce_palette = private unnamed_addr constant [69 x i8] c"png_uint_32 opng_reduce_palette(png_structp, png_infop, png_uint_32)\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"last_color_index >= 0\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"last_color_index >= last_trans_index\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Too few colors in PLTE\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"num_palette == last_color_index + 1\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Too many alpha values in tRNS\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"num_trans == last_trans_index + 1\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"bit_depth < 8\00", align 1
@__PRETTY_FUNCTION__.opng_analyze_sample_usage = private unnamed_addr constant [66 x i8] c"void opng_analyze_sample_usage(png_structp, png_infop, png_bytep)\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"num_palette > 0\00", align 1
@__PRETTY_FUNCTION__.opng_realloc_PLTE = private unnamed_addr constant [52 x i8] c"void opng_realloc_PLTE(png_structp, png_infop, int)\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"num_trans > 0\00", align 1
@__PRETTY_FUNCTION__.opng_realloc_tRNS = private unnamed_addr constant [52 x i8] c"void opng_realloc_tRNS(png_structp, png_infop, int)\00", align 1
@__PRETTY_FUNCTION__.opng_reduce_palette_bits = private unnamed_addr constant [74 x i8] c"png_uint_32 opng_reduce_palette_bits(png_structp, png_infop, png_uint_32)\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"src_bit_depth == dest_bit_depth\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"!(color_type & 1)\00", align 1
@__PRETTY_FUNCTION__.opng_reduce_to_palette = private unnamed_addr constant [72 x i8] c"png_uint_32 opng_reduce_to_palette(png_structp, png_infop, png_uint_32)\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"num_palette < 0\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"num_palette > 0 && num_palette <= 256\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"num_trans >= 0 && num_trans <= num_palette\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"index >= 0\00", align 1
@__PRETTY_FUNCTION__.opng_get_alpha_row = private unnamed_addr constant [76 x i8] c"void opng_get_alpha_row(png_row_infop, png_color_16p, png_bytep, png_bytep)\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"bit_depth == 8\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"channels == 3\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"color_type == 0\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"channels == 1\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"channels > 1\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"*num_palette >= 0 && *num_palette <= max_tuples\00", align 1
@__PRETTY_FUNCTION__.opng_insert_palette_entry = private unnamed_addr constant [135 x i8] c"int opng_insert_palette_entry(png_colorp, int *, png_bytep, int *, int, unsigned int, unsigned int, unsigned int, unsigned int, int *)\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"*num_trans >= 0 && *num_trans <= *num_palette\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"low >= 0 && low <= *num_palette\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"low <= *num_trans\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opng_validate_image(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %7 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %8 = call zeroext i8 @png_get_bit_depth(%struct.png_struct_def* noundef %6, %struct.png_info_def* noundef %7)
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %14 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %15 = call zeroext i8 @png_get_color_type(%struct.png_struct_def* noundef %13, %struct.png_info_def* noundef %14)
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %21 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %22 = call i32 @png_get_valid(%struct.png_struct_def* noundef %20, %struct.png_info_def* noundef %21, i32 noundef 8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %33

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %28 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %29 = call i32 @png_get_valid(%struct.png_struct_def* noundef %27, %struct.png_info_def* noundef %28, i32 noundef 32768)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %24, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local zeroext i8 @png_get_bit_depth(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare dso_local zeroext i8 @png_get_color_type(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare dso_local i32 @png_get_valid(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opng_reduce_image(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %11 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %12 = call i32 @opng_validate_image(%struct.png_struct_def* noundef %10, %struct.png_info_def* noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_warning(%struct.png_struct_def* noundef %15, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %68

16:                                               ; preds = %3
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %18 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %19 = call zeroext i8 @png_get_color_type(%struct.png_struct_def* noundef %17, %struct.png_info_def* noundef %18)
  %20 = zext i8 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %22 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @opng_reduce_bits(%struct.png_struct_def* noundef %21, %struct.png_info_def* noundef %22, i32 noundef %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %38

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 642
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %33 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @opng_reduce_palette(%struct.png_struct_def* noundef %32, %struct.png_info_def* noundef %33, i32 noundef %34)
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %31, %27, %16
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, -5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 64
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, -5
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 16
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50, %42
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %60 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @opng_reduce_to_palette(%struct.png_struct_def* noundef %59, %struct.png_info_def* noundef %60, i32 noundef %61)
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %58, %54
  br label %66

66:                                               ; preds = %65, %50, %46
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %14
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opng_reduce_bits(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [8 x i32], align 16
  %27 = alloca %struct.png_color_16_struct*, align 8
  %28 = alloca %struct.png_color_16_struct*, align 8
  %29 = alloca %struct.png_color_8_struct*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8, align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %35 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @opng_analyze_bits(%struct.png_struct_def* noundef %34, %struct.png_info_def* noundef %35, i32 noundef %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %474

41:                                               ; preds = %3
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %43 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %44 = call i32 @png_get_IHDR(%struct.png_struct_def* noundef %42, %struct.png_info_def* noundef %43, i32* noundef %11, i32* noundef %12, i32* noundef %16, i32* noundef %20, i32* noundef %13, i32* noundef %14, i32* noundef %15)
  %45 = load i32, i32* %16, align 4
  %46 = icmp sge i32 %45, 8
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %49

48:                                               ; preds = %41
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 506, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.opng_reduce_bits, i64 0, i64 0)) #5
  unreachable

49:                                               ; preds = %47
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %16, align 4
  %55 = icmp eq i32 %54, 16
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %58

57:                                               ; preds = %53
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 509, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.opng_reduce_bits, i64 0, i64 0)) #5
  unreachable

58:                                               ; preds = %56
  store i32 8, i32* %17, align 4
  br label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = load i32, i32* %16, align 4
  %63 = sdiv i32 %62, 8
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %17, align 4
  %65 = sdiv i32 %64, 8
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %20, align 4
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load i32, i32* %20, align 4
  %72 = and i32 %71, 2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %76

75:                                               ; preds = %70
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 521, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.opng_reduce_bits, i64 0, i64 0)) #5
  unreachable

76:                                               ; preds = %74
  %77 = load i32, i32* %21, align 4
  %78 = and i32 %77, -3
  store i32 %78, i32* %21, align 4
  br label %79

79:                                               ; preds = %76, %61
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32, i32* %20, align 4
  %85 = and i32 %84, 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %89

88:                                               ; preds = %83
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 526, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.opng_reduce_bits, i64 0, i64 0)) #5
  unreachable

89:                                               ; preds = %87
  %90 = load i32, i32* %21, align 4
  %91 = and i32 %90, -5
  store i32 %91, i32* %21, align 4
  br label %92

92:                                               ; preds = %89, %79
  %93 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %94 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %95 = call zeroext i8 @png_get_channels(%struct.png_struct_def* noundef %93, %struct.png_info_def* noundef %94)
  %96 = zext i8 %95 to i32
  store i32 %96, i32* %22, align 4
  %97 = load i32, i32* %21, align 4
  %98 = and i32 %97, 2
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 3, i32 1
  %102 = load i32, i32* %21, align 4
  %103 = and i32 %102, 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  %107 = add nsw i32 %101, %106
  store i32 %107, i32* %23, align 4
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* %18, align 4
  %110 = mul nsw i32 %108, %109
  store i32 %110, i32* %24, align 4
  %111 = load i32, i32* %23, align 4
  %112 = load i32, i32* %19, align 4
  %113 = mul nsw i32 %111, %112
  store i32 %113, i32* %25, align 4
  store i32 0, i32* %32, align 4
  br label %114

114:                                              ; preds = %128, %92
  %115 = load i32, i32* %32, align 4
  %116 = load i32, i32* %19, align 4
  %117 = mul nsw i32 4, %116
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %114
  %120 = load i32, i32* %32, align 4
  %121 = load i32, i32* %16, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %17, align 4
  %124 = sdiv i32 %122, %123
  %125 = load i32, i32* %32, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 %126
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %119
  %129 = load i32, i32* %32, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %32, align 4
  br label %114, !llvm.loop !4

131:                                              ; preds = %114
  %132 = load i32, i32* %7, align 4
  %133 = and i32 %132, 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %162

135:                                              ; preds = %131
  %136 = load i32, i32* %21, align 4
  %137 = and i32 %136, 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %135
  %140 = load i32, i32* %19, align 4
  %141 = mul nsw i32 3, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 %146
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* %19, align 4
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %161

150:                                              ; preds = %139
  %151 = load i32, i32* %19, align 4
  %152 = mul nsw i32 3, %151
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 %159
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %150, %139
  br label %162

162:                                              ; preds = %161, %135, %131
  %163 = load i32, i32* %24, align 4
  %164 = load i32, i32* %25, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %168

167:                                              ; preds = %162
  call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 551, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.opng_reduce_bits, i64 0, i64 0)) #5
  unreachable

168:                                              ; preds = %166
  %169 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %170 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %171 = call i8** @png_get_rows(%struct.png_struct_def* noundef %169, %struct.png_info_def* noundef %170)
  store i8** %171, i8*** %8, align 8
  store i32 0, i32* %30, align 4
  br label %172

172:                                              ; preds = %217, %168
  %173 = load i32, i32* %30, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %222

176:                                              ; preds = %172
  %177 = load i8**, i8*** %8, align 8
  %178 = load i8*, i8** %177, align 8
  store i8* %178, i8** %10, align 8
  store i8* %178, i8** %9, align 8
  store i32 0, i32* %31, align 4
  br label %179

179:                                              ; preds = %213, %176
  %180 = load i32, i32* %31, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %183, label %216

183:                                              ; preds = %179
  store i32 0, i32* %32, align 4
  br label %184

184:                                              ; preds = %201, %183
  %185 = load i32, i32* %32, align 4
  %186 = load i32, i32* %25, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %204

188:                                              ; preds = %184
  %189 = load i8*, i8** %9, align 8
  %190 = load i32, i32* %32, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %189, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = load i8*, i8** %10, align 8
  %198 = load i32, i32* %32, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  store i8 %196, i8* %200, align 1
  br label %201

201:                                              ; preds = %188
  %202 = load i32, i32* %32, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %32, align 4
  br label %184, !llvm.loop !6

204:                                              ; preds = %184
  %205 = load i32, i32* %24, align 4
  %206 = load i8*, i8** %9, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  store i8* %208, i8** %9, align 8
  %209 = load i32, i32* %25, align 4
  %210 = load i8*, i8** %10, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8* %212, i8** %10, align 8
  br label %213

213:                                              ; preds = %204
  %214 = load i32, i32* %31, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %31, align 4
  br label %179, !llvm.loop !7

216:                                              ; preds = %179
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %30, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %30, align 4
  %220 = load i8**, i8*** %8, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i32 1
  store i8** %221, i8*** %8, align 8
  br label %172, !llvm.loop !8

222:                                              ; preds = %172
  %223 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %224 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %225 = call i32 @png_get_tRNS(%struct.png_struct_def* noundef %223, %struct.png_info_def* noundef %224, i8** noundef null, i32* noundef null, %struct.png_color_16_struct** noundef %27)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %327

227:                                              ; preds = %222
  %228 = load i32, i32* %7, align 4
  %229 = and i32 %228, 1
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %290

231:                                              ; preds = %227
  %232 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %233 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %232, i32 0, i32 1
  %234 = load i16, i16* %233, align 2
  %235 = zext i16 %234 to i32
  %236 = srem i32 %235, 257
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %284

238:                                              ; preds = %231
  %239 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %240 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %239, i32 0, i32 2
  %241 = load i16, i16* %240, align 2
  %242 = zext i16 %241 to i32
  %243 = srem i32 %242, 257
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %284

245:                                              ; preds = %238
  %246 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %247 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %246, i32 0, i32 3
  %248 = load i16, i16* %247, align 2
  %249 = zext i16 %248 to i32
  %250 = srem i32 %249, 257
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %284

252:                                              ; preds = %245
  %253 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %254 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %253, i32 0, i32 4
  %255 = load i16, i16* %254, align 2
  %256 = zext i16 %255 to i32
  %257 = srem i32 %256, 257
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %284

259:                                              ; preds = %252
  %260 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %261 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %260, i32 0, i32 1
  %262 = load i16, i16* %261, align 2
  %263 = zext i16 %262 to i32
  %264 = and i32 %263, 255
  %265 = trunc i32 %264 to i16
  store i16 %265, i16* %261, align 2
  %266 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %267 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %266, i32 0, i32 2
  %268 = load i16, i16* %267, align 2
  %269 = zext i16 %268 to i32
  %270 = and i32 %269, 255
  %271 = trunc i32 %270 to i16
  store i16 %271, i16* %267, align 2
  %272 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %273 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %272, i32 0, i32 3
  %274 = load i16, i16* %273, align 2
  %275 = zext i16 %274 to i32
  %276 = and i32 %275, 255
  %277 = trunc i32 %276 to i16
  store i16 %277, i16* %273, align 2
  %278 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %279 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %278, i32 0, i32 4
  %280 = load i16, i16* %279, align 2
  %281 = zext i16 %280 to i32
  %282 = and i32 %281, 255
  %283 = trunc i32 %282 to i16
  store i16 %283, i16* %279, align 2
  br label %289

284:                                              ; preds = %252, %245, %238, %231
  %285 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %286 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %285, %struct.png_info_def* noundef %286, i32 noundef 8192, i32 noundef -1)
  %287 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %288 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_invalid(%struct.png_struct_def* noundef %287, %struct.png_info_def* noundef %288, i32 noundef 16)
  br label %289

289:                                              ; preds = %284, %259
  br label %290

290:                                              ; preds = %289, %227
  %291 = load i32, i32* %7, align 4
  %292 = and i32 %291, 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %326

294:                                              ; preds = %290
  %295 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %296 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %295, i32 0, i32 1
  %297 = load i16, i16* %296, align 2
  %298 = zext i16 %297 to i32
  %299 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %300 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %299, i32 0, i32 2
  %301 = load i16, i16* %300, align 2
  %302 = zext i16 %301 to i32
  %303 = icmp eq i32 %298, %302
  br i1 %303, label %314, label %304

304:                                              ; preds = %294
  %305 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %306 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %305, i32 0, i32 1
  %307 = load i16, i16* %306, align 2
  %308 = zext i16 %307 to i32
  %309 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %310 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %309, i32 0, i32 3
  %311 = load i16, i16* %310, align 2
  %312 = zext i16 %311 to i32
  %313 = icmp eq i32 %308, %312
  br i1 %313, label %314, label %320

314:                                              ; preds = %304, %294
  %315 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %316 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %315, i32 0, i32 1
  %317 = load i16, i16* %316, align 2
  %318 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %319 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %318, i32 0, i32 4
  store i16 %317, i16* %319, align 2
  br label %325

320:                                              ; preds = %304
  %321 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %322 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %321, %struct.png_info_def* noundef %322, i32 noundef 8192, i32 noundef -1)
  %323 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %324 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_invalid(%struct.png_struct_def* noundef %323, %struct.png_info_def* noundef %324, i32 noundef 16)
  br label %325

325:                                              ; preds = %320, %314
  br label %326

326:                                              ; preds = %325, %290
  br label %327

327:                                              ; preds = %326, %222
  %328 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %329 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %330 = call i32 @png_get_bKGD(%struct.png_struct_def* noundef %328, %struct.png_info_def* noundef %329, %struct.png_color_16_struct** noundef %28)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %372

332:                                              ; preds = %327
  %333 = load i32, i32* %7, align 4
  %334 = and i32 %333, 1
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %361

336:                                              ; preds = %332
  %337 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %338 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %337, i32 0, i32 1
  %339 = load i16, i16* %338, align 2
  %340 = zext i16 %339 to i32
  %341 = and i32 %340, 255
  %342 = trunc i32 %341 to i16
  store i16 %342, i16* %338, align 2
  %343 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %344 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %343, i32 0, i32 2
  %345 = load i16, i16* %344, align 2
  %346 = zext i16 %345 to i32
  %347 = and i32 %346, 255
  %348 = trunc i32 %347 to i16
  store i16 %348, i16* %344, align 2
  %349 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %350 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %349, i32 0, i32 3
  %351 = load i16, i16* %350, align 2
  %352 = zext i16 %351 to i32
  %353 = and i32 %352, 255
  %354 = trunc i32 %353 to i16
  store i16 %354, i16* %350, align 2
  %355 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %356 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %355, i32 0, i32 4
  %357 = load i16, i16* %356, align 2
  %358 = zext i16 %357 to i32
  %359 = and i32 %358, 255
  %360 = trunc i32 %359 to i16
  store i16 %360, i16* %356, align 2
  br label %361

361:                                              ; preds = %336, %332
  %362 = load i32, i32* %7, align 4
  %363 = and i32 %362, 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %361
  %366 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %367 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %366, i32 0, i32 1
  %368 = load i16, i16* %367, align 2
  %369 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %370 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %369, i32 0, i32 4
  store i16 %368, i16* %370, align 2
  br label %371

371:                                              ; preds = %365, %361
  br label %372

372:                                              ; preds = %371, %327
  %373 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %374 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %375 = call i32 @png_get_sBIT(%struct.png_struct_def* noundef %373, %struct.png_info_def* noundef %374, %struct.png_color_8_struct** noundef %29)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %463

377:                                              ; preds = %372
  %378 = load i32, i32* %7, align 4
  %379 = and i32 %378, 1
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %427

381:                                              ; preds = %377
  %382 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %383 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %382, i32 0, i32 0
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = icmp sgt i32 %385, 8
  br i1 %386, label %387, label %390

387:                                              ; preds = %381
  %388 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %389 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %388, i32 0, i32 0
  store i8 8, i8* %389, align 1
  br label %390

390:                                              ; preds = %387, %381
  %391 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %392 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %391, i32 0, i32 1
  %393 = load i8, i8* %392, align 1
  %394 = zext i8 %393 to i32
  %395 = icmp sgt i32 %394, 8
  br i1 %395, label %396, label %399

396:                                              ; preds = %390
  %397 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %398 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %397, i32 0, i32 1
  store i8 8, i8* %398, align 1
  br label %399

399:                                              ; preds = %396, %390
  %400 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %401 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %400, i32 0, i32 2
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i32
  %404 = icmp sgt i32 %403, 8
  br i1 %404, label %405, label %408

405:                                              ; preds = %399
  %406 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %407 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %406, i32 0, i32 2
  store i8 8, i8* %407, align 1
  br label %408

408:                                              ; preds = %405, %399
  %409 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %410 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %409, i32 0, i32 3
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i32
  %413 = icmp sgt i32 %412, 8
  br i1 %413, label %414, label %417

414:                                              ; preds = %408
  %415 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %416 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %415, i32 0, i32 3
  store i8 8, i8* %416, align 1
  br label %417

417:                                              ; preds = %414, %408
  %418 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %419 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %418, i32 0, i32 4
  %420 = load i8, i8* %419, align 1
  %421 = zext i8 %420 to i32
  %422 = icmp sgt i32 %421, 8
  br i1 %422, label %423, label %426

423:                                              ; preds = %417
  %424 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %425 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %424, i32 0, i32 4
  store i8 8, i8* %425, align 1
  br label %426

426:                                              ; preds = %423, %417
  br label %427

427:                                              ; preds = %426, %377
  %428 = load i32, i32* %7, align 4
  %429 = and i32 %428, 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %462

431:                                              ; preds = %427
  %432 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %433 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %432, i32 0, i32 0
  %434 = load i8, i8* %433, align 1
  store i8 %434, i8* %33, align 1
  %435 = load i8, i8* %33, align 1
  %436 = zext i8 %435 to i32
  %437 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %438 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %437, i32 0, i32 1
  %439 = load i8, i8* %438, align 1
  %440 = zext i8 %439 to i32
  %441 = icmp slt i32 %436, %440
  br i1 %441, label %442, label %446

442:                                              ; preds = %431
  %443 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %444 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %443, i32 0, i32 1
  %445 = load i8, i8* %444, align 1
  store i8 %445, i8* %33, align 1
  br label %446

446:                                              ; preds = %442, %431
  %447 = load i8, i8* %33, align 1
  %448 = zext i8 %447 to i32
  %449 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %450 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %449, i32 0, i32 2
  %451 = load i8, i8* %450, align 1
  %452 = zext i8 %451 to i32
  %453 = icmp slt i32 %448, %452
  br i1 %453, label %454, label %458

454:                                              ; preds = %446
  %455 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %456 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %455, i32 0, i32 2
  %457 = load i8, i8* %456, align 1
  store i8 %457, i8* %33, align 1
  br label %458

458:                                              ; preds = %454, %446
  %459 = load i8, i8* %33, align 1
  %460 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %461 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %460, i32 0, i32 3
  store i8 %459, i8* %461, align 1
  br label %462

462:                                              ; preds = %458, %427
  br label %463

463:                                              ; preds = %462, %372
  %464 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %465 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %466 = load i32, i32* %11, align 4
  %467 = load i32, i32* %12, align 4
  %468 = load i32, i32* %17, align 4
  %469 = load i32, i32* %21, align 4
  %470 = load i32, i32* %13, align 4
  %471 = load i32, i32* %14, align 4
  %472 = load i32, i32* %15, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %464, %struct.png_info_def* noundef %465, i32 noundef %466, i32 noundef %467, i32 noundef %468, i32 noundef %469, i32 noundef %470, i32 noundef %471, i32 noundef %472)
  %473 = load i32, i32* %7, align 4
  store i32 %473, i32* %4, align 4
  br label %474

474:                                              ; preds = %463, %40
  %475 = load i32, i32* %4, align 4
  ret i32 %475
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opng_reduce_palette(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.png_color_struct*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca [256 x i8], align 16
  %26 = alloca %struct.png_color_16_struct, align 2
  %27 = alloca i32, align 4
  %28 = alloca %struct.png_color_16_struct*, align 8
  %29 = alloca i16*, align 8
  %30 = alloca %struct.png_color_8_struct*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8, align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %36 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %37 = call i32 @png_get_IHDR(%struct.png_struct_def* noundef %35, %struct.png_info_def* noundef %36, i32* noundef %12, i32* noundef %13, i32* noundef %14, i32* noundef %15, i32* noundef %16, i32* noundef %17, i32* noundef %18)
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %39 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %40 = call i8** @png_get_rows(%struct.png_struct_def* noundef %38, %struct.png_info_def* noundef %39)
  store i8** %40, i8*** %11, align 8
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %42 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %43 = call i32 @png_get_PLTE(%struct.png_struct_def* noundef %41, %struct.png_info_def* noundef %42, %struct.png_color_struct** noundef %9, i32* noundef %19)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %3
  store %struct.png_color_struct* null, %struct.png_color_struct** %9, align 8
  store i32 0, i32* %19, align 4
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %48 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %49 = call i32 @png_get_tRNS(%struct.png_struct_def* noundef %47, %struct.png_info_def* noundef %48, i8** noundef %10, i32* noundef %20, %struct.png_color_16_struct** noundef null)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i8* null, i8** %10, align 8
  store i32 0, i32* %20, align 4
  br label %61

52:                                               ; preds = %46
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %20, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %60

59:                                               ; preds = %55, %52
  call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1117, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.opng_reduce_palette, i64 0, i64 0)) #5
  unreachable

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60, %51
  %62 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %63 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  call void @opng_analyze_sample_usage(%struct.png_struct_def* noundef %62, %struct.png_info_def* noundef %63, i8* noundef %64)
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, 8
  br label %71

71:                                               ; preds = %68, %61
  %72 = phi i1 [ false, %61 ], [ %70, %68 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %27, align 4
  store i32 -1, i32* %22, align 4
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %33, align 4
  br label %74

74:                                               ; preds = %137, %71
  %75 = load i32, i32* %33, align 4
  %76 = icmp slt i32 %75, 256
  br i1 %76, label %77, label %140

77:                                               ; preds = %74
  %78 = load i32, i32* %33, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %137

84:                                               ; preds = %77
  %85 = load i32, i32* %33, align 4
  store i32 %85, i32* %21, align 4
  %86 = load i32, i32* %33, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %33, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp slt i32 %95, 255
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %33, align 4
  store i32 %98, i32* %22, align 4
  br label %99

99:                                               ; preds = %97, %89, %84
  %100 = load i32, i32* %27, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %136

102:                                              ; preds = %99
  %103 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %104 = load i32, i32* %33, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %103, i64 %105
  %107 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %106, i32 0, i32 0
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %111 = load i32, i32* %33, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %110, i64 %112
  %114 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %113, i32 0, i32 1
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp ne i32 %109, %116
  br i1 %117, label %134, label %118

118:                                              ; preds = %102
  %119 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %120 = load i32, i32* %33, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %119, i64 %121
  %123 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %122, i32 0, i32 0
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %127 = load i32, i32* %33, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %126, i64 %128
  %130 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %129, i32 0, i32 2
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp ne i32 %125, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %118, %102
  store i32 0, i32* %27, align 4
  br label %135

135:                                              ; preds = %134, %118
  br label %136

136:                                              ; preds = %135, %99
  br label %137

137:                                              ; preds = %136, %83
  %138 = load i32, i32* %33, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %33, align 4
  br label %74, !llvm.loop !9

140:                                              ; preds = %74
  %141 = load i32, i32* %21, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %145

144:                                              ; preds = %140
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1135, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.opng_reduce_palette, i64 0, i64 0)) #5
  unreachable

145:                                              ; preds = %143
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %22, align 4
  %148 = icmp sge i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %151

150:                                              ; preds = %145
  call void @__assert_fail(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1136, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.opng_reduce_palette, i64 0, i64 0)) #5
  unreachable

151:                                              ; preds = %149
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %19, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %151
  %156 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_warning(%struct.png_struct_def* noundef %156, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %157 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %158 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %159 = load i32, i32* %21, align 4
  %160 = add nsw i32 %159, 1
  call void @opng_realloc_PLTE(%struct.png_struct_def* noundef %157, %struct.png_info_def* noundef %158, i32 noundef %160)
  %161 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %162 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %163 = call i32 @png_get_PLTE(%struct.png_struct_def* noundef %161, %struct.png_info_def* noundef %162, %struct.png_color_struct** noundef %9, i32* noundef %19)
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %21, align 4
  %166 = add nsw i32 %165, 1
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %155
  br label %170

169:                                              ; preds = %155
  call void @__assert_fail(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1145, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.opng_reduce_palette, i64 0, i64 0)) #5
  unreachable

170:                                              ; preds = %168
  %171 = load i32, i32* %8, align 4
  %172 = or i32 %171, 8192
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %170, %151
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %19, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_warning(%struct.png_struct_def* noundef %178, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %179 = load i32, i32* %8, align 4
  %180 = or i32 %179, 8192
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %177, %173
  %182 = load i32, i32* %27, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %264

184:                                              ; preds = %181
  %185 = load i32, i32* %22, align 4
  %186 = icmp sge i32 %185, 0
  br i1 %186, label %187, label %264

187:                                              ; preds = %184
  %188 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %189 = load i32, i32* %22, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %188, i64 %190
  %192 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %191, i32 0, i32 0
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i16
  %195 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %26, i32 0, i32 4
  store i16 %194, i16* %195, align 2
  %196 = load i8*, i8** %10, align 8
  %197 = load i32, i32* %22, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i8, i8* %199, align 1
  store i8 %200, i8* %24, align 1
  store i32 0, i32* %33, align 4
  br label %201

201:                                              ; preds = %260, %187
  %202 = load i32, i32* %33, align 4
  %203 = load i32, i32* %21, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %205, label %263

205:                                              ; preds = %201
  %206 = load i32, i32* %33, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = icmp ne i8 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %205
  br label %260

212:                                              ; preds = %205
  %213 = load i32, i32* %33, align 4
  %214 = load i32, i32* %22, align 4
  %215 = icmp sle i32 %213, %214
  br i1 %215, label %216, label %239

216:                                              ; preds = %212
  %217 = load i8*, i8** %10, align 8
  %218 = load i32, i32* %33, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8, i8* %220, align 1
  store i8 %221, i8* %23, align 1
  %222 = load i8, i8* %23, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp slt i32 %223, 255
  br i1 %224, label %225, label %238

225:                                              ; preds = %216
  %226 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %227 = load i32, i32* %33, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %226, i64 %228
  %230 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %229, i32 0, i32 0
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %26, i32 0, i32 4
  %234 = load i16, i16* %233, align 2
  %235 = zext i16 %234 to i32
  %236 = icmp ne i32 %232, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %225
  store i32 0, i32* %27, align 4
  br label %263

238:                                              ; preds = %225, %216
  br label %240

239:                                              ; preds = %212
  store i8 -1, i8* %23, align 1
  br label %240

240:                                              ; preds = %239, %238
  %241 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %242 = load i32, i32* %33, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %241, i64 %243
  %245 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %244, i32 0, i32 0
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %26, i32 0, i32 4
  %249 = load i16, i16* %248, align 2
  %250 = zext i16 %249 to i32
  %251 = icmp eq i32 %247, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %240
  %253 = load i8, i8* %23, align 1
  %254 = zext i8 %253 to i32
  %255 = load i8, i8* %24, align 1
  %256 = zext i8 %255 to i32
  %257 = icmp ne i32 %254, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  store i32 0, i32* %27, align 4
  br label %263

259:                                              ; preds = %252, %240
  br label %260

260:                                              ; preds = %259, %211
  %261 = load i32, i32* %33, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %33, align 4
  br label %201, !llvm.loop !10

263:                                              ; preds = %258, %237, %201
  br label %264

264:                                              ; preds = %263, %184, %181
  %265 = load i32, i32* %20, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %264
  %268 = load i32, i32* %22, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  store i32 0, i32* %20, align 4
  %271 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %272 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %271, %struct.png_info_def* noundef %272, i32 noundef 8192, i32 noundef -1)
  %273 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %274 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_invalid(%struct.png_struct_def* noundef %273, %struct.png_info_def* noundef %274, i32 noundef 16)
  %275 = load i32, i32* %8, align 4
  %276 = or i32 %275, 512
  store i32 %276, i32* %8, align 4
  br label %277

277:                                              ; preds = %270, %267, %264
  %278 = load i32, i32* %7, align 4
  %279 = and i32 %278, 512
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %329

281:                                              ; preds = %277
  %282 = load i32, i32* %19, align 4
  %283 = load i32, i32* %21, align 4
  %284 = add nsw i32 %283, 1
  %285 = icmp ne i32 %282, %284
  br i1 %285, label %286, label %303

286:                                              ; preds = %281
  %287 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %288 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %289 = load i32, i32* %21, align 4
  %290 = add nsw i32 %289, 1
  call void @opng_realloc_PLTE(%struct.png_struct_def* noundef %287, %struct.png_info_def* noundef %288, i32 noundef %290)
  %291 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %292 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %293 = call i32 @png_get_PLTE(%struct.png_struct_def* noundef %291, %struct.png_info_def* noundef %292, %struct.png_color_struct** noundef %9, i32* noundef %19)
  %294 = load i32, i32* %19, align 4
  %295 = load i32, i32* %21, align 4
  %296 = add nsw i32 %295, 1
  %297 = icmp eq i32 %294, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %286
  br label %300

299:                                              ; preds = %286
  call void @__assert_fail(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1203, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.opng_reduce_palette, i64 0, i64 0)) #5
  unreachable

300:                                              ; preds = %298
  %301 = load i32, i32* %8, align 4
  %302 = or i32 %301, 512
  store i32 %302, i32* %8, align 4
  br label %303

303:                                              ; preds = %300, %281
  %304 = load i32, i32* %20, align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %328

306:                                              ; preds = %303
  %307 = load i32, i32* %20, align 4
  %308 = load i32, i32* %22, align 4
  %309 = add nsw i32 %308, 1
  %310 = icmp ne i32 %307, %309
  br i1 %310, label %311, label %328

311:                                              ; preds = %306
  %312 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %313 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %314 = load i32, i32* %22, align 4
  %315 = add nsw i32 %314, 1
  call void @opng_realloc_tRNS(%struct.png_struct_def* noundef %312, %struct.png_info_def* noundef %313, i32 noundef %315)
  %316 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %317 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %318 = call i32 @png_get_tRNS(%struct.png_struct_def* noundef %316, %struct.png_info_def* noundef %317, i8** noundef %10, i32* noundef %20, %struct.png_color_16_struct** noundef null)
  %319 = load i32, i32* %20, align 4
  %320 = load i32, i32* %22, align 4
  %321 = add nsw i32 %320, 1
  %322 = icmp eq i32 %319, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %311
  br label %325

324:                                              ; preds = %311
  call void @__assert_fail(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1212, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.opng_reduce_palette, i64 0, i64 0)) #5
  unreachable

325:                                              ; preds = %323
  %326 = load i32, i32* %8, align 4
  %327 = or i32 %326, 512
  store i32 %327, i32* %8, align 4
  br label %328

328:                                              ; preds = %325, %306, %303
  br label %329

329:                                              ; preds = %328, %277
  %330 = load i32, i32* %7, align 4
  %331 = and i32 %330, 2
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %344

333:                                              ; preds = %329
  %334 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %335 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %336 = load i32, i32* %7, align 4
  %337 = call i32 @opng_reduce_palette_bits(%struct.png_struct_def* noundef %334, %struct.png_info_def* noundef %335, i32 noundef %336)
  %338 = load i32, i32* %8, align 4
  %339 = or i32 %338, %337
  store i32 %339, i32* %8, align 4
  %340 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %341 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %342 = call zeroext i8 @png_get_bit_depth(%struct.png_struct_def* noundef %340, %struct.png_info_def* noundef %341)
  %343 = zext i8 %342 to i32
  store i32 %343, i32* %14, align 4
  br label %344

344:                                              ; preds = %333, %329
  %345 = load i32, i32* %14, align 4
  %346 = icmp slt i32 %345, 8
  br i1 %346, label %350, label %347

347:                                              ; preds = %344
  %348 = load i32, i32* %27, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %347, %344
  %351 = load i32, i32* %8, align 4
  store i32 %351, i32* %4, align 4
  br label %474

352:                                              ; preds = %347
  store i32 0, i32* %31, align 4
  br label %353

353:                                              ; preds = %389, %352
  %354 = load i32, i32* %31, align 4
  %355 = load i32, i32* %13, align 4
  %356 = icmp ult i32 %354, %355
  br i1 %356, label %357, label %392

357:                                              ; preds = %353
  store i32 0, i32* %32, align 4
  br label %358

358:                                              ; preds = %385, %357
  %359 = load i32, i32* %32, align 4
  %360 = load i32, i32* %12, align 4
  %361 = icmp ult i32 %359, %360
  br i1 %361, label %362, label %388

362:                                              ; preds = %358
  %363 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %364 = load i8**, i8*** %11, align 8
  %365 = load i32, i32* %31, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds i8*, i8** %364, i64 %366
  %368 = load i8*, i8** %367, align 8
  %369 = load i32, i32* %32, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %368, i64 %370
  %372 = load i8, i8* %371, align 1
  %373 = zext i8 %372 to i64
  %374 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %363, i64 %373
  %375 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %374, i32 0, i32 0
  %376 = load i8, i8* %375, align 1
  %377 = load i8**, i8*** %11, align 8
  %378 = load i32, i32* %31, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds i8*, i8** %377, i64 %379
  %381 = load i8*, i8** %380, align 8
  %382 = load i32, i32* %32, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %381, i64 %383
  store i8 %376, i8* %384, align 1
  br label %385

385:                                              ; preds = %362
  %386 = load i32, i32* %32, align 4
  %387 = add i32 %386, 1
  store i32 %387, i32* %32, align 4
  br label %358, !llvm.loop !11

388:                                              ; preds = %358
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %31, align 4
  %391 = add i32 %390, 1
  store i32 %391, i32* %31, align 4
  br label %353, !llvm.loop !12

392:                                              ; preds = %353
  %393 = load i32, i32* %20, align 4
  %394 = icmp sgt i32 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %392
  %396 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %397 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_tRNS(%struct.png_struct_def* noundef %396, %struct.png_info_def* noundef %397, i8* noundef null, i32 noundef 0, %struct.png_color_16_struct* noundef %26)
  br label %398

398:                                              ; preds = %395, %392
  %399 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %400 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %401 = call i32 @png_get_bKGD(%struct.png_struct_def* noundef %399, %struct.png_info_def* noundef %400, %struct.png_color_16_struct** noundef %28)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %415

403:                                              ; preds = %398
  %404 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %405 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %406 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %405, i32 0, i32 0
  %407 = load i8, i8* %406, align 2
  %408 = zext i8 %407 to i64
  %409 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %404, i64 %408
  %410 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %409, i32 0, i32 0
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i16
  %413 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %414 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %413, i32 0, i32 4
  store i16 %412, i16* %414, align 2
  br label %415

415:                                              ; preds = %403, %398
  %416 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %417 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %418 = call i32 @png_get_hIST(%struct.png_struct_def* noundef %416, %struct.png_info_def* noundef %417, i16** noundef %29)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %415
  %421 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %422 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %421, %struct.png_info_def* noundef %422, i32 noundef 8, i32 noundef -1)
  %423 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %424 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_invalid(%struct.png_struct_def* noundef %423, %struct.png_info_def* noundef %424, i32 noundef 64)
  br label %425

425:                                              ; preds = %420, %415
  %426 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %427 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %428 = call i32 @png_get_sBIT(%struct.png_struct_def* noundef %426, %struct.png_info_def* noundef %427, %struct.png_color_8_struct** noundef %30)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %461

430:                                              ; preds = %425
  %431 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %30, align 8
  %432 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %431, i32 0, i32 0
  %433 = load i8, i8* %432, align 1
  store i8 %433, i8* %34, align 1
  %434 = load i8, i8* %34, align 1
  %435 = zext i8 %434 to i32
  %436 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %30, align 8
  %437 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %436, i32 0, i32 1
  %438 = load i8, i8* %437, align 1
  %439 = zext i8 %438 to i32
  %440 = icmp slt i32 %435, %439
  br i1 %440, label %441, label %445

441:                                              ; preds = %430
  %442 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %30, align 8
  %443 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %442, i32 0, i32 1
  %444 = load i8, i8* %443, align 1
  store i8 %444, i8* %34, align 1
  br label %445

445:                                              ; preds = %441, %430
  %446 = load i8, i8* %34, align 1
  %447 = zext i8 %446 to i32
  %448 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %30, align 8
  %449 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %448, i32 0, i32 2
  %450 = load i8, i8* %449, align 1
  %451 = zext i8 %450 to i32
  %452 = icmp slt i32 %447, %451
  br i1 %452, label %453, label %457

453:                                              ; preds = %445
  %454 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %30, align 8
  %455 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %454, i32 0, i32 2
  %456 = load i8, i8* %455, align 1
  store i8 %456, i8* %34, align 1
  br label %457

457:                                              ; preds = %453, %445
  %458 = load i8, i8* %34, align 1
  %459 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %30, align 8
  %460 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %459, i32 0, i32 3
  store i8 %458, i8* %460, align 1
  br label %461

461:                                              ; preds = %457, %425
  %462 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %463 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %464 = load i32, i32* %12, align 4
  %465 = load i32, i32* %13, align 4
  %466 = load i32, i32* %14, align 4
  %467 = load i32, i32* %16, align 4
  %468 = load i32, i32* %17, align 4
  %469 = load i32, i32* %18, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %462, %struct.png_info_def* noundef %463, i32 noundef %464, i32 noundef %465, i32 noundef %466, i32 noundef 0, i32 noundef %467, i32 noundef %468, i32 noundef %469)
  %470 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %471 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %470, %struct.png_info_def* noundef %471, i32 noundef 4096, i32 noundef -1)
  %472 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %473 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_invalid(%struct.png_struct_def* noundef %472, %struct.png_info_def* noundef %473, i32 noundef 8)
  store i32 128, i32* %4, align 4
  br label %474

474:                                              ; preds = %461, %350
  %475 = load i32, i32* %4, align 4
  ret i32 %475
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opng_reduce_to_palette(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.png_row_info_struct, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [256 x %struct.png_color_struct], align 16
  %23 = alloca [256 x i8], align 16
  %24 = alloca %struct.png_color_16_struct*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.png_color_16_struct*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %42 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %43 = call i32 @png_get_IHDR(%struct.png_struct_def* noundef %41, %struct.png_info_def* noundef %42, i32* noundef %14, i32* noundef %13, i32* noundef %19, i32* noundef %15, i32* noundef %16, i32* noundef %17, i32* noundef %18)
  %44 = load i32, i32* %19, align 4
  %45 = icmp ne i32 %44, 8
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %520

47:                                               ; preds = %3
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %53

52:                                               ; preds = %47
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 802, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.opng_reduce_to_palette, i64 0, i64 0)) #5
  unreachable

53:                                               ; preds = %51
  %54 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %55 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %56 = call i8** @png_get_rows(%struct.png_struct_def* noundef %54, %struct.png_info_def* noundef %55)
  store i8** %56, i8*** %10, align 8
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %58 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %59 = call zeroext i8 @png_get_channels(%struct.png_struct_def* noundef %57, %struct.png_info_def* noundef %58)
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %21, align 4
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %62 = load i32, i32* %14, align 4
  %63 = zext i32 %62 to i64
  %64 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %61, i64 noundef %63)
  store i8* %64, i8** %12, align 8
  %65 = load i32, i32* %14, align 4
  %66 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %9, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %9, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %15, align 4
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %9, i32 0, i32 2
  store i8 %69, i8* %70, align 8
  %71 = load i32, i32* %19, align 4
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %9, i32 0, i32 3
  store i8 %72, i8* %73, align 1
  %74 = load i32, i32* %21, align 4
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %9, i32 0, i32 4
  store i8 %75, i8* %76, align 2
  %77 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %9, i32 0, i32 5
  store i8 0, i8* %77, align 1
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  store %struct.png_color_16_struct* null, %struct.png_color_16_struct** %24, align 8
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %79 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %80 = call i32 @png_get_tRNS(%struct.png_struct_def* noundef %78, %struct.png_info_def* noundef %79, i8** noundef null, i32* noundef null, %struct.png_color_16_struct** noundef %24)
  store i32 256, i32* %37, align 4
  store i32 256, i32* %36, align 4
  store i32 256, i32* %35, align 4
  store i32 256, i32* %34, align 4
  store i32 256, i32* %33, align 4
  store i32 0, i32* %39, align 4
  br label %81

81:                                               ; preds = %216, %53
  %82 = load i32, i32* %39, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %221

85:                                               ; preds = %81
  %86 = load i8**, i8*** %10, align 8
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %11, align 8
  %88 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %24, align 8
  %89 = load i8**, i8*** %10, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** %12, align 8
  call void @opng_get_alpha_row(%struct.png_row_info_struct* noundef %9, %struct.png_color_16_struct* noundef %88, i8* noundef %90, i8* noundef %91)
  %92 = load i32, i32* %15, align 4
  %93 = and i32 %92, 2
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %164

95:                                               ; preds = %85
  store i32 0, i32* %40, align 4
  br label %96

96:                                               ; preds = %156, %95
  %97 = load i32, i32* %40, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %163

100:                                              ; preds = %96
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  store i32 %104, i32* %29, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  store i32 %108, i32* %30, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  store i32 %112, i32* %31, align 4
  %113 = load i8*, i8** %12, align 8
  %114 = load i32, i32* %40, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  store i32 %118, i32* %32, align 4
  %119 = load i32, i32* %29, align 4
  %120 = load i32, i32* %34, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %100
  %123 = load i32, i32* %30, align 4
  %124 = load i32, i32* %35, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %31, align 4
  %128 = load i32, i32* %36, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %32, align 4
  %132 = load i32, i32* %37, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %130, %126, %122, %100
  %135 = load i32, i32* %29, align 4
  store i32 %135, i32* %34, align 4
  %136 = load i32, i32* %30, align 4
  store i32 %136, i32* %35, align 4
  %137 = load i32, i32* %31, align 4
  store i32 %137, i32* %36, align 4
  %138 = load i32, i32* %32, align 4
  store i32 %138, i32* %37, align 4
  %139 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %22, i64 0, i64 0
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %141 = load i32, i32* %29, align 4
  %142 = load i32, i32* %30, align 4
  %143 = load i32, i32* %31, align 4
  %144 = load i32, i32* %32, align 4
  %145 = call i32 @opng_insert_palette_entry(%struct.png_color_struct* noundef %139, i32* noundef %25, i8* noundef %140, i32* noundef %26, i32 noundef 256, i32 noundef %141, i32 noundef %142, i32 noundef %143, i32 noundef %144, i32* noundef %27)
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %134
  %148 = load i32, i32* %25, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %152

151:                                              ; preds = %147
  call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 844, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.opng_reduce_to_palette, i64 0, i64 0)) #5
  unreachable

152:                                              ; preds = %150
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %39, align 4
  br label %163

154:                                              ; preds = %134
  br label %155

155:                                              ; preds = %154, %130
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %40, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %40, align 4
  %159 = load i32, i32* %21, align 4
  %160 = load i8*, i8** %11, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8* %162, i8** %11, align 8
  br label %96, !llvm.loop !13

163:                                              ; preds = %152, %96
  br label %215

164:                                              ; preds = %85
  store i32 0, i32* %40, align 4
  br label %165

165:                                              ; preds = %207, %164
  %166 = load i32, i32* %40, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %214

169:                                              ; preds = %165
  %170 = load i8*, i8** %11, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  store i32 %173, i32* %28, align 4
  %174 = load i8*, i8** %12, align 8
  %175 = load i32, i32* %40, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  store i32 %179, i32* %32, align 4
  %180 = load i32, i32* %28, align 4
  %181 = load i32, i32* %33, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %187, label %183

183:                                              ; preds = %169
  %184 = load i32, i32* %32, align 4
  %185 = load i32, i32* %37, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %206

187:                                              ; preds = %183, %169
  %188 = load i32, i32* %28, align 4
  store i32 %188, i32* %33, align 4
  %189 = load i32, i32* %32, align 4
  store i32 %189, i32* %37, align 4
  %190 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %22, i64 0, i64 0
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %192 = load i32, i32* %28, align 4
  %193 = load i32, i32* %28, align 4
  %194 = load i32, i32* %28, align 4
  %195 = load i32, i32* %32, align 4
  %196 = call i32 @opng_insert_palette_entry(%struct.png_color_struct* noundef %190, i32* noundef %25, i8* noundef %191, i32* noundef %26, i32 noundef 256, i32 noundef %192, i32 noundef %193, i32 noundef %194, i32 noundef %195, i32* noundef %27)
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %187
  %199 = load i32, i32* %25, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %203

202:                                              ; preds = %198
  call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 866, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.opng_reduce_to_palette, i64 0, i64 0)) #5
  unreachable

203:                                              ; preds = %201
  %204 = load i32, i32* %13, align 4
  store i32 %204, i32* %39, align 4
  br label %214

205:                                              ; preds = %187
  br label %206

206:                                              ; preds = %205, %183
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %40, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %40, align 4
  %210 = load i32, i32* %21, align 4
  %211 = load i8*, i8** %11, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %11, align 8
  br label %165, !llvm.loop !14

214:                                              ; preds = %203, %165
  br label %215

215:                                              ; preds = %214, %163
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %39, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %39, align 4
  %219 = load i8**, i8*** %10, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i32 1
  store i8** %220, i8*** %10, align 8
  br label %81, !llvm.loop !15

221:                                              ; preds = %81
  %222 = load i32, i32* %25, align 4
  %223 = icmp sge i32 %222, 0
  br i1 %223, label %224, label %266

224:                                              ; preds = %221
  %225 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %226 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %227 = call i32 @png_get_bKGD(%struct.png_struct_def* noundef %225, %struct.png_info_def* noundef %226, %struct.png_color_16_struct** noundef %38)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %266

229:                                              ; preds = %224
  %230 = load i32, i32* %15, align 4
  %231 = and i32 %230, 2
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %229
  %234 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %38, align 8
  %235 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %234, i32 0, i32 1
  %236 = load i16, i16* %235, align 2
  %237 = zext i16 %236 to i32
  store i32 %237, i32* %29, align 4
  %238 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %38, align 8
  %239 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %238, i32 0, i32 2
  %240 = load i16, i16* %239, align 2
  %241 = zext i16 %240 to i32
  store i32 %241, i32* %30, align 4
  %242 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %38, align 8
  %243 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %242, i32 0, i32 3
  %244 = load i16, i16* %243, align 2
  %245 = zext i16 %244 to i32
  store i32 %245, i32* %31, align 4
  br label %251

246:                                              ; preds = %229
  %247 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %38, align 8
  %248 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %247, i32 0, i32 4
  %249 = load i16, i16* %248, align 2
  %250 = zext i16 %249 to i32
  store i32 %250, i32* %31, align 4
  store i32 %250, i32* %30, align 4
  store i32 %250, i32* %29, align 4
  br label %251

251:                                              ; preds = %246, %233
  %252 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %22, i64 0, i64 0
  %253 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %254 = load i32, i32* %29, align 4
  %255 = load i32, i32* %30, align 4
  %256 = load i32, i32* %31, align 4
  %257 = call i32 @opng_insert_palette_entry(%struct.png_color_struct* noundef %252, i32* noundef %25, i8* noundef %253, i32* noundef %26, i32 noundef 256, i32 noundef %254, i32 noundef %255, i32 noundef %256, i32 noundef 256, i32* noundef %27)
  %258 = load i32, i32* %27, align 4
  %259 = icmp sge i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %251
  %261 = load i32, i32* %27, align 4
  %262 = trunc i32 %261 to i8
  %263 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %38, align 8
  %264 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %263, i32 0, i32 0
  store i8 %262, i8* %264, align 2
  br label %265

265:                                              ; preds = %260, %251
  br label %266

266:                                              ; preds = %265, %224, %221
  %267 = load i32, i32* %25, align 4
  %268 = icmp sge i32 %267, 0
  br i1 %268, label %269, label %324

269:                                              ; preds = %266
  %270 = load i32, i32* %25, align 4
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load i32, i32* %25, align 4
  %274 = icmp sle i32 %273, 256
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  br label %277

276:                                              ; preds = %272, %269
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 905, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.opng_reduce_to_palette, i64 0, i64 0)) #5
  unreachable

277:                                              ; preds = %275
  %278 = load i32, i32* %26, align 4
  %279 = icmp sge i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load i32, i32* %26, align 4
  %282 = load i32, i32* %25, align 4
  %283 = icmp sle i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  br label %286

285:                                              ; preds = %280, %277
  call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 906, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.opng_reduce_to_palette, i64 0, i64 0)) #5
  unreachable

286:                                              ; preds = %284
  %287 = load i32, i32* %25, align 4
  %288 = icmp sle i32 %287, 2
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  store i32 1, i32* %20, align 4
  br label %301

290:                                              ; preds = %286
  %291 = load i32, i32* %25, align 4
  %292 = icmp sle i32 %291, 4
  br i1 %292, label %293, label %294

293:                                              ; preds = %290
  store i32 2, i32* %20, align 4
  br label %300

294:                                              ; preds = %290
  %295 = load i32, i32* %25, align 4
  %296 = icmp sle i32 %295, 16
  br i1 %296, label %297, label %298

297:                                              ; preds = %294
  store i32 4, i32* %20, align 4
  br label %299

298:                                              ; preds = %294
  store i32 8, i32* %20, align 4
  br label %299

299:                                              ; preds = %298, %297
  br label %300

300:                                              ; preds = %299, %293
  br label %301

301:                                              ; preds = %300, %289
  %302 = load i32, i32* %21, align 4
  %303 = mul nsw i32 %302, 8
  %304 = load i32, i32* %20, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %322, label %306

306:                                              ; preds = %301
  %307 = load i32, i32* %25, align 4
  %308 = mul nsw i32 3, %307
  %309 = load i32, i32* %26, align 4
  %310 = add nsw i32 %308, %309
  %311 = mul nsw i32 %310, 8
  %312 = load i32, i32* %21, align 4
  %313 = mul nsw i32 %312, 8
  %314 = load i32, i32* %20, align 4
  %315 = sub nsw i32 %313, %314
  %316 = sdiv i32 %311, %315
  %317 = load i32, i32* %14, align 4
  %318 = udiv i32 %316, %317
  %319 = load i32, i32* %13, align 4
  %320 = udiv i32 %318, %319
  %321 = icmp uge i32 %320, 1
  br i1 %321, label %322, label %323

322:                                              ; preds = %306, %301
  store i32 -1, i32* %25, align 4
  br label %323

323:                                              ; preds = %322, %306
  br label %324

324:                                              ; preds = %323, %266
  %325 = load i32, i32* %25, align 4
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %329 = load i8*, i8** %12, align 8
  call void @png_free(%struct.png_struct_def* noundef %328, i8* noundef %329)
  store i32 0, i32* %4, align 4
  br label %520

330:                                              ; preds = %324
  %331 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %332 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %333 = call i8** @png_get_rows(%struct.png_struct_def* noundef %331, %struct.png_info_def* noundef %332)
  store i8** %333, i8*** %10, align 8
  store i32 -1, i32* %27, align 4
  store i32 -1, i32* %37, align 4
  store i32 -1, i32* %36, align 4
  store i32 -1, i32* %35, align 4
  store i32 -1, i32* %34, align 4
  store i32 0, i32* %39, align 4
  br label %334

334:                                              ; preds = %481, %330
  %335 = load i32, i32* %39, align 4
  %336 = load i32, i32* %13, align 4
  %337 = icmp ult i32 %335, %336
  br i1 %337, label %338, label %486

338:                                              ; preds = %334
  %339 = load i8**, i8*** %10, align 8
  %340 = load i8*, i8** %339, align 8
  store i8* %340, i8** %11, align 8
  %341 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %24, align 8
  %342 = load i8**, i8*** %10, align 8
  %343 = load i8*, i8** %342, align 8
  %344 = load i8*, i8** %12, align 8
  call void @opng_get_alpha_row(%struct.png_row_info_struct* noundef %9, %struct.png_color_16_struct* noundef %341, i8* noundef %343, i8* noundef %344)
  %345 = load i32, i32* %15, align 4
  %346 = and i32 %345, 2
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %423

348:                                              ; preds = %338
  store i32 0, i32* %40, align 4
  br label %349

349:                                              ; preds = %415, %348
  %350 = load i32, i32* %40, align 4
  %351 = load i32, i32* %14, align 4
  %352 = icmp ult i32 %350, %351
  br i1 %352, label %353, label %422

353:                                              ; preds = %349
  %354 = load i8*, i8** %11, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 0
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  store i32 %357, i32* %29, align 4
  %358 = load i8*, i8** %11, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 1
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i32
  store i32 %361, i32* %30, align 4
  %362 = load i8*, i8** %11, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 2
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  store i32 %365, i32* %31, align 4
  %366 = load i8*, i8** %12, align 8
  %367 = load i32, i32* %40, align 4
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds i8, i8* %366, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = zext i8 %370 to i32
  store i32 %371, i32* %32, align 4
  %372 = load i32, i32* %29, align 4
  %373 = load i32, i32* %34, align 4
  %374 = icmp ne i32 %372, %373
  br i1 %374, label %387, label %375

375:                                              ; preds = %353
  %376 = load i32, i32* %30, align 4
  %377 = load i32, i32* %35, align 4
  %378 = icmp ne i32 %376, %377
  br i1 %378, label %387, label %379

379:                                              ; preds = %375
  %380 = load i32, i32* %31, align 4
  %381 = load i32, i32* %36, align 4
  %382 = icmp ne i32 %380, %381
  br i1 %382, label %387, label %383

383:                                              ; preds = %379
  %384 = load i32, i32* %32, align 4
  %385 = load i32, i32* %37, align 4
  %386 = icmp ne i32 %384, %385
  br i1 %386, label %387, label %402

387:                                              ; preds = %383, %379, %375, %353
  %388 = load i32, i32* %29, align 4
  store i32 %388, i32* %34, align 4
  %389 = load i32, i32* %30, align 4
  store i32 %389, i32* %35, align 4
  %390 = load i32, i32* %31, align 4
  store i32 %390, i32* %36, align 4
  %391 = load i32, i32* %32, align 4
  store i32 %391, i32* %37, align 4
  %392 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %22, i64 0, i64 0
  %393 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %394 = load i32, i32* %29, align 4
  %395 = load i32, i32* %30, align 4
  %396 = load i32, i32* %31, align 4
  %397 = load i32, i32* %32, align 4
  %398 = call i32 @opng_insert_palette_entry(%struct.png_color_struct* noundef %392, i32* noundef %25, i8* noundef %393, i32* noundef %26, i32 noundef 256, i32 noundef %394, i32 noundef %395, i32 noundef %396, i32 noundef %397, i32* noundef %27)
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %387
  store i32 -1, i32* %27, align 4
  br label %401

401:                                              ; preds = %400, %387
  br label %402

402:                                              ; preds = %401, %383
  %403 = load i32, i32* %27, align 4
  %404 = icmp sge i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %402
  br label %407

406:                                              ; preds = %402
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 957, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.opng_reduce_to_palette, i64 0, i64 0)) #5
  unreachable

407:                                              ; preds = %405
  %408 = load i32, i32* %27, align 4
  %409 = trunc i32 %408 to i8
  %410 = load i8**, i8*** %10, align 8
  %411 = load i8*, i8** %410, align 8
  %412 = load i32, i32* %40, align 4
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %411, i64 %413
  store i8 %409, i8* %414, align 1
  br label %415

415:                                              ; preds = %407
  %416 = load i32, i32* %40, align 4
  %417 = add i32 %416, 1
  store i32 %417, i32* %40, align 4
  %418 = load i32, i32* %21, align 4
  %419 = load i8*, i8** %11, align 8
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i8, i8* %419, i64 %420
  store i8* %421, i8** %11, align 8
  br label %349, !llvm.loop !16

422:                                              ; preds = %349
  br label %480

423:                                              ; preds = %338
  store i32 0, i32* %40, align 4
  br label %424

424:                                              ; preds = %472, %423
  %425 = load i32, i32* %40, align 4
  %426 = load i32, i32* %14, align 4
  %427 = icmp ult i32 %425, %426
  br i1 %427, label %428, label %479

428:                                              ; preds = %424
  %429 = load i8*, i8** %11, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 0
  %431 = load i8, i8* %430, align 1
  %432 = zext i8 %431 to i32
  store i32 %432, i32* %28, align 4
  %433 = load i8*, i8** %12, align 8
  %434 = load i32, i32* %40, align 4
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds i8, i8* %433, i64 %435
  %437 = load i8, i8* %436, align 1
  %438 = zext i8 %437 to i32
  store i32 %438, i32* %32, align 4
  %439 = load i32, i32* %28, align 4
  %440 = load i32, i32* %33, align 4
  %441 = icmp ne i32 %439, %440
  br i1 %441, label %446, label %442

442:                                              ; preds = %428
  %443 = load i32, i32* %32, align 4
  %444 = load i32, i32* %37, align 4
  %445 = icmp ne i32 %443, %444
  br i1 %445, label %446, label %459

446:                                              ; preds = %442, %428
  %447 = load i32, i32* %28, align 4
  store i32 %447, i32* %33, align 4
  %448 = load i32, i32* %32, align 4
  store i32 %448, i32* %37, align 4
  %449 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %22, i64 0, i64 0
  %450 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %451 = load i32, i32* %28, align 4
  %452 = load i32, i32* %28, align 4
  %453 = load i32, i32* %28, align 4
  %454 = load i32, i32* %32, align 4
  %455 = call i32 @opng_insert_palette_entry(%struct.png_color_struct* noundef %449, i32* noundef %25, i8* noundef %450, i32* noundef %26, i32 noundef 256, i32 noundef %451, i32 noundef %452, i32 noundef %453, i32 noundef %454, i32* noundef %27)
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %458

457:                                              ; preds = %446
  store i32 -1, i32* %27, align 4
  br label %458

458:                                              ; preds = %457, %446
  br label %459

459:                                              ; preds = %458, %442
  %460 = load i32, i32* %27, align 4
  %461 = icmp sge i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %459
  br label %464

463:                                              ; preds = %459
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 977, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.opng_reduce_to_palette, i64 0, i64 0)) #5
  unreachable

464:                                              ; preds = %462
  %465 = load i32, i32* %27, align 4
  %466 = trunc i32 %465 to i8
  %467 = load i8**, i8*** %10, align 8
  %468 = load i8*, i8** %467, align 8
  %469 = load i32, i32* %40, align 4
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds i8, i8* %468, i64 %470
  store i8 %466, i8* %471, align 1
  br label %472

472:                                              ; preds = %464
  %473 = load i32, i32* %40, align 4
  %474 = add i32 %473, 1
  store i32 %474, i32* %40, align 4
  %475 = load i32, i32* %21, align 4
  %476 = load i8*, i8** %11, align 8
  %477 = sext i32 %475 to i64
  %478 = getelementptr inbounds i8, i8* %476, i64 %477
  store i8* %478, i8** %11, align 8
  br label %424, !llvm.loop !17

479:                                              ; preds = %424
  br label %480

480:                                              ; preds = %479, %422
  br label %481

481:                                              ; preds = %480
  %482 = load i32, i32* %39, align 4
  %483 = add i32 %482, 1
  store i32 %483, i32* %39, align 4
  %484 = load i8**, i8*** %10, align 8
  %485 = getelementptr inbounds i8*, i8** %484, i32 1
  store i8** %485, i8*** %10, align 8
  br label %334, !llvm.loop !18

486:                                              ; preds = %334
  %487 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %488 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %489 = load i32, i32* %14, align 4
  %490 = load i32, i32* %13, align 4
  %491 = load i32, i32* %16, align 4
  %492 = load i32, i32* %17, align 4
  %493 = load i32, i32* %18, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %487, %struct.png_info_def* noundef %488, i32 noundef %489, i32 noundef %490, i32 noundef 8, i32 noundef 3, i32 noundef %491, i32 noundef %492, i32 noundef %493)
  %494 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %495 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %496 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %22, i64 0, i64 0
  %497 = load i32, i32* %25, align 4
  call void @png_set_PLTE(%struct.png_struct_def* noundef %494, %struct.png_info_def* noundef %495, %struct.png_color_struct* noundef %496, i32 noundef %497)
  %498 = load i32, i32* %26, align 4
  %499 = icmp sgt i32 %498, 0
  br i1 %499, label %500, label %505

500:                                              ; preds = %486
  %501 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %502 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %503 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %504 = load i32, i32* %26, align 4
  call void @png_set_tRNS(%struct.png_struct_def* noundef %501, %struct.png_info_def* noundef %502, i8* noundef %503, i32 noundef %504, %struct.png_color_16_struct* noundef null)
  br label %505

505:                                              ; preds = %500, %486
  %506 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %507 = load i8*, i8** %12, align 8
  call void @png_free(%struct.png_struct_def* noundef %506, i8* noundef %507)
  store i32 16, i32* %8, align 4
  %508 = load i32, i32* %7, align 4
  %509 = and i32 %508, 2
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %518

511:                                              ; preds = %505
  %512 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %513 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %514 = load i32, i32* %7, align 4
  %515 = call i32 @opng_reduce_palette_bits(%struct.png_struct_def* noundef %512, %struct.png_info_def* noundef %513, i32 noundef %514)
  %516 = load i32, i32* %8, align 4
  %517 = or i32 %516, %515
  store i32 %517, i32* %8, align 4
  br label %518

518:                                              ; preds = %511, %505
  %519 = load i32, i32* %8, align 4
  store i32 %519, i32* %4, align 4
  br label %520

520:                                              ; preds = %518, %327, %46
  %521 = load i32, i32* %4, align 4
  ret i32 %521
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opng_analyze_bits(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.png_color_16_struct*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %22 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %23 = call i32 @png_get_IHDR(%struct.png_struct_def* noundef %21, %struct.png_info_def* noundef %22, i32* noundef %11, i32* noundef %10, i32* noundef %12, i32* noundef %13, i32* noundef null, i32* noundef null, i32* noundef null)
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %371

27:                                               ; preds = %3
  %28 = load i32, i32* %13, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %371

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  %34 = sdiv i32 %33, 8
  store i32 %34, i32* %14, align 4
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %36 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %37 = call zeroext i8 @png_get_channels(%struct.png_struct_def* noundef %35, %struct.png_info_def* noundef %36)
  %38 = zext i8 %37 to i32
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %14, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %15, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* %14, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 13
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sle i32 %48, 8
  br i1 %49, label %50, label %53

50:                                               ; preds = %32
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, -2
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %32
  %54 = load i32, i32* %13, align 4
  %55 = and i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, -5
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %13, align 4
  %62 = and i32 %61, 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, -9
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %69 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %70 = call i32 @png_get_bKGD(%struct.png_struct_def* noundef %68, %struct.png_info_def* noundef %69, %struct.png_color_16_struct** noundef %18)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %137

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %72
  %77 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %18, align 8
  %78 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %77, i32 0, i32 1
  %79 = load i16, i16* %78, align 2
  %80 = zext i16 %79 to i32
  %81 = srem i32 %80, 257
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %104, label %83

83:                                               ; preds = %76
  %84 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %18, align 8
  %85 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %84, i32 0, i32 2
  %86 = load i16, i16* %85, align 2
  %87 = zext i16 %86 to i32
  %88 = srem i32 %87, 257
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %83
  %91 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %18, align 8
  %92 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %91, i32 0, i32 3
  %93 = load i16, i16* %92, align 2
  %94 = zext i16 %93 to i32
  %95 = srem i32 %94, 257
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %18, align 8
  %99 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %98, i32 0, i32 4
  %100 = load i16, i16* %99, align 2
  %101 = zext i16 %100 to i32
  %102 = srem i32 %101, 257
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97, %90, %83, %76
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, -2
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %104, %97
  br label %108

108:                                              ; preds = %107, %72
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %108
  %113 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %18, align 8
  %114 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %113, i32 0, i32 1
  %115 = load i16, i16* %114, align 2
  %116 = zext i16 %115 to i32
  %117 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %18, align 8
  %118 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %117, i32 0, i32 2
  %119 = load i16, i16* %118, align 2
  %120 = zext i16 %119 to i32
  %121 = icmp ne i32 %116, %120
  br i1 %121, label %132, label %122

122:                                              ; preds = %112
  %123 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %18, align 8
  %124 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %123, i32 0, i32 1
  %125 = load i16, i16* %124, align 2
  %126 = zext i16 %125 to i32
  %127 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %18, align 8
  %128 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %127, i32 0, i32 3
  %129 = load i16, i16* %128, align 2
  %130 = zext i16 %129 to i32
  %131 = icmp ne i32 %126, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %122, %112
  %133 = load i32, i32* %7, align 4
  %134 = and i32 %133, -5
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %132, %122
  br label %136

136:                                              ; preds = %135, %108
  br label %137

137:                                              ; preds = %136, %67
  %138 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %139 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %140 = call i8** @png_get_rows(%struct.png_struct_def* noundef %138, %struct.png_info_def* noundef %139)
  store i8** %140, i8*** %8, align 8
  store i32 0, i32* %19, align 4
  br label %141

141:                                              ; preds = %364, %137
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %145, label %369

145:                                              ; preds = %141
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %371

149:                                              ; preds = %145
  %150 = load i32, i32* %7, align 4
  %151 = and i32 %150, 1
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %182

153:                                              ; preds = %149
  %154 = load i8**, i8*** %8, align 8
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %9, align 8
  store i32 0, i32* %20, align 4
  br label %156

156:                                              ; preds = %176, %153
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %11, align 4
  %160 = mul i32 %158, %159
  %161 = icmp ult i32 %157, %160
  br i1 %161, label %162, label %181

162:                                              ; preds = %156
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i8*, i8** %9, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp ne i32 %166, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %162
  %173 = load i32, i32* %7, align 4
  %174 = and i32 %173, -2
  store i32 %174, i32* %7, align 4
  br label %181

175:                                              ; preds = %162
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %20, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %20, align 4
  %179 = load i8*, i8** %9, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  store i8* %180, i8** %9, align 8
  br label %156, !llvm.loop !19

181:                                              ; preds = %172, %156
  br label %182

182:                                              ; preds = %181, %149
  %183 = load i32, i32* %12, align 4
  %184 = icmp eq i32 %183, 8
  br i1 %184, label %185, label %261

185:                                              ; preds = %182
  %186 = load i32, i32* %7, align 4
  %187 = and i32 %186, 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %228

189:                                              ; preds = %185
  %190 = load i8**, i8*** %8, align 8
  %191 = load i8*, i8** %190, align 8
  store i8* %191, i8** %9, align 8
  store i32 0, i32* %20, align 4
  br label %192

192:                                              ; preds = %220, %189
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp ult i32 %193, %194
  br i1 %195, label %196, label %227

196:                                              ; preds = %192
  %197 = load i8*, i8** %9, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = load i8*, i8** %9, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp ne i32 %200, %204
  br i1 %205, label %216, label %206

206:                                              ; preds = %196
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = load i8*, i8** %9, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 2
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp ne i32 %210, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %206, %196
  %217 = load i32, i32* %7, align 4
  %218 = and i32 %217, -5
  store i32 %218, i32* %7, align 4
  br label %227

219:                                              ; preds = %206
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %20, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %20, align 4
  %223 = load i32, i32* %16, align 4
  %224 = load i8*, i8** %9, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8* %226, i8** %9, align 8
  br label %192, !llvm.loop !20

227:                                              ; preds = %216, %192
  br label %228

228:                                              ; preds = %227, %185
  %229 = load i32, i32* %7, align 4
  %230 = and i32 %229, 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %260

232:                                              ; preds = %228
  %233 = load i8**, i8*** %8, align 8
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* %17, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  store i8* %237, i8** %9, align 8
  store i32 0, i32* %20, align 4
  br label %238

238:                                              ; preds = %252, %232
  %239 = load i32, i32* %20, align 4
  %240 = load i32, i32* %11, align 4
  %241 = icmp ult i32 %239, %240
  br i1 %241, label %242, label %259

242:                                              ; preds = %238
  %243 = load i8*, i8** %9, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 0
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp ne i32 %246, 255
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load i32, i32* %7, align 4
  %250 = and i32 %249, -9
  store i32 %250, i32* %7, align 4
  br label %259

251:                                              ; preds = %242
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %20, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %20, align 4
  %255 = load i32, i32* %16, align 4
  %256 = load i8*, i8** %9, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i8, i8* %256, i64 %257
  store i8* %258, i8** %9, align 8
  br label %238, !llvm.loop !21

259:                                              ; preds = %248, %238
  br label %260

260:                                              ; preds = %259, %228
  br label %363

261:                                              ; preds = %182
  %262 = load i32, i32* %7, align 4
  %263 = and i32 %262, 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %324

265:                                              ; preds = %261
  %266 = load i8**, i8*** %8, align 8
  %267 = load i8*, i8** %266, align 8
  store i8* %267, i8** %9, align 8
  store i32 0, i32* %20, align 4
  br label %268

268:                                              ; preds = %316, %265
  %269 = load i32, i32* %20, align 4
  %270 = load i32, i32* %11, align 4
  %271 = icmp ult i32 %269, %270
  br i1 %271, label %272, label %323

272:                                              ; preds = %268
  %273 = load i8*, i8** %9, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 0
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i32
  %277 = load i8*, i8** %9, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 2
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = icmp ne i32 %276, %280
  br i1 %281, label %312, label %282

282:                                              ; preds = %272
  %283 = load i8*, i8** %9, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 0
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = load i8*, i8** %9, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 4
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = icmp ne i32 %286, %290
  br i1 %291, label %312, label %292

292:                                              ; preds = %282
  %293 = load i8*, i8** %9, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 1
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  %297 = load i8*, i8** %9, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 3
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i32
  %301 = icmp ne i32 %296, %300
  br i1 %301, label %312, label %302

302:                                              ; preds = %292
  %303 = load i8*, i8** %9, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 1
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = load i8*, i8** %9, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 5
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  %311 = icmp ne i32 %306, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %302, %292, %282, %272
  %313 = load i32, i32* %7, align 4
  %314 = and i32 %313, -5
  store i32 %314, i32* %7, align 4
  br label %323

315:                                              ; preds = %302
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %20, align 4
  %318 = add i32 %317, 1
  store i32 %318, i32* %20, align 4
  %319 = load i32, i32* %16, align 4
  %320 = load i8*, i8** %9, align 8
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i8, i8* %320, i64 %321
  store i8* %322, i8** %9, align 8
  br label %268, !llvm.loop !22

323:                                              ; preds = %312, %268
  br label %324

324:                                              ; preds = %323, %261
  %325 = load i32, i32* %7, align 4
  %326 = and i32 %325, 8
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %362

328:                                              ; preds = %324
  %329 = load i8**, i8*** %8, align 8
  %330 = load i8*, i8** %329, align 8
  %331 = load i32, i32* %17, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %330, i64 %332
  store i8* %333, i8** %9, align 8
  store i32 0, i32* %20, align 4
  br label %334

334:                                              ; preds = %354, %328
  %335 = load i32, i32* %20, align 4
  %336 = load i32, i32* %11, align 4
  %337 = icmp ult i32 %335, %336
  br i1 %337, label %338, label %361

338:                                              ; preds = %334
  %339 = load i8*, i8** %9, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 0
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = icmp ne i32 %342, 255
  br i1 %343, label %350, label %344

344:                                              ; preds = %338
  %345 = load i8*, i8** %9, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 1
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i32
  %349 = icmp ne i32 %348, 255
  br i1 %349, label %350, label %353

350:                                              ; preds = %344, %338
  %351 = load i32, i32* %7, align 4
  %352 = and i32 %351, -9
  store i32 %352, i32* %7, align 4
  br label %361

353:                                              ; preds = %344
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %20, align 4
  %356 = add i32 %355, 1
  store i32 %356, i32* %20, align 4
  %357 = load i32, i32* %16, align 4
  %358 = load i8*, i8** %9, align 8
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i8, i8* %358, i64 %359
  store i8* %360, i8** %9, align 8
  br label %334, !llvm.loop !23

361:                                              ; preds = %350, %334
  br label %362

362:                                              ; preds = %361, %324
  br label %363

363:                                              ; preds = %362, %260
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %19, align 4
  %366 = add i32 %365, 1
  store i32 %366, i32* %19, align 4
  %367 = load i8**, i8*** %8, align 8
  %368 = getelementptr inbounds i8*, i8** %367, i32 1
  store i8** %368, i8*** %8, align 8
  br label %141, !llvm.loop !24

369:                                              ; preds = %141
  %370 = load i32, i32* %7, align 4
  store i32 %370, i32* %4, align 4
  br label %371

371:                                              ; preds = %369, %148, %31, %26
  %372 = load i32, i32* %4, align 4
  ret i32 %372
}

declare dso_local i32 @png_get_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

declare dso_local zeroext i8 @png_get_channels(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare dso_local i8** @png_get_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare dso_local i32 @png_get_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8** noundef, i32* noundef, %struct.png_color_16_struct** noundef) #1

declare dso_local void @png_free_data(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @png_set_invalid(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

declare dso_local i32 @png_get_bKGD(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_16_struct** noundef) #1

declare dso_local i32 @png_get_sBIT(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_8_struct** noundef) #1

declare dso_local void @png_set_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @png_get_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_struct** noundef, i32* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opng_analyze_sample_usage(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.png_color_16_struct*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %20 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %21 = call i32 @png_get_image_height(%struct.png_struct_def* noundef %19, %struct.png_info_def* noundef %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %23 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %24 = call i32 @png_get_image_width(%struct.png_struct_def* noundef %22, %struct.png_info_def* noundef %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %27 = call zeroext i8 @png_get_bit_depth(%struct.png_struct_def* noundef %25, %struct.png_info_def* noundef %26)
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %30 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %31 = call i8** @png_get_rows(%struct.png_struct_def* noundef %29, %struct.png_info_def* noundef %30)
  store i8** %31, i8*** %7, align 8
  %32 = load i8*, i8** %6, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %32, i8 0, i64 256, i1 false)
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %35, label %65

35:                                               ; preds = %3
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  store i32 0, i32* %18, align 4
  %41 = load i8**, i8*** %7, align 8
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %53, %40
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 1, i8* %52, align 1
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %18, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %18, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  br label %43, !llvm.loop !25

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %17, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %17, align 4
  %62 = load i8**, i8*** %7, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %7, align 8
  br label %36, !llvm.loop !26

64:                                               ; preds = %36
  br label %129

65:                                               ; preds = %3
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %70

69:                                               ; preds = %65
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1039, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.opng_analyze_sample_usage, i64 0, i64 0)) #5
  unreachable

70:                                               ; preds = %68
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 8, %71
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = shl i32 1, %73
  %75 = sub nsw i32 256, %74
  store i32 %75, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %76

76:                                               ; preds = %123, %70
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %128

80:                                               ; preds = %76
  store i32 0, i32* %18, align 4
  %81 = load i8**, i8*** %7, align 8
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %8, align 8
  br label %83

83:                                               ; preds = %119, %80
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %122

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %116, %87
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i32, i32* %15, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* %14, align 4
  %98 = ashr i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %91, i64 %99
  store i8 1, i8* %100, align 1
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %15, align 4
  %103 = ashr i32 %102, %101
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %18, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %18, align 4
  br label %109

109:                                              ; preds = %90
  %110 = load i32, i32* %15, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ult i32 %113, %114
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi i1 [ false, %109 ], [ %115, %112 ]
  br i1 %117, label %90, label %118, !llvm.loop !27

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %118
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %8, align 8
  br label %83, !llvm.loop !28

122:                                              ; preds = %83
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %17, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %17, align 4
  %126 = load i8**, i8*** %7, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i32 1
  store i8** %127, i8*** %7, align 8
  br label %76, !llvm.loop !29

128:                                              ; preds = %76
  br label %129

129:                                              ; preds = %128, %64
  %130 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %131 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %132 = call i32 @png_get_bKGD(%struct.png_struct_def* noundef %130, %struct.png_info_def* noundef %131, %struct.png_color_16_struct** noundef %16)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i8*, i8** %6, align 8
  %136 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %16, align 8
  %137 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %136, i32 0, i32 0
  %138 = load i8, i8* %137, align 2
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds i8, i8* %135, i64 %139
  store i8 1, i8* %140, align 1
  br label %141

141:                                              ; preds = %134, %129
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opng_realloc_PLTE(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x %struct.png_color_struct], align 16
  %8 = alloca %struct.png_color_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %14

13:                                               ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.opng_realloc_PLTE, i64 0, i64 0)) #5
  unreachable

14:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %16 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %17 = call i32 @png_get_PLTE(%struct.png_struct_def* noundef %15, %struct.png_info_def* noundef %16, %struct.png_color_struct** noundef %8, i32* noundef %9)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %49

22:                                               ; preds = %14
  %23 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %7, i64 0, i64 0
  %24 = bitcast %struct.png_color_struct* %23 to i8*
  %25 = load %struct.png_color_struct*, %struct.png_color_struct** %8, align 8
  %26 = bitcast %struct.png_color_struct* %25 to i8*
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 1 %26, i64 %29, i1 false)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %7, i64 0, i64 0
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %34, i64 %36
  %38 = bitcast %struct.png_color_struct* %37 to i8*
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 3
  call void @llvm.memset.p0i8.i64(i8* align 1 %38, i8 0, i64 %43, i1 false)
  br label %44

44:                                               ; preds = %33, %22
  %45 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %46 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %47 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %7, i64 0, i64 0
  %48 = load i32, i32* %6, align 4
  call void @png_set_PLTE(%struct.png_struct_def* noundef %45, %struct.png_info_def* noundef %46, %struct.png_color_struct* noundef %47, i32 noundef %48)
  br label %49

49:                                               ; preds = %44, %21
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opng_realloc_tRNS(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %14

13:                                               ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.opng_realloc_tRNS, i64 0, i64 0)) #5
  unreachable

14:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %16 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %17 = call i32 @png_get_tRNS(%struct.png_struct_def* noundef %15, %struct.png_info_def* noundef %16, i8** noundef %8, i32* noundef %9, %struct.png_color_16_struct** noundef null)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %44

22:                                               ; preds = %14
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 1 %24, i64 %26, i1 false)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %34, i8 0, i64 %38, i1 false)
  br label %39

39:                                               ; preds = %30, %22
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %41 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %43 = load i32, i32* %6, align 4
  call void @png_set_tRNS(%struct.png_struct_def* noundef %40, %struct.png_info_def* noundef %41, i8* noundef %42, i32 noundef %43, %struct.png_color_16_struct* noundef null)
  br label %44

44:                                               ; preds = %39, %21
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opng_reduce_palette_bits(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.png_color_struct*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %222

33:                                               ; preds = %3
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %35 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %36 = call i32 @png_get_IHDR(%struct.png_struct_def* noundef %34, %struct.png_info_def* noundef %35, i32* noundef %11, i32* noundef %12, i32* noundef %17, i32* noundef %13, i32* noundef %14, i32* noundef %15, i32* noundef %16)
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %222

40:                                               ; preds = %33
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %42 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %43 = call i32 @png_get_PLTE(%struct.png_struct_def* noundef %41, %struct.png_info_def* noundef %42, %struct.png_color_struct** noundef %25, i32* noundef %26)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 0, i32* %26, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %26, align 4
  %48 = icmp sgt i32 %47, 16
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %222

50:                                               ; preds = %46
  %51 = load i32, i32* %26, align 4
  %52 = icmp sgt i32 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 4, i32* %18, align 4
  br label %65

54:                                               ; preds = %50
  %55 = load i32, i32* %26, align 4
  %56 = icmp sgt i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 2, i32* %18, align 4
  br label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %26, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %63

62:                                               ; preds = %58
  call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 691, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @__PRETTY_FUNCTION__.opng_reduce_palette_bits, i64 0, i64 0)) #5
  unreachable

63:                                               ; preds = %61
  store i32 1, i32* %18, align 4
  br label %64

64:                                               ; preds = %63, %57
  br label %65

65:                                               ; preds = %64, %53
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %76

75:                                               ; preds = %70
  call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 697, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @__PRETTY_FUNCTION__.opng_reduce_palette_bits, i64 0, i64 0)) #5
  unreachable

76:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %222

77:                                               ; preds = %66
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %79 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %80 = call i8** @png_get_rows(%struct.png_struct_def* noundef %78, %struct.png_info_def* noundef %79)
  store i8** %80, i8*** %8, align 8
  %81 = load i32, i32* %17, align 4
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %83, label %138

83:                                               ; preds = %77
  store i32 0, i32* %27, align 4
  br label %84

84:                                               ; preds = %132, %83
  %85 = load i32, i32* %27, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %137

88:                                               ; preds = %84
  %89 = load i8**, i8*** %8, align 8
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %10, align 8
  store i8* %90, i8** %9, align 8
  store i32 8, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %28, align 4
  br label %91

91:                                               ; preds = %121, %88
  %92 = load i32, i32* %28, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %91
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %22, align 4
  %98 = sub i32 %97, %96
  store i32 %98, i32* %22, align 4
  %99 = load i32, i32* %22, align 4
  %100 = icmp ugt i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load i8*, i8** %9, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load i32, i32* %22, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* %24, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %24, align 4
  br label %118

109:                                              ; preds = %95
  %110 = load i32, i32* %24, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %110, %113
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %10, align 8
  store i8 %115, i8* %116, align 1
  store i32 8, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %118

118:                                              ; preds = %109, %101
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %9, align 8
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %28, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %28, align 4
  br label %91, !llvm.loop !30

124:                                              ; preds = %91
  %125 = load i32, i32* %22, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* %24, align 4
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %10, align 8
  store i8 %129, i8* %130, align 1
  br label %131

131:                                              ; preds = %127, %124
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %27, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %27, align 4
  %135 = load i8**, i8*** %8, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i32 1
  store i8** %136, i8*** %8, align 8
  br label %84, !llvm.loop !31

137:                                              ; preds = %84
  br label %212

138:                                              ; preds = %77
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 8, %139
  %141 = shl i32 1, %140
  %142 = sub nsw i32 %141, 256
  store i32 %142, i32* %19, align 4
  store i32 0, i32* %27, align 4
  br label %143

143:                                              ; preds = %206, %138
  %144 = load i32, i32* %27, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %147, label %211

147:                                              ; preds = %143
  %148 = load i8**, i8*** %8, align 8
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %10, align 8
  store i8* %149, i8** %9, align 8
  store i32 8, i32* %22, align 4
  store i32 8, i32* %21, align 4
  %150 = load i32, i32* %19, align 4
  store i32 %150, i32* %20, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %28, align 4
  br label %151

151:                                              ; preds = %195, %147
  %152 = load i32, i32* %28, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %155, label %198

155:                                              ; preds = %151
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %21, align 4
  %158 = sub i32 %157, %156
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %20, align 4
  %161 = lshr i32 %160, %159
  store i32 %161, i32* %20, align 4
  %162 = load i8*, i8** %9, align 8
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i32, i32* %20, align 4
  %166 = and i32 %164, %165
  %167 = load i32, i32* %21, align 4
  %168 = lshr i32 %166, %167
  store i32 %168, i32* %23, align 4
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %22, align 4
  %171 = sub i32 %170, %169
  store i32 %171, i32* %22, align 4
  %172 = load i32, i32* %22, align 4
  %173 = icmp ugt i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %155
  %175 = load i32, i32* %23, align 4
  %176 = load i32, i32* %22, align 4
  %177 = shl i32 %175, %176
  %178 = load i32, i32* %24, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %24, align 4
  br label %187

180:                                              ; preds = %155
  %181 = load i32, i32* %24, align 4
  %182 = load i32, i32* %23, align 4
  %183 = or i32 %181, %182
  %184 = trunc i32 %183 to i8
  %185 = load i8*, i8** %10, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %10, align 8
  store i8 %184, i8* %185, align 1
  store i32 8, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %187

187:                                              ; preds = %180, %174
  %188 = load i32, i32* %21, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  store i32 8, i32* %21, align 4
  %191 = load i32, i32* %19, align 4
  store i32 %191, i32* %20, align 4
  %192 = load i8*, i8** %9, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %9, align 8
  br label %194

194:                                              ; preds = %190, %187
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %28, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %28, align 4
  br label %151, !llvm.loop !32

198:                                              ; preds = %151
  %199 = load i32, i32* %22, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load i32, i32* %24, align 4
  %203 = trunc i32 %202 to i8
  %204 = load i8*, i8** %10, align 8
  store i8 %203, i8* %204, align 1
  br label %205

205:                                              ; preds = %201, %198
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %27, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %27, align 4
  %209 = load i8**, i8*** %8, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i32 1
  store i8** %210, i8*** %8, align 8
  br label %143, !llvm.loop !33

211:                                              ; preds = %143
  br label %212

212:                                              ; preds = %211, %137
  %213 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %214 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %16, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %213, %struct.png_info_def* noundef %214, i32 noundef %215, i32 noundef %216, i32 noundef %217, i32 noundef %218, i32 noundef %219, i32 noundef %220, i32 noundef %221)
  store i32 2, i32* %4, align 4
  br label %222

222:                                              ; preds = %212, %76, %49, %39, %32
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local void @png_set_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8* noundef, i32 noundef, %struct.png_color_16_struct* noundef) #1

declare dso_local i32 @png_get_hIST(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i16** noundef) #1

declare dso_local i32 @png_get_image_height(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare dso_local i32 @png_get_image_width(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @png_set_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_struct* noundef, i32 noundef) #1

declare dso_local noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opng_get_alpha_row(%struct.png_row_info_struct* noundef %0, %struct.png_color_16_struct* noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.png_row_info_struct*, align 8
  %6 = alloca %struct.png_color_16_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store %struct.png_row_info_struct* %0, %struct.png_row_info_struct** %5, align 8
  store %struct.png_color_16_struct* %1, %struct.png_color_16_struct** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %19 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %20 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %23 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %22, i32 0, i32 2
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %27 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %26, i32 0, i32 3
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %5, align 8
  %31 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %30, i32 0, i32 4
  %32 = load i8, i8* %31, align 2
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  br label %39

38:                                               ; preds = %4
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.opng_get_alpha_row, i64 0, i64 0)) #5
  unreachable

39:                                               ; preds = %37
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %44

43:                                               ; preds = %39
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.opng_get_alpha_row, i64 0, i64 0)) #5
  unreachable

44:                                               ; preds = %42
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %161, label %48

48:                                               ; preds = %44
  %49 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %6, align 8
  %50 = icmp eq %struct.png_color_16_struct* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %52, i8 -1, i64 %54, i1 false)
  br label %189

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %120

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %63

62:                                               ; preds = %58
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.opng_get_alpha_row, i64 0, i64 0)) #5
  unreachable

63:                                               ; preds = %61
  %64 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %6, align 8
  %65 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %64, i32 0, i32 1
  %66 = load i16, i16* %65, align 2
  %67 = trunc i16 %66 to i8
  store i8 %67, i8* %14, align 1
  %68 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %6, align 8
  %69 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %68, i32 0, i32 2
  %70 = load i16, i16* %69, align 2
  %71 = trunc i16 %70 to i8
  store i8 %71, i8* %15, align 1
  %72 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %6, align 8
  %73 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %72, i32 0, i32 3
  %74 = load i16, i16* %73, align 2
  %75 = trunc i16 %74 to i8
  store i8 %75, i8* %16, align 1
  %76 = load i8*, i8** %7, align 8
  store i8* %76, i8** %9, align 8
  store i32 0, i32* %18, align 4
  br label %77

77:                                               ; preds = %114, %63
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %119

81:                                               ; preds = %77
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* %14, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %81
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* %15, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %89
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* %16, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br label %105

105:                                              ; preds = %97, %89, %81
  %106 = phi i1 [ false, %89 ], [ false, %81 ], [ %104, %97 ]
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 0, i32 255
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %18, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 %109, i8* %113, align 1
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %18, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %18, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  store i8* %118, i8** %9, align 8
  br label %77, !llvm.loop !34

119:                                              ; preds = %77
  br label %160

120:                                              ; preds = %55
  %121 = load i32, i32* %11, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %125

124:                                              ; preds = %120
  call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.opng_get_alpha_row, i64 0, i64 0)) #5
  unreachable

125:                                              ; preds = %123
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %130

129:                                              ; preds = %125
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.opng_get_alpha_row, i64 0, i64 0)) #5
  unreachable

130:                                              ; preds = %128
  %131 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %6, align 8
  %132 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %131, i32 0, i32 4
  %133 = load i16, i16* %132, align 2
  %134 = trunc i16 %133 to i8
  store i8 %134, i8* %17, align 1
  store i32 0, i32* %18, align 4
  br label %135

135:                                              ; preds = %156, %130
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %135
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* %18, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = load i8, i8* %17, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %145, %147
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 0, i32 255
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* %18, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  store i8 %151, i8* %155, align 1
  br label %156

156:                                              ; preds = %139
  %157 = load i32, i32* %18, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %18, align 4
  br label %135, !llvm.loop !35

159:                                              ; preds = %135
  br label %160

160:                                              ; preds = %159, %119
  br label %189

161:                                              ; preds = %44
  %162 = load i32, i32* %13, align 4
  %163 = icmp sgt i32 %162, 1
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  br label %166

165:                                              ; preds = %161
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.opng_get_alpha_row, i64 0, i64 0)) #5
  unreachable

166:                                              ; preds = %164
  %167 = load i8*, i8** %7, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  store i8* %171, i8** %9, align 8
  store i32 0, i32* %18, align 4
  br label %172

172:                                              ; preds = %180, %166
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %189

176:                                              ; preds = %172
  %177 = load i8*, i8** %9, align 8
  %178 = load i8, i8* %177, align 1
  %179 = load i8*, i8** %8, align 8
  store i8 %178, i8* %179, align 1
  br label %180

180:                                              ; preds = %176
  %181 = load i32, i32* %18, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i8*, i8** %9, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8* %186, i8** %9, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %8, align 8
  br label %172, !llvm.loop !36

189:                                              ; preds = %51, %160, %172
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opng_insert_palette_entry(%struct.png_color_struct* noundef %0, i32* noundef %1, i8* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32* noundef %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.png_color_struct*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.png_color_struct* %0, %struct.png_color_struct** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %10
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %37

36:                                               ; preds = %30, %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([135 x i8], [135 x i8]* @__PRETTY_FUNCTION__.opng_insert_palette_entry, i64 0, i64 0)) #5
  unreachable

37:                                               ; preds = %35
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32*, i32** %15, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %49

48:                                               ; preds = %41, %37
  call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([135 x i8], [135 x i8]* @__PRETTY_FUNCTION__.opng_insert_palette_entry, i64 0, i64 0)) #5
  unreachable

49:                                               ; preds = %47
  %50 = load i32, i32* %20, align 4
  %51 = icmp ult i32 %50, 255
  br i1 %51, label %52, label %155

52:                                               ; preds = %49
  store i32 0, i32* %22, align 4
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %23, align 4
  br label %56

56:                                               ; preds = %153, %52
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* %23, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %154

60:                                               ; preds = %56
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %23, align 4
  %63 = add nsw i32 %61, %62
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %24, align 4
  %65 = load i32, i32* %20, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* %24, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %65, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %60
  %74 = load i32, i32* %20, align 4
  %75 = load i8*, i8** %14, align 8
  %76 = load i32, i32* %24, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = sub nsw i32 %74, %80
  br label %136

82:                                               ; preds = %60
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %85 = load i32, i32* %24, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %84, i64 %86
  %88 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %87, i32 0, i32 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %83, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %82
  %93 = load i32, i32* %17, align 4
  %94 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %95 = load i32, i32* %24, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %94, i64 %96
  %98 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %97, i32 0, i32 0
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = sub nsw i32 %93, %100
  br label %134

102:                                              ; preds = %82
  %103 = load i32, i32* %18, align 4
  %104 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %105 = load i32, i32* %24, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %104, i64 %106
  %108 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %107, i32 0, i32 1
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp ne i32 %103, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %102
  %113 = load i32, i32* %18, align 4
  %114 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %115 = load i32, i32* %24, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %114, i64 %116
  %118 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %117, i32 0, i32 1
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = sub nsw i32 %113, %120
  br label %132

122:                                              ; preds = %102
  %123 = load i32, i32* %19, align 4
  %124 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %125 = load i32, i32* %24, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %124, i64 %126
  %128 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %127, i32 0, i32 2
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = sub nsw i32 %123, %130
  br label %132

132:                                              ; preds = %122, %112
  %133 = phi i32 [ %121, %112 ], [ %131, %122 ]
  br label %134

134:                                              ; preds = %132, %92
  %135 = phi i32 [ %101, %92 ], [ %133, %132 ]
  br label %136

136:                                              ; preds = %134, %73
  %137 = phi i32 [ %81, %73 ], [ %135, %134 ]
  store i32 %137, i32* %25, align 4
  %138 = load i32, i32* %25, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* %24, align 4
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %23, align 4
  br label %153

143:                                              ; preds = %136
  %144 = load i32, i32* %25, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %24, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %22, align 4
  br label %152

149:                                              ; preds = %143
  %150 = load i32, i32* %24, align 4
  %151 = load i32*, i32** %21, align 8
  store i32 %150, i32* %151, align 4
  store i32 0, i32* %11, align 4
  br label %422

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152, %140
  br label %56, !llvm.loop !37

154:                                              ; preds = %56
  br label %240

155:                                              ; preds = %49
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %22, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, 1
  store i32 %160, i32* %23, align 4
  br label %161

161:                                              ; preds = %238, %155
  %162 = load i32, i32* %22, align 4
  %163 = load i32, i32* %23, align 4
  %164 = icmp sle i32 %162, %163
  br i1 %164, label %165, label %239

165:                                              ; preds = %161
  %166 = load i32, i32* %22, align 4
  %167 = load i32, i32* %23, align 4
  %168 = add nsw i32 %166, %167
  %169 = sdiv i32 %168, 2
  store i32 %169, i32* %24, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %172 = load i32, i32* %24, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %171, i64 %173
  %175 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %174, i32 0, i32 0
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp ne i32 %170, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %165
  %180 = load i32, i32* %17, align 4
  %181 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %182 = load i32, i32* %24, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %181, i64 %183
  %185 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %184, i32 0, i32 0
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = sub nsw i32 %180, %187
  br label %221

189:                                              ; preds = %165
  %190 = load i32, i32* %18, align 4
  %191 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %192 = load i32, i32* %24, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %191, i64 %193
  %195 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %194, i32 0, i32 1
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp ne i32 %190, %197
  br i1 %198, label %199, label %209

199:                                              ; preds = %189
  %200 = load i32, i32* %18, align 4
  %201 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %202 = load i32, i32* %24, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %201, i64 %203
  %205 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %204, i32 0, i32 1
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = sub nsw i32 %200, %207
  br label %219

209:                                              ; preds = %189
  %210 = load i32, i32* %19, align 4
  %211 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %212 = load i32, i32* %24, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %211, i64 %213
  %215 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %214, i32 0, i32 2
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = sub nsw i32 %210, %217
  br label %219

219:                                              ; preds = %209, %199
  %220 = phi i32 [ %208, %199 ], [ %218, %209 ]
  br label %221

221:                                              ; preds = %219, %179
  %222 = phi i32 [ %188, %179 ], [ %220, %219 ]
  store i32 %222, i32* %25, align 4
  %223 = load i32, i32* %25, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i32, i32* %24, align 4
  %227 = sub nsw i32 %226, 1
  store i32 %227, i32* %23, align 4
  br label %238

228:                                              ; preds = %221
  %229 = load i32, i32* %25, align 4
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32, i32* %24, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %22, align 4
  br label %237

234:                                              ; preds = %228
  %235 = load i32, i32* %24, align 4
  %236 = load i32*, i32** %21, align 8
  store i32 %235, i32* %236, align 4
  store i32 0, i32* %11, align 4
  br label %422

237:                                              ; preds = %231
  br label %238

238:                                              ; preds = %237, %225
  br label %161, !llvm.loop !38

239:                                              ; preds = %161
  br label %240

240:                                              ; preds = %239, %154
  %241 = load i32, i32* %20, align 4
  %242 = icmp ugt i32 %241, 255
  br i1 %242, label %243, label %313

243:                                              ; preds = %240
  store i32 0, i32* %26, align 4
  br label %244

244:                                              ; preds = %309, %243
  %245 = load i32, i32* %26, align 4
  %246 = load i32*, i32** %15, align 8
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %245, %247
  br i1 %248, label %249, label %312

249:                                              ; preds = %244
  %250 = load i32, i32* %17, align 4
  %251 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %252 = load i32, i32* %26, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %251, i64 %253
  %255 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %254, i32 0, i32 0
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = icmp ne i32 %250, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %249
  %260 = load i32, i32* %17, align 4
  %261 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %262 = load i32, i32* %26, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %261, i64 %263
  %265 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %264, i32 0, i32 0
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = sub nsw i32 %260, %267
  br label %301

269:                                              ; preds = %249
  %270 = load i32, i32* %18, align 4
  %271 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %272 = load i32, i32* %26, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %271, i64 %273
  %275 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %274, i32 0, i32 1
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = icmp ne i32 %270, %277
  br i1 %278, label %279, label %289

279:                                              ; preds = %269
  %280 = load i32, i32* %18, align 4
  %281 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %282 = load i32, i32* %26, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %281, i64 %283
  %285 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %284, i32 0, i32 1
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = sub nsw i32 %280, %287
  br label %299

289:                                              ; preds = %269
  %290 = load i32, i32* %19, align 4
  %291 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %292 = load i32, i32* %26, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %291, i64 %293
  %295 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %294, i32 0, i32 2
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = sub nsw i32 %290, %297
  br label %299

299:                                              ; preds = %289, %279
  %300 = phi i32 [ %288, %279 ], [ %298, %289 ]
  br label %301

301:                                              ; preds = %299, %259
  %302 = phi i32 [ %268, %259 ], [ %300, %299 ]
  store i32 %302, i32* %25, align 4
  %303 = load i32, i32* %25, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load i32, i32* %26, align 4
  %307 = load i32*, i32** %21, align 8
  store i32 %306, i32* %307, align 4
  store i32 0, i32* %11, align 4
  br label %422

308:                                              ; preds = %301
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %26, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %26, align 4
  br label %244, !llvm.loop !39

312:                                              ; preds = %244
  br label %313

313:                                              ; preds = %312, %240
  %314 = load i32*, i32** %13, align 8
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %16, align 4
  %317 = icmp sge i32 %315, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %313
  %319 = load i32*, i32** %21, align 8
  store i32 -1, i32* %319, align 4
  %320 = load i32*, i32** %15, align 8
  store i32 -1, i32* %320, align 4
  %321 = load i32*, i32** %13, align 8
  store i32 -1, i32* %321, align 4
  store i32 -1, i32* %11, align 4
  br label %422

322:                                              ; preds = %313
  %323 = load i32, i32* %22, align 4
  %324 = icmp sge i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load i32, i32* %22, align 4
  %327 = load i32*, i32** %13, align 8
  %328 = load i32, i32* %327, align 4
  %329 = icmp sle i32 %326, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %325
  br label %332

331:                                              ; preds = %325, %322
  call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([135 x i8], [135 x i8]* @__PRETTY_FUNCTION__.opng_insert_palette_entry, i64 0, i64 0)) #5
  unreachable

332:                                              ; preds = %330
  %333 = load i32*, i32** %13, align 8
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %26, align 4
  br label %335

335:                                              ; preds = %351, %332
  %336 = load i32, i32* %26, align 4
  %337 = load i32, i32* %22, align 4
  %338 = icmp sgt i32 %336, %337
  br i1 %338, label %339, label %354

339:                                              ; preds = %335
  %340 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %341 = load i32, i32* %26, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %340, i64 %342
  %344 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %345 = load i32, i32* %26, align 4
  %346 = sub nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %344, i64 %347
  %349 = bitcast %struct.png_color_struct* %343 to i8*
  %350 = bitcast %struct.png_color_struct* %348 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %349, i8* align 1 %350, i64 3, i1 false)
  br label %351

351:                                              ; preds = %339
  %352 = load i32, i32* %26, align 4
  %353 = add nsw i32 %352, -1
  store i32 %353, i32* %26, align 4
  br label %335, !llvm.loop !40

354:                                              ; preds = %335
  %355 = load i32, i32* %17, align 4
  %356 = trunc i32 %355 to i8
  %357 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %358 = load i32, i32* %22, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %357, i64 %359
  %361 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %360, i32 0, i32 0
  store i8 %356, i8* %361, align 1
  %362 = load i32, i32* %18, align 4
  %363 = trunc i32 %362 to i8
  %364 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %365 = load i32, i32* %22, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %364, i64 %366
  %368 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %367, i32 0, i32 1
  store i8 %363, i8* %368, align 1
  %369 = load i32, i32* %19, align 4
  %370 = trunc i32 %369 to i8
  %371 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %372 = load i32, i32* %22, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %371, i64 %373
  %375 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %374, i32 0, i32 2
  store i8 %370, i8* %375, align 1
  %376 = load i32*, i32** %13, align 8
  %377 = load i32, i32* %376, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %376, align 4
  %379 = load i32, i32* %20, align 4
  %380 = icmp ult i32 %379, 255
  br i1 %380, label %381, label %419

381:                                              ; preds = %354
  %382 = load i32, i32* %22, align 4
  %383 = load i32*, i32** %15, align 8
  %384 = load i32, i32* %383, align 4
  %385 = icmp sle i32 %382, %384
  br i1 %385, label %386, label %387

386:                                              ; preds = %381
  br label %388

387:                                              ; preds = %381
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([135 x i8], [135 x i8]* @__PRETTY_FUNCTION__.opng_insert_palette_entry, i64 0, i64 0)) #5
  unreachable

388:                                              ; preds = %386
  %389 = load i32*, i32** %15, align 8
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %26, align 4
  br label %391

391:                                              ; preds = %406, %388
  %392 = load i32, i32* %26, align 4
  %393 = load i32, i32* %22, align 4
  %394 = icmp sgt i32 %392, %393
  br i1 %394, label %395, label %409

395:                                              ; preds = %391
  %396 = load i8*, i8** %14, align 8
  %397 = load i32, i32* %26, align 4
  %398 = sub nsw i32 %397, 1
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %396, i64 %399
  %401 = load i8, i8* %400, align 1
  %402 = load i8*, i8** %14, align 8
  %403 = load i32, i32* %26, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %402, i64 %404
  store i8 %401, i8* %405, align 1
  br label %406

406:                                              ; preds = %395
  %407 = load i32, i32* %26, align 4
  %408 = add nsw i32 %407, -1
  store i32 %408, i32* %26, align 4
  br label %391, !llvm.loop !41

409:                                              ; preds = %391
  %410 = load i32, i32* %20, align 4
  %411 = trunc i32 %410 to i8
  %412 = load i8*, i8** %14, align 8
  %413 = load i32, i32* %22, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %412, i64 %414
  store i8 %411, i8* %415, align 1
  %416 = load i32*, i32** %15, align 8
  %417 = load i32, i32* %416, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %416, align 4
  br label %419

419:                                              ; preds = %409, %354
  %420 = load i32, i32* %22, align 4
  %421 = load i32*, i32** %21, align 8
  store i32 %420, i32* %421, align 4
  store i32 1, i32* %11, align 4
  br label %422

422:                                              ; preds = %419, %318, %305, %234, %149
  %423 = load i32, i32* %11, align 4
  ret i32 %423
}

declare dso_local void @png_free(%struct.png_struct_def* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
