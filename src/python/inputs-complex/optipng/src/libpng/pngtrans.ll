; ModuleID = 'pngtrans.c'
source_filename = "pngtrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.png_struct_def = type { void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*, i8*, void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)*, i8*, i32, i32, i32, i32, %struct.z_stream_s, %struct.png_compression_buffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i64, i32, i32, %struct.png_color_struct*, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.png_color_16_struct, void (%struct.png_struct_def*)*, i32, i32, %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)*, i32, i32, i32, i8*, i8*, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, i8*, i64, i32, i32, i8*, [4 x void (%struct.png_row_info_struct*, i8*, i8*)*] }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }
%struct.png_compression_buffer = type { %struct.png_compression_buffer*, [1 x i8] }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @png_set_interlace_handling(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 44
  %5 = load i8, i8* %4, align 4, !tbaa !3
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %9 = load i32, i32* %8, align 8, !tbaa !15
  %10 = or i32 %9, 2
  store i32 %10, i32* %8, align 8, !tbaa !15
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ 7, %7 ], [ 1, %3 ], [ 1, %1 ]
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @png_do_check_palette_indexes(%struct.png_struct_def* noalias nocapture noundef %0, %struct.png_row_info_struct* nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 39
  %4 = load i16, i16* %3, align 8, !tbaa !16
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %1, i64 0, i32 3
  %7 = load i8, i8* %6, align 1, !tbaa !17
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = icmp sle i32 %9, %5
  %11 = icmp eq i16 %4, 0
  %12 = or i1 %11, %10
  br i1 %12, label %218, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %1, i64 0, i32 5
  %15 = load i8, i8* %14, align 1, !tbaa !19
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %1, i64 0, i32 0
  %18 = load i32, i32* %17, align 8, !tbaa !20
  %19 = mul i32 %18, %16
  %20 = sub i32 0, %19
  %21 = and i32 %20, 7
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 32
  %23 = load i8*, i8** %22, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %1, i64 0, i32 1
  %25 = load i64, i64* %24, align 8, !tbaa !22
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  switch i8 %7, label %218 [
    i8 1, label %100
    i8 2, label %71
    i8 4, label %32
    i8 8, label %27
  ]

27:                                               ; preds = %13
  %28 = icmp sgt i64 %25, 0
  br i1 %28, label %29, label %218

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 40
  %31 = load i32, i32* %30, align 4, !tbaa !23
  br label %207

32:                                               ; preds = %13
  %33 = icmp sgt i64 %25, 0
  br i1 %33, label %34, label %218

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 40
  %36 = load i32, i32* %35, align 4, !tbaa !23
  %37 = load i8, i8* %26, align 1, !tbaa !24
  %38 = zext i8 %37 to i32
  %39 = lshr i32 %38, %21
  %40 = and i32 %39, 15
  %41 = icmp sgt i32 %40, %36
  %42 = select i1 %41, i32 %40, i32 %36
  %43 = lshr i32 %39, 4
  %44 = icmp ugt i32 %43, %42
  %45 = select i1 %44, i32 %43, i32 %42
  %46 = or i1 %41, %44
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 %45, i32* %35, align 4, !tbaa !23
  br label %48

48:                                               ; preds = %47, %34
  %49 = getelementptr inbounds i8, i8* %26, i64 -1
  %50 = icmp ugt i8* %49, %23
  br i1 %50, label %51, label %218

51:                                               ; preds = %48
  %52 = and i64 %25, 1
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i8, i8* %49, align 1, !tbaa !24
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 15
  %58 = icmp ugt i32 %57, %45
  %59 = select i1 %58, i32 %57, i32 %45
  %60 = lshr i32 %56, 4
  %61 = icmp sgt i32 %60, %59
  %62 = select i1 %61, i32 %60, i32 %59
  %63 = or i1 %58, %61
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 %62, i32* %35, align 4, !tbaa !23
  br label %65

65:                                               ; preds = %64, %54
  %66 = getelementptr inbounds i8, i8* %49, i64 -1
  br label %67

67:                                               ; preds = %65, %51
  %68 = phi i32 [ %45, %51 ], [ %62, %65 ]
  %69 = phi i8* [ %49, %51 ], [ %66, %65 ]
  %70 = icmp eq i64 %25, 2
  br i1 %70, label %218, label %179

71:                                               ; preds = %13
  %72 = icmp sgt i64 %25, 0
  br i1 %72, label %73, label %218

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 40
  %75 = load i32, i32* %74, align 4, !tbaa !23
  %76 = load i8, i8* %26, align 1, !tbaa !24
  %77 = zext i8 %76 to i32
  %78 = lshr i32 %77, %21
  %79 = and i32 %78, 3
  %80 = icmp sgt i32 %79, %75
  %81 = select i1 %80, i32 %79, i32 %75
  %82 = lshr i32 %78, 2
  %83 = and i32 %82, 3
  %84 = icmp ugt i32 %83, %81
  %85 = select i1 %84, i32 %83, i32 %81
  %86 = or i1 %80, %84
  %87 = lshr i32 %78, 4
  %88 = and i32 %87, 3
  %89 = icmp ugt i32 %88, %85
  %90 = select i1 %89, i32 %88, i32 %85
  %91 = or i1 %86, %89
  %92 = lshr i32 %78, 6
  %93 = icmp ugt i32 %92, %90
  %94 = select i1 %93, i32 %92, i32 %90
  %95 = or i1 %91, %93
  br i1 %95, label %96, label %97

96:                                               ; preds = %73
  store i32 %94, i32* %74, align 4, !tbaa !23
  br label %97

97:                                               ; preds = %96, %73
  %98 = getelementptr inbounds i8, i8* %26, i64 -1
  %99 = icmp ugt i8* %98, %23
  br i1 %99, label %153, label %218

100:                                              ; preds = %13
  %101 = icmp sgt i64 %25, 0
  br i1 %101, label %102, label %218

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 40
  %104 = load i8, i8* %26, align 1, !tbaa !24
  %105 = zext i8 %104 to i32
  %106 = lshr i32 %105, %21
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  store i32 1, i32* %103, align 4, !tbaa !23
  br label %109

109:                                              ; preds = %108, %102
  %110 = getelementptr inbounds i8, i8* %26, i64 -1
  %111 = icmp ugt i8* %110, %23
  br i1 %111, label %112, label %218

112:                                              ; preds = %109
  %113 = add i64 %25, 3
  %114 = add i64 %25, -2
  %115 = and i64 %113, 3
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %112, %123
  %118 = phi i8* [ %124, %123 ], [ %110, %112 ]
  %119 = phi i64 [ %125, %123 ], [ 0, %112 ]
  %120 = load i8, i8* %118, align 1, !tbaa !24
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  store i32 1, i32* %103, align 4, !tbaa !23
  br label %123

123:                                              ; preds = %122, %117
  %124 = getelementptr inbounds i8, i8* %118, i64 -1
  %125 = add i64 %119, 1
  %126 = icmp eq i64 %125, %115
  br i1 %126, label %127, label %117, !llvm.loop !25

127:                                              ; preds = %123, %112
  %128 = phi i8* [ %110, %112 ], [ %124, %123 ]
  %129 = icmp ult i64 %114, 3
  br i1 %129, label %218, label %130

130:                                              ; preds = %127, %150
  %131 = phi i8* [ %151, %150 ], [ %128, %127 ]
  %132 = load i8, i8* %131, align 1, !tbaa !24
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  store i32 1, i32* %103, align 4, !tbaa !23
  br label %135

135:                                              ; preds = %134, %130
  %136 = getelementptr inbounds i8, i8* %131, i64 -1
  %137 = load i8, i8* %136, align 1, !tbaa !24
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  store i32 1, i32* %103, align 4, !tbaa !23
  br label %140

140:                                              ; preds = %139, %135
  %141 = getelementptr inbounds i8, i8* %131, i64 -2
  %142 = load i8, i8* %141, align 1, !tbaa !24
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  store i32 1, i32* %103, align 4, !tbaa !23
  br label %145

145:                                              ; preds = %144, %140
  %146 = getelementptr inbounds i8, i8* %131, i64 -3
  %147 = load i8, i8* %146, align 1, !tbaa !24
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  store i32 1, i32* %103, align 4, !tbaa !23
  br label %150

150:                                              ; preds = %149, %145
  %151 = getelementptr inbounds i8, i8* %131, i64 -4
  %152 = icmp ugt i8* %151, %23
  br i1 %152, label %130, label %218, !llvm.loop !27

153:                                              ; preds = %97, %176
  %154 = phi i32 [ %173, %176 ], [ %94, %97 ]
  %155 = phi i8* [ %177, %176 ], [ %98, %97 ]
  %156 = load i8, i8* %155, align 1, !tbaa !24
  %157 = zext i8 %156 to i32
  %158 = and i32 %157, 3
  %159 = icmp ugt i32 %158, %154
  %160 = select i1 %159, i32 %158, i32 %154
  %161 = lshr i32 %157, 2
  %162 = and i32 %161, 3
  %163 = icmp sgt i32 %162, %160
  %164 = select i1 %163, i32 %162, i32 %160
  %165 = or i1 %159, %163
  %166 = lshr i32 %157, 4
  %167 = and i32 %166, 3
  %168 = icmp ugt i32 %167, %164
  %169 = select i1 %168, i32 %167, i32 %164
  %170 = or i1 %165, %168
  %171 = lshr i32 %157, 6
  %172 = icmp ugt i32 %171, %169
  %173 = select i1 %172, i32 %171, i32 %169
  %174 = or i1 %170, %172
  br i1 %174, label %175, label %176

175:                                              ; preds = %153
  store i32 %173, i32* %74, align 4, !tbaa !23
  br label %176

176:                                              ; preds = %153, %175
  %177 = getelementptr inbounds i8, i8* %155, i64 -1
  %178 = icmp ugt i8* %177, %23
  br i1 %178, label %153, label %218, !llvm.loop !30

179:                                              ; preds = %67, %204
  %180 = phi i32 [ %201, %204 ], [ %68, %67 ]
  %181 = phi i8* [ %205, %204 ], [ %69, %67 ]
  %182 = load i8, i8* %181, align 1, !tbaa !24
  %183 = zext i8 %182 to i32
  %184 = and i32 %183, 15
  %185 = icmp ugt i32 %184, %180
  %186 = select i1 %185, i32 %184, i32 %180
  %187 = lshr i32 %183, 4
  %188 = icmp sgt i32 %187, %186
  %189 = select i1 %188, i32 %187, i32 %186
  %190 = or i1 %185, %188
  br i1 %190, label %191, label %192

191:                                              ; preds = %179
  store i32 %189, i32* %35, align 4, !tbaa !23
  br label %192

192:                                              ; preds = %179, %191
  %193 = getelementptr inbounds i8, i8* %181, i64 -1
  %194 = load i8, i8* %193, align 1, !tbaa !24
  %195 = zext i8 %194 to i32
  %196 = and i32 %195, 15
  %197 = icmp ugt i32 %196, %189
  %198 = select i1 %197, i32 %196, i32 %189
  %199 = lshr i32 %195, 4
  %200 = icmp sgt i32 %199, %198
  %201 = select i1 %200, i32 %199, i32 %198
  %202 = or i1 %197, %200
  br i1 %202, label %203, label %204

203:                                              ; preds = %192
  store i32 %201, i32* %35, align 4, !tbaa !23
  br label %204

204:                                              ; preds = %203, %192
  %205 = getelementptr inbounds i8, i8* %181, i64 -2
  %206 = icmp ugt i8* %205, %23
  br i1 %206, label %179, label %218, !llvm.loop !31

207:                                              ; preds = %29, %214
  %208 = phi i32 [ %31, %29 ], [ %215, %214 ]
  %209 = phi i8* [ %26, %29 ], [ %216, %214 ]
  %210 = load i8, i8* %209, align 1, !tbaa !24
  %211 = zext i8 %210 to i32
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  store i32 %211, i32* %30, align 4, !tbaa !23
  br label %214

214:                                              ; preds = %207, %213
  %215 = phi i32 [ %208, %207 ], [ %211, %213 ]
  %216 = getelementptr inbounds i8, i8* %209, i64 -1
  %217 = icmp ugt i8* %216, %23
  br i1 %217, label %207, label %218, !llvm.loop !32

218:                                              ; preds = %214, %67, %204, %176, %127, %150, %48, %97, %109, %27, %32, %71, %100, %13, %2
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !6, i64 340}
!4 = !{!"png_struct_def", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !5, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !10, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !10, i64 304, !8, i64 312, !8, i64 316, !5, i64 320, !11, i64 328, !8, i64 332, !11, i64 336, !6, i64 338, !6, i64 339, !6, i64 340, !6, i64 341, !6, i64 342, !6, i64 343, !6, i64 344, !6, i64 345, !6, i64 346, !6, i64 347, !6, i64 348, !6, i64 349, !6, i64 350, !6, i64 351, !6, i64 352, !8, i64 356, !12, i64 360, !5, i64 376, !8, i64 384, !8, i64 388, !13, i64 392, !5, i64 400, !12, i64 408, !5, i64 424, !5, i64 432, !8, i64 440, !8, i64 444, !8, i64 448, !5, i64 456, !5, i64 464, !6, i64 472, !8, i64 476, !8, i64 480, !8, i64 484, !10, i64 488, !14, i64 496, !10, i64 528, !5, i64 536, !10, i64 544, !8, i64 552, !8, i64 556, !5, i64 560, !6, i64 568}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!"z_stream_s", !5, i64 0, !8, i64 8, !10, i64 16, !5, i64 24, !8, i64 32, !10, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !8, i64 88, !10, i64 96, !10, i64 104}
!10 = !{!"long", !6, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = !{!"png_color_16_struct", !6, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8}
!13 = !{!"png_color_8_struct", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4}
!14 = !{!"png_unknown_chunk_t", !6, i64 0, !5, i64 8, !10, i64 16, !6, i64 24}
!15 = !{!4, !8, i64 56}
!16 = !{!4, !11, i64 328}
!17 = !{!18, !6, i64 17}
!18 = !{!"png_row_info_struct", !8, i64 0, !10, i64 8, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 19}
!19 = !{!18, !6, i64 19}
!20 = !{!18, !8, i64 0}
!21 = !{!4, !5, i64 280}
!22 = !{!18, !10, i64 8}
!23 = !{!4, !8, i64 332}
!24 = !{!6, !6, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !28, !29}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.peeled.count", i32 1}
!30 = distinct !{!30, !28, !29}
!31 = distinct !{!31, !28, !29}
!32 = distinct !{!32, !28}
