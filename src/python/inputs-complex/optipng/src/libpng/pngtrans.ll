; ModuleID = 'pngtrans.c'
source_filename = "pngtrans.c"
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @png_set_interlace_handling(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %5 = icmp ne %struct.png_struct_def* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 44
  %9 = load i8, i8* %8, align 4
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, 2
  store i32 %16, i32* %14, align 8
  store i32 7, i32* %2, align 4
  br label %18

17:                                               ; preds = %6, %1
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_do_check_palette_indexes(%struct.png_struct_def* noalias noundef %0, %struct.png_row_info_struct* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca %struct.png_row_info_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store %struct.png_row_info_struct* %1, %struct.png_row_info_struct** %4, align 8
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %9, i32 0, i32 39
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %14 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %13, i32 0, i32 3
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 1, %16
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %221

19:                                               ; preds = %2
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 39
  %22 = load i16, i16* %21, align 8
  %23 = zext i16 %22 to i32
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %221

25:                                               ; preds = %19
  %26 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %27 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %26, i32 0, i32 5
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 0, %29
  %31 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %32 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul i32 %30, %33
  %35 = and i32 %34, 7
  store i32 %35, i32* %5, align 4
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 32
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %40 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8* %42, i8** %6, align 8
  %43 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %4, align 8
  %44 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %43, i32 0, i32 3
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  switch i32 %46, label %219 [
    i32 1, label %47
    i32 2, label %69
    i32 4, label %148
    i32 8, label %193
  ]

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %51 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %50, i32 0, i32 32
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ugt i8* %49, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %63 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %62, i32 0, i32 40
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %54
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %67, i8** %6, align 8
  br label %48, !llvm.loop !10

68:                                               ; preds = %48
  br label %220

69:                                               ; preds = %25
  br label %70

70:                                               ; preds = %144, %69
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %73 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %72, i32 0, i32 32
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ugt i8* %71, %74
  br i1 %75, label %76, label %147

76:                                               ; preds = %70
  %77 = load i8*, i8** %6, align 8
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* %5, align 4
  %81 = ashr i32 %79, %80
  %82 = and i32 %81, 3
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %85 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %84, i32 0, i32 40
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %91 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %90, i32 0, i32 40
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %76
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load i32, i32* %5, align 4
  %97 = ashr i32 %95, %96
  %98 = ashr i32 %97, 2
  %99 = and i32 %98, 3
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %102 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %101, i32 0, i32 40
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %108 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %107, i32 0, i32 40
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %92
  %110 = load i8*, i8** %6, align 8
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i32, i32* %5, align 4
  %114 = ashr i32 %112, %113
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 3
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %119 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %118, i32 0, i32 40
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %117, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %109
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %125 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %124, i32 0, i32 40
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %109
  %127 = load i8*, i8** %6, align 8
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* %5, align 4
  %131 = ashr i32 %129, %130
  %132 = ashr i32 %131, 6
  %133 = and i32 %132, 3
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %136 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %135, i32 0, i32 40
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %134, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %126
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %142 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %141, i32 0, i32 40
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %126
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %143
  %145 = load i8*, i8** %6, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 -1
  store i8* %146, i8** %6, align 8
  br label %70, !llvm.loop !12

147:                                              ; preds = %70
  br label %220

148:                                              ; preds = %25
  br label %149

149:                                              ; preds = %189, %148
  %150 = load i8*, i8** %6, align 8
  %151 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %152 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %151, i32 0, i32 32
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ugt i8* %150, %153
  br i1 %154, label %155, label %192

155:                                              ; preds = %149
  %156 = load i8*, i8** %6, align 8
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = load i32, i32* %5, align 4
  %160 = ashr i32 %158, %159
  %161 = and i32 %160, 15
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %164 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %163, i32 0, i32 40
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %162, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %155
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %170 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %169, i32 0, i32 40
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %167, %155
  %172 = load i8*, i8** %6, align 8
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i32, i32* %5, align 4
  %176 = ashr i32 %174, %175
  %177 = ashr i32 %176, 4
  %178 = and i32 %177, 15
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %181 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %180, i32 0, i32 40
  %182 = load i32, i32* %181, align 4
  %183 = icmp sgt i32 %179, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %171
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %187 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %186, i32 0, i32 40
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %184, %171
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %188
  %190 = load i8*, i8** %6, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 -1
  store i8* %191, i8** %6, align 8
  br label %149, !llvm.loop !13

192:                                              ; preds = %149
  br label %220

193:                                              ; preds = %25
  br label %194

194:                                              ; preds = %215, %193
  %195 = load i8*, i8** %6, align 8
  %196 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %197 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %196, i32 0, i32 32
  %198 = load i8*, i8** %197, align 8
  %199 = icmp ugt i8* %195, %198
  br i1 %199, label %200, label %218

200:                                              ; preds = %194
  %201 = load i8*, i8** %6, align 8
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %205 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %204, i32 0, i32 40
  %206 = load i32, i32* %205, align 4
  %207 = icmp sgt i32 %203, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %200
  %209 = load i8*, i8** %6, align 8
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %213 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %212, i32 0, i32 40
  store i32 %211, i32* %213, align 4
  br label %214

214:                                              ; preds = %208, %200
  br label %215

215:                                              ; preds = %214
  %216 = load i8*, i8** %6, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 -1
  store i8* %217, i8** %6, align 8
  br label %194, !llvm.loop !14

218:                                              ; preds = %194
  br label %220

219:                                              ; preds = %25
  br label %220

220:                                              ; preds = %219, %218, %192, %147, %68
  br label %221

221:                                              ; preds = %220, %19, %2
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
