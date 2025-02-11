; ModuleID = 'opngreduc.c'
source_filename = "opngreduc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [66 x i8] c"Image reduction requires the presence of all critical information\00", align 1
@__func__.opng_reduce_bits = private unnamed_addr constant [17 x i8] c"opng_reduce_bits\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"opngreduc.c\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"src_bit_depth >= 8\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"src_bit_depth == 16\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"src_color_type & 2\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"src_color_type & 4\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"src_sample_size > dest_sample_size\00", align 1
@__func__.opng_reduce_palette = private unnamed_addr constant [20 x i8] c"opng_reduce_palette\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"trans_alpha != ((void*)0) && num_trans > 0\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"last_color_index >= 0\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"last_color_index >= last_trans_index\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Too few colors in PLTE\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"num_palette == last_color_index + 1\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Too many alpha values in tRNS\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"num_trans == last_trans_index + 1\00", align 1
@__func__.opng_analyze_sample_usage = private unnamed_addr constant [26 x i8] c"opng_analyze_sample_usage\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"bit_depth < 8\00", align 1
@__func__.opng_realloc_PLTE = private unnamed_addr constant [18 x i8] c"opng_realloc_PLTE\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"num_palette > 0\00", align 1
@__func__.opng_realloc_tRNS = private unnamed_addr constant [18 x i8] c"opng_realloc_tRNS\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"num_trans > 0\00", align 1
@__func__.opng_reduce_palette_bits = private unnamed_addr constant [25 x i8] c"opng_reduce_palette_bits\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"src_bit_depth == dest_bit_depth\00", align 1
@__func__.opng_reduce_to_palette = private unnamed_addr constant [23 x i8] c"opng_reduce_to_palette\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"!(color_type & 1)\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"num_palette < 0\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"num_palette > 0 && num_palette <= 256\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"num_trans >= 0 && num_trans <= num_palette\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"index >= 0\00", align 1
@__func__.opng_get_alpha_row = private unnamed_addr constant [19 x i8] c"opng_get_alpha_row\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"bit_depth == 8\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"channels == 3\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"color_type == 0\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"channels == 1\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"channels > 1\00", align 1
@__func__.opng_insert_palette_entry = private unnamed_addr constant [26 x i8] c"opng_insert_palette_entry\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"*num_palette >= 0 && *num_palette <= max_tuples\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"*num_trans >= 0 && *num_trans <= *num_palette\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"low >= 0 && low <= *num_palette\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"low <= *num_trans\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_validate_image(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1) #0 {
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

declare zeroext i8 @png_get_bit_depth(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare zeroext i8 @png_get_color_type(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare i32 @png_get_valid(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_reduce_image(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
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

declare void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %26 = alloca [8 x i32], align 4
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
  br label %499

41:                                               ; preds = %3
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %43 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %44 = call i32 @png_get_IHDR(%struct.png_struct_def* noundef %42, %struct.png_info_def* noundef %43, i32* noundef %11, i32* noundef %12, i32* noundef %16, i32* noundef %20, i32* noundef %13, i32* noundef %14, i32* noundef %15)
  %45 = load i32, i32* %16, align 4
  %46 = icmp sge i32 %45, 8
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.opng_reduce_bits, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 506, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)) #6
  unreachable

52:                                               ; No predecessors!
  br label %54

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i32, i32* %16, align 4
  %60 = icmp eq i32 %59, 16
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.opng_reduce_bits, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 509, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)) #6
  unreachable

66:                                               ; No predecessors!
  br label %68

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %66
  store i32 8, i32* %17, align 4
  br label %71

69:                                               ; preds = %54
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %17, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = load i32, i32* %16, align 4
  %73 = sdiv i32 %72, 8
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %17, align 4
  %75 = sdiv i32 %74, 8
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %20, align 4
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %71
  %81 = load i32, i32* %20, align 4
  %82 = and i32 %81, 2
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.opng_reduce_bits, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 521, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0)) #6
  unreachable

89:                                               ; No predecessors!
  br label %91

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32, i32* %21, align 4
  %93 = and i32 %92, -3
  store i32 %93, i32* %21, align 4
  br label %94

94:                                               ; preds = %91, %71
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load i32, i32* %20, align 4
  %100 = and i32 %99, 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = sext i32 %103 to i64
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.opng_reduce_bits, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 526, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #6
  unreachable

107:                                              ; No predecessors!
  br label %109

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %107
  %110 = load i32, i32* %21, align 4
  %111 = and i32 %110, -5
  store i32 %111, i32* %21, align 4
  br label %112

112:                                              ; preds = %109, %94
  %113 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %114 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %115 = call zeroext i8 @png_get_channels(%struct.png_struct_def* noundef %113, %struct.png_info_def* noundef %114)
  %116 = zext i8 %115 to i32
  store i32 %116, i32* %22, align 4
  %117 = load i32, i32* %21, align 4
  %118 = and i32 %117, 2
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 3, i32 1
  %122 = load i32, i32* %21, align 4
  %123 = and i32 %122, 4
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 1, i32 0
  %127 = add nsw i32 %121, %126
  store i32 %127, i32* %23, align 4
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* %18, align 4
  %130 = mul nsw i32 %128, %129
  store i32 %130, i32* %24, align 4
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %19, align 4
  %133 = mul nsw i32 %131, %132
  store i32 %133, i32* %25, align 4
  store i32 0, i32* %32, align 4
  br label %134

134:                                              ; preds = %148, %112
  %135 = load i32, i32* %32, align 4
  %136 = load i32, i32* %19, align 4
  %137 = mul nsw i32 4, %136
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = load i32, i32* %32, align 4
  %141 = load i32, i32* %16, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %17, align 4
  %144 = sdiv i32 %142, %143
  %145 = load i32, i32* %32, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 %146
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %32, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %32, align 4
  br label %134, !llvm.loop !10

151:                                              ; preds = %134
  %152 = load i32, i32* %7, align 4
  %153 = and i32 %152, 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %151
  %156 = load i32, i32* %21, align 4
  %157 = and i32 %156, 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %182

159:                                              ; preds = %155
  %160 = load i32, i32* %19, align 4
  %161 = mul nsw i32 3, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %19, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 %166
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* %19, align 4
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %170, label %181

170:                                              ; preds = %159
  %171 = load i32, i32* %19, align 4
  %172 = mul nsw i32 3, %171
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 %179
  store i32 %176, i32* %180, align 4
  br label %181

181:                                              ; preds = %170, %159
  br label %182

182:                                              ; preds = %181, %155, %151
  %183 = load i32, i32* %24, align 4
  %184 = load i32, i32* %25, align 4
  %185 = icmp sgt i32 %183, %184
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = sext i32 %187 to i64
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %182
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.opng_reduce_bits, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 551, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0)) #6
  unreachable

191:                                              ; No predecessors!
  br label %193

192:                                              ; preds = %182
  br label %193

193:                                              ; preds = %192, %191
  %194 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %195 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %196 = call i8** @png_get_rows(%struct.png_struct_def* noundef %194, %struct.png_info_def* noundef %195)
  store i8** %196, i8*** %8, align 8
  store i32 0, i32* %30, align 4
  br label %197

197:                                              ; preds = %242, %193
  %198 = load i32, i32* %30, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %201, label %247

201:                                              ; preds = %197
  %202 = load i8**, i8*** %8, align 8
  %203 = load i8*, i8** %202, align 8
  store i8* %203, i8** %10, align 8
  store i8* %203, i8** %9, align 8
  store i32 0, i32* %31, align 4
  br label %204

204:                                              ; preds = %238, %201
  %205 = load i32, i32* %31, align 4
  %206 = load i32, i32* %11, align 4
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %208, label %241

208:                                              ; preds = %204
  store i32 0, i32* %32, align 4
  br label %209

209:                                              ; preds = %226, %208
  %210 = load i32, i32* %32, align 4
  %211 = load i32, i32* %25, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %229

213:                                              ; preds = %209
  %214 = load i8*, i8** %9, align 8
  %215 = load i32, i32* %32, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %214, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = load i8*, i8** %10, align 8
  %223 = load i32, i32* %32, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  store i8 %221, i8* %225, align 1
  br label %226

226:                                              ; preds = %213
  %227 = load i32, i32* %32, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %32, align 4
  br label %209, !llvm.loop !12

229:                                              ; preds = %209
  %230 = load i32, i32* %24, align 4
  %231 = load i8*, i8** %9, align 8
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i8, i8* %231, i64 %232
  store i8* %233, i8** %9, align 8
  %234 = load i32, i32* %25, align 4
  %235 = load i8*, i8** %10, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %10, align 8
  br label %238

238:                                              ; preds = %229
  %239 = load i32, i32* %31, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %31, align 4
  br label %204, !llvm.loop !13

241:                                              ; preds = %204
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %30, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %30, align 4
  %245 = load i8**, i8*** %8, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i32 1
  store i8** %246, i8*** %8, align 8
  br label %197, !llvm.loop !14

247:                                              ; preds = %197
  %248 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %249 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %250 = call i32 @png_get_tRNS(%struct.png_struct_def* noundef %248, %struct.png_info_def* noundef %249, i8** noundef null, i32* noundef null, %struct.png_color_16_struct** noundef %27)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %352

252:                                              ; preds = %247
  %253 = load i32, i32* %7, align 4
  %254 = and i32 %253, 1
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %315

256:                                              ; preds = %252
  %257 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %258 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %257, i32 0, i32 1
  %259 = load i16, i16* %258, align 2
  %260 = zext i16 %259 to i32
  %261 = srem i32 %260, 257
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %309

263:                                              ; preds = %256
  %264 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %265 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %264, i32 0, i32 2
  %266 = load i16, i16* %265, align 2
  %267 = zext i16 %266 to i32
  %268 = srem i32 %267, 257
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %309

270:                                              ; preds = %263
  %271 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %272 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %271, i32 0, i32 3
  %273 = load i16, i16* %272, align 2
  %274 = zext i16 %273 to i32
  %275 = srem i32 %274, 257
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %309

277:                                              ; preds = %270
  %278 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %279 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %278, i32 0, i32 4
  %280 = load i16, i16* %279, align 2
  %281 = zext i16 %280 to i32
  %282 = srem i32 %281, 257
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %309

284:                                              ; preds = %277
  %285 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %286 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %285, i32 0, i32 1
  %287 = load i16, i16* %286, align 2
  %288 = zext i16 %287 to i32
  %289 = and i32 %288, 255
  %290 = trunc i32 %289 to i16
  store i16 %290, i16* %286, align 2
  %291 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %292 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %291, i32 0, i32 2
  %293 = load i16, i16* %292, align 2
  %294 = zext i16 %293 to i32
  %295 = and i32 %294, 255
  %296 = trunc i32 %295 to i16
  store i16 %296, i16* %292, align 2
  %297 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %298 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %297, i32 0, i32 3
  %299 = load i16, i16* %298, align 2
  %300 = zext i16 %299 to i32
  %301 = and i32 %300, 255
  %302 = trunc i32 %301 to i16
  store i16 %302, i16* %298, align 2
  %303 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %304 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %303, i32 0, i32 4
  %305 = load i16, i16* %304, align 2
  %306 = zext i16 %305 to i32
  %307 = and i32 %306, 255
  %308 = trunc i32 %307 to i16
  store i16 %308, i16* %304, align 2
  br label %314

309:                                              ; preds = %277, %270, %263, %256
  %310 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %311 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %310, %struct.png_info_def* noundef %311, i32 noundef 8192, i32 noundef -1)
  %312 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %313 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_invalid(%struct.png_struct_def* noundef %312, %struct.png_info_def* noundef %313, i32 noundef 16)
  br label %314

314:                                              ; preds = %309, %284
  br label %315

315:                                              ; preds = %314, %252
  %316 = load i32, i32* %7, align 4
  %317 = and i32 %316, 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %351

319:                                              ; preds = %315
  %320 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %321 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %320, i32 0, i32 1
  %322 = load i16, i16* %321, align 2
  %323 = zext i16 %322 to i32
  %324 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %325 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %324, i32 0, i32 2
  %326 = load i16, i16* %325, align 2
  %327 = zext i16 %326 to i32
  %328 = icmp eq i32 %323, %327
  br i1 %328, label %339, label %329

