; ModuleID = 'gzwrite.c'
source_filename = "gzwrite.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.gzFile_s = type { i32, i8*, i64 }
%struct.gz_state = type { %struct.gzFile_s, i32, i32, i8*, i32, i32, i8*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i8*, %struct.z_stream_s }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"requested length does not fit in int\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"1.2.8-optipng\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"internal error: deflate stream corrupt\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzwrite(%struct.gzFile_s* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gz_state*, align 8
  %10 = alloca %struct.z_stream_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gzFile_s* %0, %struct.gzFile_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %15 = icmp eq %struct.gzFile_s* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %191

17:                                               ; preds = %3
  %18 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %19 = bitcast %struct.gzFile_s* %18 to %struct.gz_state*
  store %struct.gz_state* %19, %struct.gz_state** %9, align 8
  %20 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %21 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %20, i32 0, i32 19
  store %struct.z_stream_s* %21, %struct.z_stream_s** %10, align 8
  %22 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 31153
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 17
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %17
  store i32 0, i32* %4, align 4
  br label %191

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  call void @gz_error(%struct.gz_state* noundef %36, i32 noundef -3, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %191

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %191

41:                                               ; preds = %37
  %42 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %43 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %48 = call i32 @gz_init(%struct.gz_state* noundef %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %191

51:                                               ; preds = %46, %41
  %52 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %53 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %52, i32 0, i32 16
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %58 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %57, i32 0, i32 16
  store i32 0, i32* %58, align 8
  %59 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %60 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %61 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %60, i32 0, i32 15
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @gz_zero(%struct.gz_state* noundef %59, i64 noundef %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %191

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %51
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %70 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %160

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %156, %73
  %75 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %81 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %80, i32 0, i32 6
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %84 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %87 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %90 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %95 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %94, i32 0, i32 6
  %96 = load i8*, i8** %95, align 8
  %97 = ptrtoint i8* %93 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %11, align 4
  %101 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %102 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sub i32 %103, %104
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ugt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %85
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %109, %85
  %112 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %113 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %112, i32 0, i32 6
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %12, align 4
  %120 = zext i32 %119 to i64
  %121 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %122 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %121, i32 0, i32 6
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = call i64 @llvm.objectsize.i64.p0i8(i8* %126, i1 false, i1 true, i1 false)
  %128 = call i8* @__memcpy_chk(i8* noundef %117, i8* noundef %118, i64 noundef %120, i64 noundef %127) #6
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %131 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load i32, i32* %12, align 4
  %135 = zext i32 %134 to i64
  %136 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %137 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, %135
  store i64 %140, i64* %138, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load i32, i32* %12, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8* %144, i8** %6, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %7, align 4
  %147 = sub i32 %146, %145
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %111
  %151 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %152 = call i32 @gz_comp(%struct.gz_state* noundef %151, i32 noundef 0)
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %191

155:                                              ; preds = %150, %111
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %74, label %159, !llvm.loop !10

159:                                              ; preds = %156
  br label %189

160:                                              ; preds = %67
  %161 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %162 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %167 = call i32 @gz_comp(%struct.gz_state* noundef %166, i32 noundef 0)
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i32 0, i32* %4, align 4
  br label %191

170:                                              ; preds = %165, %160
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %173 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %176 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* %7, align 4
  %178 = zext i32 %177 to i64
  %179 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %180 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, %178
  store i64 %183, i64* %181, align 8
  %184 = load %struct.gz_state*, %struct.gz_state** %9, align 8
  %185 = call i32 @gz_comp(%struct.gz_state* noundef %184, i32 noundef 0)
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %188

187:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %191

188:                                              ; preds = %170
  br label %189

189:                                              ; preds = %188, %159
  %190 = load i32, i32* %8, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %189, %187, %169, %154, %65, %50, %40, %35, %31, %16
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare hidden void @gz_error(%struct.gz_state* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gz_init(%struct.gz_state* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gz_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %3, align 8
  %6 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %7 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %6, i32 0, i32 19
  store %struct.z_stream_s* %7, %struct.z_stream_s** %5, align 8
  %8 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %9 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @malloc(i64 noundef %11) #7
  %13 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 6
  store i8* %12, i8** %14, align 8
  %15 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %16 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %15, i32 0, i32 6
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  call void @gz_error(%struct.gz_state* noundef %20, i32 noundef -4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %97

21:                                               ; preds = %1
  %22 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %69, label %26

26:                                               ; preds = %21
  %27 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @malloc(i64 noundef %30) #7
  %32 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 7
  store i8* %31, i8** %33, align 8
  %34 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %35 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %34, i32 0, i32 7
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %40 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %39, i32 0, i32 6
  %41 = load i8*, i8** %40, align 8
  call void @free(i8* noundef %41)
  %42 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  call void @gz_error(%struct.gz_state* noundef %42, i32 noundef -4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %97

43:                                               ; preds = %26
  %44 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %44, i32 0, i32 8
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %45, align 8
  %46 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %47 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %46, i32 0, i32 9
  store void (i8*, i8*)* null, void (i8*, i8*)** %47, align 8
  %48 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %48, i32 0, i32 10
  store i8* null, i8** %49, align 8
  %50 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %51 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %52 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %51, i32 0, i32 13
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %55 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %54, i32 0, i32 14
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @deflateInit2_(%struct.z_stream_s* noundef %50, i32 noundef %53, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %56, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef 112)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %43
  %61 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %62 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %61, i32 0, i32 7
  %63 = load i8*, i8** %62, align 8
  call void @free(i8* noundef %63)
  %64 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %65 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %64, i32 0, i32 6
  %66 = load i8*, i8** %65, align 8
  call void @free(i8* noundef %66)
  %67 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  call void @gz_error(%struct.gz_state* noundef %67, i32 noundef -4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %97

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %21
  %70 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %71 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %74 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %76 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %69
  %80 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %81 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %84 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %86 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %85, i32 0, i32 7
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %89 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %91 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %94 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %94, i32 0, i32 1
  store i8* %92, i8** %95, align 8
  br label %96

96:                                               ; preds = %79, %69
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %60, %38, %19
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gz_zero(%struct.gz_state* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gz_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_stream_s*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %10 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %9, i32 0, i32 19
  store %struct.z_stream_s* %10, %struct.z_stream_s** %8, align 8
  %11 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %12 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %17 = call i32 @gz_comp(%struct.gz_state* noundef %16, i32 noundef 0)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %79

20:                                               ; preds = %15, %2
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %73, %20
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %78

24:                                               ; preds = %21
  %25 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %5, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = trunc i64 %32 to i32
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %33, %31 ], [ %37, %34 ]
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %44 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %43, i32 0, i32 6
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %49 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %48, i32 0, i32 6
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @llvm.objectsize.i64.p0i8(i8* %50, i1 false, i1 true, i1 false)
  %52 = call i8* @__memset_chk(i8* noundef %45, i32 noundef 0, i64 noundef %47, i64 noundef %51) #6
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %42, %38
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %58 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %57, i32 0, i32 6
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %61 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %65 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %63
  store i64 %68, i64* %66, align 8
  %69 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %70 = call i32 @gz_comp(%struct.gz_state* noundef %69, i32 noundef 0)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %79

73:                                               ; preds = %53
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = load i64, i64* %5, align 8
  %77 = sub nsw i64 %76, %75
  store i64 %77, i64* %5, align 8
  br label %21, !llvm.loop !12

78:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %72, %19
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gz_comp(%struct.gz_state* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gz_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_stream_s*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %11 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %10, i32 0, i32 19
  store %struct.z_stream_s* %11, %struct.z_stream_s** %9, align 8
  %12 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %13 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %18 = call i32 @gz_init(%struct.gz_state* noundef %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %156

21:                                               ; preds = %16, %2
  %22 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = zext i32 %35 to i64
  %37 = call i64 @"\01_write"(i32 noundef %29, i8* noundef %32, i64 noundef %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41, %26
  %48 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %49 = call i32* @__error()
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @"\01_strerror"(i32 noundef %50)
  call void @gz_error(%struct.gz_state* noundef %48, i32 noundef -1, i8* noundef %51)
  store i32 -1, i32* %3, align 4
  br label %156

52:                                               ; preds = %41
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %54 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %53, i32 0, i32 1
  store i32 0, i32* %54, align 8
  store i32 0, i32* %3, align 4
  br label %156

55:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %146, %55
  %57 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %58 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %129

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 4
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %129

70:                                               ; preds = %67, %64, %56
  %71 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %72 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %75 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = ptrtoint i8* %73 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %70
  %85 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %86 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %89 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = call i64 @"\01_write"(i32 noundef %87, i8* noundef %91, i64 noundef %93)
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %84
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97, %84
  %102 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %103 = call i32* @__error()
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @"\01_strerror"(i32 noundef %104)
  call void @gz_error(%struct.gz_state* noundef %102, i32 noundef -1, i8* noundef %105)
  store i32 -1, i32* %3, align 4
  br label %156

106:                                              ; preds = %97, %70
  %107 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %108 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %113 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %116 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %118 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %117, i32 0, i32 7
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %121 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %111, %106
  %123 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %124 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %127 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %127, i32 0, i32 1
  store i8* %125, i8** %128, align 8
  br label %129

129:                                              ; preds = %122, %67, %61
  %130 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %131 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %8, align 4
  %133 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @deflate(%struct.z_stream_s* noundef %133, i32 noundef %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, -2
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  call void @gz_error(%struct.gz_state* noundef %139, i32 noundef -2, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %156

140:                                              ; preds = %129
  %141 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %142 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sub i32 %144, %143
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %56, label %149, !llvm.loop !13

149:                                              ; preds = %146
  %150 = load i32, i32* %5, align 4
  %151 = icmp eq i32 %150, 4
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %154 = call i32 @deflateReset(%struct.z_stream_s* noundef %153)
  br label %155

155:                                              ; preds = %152, %149
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %138, %101, %52, %47, %20
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzputc(%struct.gzFile_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca %struct.gz_state*, align 8
  %9 = alloca %struct.z_stream_s*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8
  %11 = icmp eq %struct.gzFile_s* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %114

13:                                               ; preds = %2
  %14 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8
  %15 = bitcast %struct.gzFile_s* %14 to %struct.gz_state*
  store %struct.gz_state* %15, %struct.gz_state** %8, align 8
  %16 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 19
  store %struct.z_stream_s* %17, %struct.z_stream_s** %9, align 8
  %18 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 31153
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %24 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %23, i32 0, i32 17
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %13
  store i32 -1, i32* %3, align 4
  br label %114

28:                                               ; preds = %22
  %29 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %30 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %29, i32 0, i32 16
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %35 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %34, i32 0, i32 16
  store i32 0, i32* %35, align 8
  %36 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %37 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %38 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %37, i32 0, i32 15
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @gz_zero(%struct.gz_state* noundef %36, i64 noundef %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %114

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %46 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %44
  %50 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %56 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %55, i32 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %59 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %62 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %65 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %70 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %69, i32 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = ptrtoint i8* %68 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %78 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %60
  %82 = load i32, i32* %5, align 4
  %83 = trunc i32 %82 to i8
  %84 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %85 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %84, i32 0, i32 6
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 %83, i8* %89, align 1
  %90 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %91 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %95 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, 255
  store i32 %100, i32* %3, align 4
  br label %114

101:                                              ; preds = %60
  br label %102

102:                                              ; preds = %101, %44
  %103 = load i32, i32* %5, align 4
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  store i8 %104, i8* %105, align 1
  %106 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8
  %107 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %108 = call i32 @gzwrite(%struct.gzFile_s* noundef %106, i8* noundef %107, i32 noundef 1)
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 -1, i32* %3, align 4
  br label %114

111:                                              ; preds = %102
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, 255
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %110, %81, %42, %27, %12
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzputs(%struct.gzFile_s* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* noundef %7)
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %6, align 4
  %10 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @gzwrite(%struct.gzFile_s* noundef %10, i8* noundef %11, i32 noundef %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %22

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ -1, %19 ], [ %21, %20 ]
  ret i32 %23
}

declare i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzvprintf(%struct.gzFile_s* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gz_state*, align 8
  %11 = alloca %struct.z_stream_s*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %13 = icmp eq %struct.gzFile_s* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %124

15:                                               ; preds = %3
  %16 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %17 = bitcast %struct.gzFile_s* %16 to %struct.gz_state*
  store %struct.gz_state* %17, %struct.gz_state** %10, align 8
  %18 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 19
  store %struct.z_stream_s* %19, %struct.z_stream_s** %11, align 8
  %20 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %21 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 31153
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 17
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %15
  store i32 0, i32* %4, align 4
  br label %124

30:                                               ; preds = %24
  %31 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %32 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %37 = call i32 @gz_init(%struct.gz_state* noundef %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %124

40:                                               ; preds = %35, %30
  %41 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %42 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %41, i32 0, i32 16
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %47 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %46, i32 0, i32 16
  store i32 0, i32* %47, align 8
  %48 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %49 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %50 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %49, i32 0, i32 15
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @gz_zero(%struct.gz_state* noundef %48, i64 noundef %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %124

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %40
  %57 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8
  %58 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %63 = call i32 @gz_comp(%struct.gz_state* noundef %62, i32 noundef 0)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %124

66:                                               ; preds = %61, %56
  %67 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %68 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %8, align 4
  %70 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %71 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %70, i32 0, i32 6
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %78 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %77, i32 0, i32 6
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %83 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %82, i32 0, i32 6
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @llvm.objectsize.i64.p0i8(i8* %84, i1 false, i1 true, i1 false)
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @__vsnprintf_chk(i8* noundef %79, i64 noundef %81, i32 noundef 0, i64 noundef %85, i8* noundef %86, i8* noundef %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %66
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %106, label %95

95:                                               ; preds = %91
  %96 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %97 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %96, i32 0, i32 6
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %95, %91, %66
  store i32 0, i32* %4, align 4
  br label %124

107:                                              ; preds = %95
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8
  %110 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %112 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %111, i32 0, i32 6
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8
  %115 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %119 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %117
  store i64 %122, i64* %120, align 8
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %107, %106, %65, %54, %39, %29, %14
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare i32 @__vsnprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzprintf(%struct.gzFile_s* noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = bitcast i8** %5 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @gzvprintf(%struct.gzFile_s* noundef %8, i8* noundef %9, i8* noundef %10)
  store i32 %11, i32* %6, align 4
  %12 = bitcast i8** %5 to i8*
  call void @llvm.va_end(i8* %12)
  %13 = load i32, i32* %6, align 4
  ret i32 %13
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzflush(%struct.gzFile_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8
  %8 = icmp eq %struct.gzFile_s* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %53

10:                                               ; preds = %2
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8
  %12 = bitcast %struct.gzFile_s* %11 to %struct.gz_state*
  store %struct.gz_state* %12, %struct.gz_state** %6, align 8
  %13 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 31153
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 17
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %10
  store i32 -2, i32* %3, align 4
  br label %53

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23
  store i32 -2, i32* %3, align 4
  br label %53

30:                                               ; preds = %26
  %31 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %32 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %37 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %36, i32 0, i32 16
  store i32 0, i32* %37, align 8
  %38 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %39 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %40 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %39, i32 0, i32 15
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @gz_zero(%struct.gz_state* noundef %38, i64 noundef %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %53

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @gz_comp(%struct.gz_state* noundef %47, i32 noundef %48)
  %50 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %51 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %50, i32 0, i32 17
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %44, %29, %22, %9
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzsetparams(%struct.gzFile_s* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gz_state*, align 8
  %9 = alloca %struct.z_stream_s*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %11 = icmp eq %struct.gzFile_s* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %87

13:                                               ; preds = %3
  %14 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %15 = bitcast %struct.gzFile_s* %14 to %struct.gz_state*
  store %struct.gz_state* %15, %struct.gz_state** %8, align 8
  %16 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 19
  store %struct.z_stream_s* %17, %struct.z_stream_s** %9, align 8
  %18 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 31153
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %24 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %23, i32 0, i32 17
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %13
  store i32 -2, i32* %4, align 4
  br label %87

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 13
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %37 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %87

41:                                               ; preds = %34, %28
  %42 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %43 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %42, i32 0, i32 16
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %48 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %47, i32 0, i32 16
  store i32 0, i32* %48, align 8
  %49 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %50 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %51 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %50, i32 0, i32 15
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @gz_zero(%struct.gz_state* noundef %49, i64 noundef %52)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %87

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %59 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %64 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %69 = call i32 @gz_comp(%struct.gz_state* noundef %68, i32 noundef 1)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %73 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %72, i32 0, i32 17
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %4, align 4
  br label %87

75:                                               ; preds = %67, %62
  %76 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @deflateParams(%struct.z_stream_s* noundef %76, i32 noundef %77, i32 noundef %78)
  br label %80

80:                                               ; preds = %75, %57
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %83 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %82, i32 0, i32 13
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %86 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %85, i32 0, i32 14
  store i32 %84, i32* %86, align 4
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %80, %71, %55, %40, %27, %12
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare i32 @deflateParams(%struct.z_stream_s* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzclose_w(%struct.gzFile_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %7 = icmp eq %struct.gzFile_s* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %80

9:                                                ; preds = %1
  %10 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %11 = bitcast %struct.gzFile_s* %10 to %struct.gz_state*
  store %struct.gz_state* %11, %struct.gz_state** %5, align 8
  %12 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %13 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 31153
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 -2, i32* %2, align 4
  br label %80

17:                                               ; preds = %9
  %18 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 16
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %24 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %23, i32 0, i32 16
  store i32 0, i32* %24, align 8
  %25 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %26 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %27 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %26, i32 0, i32 15
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @gz_zero(%struct.gz_state* noundef %25, i64 noundef %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 17
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %22
  br label %36

36:                                               ; preds = %35, %17
  %37 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %38 = call i32 @gz_comp(%struct.gz_state* noundef %37, i32 noundef 4)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %42 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %41, i32 0, i32 17
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %46 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %51 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %56 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %55, i32 0, i32 19
  %57 = call i32 @deflateEnd(%struct.z_stream_s* noundef %56)
  %58 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %59 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %58, i32 0, i32 7
  %60 = load i8*, i8** %59, align 8
  call void @free(i8* noundef %60)
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %63 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %62, i32 0, i32 6
  %64 = load i8*, i8** %63, align 8
  call void @free(i8* noundef %64)
  br label %65

65:                                               ; preds = %61, %44
  %66 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  call void @gz_error(%struct.gz_state* noundef %66, i32 noundef 0, i8* noundef null)
  %67 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %68 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  call void @free(i8* noundef %69)
  %70 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %71 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @"\01_close"(i32 noundef %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %65
  %77 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %78 = bitcast %struct.gz_state* %77 to i8*
  call void @free(i8* noundef %78)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %16, %8
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare i32 @deflateEnd(%struct.z_stream_s* noundef) #1

declare void @free(i8* noundef) #1

declare i32 @"\01_close"(i32 noundef) #1

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #5

declare i32 @deflateInit2_(%struct.z_stream_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #2

declare i64 @"\01_write"(i32 noundef, i8* noundef, i64 noundef) #1

declare i8* @"\01_strerror"(i32 noundef) #1

declare i32* @__error() #1

declare i32 @deflate(%struct.z_stream_s* noundef, i32 noundef) #1

declare i32 @deflateReset(%struct.z_stream_s* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind }
attributes #7 = { allocsize(0) }

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
