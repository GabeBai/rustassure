; ModuleID = 'deflate.c'
source_filename = "deflate.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.config_s = type { i16, i16, i16, i16, i32 (%struct.internal_state*, i32)* }
%struct.internal_state = type { %struct.z_stream_s*, i32, i8*, i64, i8*, i32, i32, %struct.gz_header_s*, i32, i8, i32, i32, i32, i32, i8*, i64, i16*, i16*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], i8*, i32, i32, i16*, i64, i64, i32, i32, i16, i32, i64 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.gz_header_s = type { i32, i64, i32, i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc_s = type { %struct.ct_data_s*, i32, %struct.static_tree_desc_s* }
%struct.static_tree_desc_s = type { i32 }

@deflate_copyright = constant [68 x i8] c" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler \00", align 1
@deflateInit2_.my_version = internal constant [14 x i8] c"1.2.8-optipng\00", align 1
@z_errmsg = external constant [10 x i8*], align 8
@configuration_table = internal constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, i32 (%struct.internal_state*, i32)* @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, i32 (%struct.internal_state*, i32)* @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, i32 (%struct.internal_state*, i32)* @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, i32 (%struct.internal_state*, i32)* @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, i32 (%struct.internal_state*, i32)* @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, i32 (%struct.internal_state*, i32)* @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, i32 (%struct.internal_state*, i32)* @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, i32 (%struct.internal_state*, i32)* @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, i32 (%struct.internal_state*, i32)* @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, i32 (%struct.internal_state*, i32)* @deflate_slow }], align 8
@_length_code = external hidden constant [0 x i8], align 1
@_dist_code = external hidden constant [0 x i8], align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateInit_(%struct.z_stream_s* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @deflateInit2_(%struct.z_stream_s* noundef %9, i32 noundef %10, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0, i8* noundef %11, i32 noundef %12)
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateInit2_(%struct.z_stream_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8* noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_stream_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.internal_state*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i16*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 1, i32* %19, align 4
  %21 = load i8*, i8** %16, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %8
  %24 = load i8*, i8** %16, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @deflateInit2_.my_version, i64 0, i64 0), align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %17, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 112
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %23, %8
  store i32 -6, i32* %9, align 4
  br label %292

36:                                               ; preds = %31
  %37 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %38 = icmp eq %struct.z_stream_s* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 -2, i32* %9, align 4
  br label %292

40:                                               ; preds = %36
  %41 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %41, i32 0, i32 6
  store i8* null, i8** %42, align 8
  %43 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %43, i32 0, i32 8
  %45 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %44, align 8
  %46 = icmp eq i8* (i8*, i32, i32)* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %48, i32 0, i32 8
  store i8* (i8*, i32, i32)* @zcalloc, i8* (i8*, i32, i32)** %49, align 8
  %50 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %50, i32 0, i32 10
  store i8* null, i8** %51, align 8
  br label %52

52:                                               ; preds = %47, %40
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %54 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %53, i32 0, i32 9
  %55 = load void (i8*, i8*)*, void (i8*, i8*)** %54, align 8
  %56 = icmp eq void (i8*, i8*)* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %59 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %58, i32 0, i32 9
  store void (i8*, i8*)* @zcfree, void (i8*, i8*)** %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 6, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  store i32 0, i32* %19, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %97, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = icmp sgt i32 %74, 9
  br i1 %75, label %97, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 8
  br i1 %78, label %97, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 8
  br i1 %81, label %97, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = icmp sgt i32 %83, 15
  br i1 %84, label %97, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = icmp sgt i32 %89, 9
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %15, align 4
  %96 = icmp sgt i32 %95, 4
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %91, %88, %85, %82, %79, %76, %73, %70
  store i32 -2, i32* %9, align 4
  br label %292

98:                                               ; preds = %94
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 8
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 9, i32* %13, align 4
  br label %102

102:                                              ; preds = %101, %98
  %103 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %104 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %103, i32 0, i32 8
  %105 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %104, align 8
  %106 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %107 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %106, i32 0, i32 10
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* %105(i8* noundef %108, i32 noundef 1, i32 noundef 5936)
  %110 = bitcast i8* %109 to %struct.internal_state*
  store %struct.internal_state* %110, %struct.internal_state** %18, align 8
  %111 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %112 = icmp eq %struct.internal_state* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  store i32 -4, i32* %9, align 4
  br label %292

114:                                              ; preds = %102
  %115 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %116 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %117 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %116, i32 0, i32 7
  store %struct.internal_state* %115, %struct.internal_state** %117, align 8
  %118 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %119 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %120 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %119, i32 0, i32 0
  store %struct.z_stream_s* %118, %struct.z_stream_s** %120, align 8
  %121 = load i32, i32* %19, align 4
  %122 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %123 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 4
  %124 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %125 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %124, i32 0, i32 7
  store %struct.gz_header_s* null, %struct.gz_header_s** %125, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %128 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %127, i32 0, i32 12
  store i32 %126, i32* %128, align 8
  %129 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %130 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %129, i32 0, i32 12
  %131 = load i32, i32* %130, align 8
  %132 = shl i32 1, %131
  %133 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %134 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %133, i32 0, i32 11
  store i32 %132, i32* %134, align 4
  %135 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %136 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %135, i32 0, i32 11
  %137 = load i32, i32* %136, align 4
  %138 = sub i32 %137, 1
  %139 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %140 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %139, i32 0, i32 13
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 7
  %143 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %144 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %143, i32 0, i32 20
  store i32 %142, i32* %144, align 8
  %145 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %146 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %145, i32 0, i32 20
  %147 = load i32, i32* %146, align 8
  %148 = shl i32 1, %147
  %149 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %150 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %149, i32 0, i32 19
  store i32 %148, i32* %150, align 4
  %151 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %152 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %151, i32 0, i32 19
  %153 = load i32, i32* %152, align 4
  %154 = sub i32 %153, 1
  %155 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %156 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %155, i32 0, i32 21
  store i32 %154, i32* %156, align 4
  %157 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %158 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %157, i32 0, i32 20
  %159 = load i32, i32* %158, align 8
  %160 = add i32 %159, 3
  %161 = sub i32 %160, 1
  %162 = udiv i32 %161, 3
  %163 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %164 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %163, i32 0, i32 22
  store i32 %162, i32* %164, align 8
  %165 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %166 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %165, i32 0, i32 8
  %167 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %166, align 8
  %168 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %169 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %168, i32 0, i32 10
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %172 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %171, i32 0, i32 11
  %173 = load i32, i32* %172, align 4
  %174 = call i8* %167(i8* noundef %170, i32 noundef %173, i32 noundef 2)
  %175 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %176 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %175, i32 0, i32 14
  store i8* %174, i8** %176, align 8
  %177 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %178 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %177, i32 0, i32 8
  %179 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %178, align 8
  %180 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %181 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %180, i32 0, i32 10
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %184 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %183, i32 0, i32 11
  %185 = load i32, i32* %184, align 4
  %186 = call i8* %179(i8* noundef %182, i32 noundef %185, i32 noundef 2)
  %187 = bitcast i8* %186 to i16*
  %188 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %189 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %188, i32 0, i32 16
  store i16* %187, i16** %189, align 8
  %190 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %191 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %190, i32 0, i32 8
  %192 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %191, align 8
  %193 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %194 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %193, i32 0, i32 10
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %197 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %196, i32 0, i32 19
  %198 = load i32, i32* %197, align 4
  %199 = call i8* %192(i8* noundef %195, i32 noundef %198, i32 noundef 2)
  %200 = bitcast i8* %199 to i16*
  %201 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %202 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %201, i32 0, i32 17
  store i16* %200, i16** %202, align 8
  %203 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %204 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %203, i32 0, i32 58
  store i64 0, i64* %204, align 8
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 6
  %207 = shl i32 1, %206
  %208 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %209 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %208, i32 0, i32 49
  store i32 %207, i32* %209, align 8
  %210 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %211 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %210, i32 0, i32 8
  %212 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %211, align 8
  %213 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %214 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %213, i32 0, i32 10
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %217 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %216, i32 0, i32 49
  %218 = load i32, i32* %217, align 8
  %219 = call i8* %212(i8* noundef %215, i32 noundef %218, i32 noundef 4)
  %220 = bitcast i8* %219 to i16*
  store i16* %220, i16** %20, align 8
  %221 = load i16*, i16** %20, align 8
  %222 = bitcast i16* %221 to i8*
  %223 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %224 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %223, i32 0, i32 2
  store i8* %222, i8** %224, align 8
  %225 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %226 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %225, i32 0, i32 49
  %227 = load i32, i32* %226, align 8
  %228 = zext i32 %227 to i64
  %229 = mul i64 %228, 4
  %230 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %231 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %230, i32 0, i32 3
  store i64 %229, i64* %231, align 8
  %232 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %233 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %232, i32 0, i32 14
  %234 = load i8*, i8** %233, align 8
  %235 = icmp eq i8* %234, null
  br i1 %235, label %251, label %236

236:                                              ; preds = %114
  %237 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %238 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %237, i32 0, i32 16
  %239 = load i16*, i16** %238, align 8
  %240 = icmp eq i16* %239, null
  br i1 %240, label %251, label %241

241:                                              ; preds = %236
  %242 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %243 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %242, i32 0, i32 17
  %244 = load i16*, i16** %243, align 8
  %245 = icmp eq i16* %244, null
  br i1 %245, label %251, label %246

246:                                              ; preds = %241
  %247 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %248 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %247, i32 0, i32 2
  %249 = load i8*, i8** %248, align 8
  %250 = icmp eq i8* %249, null
  br i1 %250, label %251, label %259

251:                                              ; preds = %246, %241, %236, %114
  %252 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %253 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %252, i32 0, i32 1
  store i32 666, i32* %253, align 8
  %254 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @z_errmsg, i64 0, i64 6), align 8
  %255 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %256 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %255, i32 0, i32 6
  store i8* %254, i8** %256, align 8
  %257 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %258 = call i32 @deflateEnd(%struct.z_stream_s* noundef %257)
  store i32 -4, i32* %9, align 4
  br label %292

259:                                              ; preds = %246
  %260 = load i16*, i16** %20, align 8
  %261 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %262 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %261, i32 0, i32 49
  %263 = load i32, i32* %262, align 8
  %264 = zext i32 %263 to i64
  %265 = udiv i64 %264, 2
  %266 = getelementptr inbounds i16, i16* %260, i64 %265
  %267 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %268 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %267, i32 0, i32 51
  store i16* %266, i16** %268, align 8
  %269 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %270 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %269, i32 0, i32 2
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %273 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %272, i32 0, i32 49
  %274 = load i32, i32* %273, align 8
  %275 = zext i32 %274 to i64
  %276 = mul i64 3, %275
  %277 = getelementptr inbounds i8, i8* %271, i64 %276
  %278 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %279 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %278, i32 0, i32 48
  store i8* %277, i8** %279, align 8
  %280 = load i32, i32* %11, align 4
  %281 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %282 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %281, i32 0, i32 33
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* %15, align 4
  %284 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %285 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %284, i32 0, i32 34
  store i32 %283, i32* %285, align 8
  %286 = load i32, i32* %12, align 4
  %287 = trunc i32 %286 to i8
  %288 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %289 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %288, i32 0, i32 9
  store i8 %287, i8* %289, align 4
  %290 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %291 = call i32 @deflateReset(%struct.z_stream_s* noundef %290)
  store i32 %291, i32* %9, align 4
  br label %292

292:                                              ; preds = %259, %251, %113, %97, %39, %35
  %293 = load i32, i32* %9, align 4
  ret i32 %293
}

declare hidden i8* @zcalloc(i8* noundef, i32 noundef, i32 noundef) #1