329:                                              ; preds = %319
  %330 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %331 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %330, i32 0, i32 1
  %332 = load i16, i16* %331, align 2
  %333 = zext i16 %332 to i32
  %334 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %335 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %334, i32 0, i32 3
  %336 = load i16, i16* %335, align 2
  %337 = zext i16 %336 to i32
  %338 = icmp eq i32 %333, %337
  br i1 %338, label %339, label %345

339:                                              ; preds = %329, %319
  %340 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %341 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %340, i32 0, i32 1
  %342 = load i16, i16* %341, align 2
  %343 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %27, align 8
  %344 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %343, i32 0, i32 4
  store i16 %342, i16* %344, align 2
  br label %350

345:                                              ; preds = %329
  %346 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %347 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %346, %struct.png_info_def* noundef %347, i32 noundef 8192, i32 noundef -1)
  %348 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %349 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_invalid(%struct.png_struct_def* noundef %348, %struct.png_info_def* noundef %349, i32 noundef 16)
  br label %350

350:                                              ; preds = %345, %339
  br label %351

351:                                              ; preds = %350, %315
  br label %352

352:                                              ; preds = %351, %247
  %353 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %354 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %355 = call i32 @png_get_bKGD(%struct.png_struct_def* noundef %353, %struct.png_info_def* noundef %354, %struct.png_color_16_struct** noundef %28)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %397

357:                                              ; preds = %352
  %358 = load i32, i32* %7, align 4
  %359 = and i32 %358, 1
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %386

361:                                              ; preds = %357
  %362 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %363 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %362, i32 0, i32 1
  %364 = load i16, i16* %363, align 2
  %365 = zext i16 %364 to i32
  %366 = and i32 %365, 255
  %367 = trunc i32 %366 to i16
  store i16 %367, i16* %363, align 2
  %368 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %369 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %368, i32 0, i32 2
  %370 = load i16, i16* %369, align 2
  %371 = zext i16 %370 to i32
  %372 = and i32 %371, 255
  %373 = trunc i32 %372 to i16
  store i16 %373, i16* %369, align 2
  %374 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %375 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %374, i32 0, i32 3
  %376 = load i16, i16* %375, align 2
  %377 = zext i16 %376 to i32
  %378 = and i32 %377, 255
  %379 = trunc i32 %378 to i16
  store i16 %379, i16* %375, align 2
  %380 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %381 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %380, i32 0, i32 4
  %382 = load i16, i16* %381, align 2
  %383 = zext i16 %382 to i32
  %384 = and i32 %383, 255
  %385 = trunc i32 %384 to i16
  store i16 %385, i16* %381, align 2
  br label %386

386:                                              ; preds = %361, %357
  %387 = load i32, i32* %7, align 4
  %388 = and i32 %387, 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %386
  %391 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %392 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %391, i32 0, i32 1
  %393 = load i16, i16* %392, align 2
  %394 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %395 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %394, i32 0, i32 4
  store i16 %393, i16* %395, align 2
  br label %396

396:                                              ; preds = %390, %386
  br label %397

397:                                              ; preds = %396, %352
  %398 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %399 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %400 = call i32 @png_get_sBIT(%struct.png_struct_def* noundef %398, %struct.png_info_def* noundef %399, %struct.png_color_8_struct** noundef %29)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %488

402:                                              ; preds = %397
  %403 = load i32, i32* %7, align 4
  %404 = and i32 %403, 1
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %452

406:                                              ; preds = %402
  %407 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %408 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %407, i32 0, i32 0
  %409 = load i8, i8* %408, align 1
  %410 = zext i8 %409 to i32
  %411 = icmp sgt i32 %410, 8
  br i1 %411, label %412, label %415

412:                                              ; preds = %406
  %413 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %414 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %413, i32 0, i32 0
  store i8 8, i8* %414, align 1
  br label %415

415:                                              ; preds = %412, %406
  %416 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %417 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %416, i32 0, i32 1
  %418 = load i8, i8* %417, align 1
  %419 = zext i8 %418 to i32
  %420 = icmp sgt i32 %419, 8
  br i1 %420, label %421, label %424

421:                                              ; preds = %415
  %422 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %423 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %422, i32 0, i32 1
  store i8 8, i8* %423, align 1
  br label %424

424:                                              ; preds = %421, %415
  %425 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %426 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %425, i32 0, i32 2
  %427 = load i8, i8* %426, align 1
  %428 = zext i8 %427 to i32
  %429 = icmp sgt i32 %428, 8
  br i1 %429, label %430, label %433

430:                                              ; preds = %424
  %431 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %432 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %431, i32 0, i32 2
  store i8 8, i8* %432, align 1
  br label %433

433:                                              ; preds = %430, %424
  %434 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %435 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %434, i32 0, i32 3
  %436 = load i8, i8* %435, align 1
  %437 = zext i8 %436 to i32
  %438 = icmp sgt i32 %437, 8
  br i1 %438, label %439, label %442

439:                                              ; preds = %433
  %440 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %441 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %440, i32 0, i32 3
  store i8 8, i8* %441, align 1
  br label %442

442:                                              ; preds = %439, %433
  %443 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %444 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %443, i32 0, i32 4
  %445 = load i8, i8* %444, align 1
  %446 = zext i8 %445 to i32
  %447 = icmp sgt i32 %446, 8
  br i1 %447, label %448, label %451

448:                                              ; preds = %442
  %449 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %450 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %449, i32 0, i32 4
  store i8 8, i8* %450, align 1
  br label %451

451:                                              ; preds = %448, %442
  br label %452

452:                                              ; preds = %451, %402
  %453 = load i32, i32* %7, align 4
  %454 = and i32 %453, 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %487

456:                                              ; preds = %452
  %457 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %458 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %457, i32 0, i32 0
  %459 = load i8, i8* %458, align 1
  store i8 %459, i8* %33, align 1
  %460 = load i8, i8* %33, align 1
  %461 = zext i8 %460 to i32
  %462 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %463 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %462, i32 0, i32 1
  %464 = load i8, i8* %463, align 1
  %465 = zext i8 %464 to i32
  %466 = icmp slt i32 %461, %465
  br i1 %466, label %467, label %471

467:                                              ; preds = %456
  %468 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %469 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %468, i32 0, i32 1
  %470 = load i8, i8* %469, align 1
  store i8 %470, i8* %33, align 1
  br label %471

471:                                              ; preds = %467, %456
  %472 = load i8, i8* %33, align 1
  %473 = zext i8 %472 to i32
  %474 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %475 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %474, i32 0, i32 2
  %476 = load i8, i8* %475, align 1
  %477 = zext i8 %476 to i32
  %478 = icmp slt i32 %473, %477
  br i1 %478, label %479, label %483

479:                                              ; preds = %471
  %480 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %481 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %480, i32 0, i32 2
  %482 = load i8, i8* %481, align 1
  store i8 %482, i8* %33, align 1
  br label %483

483:                                              ; preds = %479, %471
  %484 = load i8, i8* %33, align 1
  %485 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %29, align 8
  %486 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %485, i32 0, i32 3
  store i8 %484, i8* %486, align 1
  br label %487

487:                                              ; preds = %483, %452
  br label %488

488:                                              ; preds = %487, %397
  %489 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %490 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %491 = load i32, i32* %11, align 4
  %492 = load i32, i32* %12, align 4
  %493 = load i32, i32* %17, align 4
  %494 = load i32, i32* %21, align 4
  %495 = load i32, i32* %13, align 4
  %496 = load i32, i32* %14, align 4
  %497 = load i32, i32* %15, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %489, %struct.png_info_def* noundef %490, i32 noundef %491, i32 noundef %492, i32 noundef %493, i32 noundef %494, i32 noundef %495, i32 noundef %496, i32 noundef %497)
  %498 = load i32, i32* %7, align 4
  store i32 %498, i32* %4, align 4
  br label %499

499:                                              ; preds = %488, %40
  %500 = load i32, i32* %4, align 4
  ret i32 %500
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %25 = alloca [256 x i8], align 1
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
  br label %68

52:                                               ; preds = %46
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %20, align 4
  %57 = icmp sgt i32 %56, 0
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i1 [ false, %52 ], [ %57, %55 ]
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.opng_reduce_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1117, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0)) #6
  unreachable

65:                                               ; No predecessors!
  br label %67

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %65
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %70 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  call void @opng_analyze_sample_usage(%struct.png_struct_def* noundef %69, %struct.png_info_def* noundef %70, i8* noundef %71)
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %76, 8
  br label %78

78:                                               ; preds = %75, %68
  %79 = phi i1 [ false, %68 ], [ %77, %75 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %27, align 4
  store i32 -1, i32* %22, align 4
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %33, align 4
  br label %81

81:                                               ; preds = %144, %78
  %82 = load i32, i32* %33, align 4
  %83 = icmp slt i32 %82, 256
  br i1 %83, label %84, label %147

84:                                               ; preds = %81
  %85 = load i32, i32* %33, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %144

91:                                               ; preds = %84
  %92 = load i32, i32* %33, align 4
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* %33, align 4
  %94 = load i32, i32* %20, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %33, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp slt i32 %102, 255
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* %33, align 4
  store i32 %105, i32* %22, align 4
  br label %106

106:                                              ; preds = %104, %96, %91
  %107 = load i32, i32* %27, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %106
  %110 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %111 = load i32, i32* %33, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %110, i64 %112
  %114 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %113, i32 0, i32 0
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %118 = load i32, i32* %33, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %117, i64 %119
  %121 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %120, i32 0, i32 1
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp ne i32 %116, %123
  br i1 %124, label %141, label %125

125:                                              ; preds = %109
  %126 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %127 = load i32, i32* %33, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %126, i64 %128
  %130 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %129, i32 0, i32 0
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %134 = load i32, i32* %33, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %133, i64 %135
  %137 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %136, i32 0, i32 2
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %132, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %125, %109
  store i32 0, i32* %27, align 4
  br label %142

142:                                              ; preds = %141, %125
  br label %143

143:                                              ; preds = %142, %106
  br label %144

144:                                              ; preds = %143, %90
  %145 = load i32, i32* %33, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %33, align 4
  br label %81, !llvm.loop !15

147:                                              ; preds = %81
  %148 = load i32, i32* %21, align 4
  %149 = icmp sge i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.opng_reduce_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1135, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0)) #6
  unreachable

155:                                              ; No predecessors!
  br label %157

156:                                              ; preds = %147
  br label %157

157:                                              ; preds = %156, %155
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* %22, align 4
  %160 = icmp sge i32 %158, %159
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = sext i32 %162 to i64
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.opng_reduce_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1136, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0)) #6
  unreachable

166:                                              ; No predecessors!
  br label %168

167:                                              ; preds = %157
  br label %168

168:                                              ; preds = %167, %166
  %169 = load i32, i32* %21, align 4
  %170 = load i32, i32* %19, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %195

172:                                              ; preds = %168
  %173 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_warning(%struct.png_struct_def* noundef %173, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %174 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %175 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %176 = load i32, i32* %21, align 4
  %177 = add nsw i32 %176, 1
  call void @opng_realloc_PLTE(%struct.png_struct_def* noundef %174, %struct.png_info_def* noundef %175, i32 noundef %177)
  %178 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %179 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %180 = call i32 @png_get_PLTE(%struct.png_struct_def* noundef %178, %struct.png_info_def* noundef %179, %struct.png_color_struct** noundef %9, i32* noundef %19)
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %21, align 4
  %183 = add nsw i32 %182, 1
  %184 = icmp eq i32 %181, %183
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = sext i32 %186 to i64
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %172
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.opng_reduce_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1145, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0)) #6
  unreachable

190:                                              ; No predecessors!
  br label %192

191:                                              ; preds = %172
  br label %192

