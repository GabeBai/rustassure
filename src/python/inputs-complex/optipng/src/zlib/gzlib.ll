; ModuleID = 'gzlib.c'
source_filename = "gzlib.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.gzFile_s = type { i32, i8*, i64 }
%struct.gz_state = type { %struct.gzFile_s, i32, i32, i8*, i32, i32, i8*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i8*, %struct.z_stream_s }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"<fd:%d>\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.gzFile_s* @gzopen(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.gzFile_s* @gz_open(i8* noundef %5, i32 noundef -1, i8* noundef %6)
  ret %struct.gzFile_s* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.gzFile_s* @gz_open(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gz_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8
  br label %221

16:                                               ; preds = %3
  %17 = call i8* @malloc(i64 noundef 232) #4
  %18 = bitcast i8* %17 to %struct.gz_state*
  store %struct.gz_state* %18, %struct.gz_state** %8, align 8
  %19 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %20 = icmp eq %struct.gz_state* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8
  br label %221

22:                                               ; preds = %16
  %23 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %24 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %23, i32 0, i32 4
  store i32 0, i32* %24, align 8
  %25 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %26 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %25, i32 0, i32 5
  store i32 8192, i32* %26, align 4
  %27 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 18
  store i8* null, i8** %28, align 8
  %29 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %30 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %29, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %32 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %31, i32 0, i32 13
  store i32 -1, i32* %32, align 8
  %33 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %34 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %33, i32 0, i32 14
  store i32 0, i32* %34, align 4
  %35 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 8
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %88, %22
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sge i32 %44, 48
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sle i32 %49, 57
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 %54, 48
  %56 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %57 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %56, i32 0, i32 13
  store i32 %55, i32* %57, align 8
  br label %88

58:                                               ; preds = %46, %41
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  switch i32 %61, label %86 [
    i32 114, label %62
    i32 43, label %65
    i32 98, label %68
    i32 101, label %69
    i32 120, label %70
    i32 102, label %71
    i32 104, label %74
    i32 82, label %77
    i32 70, label %80
    i32 84, label %83
  ]

62:                                               ; preds = %58
  %63 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %64 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %63, i32 0, i32 1
  store i32 7247, i32* %64, align 8
  br label %87

65:                                               ; preds = %58
  %66 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %67 = bitcast %struct.gz_state* %66 to i8*
  call void @free(i8* noundef %67)
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8
  br label %221

68:                                               ; preds = %58
  br label %87

69:                                               ; preds = %58
  store i32 1, i32* %11, align 4
  br label %87

70:                                               ; preds = %58
  store i32 1, i32* %12, align 4
  br label %87

71:                                               ; preds = %58
  %72 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %73 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %72, i32 0, i32 14
  store i32 1, i32* %73, align 4
  br label %87

74:                                               ; preds = %58
  %75 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %76 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %75, i32 0, i32 14
  store i32 2, i32* %76, align 4
  br label %87

77:                                               ; preds = %58
  %78 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %79 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %78, i32 0, i32 14
  store i32 3, i32* %79, align 4
  br label %87

80:                                               ; preds = %58
  %81 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %82 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %81, i32 0, i32 14
  store i32 4, i32* %82, align 4
  br label %87

83:                                               ; preds = %58
  %84 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %85 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %84, i32 0, i32 8
  store i32 1, i32* %85, align 8
  br label %87

86:                                               ; preds = %58
  br label %87

87:                                               ; preds = %86, %83, %80, %77, %74, %71, %70, %69, %68, %62
  br label %88

88:                                               ; preds = %87, %51
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %7, align 8
  br label %37, !llvm.loop !10

91:                                               ; preds = %37
  %92 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %93 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %98 = bitcast %struct.gz_state* %97 to i8*
  call void @free(i8* noundef %98)
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8
  br label %221

99:                                               ; preds = %91
  %100 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %101 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 7247
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %106 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %111 = bitcast %struct.gz_state* %110 to i8*
  call void @free(i8* noundef %111)
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8
  br label %221

112:                                              ; preds = %104
  %113 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %114 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %113, i32 0, i32 8
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %99
  %116 = load i8*, i8** %5, align 8
  %117 = call i64 @strlen(i8* noundef %116)
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, 1
  %120 = call i8* @malloc(i64 noundef %119) #4
  %121 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %122 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %124 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %115
  %128 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %129 = bitcast %struct.gz_state* %128 to i8*
  call void @free(i8* noundef %129)
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8
  br label %221

130:                                              ; preds = %115
  %131 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %132 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %134, 1
  %136 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %137 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @llvm.objectsize.i64.p0i8(i8* %138, i1 false, i1 true, i1 false)
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %133, i64 noundef %135, i32 noundef 0, i64 noundef %139, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef %140)
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 16777216, i32 0
  %146 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %147 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 7247
  br i1 %149, label %150, label %151

