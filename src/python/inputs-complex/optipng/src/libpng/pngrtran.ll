; ModuleID = 'pngrtran.c'
source_filename = "pngrtran.c"
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

@.str = private unnamed_addr constant [41 x i8] c"Can't discard critical data on CRC error\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"NULL row buffer\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Uninitialized row\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @png_set_crc_action(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.png_struct_def* %0, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %3
  switch i32 %1, label %16 [
    i32 5, label %20
    i32 3, label %6
    i32 4, label %11
    i32 2, label %15
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %8 = load i32, i32* %7, align 4, !tbaa !3
  %9 = and i32 %8, -3073
  %10 = or i32 %9, 1024
  store i32 %10, i32* %7, align 4, !tbaa !3
  br label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %13 = load i32, i32* %12, align 4, !tbaa !3
  %14 = or i32 %13, 3072
  store i32 %14, i32* %12, align 4, !tbaa !3
  br label %20

15:                                               ; preds = %5
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #6
  br label %16

16:                                               ; preds = %15, %5
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %18 = load i32, i32* %17, align 4, !tbaa !3
  %19 = and i32 %18, -3073
  store i32 %19, i32* %17, align 4, !tbaa !3
  br label %20

20:                                               ; preds = %16, %11, %6, %5
  switch i32 %2, label %35 [
    i32 5, label %39
    i32 3, label %21
    i32 4, label %26
    i32 1, label %30
  ]

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %23 = load i32, i32* %22, align 4, !tbaa !3
  %24 = and i32 %23, -769
  %25 = or i32 %24, 256
  store i32 %25, i32* %22, align 4, !tbaa !3
  br label %39

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %28 = load i32, i32* %27, align 4, !tbaa !3
  %29 = or i32 %28, 768
  store i32 %29, i32* %27, align 4, !tbaa !3
  br label %39

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %32 = load i32, i32* %31, align 4, !tbaa !3
  %33 = and i32 %32, -769
  %34 = or i32 %33, 512
  store i32 %34, i32* %31, align 4, !tbaa !3
  br label %39

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %37 = load i32, i32* %36, align 4, !tbaa !3
  %38 = and i32 %37, -769
  store i32 %38, i32* %36, align 4, !tbaa !3
  br label %39

39:                                               ; preds = %3, %35, %30, %26, %21, %20
  ret void
}

declare dso_local void @png_warning(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @png_init_read_transformations(%struct.png_struct_def* noalias nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 47
  %3 = load i8, i8* %2, align 1, !tbaa !15
  %4 = icmp eq i8 %3, 3
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 41
  %7 = load i16, i16* %6, align 8, !tbaa !19, !alias.scope !16
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 63
  %11 = load i8*, i8** %10, align 8, !tbaa !20, !alias.scope !16
  %12 = zext i16 %7 to i64
  br label %13

13:                                               ; preds = %19, %9
  %14 = phi i64 [ 0, %9 ], [ %21, %19 ]
  %15 = phi i32 [ 0, %9 ], [ %20, %19 ]
  %16 = getelementptr inbounds i8, i8* %11, i64 %14
  %17 = load i8, i8* %16, align 1, !tbaa !21, !noalias !16
  switch i8 %17, label %45 [
    i8 -1, label %19
    i8 0, label %18
  ]

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ %15, %13 ], [ 1, %18 ]
  %21 = add nuw nsw i64 %14, 1
  %22 = icmp eq i64 %21, %12
  br i1 %22, label %23, label %13, !llvm.loop !22

23:                                               ; preds = %19, %5
  %24 = phi i32 [ 0, %5 ], [ %20, %19 ]
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %26 = load i32, i32* %25, align 8, !tbaa !24, !alias.scope !16
  %27 = and i32 %26, -8388609
  store i32 %27, i32* %25, align 8, !tbaa !24, !alias.scope !16
  %28 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %29 = load i32, i32* %28, align 4, !tbaa !3, !alias.scope !16
  %30 = and i32 %29, -8193
  store i32 %30, i32* %28, align 4, !tbaa !3, !alias.scope !16
  %31 = icmp eq i32 %24, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = and i32 %26, -8388993
  store i32 %33, i32* %25, align 8, !tbaa !24, !alias.scope !16
  br label %45

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 41
  %36 = load i16, i16* %35, align 8, !tbaa !19, !alias.scope !25
  %37 = icmp eq i16 %36, 0
  %38 = and i8 %3, 4
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i1 %37, i1 false
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %43 = load i32, i32* %42, align 8, !tbaa !24, !alias.scope !25
  %44 = and i32 %43, -385
  store i32 %44, i32* %42, align 8, !tbaa !24, !alias.scope !25
  br label %45

45:                                               ; preds = %13, %41, %34, %32, %23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @png_read_transform_info(%struct.png_struct_def* noalias nocapture noundef writeonly %0, %struct.png_info_def* noalias nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 7
  %4 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 8
  %5 = load i8, i8* %4, align 1, !tbaa !28
  %6 = icmp eq i8 %5, 3
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 12
  store i8 1, i8* %8, align 1, !tbaa !30
  br label %17

9:                                                ; preds = %2
  %10 = and i8 %5, 2
  %11 = or i8 %10, 1
  %12 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 12
  store i8 %11, i8* %12, align 1
  %13 = and i8 %5, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = add nuw nsw i8 %10, 2
  store i8 %16, i8* %12, align 1, !tbaa !30
  br label %17

17:                                               ; preds = %7, %15, %9
  %18 = phi i8 [ 1, %7 ], [ %16, %15 ], [ %11, %9 ]
  %19 = load i8, i8* %3, align 4, !tbaa !31
  %20 = mul i8 %19, %18
  %21 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 13
  store i8 %20, i8* %21, align 2, !tbaa !32
  %22 = icmp ugt i8 %20, 7
  %23 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 0
  %24 = load i32, i32* %23, align 8, !tbaa !33
  %25 = zext i32 %24 to i64
  br i1 %22, label %26, label %30

26:                                               ; preds = %17
  %27 = lshr i8 %20, 3
  %28 = zext i8 %27 to i64
  %29 = mul nuw nsw i64 %25, %28
  br label %35

30:                                               ; preds = %17
  %31 = zext i8 %20 to i64
  %32 = mul nuw nsw i64 %25, %31
  %33 = add nuw nsw i64 %32, 7
  %34 = lshr i64 %33, 3
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i64 [ %29, %26 ], [ %34, %30 ]
  %37 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 3
  store i64 %36, i64* %37, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 35
  store i64 %36, i64* %38, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_do_read_transformations(%struct.png_struct_def* noalias noundef %0, %struct.png_row_info_struct* noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 32
  %4 = load i8*, i8** %3, align 8, !tbaa !36
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %9 = load i32, i32* %8, align 4, !tbaa !3
  %10 = and i32 %9, 16448
  %11 = icmp eq i32 %10, 16384
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %1, i64 0, i32 2
  %15 = load i8, i8* %14, align 8, !tbaa !37
  %16 = icmp eq i8 %15, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 40
  %19 = load i32, i32* %18, align 4, !tbaa !39
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @png_do_check_palette_indexes(%struct.png_struct_def* noundef nonnull %0, %struct.png_row_info_struct* noundef nonnull %1) #6
  br label %22

22:                                               ; preds = %21, %17, %13
  ret void
}

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local void @png_do_check_palette_indexes(%struct.png_struct_def* noundef, %struct.png_row_info_struct* noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !8, i64 52}
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
!15 = !{!4, !6, i64 343}
!16 = !{!17}
!17 = distinct !{!17, !18, !"png_init_palette_transformations: argument 0"}
!18 = distinct !{!18, !"png_init_palette_transformations"}
!19 = !{!4, !11, i64 336}
!20 = !{!4, !5, i64 400}
!21 = !{!6, !6, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!4, !8, i64 56}
!25 = !{!26}
!26 = distinct !{!26, !27, !"png_init_rgb_transformations: argument 0"}
!27 = distinct !{!27, !"png_init_rgb_transformations"}
!28 = !{!29, !6, i64 37}
!29 = !{!"png_info_def", !8, i64 0, !8, i64 4, !8, i64 8, !10, i64 16, !5, i64 24, !11, i64 32, !11, i64 34, !6, i64 36, !6, i64 37, !6, i64 38, !6, i64 39, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !6, i64 44, !13, i64 52, !5, i64 64, !12, i64 72, !12, i64 82, !5, i64 96, !8, i64 104, !5, i64 112, !8, i64 120, !5, i64 128}
!30 = !{!29, !6, i64 41}
!31 = !{!29, !6, i64 36}
!32 = !{!29, !6, i64 42}
!33 = !{!29, !8, i64 0}
!34 = !{!29, !10, i64 16}
!35 = !{!4, !10, i64 304}
!36 = !{!4, !5, i64 280}
!37 = !{!38, !6, i64 16}
!38 = !{!"png_row_info_struct", !8, i64 0, !10, i64 8, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 19}
!39 = !{!4, !8, i64 332}