declare hidden void @zcfree(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateEnd(%struct.z_stream_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  %5 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %6 = icmp eq %struct.z_stream_s* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %9 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 7
  %10 = load %struct.internal_state*, %struct.internal_state** %9, align 8
  %11 = icmp eq %struct.internal_state* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i32 -2, i32* %2, align 4
  br label %135

13:                                               ; preds = %7
  %14 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %14, i32 0, i32 7
  %16 = load %struct.internal_state*, %struct.internal_state** %15, align 8
  %17 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 42
  br i1 %20, label %21, label %40

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 69
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 73
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 91
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 103
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 113
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 666
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 -2, i32* %2, align 4
  br label %135

40:                                               ; preds = %36, %33, %30, %27, %24, %21, %13
  %41 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %41, i32 0, i32 7
  %43 = load %struct.internal_state*, %struct.internal_state** %42, align 8
  %44 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %48, i32 0, i32 9
  %50 = load void (i8*, i8*)*, void (i8*, i8*)** %49, align 8
  %51 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %52 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %51, i32 0, i32 10
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %55 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %54, i32 0, i32 7
  %56 = load %struct.internal_state*, %struct.internal_state** %55, align 8
  %57 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  call void %50(i8* noundef %53, i8* noundef %58)
  br label %59

59:                                               ; preds = %47, %40
  %60 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %61 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %60, i32 0, i32 7
  %62 = load %struct.internal_state*, %struct.internal_state** %61, align 8
  %63 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %62, i32 0, i32 17
  %64 = load i16*, i16** %63, align 8
  %65 = icmp ne i16* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %68 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %67, i32 0, i32 9
  %69 = load void (i8*, i8*)*, void (i8*, i8*)** %68, align 8
  %70 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %71 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %70, i32 0, i32 10
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %74 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %73, i32 0, i32 7
  %75 = load %struct.internal_state*, %struct.internal_state** %74, align 8
  %76 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %75, i32 0, i32 17
  %77 = load i16*, i16** %76, align 8
  %78 = bitcast i16* %77 to i8*
  call void %69(i8* noundef %72, i8* noundef %78)
  br label %79

79:                                               ; preds = %66, %59
  %80 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %81 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %80, i32 0, i32 7
  %82 = load %struct.internal_state*, %struct.internal_state** %81, align 8
  %83 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %82, i32 0, i32 16
  %84 = load i16*, i16** %83, align 8
  %85 = icmp ne i16* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %79
  %87 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %88 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %87, i32 0, i32 9
  %89 = load void (i8*, i8*)*, void (i8*, i8*)** %88, align 8
  %90 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %91 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %90, i32 0, i32 10
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %94 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %93, i32 0, i32 7
  %95 = load %struct.internal_state*, %struct.internal_state** %94, align 8
  %96 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %95, i32 0, i32 16
  %97 = load i16*, i16** %96, align 8
  %98 = bitcast i16* %97 to i8*
  call void %89(i8* noundef %92, i8* noundef %98)
  br label %99

99:                                               ; preds = %86, %79
  %100 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %101 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %100, i32 0, i32 7
  %102 = load %struct.internal_state*, %struct.internal_state** %101, align 8
  %103 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %102, i32 0, i32 14
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %99
  %107 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %108 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %107, i32 0, i32 9
  %109 = load void (i8*, i8*)*, void (i8*, i8*)** %108, align 8
  %110 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %111 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %110, i32 0, i32 10
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %114 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %113, i32 0, i32 7
  %115 = load %struct.internal_state*, %struct.internal_state** %114, align 8
  %116 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %115, i32 0, i32 14
  %117 = load i8*, i8** %116, align 8
  call void %109(i8* noundef %112, i8* noundef %117)
  br label %118

118:                                              ; preds = %106, %99
  %119 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %120 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %119, i32 0, i32 9
  %121 = load void (i8*, i8*)*, void (i8*, i8*)** %120, align 8
  %122 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %123 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %122, i32 0, i32 10
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %126 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %125, i32 0, i32 7
  %127 = load %struct.internal_state*, %struct.internal_state** %126, align 8
  %128 = bitcast %struct.internal_state* %127 to i8*
  call void %121(i8* noundef %124, i8* noundef %128)
  %129 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %130 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %129, i32 0, i32 7
  store %struct.internal_state* null, %struct.internal_state** %130, align 8
  %131 = load i32, i32* %4, align 4
  %132 = icmp eq i32 %131, 113
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 -3, i32 0
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %118, %39, %12
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateReset(%struct.z_stream_s* noundef %0) #0 {
  %2 = alloca %struct.z_stream_s*, align 8
  %3 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %2, align 8
  %4 = load %struct.z_stream_s*, %struct.z_stream_s** %2, align 8
  %5 = call i32 @deflateResetKeep(%struct.z_stream_s* noundef %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.z_stream_s*, %struct.z_stream_s** %2, align 8
  %10 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 7
  %11 = load %struct.internal_state*, %struct.internal_state** %10, align 8
  call void @lm_init(%struct.internal_state* noundef %11)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %3, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateSetDictionary(%struct.z_stream_s* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.internal_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %15 = icmp eq %struct.z_stream_s* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %17, i32 0, i32 7
  %19 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %20 = icmp eq %struct.internal_state* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %16, %3
  store i32 -2, i32* %4, align 4
  br label %245

25:                                               ; preds = %21
  %26 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %27 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %26, i32 0, i32 7
  %28 = load %struct.internal_state*, %struct.internal_state** %27, align 8
  store %struct.internal_state* %28, %struct.internal_state** %8, align 8
  %29 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %30 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %47, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %39 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 42
  br i1 %41, label %47, label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %44 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %43, i32 0, i32 29
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37, %25
  store i32 -2, i32* %4, align 4
  br label %245

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %53 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %52, i32 0, i32 12
  %54 = load i64, i64* %53, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @adler32(i64 noundef %54, i8* noundef %55, i32 noundef %56)
  %58 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %59 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %58, i32 0, i32 12
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %51, %48
  %61 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %62 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %61, i32 0, i32 6
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %65 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 4
  %67 = icmp uge i32 %63, %66
  br i1 %67, label %68, label %115

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %73 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %72, i32 0, i32 17
  %74 = load i16*, i16** %73, align 8
  %75 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %76 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %75, i32 0, i32 19
  %77 = load i32, i32* %76, align 4
  %78 = sub i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %74, i64 %79
  store i16 0, i16* %80, align 2
  %81 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %82 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %81, i32 0, i32 17
  %83 = load i16*, i16** %82, align 8
  %84 = bitcast i16* %83 to i8*
  %85 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %86 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %85, i32 0, i32 19
  %87 = load i32, i32* %86, align 4
  %88 = sub i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = mul i64 %89, 2
  %91 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %92 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %91, i32 0, i32 17
  %93 = load i16*, i16** %92, align 8
  %94 = bitcast i16* %93 to i8*
  %95 = call i64 @llvm.objectsize.i64.p0i8(i8* %94, i1 false, i1 true, i1 false)
  %96 = call i8* @__memset_chk(i8* noundef %84, i32 noundef 0, i64 noundef %90, i64 noundef %95) #4
  %97 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %98 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %97, i32 0, i32 27
  store i32 0, i32* %98, align 4
  %99 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %100 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %99, i32 0, i32 23
  store i64 0, i64* %100, align 8
  %101 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %102 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %101, i32 0, i32 55
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %71, %68
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %106 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 4
  %108 = sub i32 %104, %107
  %109 = load i8*, i8** %6, align 8
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %6, align 8
  %112 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %113 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %112, i32 0, i32 11
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %103, %60
  %116 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %117 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %12, align 4
  %119 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %120 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %13, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %124 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %127 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  call void @fill_window(%struct.internal_state* noundef %128)
  br label %129

129:                                              ; preds = %202, %115
  %130 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %131 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %130, i32 0, i32 29
  %132 = load i32, i32* %131, align 4
  %133 = icmp uge i32 %132, 3
  br i1 %133, label %134, label %209

134:                                              ; preds = %129
  %135 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %136 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %135, i32 0, i32 27
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %9, align 4
  %138 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %139 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %138, i32 0, i32 29
  %140 = load i32, i32* %139, align 4
  %141 = sub i32 %140, 2
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %198, %134
  %143 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %144 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %143, i32 0, i32 18
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %147 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %146, i32 0, i32 22
  %148 = load i32, i32* %147, align 8
  %149 = shl i32 %145, %148
  %150 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %151 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %150, i32 0, i32 14
  %152 = load i8*, i8** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = add i32 %153, 3
  %155 = sub i32 %154, 1
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %152, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = xor i32 %149, %159
  %161 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %162 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %161, i32 0, i32 21
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %160, %163
  %165 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %166 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %165, i32 0, i32 18
  store i32 %164, i32* %166, align 8
  %167 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %168 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %167, i32 0, i32 17
  %169 = load i16*, i16** %168, align 8
  %170 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %171 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %170, i32 0, i32 18
  %172 = load i32, i32* %171, align 8
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i16, i16* %169, i64 %173
  %175 = load i16, i16* %174, align 2
  %176 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %177 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %176, i32 0, i32 16
  %178 = load i16*, i16** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %181 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %180, i32 0, i32 13
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %179, %182
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i16, i16* %178, i64 %184
  store i16 %175, i16* %185, align 2
  %186 = load i32, i32* %9, align 4
  %187 = trunc i32 %186 to i16
  %188 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %189 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %188, i32 0, i32 17
  %190 = load i16*, i16** %189, align 8
  %191 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %192 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %191, i32 0, i32 18
  %193 = load i32, i32* %192, align 8
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i16, i16* %190, i64 %194
  store i16 %187, i16* %195, align 2
  %196 = load i32, i32* %9, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %142
  %199 = load i32, i32* %10, align 4
  %200 = add i32 %199, -1
  store i32 %200, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %142, label %202, !llvm.loop !10

202:                                              ; preds = %198
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %205 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %204, i32 0, i32 27
  store i32 %203, i32* %205, align 4
  %206 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %207 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %206, i32 0, i32 29
  store i32 2, i32* %207, align 4
  %208 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  call void @fill_window(%struct.internal_state* noundef %208)
  br label %129, !llvm.loop !12

209:                                              ; preds = %129
  %210 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %211 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %210, i32 0, i32 29
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %214 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %213, i32 0, i32 27
  %215 = load i32, i32* %214, align 4
  %216 = add i32 %215, %212
  store i32 %216, i32* %214, align 4
  %217 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %218 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %217, i32 0, i32 27
  %219 = load i32, i32* %218, align 4
  %220 = zext i32 %219 to i64
  %221 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %222 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %221, i32 0, i32 23
  store i64 %220, i64* %222, align 8
  %223 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %224 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %223, i32 0, i32 29
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %227 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %226, i32 0, i32 55
  store i32 %225, i32* %227, align 4
  %228 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %229 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %228, i32 0, i32 29
  store i32 0, i32* %229, align 4
  %230 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %231 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %230, i32 0, i32 30
  store i32 2, i32* %231, align 8
  %232 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %233 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %232, i32 0, i32 24
  store i32 2, i32* %233, align 8
  %234 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %235 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %234, i32 0, i32 26
  store i32 0, i32* %235, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %238 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %237, i32 0, i32 0
  store i8* %236, i8** %238, align 8
  %239 = load i32, i32* %12, align 4
  %240 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %241 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 8
  %242 = load i32, i32* %11, align 4
  %243 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %244 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %243, i32 0, i32 6
  store i32 %242, i32* %244, align 4
  store i32 0, i32* %4, align 4
  br label %245

245:                                              ; preds = %209, %47, %24
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare i64 @adler32(i64 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @fill_window(%struct.internal_state* noundef %0) #0 {
  %2 = alloca %struct.internal_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.internal_state* %0, %struct.internal_state** %2, align 8
  %11 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %12 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %305, %1
  %15 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %16 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %15, i32 0, i32 15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %19 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %18, i32 0, i32 29
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = sub i64 %17, %21
  %23 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %24 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %23, i32 0, i32 27
  %25 = load i32, i32* %24, align 4
  %26 = zext i32 %25 to i64
  %27 = sub i64 %22, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %30 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %29, i32 0, i32 27
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %34 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %35, 262
  %37 = add i32 %32, %36
  %38 = icmp uge i32 %31, %37
  br i1 %38, label %39, label %135

39:                                               ; preds = %14
  %40 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %41 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %40, i32 0, i32 14
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %44 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %43, i32 0, i32 14
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %52 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %51, i32 0, i32 14
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @llvm.objectsize.i64.p0i8(i8* %53, i1 false, i1 true, i1 false)
  %55 = call i8* @__memcpy_chk(i8* noundef %42, i8* noundef %48, i64 noundef %50, i64 noundef %54) #4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %58 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %57, i32 0, i32 28
  %59 = load i32, i32* %58, align 8
  %60 = sub i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %63 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %62, i32 0, i32 27
  %64 = load i32, i32* %63, align 4
  %65 = sub i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %69 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %68, i32 0, i32 23
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %73 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %72, i32 0, i32 19
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %3, align 4
  %75 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %76 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %75, i32 0, i32 17
  %77 = load i16*, i16** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %77, i64 %79
  store i16* %80, i16** %5, align 8
  br label %81

81:                                               ; preds = %98, %39
  %82 = load i16*, i16** %5, align 8
  %83 = getelementptr inbounds i16, i16* %82, i32 -1
  store i16* %83, i16** %5, align 8
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i32
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp uge i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sub i32 %90, %91
  br label %94

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32 [ %92, %89 ], [ 0, %93 ]
  %96 = trunc i32 %95 to i16
  %97 = load i16*, i16** %5, align 8
  store i16 %96, i16* %97, align 2
  br label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %3, align 4
  %100 = add i32 %99, -1
  store i32 %100, i32* %3, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %81, label %102, !llvm.loop !13

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  %104 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %105 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %104, i32 0, i32 16
  %106 = load i16*, i16** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i16, i16* %106, i64 %108
  store i16* %109, i16** %5, align 8
  br label %110

110:                                              ; preds = %127, %102
  %111 = load i16*, i16** %5, align 8
  %112 = getelementptr inbounds i16, i16* %111, i32 -1
  store i16* %112, i16** %5, align 8
  %113 = load i16, i16* %112, align 2
  %114 = zext i16 %113 to i32
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp uge i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %7, align 4
  %121 = sub i32 %119, %120
  br label %123

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %118
  %124 = phi i32 [ %121, %118 ], [ 0, %122 ]
  %125 = trunc i32 %124 to i16
  %126 = load i16*, i16** %5, align 8
  store i16 %125, i16* %126, align 2
  br label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %3, align 4
  %129 = add i32 %128, -1
  store i32 %129, i32* %3, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %110, label %131, !llvm.loop !14

131:                                              ; preds = %127
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %6, align 4
  %134 = add i32 %133, %132
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %131, %14
  %136 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %137 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %136, i32 0, i32 0
  %138 = load %struct.z_stream_s*, %struct.z_stream_s** %137, align 8
  %139 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %307

143:                                              ; preds = %135
  %144 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %145 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %144, i32 0, i32 0
  %146 = load %struct.z_stream_s*, %struct.z_stream_s** %145, align 8
  %147 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %148 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %147, i32 0, i32 14
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %151 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %150, i32 0, i32 27
  %152 = load i32, i32* %151, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %149, i64 %153
  %155 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %156 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %155, i32 0, i32 29
  %157 = load i32, i32* %156, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %154, i64 %158
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @read_buf(%struct.z_stream_s* noundef %146, i8* noundef %159, i32 noundef %160)
  store i32 %161, i32* %3, align 4
  %162 = load i32, i32* %3, align 4
  %163 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %164 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %163, i32 0, i32 29
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %168 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %167, i32 0, i32 29
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %171 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %170, i32 0, i32 55
  %172 = load i32, i32* %171, align 4
  %173 = add i32 %169, %172
  %174 = icmp uge i32 %173, 3
  br i1 %174, label %175, label %292

175:                                              ; preds = %143
  %176 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %177 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %176, i32 0, i32 27
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %180 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %179, i32 0, i32 55
  %181 = load i32, i32* %180, align 4
  %182 = sub i32 %178, %181
  store i32 %182, i32* %8, align 4
  %183 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %184 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %183, i32 0, i32 14
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %192 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %191, i32 0, i32 18
  store i32 %190, i32* %192, align 8
  %193 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %194 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %193, i32 0, i32 18
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %197 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %196, i32 0, i32 22
  %198 = load i32, i32* %197, align 8
  %199 = shl i32 %195, %198
  %200 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %201 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %200, i32 0, i32 14
  %202 = load i8*, i8** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = add i32 %203, 1
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = xor i32 %199, %208
  %210 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %211 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %210, i32 0, i32 21
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %209, %212
  %214 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %215 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %214, i32 0, i32 18
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %290, %175
  %217 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %218 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %217, i32 0, i32 55
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %291

221:                                              ; preds = %216
  %222 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %223 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %222, i32 0, i32 18
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %226 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %225, i32 0, i32 22
  %227 = load i32, i32* %226, align 8
  %228 = shl i32 %224, %227
  %229 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %230 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %229, i32 0, i32 14
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = add i32 %232, 3
  %234 = sub i32 %233, 1
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %231, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = xor i32 %228, %238
  %240 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %241 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %240, i32 0, i32 21
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %239, %242
  %244 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %245 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %244, i32 0, i32 18
  store i32 %243, i32* %245, align 8
  %246 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %247 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %246, i32 0, i32 17
  %248 = load i16*, i16** %247, align 8
  %249 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %250 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %249, i32 0, i32 18
  %251 = load i32, i32* %250, align 8
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i16, i16* %248, i64 %252
  %254 = load i16, i16* %253, align 2
  %255 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %256 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %255, i32 0, i32 16
  %257 = load i16*, i16** %256, align 8
  %258 = load i32, i32* %8, align 4
  %259 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %260 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %259, i32 0, i32 13
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %258, %261
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i16, i16* %257, i64 %263
  store i16 %254, i16* %264, align 2
  %265 = load i32, i32* %8, align 4
  %266 = trunc i32 %265 to i16
  %267 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %268 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %267, i32 0, i32 17
  %269 = load i16*, i16** %268, align 8
  %270 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %271 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %270, i32 0, i32 18
  %272 = load i32, i32* %271, align 8
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i16, i16* %269, i64 %273
  store i16 %266, i16* %274, align 2
  %275 = load i32, i32* %8, align 4
  %276 = add i32 %275, 1
  store i32 %276, i32* %8, align 4
  %277 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %278 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %277, i32 0, i32 55
  %279 = load i32, i32* %278, align 4
  %280 = add i32 %279, -1
  store i32 %280, i32* %278, align 4
  %281 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %282 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %281, i32 0, i32 29
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %285 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %284, i32 0, i32 55
  %286 = load i32, i32* %285, align 4
  %287 = add i32 %283, %286
  %288 = icmp ult i32 %287, 3
  br i1 %288, label %289, label %290

289:                                              ; preds = %221
  br label %291

290:                                              ; preds = %221
  br label %216, !llvm.loop !15

291:                                              ; preds = %289, %216
  br label %292

292:                                              ; preds = %291, %143
  br label %293

293:                                              ; preds = %292
  %294 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %295 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %294, i32 0, i32 29
  %296 = load i32, i32* %295, align 4
  %297 = icmp ult i32 %296, 262
  br i1 %297, label %298, label %305

298:                                              ; preds = %293
  %299 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %300 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %299, i32 0, i32 0
  %301 = load %struct.z_stream_s*, %struct.z_stream_s** %300, align 8
  %302 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br label %305

305:                                              ; preds = %298, %293
  %306 = phi i1 [ false, %293 ], [ %304, %298 ]
  br i1 %306, label %14, label %307, !llvm.loop !16

307:                                              ; preds = %305, %142
  %308 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %309 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %308, i32 0, i32 58
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %312 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %311, i32 0, i32 15
  %313 = load i64, i64* %312, align 8
  %314 = icmp ult i64 %310, %313
  br i1 %314, label %315, label %418

315:                                              ; preds = %307
  %316 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %317 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %316, i32 0, i32 27
  %318 = load i32, i32* %317, align 4
  %319 = zext i32 %318 to i64
  %320 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %321 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %320, i32 0, i32 29
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  %324 = add i64 %319, %323
  store i64 %324, i64* %9, align 8
  %325 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %326 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %325, i32 0, i32 58
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* %9, align 8
  %329 = icmp ult i64 %327, %328
  br i1 %329, label %330, label %360

330:                                              ; preds = %315
  %331 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %332 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %331, i32 0, i32 15
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* %9, align 8
  %335 = sub i64 %333, %334
  store i64 %335, i64* %10, align 8
  %336 = load i64, i64* %10, align 8
  %337 = icmp ugt i64 %336, 258
  br i1 %337, label %338, label %339

338:                                              ; preds = %330
  store i64 258, i64* %10, align 8
  br label %339

339:                                              ; preds = %338, %330
  %340 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %341 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %340, i32 0, i32 14
  %342 = load i8*, i8** %341, align 8
  %343 = load i64, i64* %9, align 8
  %344 = getelementptr inbounds i8, i8* %342, i64 %343
  %345 = load i64, i64* %10, align 8
  %346 = trunc i64 %345 to i32
  %347 = zext i32 %346 to i64
  %348 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %349 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %348, i32 0, i32 14
  %350 = load i8*, i8** %349, align 8
  %351 = load i64, i64* %9, align 8
  %352 = getelementptr inbounds i8, i8* %350, i64 %351
  %353 = call i64 @llvm.objectsize.i64.p0i8(i8* %352, i1 false, i1 true, i1 false)
  %354 = call i8* @__memset_chk(i8* noundef %344, i32 noundef 0, i64 noundef %347, i64 noundef %353) #4
  %355 = load i64, i64* %9, align 8
  %356 = load i64, i64* %10, align 8
  %357 = add i64 %355, %356
  %358 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %359 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %358, i32 0, i32 58
  store i64 %357, i64* %359, align 8
  br label %417

360:                                              ; preds = %315
  %361 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %362 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %361, i32 0, i32 58
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* %9, align 8
  %365 = add i64 %364, 258
  %366 = icmp ult i64 %363, %365
  br i1 %366, label %367, label %416

367:                                              ; preds = %360
  %368 = load i64, i64* %9, align 8
  %369 = add i64 %368, 258
  %370 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %371 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %370, i32 0, i32 58
  %372 = load i64, i64* %371, align 8
  %373 = sub i64 %369, %372
  store i64 %373, i64* %10, align 8
  %374 = load i64, i64* %10, align 8
  %375 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %376 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %375, i32 0, i32 15
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %379 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %378, i32 0, i32 58
  %380 = load i64, i64* %379, align 8
  %381 = sub i64 %377, %380
  %382 = icmp ugt i64 %374, %381
  br i1 %382, label %383, label %391

383:                                              ; preds = %367
  %384 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %385 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %384, i32 0, i32 15
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %388 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %387, i32 0, i32 58
  %389 = load i64, i64* %388, align 8
  %390 = sub i64 %386, %389
  store i64 %390, i64* %10, align 8
  br label %391

391:                                              ; preds = %383, %367
  %392 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %393 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %392, i32 0, i32 14
  %394 = load i8*, i8** %393, align 8
  %395 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %396 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %395, i32 0, i32 58
  %397 = load i64, i64* %396, align 8
  %398 = getelementptr inbounds i8, i8* %394, i64 %397
  %399 = load i64, i64* %10, align 8
  %400 = trunc i64 %399 to i32
  %401 = zext i32 %400 to i64
  %402 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %403 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %402, i32 0, i32 14
  %404 = load i8*, i8** %403, align 8
  %405 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %406 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %405, i32 0, i32 58
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds i8, i8* %404, i64 %407
  %409 = call i64 @llvm.objectsize.i64.p0i8(i8* %408, i1 false, i1 true, i1 false)
  %410 = call i8* @__memset_chk(i8* noundef %398, i32 noundef 0, i64 noundef %401, i64 noundef %409) #4
  %411 = load i64, i64* %10, align 8
  %412 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %413 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %412, i32 0, i32 58
  %414 = load i64, i64* %413, align 8
  %415 = add i64 %414, %411
  store i64 %415, i64* %413, align 8
  br label %416

416:                                              ; preds = %391, %360
  br label %417

417:                                              ; preds = %416, %339
  br label %418

418:                                              ; preds = %417, %307
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateResetKeep(%struct.z_stream_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca %struct.internal_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  %5 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %6 = icmp eq %struct.z_stream_s* %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %9 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 7
  %10 = load %struct.internal_state*, %struct.internal_state** %9, align 8
  %11 = icmp eq %struct.internal_state* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %13, i32 0, i32 8
  %15 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %14, align 8
  %16 = icmp eq i8* (i8*, i32, i32)* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %18, i32 0, i32 9
  %20 = load void (i8*, i8*)*, void (i8*, i8*)** %19, align 8
  %21 = icmp eq void (i8*, i8*)* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %12, %7, %1
  store i32 -2, i32* %2, align 4
  br label %68

23:                                               ; preds = %17
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %27 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %28, i32 0, i32 6
  store i8* null, i8** %29, align 8
  %30 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %30, i32 0, i32 11
  store i32 2, i32* %31, align 8
  %32 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %32, i32 0, i32 7
  %34 = load %struct.internal_state*, %struct.internal_state** %33, align 8
  store %struct.internal_state* %34, %struct.internal_state** %4, align 8
  %35 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %36 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %35, i32 0, i32 5
  store i32 0, i32* %36, align 8
  %37 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %38 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %41 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %43 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %23
  %47 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %48 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 0, %49
  %51 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %52 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %23
  %54 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %55 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 42, i32 113
  %60 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %61 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = call i64 @adler32(i64 noundef 0, i8* noundef null, i32 noundef 0)
  %63 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %64 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %63, i32 0, i32 12
  store i64 %62, i64* %64, align 8
  %65 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %66 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %65, i32 0, i32 10
  store i32 0, i32* %66, align 8
  %67 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  call void @_tr_init(%struct.internal_state* noundef %67)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %53, %22
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare hidden void @_tr_init(%struct.internal_state* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @lm_init(%struct.internal_state* noundef %0) #0 {
  %2 = alloca %struct.internal_state*, align 8
  store %struct.internal_state* %0, %struct.internal_state** %2, align 8
  %3 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %4 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %3, i32 0, i32 11
  %5 = load i32, i32* %4, align 4
  %6 = zext i32 %5 to i64
  %7 = mul i64 2, %6
  %8 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %9 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %8, i32 0, i32 15
  store i64 %7, i64* %9, align 8
  %10 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %11 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %10, i32 0, i32 17
  %12 = load i16*, i16** %11, align 8
  %13 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %14 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %13, i32 0, i32 19
  %15 = load i32, i32* %14, align 4
  %16 = sub i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i16, i16* %12, i64 %17
  store i16 0, i16* %18, align 2
  %19 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %20 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %19, i32 0, i32 17
  %21 = load i16*, i16** %20, align 8
  %22 = bitcast i16* %21 to i8*
  %23 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %24 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %23, i32 0, i32 19
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = mul i64 %27, 2
  %29 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %30 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %29, i32 0, i32 17
  %31 = load i16*, i16** %30, align 8
  %32 = bitcast i16* %31 to i8*
  %33 = call i64 @llvm.objectsize.i64.p0i8(i8* %32, i1 false, i1 true, i1 false)
  %34 = call i8* @__memset_chk(i8* noundef %22, i32 noundef 0, i64 noundef %28, i64 noundef %33) #4
  %35 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %36 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %35, i32 0, i32 33
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [10 x %struct.config_s], [10 x %struct.config_s]* @configuration_table, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.config_s, %struct.config_s* %39, i32 0, i32 1
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %44 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %43, i32 0, i32 32
  store i32 %42, i32* %44, align 8
  %45 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %46 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %45, i32 0, i32 33
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [10 x %struct.config_s], [10 x %struct.config_s]* @configuration_table, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.config_s, %struct.config_s* %49, i32 0, i32 0
  %51 = load i16, i16* %50, align 8
  %52 = zext i16 %51 to i32
  %53 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %54 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %53, i32 0, i32 35
  store i32 %52, i32* %54, align 4
  %55 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %56 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %55, i32 0, i32 33
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x %struct.config_s], [10 x %struct.config_s]* @configuration_table, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.config_s, %struct.config_s* %59, i32 0, i32 2
  %61 = load i16, i16* %60, align 4
  %62 = zext i16 %61 to i32
  %63 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %64 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %63, i32 0, i32 36
  store i32 %62, i32* %64, align 8
  %65 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %66 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %65, i32 0, i32 33
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [10 x %struct.config_s], [10 x %struct.config_s]* @configuration_table, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.config_s, %struct.config_s* %69, i32 0, i32 3
  %71 = load i16, i16* %70, align 2
  %72 = zext i16 %71 to i32
  %73 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %74 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %73, i32 0, i32 31
  store i32 %72, i32* %74, align 4
  %75 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %76 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %75, i32 0, i32 27
  store i32 0, i32* %76, align 4
  %77 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %78 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %77, i32 0, i32 23
  store i64 0, i64* %78, align 8
  %79 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %80 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %79, i32 0, i32 29
  store i32 0, i32* %80, align 4
  %81 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %82 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %81, i32 0, i32 55
  store i32 0, i32* %82, align 4
  %83 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %84 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %83, i32 0, i32 30
  store i32 2, i32* %84, align 8
  %85 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %86 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %85, i32 0, i32 24
  store i32 2, i32* %86, align 8
  %87 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %88 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %87, i32 0, i32 26
  store i32 0, i32* %88, align 8
  %89 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %90 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %89, i32 0, i32 18
  store i32 0, i32* %90, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateSetHeader(%struct.z_stream_s* noundef %0, %struct.gz_header_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca %struct.gz_header_s*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  store %struct.gz_header_s* %1, %struct.gz_header_s** %5, align 8
  %6 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %7 = icmp eq %struct.z_stream_s* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %10 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 7
  %11 = load %struct.internal_state*, %struct.internal_state** %10, align 8
  %12 = icmp eq %struct.internal_state* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  store i32 -2, i32* %3, align 4
  br label %28

14:                                               ; preds = %8
  %15 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 7
  %17 = load %struct.internal_state*, %struct.internal_state** %16, align 8
  %18 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -2, i32* %3, align 4
  br label %28

22:                                               ; preds = %14
  %23 = load %struct.gz_header_s*, %struct.gz_header_s** %5, align 8
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %24, i32 0, i32 7
  %26 = load %struct.internal_state*, %struct.internal_state** %25, align 8
  %27 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %26, i32 0, i32 7
  store %struct.gz_header_s* %23, %struct.gz_header_s** %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %21, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflatePending(%struct.z_stream_s* noundef %0, i32* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %9 = icmp eq %struct.z_stream_s* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %12 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 7
  %13 = load %struct.internal_state*, %struct.internal_state** %12, align 8
  %14 = icmp eq %struct.internal_state* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %3
  store i32 -2, i32* %4, align 4
  br label %37

16:                                               ; preds = %10
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %21 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %20, i32 0, i32 7
  %22 = load %struct.internal_state*, %struct.internal_state** %21, align 8
  %23 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %30, i32 0, i32 7
  %32 = load %struct.internal_state*, %struct.internal_state** %31, align 8
  %33 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %32, i32 0, i32 57
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %26
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflatePrime(%struct.z_stream_s* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.internal_state*, align 8
  %9 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %11 = icmp eq %struct.z_stream_s* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %13, i32 0, i32 7
  %15 = load %struct.internal_state*, %struct.internal_state** %14, align 8
  %16 = icmp eq %struct.internal_state* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %3
  store i32 -2, i32* %4, align 4
  br label %77

18:                                               ; preds = %12
  %19 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %20 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 7
  %21 = load %struct.internal_state*, %struct.internal_state** %20, align 8
  store %struct.internal_state* %21, %struct.internal_state** %8, align 8
  %22 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %23 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %22, i32 0, i32 51
  %24 = load i16*, i16** %23, align 8
  %25 = bitcast i16* %24 to i8*
  %26 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %27 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = icmp ult i8* %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i32 -5, i32* %4, align 4
  br label %77

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %73, %32
  %34 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %35 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %34, i32 0, i32 57
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 16, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 1, %45
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %44, %47
  %49 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %50 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %49, i32 0, i32 57
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %48, %51
  %53 = trunc i32 %52 to i16
  %54 = zext i16 %53 to i32
  %55 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %56 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %55, i32 0, i32 56
  %57 = load i16, i16* %56, align 8
  %58 = zext i16 %57 to i32
  %59 = or i32 %58, %54
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %56, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %63 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %62, i32 0, i32 57
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  call void @_tr_flush_bits(%struct.internal_state* noundef %66)
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %43
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %33, label %76, !llvm.loop !17

76:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %31, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare hidden void @_tr_flush_bits(%struct.internal_state* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateParams(%struct.z_stream_s* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.internal_state*, align 8
  %9 = alloca i32 (%struct.internal_state*, i32)*, align 8
  %10 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %12 = icmp eq %struct.z_stream_s* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %14, i32 0, i32 7
  %16 = load %struct.internal_state*, %struct.internal_state** %15, align 8
  %17 = icmp eq %struct.internal_state* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %3
  store i32 -2, i32* %4, align 4
  br label %124

19:                                               ; preds = %13
  %20 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %21 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %20, i32 0, i32 7
  %22 = load %struct.internal_state*, %struct.internal_state** %21, align 8
  store %struct.internal_state* %22, %struct.internal_state** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 6, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 9
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32, %29, %26
  store i32 -2, i32* %4, align 4
  br label %124

39:                                               ; preds = %35
  %40 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %41 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %40, i32 0, i32 33
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [10 x %struct.config_s], [10 x %struct.config_s]* @configuration_table, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.config_s, %struct.config_s* %44, i32 0, i32 4
  %46 = load i32 (%struct.internal_state*, i32)*, i32 (%struct.internal_state*, i32)** %45, align 8
  store i32 (%struct.internal_state*, i32)* %46, i32 (%struct.internal_state*, i32)** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %49 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %48, i32 0, i32 34
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %39
  %53 = load i32 (%struct.internal_state*, i32)*, i32 (%struct.internal_state*, i32)** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10 x %struct.config_s], [10 x %struct.config_s]* @configuration_table, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.config_s, %struct.config_s* %56, i32 0, i32 4
  %58 = load i32 (%struct.internal_state*, i32)*, i32 (%struct.internal_state*, i32)** %57, align 8
  %59 = icmp ne i32 (%struct.internal_state*, i32)* %53, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %52, %39
  %61 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %62 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %67 = call i32 @deflate(%struct.z_stream_s* noundef %66, i32 noundef 5)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, -5
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %72 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %70, %65
  br label %77

77:                                               ; preds = %76, %60, %52
  %78 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %79 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %78, i32 0, i32 33
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %86 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %85, i32 0, i32 33
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [10 x %struct.config_s], [10 x %struct.config_s]* @configuration_table, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.config_s, %struct.config_s* %89, i32 0, i32 1
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  %93 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %94 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %93, i32 0, i32 32
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [10 x %struct.config_s], [10 x %struct.config_s]* @configuration_table, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.config_s, %struct.config_s* %97, i32 0, i32 0
  %99 = load i16, i16* %98, align 8
  %100 = zext i16 %99 to i32
  %101 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %102 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %101, i32 0, i32 35
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [10 x %struct.config_s], [10 x %struct.config_s]* @configuration_table, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.config_s, %struct.config_s* %105, i32 0, i32 2
  %107 = load i16, i16* %106, align 4
  %108 = zext i16 %107 to i32
  %109 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %110 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %109, i32 0, i32 36
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [10 x %struct.config_s], [10 x %struct.config_s]* @configuration_table, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.config_s, %struct.config_s* %113, i32 0, i32 3
  %115 = load i16, i16* %114, align 2
  %116 = zext i16 %115 to i32
  %117 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %118 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %117, i32 0, i32 31
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %83, %77
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %122 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %121, i32 0, i32 34
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %119, %38, %18
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflate(%struct.z_stream_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.internal_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %12 = icmp eq %struct.z_stream_s* %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %14, i32 0, i32 7
  %16 = load %struct.internal_state*, %struct.internal_state** %15, align 8
  %17 = icmp eq %struct.internal_state* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 5
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %13, %2
  store i32 -2, i32* %3, align 4
  br label %394

25:                                               ; preds = %21
  %26 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %27 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %26, i32 0, i32 7
  %28 = load %struct.internal_state*, %struct.internal_state** %27, align 8
  store %struct.internal_state* %28, %struct.internal_state** %7, align 8
  %29 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %25
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %45 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 666
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 4
  br i1 %50, label %51, label %55

51:                                               ; preds = %48, %38, %25
  %52 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @z_errmsg, i64 0, i64 4), align 8
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %54 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  store i32 -2, i32* %3, align 4
  br label %394

55:                                               ; preds = %48, %43
  %56 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %57 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @z_errmsg, i64 0, i64 7), align 8
  %62 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %63 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %62, i32 0, i32 6
  store i8* %61, i8** %63, align 8
  store i32 -5, i32* %3, align 4
  br label %394

64:                                               ; preds = %55
  %65 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %66 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %67 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %66, i32 0, i32 0
  store %struct.z_stream_s* %65, %struct.z_stream_s** %67, align 8
  %68 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %69 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %73 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %72, i32 0, i32 10
  store i32 %71, i32* %73, align 8
  %74 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %75 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 42
  br i1 %77, label %78, label %154

78:                                               ; preds = %64
  %79 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %80 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 8
  %82 = sub i32 %81, 8
  %83 = shl i32 %82, 4
  %84 = add i32 8, %83
  %85 = shl i32 %84, 8
  store i32 %85, i32* %8, align 4
  %86 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %87 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %86, i32 0, i32 34
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %88, 2
  br i1 %89, label %95, label %90

90:                                               ; preds = %78
  %91 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %92 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %91, i32 0, i32 33
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 2
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %78
  store i32 0, i32* %9, align 4
  br label %111

96:                                               ; preds = %90
  %97 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %98 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %97, i32 0, i32 33
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 6
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %9, align 4
  br label %110

102:                                              ; preds = %96
  %103 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %104 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %103, i32 0, i32 33
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 6
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 2, i32* %9, align 4
  br label %109

108:                                              ; preds = %102
  store i32 3, i32* %9, align 4
  br label %109

109:                                              ; preds = %108, %107
  br label %110

110:                                              ; preds = %109, %101
  br label %111

111:                                              ; preds = %110, %95
  %112 = load i32, i32* %9, align 4
  %113 = shl i32 %112, 6
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  %116 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %117 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %116, i32 0, i32 27
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, 32
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %111
  %124 = load i32, i32* %8, align 4
  %125 = urem i32 %124, 31
  %126 = sub i32 31, %125
  %127 = load i32, i32* %8, align 4
  %128 = add i32 %127, %126
  store i32 %128, i32* %8, align 4
  %129 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %130 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %129, i32 0, i32 1
  store i32 113, i32* %130, align 8
  %131 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %132 = load i32, i32* %8, align 4
  call void @putShortMSB(%struct.internal_state* noundef %131, i32 noundef %132)
  %133 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %134 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %133, i32 0, i32 27
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %123
  %138 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %139 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %140 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %139, i32 0, i32 12
  %141 = load i64, i64* %140, align 8
  %142 = lshr i64 %141, 16
  %143 = trunc i64 %142 to i32
  call void @putShortMSB(%struct.internal_state* noundef %138, i32 noundef %143)
  %144 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %145 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %146 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %145, i32 0, i32 12
  %147 = load i64, i64* %146, align 8
  %148 = and i64 %147, 65535
  %149 = trunc i64 %148 to i32
  call void @putShortMSB(%struct.internal_state* noundef %144, i32 noundef %149)
  br label %150

150:                                              ; preds = %137, %123
  %151 = call i64 @adler32(i64 noundef 0, i8* noundef null, i32 noundef 0)
  %152 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %153 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %152, i32 0, i32 12
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %150, %64
  %155 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %156 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %154
  %160 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %160)
  %161 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %162 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %167 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %166, i32 0, i32 10
  store i32 -1, i32* %167, align 8
  store i32 0, i32* %3, align 4
  br label %394

168:                                              ; preds = %159
  br label %198

169:                                              ; preds = %154
  %170 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %171 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %197

174:                                              ; preds = %169
  %175 = load i32, i32* %5, align 4
  %176 = shl i32 %175, 1
  %177 = load i32, i32* %5, align 4
  %178 = icmp sgt i32 %177, 4
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 9, i32 0
  %181 = sub nsw i32 %176, %180
  %182 = load i32, i32* %6, align 4
  %183 = shl i32 %182, 1
  %184 = load i32, i32* %6, align 4
  %185 = icmp sgt i32 %184, 4
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 9, i32 0
  %188 = sub nsw i32 %183, %187
  %189 = icmp sle i32 %181, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %174
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 4
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @z_errmsg, i64 0, i64 7), align 8
  %195 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %196 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %195, i32 0, i32 6
  store i8* %194, i8** %196, align 8
  store i32 -5, i32* %3, align 4
  br label %394

197:                                              ; preds = %190, %174, %169
  br label %198

198:                                              ; preds = %197, %168
  %199 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %200 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 666
  br i1 %202, label %203, label %212

203:                                              ; preds = %198
  %204 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %205 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @z_errmsg, i64 0, i64 7), align 8
  %210 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %211 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %210, i32 0, i32 6
  store i8* %209, i8** %211, align 8
  store i32 -5, i32* %3, align 4
  br label %394

212:                                              ; preds = %203, %198
  %213 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %214 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %230, label %217

217:                                              ; preds = %212
  %218 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %219 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %218, i32 0, i32 29
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* %5, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %352

225:                                              ; preds = %222
  %226 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %227 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 666
  br i1 %229, label %230, label %352

230:                                              ; preds = %225, %217, %212
  %231 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %232 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %231, i32 0, i32 34
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 2
  br i1 %234, label %235, label %239

235:                                              ; preds = %230
  %236 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %237 = load i32, i32* %5, align 4
  %238 = call i32 @deflate_huff(%struct.internal_state* noundef %236, i32 noundef %237)
  br label %261

239:                                              ; preds = %230
  %240 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %241 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %240, i32 0, i32 34
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 3
  br i1 %243, label %244, label %248

244:                                              ; preds = %239
  %245 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %246 = load i32, i32* %5, align 4
  %247 = call i32 @deflate_rle(%struct.internal_state* noundef %245, i32 noundef %246)
  br label %259

248:                                              ; preds = %239
  %249 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %250 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %249, i32 0, i32 33
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [10 x %struct.config_s], [10 x %struct.config_s]* @configuration_table, i64 0, i64 %252
  %254 = getelementptr inbounds %struct.config_s, %struct.config_s* %253, i32 0, i32 4
  %255 = load i32 (%struct.internal_state*, i32)*, i32 (%struct.internal_state*, i32)** %254, align 8
  %256 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %257 = load i32, i32* %5, align 4
  %258 = call i32 %255(%struct.internal_state* noundef %256, i32 noundef %257)
  br label %259

259:                                              ; preds = %248, %244
  %260 = phi i32 [ %247, %244 ], [ %258, %248 ]
  br label %261

261:                                              ; preds = %259, %235
  %262 = phi i32 [ %238, %235 ], [ %260, %259 ]
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = icmp eq i32 %263, 2
  br i1 %264, label %268, label %265

265:                                              ; preds = %261
  %266 = load i32, i32* %10, align 4
  %267 = icmp eq i32 %266, 3
  br i1 %267, label %268, label %271

268:                                              ; preds = %265, %261
  %269 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %270 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %269, i32 0, i32 1
  store i32 666, i32* %270, align 8
  br label %271

271:                                              ; preds = %268, %265
  %272 = load i32, i32* %10, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* %10, align 4
  %276 = icmp eq i32 %275, 2
  br i1 %276, label %277, label %286

277:                                              ; preds = %274, %271
  %278 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %279 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %277
  %283 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %284 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %283, i32 0, i32 10
  store i32 -1, i32* %284, align 8
  br label %285

285:                                              ; preds = %282, %277
  store i32 0, i32* %3, align 4
  br label %394

286:                                              ; preds = %274
  %287 = load i32, i32* %10, align 4
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %289, label %351

289:                                              ; preds = %286
  %290 = load i32, i32* %5, align 4
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %292, label %294

292:                                              ; preds = %289
  %293 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  call void @_tr_align(%struct.internal_state* noundef %293)
  br label %341

294:                                              ; preds = %289
  %295 = load i32, i32* %5, align 4
  %296 = icmp ne i32 %295, 5
  br i1 %296, label %297, label %340

297:                                              ; preds = %294
  %298 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  call void @_tr_stored_block(%struct.internal_state* noundef %298, i8* noundef null, i64 noundef 0, i32 noundef 0)
  %299 = load i32, i32* %5, align 4
  %300 = icmp eq i32 %299, 3
  br i1 %300, label %301, label %339

301:                                              ; preds = %297
  %302 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %303 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %302, i32 0, i32 17
  %304 = load i16*, i16** %303, align 8
  %305 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %306 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %305, i32 0, i32 19
  %307 = load i32, i32* %306, align 4
  %308 = sub i32 %307, 1
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds i16, i16* %304, i64 %309
  store i16 0, i16* %310, align 2
  %311 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %312 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %311, i32 0, i32 17
  %313 = load i16*, i16** %312, align 8
  %314 = bitcast i16* %313 to i8*
  %315 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %316 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %315, i32 0, i32 19
  %317 = load i32, i32* %316, align 4
  %318 = sub i32 %317, 1
  %319 = zext i32 %318 to i64
  %320 = mul i64 %319, 2
  %321 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %322 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %321, i32 0, i32 17
  %323 = load i16*, i16** %322, align 8
  %324 = bitcast i16* %323 to i8*
  %325 = call i64 @llvm.objectsize.i64.p0i8(i8* %324, i1 false, i1 true, i1 false)
  %326 = call i8* @__memset_chk(i8* noundef %314, i32 noundef 0, i64 noundef %320, i64 noundef %325) #4
  %327 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %328 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %327, i32 0, i32 29
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %301
  %332 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %333 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %332, i32 0, i32 27
  store i32 0, i32* %333, align 4
  %334 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %335 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %334, i32 0, i32 23
  store i64 0, i64* %335, align 8
  %336 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %337 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %336, i32 0, i32 55
  store i32 0, i32* %337, align 4
  br label %338

338:                                              ; preds = %331, %301
  br label %339

339:                                              ; preds = %338, %297
  br label %340

340:                                              ; preds = %339, %294
  br label %341

341:                                              ; preds = %340, %292
  %342 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %342)
  %343 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %344 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %341
  %348 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %349 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %348, i32 0, i32 10
  store i32 -1, i32* %349, align 8
  store i32 0, i32* %3, align 4
  br label %394

350:                                              ; preds = %341
  br label %351

351:                                              ; preds = %350, %286
  br label %352

352:                                              ; preds = %351, %225, %222
  %353 = load i32, i32* %5, align 4
  %354 = icmp ne i32 %353, 4
  br i1 %354, label %355, label %356

355:                                              ; preds = %352
  store i32 0, i32* %3, align 4
  br label %394

356:                                              ; preds = %352
  %357 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %358 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 4
  %360 = icmp sle i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %356
  store i32 1, i32* %3, align 4
  br label %394

362:                                              ; preds = %356
  %363 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %364 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %365 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %364, i32 0, i32 12
  %366 = load i64, i64* %365, align 8
  %367 = lshr i64 %366, 16
  %368 = trunc i64 %367 to i32
  call void @putShortMSB(%struct.internal_state* noundef %363, i32 noundef %368)
  %369 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %370 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %371 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %370, i32 0, i32 12
  %372 = load i64, i64* %371, align 8
  %373 = and i64 %372, 65535
  %374 = trunc i64 %373 to i32
  call void @putShortMSB(%struct.internal_state* noundef %369, i32 noundef %374)
  %375 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %375)
  %376 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %377 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %376, i32 0, i32 6
  %378 = load i32, i32* %377, align 4
  %379 = icmp sgt i32 %378, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %362
  %381 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %382 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %381, i32 0, i32 6
  %383 = load i32, i32* %382, align 4
  %384 = sub nsw i32 0, %383
  %385 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %386 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %385, i32 0, i32 6
  store i32 %384, i32* %386, align 4
  br label %387

387:                                              ; preds = %380, %362
  %388 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %389 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %388, i32 0, i32 5
  %390 = load i32, i32* %389, align 8
  %391 = icmp ne i32 %390, 0
  %392 = zext i1 %391 to i64
  %393 = select i1 %391, i32 0, i32 1
  store i32 %393, i32* %3, align 4
  br label %394

394:                                              ; preds = %387, %361, %355, %347, %285, %208, %193, %165, %60, %51, %24
  %395 = load i32, i32* %3, align 4
  ret i32 %395
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateTune(%struct.z_stream_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_stream_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.internal_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %14 = icmp eq %struct.z_stream_s* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 7
  %18 = load %struct.internal_state*, %struct.internal_state** %17, align 8
  %19 = icmp eq %struct.internal_state* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %5
  store i32 -2, i32* %6, align 4
  br label %37

21:                                               ; preds = %15
  %22 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %23 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %22, i32 0, i32 7
  %24 = load %struct.internal_state*, %struct.internal_state** %23, align 8
  store %struct.internal_state* %24, %struct.internal_state** %12, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.internal_state*, %struct.internal_state** %12, align 8
  %27 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %26, i32 0, i32 35
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.internal_state*, %struct.internal_state** %12, align 8
  %30 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %29, i32 0, i32 32
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.internal_state*, %struct.internal_state** %12, align 8
  %33 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %32, i32 0, i32 36
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.internal_state*, %struct.internal_state** %12, align 8
  %36 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %35, i32 0, i32 31
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %21, %20
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @deflateBound(%struct.z_stream_s* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.internal_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %11, 7
  %13 = lshr i64 %12, 3
  %14 = add i64 %10, %13
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %15, 63
  %17 = lshr i64 %16, 6
  %18 = add i64 %14, %17
  %19 = add i64 %18, 5
  store i64 %19, i64* %7, align 8
  %20 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %21 = icmp eq %struct.z_stream_s* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 7
  %25 = load %struct.internal_state*, %struct.internal_state** %24, align 8
  %26 = icmp eq %struct.internal_state* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %2
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 6
  store i64 %29, i64* %3, align 8
  br label %147

30:                                               ; preds = %22
  %31 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %31, i32 0, i32 7
  %33 = load %struct.internal_state*, %struct.internal_state** %32, align 8
  store %struct.internal_state* %33, %struct.internal_state** %6, align 8
  %34 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %35 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %117 [
    i32 0, label %37
    i32 1, label %38
    i32 2, label %47
  ]

37:                                               ; preds = %30
  store i64 0, i64* %8, align 8
  br label %118

38:                                               ; preds = %30
  %39 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %40 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %39, i32 0, i32 27
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 4, i32 0
  %45 = add nsw i32 6, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %8, align 8
  br label %118

47:                                               ; preds = %30
  store i64 18, i64* %8, align 8
  %48 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %49 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %48, i32 0, i32 7
  %50 = load %struct.gz_header_s*, %struct.gz_header_s** %49, align 8
  %51 = icmp ne %struct.gz_header_s* %50, null
  br i1 %51, label %52, label %116

52:                                               ; preds = %47
  %53 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %54 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %53, i32 0, i32 7
  %55 = load %struct.gz_header_s*, %struct.gz_header_s** %54, align 8
  %56 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %61 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %60, i32 0, i32 7
  %62 = load %struct.gz_header_s*, %struct.gz_header_s** %61, align 8
  %63 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = add i32 2, %64
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %59, %52
  %70 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %71 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %70, i32 0, i32 7
  %72 = load %struct.gz_header_s*, %struct.gz_header_s** %71, align 8
  %73 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %72, i32 0, i32 7
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %81, %77
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  %84 = load i8, i8* %82, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %78, label %86, !llvm.loop !18

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %69
  %88 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %89 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %88, i32 0, i32 7
  %90 = load %struct.gz_header_s*, %struct.gz_header_s** %89, align 8
  %91 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %90, i32 0, i32 9
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %9, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %99, %95
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %9, align 8
  %102 = load i8, i8* %100, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %96, label %104, !llvm.loop !19

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %87
  %106 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %107 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %106, i32 0, i32 7
  %108 = load %struct.gz_header_s*, %struct.gz_header_s** %107, align 8
  %109 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i64, i64* %8, align 8
  %114 = add i64 %113, 2
  store i64 %114, i64* %8, align 8
  br label %115

115:                                              ; preds = %112, %105
  br label %116

116:                                              ; preds = %115, %47
  br label %118

117:                                              ; preds = %30
  store i64 6, i64* %8, align 8
  br label %118

118:                                              ; preds = %117, %116, %38, %37
  %119 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %120 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 15
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %125 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %124, i32 0, i32 20
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 15
  br i1 %127, label %128, label %132

128:                                              ; preds = %123, %118
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %8, align 8
  %131 = add i64 %129, %130
  store i64 %131, i64* %3, align 8
  br label %147

132:                                              ; preds = %123
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* %5, align 8
  %135 = lshr i64 %134, 12
  %136 = add i64 %133, %135
  %137 = load i64, i64* %5, align 8
  %138 = lshr i64 %137, 14
  %139 = add i64 %136, %138
  %140 = load i64, i64* %5, align 8
  %141 = lshr i64 %140, 25
  %142 = add i64 %139, %141
  %143 = add i64 %142, 13
  %144 = sub i64 %143, 6
  %145 = load i64, i64* %8, align 8
  %146 = add i64 %144, %145
  store i64 %146, i64* %3, align 8
  br label %147

147:                                              ; preds = %132, %128, %27
  %148 = load i64, i64* %3, align 8
  ret i64 %148
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putShortMSB(%struct.internal_state* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.internal_state*, align 8
  %4 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = lshr i32 %5, 8
  %7 = trunc i32 %6 to i8
  %8 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %9 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %12 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = add i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds i8, i8* %10, i64 %15
  store i8 %7, i8* %16, align 1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  %20 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %21 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %24 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  store i8 %19, i8* %28, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @flush_pending(%struct.z_stream_s* noundef %0) #0 {
  %2 = alloca %struct.z_stream_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.internal_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %2, align 8
  %5 = load %struct.z_stream_s*, %struct.z_stream_s** %2, align 8
  %6 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 7
  %7 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  store %struct.internal_state* %7, %struct.internal_state** %4, align 8
  %8 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  call void @_tr_flush_bits(%struct.internal_state* noundef %8)
  %9 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %10 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %2, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ugt i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.z_stream_s*, %struct.z_stream_s** %2, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %77

25:                                               ; preds = %21
  %26 = load %struct.z_stream_s*, %struct.z_stream_s** %2, align 8
  %27 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %30 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %2, align 8
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @llvm.objectsize.i64.p0i8(i8* %36, i1 false, i1 true, i1 false)
  %38 = call i8* @__memcpy_chk(i8* noundef %28, i8* noundef %31, i64 noundef %33, i64 noundef %37) #4
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.z_stream_s*, %struct.z_stream_s** %2, align 8
  %41 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = zext i32 %39 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %41, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %47 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = zext i32 %45 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %47, align 8
  %51 = load i32, i32* %3, align 4
  %52 = zext i32 %51 to i64
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %2, align 8
  %54 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.z_stream_s*, %struct.z_stream_s** %2, align 8
  %59 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = sub i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %64 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = sub i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %68 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %25
  %72 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %73 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %76 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %24, %71, %25
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @deflate_huff(%struct.internal_state* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.internal_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.internal_state* %0, %struct.internal_state** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %127, %2
  %9 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %10 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %9, i32 0, i32 29
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  call void @fill_window(%struct.internal_state* noundef %14)
  %15 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %16 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %15, i32 0, i32 29
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %227

23:                                               ; preds = %19
  br label %128

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %8
  %26 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %27 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %26, i32 0, i32 24
  store i32 0, i32* %27, align 8
  %28 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %29 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %28, i32 0, i32 14
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %32 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %31, i32 0, i32 27
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %7, align 1
  %37 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %38 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %37, i32 0, i32 51
  %39 = load i16*, i16** %38, align 8
  %40 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %41 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %40, i32 0, i32 50
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %39, i64 %43
  store i16 0, i16* %44, align 2
  %45 = load i8, i8* %7, align 1
  %46 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %47 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %46, i32 0, i32 48
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %50 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %49, i32 0, i32 50
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %48, i64 %53
  store i8 %45, i8* %54, align 1
  %55 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %56 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %55, i32 0, i32 37
  %57 = load i8, i8* %7, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %56, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %59, i32 0, i32 0
  %61 = bitcast %union.anon* %60 to i16*
  %62 = load i16, i16* %61, align 4
  %63 = add i16 %62, 1
  store i16 %63, i16* %61, align 4
  %64 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %65 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %64, i32 0, i32 50
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %68 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %67, i32 0, i32 49
  %69 = load i32, i32* %68, align 8
  %70 = sub i32 %69, 1
  %71 = icmp eq i32 %66, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %6, align 4
  %73 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %74 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %73, i32 0, i32 29
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, -1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %78 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %77, i32 0, i32 27
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %127

83:                                               ; preds = %25
  %84 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %85 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %86 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %85, i32 0, i32 23
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %91 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %90, i32 0, i32 14
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %94 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %93, i32 0, i32 23
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %92, i64 %97
  br label %100

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99, %89
  %101 = phi i8* [ %98, %89 ], [ null, %99 ]
  %102 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %103 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %102, i32 0, i32 27
  %104 = load i32, i32* %103, align 4
  %105 = zext i32 %104 to i64
  %106 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %107 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %106, i32 0, i32 23
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  call void @_tr_flush_block(%struct.internal_state* noundef %84, i8* noundef %101, i64 noundef %109, i32 noundef 0)
  %110 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %111 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %110, i32 0, i32 27
  %112 = load i32, i32* %111, align 4
  %113 = zext i32 %112 to i64
  %114 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %115 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %114, i32 0, i32 23
  store i64 %113, i64* %115, align 8
  %116 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %117 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %116, i32 0, i32 0
  %118 = load %struct.z_stream_s*, %struct.z_stream_s** %117, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %118)
  %119 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %120 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %119, i32 0, i32 0
  %121 = load %struct.z_stream_s*, %struct.z_stream_s** %120, align 8
  %122 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %227

126:                                              ; preds = %100
  br label %127

127:                                              ; preds = %126, %25
  br label %8

128:                                              ; preds = %23
  %129 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %130 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %129, i32 0, i32 55
  store i32 0, i32* %130, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp eq i32 %131, 4
  br i1 %132, label %133, label %177

133:                                              ; preds = %128
  %134 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %135 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %136 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %135, i32 0, i32 23
  %137 = load i64, i64* %136, align 8
  %138 = icmp sge i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %133
  %140 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %141 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %140, i32 0, i32 14
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %144 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %143, i32 0, i32 23
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %142, i64 %147
  br label %150

149:                                              ; preds = %133
  br label %150

150:                                              ; preds = %149, %139
  %151 = phi i8* [ %148, %139 ], [ null, %149 ]
  %152 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %153 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %152, i32 0, i32 27
  %154 = load i32, i32* %153, align 4
  %155 = zext i32 %154 to i64
  %156 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %157 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %156, i32 0, i32 23
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %155, %158
  call void @_tr_flush_block(%struct.internal_state* noundef %134, i8* noundef %151, i64 noundef %159, i32 noundef 1)
  %160 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %161 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %160, i32 0, i32 27
  %162 = load i32, i32* %161, align 4
  %163 = zext i32 %162 to i64
  %164 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %165 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %164, i32 0, i32 23
  store i64 %163, i64* %165, align 8
  %166 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %167 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %166, i32 0, i32 0
  %168 = load %struct.z_stream_s*, %struct.z_stream_s** %167, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %168)
  %169 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %170 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %169, i32 0, i32 0
  %171 = load %struct.z_stream_s*, %struct.z_stream_s** %170, align 8
  %172 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %150
  store i32 2, i32* %3, align 4
  br label %227

176:                                              ; preds = %150
  store i32 3, i32* %3, align 4
  br label %227

177:                                              ; preds = %128
  %178 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %179 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %178, i32 0, i32 50
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %226

182:                                              ; preds = %177
  %183 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %184 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %185 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %184, i32 0, i32 23
  %186 = load i64, i64* %185, align 8
  %187 = icmp sge i64 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %182
  %189 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %190 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %189, i32 0, i32 14
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %193 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %192, i32 0, i32 23
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %191, i64 %196
  br label %199

198:                                              ; preds = %182
  br label %199

199:                                              ; preds = %198, %188
  %200 = phi i8* [ %197, %188 ], [ null, %198 ]
  %201 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %202 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %201, i32 0, i32 27
  %203 = load i32, i32* %202, align 4
  %204 = zext i32 %203 to i64
  %205 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %206 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %205, i32 0, i32 23
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %204, %207
  call void @_tr_flush_block(%struct.internal_state* noundef %183, i8* noundef %200, i64 noundef %208, i32 noundef 0)
  %209 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %210 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %209, i32 0, i32 27
  %211 = load i32, i32* %210, align 4
  %212 = zext i32 %211 to i64
  %213 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %214 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %213, i32 0, i32 23
  store i64 %212, i64* %214, align 8
  %215 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %216 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %215, i32 0, i32 0
  %217 = load %struct.z_stream_s*, %struct.z_stream_s** %216, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %217)
  %218 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %219 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %218, i32 0, i32 0
  %220 = load %struct.z_stream_s*, %struct.z_stream_s** %219, align 8
  %221 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %199
  store i32 0, i32* %3, align 4
  br label %227

225:                                              ; preds = %199
  br label %226

226:                                              ; preds = %225, %177
  store i32 1, i32* %3, align 4
  br label %227

227:                                              ; preds = %226, %224, %176, %175, %125, %22
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @deflate_rle(%struct.internal_state* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.internal_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  store %struct.internal_state* %0, %struct.internal_state** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %13

13:                                               ; preds = %379, %2
  %14 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %15 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %14, i32 0, i32 29
  %16 = load i32, i32* %15, align 4
  %17 = icmp ule i32 %16, 258
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  call void @fill_window(%struct.internal_state* noundef %19)
  %20 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %21 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %20, i32 0, i32 29
  %22 = load i32, i32* %21, align 4
  %23 = icmp ule i32 %22, 258
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %479

28:                                               ; preds = %24, %18
  %29 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %30 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %29, i32 0, i32 29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %380

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %13
  %36 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %37 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %36, i32 0, i32 24
  store i32 0, i32* %37, align 8
  %38 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %39 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %38, i32 0, i32 29
  %40 = load i32, i32* %39, align 4
  %41 = icmp uge i32 %40, 3
  br i1 %41, label %42, label %178

42:                                               ; preds = %35
  %43 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %44 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %43, i32 0, i32 27
  %45 = load i32, i32* %44, align 4
  %46 = icmp ugt i32 %45, 0
  br i1 %46, label %47, label %178

47:                                               ; preds = %42
  %48 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %49 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %48, i32 0, i32 14
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %52 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %51, i32 0, i32 27
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 -1
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %60, %64
  br i1 %65, label %66, label %177

66:                                               ; preds = %47
  %67 = load i32, i32* %7, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %67, %71
  br i1 %72, label %73, label %177

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %74, %78
  br i1 %79, label %80, label %177

80:                                               ; preds = %73
  %81 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %82 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %81, i32 0, i32 14
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %85 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %84, i32 0, i32 27
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  %89 = getelementptr inbounds i8, i8* %88, i64 258
  store i8* %89, i8** %9, align 8
  br label %90

90:                                               ; preds = %151, %80
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %8, align 8
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %92, %96
  br i1 %97, label %98, label %151

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %99, %103
  br i1 %104, label %105, label %151

105:                                              ; preds = %98
  %106 = load i32, i32* %7, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %106, %110
  br i1 %111, label %112, label %151

112:                                              ; preds = %105
  %113 = load i32, i32* %7, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %8, align 8
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %113, %117
  br i1 %118, label %119, label %151

119:                                              ; preds = %112
  %120 = load i32, i32* %7, align 4
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %8, align 8
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %120, %124
  br i1 %125, label %126, label %151

126:                                              ; preds = %119
  %127 = load i32, i32* %7, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %127, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %126
  %134 = load i32, i32* %7, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %8, align 8
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %134, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load i32, i32* %7, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %8, align 8
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %141, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i8*, i8** %8, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = icmp ult i8* %148, %149
  br label %151

151:                                              ; preds = %147, %140, %133, %126, %119, %112, %105, %98, %91
  %152 = phi i1 [ false, %140 ], [ false, %133 ], [ false, %126 ], [ false, %119 ], [ false, %112 ], [ false, %105 ], [ false, %98 ], [ false, %91 ], [ %150, %147 ]
  br i1 %152, label %90, label %153, !llvm.loop !20

153:                                              ; preds = %151
  %154 = load i8*, i8** %9, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = ptrtoint i8* %154 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = trunc i64 %158 to i32
  %160 = sub nsw i32 258, %159
  %161 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %162 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %161, i32 0, i32 24
  store i32 %160, i32* %162, align 8
  %163 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %164 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %163, i32 0, i32 24
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %167 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %166, i32 0, i32 29
  %168 = load i32, i32* %167, align 4
  %169 = icmp ugt i32 %165, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %153
  %171 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %172 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %171, i32 0, i32 29
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %175 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %174, i32 0, i32 24
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %170, %153
  br label %177

177:                                              ; preds = %176, %73, %66, %47
  br label %178

178:                                              ; preds = %177, %42, %35
  %179 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %180 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %179, i32 0, i32 24
  %181 = load i32, i32* %180, align 8
  %182 = icmp uge i32 %181, 3
  br i1 %182, label %183, label %278

183:                                              ; preds = %178
  %184 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %185 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %184, i32 0, i32 24
  %186 = load i32, i32* %185, align 8
  %187 = sub i32 %186, 3
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %10, align 1
  store i16 1, i16* %11, align 2
  %189 = load i16, i16* %11, align 2
  %190 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %191 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %190, i32 0, i32 51
  %192 = load i16*, i16** %191, align 8
  %193 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %194 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %193, i32 0, i32 50
  %195 = load i32, i32* %194, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i16, i16* %192, i64 %196
  store i16 %189, i16* %197, align 2
  %198 = load i8, i8* %10, align 1
  %199 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %200 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %199, i32 0, i32 48
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %203 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %202, i32 0, i32 50
  %204 = load i32, i32* %203, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %203, align 4
  %206 = zext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %201, i64 %206
  store i8 %198, i8* %207, align 1
  %208 = load i16, i16* %11, align 2
  %209 = add i16 %208, -1
  store i16 %209, i16* %11, align 2
  %210 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %211 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %210, i32 0, i32 37
  %212 = load i8, i8* %10, align 1
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds [0 x i8], [0 x i8]* @_length_code, i64 0, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = add nsw i32 %216, 256
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %211, i64 0, i64 %219
  %221 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %220, i32 0, i32 0
  %222 = bitcast %union.anon* %221 to i16*
  %223 = load i16, i16* %222, align 4
  %224 = add i16 %223, 1
  store i16 %224, i16* %222, align 4
  %225 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %226 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %225, i32 0, i32 38
  %227 = load i16, i16* %11, align 2
  %228 = zext i16 %227 to i32
  %229 = icmp slt i32 %228, 256
  br i1 %229, label %230, label %236

230:                                              ; preds = %183
  %231 = load i16, i16* %11, align 2
  %232 = zext i16 %231 to i64
  %233 = getelementptr inbounds [0 x i8], [0 x i8]* @_dist_code, i64 0, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  br label %245

236:                                              ; preds = %183
  %237 = load i16, i16* %11, align 2
  %238 = zext i16 %237 to i32
  %239 = ashr i32 %238, 7
  %240 = add nsw i32 256, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [0 x i8], [0 x i8]* @_dist_code, i64 0, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  br label %245

245:                                              ; preds = %236, %230
  %246 = phi i32 [ %235, %230 ], [ %244, %236 ]
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [61 x %struct.ct_data_s], [61 x %struct.ct_data_s]* %226, i64 0, i64 %247
  %249 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %248, i32 0, i32 0
  %250 = bitcast %union.anon* %249 to i16*
  %251 = load i16, i16* %250, align 4
  %252 = add i16 %251, 1
  store i16 %252, i16* %250, align 4
  %253 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %254 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %253, i32 0, i32 50
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %257 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %256, i32 0, i32 49
  %258 = load i32, i32* %257, align 8
  %259 = sub i32 %258, 1
  %260 = icmp eq i32 %255, %259
  %261 = zext i1 %260 to i32
  store i32 %261, i32* %6, align 4
  %262 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %263 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %262, i32 0, i32 24
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %266 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %265, i32 0, i32 29
  %267 = load i32, i32* %266, align 4
  %268 = sub i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %270 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %269, i32 0, i32 24
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %273 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %272, i32 0, i32 27
  %274 = load i32, i32* %273, align 4
  %275 = add i32 %274, %271
  store i32 %275, i32* %273, align 4
  %276 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %277 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %276, i32 0, i32 24
  store i32 0, i32* %277, align 8
  br label %332

278:                                              ; preds = %178
  %279 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %280 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %279, i32 0, i32 14
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %283 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %282, i32 0, i32 27
  %284 = load i32, i32* %283, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %281, i64 %285
  %287 = load i8, i8* %286, align 1
  store i8 %287, i8* %12, align 1
  %288 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %289 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %288, i32 0, i32 51
  %290 = load i16*, i16** %289, align 8
  %291 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %292 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %291, i32 0, i32 50
  %293 = load i32, i32* %292, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds i16, i16* %290, i64 %294
  store i16 0, i16* %295, align 2
  %296 = load i8, i8* %12, align 1
  %297 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %298 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %297, i32 0, i32 48
  %299 = load i8*, i8** %298, align 8
  %300 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %301 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %300, i32 0, i32 50
  %302 = load i32, i32* %301, align 4
  %303 = add i32 %302, 1
  store i32 %303, i32* %301, align 4
  %304 = zext i32 %302 to i64
  %305 = getelementptr inbounds i8, i8* %299, i64 %304
  store i8 %296, i8* %305, align 1
  %306 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %307 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %306, i32 0, i32 37
  %308 = load i8, i8* %12, align 1
  %309 = zext i8 %308 to i64
  %310 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %307, i64 0, i64 %309
  %311 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %310, i32 0, i32 0
  %312 = bitcast %union.anon* %311 to i16*
  %313 = load i16, i16* %312, align 4
  %314 = add i16 %313, 1
  store i16 %314, i16* %312, align 4
  %315 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %316 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %315, i32 0, i32 50
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %319 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %318, i32 0, i32 49
  %320 = load i32, i32* %319, align 8
  %321 = sub i32 %320, 1
  %322 = icmp eq i32 %317, %321
  %323 = zext i1 %322 to i32
  store i32 %323, i32* %6, align 4
  %324 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %325 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %324, i32 0, i32 29
  %326 = load i32, i32* %325, align 4
  %327 = add i32 %326, -1
  store i32 %327, i32* %325, align 4
  %328 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %329 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %328, i32 0, i32 27
  %330 = load i32, i32* %329, align 4
  %331 = add i32 %330, 1
  store i32 %331, i32* %329, align 4
  br label %332

332:                                              ; preds = %278, %245
  %333 = load i32, i32* %6, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %379

335:                                              ; preds = %332
  %336 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %337 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %338 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %337, i32 0, i32 23
  %339 = load i64, i64* %338, align 8
  %340 = icmp sge i64 %339, 0
  br i1 %340, label %341, label %351

341:                                              ; preds = %335
  %342 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %343 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %342, i32 0, i32 14
  %344 = load i8*, i8** %343, align 8
  %345 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %346 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %345, i32 0, i32 23
  %347 = load i64, i64* %346, align 8
  %348 = trunc i64 %347 to i32
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i8, i8* %344, i64 %349
  br label %352

351:                                              ; preds = %335
  br label %352

352:                                              ; preds = %351, %341
  %353 = phi i8* [ %350, %341 ], [ null, %351 ]
  %354 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %355 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %354, i32 0, i32 27
  %356 = load i32, i32* %355, align 4
  %357 = zext i32 %356 to i64
  %358 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %359 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %358, i32 0, i32 23
  %360 = load i64, i64* %359, align 8
  %361 = sub nsw i64 %357, %360
  call void @_tr_flush_block(%struct.internal_state* noundef %336, i8* noundef %353, i64 noundef %361, i32 noundef 0)
  %362 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %363 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %362, i32 0, i32 27
  %364 = load i32, i32* %363, align 4
  %365 = zext i32 %364 to i64
  %366 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %367 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %366, i32 0, i32 23
  store i64 %365, i64* %367, align 8
  %368 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %369 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %368, i32 0, i32 0
  %370 = load %struct.z_stream_s*, %struct.z_stream_s** %369, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %370)
  %371 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %372 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %371, i32 0, i32 0
  %373 = load %struct.z_stream_s*, %struct.z_stream_s** %372, align 8
  %374 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 8
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %352
  store i32 0, i32* %3, align 4
  br label %479

378:                                              ; preds = %352
  br label %379

379:                                              ; preds = %378, %332
  br label %13

380:                                              ; preds = %33
  %381 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %382 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %381, i32 0, i32 55
  store i32 0, i32* %382, align 4
  %383 = load i32, i32* %5, align 4
  %384 = icmp eq i32 %383, 4
  br i1 %384, label %385, label %429

385:                                              ; preds = %380
  %386 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %387 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %388 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %387, i32 0, i32 23
  %389 = load i64, i64* %388, align 8
  %390 = icmp sge i64 %389, 0
  br i1 %390, label %391, label %401

391:                                              ; preds = %385
  %392 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %393 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %392, i32 0, i32 14
  %394 = load i8*, i8** %393, align 8
  %395 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %396 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %395, i32 0, i32 23
  %397 = load i64, i64* %396, align 8
  %398 = trunc i64 %397 to i32
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %394, i64 %399
  br label %402

401:                                              ; preds = %385
  br label %402

402:                                              ; preds = %401, %391
  %403 = phi i8* [ %400, %391 ], [ null, %401 ]
  %404 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %405 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %404, i32 0, i32 27
  %406 = load i32, i32* %405, align 4
  %407 = zext i32 %406 to i64
  %408 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %409 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %408, i32 0, i32 23
  %410 = load i64, i64* %409, align 8
  %411 = sub nsw i64 %407, %410
  call void @_tr_flush_block(%struct.internal_state* noundef %386, i8* noundef %403, i64 noundef %411, i32 noundef 1)
  %412 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %413 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %412, i32 0, i32 27
  %414 = load i32, i32* %413, align 4
  %415 = zext i32 %414 to i64
  %416 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %417 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %416, i32 0, i32 23
  store i64 %415, i64* %417, align 8
  %418 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %419 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %418, i32 0, i32 0
  %420 = load %struct.z_stream_s*, %struct.z_stream_s** %419, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %420)
  %421 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %422 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %421, i32 0, i32 0
  %423 = load %struct.z_stream_s*, %struct.z_stream_s** %422, align 8
  %424 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 8
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %402
  store i32 2, i32* %3, align 4
  br label %479

428:                                              ; preds = %402
  store i32 3, i32* %3, align 4
  br label %479

429:                                              ; preds = %380
  %430 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %431 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %430, i32 0, i32 50
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %478

434:                                              ; preds = %429
  %435 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %436 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %437 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %436, i32 0, i32 23
  %438 = load i64, i64* %437, align 8
  %439 = icmp sge i64 %438, 0
  br i1 %439, label %440, label %450

440:                                              ; preds = %434
  %441 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %442 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %441, i32 0, i32 14
  %443 = load i8*, i8** %442, align 8
  %444 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %445 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %444, i32 0, i32 23
  %446 = load i64, i64* %445, align 8
  %447 = trunc i64 %446 to i32
  %448 = zext i32 %447 to i64
  %449 = getelementptr inbounds i8, i8* %443, i64 %448
  br label %451

450:                                              ; preds = %434
  br label %451

451:                                              ; preds = %450, %440
  %452 = phi i8* [ %449, %440 ], [ null, %450 ]
  %453 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %454 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %453, i32 0, i32 27
  %455 = load i32, i32* %454, align 4
  %456 = zext i32 %455 to i64
  %457 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %458 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %457, i32 0, i32 23
  %459 = load i64, i64* %458, align 8
  %460 = sub nsw i64 %456, %459
  call void @_tr_flush_block(%struct.internal_state* noundef %435, i8* noundef %452, i64 noundef %460, i32 noundef 0)
  %461 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %462 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %461, i32 0, i32 27
  %463 = load i32, i32* %462, align 4
  %464 = zext i32 %463 to i64
  %465 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %466 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %465, i32 0, i32 23
  store i64 %464, i64* %466, align 8
  %467 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %468 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %467, i32 0, i32 0
  %469 = load %struct.z_stream_s*, %struct.z_stream_s** %468, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %469)
  %470 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %471 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %470, i32 0, i32 0
  %472 = load %struct.z_stream_s*, %struct.z_stream_s** %471, align 8
  %473 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %472, i32 0, i32 4
  %474 = load i32, i32* %473, align 8
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %477

476:                                              ; preds = %451
  store i32 0, i32* %3, align 4
  br label %479

477:                                              ; preds = %451
  br label %478

478:                                              ; preds = %477, %429
  store i32 1, i32* %3, align 4
  br label %479

479:                                              ; preds = %478, %476, %428, %427, %377, %27
  %480 = load i32, i32* %3, align 4
  ret i32 %480
}

declare hidden void @_tr_align(%struct.internal_state* noundef) #1

declare hidden void @_tr_stored_block(%struct.internal_state* noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateCopy(%struct.z_stream_s* noundef %0, %struct.z_stream_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca %struct.internal_state*, align 8
  %7 = alloca %struct.internal_state*, align 8
  %8 = alloca i16*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  store %struct.z_stream_s* %1, %struct.z_stream_s** %5, align 8
  %9 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %10 = icmp eq %struct.z_stream_s* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %13 = icmp eq %struct.z_stream_s* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 7
  %17 = load %struct.internal_state*, %struct.internal_state** %16, align 8
  %18 = icmp eq %struct.internal_state* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %11, %2
  store i32 -2, i32* %3, align 4
  br label %258

20:                                               ; preds = %14
  %21 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %21, i32 0, i32 7
  %23 = load %struct.internal_state*, %struct.internal_state** %22, align 8
  store %struct.internal_state* %23, %struct.internal_state** %7, align 8
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %25 = bitcast %struct.z_stream_s* %24 to i8*
  %26 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %27 = bitcast %struct.z_stream_s* %26 to i8*
  %28 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %29 = bitcast %struct.z_stream_s* %28 to i8*
  %30 = call i64 @llvm.objectsize.i64.p0i8(i8* %29, i1 false, i1 true, i1 false)
  %31 = call i8* @__memcpy_chk(i8* noundef %25, i8* noundef %27, i64 noundef 112, i64 noundef %30) #4
  %32 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %32, i32 0, i32 8
  %34 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %33, align 8
  %35 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %35, i32 0, i32 10
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* %34(i8* noundef %37, i32 noundef 1, i32 noundef 5936)
  %39 = bitcast i8* %38 to %struct.internal_state*
  store %struct.internal_state* %39, %struct.internal_state** %6, align 8
  %40 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %41 = icmp eq %struct.internal_state* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  store i32 -4, i32* %3, align 4
  br label %258

43:                                               ; preds = %20
  %44 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %45 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %46 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %45, i32 0, i32 7
  store %struct.internal_state* %44, %struct.internal_state** %46, align 8
  %47 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %48 = bitcast %struct.internal_state* %47 to i8*
  %49 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %50 = bitcast %struct.internal_state* %49 to i8*
  %51 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %52 = bitcast %struct.internal_state* %51 to i8*
  %53 = call i64 @llvm.objectsize.i64.p0i8(i8* %52, i1 false, i1 true, i1 false)
  %54 = call i8* @__memcpy_chk(i8* noundef %48, i8* noundef %50, i64 noundef 5936, i64 noundef %53) #4
  %55 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %56 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %57 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %56, i32 0, i32 0
  store %struct.z_stream_s* %55, %struct.z_stream_s** %57, align 8
  %58 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %59 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %58, i32 0, i32 8
  %60 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %59, align 8
  %61 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %62 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %61, i32 0, i32 10
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %65 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 4
  %67 = call i8* %60(i8* noundef %63, i32 noundef %66, i32 noundef 2)
  %68 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %69 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %68, i32 0, i32 14
  store i8* %67, i8** %69, align 8
  %70 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %71 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %70, i32 0, i32 8
  %72 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %71, align 8
  %73 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %74 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %73, i32 0, i32 10
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %77 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 4
  %79 = call i8* %72(i8* noundef %75, i32 noundef %78, i32 noundef 2)
  %80 = bitcast i8* %79 to i16*
  %81 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %82 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %81, i32 0, i32 16
  store i16* %80, i16** %82, align 8
  %83 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %84 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %83, i32 0, i32 8
  %85 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %84, align 8
  %86 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %87 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %86, i32 0, i32 10
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %90 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %89, i32 0, i32 19
  %91 = load i32, i32* %90, align 4
  %92 = call i8* %85(i8* noundef %88, i32 noundef %91, i32 noundef 2)
  %93 = bitcast i8* %92 to i16*
  %94 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %95 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %94, i32 0, i32 17
  store i16* %93, i16** %95, align 8
  %96 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %97 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %96, i32 0, i32 8
  %98 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %97, align 8
  %99 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %100 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %99, i32 0, i32 10
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %103 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %102, i32 0, i32 49
  %104 = load i32, i32* %103, align 8
  %105 = call i8* %98(i8* noundef %101, i32 noundef %104, i32 noundef 4)
  %106 = bitcast i8* %105 to i16*
  store i16* %106, i16** %8, align 8
  %107 = load i16*, i16** %8, align 8
  %108 = bitcast i16* %107 to i8*
  %109 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %110 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %112 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %111, i32 0, i32 14
  %113 = load i8*, i8** %112, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %130, label %115

115:                                              ; preds = %43
  %116 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %117 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %116, i32 0, i32 16
  %118 = load i16*, i16** %117, align 8
  %119 = icmp eq i16* %118, null
  br i1 %119, label %130, label %120

120:                                              ; preds = %115
  %121 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %122 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %121, i32 0, i32 17
  %123 = load i16*, i16** %122, align 8
  %124 = icmp eq i16* %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %127 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %120, %115, %43
  %131 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %132 = call i32 @deflateEnd(%struct.z_stream_s* noundef %131)
  store i32 -4, i32* %3, align 4
  br label %258

133:                                              ; preds = %125
  %134 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %135 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %134, i32 0, i32 14
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %138 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %137, i32 0, i32 14
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %141 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %140, i32 0, i32 11
  %142 = load i32, i32* %141, align 4
  %143 = mul i32 %142, 2
  %144 = zext i32 %143 to i64
  %145 = mul i64 %144, 1
  %146 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %147 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %146, i32 0, i32 14
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @llvm.objectsize.i64.p0i8(i8* %148, i1 false, i1 true, i1 false)
  %150 = call i8* @__memcpy_chk(i8* noundef %136, i8* noundef %139, i64 noundef %145, i64 noundef %149) #4
  %151 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %152 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %151, i32 0, i32 16
  %153 = load i16*, i16** %152, align 8
  %154 = bitcast i16* %153 to i8*
  %155 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %156 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %155, i32 0, i32 16
  %157 = load i16*, i16** %156, align 8
  %158 = bitcast i16* %157 to i8*
  %159 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %160 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %159, i32 0, i32 11
  %161 = load i32, i32* %160, align 4
  %162 = zext i32 %161 to i64
  %163 = mul i64 %162, 2
  %164 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %165 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %164, i32 0, i32 16
  %166 = load i16*, i16** %165, align 8
  %167 = bitcast i16* %166 to i8*
  %168 = call i64 @llvm.objectsize.i64.p0i8(i8* %167, i1 false, i1 true, i1 false)
  %169 = call i8* @__memcpy_chk(i8* noundef %154, i8* noundef %158, i64 noundef %163, i64 noundef %168) #4
  %170 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %171 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %170, i32 0, i32 17
  %172 = load i16*, i16** %171, align 8
  %173 = bitcast i16* %172 to i8*
  %174 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %175 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %174, i32 0, i32 17
  %176 = load i16*, i16** %175, align 8
  %177 = bitcast i16* %176 to i8*
  %178 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %179 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %178, i32 0, i32 19
  %180 = load i32, i32* %179, align 4
  %181 = zext i32 %180 to i64
  %182 = mul i64 %181, 2
  %183 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %184 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %183, i32 0, i32 17
  %185 = load i16*, i16** %184, align 8
  %186 = bitcast i16* %185 to i8*
  %187 = call i64 @llvm.objectsize.i64.p0i8(i8* %186, i1 false, i1 true, i1 false)
  %188 = call i8* @__memcpy_chk(i8* noundef %173, i8* noundef %177, i64 noundef %182, i64 noundef %187) #4
  %189 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %190 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %189, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %193 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %196 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  %199 = zext i32 %198 to i64
  %200 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %201 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 @llvm.objectsize.i64.p0i8(i8* %202, i1 false, i1 true, i1 false)
  %204 = call i8* @__memcpy_chk(i8* noundef %191, i8* noundef %194, i64 noundef %199, i64 noundef %203) #4
  %205 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %206 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %209 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %208, i32 0, i32 4
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.internal_state*, %struct.internal_state** %7, align 8
  %212 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = ptrtoint i8* %210 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  %217 = getelementptr inbounds i8, i8* %207, i64 %216
  %218 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %219 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %218, i32 0, i32 4
  store i8* %217, i8** %219, align 8
  %220 = load i16*, i16** %8, align 8
  %221 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %222 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %221, i32 0, i32 49
  %223 = load i32, i32* %222, align 8
  %224 = zext i32 %223 to i64
  %225 = udiv i64 %224, 2
  %226 = getelementptr inbounds i16, i16* %220, i64 %225
  %227 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %228 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %227, i32 0, i32 51
  store i16* %226, i16** %228, align 8
  %229 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %230 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %229, i32 0, i32 2
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %233 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %232, i32 0, i32 49
  %234 = load i32, i32* %233, align 8
  %235 = zext i32 %234 to i64
  %236 = mul i64 3, %235
  %237 = getelementptr inbounds i8, i8* %231, i64 %236
  %238 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %239 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %238, i32 0, i32 48
  store i8* %237, i8** %239, align 8
  %240 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %241 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %240, i32 0, i32 37
  %242 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %241, i64 0, i64 0
  %243 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %244 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %243, i32 0, i32 40
  %245 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %244, i32 0, i32 0
  store %struct.ct_data_s* %242, %struct.ct_data_s** %245, align 8
  %246 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %247 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %246, i32 0, i32 38
  %248 = getelementptr inbounds [61 x %struct.ct_data_s], [61 x %struct.ct_data_s]* %247, i64 0, i64 0
  %249 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %250 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %249, i32 0, i32 41
  %251 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %250, i32 0, i32 0
  store %struct.ct_data_s* %248, %struct.ct_data_s** %251, align 8
  %252 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %253 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %252, i32 0, i32 39
  %254 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %253, i64 0, i64 0
  %255 = load %struct.internal_state*, %struct.internal_state** %6, align 8
  %256 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %255, i32 0, i32 42
  %257 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %256, i32 0, i32 0
  store %struct.ct_data_s* %254, %struct.ct_data_s** %257, align 8
  store i32 0, i32* %3, align 4
  br label %258

258:                                              ; preds = %133, %130, %42, %19
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @deflate_stored(%struct.internal_state* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.internal_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.internal_state* %0, %struct.internal_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 65535, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %10 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %11, 5
  %13 = icmp ugt i64 %8, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %16 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %17, 5
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %14, %2
  br label %20

20:                                               ; preds = %183, %19
  %21 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %22 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %21, i32 0, i32 29
  %23 = load i32, i32* %22, align 4
  %24 = icmp ule i32 %23, 1
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  call void @fill_window(%struct.internal_state* noundef %26)
  %27 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %28 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %27, i32 0, i32 29
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %287

35:                                               ; preds = %31, %25
  %36 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %37 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %36, i32 0, i32 29
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %184

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %20
  %43 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %44 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %43, i32 0, i32 29
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %47 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %46, i32 0, i32 27
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %51 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %50, i32 0, i32 29
  store i32 0, i32* %51, align 4
  %52 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %53 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %52, i32 0, i32 23
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %54, %55
  store i64 %56, i64* %7, align 8
  %57 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %58 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %57, i32 0, i32 27
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %42
  %62 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %63 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %62, i32 0, i32 27
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* %7, align 8
  %67 = icmp uge i64 %65, %66
  br i1 %67, label %68, label %125

68:                                               ; preds = %61, %42
  %69 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %70 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %69, i32 0, i32 27
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %7, align 8
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %77 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %76, i32 0, i32 29
  store i32 %75, i32* %77, align 4
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %81 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %80, i32 0, i32 27
  store i32 %79, i32* %81, align 4
  %82 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %83 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %84 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %83, i32 0, i32 23
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %68
  %88 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %89 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %88, i32 0, i32 14
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %92 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %91, i32 0, i32 23
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %90, i64 %95
  br label %98

97:                                               ; preds = %68
  br label %98

98:                                               ; preds = %97, %87
  %99 = phi i8* [ %96, %87 ], [ null, %97 ]
  %100 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %101 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %100, i32 0, i32 27
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  %104 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %105 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %104, i32 0, i32 23
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  call void @_tr_flush_block(%struct.internal_state* noundef %82, i8* noundef %99, i64 noundef %107, i32 noundef 0)
  %108 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %109 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %108, i32 0, i32 27
  %110 = load i32, i32* %109, align 4
  %111 = zext i32 %110 to i64
  %112 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %113 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %112, i32 0, i32 23
  store i64 %111, i64* %113, align 8
  %114 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %115 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %114, i32 0, i32 0
  %116 = load %struct.z_stream_s*, %struct.z_stream_s** %115, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %116)
  %117 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %118 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %117, i32 0, i32 0
  %119 = load %struct.z_stream_s*, %struct.z_stream_s** %118, align 8
  %120 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %287

124:                                              ; preds = %98
  br label %125

125:                                              ; preds = %124, %61
  %126 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %127 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %126, i32 0, i32 27
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %130 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %129, i32 0, i32 23
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = sub i32 %128, %132
  %134 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %135 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 4
  %137 = sub i32 %136, 262
  %138 = icmp uge i32 %133, %137
  br i1 %138, label %139, label %183

139:                                              ; preds = %125
  %140 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %141 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %142 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %141, i32 0, i32 23
  %143 = load i64, i64* %142, align 8
  %144 = icmp sge i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %139
  %146 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %147 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %146, i32 0, i32 14
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %150 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %149, i32 0, i32 23
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %148, i64 %153
  br label %156

155:                                              ; preds = %139
  br label %156

156:                                              ; preds = %155, %145
  %157 = phi i8* [ %154, %145 ], [ null, %155 ]
  %158 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %159 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %158, i32 0, i32 27
  %160 = load i32, i32* %159, align 4
  %161 = zext i32 %160 to i64
  %162 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %163 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %162, i32 0, i32 23
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %161, %164
  call void @_tr_flush_block(%struct.internal_state* noundef %140, i8* noundef %157, i64 noundef %165, i32 noundef 0)
  %166 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %167 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %166, i32 0, i32 27
  %168 = load i32, i32* %167, align 4
  %169 = zext i32 %168 to i64
  %170 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %171 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %170, i32 0, i32 23
  store i64 %169, i64* %171, align 8
  %172 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %173 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %172, i32 0, i32 0
  %174 = load %struct.z_stream_s*, %struct.z_stream_s** %173, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %174)
  %175 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %176 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %175, i32 0, i32 0
  %177 = load %struct.z_stream_s*, %struct.z_stream_s** %176, align 8
  %178 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %287

182:                                              ; preds = %156
  br label %183

183:                                              ; preds = %182, %125
  br label %20

184:                                              ; preds = %40
  %185 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %186 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %185, i32 0, i32 55
  store i32 0, i32* %186, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp eq i32 %187, 4
  br i1 %188, label %189, label %233

189:                                              ; preds = %184
  %190 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %191 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %192 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %191, i32 0, i32 23
  %193 = load i64, i64* %192, align 8
  %194 = icmp sge i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %189
  %196 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %197 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %196, i32 0, i32 14
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %200 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %199, i32 0, i32 23
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %198, i64 %203
  br label %206

205:                                              ; preds = %189
  br label %206

206:                                              ; preds = %205, %195
  %207 = phi i8* [ %204, %195 ], [ null, %205 ]
  %208 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %209 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %208, i32 0, i32 27
  %210 = load i32, i32* %209, align 4
  %211 = zext i32 %210 to i64
  %212 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %213 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %212, i32 0, i32 23
  %214 = load i64, i64* %213, align 8
  %215 = sub nsw i64 %211, %214
  call void @_tr_flush_block(%struct.internal_state* noundef %190, i8* noundef %207, i64 noundef %215, i32 noundef 1)
  %216 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %217 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %216, i32 0, i32 27
  %218 = load i32, i32* %217, align 4
  %219 = zext i32 %218 to i64
  %220 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %221 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %220, i32 0, i32 23
  store i64 %219, i64* %221, align 8
  %222 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %223 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %222, i32 0, i32 0
  %224 = load %struct.z_stream_s*, %struct.z_stream_s** %223, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %224)
  %225 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %226 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %225, i32 0, i32 0
  %227 = load %struct.z_stream_s*, %struct.z_stream_s** %226, align 8
  %228 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %206
  store i32 2, i32* %3, align 4
  br label %287

232:                                              ; preds = %206
  store i32 3, i32* %3, align 4
  br label %287

233:                                              ; preds = %184
  %234 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %235 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %234, i32 0, i32 27
  %236 = load i32, i32* %235, align 4
  %237 = zext i32 %236 to i64
  %238 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %239 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %238, i32 0, i32 23
  %240 = load i64, i64* %239, align 8
  %241 = icmp sgt i64 %237, %240
  br i1 %241, label %242, label %286

242:                                              ; preds = %233
  %243 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %244 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %245 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %244, i32 0, i32 23
  %246 = load i64, i64* %245, align 8
  %247 = icmp sge i64 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %242
  %249 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %250 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %249, i32 0, i32 14
  %251 = load i8*, i8** %250, align 8
  %252 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %253 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %252, i32 0, i32 23
  %254 = load i64, i64* %253, align 8
  %255 = trunc i64 %254 to i32
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %251, i64 %256
  br label %259

258:                                              ; preds = %242
  br label %259

259:                                              ; preds = %258, %248
  %260 = phi i8* [ %257, %248 ], [ null, %258 ]
  %261 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %262 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %261, i32 0, i32 27
  %263 = load i32, i32* %262, align 4
  %264 = zext i32 %263 to i64
  %265 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %266 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %265, i32 0, i32 23
  %267 = load i64, i64* %266, align 8
  %268 = sub nsw i64 %264, %267
  call void @_tr_flush_block(%struct.internal_state* noundef %243, i8* noundef %260, i64 noundef %268, i32 noundef 0)
  %269 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %270 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %269, i32 0, i32 27
  %271 = load i32, i32* %270, align 4
  %272 = zext i32 %271 to i64
  %273 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %274 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %273, i32 0, i32 23
  store i64 %272, i64* %274, align 8
  %275 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %276 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %275, i32 0, i32 0
  %277 = load %struct.z_stream_s*, %struct.z_stream_s** %276, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %277)
  %278 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %279 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %278, i32 0, i32 0
  %280 = load %struct.z_stream_s*, %struct.z_stream_s** %279, align 8
  %281 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %259
  store i32 0, i32* %3, align 4
  br label %287

285:                                              ; preds = %259
  br label %286

286:                                              ; preds = %285, %233
  store i32 1, i32* %3, align 4
  br label %287

287:                                              ; preds = %286, %284, %232, %231, %181, %123, %34
  %288 = load i32, i32* %3, align 4
  ret i32 %288
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @deflate_fast(%struct.internal_state* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.internal_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i8, align 1
  store %struct.internal_state* %0, %struct.internal_state** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %11

11:                                               ; preds = %458, %2
  %12 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %13 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %12, i32 0, i32 29
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %14, 262
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  %17 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  call void @fill_window(%struct.internal_state* noundef %17)
  %18 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %19 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %18, i32 0, i32 29
  %20 = load i32, i32* %19, align 4
  %21 = icmp ult i32 %20, 262
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %569

26:                                               ; preds = %22, %16
  %27 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %28 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %27, i32 0, i32 29
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %459

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %11
  store i32 0, i32* %6, align 4
  %34 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %35 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %34, i32 0, i32 29
  %36 = load i32, i32* %35, align 4
  %37 = icmp uge i32 %36, 3
  br i1 %37, label %38, label %98

38:                                               ; preds = %33
  %39 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %40 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %39, i32 0, i32 18
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %43 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %42, i32 0, i32 22
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %41, %44
  %46 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %47 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %46, i32 0, i32 14
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %50 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %49, i32 0, i32 27
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, 2
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %48, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = xor i32 %45, %56
  %58 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %59 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %58, i32 0, i32 21
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %57, %60
  %62 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %63 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %62, i32 0, i32 18
  store i32 %61, i32* %63, align 8
  %64 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %65 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %64, i32 0, i32 17
  %66 = load i16*, i16** %65, align 8
  %67 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %68 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %67, i32 0, i32 18
  %69 = load i32, i32* %68, align 8
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %66, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %74 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %73, i32 0, i32 16
  %75 = load i16*, i16** %74, align 8
  %76 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %77 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %76, i32 0, i32 27
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %80 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %79, i32 0, i32 13
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %78, %81
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i16, i16* %75, i64 %83
  store i16 %72, i16* %84, align 2
  %85 = zext i16 %72 to i32
  store i32 %85, i32* %6, align 4
  %86 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %87 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %86, i32 0, i32 27
  %88 = load i32, i32* %87, align 4
  %89 = trunc i32 %88 to i16
  %90 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %91 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %90, i32 0, i32 17
  %92 = load i16*, i16** %91, align 8
  %93 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %94 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %93, i32 0, i32 18
  %95 = load i32, i32* %94, align 8
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i16, i16* %92, i64 %96
  store i16 %89, i16* %97, align 2
  br label %98

98:                                               ; preds = %38, %33
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  %102 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %103 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %102, i32 0, i32 27
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sub i32 %104, %105
  %107 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %108 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %109, 262
  %111 = icmp ule i32 %106, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %101
  %113 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @longest_match(%struct.internal_state* noundef %113, i32 noundef %114)
  %116 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %117 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %116, i32 0, i32 24
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %112, %101, %98
  %119 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %120 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %119, i32 0, i32 24
  %121 = load i32, i32* %120, align 8
  %122 = icmp uge i32 %121, 3
  br i1 %122, label %123, label %357

123:                                              ; preds = %118
  %124 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %125 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %124, i32 0, i32 24
  %126 = load i32, i32* %125, align 8
  %127 = sub i32 %126, 3
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %8, align 1
  %129 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %130 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %129, i32 0, i32 27
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %133 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %132, i32 0, i32 28
  %134 = load i32, i32* %133, align 8
  %135 = sub i32 %131, %134
  %136 = trunc i32 %135 to i16
  store i16 %136, i16* %9, align 2
  %137 = load i16, i16* %9, align 2
  %138 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %139 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %138, i32 0, i32 51
  %140 = load i16*, i16** %139, align 8
  %141 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %142 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %141, i32 0, i32 50
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i16, i16* %140, i64 %144
  store i16 %137, i16* %145, align 2
  %146 = load i8, i8* %8, align 1
  %147 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %148 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %147, i32 0, i32 48
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %151 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %150, i32 0, i32 50
  %152 = load i32, i32* %151, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %149, i64 %154
  store i8 %146, i8* %155, align 1
  %156 = load i16, i16* %9, align 2
  %157 = add i16 %156, -1
  store i16 %157, i16* %9, align 2
  %158 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %159 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %158, i32 0, i32 37
  %160 = load i8, i8* %8, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds [0 x i8], [0 x i8]* @_length_code, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = add nsw i32 %164, 256
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %159, i64 0, i64 %167
  %169 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %168, i32 0, i32 0
  %170 = bitcast %union.anon* %169 to i16*
  %171 = load i16, i16* %170, align 4
  %172 = add i16 %171, 1
  store i16 %172, i16* %170, align 4
  %173 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %174 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %173, i32 0, i32 38
  %175 = load i16, i16* %9, align 2
  %176 = zext i16 %175 to i32
  %177 = icmp slt i32 %176, 256
  br i1 %177, label %178, label %184

178:                                              ; preds = %123
  %179 = load i16, i16* %9, align 2
  %180 = zext i16 %179 to i64
  %181 = getelementptr inbounds [0 x i8], [0 x i8]* @_dist_code, i64 0, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  br label %193

184:                                              ; preds = %123
  %185 = load i16, i16* %9, align 2
  %186 = zext i16 %185 to i32
  %187 = ashr i32 %186, 7
  %188 = add nsw i32 256, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [0 x i8], [0 x i8]* @_dist_code, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  br label %193

193:                                              ; preds = %184, %178
  %194 = phi i32 [ %183, %178 ], [ %192, %184 ]
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [61 x %struct.ct_data_s], [61 x %struct.ct_data_s]* %174, i64 0, i64 %195
  %197 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %196, i32 0, i32 0
  %198 = bitcast %union.anon* %197 to i16*
  %199 = load i16, i16* %198, align 4
  %200 = add i16 %199, 1
  store i16 %200, i16* %198, align 4
  %201 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %202 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %201, i32 0, i32 50
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %205 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %204, i32 0, i32 49
  %206 = load i32, i32* %205, align 8
  %207 = sub i32 %206, 1
  %208 = icmp eq i32 %203, %207
  %209 = zext i1 %208 to i32
  store i32 %209, i32* %7, align 4
  %210 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %211 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %210, i32 0, i32 24
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %214 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %213, i32 0, i32 29
  %215 = load i32, i32* %214, align 4
  %216 = sub i32 %215, %212
  store i32 %216, i32* %214, align 4
  %217 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %218 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %217, i32 0, i32 24
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %221 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %220, i32 0, i32 32
  %222 = load i32, i32* %221, align 8
  %223 = icmp ule i32 %219, %222
  br i1 %223, label %224, label %309

224:                                              ; preds = %193
  %225 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %226 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %225, i32 0, i32 29
  %227 = load i32, i32* %226, align 4
  %228 = icmp uge i32 %227, 3
  br i1 %228, label %229, label %309

229:                                              ; preds = %224
  %230 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %231 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %230, i32 0, i32 24
  %232 = load i32, i32* %231, align 8
  %233 = add i32 %232, -1
  store i32 %233, i32* %231, align 8
  br label %234

234:                                              ; preds = %298, %229
  %235 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %236 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %235, i32 0, i32 27
  %237 = load i32, i32* %236, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %236, align 4
  %239 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %240 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %239, i32 0, i32 18
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %243 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %242, i32 0, i32 22
  %244 = load i32, i32* %243, align 8
  %245 = shl i32 %241, %244
  %246 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %247 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %246, i32 0, i32 14
  %248 = load i8*, i8** %247, align 8
  %249 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %250 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %249, i32 0, i32 27
  %251 = load i32, i32* %250, align 4
  %252 = add i32 %251, 2
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %248, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = xor i32 %245, %256
  %258 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %259 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %258, i32 0, i32 21
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %257, %260
  %262 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %263 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %262, i32 0, i32 18
  store i32 %261, i32* %263, align 8
  %264 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %265 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %264, i32 0, i32 17
  %266 = load i16*, i16** %265, align 8
  %267 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %268 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %267, i32 0, i32 18
  %269 = load i32, i32* %268, align 8
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i16, i16* %266, i64 %270
  %272 = load i16, i16* %271, align 2
  %273 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %274 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %273, i32 0, i32 16
  %275 = load i16*, i16** %274, align 8
  %276 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %277 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %276, i32 0, i32 27
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %280 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %279, i32 0, i32 13
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %278, %281
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds i16, i16* %275, i64 %283
  store i16 %272, i16* %284, align 2
  %285 = zext i16 %272 to i32
  store i32 %285, i32* %6, align 4
  %286 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %287 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %286, i32 0, i32 27
  %288 = load i32, i32* %287, align 4
  %289 = trunc i32 %288 to i16
  %290 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %291 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %290, i32 0, i32 17
  %292 = load i16*, i16** %291, align 8
  %293 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %294 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %293, i32 0, i32 18
  %295 = load i32, i32* %294, align 8
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i16, i16* %292, i64 %296
  store i16 %289, i16* %297, align 2
  br label %298

298:                                              ; preds = %234
  %299 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %300 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %299, i32 0, i32 24
  %301 = load i32, i32* %300, align 8
  %302 = add i32 %301, -1
  store i32 %302, i32* %300, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %234, label %304, !llvm.loop !21

304:                                              ; preds = %298
  %305 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %306 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %305, i32 0, i32 27
  %307 = load i32, i32* %306, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %306, align 4
  br label %356

309:                                              ; preds = %224, %193
  %310 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %311 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %310, i32 0, i32 24
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %314 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %313, i32 0, i32 27
  %315 = load i32, i32* %314, align 4
  %316 = add i32 %315, %312
  store i32 %316, i32* %314, align 4
  %317 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %318 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %317, i32 0, i32 24
  store i32 0, i32* %318, align 8
  %319 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %320 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %319, i32 0, i32 14
  %321 = load i8*, i8** %320, align 8
  %322 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %323 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %322, i32 0, i32 27
  %324 = load i32, i32* %323, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %321, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = zext i8 %327 to i32
  %329 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %330 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %329, i32 0, i32 18
  store i32 %328, i32* %330, align 8
  %331 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %332 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %331, i32 0, i32 18
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %335 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %334, i32 0, i32 22
  %336 = load i32, i32* %335, align 8
  %337 = shl i32 %333, %336
  %338 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %339 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %338, i32 0, i32 14
  %340 = load i8*, i8** %339, align 8
  %341 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %342 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %341, i32 0, i32 27
  %343 = load i32, i32* %342, align 4
  %344 = add i32 %343, 1
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %340, i64 %345
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i32
  %349 = xor i32 %337, %348
  %350 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %351 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %350, i32 0, i32 21
  %352 = load i32, i32* %351, align 4
  %353 = and i32 %349, %352
  %354 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %355 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %354, i32 0, i32 18
  store i32 %353, i32* %355, align 8
  br label %356

356:                                              ; preds = %309, %304
  br label %411

357:                                              ; preds = %118
  %358 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %359 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %358, i32 0, i32 14
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %362 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %361, i32 0, i32 27
  %363 = load i32, i32* %362, align 4
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %360, i64 %364
  %366 = load i8, i8* %365, align 1
  store i8 %366, i8* %10, align 1
  %367 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %368 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %367, i32 0, i32 51
  %369 = load i16*, i16** %368, align 8
  %370 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %371 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %370, i32 0, i32 50
  %372 = load i32, i32* %371, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds i16, i16* %369, i64 %373
  store i16 0, i16* %374, align 2
  %375 = load i8, i8* %10, align 1
  %376 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %377 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %376, i32 0, i32 48
  %378 = load i8*, i8** %377, align 8
  %379 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %380 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %379, i32 0, i32 50
  %381 = load i32, i32* %380, align 4
  %382 = add i32 %381, 1
  store i32 %382, i32* %380, align 4
  %383 = zext i32 %381 to i64
  %384 = getelementptr inbounds i8, i8* %378, i64 %383
  store i8 %375, i8* %384, align 1
  %385 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %386 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %385, i32 0, i32 37
  %387 = load i8, i8* %10, align 1
  %388 = zext i8 %387 to i64
  %389 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %386, i64 0, i64 %388
  %390 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %389, i32 0, i32 0
  %391 = bitcast %union.anon* %390 to i16*
  %392 = load i16, i16* %391, align 4
  %393 = add i16 %392, 1
  store i16 %393, i16* %391, align 4
  %394 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %395 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %394, i32 0, i32 50
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %398 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %397, i32 0, i32 49
  %399 = load i32, i32* %398, align 8
  %400 = sub i32 %399, 1
  %401 = icmp eq i32 %396, %400
  %402 = zext i1 %401 to i32
  store i32 %402, i32* %7, align 4
  %403 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %404 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %403, i32 0, i32 29
  %405 = load i32, i32* %404, align 4
  %406 = add i32 %405, -1
  store i32 %406, i32* %404, align 4
  %407 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %408 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %407, i32 0, i32 27
  %409 = load i32, i32* %408, align 4
  %410 = add i32 %409, 1
  store i32 %410, i32* %408, align 4
  br label %411

411:                                              ; preds = %357, %356
  %412 = load i32, i32* %7, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %458

414:                                              ; preds = %411
  %415 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %416 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %417 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %416, i32 0, i32 23
  %418 = load i64, i64* %417, align 8
  %419 = icmp sge i64 %418, 0
  br i1 %419, label %420, label %430

420:                                              ; preds = %414
  %421 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %422 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %421, i32 0, i32 14
  %423 = load i8*, i8** %422, align 8
  %424 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %425 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %424, i32 0, i32 23
  %426 = load i64, i64* %425, align 8
  %427 = trunc i64 %426 to i32
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds i8, i8* %423, i64 %428
  br label %431

430:                                              ; preds = %414
  br label %431

431:                                              ; preds = %430, %420
  %432 = phi i8* [ %429, %420 ], [ null, %430 ]
  %433 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %434 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %433, i32 0, i32 27
  %435 = load i32, i32* %434, align 4
  %436 = zext i32 %435 to i64
  %437 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %438 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %437, i32 0, i32 23
  %439 = load i64, i64* %438, align 8
  %440 = sub nsw i64 %436, %439
  call void @_tr_flush_block(%struct.internal_state* noundef %415, i8* noundef %432, i64 noundef %440, i32 noundef 0)
  %441 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %442 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %441, i32 0, i32 27
  %443 = load i32, i32* %442, align 4
  %444 = zext i32 %443 to i64
  %445 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %446 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %445, i32 0, i32 23
  store i64 %444, i64* %446, align 8
  %447 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %448 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %447, i32 0, i32 0
  %449 = load %struct.z_stream_s*, %struct.z_stream_s** %448, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %449)
  %450 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %451 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %450, i32 0, i32 0
  %452 = load %struct.z_stream_s*, %struct.z_stream_s** %451, align 8
  %453 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %452, i32 0, i32 4
  %454 = load i32, i32* %453, align 8
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %431
  store i32 0, i32* %3, align 4
  br label %569

457:                                              ; preds = %431
  br label %458

458:                                              ; preds = %457, %411
  br label %11

459:                                              ; preds = %31
  %460 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %461 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %460, i32 0, i32 27
  %462 = load i32, i32* %461, align 4
  %463 = icmp ult i32 %462, 2
  br i1 %463, label %464, label %468

464:                                              ; preds = %459
  %465 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %466 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %465, i32 0, i32 27
  %467 = load i32, i32* %466, align 4
  br label %469

468:                                              ; preds = %459
  br label %469

469:                                              ; preds = %468, %464
  %470 = phi i32 [ %467, %464 ], [ 2, %468 ]
  %471 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %472 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %471, i32 0, i32 55
  store i32 %470, i32* %472, align 4
  %473 = load i32, i32* %5, align 4
  %474 = icmp eq i32 %473, 4
  br i1 %474, label %475, label %519

475:                                              ; preds = %469
  %476 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %477 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %478 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %477, i32 0, i32 23
  %479 = load i64, i64* %478, align 8
  %480 = icmp sge i64 %479, 0
  br i1 %480, label %481, label %491

481:                                              ; preds = %475
  %482 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %483 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %482, i32 0, i32 14
  %484 = load i8*, i8** %483, align 8
  %485 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %486 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %485, i32 0, i32 23
  %487 = load i64, i64* %486, align 8
  %488 = trunc i64 %487 to i32
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* %484, i64 %489
  br label %492

491:                                              ; preds = %475
  br label %492

492:                                              ; preds = %491, %481
  %493 = phi i8* [ %490, %481 ], [ null, %491 ]
  %494 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %495 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %494, i32 0, i32 27
  %496 = load i32, i32* %495, align 4
  %497 = zext i32 %496 to i64
  %498 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %499 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %498, i32 0, i32 23
  %500 = load i64, i64* %499, align 8
  %501 = sub nsw i64 %497, %500
  call void @_tr_flush_block(%struct.internal_state* noundef %476, i8* noundef %493, i64 noundef %501, i32 noundef 1)
  %502 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %503 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %502, i32 0, i32 27
  %504 = load i32, i32* %503, align 4
  %505 = zext i32 %504 to i64
  %506 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %507 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %506, i32 0, i32 23
  store i64 %505, i64* %507, align 8
  %508 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %509 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %508, i32 0, i32 0
  %510 = load %struct.z_stream_s*, %struct.z_stream_s** %509, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %510)
  %511 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %512 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %511, i32 0, i32 0
  %513 = load %struct.z_stream_s*, %struct.z_stream_s** %512, align 8
  %514 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %513, i32 0, i32 4
  %515 = load i32, i32* %514, align 8
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %492
  store i32 2, i32* %3, align 4
  br label %569