150:                                              ; preds = %130
  br label %164

151:                                              ; preds = %130
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 2048, i32 0
  %156 = or i32 513, %155
  %157 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %158 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 31153
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 1024, i32 8
  %163 = or i32 %156, %162
  br label %164

164:                                              ; preds = %151, %150
  %165 = phi i32 [ 0, %150 ], [ %163, %151 ]
  %166 = or i32 %145, %165
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp sgt i32 %167, -1
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* %6, align 4
  br label %175

171:                                              ; preds = %164
  %172 = load i8*, i8** %5, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 (i8*, i32, ...) @"\01_open"(i8* noundef %172, i32 noundef %173, i32 noundef 438)
  br label %175

175:                                              ; preds = %171, %169
  %176 = phi i32 [ %170, %169 ], [ %174, %171 ]
  %177 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %178 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %180 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %189

183:                                              ; preds = %175
  %184 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %185 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %184, i32 0, i32 3
  %186 = load i8*, i8** %185, align 8
  call void @free(i8* noundef %186)
  %187 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %188 = bitcast %struct.gz_state* %187 to i8*
  call void @free(i8* noundef %188)
  store %struct.gzFile_s* null, %struct.gzFile_s** %4, align 8
  br label %221

189:                                              ; preds = %175
  %190 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %191 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %196 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %195, i32 0, i32 1
  store i32 31153, i32* %196, align 8
  br label %197

197:                                              ; preds = %194, %189
  %198 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %199 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 7247
  br i1 %201, label %202, label %217

202:                                              ; preds = %197
  %203 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %204 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @lseek(i32 noundef %205, i64 noundef 0, i32 noundef 1)
  %207 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %208 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %207, i32 0, i32 10
  store i64 %206, i64* %208, align 8
  %209 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %210 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %209, i32 0, i32 10
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %211, -1
  br i1 %212, label %213, label %216

213:                                              ; preds = %202
  %214 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %215 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %214, i32 0, i32 10
  store i64 0, i64* %215, align 8
  br label %216

216:                                              ; preds = %213, %202
  br label %217

217:                                              ; preds = %216, %197
  %218 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  call void @gz_reset(%struct.gz_state* noundef %218)
  %219 = load %struct.gz_state*, %struct.gz_state** %8, align 8
  %220 = bitcast %struct.gz_state* %219 to %struct.gzFile_s*
  store %struct.gzFile_s* %220, %struct.gzFile_s** %4, align 8
  br label %221

