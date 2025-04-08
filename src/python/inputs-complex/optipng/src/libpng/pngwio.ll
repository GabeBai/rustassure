; ModuleID = 'pngwio.c'
source_filename = "pngwio.c"
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [28 x i8] c"Call to NULL write function\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Write Error\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Can't set both read_data_fn and write_data_fn in the same structure\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @png_write_data(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 3
  %5 = load void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)** %4, align 8, !tbaa !3
  %6 = icmp eq void (%struct.png_struct_def*, i8*, i64)* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void %5(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1, i64 noundef %2) #5
  ret void

8:                                                ; preds = %3
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @png_default_write_data(%struct.png_struct_def* noundef %0, i8* nocapture noundef %1, i64 noundef %2) #0 {
  %4 = icmp eq %struct.png_struct_def* %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 5
  %7 = bitcast i8** %6 to %struct._IO_FILE**
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !tbaa !15
  %9 = tail call i64 @fwrite(i8* noundef %1, i64 noundef 1, i64 noundef %2, %struct._IO_FILE* noundef %8)
  %10 = icmp eq i64 %9, %2
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #6
  unreachable

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_flush(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 59
  %3 = load void (%struct.png_struct_def*)*, void (%struct.png_struct_def*)** %2, align 8, !tbaa !16
  %4 = icmp eq void (%struct.png_struct_def*)* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void %3(%struct.png_struct_def* noundef nonnull %0) #5
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @png_default_flush(%struct.png_struct_def* noundef readonly %0) #3 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 5
  %5 = bitcast i8** %4 to %struct._IO_FILE**
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !tbaa !15
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %6)
  br label %8

8:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_set_write_fn(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, void (%struct.png_struct_def*, i8*, i64)* noundef %2, void (%struct.png_struct_def*)* noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct.png_struct_def* %0, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 5
  store i8* %1, i8** %7, align 8, !tbaa !15
  %8 = icmp eq void (%struct.png_struct_def*, i8*, i64)* %2, null
  %9 = select i1 %8, void (%struct.png_struct_def*, i8*, i64)* @png_default_write_data, void (%struct.png_struct_def*, i8*, i64)* %2
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 3
  store void (%struct.png_struct_def*, i8*, i64)* %9, void (%struct.png_struct_def*, i8*, i64)** %10, align 8
  %11 = icmp eq void (%struct.png_struct_def*)* %3, null
  %12 = select i1 %11, void (%struct.png_struct_def*)* @png_default_flush, void (%struct.png_struct_def*)* %3
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 59
  store void (%struct.png_struct_def*)* %12, void (%struct.png_struct_def*)** %13, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 4
  %15 = load void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)** %14, align 8, !tbaa !17
  %16 = icmp eq void (%struct.png_struct_def*, i8*, i64)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  store void (%struct.png_struct_def*, i8*, i64)* null, void (%struct.png_struct_def*, i8*, i64)** %14, align 8, !tbaa !17
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %18

18:                                               ; preds = %4, %17, %6
  ret void
}

declare dso_local void @png_warning(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !5, i64 24}
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
!15 = !{!4, !5, i64 40}
!16 = !{!4, !5, i64 376}
!17 = !{!4, !5, i64 32}