192:                                              ; preds = %191, %190
  %193 = load i32, i32* %8, align 4
  %194 = or i32 %193, 8192
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %192, %168
  %196 = load i32, i32* %20, align 4
  %197 = load i32, i32* %19, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_warning(%struct.png_struct_def* noundef %200, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %201 = load i32, i32* %8, align 4
  %202 = or i32 %201, 8192
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %199, %195
  %204 = load i32, i32* %27, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %286

206:                                              ; preds = %203
  %207 = load i32, i32* %22, align 4
  %208 = icmp sge i32 %207, 0
  br i1 %208, label %209, label %286

209:                                              ; preds = %206
  %210 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %211 = load i32, i32* %22, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %210, i64 %212
  %214 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %213, i32 0, i32 0
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i16
  %217 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %26, i32 0, i32 4
  store i16 %216, i16* %217, align 2
  %218 = load i8*, i8** %10, align 8
  %219 = load i32, i32* %22, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i8, i8* %221, align 1
  store i8 %222, i8* %24, align 1
  store i32 0, i32* %33, align 4
  br label %223

223:                                              ; preds = %282, %209
  %224 = load i32, i32* %33, align 4
  %225 = load i32, i32* %21, align 4
  %226 = icmp sle i32 %224, %225
  br i1 %226, label %227, label %285

227:                                              ; preds = %223
  %228 = load i32, i32* %33, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = icmp ne i8 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %227
  br label %282

234:                                              ; preds = %227
  %235 = load i32, i32* %33, align 4
  %236 = load i32, i32* %22, align 4
  %237 = icmp sle i32 %235, %236
  br i1 %237, label %238, label %261

238:                                              ; preds = %234
  %239 = load i8*, i8** %10, align 8
  %240 = load i32, i32* %33, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i8, i8* %242, align 1
  store i8 %243, i8* %23, align 1
  %244 = load i8, i8* %23, align 1
  %245 = zext i8 %244 to i32
  %246 = icmp slt i32 %245, 255
  br i1 %246, label %247, label %260

247:                                              ; preds = %238
  %248 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %249 = load i32, i32* %33, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %248, i64 %250
  %252 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %251, i32 0, i32 0
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %26, i32 0, i32 4
  %256 = load i16, i16* %255, align 2
  %257 = zext i16 %256 to i32
  %258 = icmp ne i32 %254, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %247
  store i32 0, i32* %27, align 4
  br label %285

260:                                              ; preds = %247, %238
  br label %262

261:                                              ; preds = %234
  store i8 -1, i8* %23, align 1
  br label %262

262:                                              ; preds = %261, %260
  %263 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %264 = load i32, i32* %33, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %263, i64 %265
  %267 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %266, i32 0, i32 0
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %26, i32 0, i32 4
  %271 = load i16, i16* %270, align 2
  %272 = zext i16 %271 to i32
  %273 = icmp eq i32 %269, %272
  br i1 %273, label %274, label %281

274:                                              ; preds = %262
  %275 = load i8, i8* %23, align 1
  %276 = zext i8 %275 to i32
  %277 = load i8, i8* %24, align 1
  %278 = zext i8 %277 to i32
  %279 = icmp ne i32 %276, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %274
  store i32 0, i32* %27, align 4
  br label %285

281:                                              ; preds = %274, %262
  br label %282

282:                                              ; preds = %281, %233
  %283 = load i32, i32* %33, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %33, align 4
  br label %223, !llvm.loop !16

285:                                              ; preds = %280, %259, %223
  br label %286

286:                                              ; preds = %285, %206, %203
  %287 = load i32, i32* %20, align 4
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %286
  %290 = load i32, i32* %22, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %289
  store i32 0, i32* %20, align 4
  %293 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %294 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %293, %struct.png_info_def* noundef %294, i32 noundef 8192, i32 noundef -1)
  %295 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %296 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_invalid(%struct.png_struct_def* noundef %295, %struct.png_info_def* noundef %296, i32 noundef 16)
  %297 = load i32, i32* %8, align 4
  %298 = or i32 %297, 512
  store i32 %298, i32* %8, align 4
  br label %299

299:                                              ; preds = %292, %289, %286
  %300 = load i32, i32* %7, align 4
  %301 = and i32 %300, 512
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %361

303:                                              ; preds = %299
  %304 = load i32, i32* %19, align 4
  %305 = load i32, i32* %21, align 4
  %306 = add nsw i32 %305, 1
  %307 = icmp ne i32 %304, %306
  br i1 %307, label %308, label %330

308:                                              ; preds = %303
  %309 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %310 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %311 = load i32, i32* %21, align 4
  %312 = add nsw i32 %311, 1
  call void @opng_realloc_PLTE(%struct.png_struct_def* noundef %309, %struct.png_info_def* noundef %310, i32 noundef %312)
  %313 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %314 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %315 = call i32 @png_get_PLTE(%struct.png_struct_def* noundef %313, %struct.png_info_def* noundef %314, %struct.png_color_struct** noundef %9, i32* noundef %19)
  %316 = load i32, i32* %19, align 4
  %317 = load i32, i32* %21, align 4
  %318 = add nsw i32 %317, 1
  %319 = icmp eq i32 %316, %318
  %320 = xor i1 %319, true
  %321 = zext i1 %320 to i32
  %322 = sext i32 %321 to i64
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %308
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.opng_reduce_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1203, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0)) #6
  unreachable

325:                                              ; No predecessors!
  br label %327

326:                                              ; preds = %308
  br label %327

327:                                              ; preds = %326, %325
  %328 = load i32, i32* %8, align 4
  %329 = or i32 %328, 512
  store i32 %329, i32* %8, align 4
  br label %330

330:                                              ; preds = %327, %303
  %331 = load i32, i32* %20, align 4
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %360

333:                                              ; preds = %330
  %334 = load i32, i32* %20, align 4
  %335 = load i32, i32* %22, align 4
  %336 = add nsw i32 %335, 1
  %337 = icmp ne i32 %334, %336
  br i1 %337, label %338, label %360

338:                                              ; preds = %333
  %339 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %340 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %341 = load i32, i32* %22, align 4
  %342 = add nsw i32 %341, 1
  call void @opng_realloc_tRNS(%struct.png_struct_def* noundef %339, %struct.png_info_def* noundef %340, i32 noundef %342)
  %343 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %344 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %345 = call i32 @png_get_tRNS(%struct.png_struct_def* noundef %343, %struct.png_info_def* noundef %344, i8** noundef %10, i32* noundef %20, %struct.png_color_16_struct** noundef null)
  %346 = load i32, i32* %20, align 4
  %347 = load i32, i32* %22, align 4
  %348 = add nsw i32 %347, 1
  %349 = icmp eq i32 %346, %348
  %350 = xor i1 %349, true
  %351 = zext i1 %350 to i32
  %352 = sext i32 %351 to i64
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %338
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.opng_reduce_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1212, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0)) #6
  unreachable

355:                                              ; No predecessors!
  br label %357

356:                                              ; preds = %338
  br label %357

357:                                              ; preds = %356, %355
  %358 = load i32, i32* %8, align 4
  %359 = or i32 %358, 512
  store i32 %359, i32* %8, align 4
  br label %360

360:                                              ; preds = %357, %333, %330
  br label %361

361:                                              ; preds = %360, %299
  %362 = load i32, i32* %7, align 4
  %363 = and i32 %362, 2
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %376

365:                                              ; preds = %361
  %366 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %367 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %368 = load i32, i32* %7, align 4
  %369 = call i32 @opng_reduce_palette_bits(%struct.png_struct_def* noundef %366, %struct.png_info_def* noundef %367, i32 noundef %368)
  %370 = load i32, i32* %8, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %8, align 4
  %372 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %373 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %374 = call zeroext i8 @png_get_bit_depth(%struct.png_struct_def* noundef %372, %struct.png_info_def* noundef %373)
  %375 = zext i8 %374 to i32
  store i32 %375, i32* %14, align 4
  br label %376

376:                                              ; preds = %365, %361
  %377 = load i32, i32* %14, align 4
  %378 = icmp slt i32 %377, 8
  br i1 %378, label %382, label %379

379:                                              ; preds = %376
  %380 = load i32, i32* %27, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %384, label %382

382:                                              ; preds = %379, %376
  %383 = load i32, i32* %8, align 4
  store i32 %383, i32* %4, align 4
  br label %506

384:                                              ; preds = %379
  store i32 0, i32* %31, align 4
  br label %385

385:                                              ; preds = %421, %384
  %386 = load i32, i32* %31, align 4
  %387 = load i32, i32* %13, align 4
  %388 = icmp ult i32 %386, %387
  br i1 %388, label %389, label %424

389:                                              ; preds = %385
  store i32 0, i32* %32, align 4
  br label %390

390:                                              ; preds = %417, %389
  %391 = load i32, i32* %32, align 4
  %392 = load i32, i32* %12, align 4
  %393 = icmp ult i32 %391, %392
  br i1 %393, label %394, label %420

394:                                              ; preds = %390
  %395 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %396 = load i8**, i8*** %11, align 8
  %397 = load i32, i32* %31, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds i8*, i8** %396, i64 %398
  %400 = load i8*, i8** %399, align 8
  %401 = load i32, i32* %32, align 4
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds i8, i8* %400, i64 %402
  %404 = load i8, i8* %403, align 1
  %405 = zext i8 %404 to i64
  %406 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %395, i64 %405
  %407 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %406, i32 0, i32 0
  %408 = load i8, i8* %407, align 1
  %409 = load i8**, i8*** %11, align 8
  %410 = load i32, i32* %31, align 4
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds i8*, i8** %409, i64 %411
  %413 = load i8*, i8** %412, align 8
  %414 = load i32, i32* %32, align 4
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds i8, i8* %413, i64 %415
  store i8 %408, i8* %416, align 1
  br label %417

417:                                              ; preds = %394
  %418 = load i32, i32* %32, align 4
  %419 = add i32 %418, 1
  store i32 %419, i32* %32, align 4
  br label %390, !llvm.loop !17

420:                                              ; preds = %390
  br label %421

421:                                              ; preds = %420
  %422 = load i32, i32* %31, align 4
  %423 = add i32 %422, 1
  store i32 %423, i32* %31, align 4
  br label %385, !llvm.loop !18

424:                                              ; preds = %385
  %425 = load i32, i32* %20, align 4
  %426 = icmp sgt i32 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %424
  %428 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %429 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_tRNS(%struct.png_struct_def* noundef %428, %struct.png_info_def* noundef %429, i8* noundef null, i32 noundef 0, %struct.png_color_16_struct* noundef %26)
  br label %430

430:                                              ; preds = %427, %424
  %431 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %432 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %433 = call i32 @png_get_bKGD(%struct.png_struct_def* noundef %431, %struct.png_info_def* noundef %432, %struct.png_color_16_struct** noundef %28)
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %447

435:                                              ; preds = %430
  %436 = load %struct.png_color_struct*, %struct.png_color_struct** %9, align 8
  %437 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %438 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %437, i32 0, i32 0
  %439 = load i8, i8* %438, align 2
  %440 = zext i8 %439 to i64
  %441 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %436, i64 %440
  %442 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %441, i32 0, i32 0
  %443 = load i8, i8* %442, align 1
  %444 = zext i8 %443 to i16
  %445 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %28, align 8
  %446 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %445, i32 0, i32 4
  store i16 %444, i16* %446, align 2
  br label %447

447:                                              ; preds = %435, %430
  %448 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %449 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %450 = call i32 @png_get_hIST(%struct.png_struct_def* noundef %448, %struct.png_info_def* noundef %449, i16** noundef %29)
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %457

452:                                              ; preds = %447
  %453 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %454 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %453, %struct.png_info_def* noundef %454, i32 noundef 8, i32 noundef -1)
  %455 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %456 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_invalid(%struct.png_struct_def* noundef %455, %struct.png_info_def* noundef %456, i32 noundef 64)
  br label %457

457:                                              ; preds = %452, %447
  %458 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %459 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %460 = call i32 @png_get_sBIT(%struct.png_struct_def* noundef %458, %struct.png_info_def* noundef %459, %struct.png_color_8_struct** noundef %30)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %493