518:                                              ; preds = %492
  store i32 3, i32* %3, align 4
  br label %569

519:                                              ; preds = %469
  %520 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %521 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %520, i32 0, i32 50
  %522 = load i32, i32* %521, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %568

524:                                              ; preds = %519
  %525 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %526 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %527 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %526, i32 0, i32 23
  %528 = load i64, i64* %527, align 8
  %529 = icmp sge i64 %528, 0
  br i1 %529, label %530, label %540

530:                                              ; preds = %524
  %531 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %532 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %531, i32 0, i32 14
  %533 = load i8*, i8** %532, align 8
  %534 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %535 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %534, i32 0, i32 23
  %536 = load i64, i64* %535, align 8
  %537 = trunc i64 %536 to i32
  %538 = zext i32 %537 to i64
  %539 = getelementptr inbounds i8, i8* %533, i64 %538
  br label %541

540:                                              ; preds = %524
  br label %541

541:                                              ; preds = %540, %530
  %542 = phi i8* [ %539, %530 ], [ null, %540 ]
  %543 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %544 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %543, i32 0, i32 27
  %545 = load i32, i32* %544, align 4
  %546 = zext i32 %545 to i64
  %547 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %548 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %547, i32 0, i32 23
  %549 = load i64, i64* %548, align 8
  %550 = sub nsw i64 %546, %549
  call void @_tr_flush_block(%struct.internal_state* noundef %525, i8* noundef %542, i64 noundef %550, i32 noundef 0)
  %551 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %552 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %551, i32 0, i32 27
  %553 = load i32, i32* %552, align 4
  %554 = zext i32 %553 to i64
  %555 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %556 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %555, i32 0, i32 23
  store i64 %554, i64* %556, align 8
  %557 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %558 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %557, i32 0, i32 0
  %559 = load %struct.z_stream_s*, %struct.z_stream_s** %558, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %559)
  %560 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %561 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %560, i32 0, i32 0
  %562 = load %struct.z_stream_s*, %struct.z_stream_s** %561, align 8
  %563 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %562, i32 0, i32 4
  %564 = load i32, i32* %563, align 8
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %567

