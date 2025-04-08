; ModuleID = 'pngwrite.c'
source_filename = "pngwrite.c"
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

@.str = private unnamed_addr constant [43 x i8] c"Valid palette required for paletted images\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"No IDATs written into file\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Wrote palette index exceeding num_palette\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"png_write_info was never called before png_write_row\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"internal write transform logic error\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unknown row filter for method 0\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"png_set_filter: UP/AVG/PAETH cannot be added after start\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Unknown custom filter method\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Only compression windows <= 32k supported by PNG\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Only compression windows >= 256 supported by PNG\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Only compression method 8 is supported by PNG\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"no rows for png_write_image to write\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"PNG_TRANSFORM_INVERT_MONO not supported\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"PNG_TRANSFORM_SHIFT not supported\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"PNG_TRANSFORM_PACKING not supported\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"PNG_TRANSFORM_SWAP_ALPHA not supported\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"PNG_TRANSFORM_STRIP_FILLER not supported\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"PNG_TRANSFORM_BGR not supported\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"PNG_TRANSFORM_SWAP_ENDIAN not supported\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"PNG_TRANSFORM_PACKSWAP not supported\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"PNG_TRANSFORM_INVERT_ALPHA not supported\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Writing zero-length unknown chunk\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @png_write_info_before_PLTE(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  %4 = icmp eq %struct.png_info_def* %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %8 = load i32, i32* %7, align 8, !tbaa !3
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %6
  tail call void @png_write_sig(%struct.png_struct_def* noundef nonnull %0) #9
  %12 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 1
  %15 = load i32, i32* %14, align 4, !tbaa !17
  %16 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 7
  %17 = load i8, i8* %16, align 4, !tbaa !18
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 8
  %20 = load i8, i8* %19, align 1, !tbaa !19
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 9
  %23 = load i8, i8* %22, align 2, !tbaa !20
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 10
  %26 = load i8, i8* %25, align 1, !tbaa !21
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 11
  %29 = load i8, i8* %28, align 8, !tbaa !22
  %30 = zext i8 %29 to i32
  tail call void @png_write_IHDR(%struct.png_struct_def* noundef nonnull %0, i32 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %30) #9
  %31 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %32 = load i32, i32* %31, align 8, !tbaa !23
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %11
  %36 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 16
  %37 = load i8, i8* %19, align 1, !tbaa !19
  %38 = zext i8 %37 to i32
  tail call void @png_write_sBIT(%struct.png_struct_def* noundef nonnull %0, %struct.png_color_8_struct* noundef nonnull %36, i32 noundef %38) #9
  br label %39

39:                                               ; preds = %35, %11
  tail call fastcc void @write_unknown_chunks(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef 1)
  %40 = load i32, i32* %7, align 8, !tbaa !3
  %41 = or i32 %40, 1024
  store i32 %41, i32* %7, align 8, !tbaa !3
  br label %42

42:                                               ; preds = %2, %39, %6
  ret void
}

declare dso_local void @png_write_sig(%struct.png_struct_def* noundef) local_unnamed_addr #1

