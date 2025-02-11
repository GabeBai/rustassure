; ModuleID = 'pngread.c'
source_filename = "pngread.c"
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

@.str = private unnamed_addr constant [25 x i8] c"Missing IHDR before IDAT\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing PLTE before IDAT\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Too many IDATs found\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"png_read_update_info/png_start_read_image: duplicate call\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"png_start_read_image/png_read_update_info: duplicate call\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Invalid attempt to read row data\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"bad adaptive filter value\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"sequential row overflow\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"internal sequential row size calculation error\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"Interlace handling should be turned on when using png_read_image\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Read palette index exceeding num_palette\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Image is too high to process with png_read_png()\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"PNG_TRANSFORM_SCALE_16 not supported\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"PNG_TRANSFORM_STRIP_16 not supported\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"PNG_TRANSFORM_STRIP_ALPHA not supported\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"PNG_TRANSFORM_PACKING not supported\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"PNG_TRANSFORM_PACKSWAP not supported\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"PNG_TRANSFORM_EXPAND not supported\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"PNG_TRANSFORM_INVERT_MONO not supported\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"PNG_TRANSFORM_SHIFT not supported\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"PNG_TRANSFORM_BGR not supported\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"PNG_TRANSFORM_SWAP_ALPHA not supported\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"PNG_TRANSFORM_SWAP_ENDIAN not supported\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"PNG_TRANSFORM_INVERT_ALPHA not supported\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"PNG_TRANSFORM_GRAY_TO_RGB not supported\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"PNG_TRANSFORM_EXPAND_16 not supported\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define noalias %struct.png_struct_def* @png_create_read_struct(i8* noundef %0, i8* noundef %1, void (%struct.png_struct_def*, i8*)* noundef %2, void (%struct.png_struct_def*, i8*)* noundef %3) #0 {
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
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 6
  store i32 32768, i32* %19, align 8
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 81
  store i32 8192, i32* %21, align 8
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, 1048576
  store i32 %25, i32* %23, align 4
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  %27 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 2097152
  store i32 %29, i32* %27, align 4
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  call void @png_set_read_fn(%struct.png_struct_def* noundef %30, i8* noundef null, void (%struct.png_struct_def*, i8*, i64)* noundef null)
  br label %31

31:                                               ; preds = %17, %4
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %9, align 8
  ret %struct.png_struct_def* %32
}

declare noalias %struct.png_struct_def* @png_create_png_struct(i8* noundef, i8* noundef, void (%struct.png_struct_def*, i8*)* noundef, void (%struct.png_struct_def*, i8*)* noundef, i8* noundef, i8* (%struct.png_struct_def*, i64)* noundef, void (%struct.png_struct_def*, i8*)* noundef) #1