462:                                              ; preds = %457
  %463 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %30, align 8
  %464 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %463, i32 0, i32 0
  %465 = load i8, i8* %464, align 1
  store i8 %465, i8* %34, align 1
  %466 = load i8, i8* %34, align 1
  %467 = zext i8 %466 to i32
  %468 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %30, align 8
  %469 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %468, i32 0, i32 1
  %470 = load i8, i8* %469, align 1
  %471 = zext i8 %470 to i32
  %472 = icmp slt i32 %467, %471
  br i1 %472, label %473, label %477

473:                                              ; preds = %462
  %474 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %30, align 8
  %475 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %474, i32 0, i32 1
  %476 = load i8, i8* %475, align 1
  store i8 %476, i8* %34, align 1
  br label %477

477:                                              ; preds = %473, %462
  %478 = load i8, i8* %34, align 1
  %479 = zext i8 %478 to i32
  %480 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %30, align 8
  %481 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %480, i32 0, i32 2
  %482 = load i8, i8* %481, align 1
  %483 = zext i8 %482 to i32
  %484 = icmp slt i32 %479, %483
  br i1 %484, label %485, label %489

485:                                              ; preds = %477
  %486 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %30, align 8
  %487 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %486, i32 0, i32 2
  %488 = load i8, i8* %487, align 1
  store i8 %488, i8* %34, align 1
  br label %489

489:                                              ; preds = %485, %477
  %490 = load i8, i8* %34, align 1
  %491 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** %30, align 8
  %492 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %491, i32 0, i32 3
  store i8 %490, i8* %492, align 1
  br label %493

493:                                              ; preds = %489, %457
  %494 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %495 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %496 = load i32, i32* %12, align 4
  %497 = load i32, i32* %13, align 4
  %498 = load i32, i32* %14, align 4
  %499 = load i32, i32* %16, align 4
  %500 = load i32, i32* %17, align 4
  %501 = load i32, i32* %18, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %494, %struct.png_info_def* noundef %495, i32 noundef %496, i32 noundef %497, i32 noundef %498, i32 noundef 0, i32 noundef %499, i32 noundef %500, i32 noundef %501)
  %502 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %503 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %502, %struct.png_info_def* noundef %503, i32 noundef 4096, i32 noundef -1)
  %504 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %505 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_set_invalid(%struct.png_struct_def* noundef %504, %struct.png_info_def* noundef %505, i32 noundef 8)
  store i32 128, i32* %4, align 4
  br label %506

506:                                              ; preds = %493, %382
  %507 = load i32, i32* %4, align 4
  ret i32 %507
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %22 = alloca [256 x %struct.png_color_struct], align 1
  %23 = alloca [256 x i8], align 1
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
  br label %560

47:                                               ; preds = %3
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.opng_reduce_to_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 802, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0)) #6
  unreachable

57:                                               ; No predecessors!
  br label %59

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %57
  %60 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %61 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %62 = call i8** @png_get_rows(%struct.png_struct_def* noundef %60, %struct.png_info_def* noundef %61)
  store i8** %62, i8*** %10, align 8
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %64 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %65 = call zeroext i8 @png_get_channels(%struct.png_struct_def* noundef %63, %struct.png_info_def* noundef %64)
  %66 = zext i8 %65 to i32
  store i32 %66, i32* %21, align 4
  %67 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %68 = load i32, i32* %14, align 4
  %69 = zext i32 %68 to i64
  %70 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %67, i64 noundef %69)
  store i8* %70, i8** %12, align 8
  %71 = load i32, i32* %14, align 4
  %72 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %9, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %9, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* %15, align 4
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %9, i32 0, i32 2
  store i8 %75, i8* %76, align 8
  %77 = load i32, i32* %19, align 4
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %9, i32 0, i32 3
  store i8 %78, i8* %79, align 1
  %80 = load i32, i32* %21, align 4
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %9, i32 0, i32 4
  store i8 %81, i8* %82, align 2
  %83 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %9, i32 0, i32 5
  store i8 0, i8* %83, align 1
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  store %struct.png_color_16_struct* null, %struct.png_color_16_struct** %24, align 8
  %84 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %85 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %86 = call i32 @png_get_tRNS(%struct.png_struct_def* noundef %84, %struct.png_info_def* noundef %85, i8** noundef null, i32* noundef null, %struct.png_color_16_struct** noundef %24)
  store i32 256, i32* %37, align 4
  store i32 256, i32* %36, align 4
  store i32 256, i32* %35, align 4
  store i32 256, i32* %34, align 4
  store i32 256, i32* %33, align 4
  store i32 0, i32* %39, align 4
  br label %87

87:                                               ; preds = %232, %59
  %88 = load i32, i32* %39, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %237

91:                                               ; preds = %87
  %92 = load i8**, i8*** %10, align 8
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %11, align 8
  %94 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %24, align 8
  %95 = load i8**, i8*** %10, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %12, align 8
  call void @opng_get_alpha_row(%struct.png_row_info_struct* noundef %9, %struct.png_color_16_struct* noundef %94, i8* noundef %96, i8* noundef %97)
  %98 = load i32, i32* %15, align 4
  %99 = and i32 %98, 2
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %175

101:                                              ; preds = %91
  store i32 0, i32* %40, align 4
  br label %102

102:                                              ; preds = %167, %101
  %103 = load i32, i32* %40, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %174

106:                                              ; preds = %102
  %107 = load i8*, i8** %11, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  store i32 %110, i32* %29, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  store i32 %114, i32* %30, align 4
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  store i32 %118, i32* %31, align 4
  %119 = load i8*, i8** %12, align 8
  %120 = load i32, i32* %40, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  store i32 %124, i32* %32, align 4
  %125 = load i32, i32* %29, align 4
  %126 = load i32, i32* %34, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %140, label %128

128:                                              ; preds = %106
  %129 = load i32, i32* %30, align 4
  %130 = load i32, i32* %35, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %31, align 4
  %134 = load i32, i32* %36, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %32, align 4
  %138 = load i32, i32* %37, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %166

140:                                              ; preds = %136, %132, %128, %106
  %141 = load i32, i32* %29, align 4
  store i32 %141, i32* %34, align 4
  %142 = load i32, i32* %30, align 4
  store i32 %142, i32* %35, align 4
  %143 = load i32, i32* %31, align 4
  store i32 %143, i32* %36, align 4
  %144 = load i32, i32* %32, align 4
  store i32 %144, i32* %37, align 4
  %145 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %22, i64 0, i64 0
  %146 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %147 = load i32, i32* %29, align 4
  %148 = load i32, i32* %30, align 4
  %149 = load i32, i32* %31, align 4
  %150 = load i32, i32* %32, align 4
  %151 = call i32 @opng_insert_palette_entry(%struct.png_color_struct* noundef %145, i32* noundef %25, i8* noundef %146, i32* noundef %26, i32 noundef 256, i32 noundef %147, i32 noundef %148, i32 noundef %149, i32 noundef %150, i32* noundef %27)
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %140
  %154 = load i32, i32* %25, align 4
  %155 = icmp slt i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = sext i32 %157 to i64
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.opng_reduce_to_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 844, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0)) #6
  unreachable

161:                                              ; No predecessors!
  br label %163

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162, %161
  %164 = load i32, i32* %13, align 4
  store i32 %164, i32* %39, align 4
  br label %174

165:                                              ; preds = %140
  br label %166

166:                                              ; preds = %165, %136
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %40, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %40, align 4
  %170 = load i32, i32* %21, align 4
  %171 = load i8*, i8** %11, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %11, align 8
  br label %102, !llvm.loop !19

174:                                              ; preds = %163, %102
  br label %231

175:                                              ; preds = %91
  store i32 0, i32* %40, align 4
  br label %176

176:                                              ; preds = %223, %175
  %177 = load i32, i32* %40, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp ult i32 %177, %178
  br i1 %179, label %180, label %230

180:                                              ; preds = %176
  %181 = load i8*, i8** %11, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 0
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  store i32 %184, i32* %28, align 4
  %185 = load i8*, i8** %12, align 8
  %186 = load i32, i32* %40, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  store i32 %190, i32* %32, align 4
  %191 = load i32, i32* %28, align 4
  %192 = load i32, i32* %33, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %180
  %195 = load i32, i32* %32, align 4
  %196 = load i32, i32* %37, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %222

198:                                              ; preds = %194, %180
  %199 = load i32, i32* %28, align 4
  store i32 %199, i32* %33, align 4
  %200 = load i32, i32* %32, align 4
  store i32 %200, i32* %37, align 4
  %201 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %22, i64 0, i64 0
  %202 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %203 = load i32, i32* %28, align 4
  %204 = load i32, i32* %28, align 4
  %205 = load i32, i32* %28, align 4
  %206 = load i32, i32* %32, align 4
  %207 = call i32 @opng_insert_palette_entry(%struct.png_color_struct* noundef %201, i32* noundef %25, i8* noundef %202, i32* noundef %26, i32 noundef 256, i32 noundef %203, i32 noundef %204, i32 noundef %205, i32 noundef %206, i32* noundef %27)
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %198
  %210 = load i32, i32* %25, align 4
  %211 = icmp slt i32 %210, 0
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = sext i32 %213 to i64
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.opng_reduce_to_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 866, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0)) #6
  unreachable

217:                                              ; No predecessors!
  br label %219

218:                                              ; preds = %209
  br label %219

219:                                              ; preds = %218, %217
  %220 = load i32, i32* %13, align 4
  store i32 %220, i32* %39, align 4
  br label %230

221:                                              ; preds = %198
  br label %222

222:                                              ; preds = %221, %194
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %40, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %40, align 4
  %226 = load i32, i32* %21, align 4
  %227 = load i8*, i8** %11, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8* %229, i8** %11, align 8
  br label %176, !llvm.loop !20

230:                                              ; preds = %219, %176
  br label %231

231:                                              ; preds = %230, %174
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %39, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %39, align 4
  %235 = load i8**, i8*** %10, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i32 1
  store i8** %236, i8*** %10, align 8
  br label %87, !llvm.loop !21

237:                                              ; preds = %87
  %238 = load i32, i32* %25, align 4
  %239 = icmp sge i32 %238, 0
  br i1 %239, label %240, label %282

240:                                              ; preds = %237
  %241 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %242 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %243 = call i32 @png_get_bKGD(%struct.png_struct_def* noundef %241, %struct.png_info_def* noundef %242, %struct.png_color_16_struct** noundef %38)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %282

245:                                              ; preds = %240
  %246 = load i32, i32* %15, align 4
  %247 = and i32 %246, 2
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %245
  %250 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %38, align 8
  %251 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %250, i32 0, i32 1
  %252 = load i16, i16* %251, align 2
  %253 = zext i16 %252 to i32
  store i32 %253, i32* %29, align 4
  %254 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %38, align 8
  %255 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %254, i32 0, i32 2
  %256 = load i16, i16* %255, align 2
  %257 = zext i16 %256 to i32
  store i32 %257, i32* %30, align 4
  %258 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %38, align 8
  %259 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %258, i32 0, i32 3
  %260 = load i16, i16* %259, align 2
  %261 = zext i16 %260 to i32
  store i32 %261, i32* %31, align 4
  br label %267

262:                                              ; preds = %245
  %263 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %38, align 8
  %264 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %263, i32 0, i32 4
  %265 = load i16, i16* %264, align 2
  %266 = zext i16 %265 to i32
  store i32 %266, i32* %31, align 4
  store i32 %266, i32* %30, align 4
  store i32 %266, i32* %29, align 4
  br label %267

267:                                              ; preds = %262, %249
  %268 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %22, i64 0, i64 0
  %269 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %270 = load i32, i32* %29, align 4
  %271 = load i32, i32* %30, align 4
  %272 = load i32, i32* %31, align 4
  %273 = call i32 @opng_insert_palette_entry(%struct.png_color_struct* noundef %268, i32* noundef %25, i8* noundef %269, i32* noundef %26, i32 noundef 256, i32 noundef %270, i32 noundef %271, i32 noundef %272, i32 noundef 256, i32* noundef %27)
  %274 = load i32, i32* %27, align 4
  %275 = icmp sge i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %267
  %277 = load i32, i32* %27, align 4
  %278 = trunc i32 %277 to i8
  %279 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %38, align 8
  %280 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %279, i32 0, i32 0
  store i8 %278, i8* %280, align 2
  br label %281