declare dso_local void @png_write_IHDR(%struct.png_struct_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @png_write_sBIT(%struct.png_struct_def* noundef, %struct.png_color_8_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @write_unknown_chunks(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 23
  %5 = load i32, i32* %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 22
  %9 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %8, align 8, !tbaa !25
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %9, i64 %10
  %12 = icmp sgt i32 %5, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 68
  br label %15

15:                                               ; preds = %13, %48
  %16 = phi %struct.png_unknown_chunk_t* [ %9, %13 ], [ %49, %48 ]
  %17 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %16, i64 0, i32 3
  %18 = load i8, i8* %17, align 8, !tbaa !26
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, %2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %16, i64 0, i32 0, i64 0
  %24 = tail call i32 @png_handle_as_unknown(%struct.png_struct_def* noundef %0, i8* noundef %23) #9
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %16, i64 0, i32 0, i64 3
  %28 = load i8, i8* %27, align 1, !tbaa !27
  %29 = and i8 %28, 32
  %30 = icmp ne i8 %29, 0
  %31 = icmp eq i32 %24, 3
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = icmp eq i32 %24, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  %36 = load i32, i32* %14, align 4, !tbaa !28
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %48

38:                                               ; preds = %35, %26
  %39 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %16, i64 0, i32 2
  %40 = load i64, i64* %39, align 8, !tbaa !29
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  tail call void @png_warning(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0)) #9
  %43 = load i64, i64* %39, align 8, !tbaa !29
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i64 [ %43, %42 ], [ %40, %38 ]
  %46 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %16, i64 0, i32 1
  %47 = load i8*, i8** %46, align 8, !tbaa !30
  tail call void @png_write_chunk(%struct.png_struct_def* noundef %0, i8* noundef nonnull %23, i8* noundef %47, i64 noundef %45) #9
  br label %48

48:                                               ; preds = %22, %33, %35, %44, %15
  %49 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %16, i64 1
  %50 = icmp ult %struct.png_unknown_chunk_t* %49, %11
  br i1 %50, label %15, label %51, !llvm.loop !31

51:                                               ; preds = %48, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_info(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  %4 = icmp eq %struct.png_info_def* %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %59, label %6

6:                                                ; preds = %2
  tail call void @png_write_info_before_PLTE(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1)
  %7 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !23
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 4
  %13 = load %struct.png_color_struct*, %struct.png_color_struct** %12, align 8, !tbaa !33
  %14 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 5
  %15 = load i16, i16* %14, align 8, !tbaa !34
  %16 = zext i16 %15 to i32
  tail call void @png_write_PLTE(%struct.png_struct_def* noundef nonnull %0, %struct.png_color_struct* noundef %13, i32 noundef %16) #9
  %17 = load i32, i32* %7, align 8, !tbaa !23
  br label %23

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 8
  %20 = load i8, i8* %19, align 1, !tbaa !19
  %21 = icmp eq i8 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0)) #10
  unreachable

23:                                               ; preds = %18, %11
  %24 = phi i32 [ %8, %18 ], [ %17, %11 ]
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 17
  %29 = load i8*, i8** %28, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 18
  %31 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 6
  %32 = load i16, i16* %31, align 2, !tbaa !36
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 8
  %35 = load i8, i8* %34, align 1, !tbaa !19
  %36 = zext i8 %35 to i32
  tail call void @png_write_tRNS(%struct.png_struct_def* noundef nonnull %0, i8* noundef %29, %struct.png_color_16_struct* noundef nonnull %30, i32 noundef %33, i32 noundef %36) #9
  %37 = load i32, i32* %7, align 8, !tbaa !23
  br label %38

38:                                               ; preds = %27, %23
  %39 = phi i32 [ %37, %27 ], [ %24, %23 ]
  %40 = and i32 %39, 32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 19
  %44 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 8
  %45 = load i8, i8* %44, align 1, !tbaa !19
  %46 = zext i8 %45 to i32
  tail call void @png_write_bKGD(%struct.png_struct_def* noundef nonnull %0, %struct.png_color_16_struct* noundef nonnull %43, i32 noundef %46) #9
  %47 = load i32, i32* %7, align 8, !tbaa !23
  br label %48

48:                                               ; preds = %42, %38
  %49 = phi i32 [ %47, %42 ], [ %39, %38 ]
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 20
  %54 = load i16*, i16** %53, align 8, !tbaa !37
  %55 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 5
  %56 = load i16, i16* %55, align 8, !tbaa !34
  %57 = zext i16 %56 to i32
  tail call void @png_write_hIST(%struct.png_struct_def* noundef nonnull %0, i16* noundef %54, i32 noundef %57) #9
  br label %58

58:                                               ; preds = %52, %48
  tail call fastcc void @write_unknown_chunks(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef 2)
  br label %59

59:                                               ; preds = %2, %58
  ret void
}

