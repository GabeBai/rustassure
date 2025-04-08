; ModuleID = 'pngget.c'
source_filename = "pngget.c"
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
%struct.png_info_def = type { i32, i32, i32, i64, %struct.png_color_struct*, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, %struct.png_color_16_struct, i16*, i32, %struct.png_unknown_chunk_t*, i32, i8** }

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @png_get_valid(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne %struct.png_struct_def* %0, null
  %5 = icmp ne %struct.png_info_def* %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %9 = load i32, i32* %8, align 8, !tbaa !3
  %10 = and i32 %9, %2
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @png_get_rowbytes(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne %struct.png_struct_def* %0, null
  %4 = icmp ne %struct.png_info_def* %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 3
  %8 = load i64, i64* %7, align 8, !tbaa !13
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i64 [ %8, %6 ], [ 0, %2 ]
  ret i64 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8** @png_get_rows(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne %struct.png_struct_def* %0, null
  %4 = icmp ne %struct.png_info_def* %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 24
  %8 = load i8**, i8*** %7, align 8, !tbaa !14
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8** [ %8, %6 ], [ null, %2 ]
  ret i8** %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @png_get_image_width(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne %struct.png_struct_def* %0, null
  %4 = icmp ne %struct.png_info_def* %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !15
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @png_get_image_height(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne %struct.png_struct_def* %0, null
  %4 = icmp ne %struct.png_info_def* %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !16
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @png_get_bit_depth(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne %struct.png_struct_def* %0, null
  %4 = icmp ne %struct.png_info_def* %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 7
  %8 = load i8, i8* %7, align 4, !tbaa !17
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @png_get_color_type(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne %struct.png_struct_def* %0, null
  %4 = icmp ne %struct.png_info_def* %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 8
  %8 = load i8, i8* %7, align 1, !tbaa !18
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @png_get_filter_type(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne %struct.png_struct_def* %0, null
  %4 = icmp ne %struct.png_info_def* %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 10
  %8 = load i8, i8* %7, align 1, !tbaa !19
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @png_get_interlace_type(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne %struct.png_struct_def* %0, null
  %4 = icmp ne %struct.png_info_def* %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 11
  %8 = load i8, i8* %7, align 8, !tbaa !20
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @png_get_compression_type(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne %struct.png_struct_def* %0, null
  %4 = icmp ne %struct.png_info_def* %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 9
  %8 = load i8, i8* %7, align 2, !tbaa !21
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @png_get_x_pixels_per_meter(%struct.png_struct_def* noalias nocapture noundef readnone %0, %struct.png_info_def* noalias nocapture noundef readnone %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @png_get_y_pixels_per_meter(%struct.png_struct_def* noalias nocapture noundef readnone %0, %struct.png_info_def* noalias nocapture noundef readnone %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @png_get_pixels_per_meter(%struct.png_struct_def* noalias nocapture noundef readnone %0, %struct.png_info_def* noalias nocapture noundef readnone %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @png_get_pixel_aspect_ratio_fixed(%struct.png_struct_def* noalias nocapture noundef readnone %0, %struct.png_info_def* noalias nocapture noundef readnone %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @png_get_x_offset_microns(%struct.png_struct_def* noalias nocapture noundef readnone %0, %struct.png_info_def* noalias nocapture noundef readnone %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @png_get_y_offset_microns(%struct.png_struct_def* noalias nocapture noundef readnone %0, %struct.png_info_def* noalias nocapture noundef readnone %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @png_get_x_offset_pixels(%struct.png_struct_def* noalias nocapture noundef readnone %0, %struct.png_info_def* noalias nocapture noundef readnone %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @png_get_y_offset_pixels(%struct.png_struct_def* noalias nocapture noundef readnone %0, %struct.png_info_def* noalias nocapture noundef readnone %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @png_get_channels(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne %struct.png_struct_def* %0, null
  %4 = icmp ne %struct.png_info_def* %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 12
  %8 = load i8, i8* %7, align 1, !tbaa !22
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i8* @png_get_signature(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readnone %1) local_unnamed_addr #1 {
  %3 = icmp ne %struct.png_struct_def* %0, null
  %4 = icmp ne %struct.png_info_def* %1, null
  %5 = and i1 %3, %4
  %6 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 15, i64 0
  %7 = select i1 %5, i8* %6, i8* null
  ret i8* %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @png_get_bKGD(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef %1, %struct.png_color_16_struct** noundef writeonly %2) local_unnamed_addr #2 {
  %4 = icmp ne %struct.png_struct_def* %0, null
  %5 = icmp ne %struct.png_info_def* %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %9 = load i32, i32* %8, align 8, !tbaa !3
  %10 = and i32 %9, 32
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne %struct.png_color_16_struct** %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 19
  store %struct.png_color_16_struct* %15, %struct.png_color_16_struct** %2, align 8, !tbaa !23
  br label %16

16:                                               ; preds = %3, %7, %14
  %17 = phi i32 [ 32, %14 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @png_get_hIST(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1, i16** noundef writeonly %2) local_unnamed_addr #2 {
  %4 = icmp ne %struct.png_struct_def* %0, null
  %5 = icmp ne %struct.png_info_def* %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %9 = load i32, i32* %8, align 8, !tbaa !3
  %10 = and i32 %9, 64
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne i16** %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 20
  %16 = load i16*, i16** %15, align 8, !tbaa !24
  store i16* %16, i16** %2, align 8, !tbaa !23
  br label %17

17:                                               ; preds = %3, %7, %14
  %18 = phi i32 [ 64, %14 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_get_IHDR(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef readonly %1, i32* noundef writeonly %2, i32* noundef writeonly %3, i32* noundef writeonly %4, i32* noundef writeonly %5, i32* noundef writeonly %6, i32* noundef writeonly %7, i32* noundef writeonly %8) local_unnamed_addr #3 {
  %10 = icmp eq %struct.png_struct_def* %0, null
  %11 = icmp eq %struct.png_info_def* %1, null
  %12 = or i1 %10, %11
  br i1 %12, label %70, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32* %2, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !15
  store i32 %17, i32* %2, align 4, !tbaa !25
  br label %18

18:                                               ; preds = %15, %13
  %19 = icmp eq i32* %3, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 1
  %22 = load i32, i32* %21, align 4, !tbaa !16
  store i32 %22, i32* %3, align 4, !tbaa !25
  br label %23

23:                                               ; preds = %20, %18
  %24 = icmp eq i32* %4, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 7
  %27 = load i8, i8* %26, align 4, !tbaa !17
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %4, align 4, !tbaa !25
  br label %29

29:                                               ; preds = %25, %23
  %30 = icmp eq i32* %5, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 8
  %33 = load i8, i8* %32, align 1, !tbaa !18
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %5, align 4, !tbaa !25
  br label %35

35:                                               ; preds = %31, %29
  %36 = icmp eq i32* %7, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 9
  %39 = load i8, i8* %38, align 2, !tbaa !21
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %7, align 4, !tbaa !25
  br label %41

41:                                               ; preds = %37, %35
  %42 = icmp eq i32* %8, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 10
  %45 = load i8, i8* %44, align 1, !tbaa !19
  %46 = zext i8 %45 to i32
  store i32 %46, i32* %8, align 4, !tbaa !25
  br label %47

47:                                               ; preds = %43, %41
  %48 = icmp eq i32* %6, null
  %49 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 11
  %50 = load i8, i8* %49, align 8, !tbaa !20
  %51 = zext i8 %50 to i32
  br i1 %48, label %53, label %52

52:                                               ; preds = %47
  store i32 %51, i32* %6, align 4, !tbaa !25
  br label %53

53:                                               ; preds = %47, %52
  %54 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 0
  %55 = load i32, i32* %54, align 8, !tbaa !15
  %56 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 1
  %57 = load i32, i32* %56, align 4, !tbaa !16
  %58 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 7
  %59 = load i8, i8* %58, align 4, !tbaa !17
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 8
  %62 = load i8, i8* %61, align 1, !tbaa !18
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 9
  %65 = load i8, i8* %64, align 2, !tbaa !21
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 10
  %68 = load i8, i8* %67, align 1, !tbaa !19
  %69 = zext i8 %68 to i32
  tail call void @png_check_IHDR(%struct.png_struct_def* noundef nonnull %0, i32 noundef %55, i32 noundef %57, i32 noundef %60, i32 noundef %63, i32 noundef %51, i32 noundef %66, i32 noundef %69) #5
  br label %70

70:                                               ; preds = %9, %53
  %71 = phi i32 [ 1, %53 ], [ 0, %9 ]
  ret i32 %71
}

declare dso_local void @png_check_IHDR(%struct.png_struct_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @png_get_PLTE(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1, %struct.png_color_struct** noundef writeonly %2, i32* nocapture noundef writeonly %3) local_unnamed_addr #2 {
  %5 = icmp ne %struct.png_struct_def* %0, null
  %6 = icmp ne %struct.png_info_def* %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %10 = load i32, i32* %9, align 8, !tbaa !3
  %11 = and i32 %10, 8
  %12 = icmp ne i32 %11, 0
  %13 = icmp ne %struct.png_color_struct** %2, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 4
  %17 = load %struct.png_color_struct*, %struct.png_color_struct** %16, align 8, !tbaa !26
  store %struct.png_color_struct* %17, %struct.png_color_struct** %2, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 5
  %19 = load i16, i16* %18, align 8, !tbaa !27
  %20 = zext i16 %19 to i32
  store i32 %20, i32* %3, align 4, !tbaa !25
  br label %21

21:                                               ; preds = %4, %8, %15
  %22 = phi i32 [ 8, %15 ], [ 0, %8 ], [ 0, %4 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @png_get_sBIT(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef %1, %struct.png_color_8_struct** noundef writeonly %2) local_unnamed_addr #2 {
  %4 = icmp ne %struct.png_struct_def* %0, null
  %5 = icmp ne %struct.png_info_def* %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %9 = load i32, i32* %8, align 8, !tbaa !3
  %10 = and i32 %9, 2
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne %struct.png_color_8_struct** %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 16
  store %struct.png_color_8_struct* %15, %struct.png_color_8_struct** %2, align 8, !tbaa !23
  br label %16

16:                                               ; preds = %3, %7, %14
  %17 = phi i32 [ 2, %14 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @png_get_tRNS(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef %1, i8** noundef writeonly %2, i32* noundef writeonly %3, %struct.png_color_16_struct** noundef writeonly %4) local_unnamed_addr #2 {
  %6 = icmp ne %struct.png_struct_def* %0, null
  %7 = icmp ne %struct.png_info_def* %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %11 = load i32, i32* %10, align 8, !tbaa !3
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %43, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 8
  %16 = load i8, i8* %15, align 1, !tbaa !18
  %17 = icmp eq i8 %16, 3
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = icmp eq i8** %2, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 17
  %22 = load i8*, i8** %21, align 8, !tbaa !28
  store i8* %22, i8** %2, align 8, !tbaa !23
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ 16, %20 ], [ 0, %18 ]
  %25 = icmp eq %struct.png_color_16_struct** %4, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 18
  store %struct.png_color_16_struct* %27, %struct.png_color_16_struct** %4, align 8, !tbaa !23
  br label %36

28:                                               ; preds = %14
  %29 = icmp eq %struct.png_color_16_struct** %4, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 18
  store %struct.png_color_16_struct* %31, %struct.png_color_16_struct** %4, align 8, !tbaa !23
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ 16, %30 ], [ 0, %28 ]
  %34 = icmp eq i8** %2, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i8* null, i8** %2, align 8, !tbaa !23
  br label %36

36:                                               ; preds = %32, %35, %23, %26
  %37 = phi i32 [ %24, %26 ], [ %24, %23 ], [ %33, %35 ], [ %33, %32 ]
  %38 = icmp eq i32* %3, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 6
  %41 = load i16, i16* %40, align 2, !tbaa !29
  %42 = zext i16 %41 to i32
  store i32 %42, i32* %3, align 4, !tbaa !25
  br label %43

43:                                               ; preds = %36, %39, %9, %5
  %44 = phi i32 [ 16, %39 ], [ %37, %36 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @png_get_unknown_chunks(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef readonly %1, %struct.png_unknown_chunk_t** noundef writeonly %2) local_unnamed_addr #2 {
  %4 = icmp ne %struct.png_struct_def* %0, null
  %5 = icmp ne %struct.png_info_def* %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne %struct.png_unknown_chunk_t** %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 22
  %11 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %10, align 8, !tbaa !30
  store %struct.png_unknown_chunk_t* %11, %struct.png_unknown_chunk_t** %2, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 23
  %13 = load i32, i32* %12, align 8, !tbaa !31
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi i32 [ %13, %9 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @png_get_compression_buffer_size(%struct.png_struct_def* noalias noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %5 = load i32, i32* %4, align 8, !tbaa !32
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 12
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 81
  %10 = select i1 %7, i32* %8, i32* %9
  %11 = load i32, i32* %10, align 8, !tbaa !25
  %12 = zext i32 %11 to i64
  br label %13

13:                                               ; preds = %3, %1
  %14 = phi i64 [ 0, %1 ], [ %12, %3 ]
  ret i64 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @png_get_user_width_max(%struct.png_struct_def* noalias noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 73
  %5 = load i32, i32* %4, align 4, !tbaa !36
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @png_get_user_height_max(%struct.png_struct_def* noalias noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 74
  %5 = load i32, i32* %4, align 8, !tbaa !37
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @png_get_chunk_cache_max(%struct.png_struct_def* noalias noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 75
  %5 = load i32, i32* %4, align 4, !tbaa !38
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @png_get_chunk_malloc_max(%struct.png_struct_def* noalias noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 76
  %5 = load i64, i64* %4, align 8, !tbaa !39
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i64 [ %5, %3 ], [ 0, %1 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @png_get_io_state(%struct.png_struct_def* noalias nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  %3 = load i32, i32* %2, align 4, !tbaa !40
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @png_get_io_chunk_type(%struct.png_struct_def* noalias nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %3 = load i32, i32* %2, align 8, !tbaa !41
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @png_get_palette_max(%struct.png_struct_def* noundef readonly %0, %struct.png_info_def* noundef readnone %1) local_unnamed_addr #0 {
  %3 = icmp ne %struct.png_struct_def* %0, null
  %4 = icmp ne %struct.png_info_def* %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 40
  %8 = load i32, i32* %7, align 4, !tbaa !42
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ -1, %2 ]
  ret i32 %10
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !5, i64 8}
!4 = !{!"png_info_def", !5, i64 0, !5, i64 4, !5, i64 8, !8, i64 16, !9, i64 24, !10, i64 32, !10, i64 34, !6, i64 36, !6, i64 37, !6, i64 38, !6, i64 39, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !6, i64 44, !11, i64 52, !9, i64 64, !12, i64 72, !12, i64 82, !9, i64 96, !5, i64 104, !9, i64 112, !5, i64 120, !9, i64 128}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"short", !6, i64 0}
!11 = !{!"png_color_8_struct", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4}
!12 = !{!"png_color_16_struct", !6, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8}
!13 = !{!4, !8, i64 16}
!14 = !{!4, !9, i64 128}
!15 = !{!4, !5, i64 0}
!16 = !{!4, !5, i64 4}
!17 = !{!4, !6, i64 36}
!18 = !{!4, !6, i64 37}
!19 = !{!4, !6, i64 39}
!20 = !{!4, !6, i64 40}
!21 = !{!4, !6, i64 38}
!22 = !{!4, !6, i64 41}
!23 = !{!9, !9, i64 0}
!24 = !{!4, !9, i64 96}
!25 = !{!5, !5, i64 0}
!26 = !{!4, !9, i64 24}
!27 = !{!4, !10, i64 32}
!28 = !{!4, !9, i64 64}
!29 = !{!4, !10, i64 34}
!30 = !{!4, !9, i64 112}
!31 = !{!4, !5, i64 120}
!32 = !{!33, !5, i64 48}
!33 = !{!"png_struct_def", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !34, i64 64, !9, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !8, i64 248, !5, i64 256, !5, i64 260, !5, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !8, i64 304, !5, i64 312, !5, i64 316, !9, i64 320, !10, i64 328, !5, i64 332, !10, i64 336, !6, i64 338, !6, i64 339, !6, i64 340, !6, i64 341, !6, i64 342, !6, i64 343, !6, i64 344, !6, i64 345, !6, i64 346, !6, i64 347, !6, i64 348, !6, i64 349, !6, i64 350, !6, i64 351, !6, i64 352, !5, i64 356, !12, i64 360, !9, i64 376, !5, i64 384, !5, i64 388, !11, i64 392, !9, i64 400, !12, i64 408, !9, i64 424, !9, i64 432, !5, i64 440, !5, i64 444, !5, i64 448, !9, i64 456, !9, i64 464, !6, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !8, i64 488, !35, i64 496, !8, i64 528, !9, i64 536, !8, i64 544, !5, i64 552, !5, i64 556, !9, i64 560, !6, i64 568}
!34 = !{!"z_stream_s", !9, i64 0, !5, i64 8, !8, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !5, i64 88, !8, i64 96, !8, i64 104}
!35 = !{!"png_unknown_chunk_t", !6, i64 0, !9, i64 8, !8, i64 16, !6, i64 24}
!36 = !{!33, !5, i64 476}
!37 = !{!33, !5, i64 480}
!38 = !{!33, !5, i64 484}
!39 = !{!33, !8, i64 488}
!40 = !{!33, !5, i64 556}
!41 = !{!33, !5, i64 264}
!42 = !{!33, !5, i64 332}
