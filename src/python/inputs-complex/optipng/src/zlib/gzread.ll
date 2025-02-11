; ModuleID = 'gzread.c'
source_filename = "gzread.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.gzFile_s = type { i32, i8*, i64 }
%struct.gz_state = type { %struct.gzFile_s, i32, i32, i8*, i32, i32, i8*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i8*, %struct.z_stream_s }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"requested length does not fit in int\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"out of room to push characters\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"unexpected end of file\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"internal error: inflate stream corrupt\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"compressed data error\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"1.2.8-optipng\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzread(%struct.gzFile_s* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gz_state*, align 8
  %11 = alloca %struct.z_stream_s*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %13 = icmp eq %struct.gzFile_s* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %195

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
  %23 = icmp ne i32 %22, 7247
  br i1 %23, label %34, label %24

24:                                               ; preds = %15
  %25 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 17
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 17
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, -5
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %15
  store i32 -1, i32* %4, align 4
  br label %195

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  call void @gz_error(%struct.gz_state* noundef %39, i32 noundef -3, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %195

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %195

44:                                               ; preds = %40
  %45 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %46 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %51 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %50, i32 0, i32 16
  store i32 0, i32* %51, align 8
  %52 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %53 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %54 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %53, i32 0, i32 15
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @gz_skip(%struct.gz_state* noundef %52, i64 noundef %55)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %195

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %44
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %190, %60
  %62 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %63 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %106

67:                                               ; preds = %61
  %68 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %69 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  br label %81

76:                                               ; preds = %67
  %77 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %78 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  br label %81

81:                                               ; preds = %76, %74
  %82 = phi i32 [ %75, %74 ], [ %80, %76 ]
  store i32 %82, i32* %9, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %85 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 @llvm.objectsize.i64.p0i8(i8* %90, i1 false, i1 true, i1 false)
  %92 = call i8* @__memcpy_chk(i8* noundef %83, i8* noundef %87, i64 noundef %89, i64 noundef %91) #5
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %95 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = zext i32 %93 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %96, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %102 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub i32 %104, %100
  store i32 %105, i32* %103, align 8
  br label %172

106:                                              ; preds = %61
  %107 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %108 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8
  %113 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %118 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %117, i32 0, i32 12
  store i32 1, i32* %118, align 4
  br label %193

119:                                              ; preds = %111, %106
  %120 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %121 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %127 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = shl i32 %128, 1
  %130 = icmp ult i32 %125, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %124, %119
  %132 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %133 = call i32 @gz_fetch(%struct.gz_state* noundef %132)
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 -1, i32* %4, align 4
  br label %195

136:                                              ; preds = %131
  br label %190

137:                                              ; preds = %124
  %138 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %139 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %138, i32 0, i32 9
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @gz_load(%struct.gz_state* noundef %143, i8* noundef %144, i32 noundef %145, i32* noundef %9)
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i32 -1, i32* %4, align 4
  br label %195

149:                                              ; preds = %142
  br label %169

150:                                              ; preds = %137
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8
  %153 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = load %struct.z_stream_s*, %struct.z_stream_s** %11, align 8
  %156 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %158 = call i32 @gz_decomp(%struct.gz_state* noundef %157)
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  store i32 -1, i32* %4, align 4
  br label %195

161:                                              ; preds = %150
  %162 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %163 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %9, align 4
  %166 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %167 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %167, i32 0, i32 0
  store i32 0, i32* %168, align 8
  br label %169

169:                                              ; preds = %161, %149
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171, %81
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %7, align 4
  %175 = sub i32 %174, %173
  store i32 %175, i32* %7, align 4
  %176 = load i8*, i8** %6, align 8
  %177 = load i32, i32* %9, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  store i8* %179, i8** %6, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %8, align 4
  %182 = add i32 %181, %180
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %9, align 4
  %184 = zext i32 %183 to i64
  %185 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %186 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, %184
  store i64 %189, i64* %187, align 8
  br label %190

190:                                              ; preds = %172, %136
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %61, label %193, !llvm.loop !10

193:                                              ; preds = %190, %116
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %193, %160, %148, %135, %58, %43, %38, %34, %14
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare hidden void @gz_error(%struct.gz_state* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gz_skip(%struct.gz_state* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gz_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.gz_state* %0, %struct.gz_state** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %7

7:                                                ; preds = %77, %2
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %78

10:                                               ; preds = %7
  %11 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %10
  %17 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %5, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  %26 = trunc i64 %25 to i32
  br label %32

27:                                               ; preds = %16
  %28 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %29 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i32 [ %26, %24 ], [ %31, %27 ]
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub i32 %38, %34
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %42 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = zext i32 %40 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %43, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %50 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %48
  store i64 %53, i64* %51, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %5, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %5, align 8
  br label %77

58:                                               ; preds = %10
  %59 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %60 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %65 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %64, i32 0, i32 19
  %66 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %78

70:                                               ; preds = %63, %58
  %71 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %72 = call i32 @gz_fetch(%struct.gz_state* noundef %71)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %79

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %32
  br label %7, !llvm.loop !12

78:                                               ; preds = %69, %7
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gz_fetch(%struct.gz_state* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gz_state*, align 8
  %4 = alloca %struct.z_stream_s*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %3, align 8
  %5 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %6 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %5, i32 0, i32 19
  store %struct.z_stream_s* %6, %struct.z_stream_s** %4, align 8
  br label %7

7:                                                ; preds = %81, %1
  %8 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %9 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %62 [
    i32 0, label %11
    i32 1, label %23
    i32 2, label %45
  ]

11:                                               ; preds = %7
  %12 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %13 = call i32 @gz_look(%struct.gz_state* noundef %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %84

16:                                               ; preds = %11
  %17 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %84

22:                                               ; preds = %16
  br label %62

23:                                               ; preds = %7
  %24 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %25 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 7
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %29 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 %30, 1
  %32 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %33, i32 0, i32 0
  %35 = call i32 @gz_load(%struct.gz_state* noundef %24, i8* noundef %27, i32 noundef %31, i32* noundef %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %84

38:                                               ; preds = %23
  %39 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %40 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %39, i32 0, i32 7
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %43 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  store i32 0, i32* %2, align 4
  br label %84

45:                                               ; preds = %7
  %46 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %47 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 1
  %50 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %53 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %52, i32 0, i32 7
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %58 = call i32 @gz_decomp(%struct.gz_state* noundef %57)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %84

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61, %7, %22
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %65 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %71 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ true, %69 ], [ %78, %74 ]
  br label %81

81:                                               ; preds = %79, %63
  %82 = phi i1 [ false, %63 ], [ %80, %79 ]
  br i1 %82, label %7, label %83, !llvm.loop !13

83:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %60, %38, %37, %21, %15
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gz_load(%struct.gz_state* noundef %0, i8* noundef %1, i32 noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gz_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.gz_state* %0, %struct.gz_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %36, %4
  %13 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %21, %23
  %25 = zext i32 %24 to i64
  %26 = call i64 @"\01_read"(i32 noundef %15, i8* noundef %20, i64 noundef %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %12
  br label %41

31:                                               ; preds = %12
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %34, %32
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %12, label %41, !llvm.loop !14

41:                                               ; preds = %36, %30
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %46 = call i32* @__error()
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @"\01_strerror"(i32 noundef %47)
  call void @gz_error(%struct.gz_state* noundef %45, i32 noundef -1, i8* noundef %48)
  store i32 -1, i32* %5, align 4
  br label %56

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %54 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %53, i32 0, i32 11
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %49
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gz_decomp(%struct.gz_state* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gz_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_stream_s*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %8 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %7, i32 0, i32 19
  store %struct.z_stream_s* %8, %struct.z_stream_s** %6, align 8
  %9 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %10 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %69, %1
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %19 = call i32 @gz_avail(%struct.gz_state* noundef %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %99

22:                                               ; preds = %17, %12
  %23 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  call void @gz_error(%struct.gz_state* noundef %28, i32 noundef -5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %71

29:                                               ; preds = %22
  %30 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %31 = call i32 @inflate(%struct.z_stream_s* noundef %30, i32 noundef 0)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, -2
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %29
  %38 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  call void @gz_error(%struct.gz_state* noundef %38, i32 noundef -2, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %99

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, -4
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  call void @gz_error(%struct.gz_state* noundef %43, i32 noundef -4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %99

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, -3
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %49 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %50 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %49, i32 0, i32 6
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %58

54:                                               ; preds = %47
  %55 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %55, i32 0, i32 6
  %57 = load i8*, i8** %56, align 8
  br label %58

58:                                               ; preds = %54, %53
  %59 = phi i8* [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), %53 ], [ %57, %54 ]
  call void @gz_error(%struct.gz_state* noundef %48, i32 noundef -3, i8* noundef %59)
  store i32 -1, i32* %2, align 4
  br label %99

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %63 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 1
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi i1 [ false, %61 ], [ %68, %66 ]
  br i1 %70, label %12, label %71, !llvm.loop !15

71:                                               ; preds = %69, %27
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %74 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = sub i32 %72, %75
  %77 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %78 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %81 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %84 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = zext i32 %86 to i64
  %88 = sub i64 0, %87
  %89 = getelementptr inbounds i8, i8* %82, i64 %88
  %90 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %91 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %71
  %96 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %97 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %96, i32 0, i32 9
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %71
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %58, %42, %37, %21
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzgetc(%struct.gzFile_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  %7 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %8 = icmp eq %struct.gzFile_s* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %65

10:                                               ; preds = %1
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %12 = bitcast %struct.gzFile_s* %11 to %struct.gz_state*
  store %struct.gz_state* %12, %struct.gz_state** %6, align 8
  %13 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 7247
  br i1 %16, label %27, label %17

17:                                               ; preds = %10
  %18 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 17
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %24 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %23, i32 0, i32 17
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, -5
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %10
  store i32 -1, i32* %2, align 4
  br label %65

28:                                               ; preds = %22, %17
  %29 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %30 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add i32 %38, -1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %41 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %46 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %47, align 8
  %50 = load i8, i8* %48, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %65

52:                                               ; preds = %28
  %53 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %54 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %55 = call i32 @gzread(%struct.gzFile_s* noundef %53, i8* noundef %54, i32 noundef 1)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %63

59:                                               ; preds = %52
  %60 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %59, %58
  %64 = phi i32 [ -1, %58 ], [ %62, %59 ]
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %34, %27, %9
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzgetc_(%struct.gzFile_s* noundef %0) #0 {
  %2 = alloca %struct.gzFile_s*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %2, align 8
  %3 = load %struct.gzFile_s*, %struct.gzFile_s** %2, align 8
  %4 = call i32 @gzgetc(%struct.gzFile_s* noundef %3)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzungetc(i32 noundef %0, %struct.gzFile_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca %struct.gz_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.gzFile_s* %1, %struct.gzFile_s** %5, align 8
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %10 = icmp eq %struct.gzFile_s* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %171

12:                                               ; preds = %2
  %13 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %14 = bitcast %struct.gzFile_s* %13 to %struct.gz_state*
  store %struct.gz_state* %14, %struct.gz_state** %6, align 8
  %15 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %16 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 7247
  br i1 %18, label %29, label %19

19:                                               ; preds = %12
  %20 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %21 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %20, i32 0, i32 17
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 17
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, -5
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %12
  store i32 -1, i32* %3, align 4
  br label %171

30:                                               ; preds = %24, %19
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
  %42 = call i32 @gz_skip(%struct.gz_state* noundef %38, i64 noundef %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %171

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %171

50:                                               ; preds = %46
  %51 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %52 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %50
  %57 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %58 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %61 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %60, i32 0, i32 7
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %64 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %62, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 -1
  %70 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %71 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %71, i32 0, i32 1
  store i8* %69, i8** %72, align 8
  %73 = load i32, i32* %4, align 4
  %74 = trunc i32 %73 to i8
  %75 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %76 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  store i8 %74, i8* %79, align 1
  %80 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %81 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, -1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %86 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %85, i32 0, i32 12
  store i32 0, i32* %86, align 4
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %3, align 4
  br label %171

88:                                               ; preds = %50
  %89 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %90 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %94 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 %95, 1
  %97 = icmp eq i32 %92, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  call void @gz_error(%struct.gz_state* noundef %99, i32 noundef -3, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %171

100:                                              ; preds = %88
  %101 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %102 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %106 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %105, i32 0, i32 7
  %107 = load i8*, i8** %106, align 8
  %108 = icmp eq i8* %104, %107
  br i1 %108, label %109, label %145

109:                                              ; preds = %100
  %110 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %111 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %110, i32 0, i32 7
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %114 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %112, i64 %117
  store i8* %118, i8** %7, align 8
  %119 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %120 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %119, i32 0, i32 7
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %123 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = shl i32 %124, 1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %121, i64 %126
  store i8* %127, i8** %8, align 8
  br label %128

128:                                              ; preds = %134, %109
  %129 = load i8*, i8** %7, align 8
  %130 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %131 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %130, i32 0, i32 7
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ugt i8* %129, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load i8*, i8** %7, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 -1
  store i8* %136, i8** %7, align 8
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 -1
  store i8* %139, i8** %8, align 8
  store i8 %137, i8* %139, align 1
  br label %128, !llvm.loop !16

140:                                              ; preds = %128
  %141 = load i8*, i8** %8, align 8
  %142 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %143 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %143, i32 0, i32 1
  store i8* %141, i8** %144, align 8
  br label %145

145:                                              ; preds = %140, %100
  %146 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %147 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add i32 %149, 1
  store i32 %150, i32* %148, align 8
  %151 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %152 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 -1
  store i8* %155, i8** %153, align 8
  %156 = load i32, i32* %4, align 4
  %157 = trunc i32 %156 to i8
  %158 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %159 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  store i8 %157, i8* %162, align 1
  %163 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %164 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, -1
  store i64 %167, i64* %165, align 8
  %168 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %169 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %168, i32 0, i32 12
  store i32 0, i32* %169, align 4
  %170 = load i32, i32* %4, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %145, %98, %56, %49, %44, %29, %11
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @gzgets(%struct.gzFile_s* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %14 = icmp eq %struct.gzFile_s* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %3
  store i8* null, i8** %4, align 8
  br label %175

22:                                               ; preds = %18
  %23 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %24 = bitcast %struct.gzFile_s* %23 to %struct.gz_state*
  store %struct.gz_state* %24, %struct.gz_state** %12, align 8
  %25 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 7247
  br i1 %28, label %39, label %29

29:                                               ; preds = %22
  %30 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 17
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 17
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, -5
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %22
  store i8* null, i8** %4, align 8
  br label %175

40:                                               ; preds = %34, %29
  %41 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %42 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %41, i32 0, i32 16
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %47 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %46, i32 0, i32 16
  store i32 0, i32* %47, align 8
  %48 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %49 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %50 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %49, i32 0, i32 15
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @gz_skip(%struct.gz_state* noundef %48, i64 noundef %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i8* null, i8** %4, align 8
  br label %175

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %40
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %10, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sub i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %166

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %163, %62
  %64 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %65 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %71 = call i32 @gz_fetch(%struct.gz_state* noundef %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i8* null, i8** %4, align 8
  br label %175

74:                                               ; preds = %69, %63
  %75 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %76 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %82 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %81, i32 0, i32 12
  store i32 1, i32* %82, align 4
  br label %165

83:                                               ; preds = %74
  %84 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %85 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = icmp ugt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  br label %97

92:                                               ; preds = %83
  %93 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %94 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  br label %97

97:                                               ; preds = %92, %90
  %98 = phi i32 [ %91, %90 ], [ %96, %92 ]
  store i32 %98, i32* %9, align 4
  %99 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %100 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = call i8* @memchr(i8* noundef %102, i32 noundef 10, i64 noundef %104)
  store i8* %105, i8** %11, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %97
  %109 = load i8*, i8** %11, align 8
  %110 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %111 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = ptrtoint i8* %109 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = add i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %108, %97
  %120 = load i8*, i8** %6, align 8
  %121 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %122 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = zext i32 %125 to i64
  %127 = load i8*, i8** %6, align 8
  %128 = call i64 @llvm.objectsize.i64.p0i8(i8* %127, i1 false, i1 true, i1 false)
  %129 = call i8* @__memcpy_chk(i8* noundef %120, i8* noundef %124, i64 noundef %126, i64 noundef %128) #5
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %132 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub i32 %134, %130
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %138 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = zext i32 %136 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %139, align 8
  %143 = load i32, i32* %9, align 4
  %144 = zext i32 %143 to i64
  %145 = load %struct.gz_state*, %struct.gz_state** %12, align 8
  %146 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, %144
  store i64 %149, i64* %147, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %8, align 4
  %152 = sub i32 %151, %150
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i8*, i8** %6, align 8
  %155 = zext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %6, align 8
  br label %157

157:                                              ; preds = %119
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i8*, i8** %11, align 8
  %162 = icmp eq i8* %161, null
  br label %163

163:                                              ; preds = %160, %157
  %164 = phi i1 [ false, %157 ], [ %162, %160 ]
  br i1 %164, label %63, label %165, !llvm.loop !17

165:                                              ; preds = %163, %80
  br label %166

166:                                              ; preds = %165, %56
  %167 = load i8*, i8** %6, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = icmp eq i8* %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store i8* null, i8** %4, align 8
  br label %175

171:                                              ; preds = %166
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  store i8 0, i8* %173, align 1
  %174 = load i8*, i8** %10, align 8
  store i8* %174, i8** %4, align 8
  br label %175

175:                                              ; preds = %171, %170, %73, %54, %39, %21
  %176 = load i8*, i8** %4, align 8
  ret i8* %176
}

declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzdirect(%struct.gzFile_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  %5 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %6 = icmp eq %struct.gzFile_s* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

8:                                                ; preds = %1
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %10 = bitcast %struct.gzFile_s* %9 to %struct.gz_state*
  store %struct.gz_state* %10, %struct.gz_state** %4, align 8
  %11 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 7247
  br i1 %14, label %15, label %29

15:                                               ; preds = %8
  %16 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %22 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %28 = call i32 @gz_look(%struct.gz_state* noundef %27)
  br label %29

29:                                               ; preds = %26, %20, %15, %8
  %30 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gz_look(%struct.gz_state* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gz_state*, align 8
  %4 = alloca %struct.z_stream_s*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %3, align 8
  %5 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %6 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %5, i32 0, i32 19
  store %struct.z_stream_s* %6, %struct.z_stream_s** %4, align 8
  %7 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %8 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %92

11:                                               ; preds = %1
  %12 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %13 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @malloc(i64 noundef %15) #6
  %17 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %20 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @malloc(i64 noundef %23) #6
  %25 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  %27 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 6
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %11
  %32 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 7
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %31, %11
  %37 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %38 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %37, i32 0, i32 7
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %43 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %42, i32 0, i32 7
  %44 = load i8*, i8** %43, align 8
  call void @free(i8* noundef %44)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %47 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %46, i32 0, i32 6
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %52 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %51, i32 0, i32 6
  %53 = load i8*, i8** %52, align 8
  call void @free(i8* noundef %53)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  call void @gz_error(%struct.gz_state* noundef %55, i32 noundef -4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %192

56:                                               ; preds = %31
  %57 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %58 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %61 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %63 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %62, i32 0, i32 19
  %64 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %63, i32 0, i32 8
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %64, align 8
  %65 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %66 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %65, i32 0, i32 19
  %67 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %66, i32 0, i32 9
  store void (i8*, i8*)* null, void (i8*, i8*)** %67, align 8
  %68 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %69 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %68, i32 0, i32 19
  %70 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %69, i32 0, i32 10
  store i8* null, i8** %70, align 8
  %71 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %72 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %71, i32 0, i32 19
  %73 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %72, i32 0, i32 1
  store i32 0, i32* %73, align 8
  %74 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %75 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %74, i32 0, i32 19
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %75, i32 0, i32 0
  store i8* null, i8** %76, align 8
  %77 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %78 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %77, i32 0, i32 19
  %79 = call i32 @inflateInit2_(%struct.z_stream_s* noundef %78, i32 noundef 31, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 noundef 112)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %56
  %82 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %83 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %82, i32 0, i32 7
  %84 = load i8*, i8** %83, align 8
  call void @free(i8* noundef %84)
  %85 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %86 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %85, i32 0, i32 6
  %87 = load i8*, i8** %86, align 8
  call void @free(i8* noundef %87)
  %88 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %89 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %88, i32 0, i32 4
  store i32 0, i32* %89, align 8
  %90 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  call void @gz_error(%struct.gz_state* noundef %90, i32 noundef -4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %192

91:                                               ; preds = %56
  br label %92

92:                                               ; preds = %91, %1
  %93 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %94 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ult i32 %95, 2
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %99 = call i32 @gz_avail(%struct.gz_state* noundef %98)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 -1, i32* %2, align 4
  br label %192

102:                                              ; preds = %97
  %103 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %104 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %192

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %92
  %110 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %111 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp ugt i32 %112, 1
  br i1 %113, label %114, label %137

114:                                              ; preds = %109
  %115 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %116 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 31
  br i1 %121, label %122, label %137

122:                                              ; preds = %114
  %123 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %124 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 139
  br i1 %129, label %130, label %137

130:                                              ; preds = %122
  %131 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %132 = call i32 @inflateReset(%struct.z_stream_s* noundef %131)
  %133 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %134 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %133, i32 0, i32 9
  store i32 2, i32* %134, align 4
  %135 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %136 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %135, i32 0, i32 8
  store i32 0, i32* %136, align 8
  store i32 0, i32* %2, align 4
  br label %192

137:                                              ; preds = %122, %114, %109
  %138 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %139 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %144 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %143, i32 0, i32 1
  store i32 0, i32* %144, align 8
  %145 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %146 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %145, i32 0, i32 11
  store i32 1, i32* %146, align 8
  %147 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %148 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  store i32 0, i32* %2, align 4
  br label %192

150:                                              ; preds = %137
  %151 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %152 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %151, i32 0, i32 7
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %155 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %155, i32 0, i32 1
  store i8* %153, i8** %156, align 8
  %157 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %158 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %187

161:                                              ; preds = %150
  %162 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %163 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %167 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %170 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = zext i32 %171 to i64
  %173 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %174 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @llvm.objectsize.i64.p0i8(i8* %176, i1 false, i1 true, i1 false)
  %178 = call i8* @__memcpy_chk(i8* noundef %165, i8* noundef %168, i64 noundef %172, i64 noundef %177) #5
  %179 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %180 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %183 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %186 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %185, i32 0, i32 1
  store i32 0, i32* %186, align 8
  br label %187

187:                                              ; preds = %161, %150
  %188 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %189 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %188, i32 0, i32 9
  store i32 1, i32* %189, align 4
  %190 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %191 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %190, i32 0, i32 8
  store i32 1, i32* %191, align 8
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %187, %142, %130, %107, %101, %81, %54
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzclose_r(%struct.gzFile_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  %7 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %8 = icmp eq %struct.gzFile_s* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %57

10:                                               ; preds = %1
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %12 = bitcast %struct.gzFile_s* %11 to %struct.gz_state*
  store %struct.gz_state* %12, %struct.gz_state** %6, align 8
  %13 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 7247
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 -2, i32* %2, align 4
  br label %57

18:                                               ; preds = %10
  %19 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %20 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %25 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %24, i32 0, i32 19
  %26 = call i32 @inflateEnd(%struct.z_stream_s* noundef %25)
  %27 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 7
  %29 = load i8*, i8** %28, align 8
  call void @free(i8* noundef %29)
  %30 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 6
  %32 = load i8*, i8** %31, align 8
  call void @free(i8* noundef %32)
  br label %33

33:                                               ; preds = %23, %18
  %34 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %35 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %34, i32 0, i32 17
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, -5
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 -5, i32 0
  store i32 %39, i32* %5, align 4
  %40 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  call void @gz_error(%struct.gz_state* noundef %40, i32 noundef 0, i8* noundef null)
  %41 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %42 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  call void @free(i8* noundef %43)
  %44 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %45 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @"\01_close"(i32 noundef %46)
  store i32 %47, i32* %4, align 4
  %48 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %49 = bitcast %struct.gz_state* %48 to i8*
  call void @free(i8* noundef %49)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %55

53:                                               ; preds = %33
  %54 = load i32, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ -1, %52 ], [ %54, %53 ]
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %17, %9
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare i32 @inflateEnd(%struct.z_stream_s* noundef) #1

declare void @free(i8* noundef) #1

declare i32 @"\01_close"(i32 noundef) #1

declare i64 @"\01_read"(i32 noundef, i8* noundef, i64 noundef) #1

declare i8* @"\01_strerror"(i32 noundef) #1

declare i32* @__error() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gz_avail(%struct.gz_state* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gz_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.gz_state* %0, %struct.gz_state** %3, align 8
  %9 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %10 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %9, i32 0, i32 19
  store %struct.z_stream_s* %10, %struct.z_stream_s** %5, align 8
  %11 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 17
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 17
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, -5
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %84

21:                                               ; preds = %15, %1
  %22 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %21
  %27 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 6
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %6, align 8
  %35 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  %38 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %47, %31
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %7, align 8
  %44 = load i8, i8* %42, align 1
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  store i8 %44, i8* %45, align 1
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %41, label %51, !llvm.loop !18

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %54 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %55 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %54, i32 0, i32 6
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %58 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  %62 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %63 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %66 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sub i32 %64, %67
  %69 = call i32 @gz_load(%struct.gz_state* noundef %53, i8* noundef %61, i32 noundef %68, i32* noundef %4)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %52
  store i32 -1, i32* %2, align 4
  br label %84

72:                                               ; preds = %52
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %75 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %79 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %78, i32 0, i32 6
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %82 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %72, %21
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %71, %20
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare i32 @inflate(%struct.z_stream_s* noundef, i32 noundef) #1

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #4

declare i32 @inflateInit2_(%struct.z_stream_s* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare i32 @inflateReset(%struct.z_stream_s* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind }
attributes #6 = { allocsize(0) }

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