declare dso_local void @png_write_PLTE(%struct.png_struct_def* noundef, %struct.png_color_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @png_write_tRNS(%struct.png_struct_def* noundef, i8* noundef, %struct.png_color_16_struct* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @png_write_bKGD(%struct.png_struct_def* noundef, %struct.png_color_16_struct* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @png_write_hIST(%struct.png_struct_def* noundef, i16* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @png_write_end(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %6 = load i32, i32* %5, align 8, !tbaa !3
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #10
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 40
  %12 = load i32, i32* %11, align 4, !tbaa !38
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 39
  %14 = load i16, i16* %13, align 8, !tbaa !39
  %15 = zext i16 %14 to i32
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @png_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)) #9
  br label %18

18:                                               ; preds = %17, %10
  %19 = icmp eq %struct.png_info_def* %1, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call fastcc void @write_unknown_chunks(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef 8)
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %5, align 8, !tbaa !3
  %23 = or i32 %22, 8
  store i32 %23, i32* %5, align 8, !tbaa !3
  tail call void @png_write_IEND(%struct.png_struct_def* noundef nonnull %0) #9
  br label %24

24:                                               ; preds = %2, %21
  ret void
}

declare dso_local void @png_benign_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @png_write_IEND(%struct.png_struct_def* noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.png_struct_def* @png_create_write_struct(i8* noundef %0, i8* noundef %1, void (%struct.png_struct_def*, i8*)* noundef %2, void (%struct.png_struct_def*, i8*)* noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias %struct.png_struct_def* @png_create_png_struct(i8* noundef %0, i8* noundef %1, void (%struct.png_struct_def*, i8*)* noundef %2, void (%struct.png_struct_def*, i8*)* noundef %3, i8* noundef null, i8* (%struct.png_struct_def*, i64)* noundef null, void (%struct.png_struct_def*, i8*)* noundef null) #9
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 12
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 17
  store i32 1, i32* %9, align 4, !tbaa !40
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 16
  store i32 8, i32* %10, align 8, !tbaa !41
  %11 = bitcast i32* %8 to <4 x i32>*
  store <4 x i32> <i32 8192, i32 -1, i32 8, i32 15>, <4 x i32>* %11, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 7
  %13 = load i32, i32* %12, align 4, !tbaa !43
  %14 = or i32 %13, 2097152
  store i32 %14, i32* %12, align 4, !tbaa !43
  tail call void @png_set_write_fn(%struct.png_struct_def* noundef nonnull %5, i8* noundef null, void (%struct.png_struct_def*, i8*, i64)* noundef null, void (%struct.png_struct_def*)* noundef null) #9
  br label %15

15:                                               ; preds = %7, %4
  ret %struct.png_struct_def* %5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local noalias %struct.png_struct_def* @png_create_png_struct(i8* noundef, i8* noundef, void (%struct.png_struct_def*, i8*)* noundef, void (%struct.png_struct_def*, i8*)* noundef, i8* noundef, i8* (%struct.png_struct_def*, i64)* noundef, void (%struct.png_struct_def*, i8*)* noundef) local_unnamed_addr #1

declare dso_local void @png_set_write_fn(%struct.png_struct_def* noundef, i8* noundef, void (%struct.png_struct_def*, i8*, i64)* noundef, void (%struct.png_struct_def*)* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @png_write_rows(%struct.png_struct_def* noalias noundef %0, i8** nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne %struct.png_struct_def* %0, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3, %7
  %8 = phi i8** [ %12, %7 ], [ %1, %3 ]
  %9 = phi i32 [ %11, %7 ], [ 0, %3 ]
  %10 = load i8*, i8** %8, align 8, !tbaa !44
  tail call void @png_write_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef %10)
  %11 = add nuw i32 %9, 1
  %12 = getelementptr inbounds i8*, i8** %8, i64 1
  %13 = icmp eq i32 %11, %2
  br i1 %13, label %14, label %7, !llvm.loop !45

14:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_row(%struct.png_struct_def* noalias noundef %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.png_row_info_struct, align 8
  %4 = bitcast %struct.png_row_info_struct* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #9
  %5 = icmp eq %struct.png_struct_def* %0, null
  br i1 %5, label %159, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 29
  %8 = load i32, i32* %7, align 4, !tbaa !46
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 45
  %12 = load i8, i8* %11, align 1, !tbaa !47
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %16 = load i32, i32* %15, align 8, !tbaa !3
  %17 = and i32 %16, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #10
  unreachable

20:                                               ; preds = %14
  tail call void @png_write_start_row(%struct.png_struct_def* noundef nonnull %0) #9
  br label %21

21:                                               ; preds = %20, %10, %6
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 44
  %23 = load i8, i8* %22, align 4, !tbaa !48
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %80, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %27 = load i32, i32* %26, align 8, !tbaa !49
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %80, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 45
  %32 = load i8, i8* %31, align 1, !tbaa !47
  switch i8 %32, label %80 [
    i8 0, label %33
    i8 1, label %38
    i8 2, label %47
    i8 3, label %52
    i8 4, label %61
    i8 5, label %66
    i8 6, label %75
  ]

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4, !tbaa !46
  %35 = and i32 %34, 7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %80, label %37

37:                                               ; preds = %33
  tail call void @png_write_finish_row(%struct.png_struct_def* noundef nonnull %0) #9
  br label %159

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4, !tbaa !46
  %40 = and i32 %39, 7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %44 = load i32, i32* %43, align 4, !tbaa !50
  %45 = icmp ult i32 %44, 5
  br i1 %45, label %46, label %80

46:                                               ; preds = %42, %38
  tail call void @png_write_finish_row(%struct.png_struct_def* noundef nonnull %0) #9
  br label %159

47:                                               ; preds = %30
  %48 = load i32, i32* %7, align 4, !tbaa !46
  %49 = and i32 %48, 7
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %80, label %51

51:                                               ; preds = %47
  tail call void @png_write_finish_row(%struct.png_struct_def* noundef nonnull %0) #9
  br label %159

52:                                               ; preds = %30
  %53 = load i32, i32* %7, align 4, !tbaa !46
  %54 = and i32 %53, 3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %58 = load i32, i32* %57, align 4, !tbaa !50
  %59 = icmp ult i32 %58, 3
  br i1 %59, label %60, label %80

60:                                               ; preds = %56, %52
  tail call void @png_write_finish_row(%struct.png_struct_def* noundef nonnull %0) #9
  br label %159

61:                                               ; preds = %30
  %62 = load i32, i32* %7, align 4, !tbaa !46
  %63 = and i32 %62, 3
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %80, label %65

65:                                               ; preds = %61
  tail call void @png_write_finish_row(%struct.png_struct_def* noundef nonnull %0) #9
  br label %159

66:                                               ; preds = %30
  %67 = load i32, i32* %7, align 4, !tbaa !46
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %72 = load i32, i32* %71, align 4, !tbaa !50
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %80

74:                                               ; preds = %70, %66
  tail call void @png_write_finish_row(%struct.png_struct_def* noundef nonnull %0) #9
  br label %159

75:                                               ; preds = %30
  %76 = load i32, i32* %7, align 4, !tbaa !46
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  tail call void @png_write_finish_row(%struct.png_struct_def* noundef nonnull %0) #9
  br label %159

80:                                               ; preds = %33, %42, %47, %56, %61, %70, %75, %30, %25, %21
  %81 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 47
  %82 = load i8, i8* %81, align 1, !tbaa !51
  %83 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %3, i64 0, i32 2
  store i8 %82, i8* %83, align 8, !tbaa !52
  %84 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 26
  %85 = load i32, i32* %84, align 8, !tbaa !54
  %86 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %3, i64 0, i32 0
  store i32 %85, i32* %86, align 8, !tbaa !55
  %87 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 52
  %88 = load i8, i8* %87, align 4, !tbaa !56
  %89 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %3, i64 0, i32 4
  store i8 %88, i8* %89, align 2, !tbaa !57
  %90 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 49
  %91 = load i8, i8* %90, align 1, !tbaa !58
  %92 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %3, i64 0, i32 3
  store i8 %91, i8* %92, align 1, !tbaa !59
  %93 = mul i8 %91, %88
  %94 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %3, i64 0, i32 5
  store i8 %93, i8* %94, align 1, !tbaa !60
  %95 = icmp ugt i8 %93, 7
  %96 = zext i32 %85 to i64
  br i1 %95, label %97, label %101

97:                                               ; preds = %80
  %98 = lshr i8 %93, 3
  %99 = zext i8 %98 to i64
  %100 = mul nuw nsw i64 %99, %96
  br label %106

101:                                              ; preds = %80
  %102 = zext i8 %93 to i64
  %103 = mul nuw nsw i64 %102, %96
  %104 = add nuw nsw i64 %103, 7
  %105 = lshr i64 %104, 3
  br label %106

106:                                              ; preds = %101, %97
  %107 = phi i64 [ %100, %97 ], [ %105, %101 ]
  %108 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %3, i64 0, i32 1
  store i64 %107, i64* %108, align 8, !tbaa !61
  %109 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 32
  %110 = load i8*, i8** %109, align 8, !tbaa !62
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %111, i8* align 1 %1, i64 %107, i1 false)
  %112 = load i8, i8* %22, align 4, !tbaa !48
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 45
  %116 = load i8, i8* %115, align 1, !tbaa !47
  %117 = zext i8 %116 to i32
  %118 = icmp ult i8 %116, 6
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %121 = load i32, i32* %120, align 8, !tbaa !49
  %122 = and i32 %121, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %109, align 8, !tbaa !62
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  call void @png_do_write_interlace(%struct.png_row_info_struct* noundef nonnull %3, i8* noundef nonnull %126, i32 noundef %117) #9
  %127 = load i32, i32* %86, align 8, !tbaa !55
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %124
  %130 = load i8, i8* %94, align 1, !tbaa !60
  br label %132

131:                                              ; preds = %124
  call void @png_write_finish_row(%struct.png_struct_def* noundef nonnull %0) #9
  br label %159

132:                                              ; preds = %129, %119, %114, %106
  %133 = phi i8 [ %130, %129 ], [ %93, %119 ], [ %93, %114 ], [ %93, %106 ]
  %134 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 50
  %135 = load i8, i8* %134, align 2, !tbaa !63
  %136 = icmp eq i8 %133, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 55
  %139 = load i8, i8* %138, align 1, !tbaa !64
  %140 = icmp eq i8 %133, %139
  br i1 %140, label %142, label %141

141:                                              ; preds = %137, %132
  call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)) #10
  unreachable

142:                                              ; preds = %137
  %143 = load i8, i8* %83, align 8, !tbaa !52
  %144 = icmp eq i8 %143, 3
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 40
  %147 = load i32, i32* %146, align 4, !tbaa !38
  %148 = icmp sgt i32 %147, -1
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  call void @png_do_check_palette_indexes(%struct.png_struct_def* noundef nonnull %0, %struct.png_row_info_struct* noundef nonnull %3) #9
  br label %150

150:                                              ; preds = %149, %145, %142
  call void @png_write_find_filter(%struct.png_struct_def* noundef nonnull %0, %struct.png_row_info_struct* noundef nonnull %3) #9
  %151 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 66
  %152 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %151, align 8, !tbaa !65
  %153 = icmp eq void (%struct.png_struct_def*, i32, i32)* %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %7, align 4, !tbaa !46
  %156 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 45
  %157 = load i8, i8* %156, align 1, !tbaa !47
  %158 = zext i8 %157 to i32
  call void %152(%struct.png_struct_def* noundef nonnull %0, i32 noundef %155, i32 noundef %158) #9
  br label %159

159:                                              ; preds = %150, %154, %2, %131, %79, %74, %65, %60, %51, %46, %37
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_image(%struct.png_struct_def* noalias noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @png_set_interlace_handling(%struct.png_struct_def* noundef nonnull %0) #9
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  %9 = load i32, i32* %8, align 8, !tbaa !66
  br label %10

10:                                               ; preds = %7, %22
  %11 = phi i32 [ %9, %7 ], [ %23, %22 ]
  %12 = phi i32 [ 0, %7 ], [ %24, %22 ]
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10, %14
  %15 = phi i8** [ %19, %14 ], [ %1, %10 ]
  %16 = phi i32 [ %18, %14 ], [ 0, %10 ]
  %17 = load i8*, i8** %15, align 8, !tbaa !44
  tail call void @png_write_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef %17)
  %18 = add nuw i32 %16, 1
  %19 = getelementptr inbounds i8*, i8** %15, i64 1
  %20 = load i32, i32* %8, align 8, !tbaa !66
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %14, label %22, !llvm.loop !67

22:                                               ; preds = %14, %10
  %23 = phi i32 [ 0, %10 ], [ %20, %14 ]
  %24 = add nuw nsw i32 %12, 1
  %25 = icmp eq i32 %24, %5
  br i1 %25, label %26, label %10, !llvm.loop !68

26:                                               ; preds = %22, %4, %2
  ret void
}

declare dso_local i32 @png_set_interlace_handling(%struct.png_struct_def* noundef) local_unnamed_addr #1

declare dso_local void @png_write_start_row(%struct.png_struct_def* noundef) local_unnamed_addr #1

declare dso_local void @png_write_finish_row(%struct.png_struct_def* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @png_do_write_interlace(%struct.png_row_info_struct* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @png_do_check_palette_indexes(%struct.png_struct_def* noundef, %struct.png_row_info_struct* noundef) local_unnamed_addr #1

declare dso_local void @png_write_find_filter(%struct.png_struct_def* noundef, %struct.png_row_info_struct* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_set_flush(%struct.png_struct_def* noalias noundef writeonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  %6 = select i1 %5, i32 %1, i32 0
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 60
  store i32 %6, i32* %7, align 8, !tbaa !69
  br label %8

8:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_flush(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 29
  %5 = load i32, i32* %4, align 4, !tbaa !46
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 25
  %7 = load i32, i32* %6, align 4, !tbaa !70
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  tail call void @png_compress_IDAT(%struct.png_struct_def* noundef nonnull %0, i8* noundef null, i64 noundef 0, i32 noundef 2) #9
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 61
  store i32 0, i32* %10, align 4, !tbaa !71
  tail call void @png_flush(%struct.png_struct_def* noundef nonnull %0) #9
  br label %11

11:                                               ; preds = %3, %1, %9
  ret void
}

declare dso_local void @png_compress_IDAT(%struct.png_struct_def* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @png_flush(%struct.png_struct_def* noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @png_destroy_write_struct(%struct.png_struct_def** noundef %0, %struct.png_info_def** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def** %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %0, align 8, !tbaa !44
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  tail call void @png_destroy_info_struct(%struct.png_struct_def* noundef nonnull %5, %struct.png_info_def** noundef %1) #9
  store %struct.png_struct_def* null, %struct.png_struct_def** %0, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 7
  %9 = load i32, i32* %8, align 4, !tbaa !43, !alias.scope !72
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 10
  %14 = tail call i32 @deflateEnd(%struct.z_stream_s* noundef nonnull %13) #9
  br label %15

15:                                               ; preds = %7, %12
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 11
  tail call void @png_free_buffer_list(%struct.png_struct_def* noundef nonnull %5, %struct.png_compression_buffer** noundef nonnull %16) #9
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 32
  %18 = load i8*, i8** %17, align 8, !tbaa !62, !alias.scope !72
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %5, i8* noundef %18) #9
  store i8* null, i8** %17, align 8, !tbaa !62, !alias.scope !72
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 31
  %20 = load i8*, i8** %19, align 8, !tbaa !75, !alias.scope !72
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %5, i8* noundef %20) #9
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 33
  %22 = load i8*, i8** %21, align 8, !tbaa !76, !alias.scope !72
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %5, i8* noundef %22) #9
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 34
  %24 = load i8*, i8** %23, align 8, !tbaa !77, !alias.scope !72
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %5, i8* noundef %24) #9
  store i8* null, i8** %19, align 8, !tbaa !75, !alias.scope !72
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 70
  %26 = bitcast i8** %21 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false) #9, !alias.scope !72
  %27 = load i8*, i8** %25, align 8, !tbaa !78, !alias.scope !72
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %5, i8* noundef %27) #9
  store i8* null, i8** %25, align 8, !tbaa !78, !alias.scope !72
  tail call void @png_destroy_png_struct(%struct.png_struct_def* noundef nonnull %5) #9
  br label %28

28:                                               ; preds = %4, %15, %2
  ret void
}

declare dso_local void @png_destroy_info_struct(%struct.png_struct_def* noundef, %struct.png_info_def** noundef) local_unnamed_addr #1

declare dso_local void @png_destroy_png_struct(%struct.png_struct_def* noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @png_set_filter(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.png_struct_def* %0, null
  br i1 %4, label %93, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %92

7:                                                ; preds = %5
  %8 = trunc i32 %2 to i8
  switch i8 %8, label %14 [
    i8 5, label %9
    i8 6, label %9
    i8 7, label %9
    i8 0, label %15
    i8 1, label %10
    i8 2, label %11
    i8 3, label %12
    i8 4, label %13
  ]

9:                                                ; preds = %7, %7, %7
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0)) #9
  br label %15

10:                                               ; preds = %7
  br label %15

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  br label %15

13:                                               ; preds = %7
  br label %15

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %9, %7, %14, %13, %12, %11, %10
  %16 = phi i8 [ %8, %14 ], [ -128, %13 ], [ 64, %12 ], [ 32, %11 ], [ 16, %10 ], [ 8, %7 ], [ 8, %9 ]
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 46
  store i8 %16, i8* %17, align 2, !tbaa !79
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 32
  %19 = load i8*, i8** %18, align 8, !tbaa !62
  %20 = icmp eq i8* %19, null
  br i1 %20, label %88, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  %23 = load i32, i32* %22, align 8, !tbaa !66
  %24 = icmp eq i32 %23, 1
  %25 = and i32 %2, -225
  %26 = select i1 %24, i32 %25, i32 %2
  %27 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %28 = load i32, i32* %27, align 4, !tbaa !50
  %29 = icmp eq i32 %28, 1
  %30 = and i32 %26, -209
  %31 = select i1 %29, i32 %30, i32 %26
  %32 = and i32 %31, 224
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %36 = load i8*, i8** %35, align 8, !tbaa !75
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  tail call void @png_app_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0)) #9
  %39 = and i32 %31, -225
  br label %40

