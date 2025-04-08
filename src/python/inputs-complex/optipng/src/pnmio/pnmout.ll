; ModuleID = 'pnmout.c'
source_filename = "pnmout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnm_struct = type { i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [11 x i8] c"P%c\0A%u %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"P%c\0A%u %u\0A%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"P7\0ADEPTH %u\0AWIDTH %u\0AHEIGHT %u\0AMAXVAL %u\0AENDHDR\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnm_fput_header(%struct.pnm_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnm_struct*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pnm_struct* %0, %struct.pnm_struct** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  %12 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %13 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %16 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %19 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %22 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %25 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %28 = call i32 @pnm_is_valid(%struct.pnm_struct* noundef %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %55 [
    i32 1, label %33
    i32 4, label %33
    i32 2, label %40
    i32 3, label %40
    i32 5, label %40
    i32 6, label %40
    i32 7, label %48
  ]

33:                                               ; preds = %31, %31
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 48
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %36, i32 noundef %37, i32 noundef %38)
  store i32 %39, i32* %11, align 4
  br label %57

40:                                               ; preds = %31, %31, %31, %31
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 48
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46)
  store i32 %47, i32* %11, align 4
  br label %57

48:                                               ; preds = %31
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53)
  store i32 %54, i32* %11, align 4
  br label %57

55:                                               ; preds = %31
  %56 = call i32* @__errno_location() #3
  store i32 22, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %62