221:                                              ; preds = %217, %183, %127, %109, %96, %65, %21, %15
  %222 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8
  ret %struct.gzFile_s* %222
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.gzFile_s* @gzopen64(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.gzFile_s* @gz_open(i8* noundef %5, i32 noundef -1, i8* noundef %6)
  ret %struct.gzFile_s* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.gzFile_s* @gzdopen(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gzFile_s*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = call i8* @malloc(i64 noundef 19) #4
  store i8* %11, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store %struct.gzFile_s* null, %struct.gzFile_s** %3, align 8
  br label %26

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @llvm.objectsize.i64.p0i8(i8* %16, i1 false, i1 true, i1 false)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %15, i64 noundef 19, i32 noundef 0, i64 noundef %17, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %18)
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call %struct.gzFile_s* @gz_open(i8* noundef %20, i32 noundef %21, i8* noundef %22)
  store %struct.gzFile_s* %23, %struct.gzFile_s** %7, align 8
  %24 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %24)
  %25 = load %struct.gzFile_s*, %struct.gzFile_s** %7, align 8
  store %struct.gzFile_s* %25, %struct.gzFile_s** %3, align 8
  br label %26

26:                                               ; preds = %14, %13
  %27 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  ret %struct.gzFile_s* %27
}

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #1

declare i32 @__snprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzbuffer(%struct.gzFile_s* noundef %0, i32 noundef %1) #0 {
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
  br label %37

10:                                               ; preds = %2
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8
  %12 = bitcast %struct.gzFile_s* %11 to %struct.gz_state*
  store %struct.gz_state* %12, %struct.gz_state** %6, align 8
  %13 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 7247
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 31153
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %37