40:                                               ; preds = %38, %34, %21
  %41 = phi i32 [ %39, %38 ], [ %31, %34 ], [ %31, %21 ]
  %42 = lshr i32 %41, 4
  %43 = and i32 %42, 1
  %44 = lshr i32 %41, 5
  %45 = and i32 %44, 1
  %46 = add nuw nsw i32 %43, %45
  %47 = lshr i32 %41, 6
  %48 = and i32 %47, 1
  %49 = add nuw nsw i32 %46, %48
  %50 = lshr i32 %41, 7
  %51 = and i32 %50, 1
  %52 = add nuw nsw i32 %49, %51
  %53 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 52
  %54 = load i8, i8* %53, align 4, !tbaa !56
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 49
  %57 = load i8, i8* %56, align 1, !tbaa !58
  %58 = zext i8 %57 to i32
  %59 = mul nuw nsw i32 %58, %55
  %60 = icmp ugt i32 %59, 7
  %61 = load i32, i32* %27, align 4, !tbaa !50
  %62 = zext i32 %61 to i64
  br i1 %60, label %63, label %67

63:                                               ; preds = %40
  %64 = lshr i32 %59, 3
  %65 = zext i32 %64 to i64
  %66 = mul nuw nsw i64 %62, %65
  br label %72

67:                                               ; preds = %40
  %68 = zext i32 %59 to i64
  %69 = mul nuw nsw i64 %62, %68
  %70 = add nuw nsw i64 %69, 7
  %71 = lshr i64 %70, 3
  br label %72