566:                                              ; preds = %541
  store i32 0, i32* %3, align 4
  br label %569

567:                                              ; preds = %541
  br label %568

568:                                              ; preds = %567, %519
  store i32 1, i32* %3, align 4
  br label %569

569:                                              ; preds = %568, %566, %518, %517, %456, %25
  %570 = load i32, i32* %3, align 4
  ret i32 %570
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @deflate_slow(%struct.internal_state* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.internal_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.internal_state* %0, %struct.internal_state** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %13

13:                                               ; preds = %523, %2
  %14 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %15 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %14, i32 0, i32 29
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %16, 262
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  call void @fill_window(%struct.internal_state* noundef %19)
  %20 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %21 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %20, i32 0, i32 29
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %22, 262
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %688

28:                                               ; preds = %24, %18
  %29 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %30 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %29, i32 0, i32 29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %524

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %13
  store i32 0, i32* %6, align 4
  %36 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %37 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %36, i32 0, i32 29
  %38 = load i32, i32* %37, align 4
  %39 = icmp uge i32 %38, 3
  br i1 %39, label %40, label %100

40:                                               ; preds = %35
  %41 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %42 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %41, i32 0, i32 18
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %45 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %44, i32 0, i32 22
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %43, %46
  %48 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %49 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %48, i32 0, i32 14
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %52 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %51, i32 0, i32 27
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, 2
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = xor i32 %47, %58
  %60 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %61 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %60, i32 0, i32 21
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  %64 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %65 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %64, i32 0, i32 18
  store i32 %63, i32* %65, align 8
  %66 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %67 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %66, i32 0, i32 17
  %68 = load i16*, i16** %67, align 8
  %69 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %70 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %69, i32 0, i32 18
  %71 = load i32, i32* %70, align 8
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i16, i16* %68, i64 %72
  %74 = load i16, i16* %73, align 2
  %75 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %76 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %75, i32 0, i32 16
  %77 = load i16*, i16** %76, align 8
  %78 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %79 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %78, i32 0, i32 27
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %82 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %81, i32 0, i32 13
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %80, %83
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16* %77, i64 %85
  store i16 %74, i16* %86, align 2
  %87 = zext i16 %74 to i32
  store i32 %87, i32* %6, align 4
  %88 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %89 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %88, i32 0, i32 27
  %90 = load i32, i32* %89, align 4
  %91 = trunc i32 %90 to i16
  %92 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %93 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %92, i32 0, i32 17
  %94 = load i16*, i16** %93, align 8
  %95 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %96 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %95, i32 0, i32 18
  %97 = load i32, i32* %96, align 8
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i16, i16* %94, i64 %98
  store i16 %91, i16* %99, align 2
  br label %100

100:                                              ; preds = %40, %35
  %101 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %102 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %101, i32 0, i32 24
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %105 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %104, i32 0, i32 30
  store i32 %103, i32* %105, align 8
  %106 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %107 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %106, i32 0, i32 28
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %110 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %109, i32 0, i32 25
  store i32 %108, i32* %110, align 4
  %111 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %112 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %111, i32 0, i32 24
  store i32 2, i32* %112, align 8
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %153

115:                                              ; preds = %100
  %116 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %117 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %116, i32 0, i32 30
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %120 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %119, i32 0, i32 32
  %121 = load i32, i32* %120, align 8
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %153

123:                                              ; preds = %115
  %124 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %125 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %124, i32 0, i32 27
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %6, align 4
  %128 = sub i32 %126, %127
  %129 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %130 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %129, i32 0, i32 11
  %131 = load i32, i32* %130, align 4
  %132 = sub i32 %131, 262
  %133 = icmp ule i32 %128, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %123
  %135 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @longest_match(%struct.internal_state* noundef %135, i32 noundef %136)
  %138 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %139 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %138, i32 0, i32 24
  store i32 %137, i32* %139, align 8
  %140 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %141 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %140, i32 0, i32 24
  %142 = load i32, i32* %141, align 8
  %143 = icmp ule i32 %142, 5
  br i1 %143, label %144, label %152

144:                                              ; preds = %134
  %145 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %146 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %145, i32 0, i32 34
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %151 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %150, i32 0, i32 24
  store i32 2, i32* %151, align 8
  br label %152

152:                                              ; preds = %149, %144, %134
  br label %153

153:                                              ; preds = %152, %123, %115, %100
  %154 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %155 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %154, i32 0, i32 30
  %156 = load i32, i32* %155, align 8
  %157 = icmp uge i32 %156, 3
  br i1 %157, label %158, label %404

158:                                              ; preds = %153
  %159 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %160 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %159, i32 0, i32 24
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %163 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %162, i32 0, i32 30
  %164 = load i32, i32* %163, align 8
  %165 = icmp ule i32 %161, %164
  br i1 %165, label %166, label %404

166:                                              ; preds = %158
  %167 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %168 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %167, i32 0, i32 27
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %171 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %170, i32 0, i32 29
  %172 = load i32, i32* %171, align 4
  %173 = add i32 %169, %172
  %174 = sub i32 %173, 3
  store i32 %174, i32* %8, align 4
  %175 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %176 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %175, i32 0, i32 30
  %177 = load i32, i32* %176, align 8
  %178 = sub i32 %177, 3
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %9, align 1
  %180 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %181 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %180, i32 0, i32 27
  %182 = load i32, i32* %181, align 4
  %183 = sub i32 %182, 1
  %184 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %185 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %184, i32 0, i32 25
  %186 = load i32, i32* %185, align 4
  %187 = sub i32 %183, %186
  %188 = trunc i32 %187 to i16
  store i16 %188, i16* %10, align 2
  %189 = load i16, i16* %10, align 2
  %190 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %191 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %190, i32 0, i32 51
  %192 = load i16*, i16** %191, align 8
  %193 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %194 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %193, i32 0, i32 50
  %195 = load i32, i32* %194, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i16, i16* %192, i64 %196
  store i16 %189, i16* %197, align 2
  %198 = load i8, i8* %9, align 1
  %199 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %200 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %199, i32 0, i32 48
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %203 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %202, i32 0, i32 50
  %204 = load i32, i32* %203, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %203, align 4
  %206 = zext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %201, i64 %206
  store i8 %198, i8* %207, align 1
  %208 = load i16, i16* %10, align 2
  %209 = add i16 %208, -1
  store i16 %209, i16* %10, align 2
  %210 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %211 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %210, i32 0, i32 37
  %212 = load i8, i8* %9, align 1
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds [0 x i8], [0 x i8]* @_length_code, i64 0, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = add nsw i32 %216, 256
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %211, i64 0, i64 %219
  %221 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %220, i32 0, i32 0
  %222 = bitcast %union.anon* %221 to i16*
  %223 = load i16, i16* %222, align 4
  %224 = add i16 %223, 1
  store i16 %224, i16* %222, align 4
  %225 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %226 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %225, i32 0, i32 38
  %227 = load i16, i16* %10, align 2
  %228 = zext i16 %227 to i32
  %229 = icmp slt i32 %228, 256
  br i1 %229, label %230, label %236

230:                                              ; preds = %166
  %231 = load i16, i16* %10, align 2
  %232 = zext i16 %231 to i64
  %233 = getelementptr inbounds [0 x i8], [0 x i8]* @_dist_code, i64 0, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  br label %245

236:                                              ; preds = %166
  %237 = load i16, i16* %10, align 2
  %238 = zext i16 %237 to i32
  %239 = ashr i32 %238, 7
  %240 = add nsw i32 256, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [0 x i8], [0 x i8]* @_dist_code, i64 0, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  br label %245

245:                                              ; preds = %236, %230
  %246 = phi i32 [ %235, %230 ], [ %244, %236 ]
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [61 x %struct.ct_data_s], [61 x %struct.ct_data_s]* %226, i64 0, i64 %247
  %249 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %248, i32 0, i32 0
  %250 = bitcast %union.anon* %249 to i16*
  %251 = load i16, i16* %250, align 4
  %252 = add i16 %251, 1
  store i16 %252, i16* %250, align 4
  %253 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %254 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %253, i32 0, i32 50
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %257 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %256, i32 0, i32 49
  %258 = load i32, i32* %257, align 8
  %259 = sub i32 %258, 1
  %260 = icmp eq i32 %255, %259
  %261 = zext i1 %260 to i32
  store i32 %261, i32* %7, align 4
  %262 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %263 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %262, i32 0, i32 30
  %264 = load i32, i32* %263, align 8
  %265 = sub i32 %264, 1
  %266 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %267 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %266, i32 0, i32 29
  %268 = load i32, i32* %267, align 4
  %269 = sub i32 %268, %265
  store i32 %269, i32* %267, align 4
  %270 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %271 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %270, i32 0, i32 30
  %272 = load i32, i32* %271, align 8
  %273 = sub i32 %272, 2
  store i32 %273, i32* %271, align 8
  br label %274

274:                                              ; preds = %342, %245
  %275 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %276 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %275, i32 0, i32 27
  %277 = load i32, i32* %276, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %276, align 4
  %279 = load i32, i32* %8, align 4
  %280 = icmp ule i32 %278, %279
  br i1 %280, label %281, label %341

281:                                              ; preds = %274
  %282 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %283 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %282, i32 0, i32 18
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %286 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %285, i32 0, i32 22
  %287 = load i32, i32* %286, align 8
  %288 = shl i32 %284, %287
  %289 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %290 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %289, i32 0, i32 14
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %293 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %292, i32 0, i32 27
  %294 = load i32, i32* %293, align 4
  %295 = add i32 %294, 2
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %291, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = xor i32 %288, %299
  %301 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %302 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %301, i32 0, i32 21
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %300, %303
  %305 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %306 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %305, i32 0, i32 18
  store i32 %304, i32* %306, align 8
  %307 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %308 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %307, i32 0, i32 17
  %309 = load i16*, i16** %308, align 8
  %310 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %311 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %310, i32 0, i32 18
  %312 = load i32, i32* %311, align 8
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds i16, i16* %309, i64 %313
  %315 = load i16, i16* %314, align 2
  %316 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %317 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %316, i32 0, i32 16
  %318 = load i16*, i16** %317, align 8
  %319 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %320 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %319, i32 0, i32 27
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %323 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %322, i32 0, i32 13
  %324 = load i32, i32* %323, align 4
  %325 = and i32 %321, %324
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds i16, i16* %318, i64 %326
  store i16 %315, i16* %327, align 2
  %328 = zext i16 %315 to i32
  store i32 %328, i32* %6, align 4
  %329 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %330 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %329, i32 0, i32 27
  %331 = load i32, i32* %330, align 4
  %332 = trunc i32 %331 to i16
  %333 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %334 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %333, i32 0, i32 17
  %335 = load i16*, i16** %334, align 8
  %336 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %337 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %336, i32 0, i32 18
  %338 = load i32, i32* %337, align 8
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i16, i16* %335, i64 %339
  store i16 %332, i16* %340, align 2
  br label %341

341:                                              ; preds = %281, %274
  br label %342

342:                                              ; preds = %341
  %343 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %344 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %343, i32 0, i32 30
  %345 = load i32, i32* %344, align 8
  %346 = add i32 %345, -1
  store i32 %346, i32* %344, align 8
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %274, label %348, !llvm.loop !22

348:                                              ; preds = %342
  %349 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %350 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %349, i32 0, i32 26
  store i32 0, i32* %350, align 8
  %351 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %352 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %351, i32 0, i32 24
  store i32 2, i32* %352, align 8
  %353 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %354 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %353, i32 0, i32 27
  %355 = load i32, i32* %354, align 4
  %356 = add i32 %355, 1
  store i32 %356, i32* %354, align 4
  %357 = load i32, i32* %7, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %403

359:                                              ; preds = %348
  %360 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %361 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %362 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %361, i32 0, i32 23
  %363 = load i64, i64* %362, align 8
  %364 = icmp sge i64 %363, 0
  br i1 %364, label %365, label %375

365:                                              ; preds = %359
  %366 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %367 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %366, i32 0, i32 14
  %368 = load i8*, i8** %367, align 8
  %369 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %370 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %369, i32 0, i32 23
  %371 = load i64, i64* %370, align 8
  %372 = trunc i64 %371 to i32
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %368, i64 %373
  br label %376

375:                                              ; preds = %359
  br label %376

376:                                              ; preds = %375, %365
  %377 = phi i8* [ %374, %365 ], [ null, %375 ]
  %378 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %379 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %378, i32 0, i32 27
  %380 = load i32, i32* %379, align 4
  %381 = zext i32 %380 to i64
  %382 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %383 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %382, i32 0, i32 23
  %384 = load i64, i64* %383, align 8
  %385 = sub nsw i64 %381, %384
  call void @_tr_flush_block(%struct.internal_state* noundef %360, i8* noundef %377, i64 noundef %385, i32 noundef 0)
  %386 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %387 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %386, i32 0, i32 27
  %388 = load i32, i32* %387, align 4
  %389 = zext i32 %388 to i64
  %390 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %391 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %390, i32 0, i32 23
  store i64 %389, i64* %391, align 8
  %392 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %393 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %392, i32 0, i32 0
  %394 = load %struct.z_stream_s*, %struct.z_stream_s** %393, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %394)
  %395 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %396 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %395, i32 0, i32 0
  %397 = load %struct.z_stream_s*, %struct.z_stream_s** %396, align 8
  %398 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 8
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %376
  store i32 0, i32* %3, align 4
  br label %688