281:                                              ; preds = %276, %267
  br label %282

282:                                              ; preds = %281, %240, %237
  %283 = load i32, i32* %25, align 4
  %284 = icmp sge i32 %283, 0
  br i1 %284, label %285, label %354

285:                                              ; preds = %282
  %286 = load i32, i32* %25, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i32, i32* %25, align 4
  %290 = icmp sle i32 %289, 256
  br label %291

291:                                              ; preds = %288, %285
  %292 = phi i1 [ false, %285 ], [ %290, %288 ]
  %293 = xor i1 %292, true
  %294 = zext i1 %293 to i32
  %295 = sext i32 %294 to i64
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %291
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.opng_reduce_to_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 905, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0)) #6
  unreachable

298:                                              ; No predecessors!
  br label %300

299:                                              ; preds = %291
  br label %300

300:                                              ; preds = %299, %298
  %301 = load i32, i32* %26, align 4
  %302 = icmp sge i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  %304 = load i32, i32* %26, align 4
  %305 = load i32, i32* %25, align 4
  %306 = icmp sle i32 %304, %305
  br label %307

307:                                              ; preds = %303, %300
  %308 = phi i1 [ false, %300 ], [ %306, %303 ]
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i32
  %311 = sext i32 %310 to i64
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %307
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.opng_reduce_to_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 906, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0)) #6
  unreachable

314:                                              ; No predecessors!
  br label %316

315:                                              ; preds = %307
  br label %316

316:                                              ; preds = %315, %314
  %317 = load i32, i32* %25, align 4
  %318 = icmp sle i32 %317, 2
  br i1 %318, label %319, label %320

319:                                              ; preds = %316
  store i32 1, i32* %20, align 4
  br label %331

320:                                              ; preds = %316
  %321 = load i32, i32* %25, align 4
  %322 = icmp sle i32 %321, 4
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  store i32 2, i32* %20, align 4
  br label %330

324:                                              ; preds = %320
  %325 = load i32, i32* %25, align 4
  %326 = icmp sle i32 %325, 16
  br i1 %326, label %327, label %328

327:                                              ; preds = %324
  store i32 4, i32* %20, align 4
  br label %329

328:                                              ; preds = %324
  store i32 8, i32* %20, align 4
  br label %329

329:                                              ; preds = %328, %327
  br label %330

330:                                              ; preds = %329, %323
  br label %331

331:                                              ; preds = %330, %319
  %332 = load i32, i32* %21, align 4
  %333 = mul nsw i32 %332, 8
  %334 = load i32, i32* %20, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %352, label %336

336:                                              ; preds = %331
  %337 = load i32, i32* %25, align 4
  %338 = mul nsw i32 3, %337
  %339 = load i32, i32* %26, align 4
  %340 = add nsw i32 %338, %339
  %341 = mul nsw i32 %340, 8
  %342 = load i32, i32* %21, align 4
  %343 = mul nsw i32 %342, 8
  %344 = load i32, i32* %20, align 4
  %345 = sub nsw i32 %343, %344
  %346 = sdiv i32 %341, %345
  %347 = load i32, i32* %14, align 4
  %348 = udiv i32 %346, %347
  %349 = load i32, i32* %13, align 4
  %350 = udiv i32 %348, %349
  %351 = icmp uge i32 %350, 1
  br i1 %351, label %352, label %353

352:                                              ; preds = %336, %331
  store i32 -1, i32* %25, align 4
  br label %353

353:                                              ; preds = %352, %336
  br label %354

354:                                              ; preds = %353, %282
  %355 = load i32, i32* %25, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %359 = load i8*, i8** %12, align 8
  call void @png_free(%struct.png_struct_def* noundef %358, i8* noundef %359)
  store i32 0, i32* %4, align 4
  br label %560

360:                                              ; preds = %354
  %361 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %362 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %363 = call i8** @png_get_rows(%struct.png_struct_def* noundef %361, %struct.png_info_def* noundef %362)
  store i8** %363, i8*** %10, align 8
  store i32 -1, i32* %27, align 4
  store i32 -1, i32* %37, align 4
  store i32 -1, i32* %36, align 4
  store i32 -1, i32* %35, align 4
  store i32 -1, i32* %34, align 4
  store i32 0, i32* %39, align 4
  br label %364

364:                                              ; preds = %521, %360
  %365 = load i32, i32* %39, align 4
  %366 = load i32, i32* %13, align 4
  %367 = icmp ult i32 %365, %366
  br i1 %367, label %368, label %526

368:                                              ; preds = %364
  %369 = load i8**, i8*** %10, align 8
  %370 = load i8*, i8** %369, align 8
  store i8* %370, i8** %11, align 8
  %371 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %24, align 8
  %372 = load i8**, i8*** %10, align 8
  %373 = load i8*, i8** %372, align 8
  %374 = load i8*, i8** %12, align 8
  call void @opng_get_alpha_row(%struct.png_row_info_struct* noundef %9, %struct.png_color_16_struct* noundef %371, i8* noundef %373, i8* noundef %374)
  %375 = load i32, i32* %15, align 4
  %376 = and i32 %375, 2
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %458

378:                                              ; preds = %368
  store i32 0, i32* %40, align 4
  br label %379

379:                                              ; preds = %450, %378
  %380 = load i32, i32* %40, align 4
  %381 = load i32, i32* %14, align 4
  %382 = icmp ult i32 %380, %381
  br i1 %382, label %383, label %457

383:                                              ; preds = %379
  %384 = load i8*, i8** %11, align 8
  %385 = getelementptr inbounds i8, i8* %384, i64 0
  %386 = load i8, i8* %385, align 1
  %387 = zext i8 %386 to i32
  store i32 %387, i32* %29, align 4
  %388 = load i8*, i8** %11, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 1
  %390 = load i8, i8* %389, align 1
  %391 = zext i8 %390 to i32
  store i32 %391, i32* %30, align 4
  %392 = load i8*, i8** %11, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 2
  %394 = load i8, i8* %393, align 1
  %395 = zext i8 %394 to i32
  store i32 %395, i32* %31, align 4
  %396 = load i8*, i8** %12, align 8
  %397 = load i32, i32* %40, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds i8, i8* %396, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = zext i8 %400 to i32
  store i32 %401, i32* %32, align 4
  %402 = load i32, i32* %29, align 4
  %403 = load i32, i32* %34, align 4
  %404 = icmp ne i32 %402, %403
  br i1 %404, label %417, label %405

405:                                              ; preds = %383
  %406 = load i32, i32* %30, align 4
  %407 = load i32, i32* %35, align 4
  %408 = icmp ne i32 %406, %407
  br i1 %408, label %417, label %409

409:                                              ; preds = %405
  %410 = load i32, i32* %31, align 4
  %411 = load i32, i32* %36, align 4
  %412 = icmp ne i32 %410, %411
  br i1 %412, label %417, label %413

413:                                              ; preds = %409
  %414 = load i32, i32* %32, align 4
  %415 = load i32, i32* %37, align 4
  %416 = icmp ne i32 %414, %415
  br i1 %416, label %417, label %432

417:                                              ; preds = %413, %409, %405, %383
  %418 = load i32, i32* %29, align 4
  store i32 %418, i32* %34, align 4
  %419 = load i32, i32* %30, align 4
  store i32 %419, i32* %35, align 4
  %420 = load i32, i32* %31, align 4
  store i32 %420, i32* %36, align 4
  %421 = load i32, i32* %32, align 4
  store i32 %421, i32* %37, align 4
  %422 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %22, i64 0, i64 0
  %423 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %424 = load i32, i32* %29, align 4
  %425 = load i32, i32* %30, align 4
  %426 = load i32, i32* %31, align 4
  %427 = load i32, i32* %32, align 4
  %428 = call i32 @opng_insert_palette_entry(%struct.png_color_struct* noundef %422, i32* noundef %25, i8* noundef %423, i32* noundef %26, i32 noundef 256, i32 noundef %424, i32 noundef %425, i32 noundef %426, i32 noundef %427, i32* noundef %27)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %417
  store i32 -1, i32* %27, align 4
  br label %431

431:                                              ; preds = %430, %417
  br label %432

432:                                              ; preds = %431, %413
  %433 = load i32, i32* %27, align 4
  %434 = icmp sge i32 %433, 0
  %435 = xor i1 %434, true
  %436 = zext i1 %435 to i32
  %437 = sext i32 %436 to i64
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %432
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.opng_reduce_to_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 957, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0)) #6
  unreachable

440:                                              ; No predecessors!
  br label %442

441:                                              ; preds = %432
  br label %442

442:                                              ; preds = %441, %440
  %443 = load i32, i32* %27, align 4
  %444 = trunc i32 %443 to i8
  %445 = load i8**, i8*** %10, align 8
  %446 = load i8*, i8** %445, align 8
  %447 = load i32, i32* %40, align 4
  %448 = zext i32 %447 to i64
  %449 = getelementptr inbounds i8, i8* %446, i64 %448
  store i8 %444, i8* %449, align 1
  br label %450

450:                                              ; preds = %442
  %451 = load i32, i32* %40, align 4
  %452 = add i32 %451, 1
  store i32 %452, i32* %40, align 4
  %453 = load i32, i32* %21, align 4
  %454 = load i8*, i8** %11, align 8
  %455 = sext i32 %453 to i64
  %456 = getelementptr inbounds i8, i8* %454, i64 %455
  store i8* %456, i8** %11, align 8
  br label %379, !llvm.loop !22

457:                                              ; preds = %379
  br label %520

458:                                              ; preds = %368
  store i32 0, i32* %40, align 4
  br label %459

459:                                              ; preds = %512, %458
  %460 = load i32, i32* %40, align 4
  %461 = load i32, i32* %14, align 4
  %462 = icmp ult i32 %460, %461
  br i1 %462, label %463, label %519

463:                                              ; preds = %459
  %464 = load i8*, i8** %11, align 8
  %465 = getelementptr inbounds i8, i8* %464, i64 0
  %466 = load i8, i8* %465, align 1
  %467 = zext i8 %466 to i32
  store i32 %467, i32* %28, align 4
  %468 = load i8*, i8** %12, align 8
  %469 = load i32, i32* %40, align 4
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds i8, i8* %468, i64 %470
  %472 = load i8, i8* %471, align 1
  %473 = zext i8 %472 to i32
  store i32 %473, i32* %32, align 4
  %474 = load i32, i32* %28, align 4
  %475 = load i32, i32* %33, align 4
  %476 = icmp ne i32 %474, %475
  br i1 %476, label %481, label %477

477:                                              ; preds = %463
  %478 = load i32, i32* %32, align 4
  %479 = load i32, i32* %37, align 4
  %480 = icmp ne i32 %478, %479
  br i1 %480, label %481, label %494

481:                                              ; preds = %477, %463
  %482 = load i32, i32* %28, align 4
  store i32 %482, i32* %33, align 4
  %483 = load i32, i32* %32, align 4
  store i32 %483, i32* %37, align 4
  %484 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %22, i64 0, i64 0
  %485 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %486 = load i32, i32* %28, align 4
  %487 = load i32, i32* %28, align 4
  %488 = load i32, i32* %28, align 4
  %489 = load i32, i32* %32, align 4
  %490 = call i32 @opng_insert_palette_entry(%struct.png_color_struct* noundef %484, i32* noundef %25, i8* noundef %485, i32* noundef %26, i32 noundef 256, i32 noundef %486, i32 noundef %487, i32 noundef %488, i32 noundef %489, i32* noundef %27)
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %493

492:                                              ; preds = %481
  store i32 -1, i32* %27, align 4
  br label %493

493:                                              ; preds = %492, %481
  br label %494

494:                                              ; preds = %493, %477
  %495 = load i32, i32* %27, align 4
  %496 = icmp sge i32 %495, 0
  %497 = xor i1 %496, true
  %498 = zext i1 %497 to i32
  %499 = sext i32 %498 to i64
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %503

501:                                              ; preds = %494
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.opng_reduce_to_palette, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 977, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0)) #6
  unreachable

502:                                              ; No predecessors!
  br label %504

503:                                              ; preds = %494
  br label %504