72:                                               ; preds = %67, %63
  %73 = phi i64 [ %66, %63 ], [ %71, %67 ]
  %74 = add nuw nsw i64 %73, 1
  %75 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 33
  %76 = load i8*, i8** %75, align 8, !tbaa !76
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = tail call noalias i8* @png_malloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef %74) #9
  store i8* %79, i8** %75, align 8, !tbaa !76
  br label %80

80:                                               ; preds = %78, %72
  %81 = icmp ugt i32 %52, 1
  br i1 %81, label %82, label %88

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 34
  %84 = load i8*, i8** %83, align 8, !tbaa !77
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = tail call noalias i8* @png_malloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef %74) #9
  store i8* %87, i8** %83, align 8, !tbaa !77
  br label %88

88:                                               ; preds = %80, %86, %82, %15
  %89 = phi i32 [ %2, %15 ], [ %41, %82 ], [ %41, %86 ], [ %41, %80 ]
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 46
  store i8 %90, i8* %91, align 2, !tbaa !79
  br label %93

92:                                               ; preds = %5
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #10
  unreachable

93:                                               ; preds = %3, %88
  ret void
}

declare dso_local void @png_app_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @png_app_warning(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_set_compression_level(%struct.png_struct_def* noalias noundef writeonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 13
  store i32 %1, i32* %5, align 4, !tbaa !80
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_set_compression_mem_level(%struct.png_struct_def* noalias noundef writeonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 16
  store i32 %1, i32* %5, align 8, !tbaa !41
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @png_set_compression_strategy(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %6 = load i32, i32* %5, align 4, !tbaa !43
  %7 = or i32 %6, 1
  store i32 %7, i32* %5, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 17
  store i32 %1, i32* %8, align 4, !tbaa !40
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_compression_window_bits(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 15
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = icmp slt i32 %1, 8
  br i1 %7, label %8, label %11

8:                                                ; preds = %6, %4
  %9 = phi i8* [ getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), %4 ], [ getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), %6 ]
  %10 = phi i32 [ 15, %4 ], [ 8, %6 ]
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef %9) #9
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %1, %6 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 15
  store i32 %12, i32* %13, align 4, !tbaa !81
  br label %14

14:                                               ; preds = %2, %11
  ret void
}

declare dso_local void @png_warning(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @png_set_compression_method(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 8
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0)) #9
  br label %7

7:                                                ; preds = %6, %4
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 14
  store i32 %1, i32* %8, align 8, !tbaa !82
  br label %9

9:                                                ; preds = %2, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_set_write_status_fn(%struct.png_struct_def* noalias noundef writeonly %0, void (%struct.png_struct_def*, i32, i32)* noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 66
  store void (%struct.png_struct_def*, i32, i32)* %1, void (%struct.png_struct_def*, i32, i32)** %5, align 8, !tbaa !65
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_png(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i8* nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct.png_struct_def* %0, null
  %6 = icmp eq %struct.png_info_def* %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %91, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %10 = load i32, i32* %9, align 8, !tbaa !23
  %11 = and i32 %10, 32768
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0)) #9
  br label %91

14:                                               ; preds = %8
  tail call void @png_write_info(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1)
  %15 = and i32 %2, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0)) #9
  br label %18