402:                                              ; preds = %376
  br label %403

403:                                              ; preds = %402, %348
  br label %523

404:                                              ; preds = %158, %153
  %405 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %406 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %405, i32 0, i32 26
  %407 = load i32, i32* %406, align 8
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %511

409:                                              ; preds = %404
  %410 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %411 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %410, i32 0, i32 14
  %412 = load i8*, i8** %411, align 8
  %413 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %414 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %413, i32 0, i32 27
  %415 = load i32, i32* %414, align 4
  %416 = sub i32 %415, 1
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds i8, i8* %412, i64 %417
  %419 = load i8, i8* %418, align 1
  store i8 %419, i8* %11, align 1
  %420 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %421 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %420, i32 0, i32 51
  %422 = load i16*, i16** %421, align 8
  %423 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %424 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %423, i32 0, i32 50
  %425 = load i32, i32* %424, align 4
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds i16, i16* %422, i64 %426
  store i16 0, i16* %427, align 2
  %428 = load i8, i8* %11, align 1
  %429 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %430 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %429, i32 0, i32 48
  %431 = load i8*, i8** %430, align 8
  %432 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %433 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %432, i32 0, i32 50
  %434 = load i32, i32* %433, align 4
  %435 = add i32 %434, 1
  store i32 %435, i32* %433, align 4
  %436 = zext i32 %434 to i64
  %437 = getelementptr inbounds i8, i8* %431, i64 %436
  store i8 %428, i8* %437, align 1
  %438 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %439 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %438, i32 0, i32 37
  %440 = load i8, i8* %11, align 1
  %441 = zext i8 %440 to i64
  %442 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %439, i64 0, i64 %441
  %443 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %442, i32 0, i32 0
  %444 = bitcast %union.anon* %443 to i16*
  %445 = load i16, i16* %444, align 4
  %446 = add i16 %445, 1
  store i16 %446, i16* %444, align 4
  %447 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %448 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %447, i32 0, i32 50
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %451 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %450, i32 0, i32 49
  %452 = load i32, i32* %451, align 8
  %453 = sub i32 %452, 1
  %454 = icmp eq i32 %449, %453
  %455 = zext i1 %454 to i32
  store i32 %455, i32* %7, align 4
  %456 = load i32, i32* %7, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %494