504:                                              ; preds = %503, %502
  %505 = load i32, i32* %27, align 4
  %506 = trunc i32 %505 to i8
  %507 = load i8**, i8*** %10, align 8
  %508 = load i8*, i8** %507, align 8
  %509 = load i32, i32* %40, align 4
  %510 = zext i32 %509 to i64
  %511 = getelementptr inbounds i8, i8* %508, i64 %510
  store i8 %506, i8* %511, align 1
  br label %512

512:                                              ; preds = %504
  %513 = load i32, i32* %40, align 4
  %514 = add i32 %513, 1
  store i32 %514, i32* %40, align 4
  %515 = load i32, i32* %21, align 4
  %516 = load i8*, i8** %11, align 8
  %517 = sext i32 %515 to i64
  %518 = getelementptr inbounds i8, i8* %516, i64 %517
  store i8* %518, i8** %11, align 8
  br label %459, !llvm.loop !23

519:                                              ; preds = %459
  br label %520

520:                                              ; preds = %519, %457
  br label %521

521:                                              ; preds = %520
  %522 = load i32, i32* %39, align 4
  %523 = add i32 %522, 1
  store i32 %523, i32* %39, align 4
  %524 = load i8**, i8*** %10, align 8
  %525 = getelementptr inbounds i8*, i8** %524, i32 1
  store i8** %525, i8*** %10, align 8
  br label %364, !llvm.loop !24

526:                                              ; preds = %364
  %527 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %528 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %529 = load i32, i32* %14, align 4
  %530 = load i32, i32* %13, align 4
  %531 = load i32, i32* %16, align 4
  %532 = load i32, i32* %17, align 4
  %533 = load i32, i32* %18, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %527, %struct.png_info_def* noundef %528, i32 noundef %529, i32 noundef %530, i32 noundef 8, i32 noundef 3, i32 noundef %531, i32 noundef %532, i32 noundef %533)
  %534 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %535 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %536 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %22, i64 0, i64 0
  %537 = load i32, i32* %25, align 4
  call void @png_set_PLTE(%struct.png_struct_def* noundef %534, %struct.png_info_def* noundef %535, %struct.png_color_struct* noundef %536, i32 noundef %537)
  %538 = load i32, i32* %26, align 4
  %539 = icmp sgt i32 %538, 0
  br i1 %539, label %540, label %545

540:                                              ; preds = %526
  %541 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %542 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %543 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %544 = load i32, i32* %26, align 4
  call void @png_set_tRNS(%struct.png_struct_def* noundef %541, %struct.png_info_def* noundef %542, i8* noundef %543, i32 noundef %544, %struct.png_color_16_struct* noundef null)
  br label %545

545:                                              ; preds = %540, %526
  %546 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %547 = load i8*, i8** %12, align 8
  call void @png_free(%struct.png_struct_def* noundef %546, i8* noundef %547)
  store i32 16, i32* %8, align 4
  %548 = load i32, i32* %7, align 4
  %549 = and i32 %548, 2
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %558

551:                                              ; preds = %545
  %552 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %553 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %554 = load i32, i32* %7, align 4
  %555 = call i32 @opng_reduce_palette_bits(%struct.png_struct_def* noundef %552, %struct.png_info_def* noundef %553, i32 noundef %554)
  %556 = load i32, i32* %8, align 4
  %557 = or i32 %556, %555
  store i32 %557, i32* %8, align 4
  br label %558

558:                                              ; preds = %551, %545
  %559 = load i32, i32* %8, align 4
  store i32 %559, i32* %4, align 4
  br label %560

560:                                              ; preds = %558, %357, %46
  %561 = load i32, i32* %4, align 4
  ret i32 %561
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  br label %156, !llvm.loop !25

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
  br label %192, !llvm.loop !26

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
  br label %238, !llvm.loop !27

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
  br label %268, !llvm.loop !28

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
  br label %334, !llvm.loop !29

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
  br label %141, !llvm.loop !30

369:                                              ; preds = %141
  %370 = load i32, i32* %7, align 4
  store i32 %370, i32* %4, align 4
  br label %371

371:                                              ; preds = %369, %148, %31, %26
  %372 = load i32, i32* %4, align 4
  ret i32 %372
}

declare i32 @png_get_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

declare zeroext i8 @png_get_channels(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare i8** @png_get_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare i32 @png_get_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8** noundef, i32* noundef, %struct.png_color_16_struct** noundef) #1

declare void @png_free_data(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) #1

declare void @png_set_invalid(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

declare i32 @png_get_bKGD(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_16_struct** noundef) #1

declare i32 @png_get_sBIT(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_8_struct** noundef) #1

declare void @png_set_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @png_get_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_struct** noundef, i32* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @llvm.objectsize.i64.p0i8(i8* %33, i1 false, i1 true, i1 false)
  %35 = call i8* @__memset_chk(i8* noundef %32, i32 noundef 0, i64 noundef 256, i64 noundef %34) #7
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %68

38:                                               ; preds = %3
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %62, %38
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  store i32 0, i32* %18, align 4
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %56, %43
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 1, i8* %55, align 1
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %18, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %18, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  br label %46, !llvm.loop !31

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %17, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %17, align 4
  %65 = load i8**, i8*** %7, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %7, align 8
  br label %39, !llvm.loop !32

67:                                               ; preds = %39
  br label %137

68:                                               ; preds = %3
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 8
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.opng_analyze_sample_usage, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1039, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0)) #6
  unreachable

76:                                               ; No predecessors!
  br label %78

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 8, %79
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = shl i32 1, %81
  %83 = sub nsw i32 256, %82
  store i32 %83, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %84

84:                                               ; preds = %131, %78
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %136

88:                                               ; preds = %84
  store i32 0, i32* %18, align 4
  %89 = load i8**, i8*** %7, align 8
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %8, align 8
  br label %91

91:                                               ; preds = %127, %88
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %130

95:                                               ; preds = %91
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %124, %95
  %99 = load i8*, i8** %6, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i32, i32* %15, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* %14, align 4
  %106 = ashr i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %99, i64 %107
  store i8 1, i8* %108, align 1
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %15, align 4
  %111 = ashr i32 %110, %109
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %14, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %18, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %18, align 4
  br label %117

117:                                              ; preds = %98
  %118 = load i32, i32* %15, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ult i32 %121, %122
  br label %124

124:                                              ; preds = %120, %117
  %125 = phi i1 [ false, %117 ], [ %123, %120 ]
  br i1 %125, label %98, label %126, !llvm.loop !33

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %126
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  br label %91, !llvm.loop !34

130:                                              ; preds = %91
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %17, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %17, align 4
  %134 = load i8**, i8*** %7, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i32 1
  store i8** %135, i8*** %7, align 8
  br label %84, !llvm.loop !35

136:                                              ; preds = %84
  br label %137

137:                                              ; preds = %136, %67
  %138 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %139 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %140 = call i32 @png_get_bKGD(%struct.png_struct_def* noundef %138, %struct.png_info_def* noundef %139, %struct.png_color_16_struct** noundef %16)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load i8*, i8** %6, align 8
  %144 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %16, align 8
  %145 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %144, i32 0, i32 0
  %146 = load i8, i8* %145, align 2
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds i8, i8* %143, i64 %147
  store i8 1, i8* %148, align 1
  br label %149

149:                                              ; preds = %142, %137
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_realloc_PLTE(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x %struct.png_color_struct], align 1
  %8 = alloca %struct.png_color_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.opng_realloc_PLTE, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #6
  unreachable

17:                                               ; No predecessors!
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %17
  store i32 0, i32* %9, align 4
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %21 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %22 = call i32 @png_get_PLTE(%struct.png_struct_def* noundef %20, %struct.png_info_def* noundef %21, %struct.png_color_struct** noundef %8, i32* noundef %9)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %62

27:                                               ; preds = %19
  %28 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %7, i64 0, i64 0
  %29 = bitcast %struct.png_color_struct* %28 to i8*
  %30 = load %struct.png_color_struct*, %struct.png_color_struct** %8, align 8
  %31 = bitcast %struct.png_color_struct* %30 to i8*
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 3
  %35 = call i8* @__memcpy_chk(i8* noundef %29, i8* noundef %31, i64 noundef %34, i64 noundef 768) #7
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %27
  %40 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %7, i64 0, i64 0
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %40, i64 %42
  %44 = bitcast %struct.png_color_struct* %43 to i8*
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 3
  %50 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %7, i64 0, i64 0
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %50, i64 %52
  %54 = bitcast %struct.png_color_struct* %53 to i8*
  %55 = call i64 @llvm.objectsize.i64.p0i8(i8* %54, i1 false, i1 true, i1 false)
  %56 = call i8* @__memset_chk(i8* noundef %44, i32 noundef 0, i64 noundef %49, i64 noundef %55) #7
  br label %57

57:                                               ; preds = %39, %27
  %58 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %59 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %60 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %7, i64 0, i64 0
  %61 = load i32, i32* %6, align 4
  call void @png_set_PLTE(%struct.png_struct_def* noundef %58, %struct.png_info_def* noundef %59, %struct.png_color_struct* noundef %60, i32 noundef %61)
  br label %62

62:                                               ; preds = %57, %26
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_realloc_tRNS(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.opng_realloc_tRNS, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0)) #6
  unreachable

17:                                               ; No predecessors!
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %17
  store i32 0, i32* %9, align 4
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %21 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %22 = call i32 @png_get_tRNS(%struct.png_struct_def* noundef %20, %struct.png_info_def* noundef %21, i8** noundef %8, i32* noundef %9, %struct.png_color_16_struct** noundef null)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %56

27:                                               ; preds = %19
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = call i8* @__memcpy_chk(i8* noundef %28, i8* noundef %29, i64 noundef %31, i64 noundef 256) #7
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %27
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = call i64 @llvm.objectsize.i64.p0i8(i8* %48, i1 false, i1 true, i1 false)
  %50 = call i8* @__memset_chk(i8* noundef %40, i32 noundef 0, i64 noundef %44, i64 noundef %49) #7
  br label %51

51:                                               ; preds = %36, %27
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %53 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %55 = load i32, i32* %6, align 4
  call void @png_set_tRNS(%struct.png_struct_def* noundef %52, %struct.png_info_def* noundef %53, i8* noundef %54, i32 noundef %55, %struct.png_color_16_struct* noundef null)
  br label %56

56:                                               ; preds = %51, %26
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  br label %232

33:                                               ; preds = %3
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %35 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %36 = call i32 @png_get_IHDR(%struct.png_struct_def* noundef %34, %struct.png_info_def* noundef %35, i32* noundef %11, i32* noundef %12, i32* noundef %17, i32* noundef %13, i32* noundef %14, i32* noundef %15, i32* noundef %16)
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %232

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
  br label %232

50:                                               ; preds = %46
  %51 = load i32, i32* %26, align 4
  %52 = icmp sgt i32 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 4, i32* %18, align 4
  br label %70

54:                                               ; preds = %50
  %55 = load i32, i32* %26, align 4
  %56 = icmp sgt i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 2, i32* %18, align 4
  br label %69

58:                                               ; preds = %54
  %59 = load i32, i32* %26, align 4
  %60 = icmp sgt i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.opng_reduce_palette_bits, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 691, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #6
  unreachable

66:                                               ; No predecessors!
  br label %68

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %66
  store i32 1, i32* %18, align 4
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %53
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp eq i32 %76, %77
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.opng_reduce_palette_bits, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 697, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0)) #6
  unreachable

84:                                               ; No predecessors!
  br label %86

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %84
  store i32 0, i32* %4, align 4
  br label %232

87:                                               ; preds = %71
  %88 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %89 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %90 = call i8** @png_get_rows(%struct.png_struct_def* noundef %88, %struct.png_info_def* noundef %89)
  store i8** %90, i8*** %8, align 8
  %91 = load i32, i32* %17, align 4
  %92 = icmp eq i32 %91, 8
  br i1 %92, label %93, label %148

93:                                               ; preds = %87
  store i32 0, i32* %27, align 4
  br label %94

94:                                               ; preds = %142, %93
  %95 = load i32, i32* %27, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %147