18:                                               ; preds = %17, %14
  %19 = and i32 %2, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0)) #9
  br label %22

22:                                               ; preds = %21, %18
  %23 = and i32 %2, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0)) #9
  br label %26

26:                                               ; preds = %25, %22
  %27 = and i32 %2, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0)) #9
  br label %30

30:                                               ; preds = %29, %26
  %31 = and i32 %2, 6144
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #9
  br label %34

34:                                               ; preds = %33, %30
  %35 = and i32 %2, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0)) #9
  br label %38

38:                                               ; preds = %37, %34
  %39 = and i32 %2, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0)) #9
  br label %42

42:                                               ; preds = %41, %38
  %43 = and i32 %2, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0)) #9
  br label %46

46:                                               ; preds = %45, %42
  %47 = and i32 %2, 1024
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0)) #9
  br label %50

50:                                               ; preds = %46, %49
  %51 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 24
  %52 = load i8**, i8*** %51, align 8, !tbaa !83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %53 = tail call i32 @png_set_interlace_handling(%struct.png_struct_def* noundef nonnull %0) #9
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  %57 = load i32, i32* %56, align 8, !tbaa !66, !alias.scope !84
  br label %58

58:                                               ; preds = %70, %55
  %59 = phi i32 [ %57, %55 ], [ %71, %70 ]
  %60 = phi i32 [ 0, %55 ], [ %72, %70 ]
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %58, %62
  %63 = phi i8** [ %67, %62 ], [ %52, %58 ]
  %64 = phi i32 [ %66, %62 ], [ 0, %58 ]
  %65 = load i8*, i8** %63, align 8, !tbaa !44, !noalias !84
  tail call void @png_write_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef %65) #9
  %66 = add nuw i32 %64, 1
  %67 = getelementptr inbounds i8*, i8** %63, i64 1
  %68 = load i32, i32* %56, align 8, !tbaa !66, !alias.scope !84
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %62, label %70, !llvm.loop !67