23:                                               ; preds = %17, %10
  %24 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %25 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %37

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 2, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %28, %22, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzrewind(%struct.gzFile_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  %5 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %6 = icmp eq %struct.gzFile_s* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %10 = bitcast %struct.gzFile_s* %9 to %struct.gz_state*
  store %struct.gz_state* %10, %struct.gz_state** %4, align 8
  %11 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 7247
  br i1 %14, label %25, label %15

15:                                               ; preds = %8
  %16 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 17
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %22 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %21, i32 0, i32 17
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, -5
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %8
  store i32 -1, i32* %2, align 4
  br label %38

26:                                               ; preds = %20, %15
  %27 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 10
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @lseek(i32 noundef %29, i64 noundef %32, i32 noundef 0)
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %38

36:                                               ; preds = %26
  %37 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  call void @gz_reset(%struct.gz_state* noundef %37)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %35, %25, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @gz_reset(%struct.gz_state* noundef %0) #0 {
  %2 = alloca %struct.gz_state*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %2, align 8
  %3 = load %struct.gz_state*, %struct.gz_state** %2, align 8
  %4 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load %struct.gz_state*, %struct.gz_state** %2, align 8
  %7 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.gz_state*, %struct.gz_state** %2, align 8
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 11
  store i32 0, i32* %12, align 8
  %13 = load %struct.gz_state*, %struct.gz_state** %2, align 8
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 12
  store i32 0, i32* %14, align 4
  %15 = load %struct.gz_state*, %struct.gz_state** %2, align 8
  %16 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %15, i32 0, i32 9
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.gz_state*, %struct.gz_state** %2, align 8
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 16
  store i32 0, i32* %19, align 8
  %20 = load %struct.gz_state*, %struct.gz_state** %2, align 8
  call void @gz_error(%struct.gz_state* noundef %20, i32 noundef 0, i8* noundef null)
  %21 = load %struct.gz_state*, %struct.gz_state** %2, align 8
  %22 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.gz_state*, %struct.gz_state** %2, align 8
  %25 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %24, i32 0, i32 19
  %26 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %25, i32 0, i32 1
  store i32 0, i32* %26, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @gzseek64(%struct.gzFile_s* noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.gzFile_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %12 = icmp eq %struct.gzFile_s* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64 -1, i64* %4, align 8
  br label %214

14:                                               ; preds = %3
  %15 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %16 = bitcast %struct.gzFile_s* %15 to %struct.gz_state*
  store %struct.gz_state* %16, %struct.gz_state** %10, align 8
  %17 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 7247
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 31153
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i64 -1, i64* %4, align 8
  br label %214

27:                                               ; preds = %21, %14
  %28 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %29 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %28, i32 0, i32 17
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %34 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %33, i32 0, i32 17
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, -5
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i64 -1, i64* %4, align 8
  br label %214

38:                                               ; preds = %32, %27
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i64 -1, i64* %4, align 8
  br label %214

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %50 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %67

55:                                               ; preds = %45
  %56 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %57 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %56, i32 0, i32 16
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %62 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %61, i32 0, i32 15
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %60, %55
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %69 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %68, i32 0, i32 16
  store i32 0, i32* %69, align 8
  %70 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %71 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 7247
  br i1 %73, label %74, label %126

74:                                               ; preds = %67
  %75 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %76 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %126

79:                                               ; preds = %74
  %80 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %81 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = add nsw i64 %83, %84
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %126

87:                                               ; preds = %79
  %88 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %89 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %93 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = zext i32 %95 to i64
  %97 = sub nsw i64 %91, %96
  %98 = call i64 @lseek(i32 noundef %90, i64 noundef %97, i32 noundef 1)
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* %9, align 8
  %100 = icmp eq i64 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  store i64 -1, i64* %4, align 8
  br label %214

102:                                              ; preds = %87
  %103 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %104 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %107 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %106, i32 0, i32 11
  store i32 0, i32* %107, align 8
  %108 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %109 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %108, i32 0, i32 12
  store i32 0, i32* %109, align 4
  %110 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %111 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %110, i32 0, i32 16
  store i32 0, i32* %111, align 8
  %112 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  call void @gz_error(%struct.gz_state* noundef %112, i32 noundef 0, i8* noundef null)
  %113 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %114 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %113, i32 0, i32 19
  %115 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %114, i32 0, i32 1
  store i32 0, i32* %115, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %118 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %116
  store i64 %121, i64* %119, align 8
  %122 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %123 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %4, align 8
  br label %214

126:                                              ; preds = %79, %74, %67
  %127 = load i64, i64* %6, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %126
  %130 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %131 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 7247
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i64 -1, i64* %4, align 8
  br label %214

135:                                              ; preds = %129
  %136 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %137 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %6, align 8
  %141 = add nsw i64 %140, %139
  store i64 %141, i64* %6, align 8
  %142 = load i64, i64* %6, align 8
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  store i64 -1, i64* %4, align 8
  br label %214

145:                                              ; preds = %135
  %146 = load %struct.gzFile_s*, %struct.gzFile_s** %5, align 8
  %147 = call i32 @gzrewind(%struct.gzFile_s* noundef %146)
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i64 -1, i64* %4, align 8
  br label %214

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150, %126
  %152 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %153 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 7247
  br i1 %155, label %156, label %198

156:                                              ; preds = %151
  %157 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %158 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = zext i32 %160 to i64
  %162 = load i64, i64* %6, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load i64, i64* %6, align 8
  %166 = trunc i64 %165 to i32
  br label %172

167:                                              ; preds = %156
  %168 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %169 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  br label %172

172:                                              ; preds = %167, %164
  %173 = phi i32 [ %166, %164 ], [ %171, %167 ]
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %176 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sub i32 %178, %174
  store i32 %179, i32* %177, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %182 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = zext i32 %180 to i64
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8* %186, i8** %183, align 8
  %187 = load i32, i32* %8, align 4
  %188 = zext i32 %187 to i64
  %189 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %190 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, %188
  store i64 %193, i64* %191, align 8
  %194 = load i32, i32* %8, align 4
  %195 = zext i32 %194 to i64
  %196 = load i64, i64* %6, align 8
  %197 = sub nsw i64 %196, %195
  store i64 %197, i64* %6, align 8
  br label %198

198:                                              ; preds = %172, %151
  %199 = load i64, i64* %6, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %203 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %202, i32 0, i32 16
  store i32 1, i32* %203, align 8
  %204 = load i64, i64* %6, align 8
  %205 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %206 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %205, i32 0, i32 15
  store i64 %204, i64* %206, align 8
  br label %207

207:                                              ; preds = %201, %198
  %208 = load %struct.gz_state*, %struct.gz_state** %10, align 8
  %209 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* %6, align 8
  %213 = add nsw i64 %211, %212
  store i64 %213, i64* %4, align 8
  br label %214

214:                                              ; preds = %207, %149, %144, %134, %102, %101, %44, %37, %26, %13
  %215 = load i64, i64* %4, align 8
  ret i64 %215
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define hidden void @gz_error(%struct.gz_state* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.gz_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %8 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %7, i32 0, i32 18
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %13 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %12, i32 0, i32 17
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, -4
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 18
  %19 = load i8*, i8** %18, align 8
  call void @free(i8* noundef %19)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %22 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %21, i32 0, i32 18
  store i8* null, i8** %22, align 8
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, -5
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %31 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %26, %23
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %36 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %35, i32 0, i32 17
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %81

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, -4
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %81

44:                                               ; preds = %40
  %45 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %46 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strlen(i8* noundef %47)
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strlen(i8* noundef %49)
  %51 = add i64 %48, %50
  %52 = add i64 %51, 3
  %53 = call i8* @malloc(i64 noundef %52) #4
  %54 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %55 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %54, i32 0, i32 18
  store i8* %53, i8** %55, align 8
  %56 = icmp eq i8* %53, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  %58 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %59 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %58, i32 0, i32 17
  store i32 -4, i32* %59, align 4
  br label %81

60:                                               ; preds = %44
  %61 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %62 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %61, i32 0, i32 18
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %65 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strlen(i8* noundef %66)
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @strlen(i8* noundef %68)
  %70 = add i64 %67, %69
  %71 = add i64 %70, 3
  %72 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %73 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %72, i32 0, i32 18
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @llvm.objectsize.i64.p0i8(i8* %74, i1 false, i1 true, i1 false)
  %76 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %77 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %63, i64 noundef %71, i32 noundef 0, i64 noundef %75, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %78, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef %79)
  br label %81

81:                                               ; preds = %60, %57, %43, %39
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @gzseek(%struct.gzFile_s* noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @gzseek64(%struct.gzFile_s* noundef %8, i64 noundef %9, i32 noundef %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i64 [ %16, %15 ], [ -1, %17 ]
  ret i64 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @gztell64(%struct.gzFile_s* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  %5 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %6 = icmp eq %struct.gzFile_s* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 -1, i64* %2, align 8
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %10 = bitcast %struct.gzFile_s* %9 to %struct.gz_state*
  store %struct.gz_state* %10, %struct.gz_state** %4, align 8
  %11 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 7247
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 31153
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i64 -1, i64* %2, align 8
  br label %38

21:                                               ; preds = %15, %8
  %22 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.gzFile_s, %struct.gzFile_s* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %27 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %26, i32 0, i32 16
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %32 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %31, i32 0, i32 15
  %33 = load i64, i64* %32, align 8
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i64 [ %33, %30 ], [ 0, %34 ]
  %37 = add nsw i64 %25, %36
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %35, %20, %7
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @gztell(%struct.gzFile_s* noundef %0) #0 {
  %2 = alloca %struct.gzFile_s*, align 8
  %3 = alloca i64, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %2, align 8
  %4 = load %struct.gzFile_s*, %struct.gzFile_s** %2, align 8
  %5 = call i64 @gztell64(%struct.gzFile_s* noundef %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i64 [ %10, %9 ], [ -1, %11 ]
  ret i64 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @gzoffset64(%struct.gzFile_s* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  %6 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %7 = icmp eq %struct.gzFile_s* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 -1, i64* %2, align 8
  br label %45

9:                                                ; preds = %1
  %10 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8
  %11 = bitcast %struct.gzFile_s* %10 to %struct.gz_state*
  store %struct.gz_state* %11, %struct.gz_state** %5, align 8
  %12 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %13 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 7247
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %18 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 31153
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i64 -1, i64* %2, align 8
  br label %45

22:                                               ; preds = %16, %9
  %23 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %24 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @lseek(i32 noundef %25, i64 noundef 0, i32 noundef 1)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp eq i64 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i64 -1, i64* %2, align 8
  br label %45

30:                                               ; preds = %22
  %31 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %32 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 7247
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.gz_state*, %struct.gz_state** %5, align 8
  %37 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %36, i32 0, i32 19
  %38 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %35, %30
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %43, %29, %21, %8
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @gzoffset(%struct.gzFile_s* noundef %0) #0 {
  %2 = alloca %struct.gzFile_s*, align 8
  %3 = alloca i64, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %2, align 8
  %4 = load %struct.gzFile_s*, %struct.gzFile_s** %2, align 8
  %5 = call i64 @gzoffset64(%struct.gzFile_s* noundef %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i64 [ %10, %9 ], [ -1, %11 ]
  ret i64 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gzeof(%struct.gzFile_s* noundef %0) #0 {
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
  %14 = icmp ne i32 %13, 7247
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %17 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 31153
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %33

21:                                               ; preds = %15, %8
  %22 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 7247
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.gz_state*, %struct.gz_state** %4, align 8
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %20, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @gzerror(%struct.gzFile_s* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8
  %8 = icmp eq %struct.gzFile_s* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %51

10:                                               ; preds = %2
  %11 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8
  %12 = bitcast %struct.gzFile_s* %11 to %struct.gz_state*
  store %struct.gz_state* %12, %struct.gz_state** %6, align 8
  %13 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %14 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 7247
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %19 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 31153
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %51

23:                                               ; preds = %17, %10
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %28 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %27, i32 0, i32 17
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %33 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %32, i32 0, i32 17
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, -4
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %49

37:                                               ; preds = %31
  %38 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %39 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %38, i32 0, i32 18
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %47

43:                                               ; preds = %37
  %44 = load %struct.gz_state*, %struct.gz_state** %6, align 8
  %45 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %44, i32 0, i32 18
  %46 = load i8*, i8** %45, align 8
  br label %47

47:                                               ; preds = %43, %42
  %48 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %42 ], [ %46, %43 ]
  br label %49

49:                                               ; preds = %47, %36
  %50 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %36 ], [ %48, %47 ]
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %49, %22, %9
  %52 = load i8*, i8** %3, align 8
  ret i8* %52
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @gzclearerr(%struct.gzFile_s* noundef %0) #0 {
  %2 = alloca %struct.gzFile_s*, align 8
  %3 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %2, align 8
  %4 = load %struct.gzFile_s*, %struct.gzFile_s** %2, align 8
  %5 = icmp eq %struct.gzFile_s* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %32

7:                                                ; preds = %1
  %8 = load %struct.gzFile_s*, %struct.gzFile_s** %2, align 8
  %9 = bitcast %struct.gzFile_s* %8 to %struct.gz_state*
  store %struct.gz_state* %9, %struct.gz_state** %3, align 8
  %10 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %11 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 7247
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  %15 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %16 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 31153
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %32

20:                                               ; preds = %14, %7
  %21 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %22 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 7247
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %27 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %26, i32 0, i32 11
  store i32 0, i32* %27, align 8
  %28 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  %29 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %28, i32 0, i32 12
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.gz_state*, %struct.gz_state** %3, align 8
  call void @gz_error(%struct.gz_state* noundef %31, i32 noundef 0, i8* noundef null)
  br label %32

32:                                               ; preds = %30, %19, %6
  ret void
}

declare i64 @strlen(i8* noundef) #2

declare i32 @"\01_open"(i8* noundef, i32 noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { allocsize(0) }

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