458:                                              ; preds = %409
  %459 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %460 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %461 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %460, i32 0, i32 23
  %462 = load i64, i64* %461, align 8
  %463 = icmp sge i64 %462, 0
  br i1 %463, label %464, label %474

464:                                              ; preds = %458
  %465 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %466 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %465, i32 0, i32 14
  %467 = load i8*, i8** %466, align 8
  %468 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %469 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %468, i32 0, i32 23
  %470 = load i64, i64* %469, align 8
  %471 = trunc i64 %470 to i32
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds i8, i8* %467, i64 %472
  br label %475

474:                                              ; preds = %458
  br label %475

475:                                              ; preds = %474, %464
  %476 = phi i8* [ %473, %464 ], [ null, %474 ]
  %477 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %478 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %477, i32 0, i32 27
  %479 = load i32, i32* %478, align 4
  %480 = zext i32 %479 to i64
  %481 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %482 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %481, i32 0, i32 23
  %483 = load i64, i64* %482, align 8
  %484 = sub nsw i64 %480, %483
  call void @_tr_flush_block(%struct.internal_state* noundef %459, i8* noundef %476, i64 noundef %484, i32 noundef 0)
  %485 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %486 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %485, i32 0, i32 27
  %487 = load i32, i32* %486, align 4
  %488 = zext i32 %487 to i64
  %489 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %490 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %489, i32 0, i32 23
  store i64 %488, i64* %490, align 8
  %491 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %492 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %491, i32 0, i32 0
  %493 = load %struct.z_stream_s*, %struct.z_stream_s** %492, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %493)
  br label %494