70:                                               ; preds = %62, %58
  %71 = phi i32 [ 0, %58 ], [ %68, %62 ]
  %72 = add nuw nsw i32 %60, 1
  %73 = icmp eq i32 %72, %53
  br i1 %73, label %74, label %58, !llvm.loop !68

74:                                               ; preds = %70, %50
  %75 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %76 = load i32, i32* %75, align 8, !tbaa !3, !alias.scope !87, !noalias !90
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #10, !noalias !90
  unreachable

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 40
  %82 = load i32, i32* %81, align 4, !tbaa !38, !alias.scope !87, !noalias !90
  %83 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 39
  %84 = load i16, i16* %83, align 8, !tbaa !39, !alias.scope !87, !noalias !90
  %85 = zext i16 %84 to i32
  %86 = icmp sgt i32 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  tail call void @png_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)) #9, !noalias !90
  br label %88

88:                                               ; preds = %80, %87
  tail call fastcc void @write_unknown_chunks(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef 8) #9
  %89 = load i32, i32* %75, align 8, !tbaa !3, !alias.scope !87, !noalias !90
  %90 = or i32 %89, 8
  store i32 %90, i32* %75, align 8, !tbaa !3, !alias.scope !87, !noalias !90
  tail call void @png_write_IEND(%struct.png_struct_def* noundef nonnull %0) #9
  br label %91