98:                                               ; preds = %94
  %99 = load i8**, i8*** %8, align 8
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %10, align 8
  store i8* %100, i8** %9, align 8
  store i32 8, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %28, align 4
  br label %101

101:                                              ; preds = %131, %98
  %102 = load i32, i32* %28, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %134

105:                                              ; preds = %101
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %22, align 4
  %108 = sub i32 %107, %106
  store i32 %108, i32* %22, align 4
  %109 = load i32, i32* %22, align 4
  %110 = icmp ugt i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load i8*, i8** %9, align 8
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i32, i32* %22, align 4
  %116 = shl i32 %114, %115
  %117 = load i32, i32* %24, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %24, align 4
  br label %128

119:                                              ; preds = %105
  %120 = load i32, i32* %24, align 4
  %121 = load i8*, i8** %9, align 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %120, %123
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %10, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %10, align 8
  store i8 %125, i8* %126, align 1
  store i32 8, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %128

128:                                              ; preds = %119, %111
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %9, align 8
  br label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %28, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %28, align 4
  br label %101, !llvm.loop !36

134:                                              ; preds = %101
  %135 = load i32, i32* %22, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* %24, align 4
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %10, align 8
  store i8 %139, i8* %140, align 1
  br label %141

141:                                              ; preds = %137, %134
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %27, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %27, align 4
  %145 = load i8**, i8*** %8, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i32 1
  store i8** %146, i8*** %8, align 8
  br label %94, !llvm.loop !37

147:                                              ; preds = %94
  br label %222

148:                                              ; preds = %87
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 8, %149
  %151 = shl i32 1, %150
  %152 = sub nsw i32 %151, 256
  store i32 %152, i32* %19, align 4
  store i32 0, i32* %27, align 4
  br label %153

153:                                              ; preds = %216, %148
  %154 = load i32, i32* %27, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %221

157:                                              ; preds = %153
  %158 = load i8**, i8*** %8, align 8
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %10, align 8
  store i8* %159, i8** %9, align 8
  store i32 8, i32* %22, align 4
  store i32 8, i32* %21, align 4
  %160 = load i32, i32* %19, align 4
  store i32 %160, i32* %20, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %28, align 4
  br label %161

161:                                              ; preds = %205, %157
  %162 = load i32, i32* %28, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %165, label %208

165:                                              ; preds = %161
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %21, align 4
  %168 = sub i32 %167, %166
  store i32 %168, i32* %21, align 4
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* %20, align 4
  %171 = lshr i32 %170, %169
  store i32 %171, i32* %20, align 4
  %172 = load i8*, i8** %9, align 8
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i32, i32* %20, align 4
  %176 = and i32 %174, %175
  %177 = load i32, i32* %21, align 4
  %178 = lshr i32 %176, %177
  store i32 %178, i32* %23, align 4
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* %22, align 4
  %181 = sub i32 %180, %179
  store i32 %181, i32* %22, align 4
  %182 = load i32, i32* %22, align 4
  %183 = icmp ugt i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %165
  %185 = load i32, i32* %23, align 4
  %186 = load i32, i32* %22, align 4
  %187 = shl i32 %185, %186
  %188 = load i32, i32* %24, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %24, align 4
  br label %197

190:                                              ; preds = %165
  %191 = load i32, i32* %24, align 4
  %192 = load i32, i32* %23, align 4
  %193 = or i32 %191, %192
  %194 = trunc i32 %193 to i8
  %195 = load i8*, i8** %10, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %10, align 8
  store i8 %194, i8* %195, align 1
  store i32 8, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %197

197:                                              ; preds = %190, %184
  %198 = load i32, i32* %21, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  store i32 8, i32* %21, align 4
  %201 = load i32, i32* %19, align 4
  store i32 %201, i32* %20, align 4
  %202 = load i8*, i8** %9, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %9, align 8
  br label %204

204:                                              ; preds = %200, %197
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %28, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %28, align 4
  br label %161, !llvm.loop !38

208:                                              ; preds = %161
  %209 = load i32, i32* %22, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load i32, i32* %24, align 4
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %10, align 8
  store i8 %213, i8* %214, align 1
  br label %215

215:                                              ; preds = %211, %208
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %27, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %27, align 4
  %219 = load i8**, i8*** %8, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i32 1
  store i8** %220, i8*** %8, align 8
  br label %153, !llvm.loop !39

221:                                              ; preds = %153
  br label %222

222:                                              ; preds = %221, %147
  %223 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %224 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* %16, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %223, %struct.png_info_def* noundef %224, i32 noundef %225, i32 noundef %226, i32 noundef %227, i32 noundef %228, i32 noundef %229, i32 noundef %230, i32 noundef %231)
  store i32 2, i32* %4, align 4
  br label %232

232:                                              ; preds = %222, %86, %49, %39, %32
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare void @png_set_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8* noundef, i32 noundef, %struct.png_color_16_struct* noundef) #1

declare i32 @png_get_hIST(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i16** noundef) #1

declare i32 @png_get_image_height(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare i32 @png_get_image_width(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

; Function Attrs: nounwind
declare i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #3

declare void @png_set_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_struct* noundef, i32 noundef) #1

declare noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opng_get_alpha_row, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0)) #6
  unreachable

43:                                               ; No predecessors!
  br label %45

44:                                               ; preds = %4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 8
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opng_get_alpha_row, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0)) #6
  unreachable

53:                                               ; No predecessors!
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %56, 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %190, label %59

59:                                               ; preds = %55
  %60 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %6, align 8
  %61 = icmp eq %struct.png_color_16_struct* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = load i8*, i8** %8, align 8
  %67 = call i64 @llvm.objectsize.i64.p0i8(i8* %66, i1 false, i1 true, i1 false)
  %68 = call i8* @__memset_chk(i8* noundef %63, i32 noundef 255, i64 noundef %65, i64 noundef %67) #7
  br label %223

69:                                               ; preds = %59
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %139

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, 3
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opng_get_alpha_row, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0)) #6
  unreachable

80:                                               ; No predecessors!
  br label %82

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %80
  %83 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %6, align 8
  %84 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %83, i32 0, i32 1
  %85 = load i16, i16* %84, align 2
  %86 = trunc i16 %85 to i8
  store i8 %86, i8* %14, align 1
  %87 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %6, align 8
  %88 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %87, i32 0, i32 2
  %89 = load i16, i16* %88, align 2
  %90 = trunc i16 %89 to i8
  store i8 %90, i8* %15, align 1
  %91 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %6, align 8
  %92 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %91, i32 0, i32 3
  %93 = load i16, i16* %92, align 2
  %94 = trunc i16 %93 to i8
  store i8 %94, i8* %16, align 1
  %95 = load i8*, i8** %7, align 8
  store i8* %95, i8** %9, align 8
  store i32 0, i32* %18, align 4
  br label %96

96:                                               ; preds = %133, %82
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %138

100:                                              ; preds = %96
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* %14, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %100
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* %15, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %108
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8, i8* %16, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %120, %122
  br label %124

124:                                              ; preds = %116, %108, %100
  %125 = phi i1 [ false, %108 ], [ false, %100 ], [ %123, %116 ]
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 0, i32 255
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* %18, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8 %128, i8* %132, align 1
  br label %133

133:                                              ; preds = %124
  %134 = load i32, i32* %18, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %18, align 4
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 3
  store i8* %137, i8** %9, align 8
  br label %96, !llvm.loop !40

138:                                              ; preds = %96
  br label %189

139:                                              ; preds = %69
  %140 = load i32, i32* %11, align 4
  %141 = icmp eq i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = sext i32 %143 to i64
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opng_get_alpha_row, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0)) #6
  unreachable

147:                                              ; No predecessors!
  br label %149

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %147
  %150 = load i32, i32* %13, align 4
  %151 = icmp eq i32 %150, 1
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opng_get_alpha_row, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0)) #6
  unreachable

157:                                              ; No predecessors!
  br label %159

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %157
  %160 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** %6, align 8
  %161 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %160, i32 0, i32 4
  %162 = load i16, i16* %161, align 2
  %163 = trunc i16 %162 to i8
  store i8 %163, i8* %17, align 1
  store i32 0, i32* %18, align 4
  br label %164

164:                                              ; preds = %185, %159
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %188

168:                                              ; preds = %164
  %169 = load i8*, i8** %7, align 8
  %170 = load i32, i32* %18, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* %17, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %174, %176
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 0, i32 255
  %180 = trunc i32 %179 to i8
  %181 = load i8*, i8** %8, align 8
  %182 = load i32, i32* %18, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  store i8 %180, i8* %184, align 1
  br label %185

185:                                              ; preds = %168
  %186 = load i32, i32* %18, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %18, align 4
  br label %164, !llvm.loop !41

188:                                              ; preds = %164
  br label %189

189:                                              ; preds = %188, %138
  br label %223

190:                                              ; preds = %55
  %191 = load i32, i32* %13, align 4
  %192 = icmp sgt i32 %191, 1
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = sext i32 %194 to i64
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opng_get_alpha_row, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0)) #6
  unreachable

198:                                              ; No predecessors!
  br label %200

199:                                              ; preds = %190
  br label %200

200:                                              ; preds = %199, %198
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %201, i64 %204
  store i8* %205, i8** %9, align 8
  store i32 0, i32* %18, align 4
  br label %206

206:                                              ; preds = %214, %200
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp ult i32 %207, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %206
  %211 = load i8*, i8** %9, align 8
  %212 = load i8, i8* %211, align 1
  %213 = load i8*, i8** %8, align 8
  store i8 %212, i8* %213, align 1
  br label %214

214:                                              ; preds = %210
  %215 = load i32, i32* %18, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %18, align 4
  %217 = load i32, i32* %13, align 4
  %218 = load i8*, i8** %9, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8* %220, i8** %9, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %8, align 8
  br label %206, !llvm.loop !42

223:                                              ; preds = %62, %189, %206
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  br i1 %29, label %30, label %35

30:                                               ; preds = %10
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp sle i32 %32, %33
  br label %35

35:                                               ; preds = %30, %10
  %36 = phi i1 [ false, %10 ], [ %34, %30 ]
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.opng_insert_palette_entry, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i64 0, i64 0)) #6
  unreachable

42:                                               ; No predecessors!
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %50, %52
  br label %54

54:                                               ; preds = %48, %44
  %55 = phi i1 [ false, %44 ], [ %53, %48 ]
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.opng_insert_palette_entry, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0)) #6
  unreachable

61:                                               ; No predecessors!
  br label %63

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %20, align 4
  %65 = icmp ult i32 %64, 255
  br i1 %65, label %66, label %169

66:                                               ; preds = %63
  store i32 0, i32* %22, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %23, align 4
  br label %70

70:                                               ; preds = %167, %66
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %23, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %168

74:                                               ; preds = %70
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %23, align 4
  %77 = add nsw i32 %75, %76
  %78 = sdiv i32 %77, 2
  store i32 %78, i32* %24, align 4
  %79 = load i32, i32* %20, align 4
  %80 = load i8*, i8** %14, align 8
  %81 = load i32, i32* %24, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp ne i32 %79, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %74
  %88 = load i32, i32* %20, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = load i32, i32* %24, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = sub nsw i32 %88, %94
  br label %150

96:                                               ; preds = %74
  %97 = load i32, i32* %17, align 4
  %98 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %99 = load i32, i32* %24, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %98, i64 %100
  %102 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %101, i32 0, i32 0
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %97, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %96
  %107 = load i32, i32* %17, align 4
  %108 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %109 = load i32, i32* %24, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %108, i64 %110
  %112 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %111, i32 0, i32 0
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = sub nsw i32 %107, %114
  br label %148

116:                                              ; preds = %96
  %117 = load i32, i32* %18, align 4
  %118 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %119 = load i32, i32* %24, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %118, i64 %120
  %122 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %121, i32 0, i32 1
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ne i32 %117, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %116
  %127 = load i32, i32* %18, align 4
  %128 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %129 = load i32, i32* %24, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %128, i64 %130
  %132 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %131, i32 0, i32 1
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = sub nsw i32 %127, %134
  br label %146