494:                                              ; preds = %475, %409
  %495 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %496 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %495, i32 0, i32 27
  %497 = load i32, i32* %496, align 4
  %498 = add i32 %497, 1
  store i32 %498, i32* %496, align 4
  %499 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %500 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %499, i32 0, i32 29
  %501 = load i32, i32* %500, align 4
  %502 = add i32 %501, -1
  store i32 %502, i32* %500, align 4
  %503 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %504 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %503, i32 0, i32 0
  %505 = load %struct.z_stream_s*, %struct.z_stream_s** %504, align 8
  %506 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %505, i32 0, i32 4
  %507 = load i32, i32* %506, align 8
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %510

509:                                              ; preds = %494
  store i32 0, i32* %3, align 4
  br label %688

510:                                              ; preds = %494
  br label %522

511:                                              ; preds = %404
  %512 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %513 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %512, i32 0, i32 26
  store i32 1, i32* %513, align 8
  %514 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %515 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %514, i32 0, i32 27
  %516 = load i32, i32* %515, align 4
  %517 = add i32 %516, 1
  store i32 %517, i32* %515, align 4
  %518 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %519 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %518, i32 0, i32 29
  %520 = load i32, i32* %519, align 4
  %521 = add i32 %520, -1
  store i32 %521, i32* %519, align 4
  br label %522