91:                                               ; preds = %4, %88, %13
  ret void
}

declare dso_local i32 @png_handle_as_unknown(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @png_write_chunk(%struct.png_struct_def* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @deflateEnd(%struct.z_stream_s* noundef) local_unnamed_addr #1

declare dso_local void @png_free_buffer_list(%struct.png_struct_def* noundef, %struct.png_compression_buffer** noundef) local_unnamed_addr #1

declare dso_local void @png_free(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !8, i64 48}
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
!15 = !{!16, !8, i64 0}
!16 = !{!"png_info_def", !8, i64 0, !8, i64 4, !8, i64 8, !10, i64 16, !5, i64 24, !11, i64 32, !11, i64 34, !6, i64 36, !6, i64 37, !6, i64 38, !6, i64 39, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !6, i64 44, !13, i64 52, !5, i64 64, !12, i64 72, !12, i64 82, !5, i64 96, !8, i64 104, !5, i64 112, !8, i64 120, !5, i64 128}
!17 = !{!16, !8, i64 4}
!18 = !{!16, !6, i64 36}
!19 = !{!16, !6, i64 37}
!20 = !{!16, !6, i64 38}
!21 = !{!16, !6, i64 39}
!22 = !{!16, !6, i64 40}
!23 = !{!16, !8, i64 8}
!24 = !{!16, !8, i64 120}
!25 = !{!16, !5, i64 112}
!26 = !{!14, !6, i64 24}
!27 = !{!6, !6, i64 0}
!28 = !{!4, !8, i64 444}
!29 = !{!14, !10, i64 16}
!30 = !{!14, !5, i64 8}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!16, !5, i64 24}
!34 = !{!16, !11, i64 32}
!35 = !{!16, !5, i64 64}
!36 = !{!16, !11, i64 34}
!37 = !{!16, !5, i64 96}
!38 = !{!4, !8, i64 332}
!39 = !{!4, !11, i64 328}
!40 = !{!4, !8, i64 204}
!41 = !{!4, !8, i64 200}
!42 = !{!8, !8, i64 0}
!43 = !{!4, !8, i64 52}
!44 = !{!5, !5, i64 0}
!45 = distinct !{!45, !32}
!46 = !{!4, !8, i64 260}
!47 = !{!4, !6, i64 341}
!48 = !{!4, !6, i64 340}
!49 = !{!4, !8, i64 56}
!50 = !{!4, !8, i64 228}
!51 = !{!4, !6, i64 343}
!52 = !{!53, !6, i64 16}
!53 = !{!"png_row_info_struct", !8, i64 0, !10, i64 8, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 19}
!54 = !{!4, !8, i64 240}
!55 = !{!53, !8, i64 0}
!56 = !{!4, !6, i64 348}
!57 = !{!53, !6, i64 18}
!58 = !{!4, !6, i64 345}
!59 = !{!53, !6, i64 17}
!60 = !{!53, !6, i64 19}
!61 = !{!53, !10, i64 8}
!62 = !{!4, !5, i64 280}
!63 = !{!4, !6, i64 346}
!64 = !{!4, !6, i64 351}
!65 = !{!4, !5, i64 432}
!66 = !{!4, !8, i64 232}
!67 = distinct !{!67, !32}
!68 = distinct !{!68, !32}
!69 = !{!4, !8, i64 384}
!70 = !{!4, !8, i64 236}
!71 = !{!4, !8, i64 388}
!72 = !{!73}
!73 = distinct !{!73, !74, !"png_write_destroy: argument 0"}
!74 = distinct !{!74, !"png_write_destroy"}
!75 = !{!4, !5, i64 272}
!76 = !{!4, !5, i64 288}
!77 = !{!4, !5, i64 296}
!78 = !{!4, !5, i64 456}
!79 = !{!4, !6, i64 342}
!80 = !{!4, !8, i64 188}
!81 = !{!4, !8, i64 196}
!82 = !{!4, !8, i64 192}
!83 = !{!16, !5, i64 128}
!84 = !{!85}
!85 = distinct !{!85, !86, !"png_write_image: argument 0"}
!86 = distinct !{!86, !"png_write_image"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"png_write_end: argument 0"}
!89 = distinct !{!89, !"png_write_end"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"png_write_end: argument 1"}