57:                                               ; preds = %48, %40, %33
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 -1
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %55, %30
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @pnm_is_valid(%struct.pnm_struct* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnm_fput_values(%struct.pnm_struct* noundef %0, i32* noundef %1, i32 noundef %2, %struct._IO_FILE* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pnm_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.pnm_struct* %0, %struct.pnm_struct** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct._IO_FILE* %3, %struct._IO_FILE** %9, align 8
  %20 = load %struct.pnm_struct*, %struct.pnm_struct** %6, align 8
  %21 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.pnm_struct*, %struct.pnm_struct** %6, align 8
  %24 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.pnm_struct*, %struct.pnm_struct** %6, align 8
  %27 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.pnm_struct*, %struct.pnm_struct** %6, align 8
  %30 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = mul i64 %33, %35
  store i64 %36, i64* %14, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %14, align 8
  %40 = mul i64 %38, %39
  store i64 %40, i64* %15, align 8
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %261 [
    i32 1, label %42
    i32 2, label %75
    i32 3, label %75
    i32 4, label %104
    i32 5, label %142
    i32 6, label %142
    i32 7, label %142
  ]

42:                                               ; preds = %4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  br label %43

43:                                               ; preds = %71, %42
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* %15, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* %18, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 48, i32 49
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %56 = call i32 @putc(i32 noundef %54, %struct._IO_FILE* noundef %55)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %74

59:                                               ; preds = %47
  %60 = load i64, i64* %19, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %19, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  store i64 0, i64* %19, align 8
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %66 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %74

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %59
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %18, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %18, align 8
  br label %43, !llvm.loop !4

74:                                               ; preds = %68, %58, %43
  br label %263

75:                                               ; preds = %4, %4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  br label %76

76:                                               ; preds = %100, %75
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %15, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load i64, i64* %19, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %19, align 8
  %83 = load i64, i64* %14, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i64 0, i64* %19, align 8
  br label %86

86:                                               ; preds = %85, %80
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %88 = load i64, i64* %19, align 8
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %92 = load i32*, i32** %7, align 8
  %93 = load i64, i64* %18, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %87, i8* noundef %91, i32 noundef %95)
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %103

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %18, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %18, align 8
  br label %76, !llvm.loop !6

103:                                              ; preds = %98, %76
  br label %263

104:                                              ; preds = %4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  br label %105

105:                                              ; preds = %140, %104
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %15, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %141

109:                                              ; preds = %105
  store i32 0, i32* %16, align 4
  store i32 128, i32* %17, align 4
  br label %110

110:                                              ; preds = %131, %109
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = load i32*, i32** %7, align 8
  %115 = load i64, i64* %18, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %18, align 8
  %117 = getelementptr inbounds i32, i32* %114, i64 %115
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %16, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %16, align 4
  br label %124

124:                                              ; preds = %120, %113
  %125 = load i64, i64* %19, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %19, align 8
  %127 = load i64, i64* %14, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i64 0, i64* %19, align 8
  br label %134

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %17, align 4
  %133 = ashr i32 %132, 1
  store i32 %133, i32* %17, align 4
  br label %110, !llvm.loop !7

134:                                              ; preds = %129, %110
  %135 = load i32, i32* %16, align 4
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %137 = call i32 @putc(i32 noundef %135, %struct._IO_FILE* noundef %136)
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %141

140:                                              ; preds = %134
  br label %105, !llvm.loop !8

141:                                              ; preds = %139, %105
  br label %263

142:                                              ; preds = %4, %4, %4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ule i32 %143, 255
  br i1 %144, label %145, label %165

145:                                              ; preds = %142
  store i64 0, i64* %18, align 8
  br label %146

146:                                              ; preds = %161, %145
  %147 = load i64, i64* %18, align 8
  %148 = load i64, i64* %15, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load i32*, i32** %7, align 8
  %152 = load i64, i64* %18, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 255
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %157 = call i32 @putc(i32 noundef %155, %struct._IO_FILE* noundef %156)
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  br label %164

160:                                              ; preds = %150
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %18, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %18, align 8
  br label %146, !llvm.loop !9

164:                                              ; preds = %159, %146
  br label %260

165:                                              ; preds = %142
  %166 = load i32, i32* %13, align 4
  %167 = icmp ule i32 %166, 65535
  br i1 %167, label %168, label %198

168:                                              ; preds = %165
  store i64 0, i64* %18, align 8
  br label %169

169:                                              ; preds = %194, %168
  %170 = load i64, i64* %18, align 8
  %171 = load i64, i64* %15, align 8
  %172 = icmp ult i64 %170, %171
  br i1 %172, label %173, label %197

173:                                              ; preds = %169
  %174 = load i32*, i32** %7, align 8
  %175 = load i64, i64* %18, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = lshr i32 %177, 8
  %179 = and i32 %178, 255
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %181 = call i32 @putc(i32 noundef %179, %struct._IO_FILE* noundef %180)
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %192, label %183

183:                                              ; preds = %173
  %184 = load i32*, i32** %7, align 8
  %185 = load i64, i64* %18, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 255
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %190 = call i32 @putc(i32 noundef %188, %struct._IO_FILE* noundef %189)
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %193

192:                                              ; preds = %183, %173
  br label %197

193:                                              ; preds = %183
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %18, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %18, align 8
  br label %169, !llvm.loop !10

197:                                              ; preds = %192, %169
  br label %259

198:                                              ; preds = %165
  %199 = load i32, i32* %13, align 4
  %200 = icmp ule i32 %199, -1
  br i1 %200, label %201, label %256

201:                                              ; preds = %198
  store i64 0, i64* %18, align 8
  br label %202

202:                                              ; preds = %252, %201
  %203 = load i64, i64* %18, align 8
  %204 = load i64, i64* %15, align 8
  %205 = icmp ult i64 %203, %204
  br i1 %205, label %206, label %255

206:                                              ; preds = %202
  %207 = load i32, i32* %13, align 4
  %208 = icmp ugt i32 %207, 16777215
  br i1 %208, label %209, label %221

209:                                              ; preds = %206
  %210 = load i32*, i32** %7, align 8
  %211 = load i64, i64* %18, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = lshr i32 %213, 24
  %215 = and i32 %214, 255
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %217 = call i32 @putc(i32 noundef %215, %struct._IO_FILE* noundef %216)
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %220

219:                                              ; preds = %209
  br label %255

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %220, %206
  %222 = load i32*, i32** %7, align 8
  %223 = load i64, i64* %18, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = lshr i32 %225, 16
  %227 = and i32 %226, 255
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %229 = call i32 @putc(i32 noundef %227, %struct._IO_FILE* noundef %228)
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %250, label %231

231:                                              ; preds = %221
  %232 = load i32*, i32** %7, align 8
  %233 = load i64, i64* %18, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = lshr i32 %235, 8
  %237 = and i32 %236, 255
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %239 = call i32 @putc(i32 noundef %237, %struct._IO_FILE* noundef %238)
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %250, label %241

241:                                              ; preds = %231
  %242 = load i32*, i32** %7, align 8
  %243 = load i64, i64* %18, align 8
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, 255
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %248 = call i32 @putc(i32 noundef %246, %struct._IO_FILE* noundef %247)
  %249 = icmp eq i32 %248, -1
  br i1 %249, label %250, label %251

250:                                              ; preds = %241, %231, %221
  br label %255

251:                                              ; preds = %241
  br label %252

252:                                              ; preds = %251
  %253 = load i64, i64* %18, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %18, align 8
  br label %202, !llvm.loop !11

255:                                              ; preds = %250, %219, %202
  br label %258

256:                                              ; preds = %198
  %257 = call i32* @__errno_location() #3
  store i32 22, i32* %257, align 4
  store i32 0, i32* %5, align 4
  br label %269

258:                                              ; preds = %255
  br label %259

259:                                              ; preds = %258, %197
  br label %260

260:                                              ; preds = %259, %164
  br label %263

261:                                              ; preds = %4
  %262 = call i32* @__errno_location() #3
  store i32 22, i32* %262, align 4
  store i32 0, i32* %5, align 4
  br label %269

263:                                              ; preds = %260, %141, %103, %74
  %264 = load i64, i64* %18, align 8
  %265 = load i64, i64* %15, align 8
  %266 = icmp eq i64 %264, %265
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i32 1, i32 -1
  store i32 %268, i32* %5, align 4
  br label %269

269:                                              ; preds = %263, %261, %256
  %270 = load i32, i32* %5, align 4
  ret i32 %270
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnm_fput_bytes(%struct.pnm_struct* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pnm_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.pnm_struct* %0, %struct.pnm_struct** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct._IO_FILE* %4, %struct._IO_FILE** %11, align 8
  %23 = load %struct.pnm_struct*, %struct.pnm_struct** %7, align 8
  %24 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.pnm_struct*, %struct.pnm_struct** %7, align 8
  %27 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load %struct.pnm_struct*, %struct.pnm_struct** %7, align 8
  %30 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load %struct.pnm_struct*, %struct.pnm_struct** %7, align 8
  %33 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %13, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, i32* %14, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %36, %38
  store i64 %39, i64* %16, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %16, align 8
  %43 = mul i64 %41, %42
  store i64 %43, i64* %17, align 8
  %44 = load i32, i32* %15, align 4
  %45 = icmp ule i32 %44, 255
  br i1 %45, label %46, label %47

46:                                               ; preds = %5
  store i64 1, i64* %18, align 8
  br label %68

47:                                               ; preds = %5
  %48 = load i32, i32* %15, align 4
  %49 = icmp ule i32 %48, 65535
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i64 2, i64* %18, align 8
  br label %67

51:                                               ; preds = %47
  %52 = load i32, i32* %15, align 4
  %53 = icmp ule i32 %52, 16777215
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i64 3, i64* %18, align 8
  br label %66

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  %57 = icmp ule i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64 4, i64* %18, align 8
  br label %65

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %18, align 8
  br label %65

65:                                               ; preds = %59, %58
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66, %50
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32* @__errno_location() #3
  store i32 22, i32* %73, align 4
  store i32 0, i32* %6, align 4
  br label %129

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  switch i32 %75, label %121 [
    i32 4, label %76
    i32 5, label %115
    i32 6, label %115
    i32 7, label %115
  ]

76:                                               ; preds = %74
  store i64 0, i64* %22, align 8
  store i64 0, i64* %21, align 8
  br label %77

77:                                               ; preds = %113, %76
  %78 = load i64, i64* %21, align 8
  %79 = load i64, i64* %17, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %114

81:                                               ; preds = %77
  store i32 0, i32* %19, align 4
  store i32 128, i32* %20, align 4
  br label %82

82:                                               ; preds = %104, %81
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = load i8*, i8** %8, align 8
  %87 = load i64, i64* %21, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %21, align 8
  %89 = getelementptr inbounds i8, i8* %86, i64 %87
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %19, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %19, align 4
  br label %97

97:                                               ; preds = %93, %85
  %98 = load i64, i64* %22, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %22, align 8
  %100 = load i64, i64* %16, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i64 0, i64* %22, align 8
  br label %107

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %20, align 4
  %106 = ashr i32 %105, 1
  store i32 %106, i32* %20, align 4
  br label %82, !llvm.loop !12

107:                                              ; preds = %102, %82
  %108 = load i32, i32* %19, align 4
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %110 = call i32 @putc(i32 noundef %108, %struct._IO_FILE* noundef %109)
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %114

113:                                              ; preds = %107
  br label %77, !llvm.loop !13

114:                                              ; preds = %112, %77
  br label %123

115:                                              ; preds = %74, %74, %74
  %116 = load i8*, i8** %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %17, align 8
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %120 = call i64 @fwrite(i8* noundef %116, i64 noundef %117, i64 noundef %118, %struct._IO_FILE* noundef %119)
  store i64 %120, i64* %21, align 8
  br label %123

121:                                              ; preds = %74
  %122 = call i32* @__errno_location() #3
  store i32 22, i32* %122, align 4
  store i32 0, i32* %6, align 4
  br label %129

123:                                              ; preds = %115, %114
  %124 = load i64, i64* %21, align 8
  %125 = load i64, i64* %17, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 1, i32 -1
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %123, %121, %72
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }

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