declare void @png_set_read_fn(%struct.png_struct_def* noundef, i8* noundef, void (%struct.png_struct_def*, i8*, i64)* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_info(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %9 = icmp eq %struct.png_struct_def* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %12 = icmp eq %struct.png_info_def* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  br label %168

14:                                               ; preds = %10
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %16 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  call void @png_read_sig(%struct.png_struct_def* noundef %15, %struct.png_info_def* noundef %16)
  br label %17

17:                                               ; preds = %167, %14
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %19 = call i32 @png_read_chunk_header(%struct.png_struct_def* noundef %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 30
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 1229209940
  br i1 %24, label %25, label %62

25:                                               ; preds = %17
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %27 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %32, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)) #5
  unreachable

33:                                               ; preds = %25
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %34, i32 0, i32 47
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %41 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %46, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #5
  unreachable

47:                                               ; preds = %39, %33
  %48 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %49 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %54, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %47
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %59 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, 4
  store i32 %61, i32* %59, align 8
  br label %74

62:                                               ; preds = %17
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %64 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %70 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, 8
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %68, %62
  br label %74

74:                                               ; preds = %73, %57
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 1229472850
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %79 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %80 = load i32, i32* %6, align 4
  call void @png_handle_IHDR(%struct.png_struct_def* noundef %78, %struct.png_info_def* noundef %79, i32 noundef %80)
  br label %167

81:                                               ; preds = %74
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 1229278788
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %86 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %87 = load i32, i32* %6, align 4
  call void @png_handle_IEND(%struct.png_struct_def* noundef %85, %struct.png_info_def* noundef %86, i32 noundef %87)
  br label %166

88:                                               ; preds = %81
  %89 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @png_chunk_unknown_handling(%struct.png_struct_def* noundef %89, i32 noundef %90)
  store i32 %91, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %95 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  call void @png_handle_unknown(%struct.png_struct_def* noundef %94, %struct.png_info_def* noundef %95, i32 noundef %96, i32 noundef %97)
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 1347179589
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %102 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, 2
  store i32 %104, i32* %102, align 8
  br label %112

105:                                              ; preds = %93
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, 1229209940
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %110 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %109, i32 0, i32 36
  store i32 0, i32* %110, align 8
  br label %168

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %100
  br label %165

113:                                              ; preds = %88
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %114, 1347179589
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %118 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %119 = load i32, i32* %6, align 4
  call void @png_handle_PLTE(%struct.png_struct_def* noundef %117, %struct.png_info_def* noundef %118, i32 noundef %119)
  br label %164

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %121, 1229209940
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %126 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %125, i32 0, i32 36
  store i32 %124, i32* %126, align 8
  br label %168

127:                                              ; preds = %120
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %128, 1649100612
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %132 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %133 = load i32, i32* %6, align 4
  call void @png_handle_bKGD(%struct.png_struct_def* noundef %131, %struct.png_info_def* noundef %132, i32 noundef %133)
  br label %162

134:                                              ; preds = %127
  %135 = load i32, i32* %7, align 4
  %136 = icmp eq i32 %135, 1749635924
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %139 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %140 = load i32, i32* %6, align 4
  call void @png_handle_hIST(%struct.png_struct_def* noundef %138, %struct.png_info_def* noundef %139, i32 noundef %140)
  br label %161

141:                                              ; preds = %134
  %142 = load i32, i32* %7, align 4
  %143 = icmp eq i32 %142, 1933723988
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %146 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %147 = load i32, i32* %6, align 4
  call void @png_handle_sBIT(%struct.png_struct_def* noundef %145, %struct.png_info_def* noundef %146, i32 noundef %147)
  br label %160

148:                                              ; preds = %141
  %149 = load i32, i32* %7, align 4
  %150 = icmp eq i32 %149, 1951551059
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %153 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %154 = load i32, i32* %6, align 4
  call void @png_handle_tRNS(%struct.png_struct_def* noundef %152, %struct.png_info_def* noundef %153, i32 noundef %154)
  br label %159

155:                                              ; preds = %148
  %156 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %157 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %158 = load i32, i32* %6, align 4
  call void @png_handle_unknown(%struct.png_struct_def* noundef %156, %struct.png_info_def* noundef %157, i32 noundef %158, i32 noundef 0)
  br label %159

159:                                              ; preds = %155, %151
  br label %160

160:                                              ; preds = %159, %144
  br label %161

161:                                              ; preds = %160, %137
  br label %162

162:                                              ; preds = %161, %130
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163, %116
  br label %165

165:                                              ; preds = %164, %112
  br label %166

166:                                              ; preds = %165, %84
  br label %167

167:                                              ; preds = %166, %77
  br label %17

168:                                              ; preds = %13, %123, %108
  ret void
}