136:                                              ; preds = %116
  %137 = load i32, i32* %19, align 4
  %138 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %139 = load i32, i32* %24, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %138, i64 %140
  %142 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %141, i32 0, i32 2
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = sub nsw i32 %137, %144
  br label %146

146:                                              ; preds = %136, %126
  %147 = phi i32 [ %135, %126 ], [ %145, %136 ]
  br label %148

148:                                              ; preds = %146, %106
  %149 = phi i32 [ %115, %106 ], [ %147, %146 ]
  br label %150

150:                                              ; preds = %148, %87
  %151 = phi i32 [ %95, %87 ], [ %149, %148 ]
  store i32 %151, i32* %25, align 4
  %152 = load i32, i32* %25, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* %24, align 4
  %156 = sub nsw i32 %155, 1
  store i32 %156, i32* %23, align 4
  br label %167

157:                                              ; preds = %150
  %158 = load i32, i32* %25, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %24, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %22, align 4
  br label %166

163:                                              ; preds = %157
  %164 = load i32, i32* %24, align 4
  %165 = load i32*, i32** %21, align 8
  store i32 %164, i32* %165, align 4
  store i32 0, i32* %11, align 4
  br label %448

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %154
  br label %70, !llvm.loop !43

168:                                              ; preds = %70
  br label %254

169:                                              ; preds = %63
  %170 = load i32*, i32** %15, align 8
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %22, align 4
  %172 = load i32*, i32** %13, align 8
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %23, align 4
  br label %175

175:                                              ; preds = %252, %169
  %176 = load i32, i32* %22, align 4
  %177 = load i32, i32* %23, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %179, label %253

179:                                              ; preds = %175
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* %23, align 4
  %182 = add nsw i32 %180, %181
  %183 = sdiv i32 %182, 2
  store i32 %183, i32* %24, align 4
  %184 = load i32, i32* %17, align 4
  %185 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %186 = load i32, i32* %24, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %185, i64 %187
  %189 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %188, i32 0, i32 0
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp ne i32 %184, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %179
  %194 = load i32, i32* %17, align 4
  %195 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %196 = load i32, i32* %24, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %195, i64 %197
  %199 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %198, i32 0, i32 0
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = sub nsw i32 %194, %201
  br label %235

203:                                              ; preds = %179
  %204 = load i32, i32* %18, align 4
  %205 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %206 = load i32, i32* %24, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %205, i64 %207
  %209 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %208, i32 0, i32 1
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp ne i32 %204, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %203
  %214 = load i32, i32* %18, align 4
  %215 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %216 = load i32, i32* %24, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %215, i64 %217
  %219 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %218, i32 0, i32 1
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = sub nsw i32 %214, %221
  br label %233

223:                                              ; preds = %203
  %224 = load i32, i32* %19, align 4
  %225 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %226 = load i32, i32* %24, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %225, i64 %227
  %229 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %228, i32 0, i32 2
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = sub nsw i32 %224, %231
  br label %233

233:                                              ; preds = %223, %213
  %234 = phi i32 [ %222, %213 ], [ %232, %223 ]
  br label %235

235:                                              ; preds = %233, %193
  %236 = phi i32 [ %202, %193 ], [ %234, %233 ]
  store i32 %236, i32* %25, align 4
  %237 = load i32, i32* %25, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i32, i32* %24, align 4
  %241 = sub nsw i32 %240, 1
  store i32 %241, i32* %23, align 4
  br label %252

242:                                              ; preds = %235
  %243 = load i32, i32* %25, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, i32* %24, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %22, align 4
  br label %251

248:                                              ; preds = %242
  %249 = load i32, i32* %24, align 4
  %250 = load i32*, i32** %21, align 8
  store i32 %249, i32* %250, align 4
  store i32 0, i32* %11, align 4
  br label %448

251:                                              ; preds = %245
  br label %252

252:                                              ; preds = %251, %239
  br label %175, !llvm.loop !44

253:                                              ; preds = %175
  br label %254

254:                                              ; preds = %253, %168
  %255 = load i32, i32* %20, align 4
  %256 = icmp ugt i32 %255, 255
  br i1 %256, label %257, label %327

257:                                              ; preds = %254
  store i32 0, i32* %26, align 4
  br label %258

258:                                              ; preds = %323, %257
  %259 = load i32, i32* %26, align 4
  %260 = load i32*, i32** %15, align 8
  %261 = load i32, i32* %260, align 4
  %262 = icmp slt i32 %259, %261
  br i1 %262, label %263, label %326

263:                                              ; preds = %258
  %264 = load i32, i32* %17, align 4
  %265 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %266 = load i32, i32* %26, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %265, i64 %267
  %269 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %268, i32 0, i32 0
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = icmp ne i32 %264, %271
  br i1 %272, label %273, label %283

273:                                              ; preds = %263
  %274 = load i32, i32* %17, align 4
  %275 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %276 = load i32, i32* %26, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %275, i64 %277
  %279 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %278, i32 0, i32 0
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = sub nsw i32 %274, %281
  br label %315

283:                                              ; preds = %263
  %284 = load i32, i32* %18, align 4
  %285 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %286 = load i32, i32* %26, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %285, i64 %287
  %289 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %288, i32 0, i32 1
  %290 = load i8, i8* %289, align 1
  %291 = zext i8 %290 to i32
  %292 = icmp ne i32 %284, %291
  br i1 %292, label %293, label %303

293:                                              ; preds = %283
  %294 = load i32, i32* %18, align 4
  %295 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %296 = load i32, i32* %26, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %295, i64 %297
  %299 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %298, i32 0, i32 1
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = sub nsw i32 %294, %301
  br label %313

303:                                              ; preds = %283
  %304 = load i32, i32* %19, align 4
  %305 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %306 = load i32, i32* %26, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %305, i64 %307
  %309 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %308, i32 0, i32 2
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i32
  %312 = sub nsw i32 %304, %311
  br label %313

313:                                              ; preds = %303, %293
  %314 = phi i32 [ %302, %293 ], [ %312, %303 ]
  br label %315

315:                                              ; preds = %313, %273
  %316 = phi i32 [ %282, %273 ], [ %314, %313 ]
  store i32 %316, i32* %25, align 4
  %317 = load i32, i32* %25, align 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %315
  %320 = load i32, i32* %26, align 4
  %321 = load i32*, i32** %21, align 8
  store i32 %320, i32* %321, align 4
  store i32 0, i32* %11, align 4
  br label %448

322:                                              ; preds = %315
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %26, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %26, align 4
  br label %258, !llvm.loop !45

326:                                              ; preds = %258
  br label %327

327:                                              ; preds = %326, %254
  %328 = load i32*, i32** %13, align 8
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %16, align 4
  %331 = icmp sge i32 %329, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %327
  %333 = load i32*, i32** %21, align 8
  store i32 -1, i32* %333, align 4
  %334 = load i32*, i32** %15, align 8
  store i32 -1, i32* %334, align 4
  %335 = load i32*, i32** %13, align 8
  store i32 -1, i32* %335, align 4
  store i32 -1, i32* %11, align 4
  br label %448

336:                                              ; preds = %327
  %337 = load i32, i32* %22, align 4
  %338 = icmp sge i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %336
  %340 = load i32, i32* %22, align 4
  %341 = load i32*, i32** %13, align 8
  %342 = load i32, i32* %341, align 4
  %343 = icmp sle i32 %340, %342
  br label %344

344:                                              ; preds = %339, %336
  %345 = phi i1 [ false, %336 ], [ %343, %339 ]
  %346 = xor i1 %345, true
  %347 = zext i1 %346 to i32
  %348 = sext i32 %347 to i64
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %344
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.opng_insert_palette_entry, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0)) #6
  unreachable

351:                                              ; No predecessors!
  br label %353

352:                                              ; preds = %344
  br label %353

353:                                              ; preds = %352, %351
  %354 = load i32*, i32** %13, align 8
  %355 = load i32, i32* %354, align 4
  store i32 %355, i32* %26, align 4
  br label %356

356:                                              ; preds = %372, %353
  %357 = load i32, i32* %26, align 4
  %358 = load i32, i32* %22, align 4
  %359 = icmp sgt i32 %357, %358
  br i1 %359, label %360, label %375

360:                                              ; preds = %356
  %361 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %362 = load i32, i32* %26, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %361, i64 %363
  %365 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %366 = load i32, i32* %26, align 4
  %367 = sub nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %365, i64 %368
  %370 = bitcast %struct.png_color_struct* %364 to i8*
  %371 = bitcast %struct.png_color_struct* %369 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %370, i8* align 1 %371, i64 3, i1 false)
  br label %372

372:                                              ; preds = %360
  %373 = load i32, i32* %26, align 4
  %374 = add nsw i32 %373, -1
  store i32 %374, i32* %26, align 4
  br label %356, !llvm.loop !46

375:                                              ; preds = %356
  %376 = load i32, i32* %17, align 4
  %377 = trunc i32 %376 to i8
  %378 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %379 = load i32, i32* %22, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %378, i64 %380
  %382 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %381, i32 0, i32 0
  store i8 %377, i8* %382, align 1
  %383 = load i32, i32* %18, align 4
  %384 = trunc i32 %383 to i8
  %385 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %386 = load i32, i32* %22, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %385, i64 %387
  %389 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %388, i32 0, i32 1
  store i8 %384, i8* %389, align 1
  %390 = load i32, i32* %19, align 4
  %391 = trunc i32 %390 to i8
  %392 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8
  %393 = load i32, i32* %22, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %392, i64 %394
  %396 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %395, i32 0, i32 2
  store i8 %391, i8* %396, align 1
  %397 = load i32*, i32** %13, align 8
  %398 = load i32, i32* %397, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %397, align 4
  %400 = load i32, i32* %20, align 4
  %401 = icmp ult i32 %400, 255
  br i1 %401, label %402, label %445

402:                                              ; preds = %375
  %403 = load i32, i32* %22, align 4
  %404 = load i32*, i32** %15, align 8
  %405 = load i32, i32* %404, align 4
  %406 = icmp sle i32 %403, %405
  %407 = xor i1 %406, true
  %408 = zext i1 %407 to i32
  %409 = sext i32 %408 to i64
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %402
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.opng_insert_palette_entry, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0)) #6
  unreachable

412:                                              ; No predecessors!
  br label %414

413:                                              ; preds = %402
  br label %414

414:                                              ; preds = %413, %412
  %415 = load i32*, i32** %15, align 8
  %416 = load i32, i32* %415, align 4
  store i32 %416, i32* %26, align 4
  br label %417

417:                                              ; preds = %432, %414
  %418 = load i32, i32* %26, align 4
  %419 = load i32, i32* %22, align 4
  %420 = icmp sgt i32 %418, %419
  br i1 %420, label %421, label %435

421:                                              ; preds = %417
  %422 = load i8*, i8** %14, align 8
  %423 = load i32, i32* %26, align 4
  %424 = sub nsw i32 %423, 1
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, i8* %422, i64 %425
  %427 = load i8, i8* %426, align 1
  %428 = load i8*, i8** %14, align 8
  %429 = load i32, i32* %26, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8, i8* %428, i64 %430
  store i8 %427, i8* %431, align 1
  br label %432

432:                                              ; preds = %421
  %433 = load i32, i32* %26, align 4
  %434 = add nsw i32 %433, -1
  store i32 %434, i32* %26, align 4
  br label %417, !llvm.loop !47

435:                                              ; preds = %417
  %436 = load i32, i32* %20, align 4
  %437 = trunc i32 %436 to i8
  %438 = load i8*, i8** %14, align 8
  %439 = load i32, i32* %22, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, i8* %438, i64 %440
  store i8 %437, i8* %441, align 1
  %442 = load i32*, i32** %15, align 8
  %443 = load i32, i32* %442, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %442, align 4
  br label %445

445:                                              ; preds = %435, %375
  %446 = load i32, i32* %22, align 4
  %447 = load i32*, i32** %21, align 8
  store i32 %446, i32* %447, align 4
  store i32 1, i32* %11, align 4
  br label %448

448:                                              ; preds = %445, %332, %319, %248, %163
  %449 = load i32, i32* %11, align 4
  ret i32 %449
}

declare void @png_free(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold noreturn }
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
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