522:                                              ; preds = %511, %510
  br label %523

523:                                              ; preds = %522, %403
  br label %13

524:                                              ; preds = %33
  %525 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %526 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %525, i32 0, i32 26
  %527 = load i32, i32* %526, align 8
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %578

529:                                              ; preds = %524
  %530 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %531 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %530, i32 0, i32 14
  %532 = load i8*, i8** %531, align 8
  %533 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %534 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %533, i32 0, i32 27
  %535 = load i32, i32* %534, align 4
  %536 = sub i32 %535, 1
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds i8, i8* %532, i64 %537
  %539 = load i8, i8* %538, align 1
  store i8 %539, i8* %12, align 1
  %540 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %541 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %540, i32 0, i32 51
  %542 = load i16*, i16** %541, align 8
  %543 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %544 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %543, i32 0, i32 50
  %545 = load i32, i32* %544, align 4
  %546 = zext i32 %545 to i64
  %547 = getelementptr inbounds i16, i16* %542, i64 %546
  store i16 0, i16* %547, align 2
  %548 = load i8, i8* %12, align 1
  %549 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %550 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %549, i32 0, i32 48
  %551 = load i8*, i8** %550, align 8
  %552 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %553 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %552, i32 0, i32 50
  %554 = load i32, i32* %553, align 4
  %555 = add i32 %554, 1
  store i32 %555, i32* %553, align 4
  %556 = zext i32 %554 to i64
  %557 = getelementptr inbounds i8, i8* %551, i64 %556
  store i8 %548, i8* %557, align 1
  %558 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %559 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %558, i32 0, i32 37
  %560 = load i8, i8* %12, align 1
  %561 = zext i8 %560 to i64
  %562 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %559, i64 0, i64 %561
  %563 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %562, i32 0, i32 0
  %564 = bitcast %union.anon* %563 to i16*
  %565 = load i16, i16* %564, align 4
  %566 = add i16 %565, 1
  store i16 %566, i16* %564, align 4
  %567 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %568 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %567, i32 0, i32 50
  %569 = load i32, i32* %568, align 4
  %570 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %571 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %570, i32 0, i32 49
  %572 = load i32, i32* %571, align 8
  %573 = sub i32 %572, 1
  %574 = icmp eq i32 %569, %573
  %575 = zext i1 %574 to i32
  store i32 %575, i32* %7, align 4
  %576 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %577 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %576, i32 0, i32 26
  store i32 0, i32* %577, align 8
  br label %578

578:                                              ; preds = %529, %524
  %579 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %580 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %579, i32 0, i32 27
  %581 = load i32, i32* %580, align 4
  %582 = icmp ult i32 %581, 2
  br i1 %582, label %583, label %587

583:                                              ; preds = %578
  %584 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %585 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %584, i32 0, i32 27
  %586 = load i32, i32* %585, align 4
  br label %588

587:                                              ; preds = %578
  br label %588

588:                                              ; preds = %587, %583
  %589 = phi i32 [ %586, %583 ], [ 2, %587 ]
  %590 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %591 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %590, i32 0, i32 55
  store i32 %589, i32* %591, align 4
  %592 = load i32, i32* %5, align 4
  %593 = icmp eq i32 %592, 4
  br i1 %593, label %594, label %638

594:                                              ; preds = %588
  %595 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %596 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %597 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %596, i32 0, i32 23
  %598 = load i64, i64* %597, align 8
  %599 = icmp sge i64 %598, 0
  br i1 %599, label %600, label %610

600:                                              ; preds = %594
  %601 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %602 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %601, i32 0, i32 14
  %603 = load i8*, i8** %602, align 8
  %604 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %605 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %604, i32 0, i32 23
  %606 = load i64, i64* %605, align 8
  %607 = trunc i64 %606 to i32
  %608 = zext i32 %607 to i64
  %609 = getelementptr inbounds i8, i8* %603, i64 %608
  br label %611

610:                                              ; preds = %594
  br label %611

611:                                              ; preds = %610, %600
  %612 = phi i8* [ %609, %600 ], [ null, %610 ]
  %613 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %614 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %613, i32 0, i32 27
  %615 = load i32, i32* %614, align 4
  %616 = zext i32 %615 to i64
  %617 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %618 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %617, i32 0, i32 23
  %619 = load i64, i64* %618, align 8
  %620 = sub nsw i64 %616, %619
  call void @_tr_flush_block(%struct.internal_state* noundef %595, i8* noundef %612, i64 noundef %620, i32 noundef 1)
  %621 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %622 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %621, i32 0, i32 27
  %623 = load i32, i32* %622, align 4
  %624 = zext i32 %623 to i64
  %625 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %626 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %625, i32 0, i32 23
  store i64 %624, i64* %626, align 8
  %627 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %628 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %627, i32 0, i32 0
  %629 = load %struct.z_stream_s*, %struct.z_stream_s** %628, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %629)
  %630 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %631 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %630, i32 0, i32 0
  %632 = load %struct.z_stream_s*, %struct.z_stream_s** %631, align 8
  %633 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %632, i32 0, i32 4
  %634 = load i32, i32* %633, align 8
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %636, label %637

636:                                              ; preds = %611
  store i32 2, i32* %3, align 4
  br label %688

637:                                              ; preds = %611
  store i32 3, i32* %3, align 4
  br label %688

638:                                              ; preds = %588
  %639 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %640 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %639, i32 0, i32 50
  %641 = load i32, i32* %640, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %687

643:                                              ; preds = %638
  %644 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %645 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %646 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %645, i32 0, i32 23
  %647 = load i64, i64* %646, align 8
  %648 = icmp sge i64 %647, 0
  br i1 %648, label %649, label %659

649:                                              ; preds = %643
  %650 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %651 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %650, i32 0, i32 14
  %652 = load i8*, i8** %651, align 8
  %653 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %654 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %653, i32 0, i32 23
  %655 = load i64, i64* %654, align 8
  %656 = trunc i64 %655 to i32
  %657 = zext i32 %656 to i64
  %658 = getelementptr inbounds i8, i8* %652, i64 %657
  br label %660

659:                                              ; preds = %643
  br label %660

660:                                              ; preds = %659, %649
  %661 = phi i8* [ %658, %649 ], [ null, %659 ]
  %662 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %663 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %662, i32 0, i32 27
  %664 = load i32, i32* %663, align 4
  %665 = zext i32 %664 to i64
  %666 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %667 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %666, i32 0, i32 23
  %668 = load i64, i64* %667, align 8
  %669 = sub nsw i64 %665, %668
  call void @_tr_flush_block(%struct.internal_state* noundef %644, i8* noundef %661, i64 noundef %669, i32 noundef 0)
  %670 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %671 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %670, i32 0, i32 27
  %672 = load i32, i32* %671, align 4
  %673 = zext i32 %672 to i64
  %674 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %675 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %674, i32 0, i32 23
  store i64 %673, i64* %675, align 8
  %676 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %677 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %676, i32 0, i32 0
  %678 = load %struct.z_stream_s*, %struct.z_stream_s** %677, align 8
  call void @flush_pending(%struct.z_stream_s* noundef %678)
  %679 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %680 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %679, i32 0, i32 0
  %681 = load %struct.z_stream_s*, %struct.z_stream_s** %680, align 8
  %682 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %681, i32 0, i32 4
  %683 = load i32, i32* %682, align 8
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %686

685:                                              ; preds = %660
  store i32 0, i32* %3, align 4
  br label %688

686:                                              ; preds = %660
  br label %687

687:                                              ; preds = %686, %638
  store i32 1, i32* %3, align 4
  br label %688

688:                                              ; preds = %687, %685, %637, %636, %509, %401, %27
  %689 = load i32, i32* %3, align 4
  ret i32 %689
}

declare hidden void @_tr_flush_block(%struct.internal_state* noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @longest_match(%struct.internal_state* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.internal_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store %struct.internal_state* %0, %struct.internal_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %19 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %18, i32 0, i32 31
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %22 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %21, i32 0, i32 14
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %25 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %24, i32 0, i32 27
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  store i8* %28, i8** %7, align 8
  %29 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %30 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %29, i32 0, i32 30
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %33 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %32, i32 0, i32 36
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %36 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %35, i32 0, i32 27
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %39 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %40, 262
  %42 = icmp ugt i32 %37, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %2
  %44 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %45 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %44, i32 0, i32 27
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %48 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %49, 262
  %51 = sub i32 %46, %50
  br label %53

52:                                               ; preds = %2
  br label %53

53:                                               ; preds = %52, %43
  %54 = phi i32 [ %51, %43 ], [ 0, %52 ]
  store i32 %54, i32* %12, align 4
  %55 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %56 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %55, i32 0, i32 16
  %57 = load i16*, i16** %56, align 8
  store i16* %57, i16** %13, align 8
  %58 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %59 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %58, i32 0, i32 13
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  %61 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %62 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %61, i32 0, i32 14
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %65 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %64, i32 0, i32 27
  %66 = load i32, i32* %65, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 258
  store i8* %69, i8** %15, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %16, align 1
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %17, align 1
  %81 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %82 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %81, i32 0, i32 30
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %85 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %84, i32 0, i32 35
  %86 = load i32, i32* %85, align 4
  %87 = icmp uge i32 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %53
  %89 = load i32, i32* %6, align 4
  %90 = lshr i32 %89, 2
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %88, %53
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %94 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %93, i32 0, i32 29
  %95 = load i32, i32* %94, align 4
  %96 = icmp ugt i32 %92, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %99 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %98, i32 0, i32 29
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %97, %91
  br label %102

102:                                              ; preds = %290, %101
  %103 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %104 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %103, i32 0, i32 14
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8* %108, i8** %8, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* %17, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp ne i32 %114, %116
  br i1 %117, label %147, label %118

118:                                              ; preds = %102
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, i8* %16, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %147, label %129

129:                                              ; preds = %118
  %130 = load i8*, i8** %8, align 8
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8*, i8** %7, align 8
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp ne i32 %132, %135
  br i1 %136, label %147, label %137

137:                                              ; preds = %129
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp ne i32 %141, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %137, %129, %118, %102
  br label %275

148:                                              ; preds = %137
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  store i8* %150, i8** %7, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %8, align 8
  br label %153

153:                                              ; preds = %238, %148
  br label %154

154:                                              ; preds = %153
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %7, align 8
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8*, i8** %8, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %8, align 8
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %158, %162
  br i1 %163, label %164, label %238

164:                                              ; preds = %154
  %165 = load i8*, i8** %7, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %7, align 8
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = load i8*, i8** %8, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %8, align 8
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %168, %172
  br i1 %173, label %174, label %238

174:                                              ; preds = %164
  %175 = load i8*, i8** %7, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %7, align 8
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = load i8*, i8** %8, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %8, align 8
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %178, %182
  br i1 %183, label %184, label %238

184:                                              ; preds = %174
  %185 = load i8*, i8** %7, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %7, align 8
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = load i8*, i8** %8, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %8, align 8
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp eq i32 %188, %192
  br i1 %193, label %194, label %238

194:                                              ; preds = %184
  %195 = load i8*, i8** %7, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %7, align 8
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = load i8*, i8** %8, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %8, align 8
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %198, %202
  br i1 %203, label %204, label %238

204:                                              ; preds = %194
  %205 = load i8*, i8** %7, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %7, align 8
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = load i8*, i8** %8, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %8, align 8
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp eq i32 %208, %212
  br i1 %213, label %214, label %238

214:                                              ; preds = %204
  %215 = load i8*, i8** %7, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %7, align 8
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = load i8*, i8** %8, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %8, align 8
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = icmp eq i32 %218, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %214
  %225 = load i8*, i8** %7, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %7, align 8
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = load i8*, i8** %8, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %8, align 8
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = icmp eq i32 %228, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %224
  %235 = load i8*, i8** %7, align 8
  %236 = load i8*, i8** %15, align 8
  %237 = icmp ult i8* %235, %236
  br label %238

238:                                              ; preds = %234, %224, %214, %204, %194, %184, %174, %164, %154
  %239 = phi i1 [ false, %224 ], [ false, %214 ], [ false, %204 ], [ false, %194 ], [ false, %184 ], [ false, %174 ], [ false, %164 ], [ false, %154 ], [ %237, %234 ]
  br i1 %239, label %153, label %240, !llvm.loop !23

240:                                              ; preds = %238
  %241 = load i8*, i8** %15, align 8
  %242 = load i8*, i8** %7, align 8
  %243 = ptrtoint i8* %241 to i64
  %244 = ptrtoint i8* %242 to i64
  %245 = sub i64 %243, %244
  %246 = trunc i64 %245 to i32
  %247 = sub nsw i32 258, %246
  store i32 %247, i32* %9, align 4
  %248 = load i8*, i8** %15, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 -258
  store i8* %249, i8** %7, align 8
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %10, align 4
  %252 = icmp sgt i32 %250, %251
  br i1 %252, label %253, label %274

253:                                              ; preds = %240
  %254 = load i32, i32* %5, align 4
  %255 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %256 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %255, i32 0, i32 28
  store i32 %254, i32* %256, align 8
  %257 = load i32, i32* %9, align 4
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* %11, align 4
  %260 = icmp sge i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %253
  br label %292

262:                                              ; preds = %253
  %263 = load i8*, i8** %7, align 8
  %264 = load i32, i32* %10, align 4
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %263, i64 %266
  %268 = load i8, i8* %267, align 1
  store i8 %268, i8* %16, align 1
  %269 = load i8*, i8** %7, align 8
  %270 = load i32, i32* %10, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  %273 = load i8, i8* %272, align 1
  store i8 %273, i8* %17, align 1
  br label %274

274:                                              ; preds = %262, %240
  br label %275

275:                                              ; preds = %274, %147
  %276 = load i16*, i16** %13, align 8
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* %14, align 4
  %279 = and i32 %277, %278
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i16, i16* %276, i64 %280
  %282 = load i16, i16* %281, align 2
  %283 = zext i16 %282 to i32
  store i32 %283, i32* %5, align 4
  %284 = load i32, i32* %12, align 4
  %285 = icmp ugt i32 %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %275
  %287 = load i32, i32* %6, align 4
  %288 = add i32 %287, -1
  store i32 %288, i32* %6, align 4
  %289 = icmp ne i32 %288, 0
  br label %290

290:                                              ; preds = %286, %275
  %291 = phi i1 [ false, %275 ], [ %289, %286 ]
  br i1 %291, label %102, label %292, !llvm.loop !24

292:                                              ; preds = %290, %261
  %293 = load i32, i32* %10, align 4
  %294 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %295 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %294, i32 0, i32 29
  %296 = load i32, i32* %295, align 4
  %297 = icmp ule i32 %293, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %292
  %299 = load i32, i32* %10, align 4
  store i32 %299, i32* %3, align 4
  br label %304

300:                                              ; preds = %292
  %301 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %302 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %301, i32 0, i32 29
  %303 = load i32, i32* %302, align 4
  store i32 %303, i32* %3, align 4
  br label %304

304:                                              ; preds = %300, %298
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @read_buf(%struct.z_stream_s* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %10 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %65

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sub i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @llvm.objectsize.i64.p0i8(i8* %33, i1 false, i1 true, i1 false)
  %35 = call i8* @__memcpy_chk(i8* noundef %27, i8* noundef %30, i64 noundef %32, i64 noundef %34) #4
  %36 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %37 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %36, i32 0, i32 7
  %38 = load %struct.internal_state*, %struct.internal_state** %37, align 8
  %39 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %51

42:                                               ; preds = %21
  %43 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %43, i32 0, i32 12
  %45 = load i64, i64* %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @adler32(i64 noundef %45, i8* noundef %46, i32 noundef %47)
  %49 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %50 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %49, i32 0, i32 12
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %42, %21
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %54 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = zext i32 %52 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %54, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %61 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %51, %20
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