declare void @png_read_sig(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare i32 @png_read_chunk_header(%struct.png_struct_def* noundef) #1

; Function Attrs: noreturn
declare void @png_chunk_error(%struct.png_struct_def* noundef, i8* noundef) #2

declare void @png_chunk_benign_error(%struct.png_struct_def* noundef, i8* noundef) #1

declare void @png_handle_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

declare void @png_handle_IEND(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

declare i32 @png_chunk_unknown_handling(%struct.png_struct_def* noundef, i32 noundef) #1

declare void @png_handle_unknown(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) #1

declare void @png_handle_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

declare void @png_handle_bKGD(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

declare void @png_handle_hIST(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

declare void @png_handle_sBIT(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

declare void @png_handle_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_update_info(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp ne %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_read_start_row(%struct.png_struct_def* noundef %14)
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %16 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  call void @png_read_transform_info(%struct.png_struct_def* noundef %15, %struct.png_info_def* noundef %16)
  br label %19

17:                                               ; preds = %7
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %18, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13
  br label %20

20:                                               ; preds = %19, %2
  ret void
}

declare void @png_read_start_row(%struct.png_struct_def* noundef) #1

declare void @png_read_transform_info(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare void @png_app_error(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_start_read_image(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = icmp ne %struct.png_struct_def* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_read_start_row(%struct.png_struct_def* noundef %12)
  br label %15

13:                                               ; preds = %5
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %14, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %11
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_row(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.png_row_info_struct, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %9 = icmp eq %struct.png_struct_def* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %401

11:                                               ; preds = %3
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_read_start_row(%struct.png_struct_def* noundef %18)
  br label %19

19:                                               ; preds = %17, %11
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 28
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 47
  %26 = load i8, i8* %25, align 1
  %27 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 2
  store i8 %26, i8* %27, align 8
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 48
  %30 = load i8, i8* %29, align 8
  %31 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 3
  store i8 %30, i8* %31, align 1
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %33 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %32, i32 0, i32 51
  %34 = load i8, i8* %33, align 1
  %35 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 4
  store i8 %34, i8* %35, align 2
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 50
  %38 = load i8, i8* %37, align 2
  %39 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 5
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 5
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sge i32 %42, 8
  br i1 %43, label %44, label %53

44:                                               ; preds = %19
  %45 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 5
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i64
  %51 = lshr i64 %50, 3
  %52 = mul i64 %47, %51
  br label %63

53:                                               ; preds = %19
  %54 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 5
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i64
  %60 = mul i64 %56, %59
  %61 = add i64 %60, 7
  %62 = lshr i64 %61, 3
  br label %63

63:                                               ; preds = %53, %44
  %64 = phi i64 [ %52, %44 ], [ %62, %53 ]
  %65 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 1
  store i64 %64, i64* %65, align 8
  %66 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %67 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %66, i32 0, i32 29
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %72 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %71, i32 0, i32 45
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %70, %63
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %79 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %78, i32 0, i32 44
  %80 = load i8, i8* %79, align 4
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %222

83:                                               ; preds = %77
  %84 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %85 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 2
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %222

89:                                               ; preds = %83
  %90 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %91 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %90, i32 0, i32 45
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  switch i32 %93, label %211 [
    i32 0, label %94
    i32 1, label %109
    i32 2, label %129
    i32 3, label %150
    i32 4, label %170
    i32 5, label %191
    i32 6, label %212
  ]

94:                                               ; preds = %89
  %95 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %96 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %95, i32 0, i32 29
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 7
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load i8*, i8** %6, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %105 = load i8*, i8** %6, align 8
  call void @png_combine_row(%struct.png_struct_def* noundef %104, i8* noundef %105, i32 noundef 1)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_read_finish_row(%struct.png_struct_def* noundef %107)
  br label %401

108:                                              ; preds = %94
  br label %221

109:                                              ; preds = %89
  %110 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %111 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %110, i32 0, i32 29
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 7
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %109
  %116 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %117 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %116, i32 0, i32 23
  %118 = load i32, i32* %117, align 4
  %119 = icmp ult i32 %118, 5
  br i1 %119, label %120, label %128

120:                                              ; preds = %115, %109
  %121 = load i8*, i8** %6, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %125 = load i8*, i8** %6, align 8
  call void @png_combine_row(%struct.png_struct_def* noundef %124, i8* noundef %125, i32 noundef 1)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_read_finish_row(%struct.png_struct_def* noundef %127)
  br label %401

128:                                              ; preds = %115
  br label %221

129:                                              ; preds = %89
  %130 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %131 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %130, i32 0, i32 29
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 7
  %134 = icmp ne i32 %133, 4
  br i1 %134, label %135, label %149

135:                                              ; preds = %129
  %136 = load i8*, i8** %6, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %140 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %139, i32 0, i32 29
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %146 = load i8*, i8** %6, align 8
  call void @png_combine_row(%struct.png_struct_def* noundef %145, i8* noundef %146, i32 noundef 1)
  br label %147

147:                                              ; preds = %144, %138, %135
  %148 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_read_finish_row(%struct.png_struct_def* noundef %148)
  br label %401

149:                                              ; preds = %129
  br label %221

150:                                              ; preds = %89
  %151 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %152 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %151, i32 0, i32 29
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 3
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %150
  %157 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %158 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %157, i32 0, i32 23
  %159 = load i32, i32* %158, align 4
  %160 = icmp ult i32 %159, 3
  br i1 %160, label %161, label %169

161:                                              ; preds = %156, %150
  %162 = load i8*, i8** %6, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %166 = load i8*, i8** %6, align 8
  call void @png_combine_row(%struct.png_struct_def* noundef %165, i8* noundef %166, i32 noundef 1)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_read_finish_row(%struct.png_struct_def* noundef %168)
  br label %401

169:                                              ; preds = %156
  br label %221

170:                                              ; preds = %89
  %171 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %172 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %171, i32 0, i32 29
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 3
  %175 = icmp ne i32 %174, 2
  br i1 %175, label %176, label %190

176:                                              ; preds = %170
  %177 = load i8*, i8** %6, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %181 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %180, i32 0, i32 29
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 2
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %187 = load i8*, i8** %6, align 8
  call void @png_combine_row(%struct.png_struct_def* noundef %186, i8* noundef %187, i32 noundef 1)
  br label %188

188:                                              ; preds = %185, %179, %176
  %189 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_read_finish_row(%struct.png_struct_def* noundef %189)
  br label %401

190:                                              ; preds = %170
  br label %221

191:                                              ; preds = %89
  %192 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %193 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %192, i32 0, i32 29
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 1
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %191
  %198 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %199 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %198, i32 0, i32 23
  %200 = load i32, i32* %199, align 4
  %201 = icmp ult i32 %200, 2
  br i1 %201, label %202, label %210

202:                                              ; preds = %197, %191
  %203 = load i8*, i8** %6, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %207 = load i8*, i8** %6, align 8
  call void @png_combine_row(%struct.png_struct_def* noundef %206, i8* noundef %207, i32 noundef 1)
  br label %208

208:                                              ; preds = %205, %202
  %209 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_read_finish_row(%struct.png_struct_def* noundef %209)
  br label %401

210:                                              ; preds = %197
  br label %221

211:                                              ; preds = %89
  br label %212

212:                                              ; preds = %89, %211
  %213 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %214 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %213, i32 0, i32 29
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, 1
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_read_finish_row(%struct.png_struct_def* noundef %219)
  br label %401

220:                                              ; preds = %212
  br label %221

221:                                              ; preds = %220, %210, %190, %169, %149, %128, %108
  br label %222

222:                                              ; preds = %221, %83, %77
  %223 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %224 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %229, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)) #5
  unreachable

230:                                              ; preds = %222
  %231 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %232 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %233 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %232, i32 0, i32 32
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = add i64 %236, 1
  call void @png_read_IDAT_data(%struct.png_struct_def* noundef %231, i8* noundef %234, i64 noundef %237)
  %238 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %239 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %238, i32 0, i32 32
  %240 = load i8*, i8** %239, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 0
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %272

245:                                              ; preds = %230
  %246 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %247 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %246, i32 0, i32 32
  %248 = load i8*, i8** %247, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 0
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = icmp slt i32 %251, 5
  br i1 %252, label %253, label %269

253:                                              ; preds = %245
  %254 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %255 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %256 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %255, i32 0, i32 32
  %257 = load i8*, i8** %256, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %260 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %259, i32 0, i32 31
  %261 = load i8*, i8** %260, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 1
  %263 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %264 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %263, i32 0, i32 32
  %265 = load i8*, i8** %264, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 0
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  call void @png_read_filter_row(%struct.png_struct_def* noundef %254, %struct.png_row_info_struct* noundef %7, i8* noundef %258, i8* noundef %262, i32 noundef %268)
  br label %271

269:                                              ; preds = %245
  %270 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %270, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #5
  unreachable

271:                                              ; preds = %253
  br label %272

272:                                              ; preds = %271, %230
  %273 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %274 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %273, i32 0, i32 31
  %275 = load i8*, i8** %274, align 8
  %276 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %277 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %276, i32 0, i32 32
  %278 = load i8*, i8** %277, align 8
  %279 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = add i64 %280, 1
  %282 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %283 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %282, i32 0, i32 31
  %284 = load i8*, i8** %283, align 8
  %285 = call i64 @llvm.objectsize.i64.p0i8(i8* %284, i1 false, i1 true, i1 false)
  %286 = call i8* @__memcpy_chk(i8* noundef %275, i8* noundef %278, i64 noundef %281, i64 noundef %285) #6
  %287 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %288 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %287, i32 0, i32 8
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %272
  %292 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_do_read_transformations(%struct.png_struct_def* noundef %292, %struct.png_row_info_struct* noundef %7)
  br label %293

293:                                              ; preds = %291, %272
  %294 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %295 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %294, i32 0, i32 55
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %315

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 5
  %301 = load i8, i8* %300, align 1
  %302 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %303 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %302, i32 0, i32 55
  store i8 %301, i8* %303, align 1
  %304 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 5
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %308 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %307, i32 0, i32 54
  %309 = load i8, i8* %308, align 2
  %310 = zext i8 %309 to i32
  %311 = icmp sgt i32 %306, %310
  br i1 %311, label %312, label %314

312:                                              ; preds = %299
  %313 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %313, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #5
  unreachable

314:                                              ; preds = %299
  br label %327

315:                                              ; preds = %293
  %316 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %317 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %316, i32 0, i32 55
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i32
  %320 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %7, i32 0, i32 5
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  %323 = icmp ne i32 %319, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %315
  %325 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %325, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0)) #5
  unreachable

326:                                              ; preds = %315
  br label %327

327:                                              ; preds = %326, %314
  %328 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %329 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %328, i32 0, i32 44
  %330 = load i8, i8* %329, align 4
  %331 = zext i8 %330 to i32
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %370

333:                                              ; preds = %327
  %334 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %335 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %334, i32 0, i32 8
  %336 = load i32, i32* %335, align 8
  %337 = and i32 %336, 2
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %370

339:                                              ; preds = %333
  %340 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %341 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %340, i32 0, i32 45
  %342 = load i8, i8* %341, align 1
  %343 = zext i8 %342 to i32
  %344 = icmp slt i32 %343, 6
  br i1 %344, label %345, label %357

345:                                              ; preds = %339
  %346 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %347 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %346, i32 0, i32 32
  %348 = load i8*, i8** %347, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 1
  %350 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %351 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %350, i32 0, i32 45
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  %354 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %355 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %354, i32 0, i32 8
  %356 = load i32, i32* %355, align 8
  call void @png_do_read_interlace(%struct.png_row_info_struct* noundef %7, i8* noundef %349, i32 noundef %353, i32 noundef %356)
  br label %357

357:                                              ; preds = %345, %339
  %358 = load i8*, i8** %6, align 8
  %359 = icmp ne i8* %358, null
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %362 = load i8*, i8** %6, align 8
  call void @png_combine_row(%struct.png_struct_def* noundef %361, i8* noundef %362, i32 noundef 1)
  br label %363

363:                                              ; preds = %360, %357
  %364 = load i8*, i8** %5, align 8
  %365 = icmp ne i8* %364, null
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %368 = load i8*, i8** %5, align 8
  call void @png_combine_row(%struct.png_struct_def* noundef %367, i8* noundef %368, i32 noundef 0)
  br label %369

369:                                              ; preds = %366, %363
  br label %383

370:                                              ; preds = %333, %327
  %371 = load i8*, i8** %5, align 8
  %372 = icmp ne i8* %371, null
  br i1 %372, label %373, label %376

373:                                              ; preds = %370
  %374 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %375 = load i8*, i8** %5, align 8
  call void @png_combine_row(%struct.png_struct_def* noundef %374, i8* noundef %375, i32 noundef -1)
  br label %376

376:                                              ; preds = %373, %370
  %377 = load i8*, i8** %6, align 8
  %378 = icmp ne i8* %377, null
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %381 = load i8*, i8** %6, align 8
  call void @png_combine_row(%struct.png_struct_def* noundef %380, i8* noundef %381, i32 noundef -1)
  br label %382

382:                                              ; preds = %379, %376
  br label %383

383:                                              ; preds = %382, %369
  %384 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_read_finish_row(%struct.png_struct_def* noundef %384)
  %385 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %386 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %385, i32 0, i32 65
  %387 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %386, align 8
  %388 = icmp ne void (%struct.png_struct_def*, i32, i32)* %387, null
  br i1 %388, label %389, label %401

389:                                              ; preds = %383
  %390 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %391 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %390, i32 0, i32 65
  %392 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %391, align 8
  %393 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %394 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %395 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %394, i32 0, i32 29
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %398 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %397, i32 0, i32 45
  %399 = load i8, i8* %398, align 1
  %400 = zext i8 %399 to i32
  call void %392(%struct.png_struct_def* noundef %393, i32 noundef %396, i32 noundef %400)
  br label %401

401:                                              ; preds = %10, %106, %126, %147, %167, %188, %208, %218, %389, %383
  ret void
}

declare void @png_combine_row(%struct.png_struct_def* noundef, i8* noundef, i32 noundef) #1

declare void @png_read_finish_row(%struct.png_struct_def* noundef) #1

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #2

declare void @png_read_IDAT_data(%struct.png_struct_def* noundef, i8* noundef, i64 noundef) #1

declare void @png_read_filter_row(%struct.png_struct_def* noundef, %struct.png_row_info_struct* noundef, i8* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

declare void @png_do_read_transformations(%struct.png_struct_def* noundef, %struct.png_row_info_struct* noundef) #1

declare void @png_do_read_interlace(%struct.png_row_info_struct* noundef, i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_rows(%struct.png_struct_def* noalias noundef %0, i8** noundef %1, i8** noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %17 = icmp eq %struct.png_struct_def* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %86

19:                                               ; preds = %4
  %20 = load i8**, i8*** %6, align 8
  store i8** %20, i8*** %10, align 8
  %21 = load i8**, i8*** %7, align 8
  store i8** %21, i8*** %11, align 8
  %22 = load i8**, i8*** %10, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load i8**, i8*** %11, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i8**, i8*** %10, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %10, align 8
  %35 = load i8*, i8** %33, align 8
  store i8* %35, i8** %12, align 8
  %36 = load i8**, i8*** %11, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %11, align 8
  %38 = load i8*, i8** %36, align 8
  store i8* %38, i8** %13, align 8
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %13, align 8
  call void @png_read_row(%struct.png_struct_def* noundef %39, i8* noundef %40, i8* noundef %41)
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %28, !llvm.loop !10

45:                                               ; preds = %28
  br label %86

46:                                               ; preds = %24, %19
  %47 = load i8**, i8*** %10, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %61, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i8**, i8*** %10, align 8
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %14, align 8
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %58 = load i8*, i8** %14, align 8
  call void @png_read_row(%struct.png_struct_def* noundef %57, i8* noundef %58, i8* noundef null)
  %59 = load i8**, i8*** %10, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %10, align 8
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %50, !llvm.loop !12

64:                                               ; preds = %50
  br label %85

65:                                               ; preds = %46
  %66 = load i8**, i8*** %11, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i8**, i8*** %11, align 8
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %15, align 8
  %76 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %77 = load i8*, i8** %15, align 8
  call void @png_read_row(%struct.png_struct_def* noundef %76, i8* noundef null, i8* noundef %77)
  %78 = load i8**, i8*** %11, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i32 1
  store i8** %79, i8*** %11, align 8
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %69, !llvm.loop !13

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83, %65
  br label %85

85:                                               ; preds = %84, %64
  br label %86

86:                                               ; preds = %18, %85, %45
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_image(%struct.png_struct_def* noalias noundef %0, i8** noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8** %1, i8*** %4, align 8
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %11 = icmp eq %struct.png_struct_def* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %72

13:                                               ; preds = %2
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %21 = call i32 @png_set_interlace_handling(%struct.png_struct_def* noundef %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_start_read_image(%struct.png_struct_def* noundef %22)
  br label %45

23:                                               ; preds = %13
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 44
  %26 = load i8, i8* %25, align 4
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_warning(%struct.png_struct_def* noundef %36, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0))
  %37 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %38 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %37, i32 0, i32 24
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %41 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %40, i32 0, i32 25
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %29, %23
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %44 = call i32 @png_set_interlace_handling(%struct.png_struct_def* noundef %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %19
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %47 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %46, i32 0, i32 24
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %69, %45
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load i8**, i8*** %4, align 8
  store i8** %54, i8*** %9, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %65, %53
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %61 = load i8**, i8*** %9, align 8
  %62 = load i8*, i8** %61, align 8
  call void @png_read_row(%struct.png_struct_def* noundef %60, i8* noundef %62, i8* noundef null)
  %63 = load i8**, i8*** %9, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %9, align 8
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %55, !llvm.loop !14

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %49, !llvm.loop !15

72:                                               ; preds = %12, %49
  ret void
}

declare i32 @png_set_interlace_handling(%struct.png_struct_def* noundef) #1

declare void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_end(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_info_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %4, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %9 = icmp eq %struct.png_struct_def* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %167

11:                                               ; preds = %2
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %13 = call i32 @png_chunk_unknown_handling(%struct.png_struct_def* noundef %12, i32 noundef 1229209940)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_read_finish_IDAT(%struct.png_struct_def* noundef %16)
  br label %17

17:                                               ; preds = %15, %11
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 47
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 40
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %28 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %27, i32 0, i32 39
  %29 = load i16, i16* %28, align 8
  %30 = zext i16 %29 to i32
  %31 = icmp sgt i32 %26, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_benign_error(%struct.png_struct_def* noundef %33, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %23, %17
  br label %35

35:                                               ; preds = %161, %34
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %37 = call i32 @png_read_chunk_header(%struct.png_struct_def* noundef %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %39 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %38, i32 0, i32 30
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 1229278788
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %45 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %46 = load i32, i32* %6, align 4
  call void @png_handle_IEND(%struct.png_struct_def* noundef %44, %struct.png_info_def* noundef %45, i32 noundef %46)
  br label %160

47:                                               ; preds = %35
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 1229472850
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %52 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %53 = load i32, i32* %6, align 4
  call void @png_handle_IHDR(%struct.png_struct_def* noundef %51, %struct.png_info_def* noundef %52, i32 noundef %53)
  br label %159

54:                                               ; preds = %47
  %55 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %56 = icmp eq %struct.png_info_def* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %58, i32 noundef %59)
  br label %158

61:                                               ; preds = %54
  %62 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @png_chunk_unknown_handling(%struct.png_struct_def* noundef %62, i32 noundef %63)
  store i32 %64, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 1229209940
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp ugt i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %74 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 8192
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %69
  %79 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_benign_error(%struct.png_struct_def* noundef %79, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %72
  br label %81

81:                                               ; preds = %80, %66
  %82 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %83 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  call void @png_handle_unknown(%struct.png_struct_def* noundef %82, %struct.png_info_def* noundef %83, i32 noundef %84, i32 noundef %85)
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 1347179589
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %90 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, 2
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %88, %81
  br label %157

94:                                               ; preds = %61
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 1229209940
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load i32, i32* %6, align 4
  %99 = icmp ugt i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %102 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 8192
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100, %97
  %107 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_benign_error(%struct.png_struct_def* noundef %107, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %100
  %109 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %109, i32 noundef %110)
  br label %156

112:                                              ; preds = %94
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %113, 1347179589
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %117 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %118 = load i32, i32* %6, align 4
  call void @png_handle_PLTE(%struct.png_struct_def* noundef %116, %struct.png_info_def* noundef %117, i32 noundef %118)
  br label %155

119:                                              ; preds = %112
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 1649100612
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %124 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %125 = load i32, i32* %6, align 4
  call void @png_handle_bKGD(%struct.png_struct_def* noundef %123, %struct.png_info_def* noundef %124, i32 noundef %125)
  br label %154

126:                                              ; preds = %119
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 1749635924
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %131 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %132 = load i32, i32* %6, align 4
  call void @png_handle_hIST(%struct.png_struct_def* noundef %130, %struct.png_info_def* noundef %131, i32 noundef %132)
  br label %153

133:                                              ; preds = %126
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, 1933723988
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %138 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %139 = load i32, i32* %6, align 4
  call void @png_handle_sBIT(%struct.png_struct_def* noundef %137, %struct.png_info_def* noundef %138, i32 noundef %139)
  br label %152

140:                                              ; preds = %133
  %141 = load i32, i32* %7, align 4
  %142 = icmp eq i32 %141, 1951551059
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %145 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %146 = load i32, i32* %6, align 4
  call void @png_handle_tRNS(%struct.png_struct_def* noundef %144, %struct.png_info_def* noundef %145, i32 noundef %146)
  br label %151

147:                                              ; preds = %140
  %148 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %149 = load %struct.png_info_def*, %struct.png_info_def** %4, align 8
  %150 = load i32, i32* %6, align 4
  call void @png_handle_unknown(%struct.png_struct_def* noundef %148, %struct.png_info_def* noundef %149, i32 noundef %150, i32 noundef 0)
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %136
  br label %153

153:                                              ; preds = %152, %129
  br label %154

154:                                              ; preds = %153, %122
  br label %155

155:                                              ; preds = %154, %115
  br label %156

156:                                              ; preds = %155, %108
  br label %157

157:                                              ; preds = %156, %93
  br label %158

158:                                              ; preds = %157, %57
  br label %159

159:                                              ; preds = %158, %50
  br label %160

160:                                              ; preds = %159, %43
  br label %161

161:                                              ; preds = %160
  %162 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %163 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, 16
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %35, label %167, !llvm.loop !16

167:                                              ; preds = %10, %161
  ret void
}

declare void @png_read_finish_IDAT(%struct.png_struct_def* noundef) #1

declare void @png_benign_error(%struct.png_struct_def* noundef, i8* noundef) #1

declare i32 @png_crc_finish(%struct.png_struct_def* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_destroy_read_struct(%struct.png_struct_def** noundef %0, %struct.png_info_def** noundef %1, %struct.png_info_def** noundef %2) #0 {
  %4 = alloca %struct.png_struct_def**, align 8
  %5 = alloca %struct.png_info_def**, align 8
  %6 = alloca %struct.png_info_def**, align 8
  %7 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def** %0, %struct.png_struct_def*** %4, align 8
  store %struct.png_info_def** %1, %struct.png_info_def*** %5, align 8
  store %struct.png_info_def** %2, %struct.png_info_def*** %6, align 8
  store %struct.png_struct_def* null, %struct.png_struct_def** %7, align 8
  %8 = load %struct.png_struct_def**, %struct.png_struct_def*** %4, align 8
  %9 = icmp ne %struct.png_struct_def** %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.png_struct_def**, %struct.png_struct_def*** %4, align 8
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %11, align 8
  store %struct.png_struct_def* %12, %struct.png_struct_def** %7, align 8
  br label %13

13:                                               ; preds = %10, %3
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %7, align 8
  %15 = icmp eq %struct.png_struct_def* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %25

17:                                               ; preds = %13
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %7, align 8
  %19 = load %struct.png_info_def**, %struct.png_info_def*** %6, align 8
  call void @png_destroy_info_struct(%struct.png_struct_def* noundef %18, %struct.png_info_def** noundef %19)
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %7, align 8
  %21 = load %struct.png_info_def**, %struct.png_info_def*** %5, align 8
  call void @png_destroy_info_struct(%struct.png_struct_def* noundef %20, %struct.png_info_def** noundef %21)
  %22 = load %struct.png_struct_def**, %struct.png_struct_def*** %4, align 8
  store %struct.png_struct_def* null, %struct.png_struct_def** %22, align 8
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %7, align 8
  call void @png_read_destroy(%struct.png_struct_def* noundef %23)
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %7, align 8
  call void @png_destroy_png_struct(%struct.png_struct_def* noundef %24)
  br label %25

25:                                               ; preds = %17, %16
  ret void
}

declare void @png_destroy_info_struct(%struct.png_struct_def* noundef, %struct.png_info_def** noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_read_destroy(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %4, i32 0, i32 71
  %6 = load i8*, i8** %5, align 8
  call void @png_free(%struct.png_struct_def* noundef %3, i8* noundef %6)
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 71
  store i8* null, i8** %8, align 8
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 83
  %12 = load i8*, i8** %11, align 8
  call void @png_free(%struct.png_struct_def* noundef %9, i8* noundef %12)
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 83
  store i8* null, i8** %14, align 8
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 79
  %18 = load i8*, i8** %17, align 8
  call void @png_free(%struct.png_struct_def* noundef %15, i8* noundef %18)
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %19, i32 0, i32 79
  store i8* null, i8** %20, align 8
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %21, i32 0, i32 67
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 4096
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %28 = bitcast %struct.png_struct_def* %27 to i8*
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %30 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %29, i32 0, i32 38
  %31 = load %struct.png_color_struct*, %struct.png_color_struct** %30, align 8
  %32 = bitcast %struct.png_color_struct* %31 to i8*
  call void @png_zfree(i8* noundef %28, i8* noundef %32)
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %34 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %33, i32 0, i32 38
  store %struct.png_color_struct* null, %struct.png_color_struct** %34, align 8
  br label %35

35:                                               ; preds = %26, %1
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 67
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, -4097
  store i32 %39, i32* %37, align 8
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %41 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %40, i32 0, i32 67
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 8192
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %48 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %47, i32 0, i32 63
  %49 = load i8*, i8** %48, align 8
  call void @png_free(%struct.png_struct_def* noundef %46, i8* noundef %49)
  %50 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %51 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %50, i32 0, i32 63
  store i8* null, i8** %51, align 8
  br label %52

52:                                               ; preds = %45, %35
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %54 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %53, i32 0, i32 67
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, -8193
  store i32 %56, i32* %54, align 8
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %58 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %57, i32 0, i32 10
  %59 = call i32 @inflateEnd(%struct.z_stream_s* noundef %58)
  %60 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %62 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %61, i32 0, i32 77
  %63 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  call void @png_free(%struct.png_struct_def* noundef %60, i8* noundef %64)
  %65 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %66 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %65, i32 0, i32 77
  %67 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %66, i32 0, i32 1
  store i8* null, i8** %67, align 8
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %69 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %70 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %69, i32 0, i32 70
  %71 = load i8*, i8** %70, align 8
  call void @png_free(%struct.png_struct_def* noundef %68, i8* noundef %71)
  %72 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %73 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %72, i32 0, i32 70
  store i8* null, i8** %73, align 8
  ret void
}

declare void @png_destroy_png_struct(%struct.png_struct_def* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_read_status_fn(%struct.png_struct_def* noalias noundef %0, void (%struct.png_struct_def*, i32, i32)* noundef %1) #0 {
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
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 65
  store void (%struct.png_struct_def*, i32, i32)* %9, void (%struct.png_struct_def*, i32, i32)** %11, align 8
  br label %12

12:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_png(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %11 = icmp eq %struct.png_struct_def* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %14 = icmp eq %struct.png_info_def* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  br label %187

16:                                               ; preds = %12
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %18 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_read_info(%struct.png_struct_def* noundef %17, %struct.png_info_def* noundef %18)
  %19 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %20 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = icmp ugt i64 %22, 536870911
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %25, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0)) #5
  unreachable

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 32768
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %31, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %37, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %43, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %49, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %55, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 16
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %61, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %67, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %62
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 64
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %73, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, 128
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %79, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 256
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %85, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 512
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %91, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, 1024
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %97, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 8192
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %103, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %98
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, 16384
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %109, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %104
  %111 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %112 = call i32 @png_set_interlace_handling(%struct.png_struct_def* noundef %111)
  %113 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %114 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_read_update_info(%struct.png_struct_def* noundef %113, %struct.png_info_def* noundef %114)
  %115 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %116 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %115, %struct.png_info_def* noundef %116, i32 noundef 64, i32 noundef 0)
  %117 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %118 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %117, i32 0, i32 24
  %119 = load i8**, i8*** %118, align 8
  %120 = icmp eq i8** %119, null
  br i1 %120, label %121, label %175

121:                                              ; preds = %110
  %122 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %123 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %124 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  %127 = mul i64 %126, 8
  %128 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %122, i64 noundef %127)
  %129 = bitcast i8* %128 to i8**
  %130 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %131 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %130, i32 0, i32 24
  store i8** %129, i8*** %131, align 8
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %145, %121
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %135 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ult i32 %133, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %140 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %139, i32 0, i32 24
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* null, i8** %144, align 8
  br label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %9, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %132, !llvm.loop !17

148:                                              ; preds = %132
  %149 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %150 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %149, i32 0, i32 21
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, 64
  store i32 %152, i32* %150, align 8
  store i32 0, i32* %9, align 4
  br label %153

153:                                              ; preds = %171, %148
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %156 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ult i32 %154, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %153
  %160 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %161 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %162 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %160, i64 noundef %163)
  %165 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %166 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %165, i32 0, i32 24
  %167 = load i8**, i8*** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  store i8* %164, i8** %170, align 8
  br label %171

171:                                              ; preds = %159
  %172 = load i32, i32* %9, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %153, !llvm.loop !18

174:                                              ; preds = %153
  br label %175

175:                                              ; preds = %174, %110
  %176 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %177 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %178 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %177, i32 0, i32 24
  %179 = load i8**, i8*** %178, align 8
  call void @png_read_image(%struct.png_struct_def* noundef %176, i8** noundef %179)
  %180 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %181 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, 32768
  store i32 %183, i32* %181, align 8
  %184 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %185 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  call void @png_read_end(%struct.png_struct_def* noundef %184, %struct.png_info_def* noundef %185)
  %186 = load i8*, i8** %8, align 8
  br label %187

187:                                              ; preds = %175, %15
  ret void
}

declare void @png_free_data(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) #1

declare noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) #1

declare void @png_free(%struct.png_struct_def* noundef, i8* noundef) #1

declare void @png_zfree(i8* noundef, i8* noundef) #1

declare i32 @inflateEnd(%struct.z_stream_s* noundef) #1

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
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
