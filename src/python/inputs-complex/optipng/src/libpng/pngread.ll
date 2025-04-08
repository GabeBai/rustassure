; ModuleID = 'pngread.c'
source_filename = "pngread.c"
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

@.str = private unnamed_addr constant [25 x i8] c"Missing IHDR before IDAT\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing PLTE before IDAT\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Too many IDATs found\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"png_read_update_info/png_start_read_image: duplicate call\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"png_start_read_image/png_read_update_info: duplicate call\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Invalid attempt to read row data\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"bad adaptive filter value\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"sequential row overflow\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"internal sequential row size calculation error\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"Interlace handling should be turned on when using png_read_image\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Read palette index exceeding num_palette\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Image is too high to process with png_read_png()\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"PNG_TRANSFORM_SCALE_16 not supported\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"PNG_TRANSFORM_STRIP_16 not supported\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"PNG_TRANSFORM_STRIP_ALPHA not supported\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"PNG_TRANSFORM_PACKING not supported\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"PNG_TRANSFORM_PACKSWAP not supported\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"PNG_TRANSFORM_EXPAND not supported\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"PNG_TRANSFORM_INVERT_MONO not supported\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"PNG_TRANSFORM_SHIFT not supported\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"PNG_TRANSFORM_BGR not supported\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"PNG_TRANSFORM_SWAP_ALPHA not supported\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"PNG_TRANSFORM_SWAP_ENDIAN not supported\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"PNG_TRANSFORM_INVERT_ALPHA not supported\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"PNG_TRANSFORM_GRAY_TO_RGB not supported\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"PNG_TRANSFORM_EXPAND_16 not supported\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.png_struct_def* @png_create_read_struct(i8* noundef %0, i8* noundef %1, void (%struct.png_struct_def*, i8*)* noundef %2, void (%struct.png_struct_def*, i8*)* noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias %struct.png_struct_def* @png_create_png_struct(i8* noundef %0, i8* noundef %1, void (%struct.png_struct_def*, i8*)* noundef %2, void (%struct.png_struct_def*, i8*)* noundef %3, i8* noundef null, i8* (%struct.png_struct_def*, i64)* noundef null, void (%struct.png_struct_def*, i8*)* noundef null) #6
  %6 = icmp eq %struct.png_struct_def* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 6
  store i32 32768, i32* %8, align 8, !tbaa !3
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 81
  store i32 8192, i32* %9, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i64 0, i32 7
  %11 = load i32, i32* %10, align 4, !tbaa !16
  %12 = or i32 %11, 3145728
  store i32 %12, i32* %10, align 4, !tbaa !16
  tail call void @png_set_read_fn(%struct.png_struct_def* noundef nonnull %5, i8* noundef null, void (%struct.png_struct_def*, i8*, i64)* noundef null) #6
  br label %13

13:                                               ; preds = %7, %4
  ret %struct.png_struct_def* %5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local noalias %struct.png_struct_def* @png_create_png_struct(i8* noundef, i8* noundef, void (%struct.png_struct_def*, i8*)* noundef, void (%struct.png_struct_def*, i8*)* noundef, i8* noundef, i8* (%struct.png_struct_def*, i64)* noundef, void (%struct.png_struct_def*, i8*)* noundef) local_unnamed_addr #2

declare dso_local void @png_set_read_fn(%struct.png_struct_def* noundef, i8* noundef, void (%struct.png_struct_def*, i8*, i64)* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @png_read_info(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  %4 = icmp eq %struct.png_info_def* %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %72, label %6

6:                                                ; preds = %2
  tail call void @png_read_sig(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1) #6
  %7 = tail call i32 @png_read_chunk_header(%struct.png_struct_def* noundef nonnull %0) #6
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %9 = load i32, i32* %8, align 8, !tbaa !17
  %10 = icmp eq i32 %9, 1229209940
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  br label %33

13:                                               ; preds = %65, %6
  %14 = phi i32 [ %7, %6 ], [ %66, %65 ]
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %16 = load i32, i32* %15, align 8, !tbaa !3
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 47
  %22 = load i8, i8* %21, align 1, !tbaa !18
  %23 = icmp eq i8 %22, 3
  %24 = and i32 %16, 2
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #7
  unreachable

28:                                               ; preds = %20
  %29 = and i32 %16, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #6
  %32 = load i32, i32* %15, align 8, !tbaa !3
  br label %47

33:                                               ; preds = %11, %65
  %34 = phi i32 [ %9, %11 ], [ %67, %65 ]
  %35 = phi i32 [ %7, %11 ], [ %66, %65 ]
  %36 = load i32, i32* %12, align 8, !tbaa !3
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = or i32 %36, 8
  store i32 %40, i32* %12, align 8, !tbaa !3
  br label %41

41:                                               ; preds = %33, %39
  switch i32 %34, label %44 [
    i32 1229472850, label %42
    i32 1229278788, label %43
  ]

42:                                               ; preds = %41
  tail call void @png_handle_IHDR(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %35) #6
  br label %65

43:                                               ; preds = %41
  tail call void @png_handle_IEND(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %35) #6
  br label %65

44:                                               ; preds = %41
  %45 = tail call i32 @png_chunk_unknown_handling(%struct.png_struct_def* noundef nonnull %0, i32 noundef %34) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %58, label %52

47:                                               ; preds = %31, %28
  %48 = phi i32 [ %32, %31 ], [ %16, %28 ]
  %49 = or i32 %48, 4
  store i32 %49, i32* %15, align 8, !tbaa !3
  %50 = tail call i32 @png_chunk_unknown_handling(%struct.png_struct_def* noundef nonnull %0, i32 noundef 1229209940) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %69, label %57

52:                                               ; preds = %44
  tail call void @png_handle_unknown(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %35, i32 noundef %45) #6
  %53 = icmp eq i32 %34, 1347179589
  br i1 %53, label %54, label %65

54:                                               ; preds = %52
  %55 = load i32, i32* %12, align 8, !tbaa !3
  %56 = or i32 %55, 2
  store i32 %56, i32* %12, align 8, !tbaa !3
  br label %65

57:                                               ; preds = %47
  tail call void @png_handle_unknown(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %14, i32 noundef %50) #6
  br label %69

58:                                               ; preds = %44
  switch i32 %34, label %64 [
    i32 1347179589, label %59
    i32 1649100612, label %60
    i32 1749635924, label %61
    i32 1933723988, label %62
    i32 1951551059, label %63
  ]

59:                                               ; preds = %58
  tail call void @png_handle_PLTE(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %35) #6
  br label %65

60:                                               ; preds = %58
  tail call void @png_handle_bKGD(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %35) #6
  br label %65

61:                                               ; preds = %58
  tail call void @png_handle_hIST(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %35) #6
  br label %65

62:                                               ; preds = %58
  tail call void @png_handle_sBIT(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %35) #6
  br label %65

63:                                               ; preds = %58
  tail call void @png_handle_tRNS(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %35) #6
  br label %65

64:                                               ; preds = %58
  tail call void @png_handle_unknown(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %35, i32 noundef 0) #6
  br label %65

65:                                               ; preds = %52, %42, %54, %61, %63, %64, %62, %60, %59, %43
  %66 = tail call i32 @png_read_chunk_header(%struct.png_struct_def* noundef nonnull %0) #6
  %67 = load i32, i32* %8, align 8, !tbaa !17
  %68 = icmp eq i32 %67, 1229209940
  br i1 %68, label %13, label %33

69:                                               ; preds = %47, %57
  %70 = phi i32 [ 0, %57 ], [ %14, %47 ]
  %71 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 36
  store i32 %70, i32* %71, align 8, !tbaa !19
  br label %72

72:                                               ; preds = %69, %2
  ret void
}

declare dso_local void @png_read_sig(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) local_unnamed_addr #2

declare dso_local i32 @png_read_chunk_header(%struct.png_struct_def* noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare dso_local void @png_chunk_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @png_chunk_benign_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @png_handle_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @png_handle_IEND(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @png_chunk_unknown_handling(%struct.png_struct_def* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @png_handle_unknown(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @png_handle_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @png_handle_bKGD(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @png_handle_hIST(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @png_handle_sBIT(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @png_handle_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_read_update_info(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %6 = load i32, i32* %5, align 4, !tbaa !16
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @png_read_start_row(%struct.png_struct_def* noundef nonnull %0) #6
  tail call void @png_read_transform_info(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1) #6
  br label %11

10:                                               ; preds = %4
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %11

11:                                               ; preds = %9, %10, %2
  ret void
}

declare dso_local void @png_read_start_row(%struct.png_struct_def* noundef) local_unnamed_addr #2

declare dso_local void @png_read_transform_info(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) local_unnamed_addr #2

declare dso_local void @png_app_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_start_read_image(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %5 = load i32, i32* %4, align 4, !tbaa !16
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @png_read_start_row(%struct.png_struct_def* noundef nonnull %0) #6
  br label %10

9:                                                ; preds = %3
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %10

10:                                               ; preds = %8, %9, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_row(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.png_row_info_struct, align 8
  %5 = bitcast %struct.png_row_info_struct* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #6
  %6 = icmp eq %struct.png_struct_def* %0, null
  br i1 %6, label %203, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %9 = load i32, i32* %8, align 4, !tbaa !16
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @png_read_start_row(%struct.png_struct_def* noundef nonnull %0) #6
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 28
  %15 = load i32, i32* %14, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %4, i64 0, i32 0
  store i32 %15, i32* %16, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 47
  %18 = load i8, i8* %17, align 1, !tbaa !18
  %19 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %4, i64 0, i32 2
  store i8 %18, i8* %19, align 8, !tbaa !23
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 48
  %21 = load i8, i8* %20, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %4, i64 0, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !25
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 51
  %24 = load i8, i8* %23, align 1, !tbaa !26
  %25 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %4, i64 0, i32 4
  store i8 %24, i8* %25, align 2, !tbaa !27
  %26 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 50
  %27 = load i8, i8* %26, align 2, !tbaa !28
  %28 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %4, i64 0, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !29
  %29 = icmp ugt i8 %27, 7
  %30 = zext i32 %15 to i64
  br i1 %29, label %31, label %35

31:                                               ; preds = %13
  %32 = lshr i8 %27, 3
  %33 = zext i8 %32 to i64
  %34 = mul nuw nsw i64 %33, %30
  br label %40

35:                                               ; preds = %13
  %36 = zext i8 %27 to i64
  %37 = mul nuw nsw i64 %36, %30
  %38 = add nuw nsw i64 %37, 7
  %39 = lshr i64 %38, 3
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i64 [ %34, %31 ], [ %39, %35 ]
  %42 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %4, i64 0, i32 1
  store i64 %41, i64* %42, align 8, !tbaa !30
  %43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 29
  %44 = load i32, i32* %43, align 4, !tbaa !31
  %45 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 44
  %46 = load i8, i8* %45, align 4, !tbaa !32
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %120, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %50 = load i32, i32* %49, align 8, !tbaa !33
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %120, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 45
  %55 = load i8, i8* %54, align 1, !tbaa !34
  switch i8 %55, label %116 [
    i8 0, label %56
    i8 1, label %63
    i8 2, label %74
    i8 3, label %84
    i8 4, label %95
    i8 5, label %105
  ]

56:                                               ; preds = %53
  %57 = and i32 %44, 7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %120, label %59

59:                                               ; preds = %56
  %60 = icmp eq i8* %2, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  tail call void @png_combine_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %2, i32 noundef 1) #6
  br label %62

62:                                               ; preds = %61, %59
  tail call void @png_read_finish_row(%struct.png_struct_def* noundef nonnull %0) #6
  br label %203

63:                                               ; preds = %53
  %64 = and i32 %44, 7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %68 = load i32, i32* %67, align 4, !tbaa !35
  %69 = icmp ult i32 %68, 5
  br i1 %69, label %70, label %120

70:                                               ; preds = %66, %63
  %71 = icmp eq i8* %2, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %70
  tail call void @png_combine_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %2, i32 noundef 1) #6
  br label %73

73:                                               ; preds = %72, %70
  tail call void @png_read_finish_row(%struct.png_struct_def* noundef nonnull %0) #6
  br label %203

74:                                               ; preds = %53
  %75 = and i32 %44, 7
  %76 = icmp eq i32 %75, 4
  br i1 %76, label %120, label %77

77:                                               ; preds = %74
  %78 = icmp eq i8* %2, null
  %79 = and i32 %44, 4
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  tail call void @png_combine_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %2, i32 noundef 1) #6
  br label %83

83:                                               ; preds = %82, %77
  tail call void @png_read_finish_row(%struct.png_struct_def* noundef nonnull %0) #6
  br label %203

84:                                               ; preds = %53
  %85 = and i32 %44, 3
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %89 = load i32, i32* %88, align 4, !tbaa !35
  %90 = icmp ult i32 %89, 3
  br i1 %90, label %91, label %120

91:                                               ; preds = %87, %84
  %92 = icmp eq i8* %2, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %91
  tail call void @png_combine_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %2, i32 noundef 1) #6
  br label %94

94:                                               ; preds = %93, %91
  tail call void @png_read_finish_row(%struct.png_struct_def* noundef nonnull %0) #6
  br label %203

95:                                               ; preds = %53
  %96 = and i32 %44, 3
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %120, label %98

98:                                               ; preds = %95
  %99 = icmp eq i8* %2, null
  %100 = and i32 %44, 2
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %99, i1 true, i1 %101
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  tail call void @png_combine_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %2, i32 noundef 1) #6
  br label %104

104:                                              ; preds = %103, %98
  tail call void @png_read_finish_row(%struct.png_struct_def* noundef nonnull %0) #6
  br label %203

105:                                              ; preds = %53
  %106 = and i32 %44, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %110 = load i32, i32* %109, align 4, !tbaa !35
  %111 = icmp ult i32 %110, 2
  br i1 %111, label %112, label %120

112:                                              ; preds = %108, %105
  %113 = icmp eq i8* %2, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %112
  tail call void @png_combine_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %2, i32 noundef 1) #6
  br label %115

115:                                              ; preds = %114, %112
  tail call void @png_read_finish_row(%struct.png_struct_def* noundef nonnull %0) #6
  br label %203

116:                                              ; preds = %53
  %117 = and i32 %44, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  tail call void @png_read_finish_row(%struct.png_struct_def* noundef nonnull %0) #6
  br label %203

120:                                              ; preds = %56, %66, %74, %87, %95, %108, %116, %48, %40
  %121 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %122 = load i32, i32* %121, align 8, !tbaa !3
  %123 = and i32 %122, 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)) #7
  unreachable

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 32
  %128 = load i8*, i8** %127, align 8, !tbaa !36
  %129 = add nuw nsw i64 %41, 1
  tail call void @png_read_IDAT_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef %128, i64 noundef %129) #6
  %130 = load i8*, i8** %127, align 8, !tbaa !36
  %131 = load i8, i8* %130, align 1, !tbaa !37
  %132 = zext i8 %131 to i32
  %133 = icmp eq i8 %131, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %126
  %135 = icmp ult i8 %131, 5
  br i1 %135, label %136, label %144

136:                                              ; preds = %134
  %137 = getelementptr inbounds i8, i8* %130, i64 1
  %138 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %139 = load i8*, i8** %138, align 8, !tbaa !38
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  call void @png_read_filter_row(%struct.png_struct_def* noundef nonnull %0, %struct.png_row_info_struct* noundef nonnull %4, i8* noundef nonnull %137, i8* noundef nonnull %140, i32 noundef %132) #6
  %141 = load i8*, i8** %127, align 8, !tbaa !36
  %142 = load i64, i64* %42, align 8, !tbaa !30
  %143 = add i64 %142, 1
  br label %145

144:                                              ; preds = %134
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #7
  unreachable

145:                                              ; preds = %136, %126
  %146 = phi i64 [ %143, %136 ], [ %129, %126 ]
  %147 = phi i8* [ %141, %136 ], [ %130, %126 ]
  %148 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %149 = load i8*, i8** %148, align 8, !tbaa !38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %149, i8* align 1 %147, i64 %146, i1 false)
  %150 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %151 = load i32, i32* %150, align 8, !tbaa !33
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %145
  call void @png_do_read_transformations(%struct.png_struct_def* noundef nonnull %0, %struct.png_row_info_struct* noundef nonnull %4) #6
  br label %154

154:                                              ; preds = %153, %145
  %155 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 55
  %156 = load i8, i8* %155, align 1, !tbaa !39
  %157 = icmp eq i8 %156, 0
  %158 = load i8, i8* %28, align 1, !tbaa !29
  br i1 %157, label %159, label %164

159:                                              ; preds = %154
  store i8 %158, i8* %155, align 1, !tbaa !39
  %160 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 54
  %161 = load i8, i8* %160, align 2, !tbaa !40
  %162 = icmp ugt i8 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #7
  unreachable

164:                                              ; preds = %154
  %165 = icmp eq i8 %156, %158
  br i1 %165, label %167, label %166

166:                                              ; preds = %164
  call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0)) #7
  unreachable

167:                                              ; preds = %164, %159
  %168 = load i8, i8* %45, align 4, !tbaa !32
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %188, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %150, align 8, !tbaa !33
  %172 = and i32 %171, 2
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %188, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 45
  %176 = load i8, i8* %175, align 1, !tbaa !34
  %177 = icmp ult i8 %176, 6
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = zext i8 %176 to i32
  %180 = load i8*, i8** %127, align 8, !tbaa !36
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  call void @png_do_read_interlace(%struct.png_row_info_struct* noundef nonnull %4, i8* noundef nonnull %181, i32 noundef %179, i32 noundef %171) #6
  br label %182

182:                                              ; preds = %178, %174
  %183 = icmp eq i8* %2, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %182
  call void @png_combine_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %2, i32 noundef 1) #6
  br label %185

185:                                              ; preds = %184, %182
  %186 = icmp eq i8* %1, null
  br i1 %186, label %194, label %187

187:                                              ; preds = %185
  call void @png_combine_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %1, i32 noundef 0) #6
  br label %194

188:                                              ; preds = %170, %167
  %189 = icmp eq i8* %1, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %188
  call void @png_combine_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %1, i32 noundef -1) #6
  br label %191

191:                                              ; preds = %190, %188
  %192 = icmp eq i8* %2, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %191
  call void @png_combine_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %2, i32 noundef -1) #6
  br label %194

194:                                              ; preds = %191, %193, %185, %187
  call void @png_read_finish_row(%struct.png_struct_def* noundef nonnull %0) #6
  %195 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 65
  %196 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %195, align 8, !tbaa !41
  %197 = icmp eq void (%struct.png_struct_def*, i32, i32)* %196, null
  br i1 %197, label %203, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %43, align 4, !tbaa !31
  %200 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 45
  %201 = load i8, i8* %200, align 1, !tbaa !34
  %202 = zext i8 %201 to i32
  call void %196(%struct.png_struct_def* noundef nonnull %0, i32 noundef %199, i32 noundef %202) #6
  br label %203

203:                                              ; preds = %194, %198, %3, %119, %115, %104, %94, %83, %73, %62
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #6
  ret void
}

declare dso_local void @png_combine_row(%struct.png_struct_def* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @png_read_finish_row(%struct.png_struct_def* noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @png_read_IDAT_data(%struct.png_struct_def* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @png_read_filter_row(%struct.png_struct_def* noundef, %struct.png_row_info_struct* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @png_do_read_transformations(%struct.png_struct_def* noundef, %struct.png_row_info_struct* noundef) local_unnamed_addr #2

declare dso_local void @png_do_read_interlace(%struct.png_row_info_struct* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_read_rows(%struct.png_struct_def* noalias noundef %0, i8** noundef readonly %1, i8** noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct.png_struct_def* %0, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %4
  %7 = icmp ne i8** %1, null
  %8 = icmp ne i8** %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %20, %12 ], [ 0, %10 ]
  %14 = phi i8** [ %16, %12 ], [ %1, %10 ]
  %15 = phi i8** [ %18, %12 ], [ %2, %10 ]
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  %17 = load i8*, i8** %14, align 8, !tbaa !42
  %18 = getelementptr inbounds i8*, i8** %15, i64 1
  %19 = load i8*, i8** %15, align 8, !tbaa !42
  tail call void @png_read_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef %17, i8* noundef %19)
  %20 = add nuw i32 %13, 1
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %42, label %12, !llvm.loop !43

22:                                               ; preds = %6
  br i1 %7, label %23, label %32

23:                                               ; preds = %22
  %24 = icmp eq i32 %3, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %23, %25
  %26 = phi i32 [ %30, %25 ], [ 0, %23 ]
  %27 = phi i8** [ %29, %25 ], [ %1, %23 ]
  %28 = load i8*, i8** %27, align 8, !tbaa !42
  tail call void @png_read_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef %28, i8* noundef null)
  %29 = getelementptr inbounds i8*, i8** %27, i64 1
  %30 = add nuw i32 %26, 1
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %42, label %25, !llvm.loop !45

32:                                               ; preds = %22
  %33 = icmp ne i32 %3, 0
  %34 = and i1 %8, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %32, %35
  %36 = phi i32 [ %40, %35 ], [ 0, %32 ]
  %37 = phi i8** [ %39, %35 ], [ %2, %32 ]
  %38 = load i8*, i8** %37, align 8, !tbaa !42
  tail call void @png_read_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef null, i8* noundef %38)
  %39 = getelementptr inbounds i8*, i8** %37, i64 1
  %40 = add nuw i32 %36, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %35, !llvm.loop !46

42:                                               ; preds = %35, %25, %12, %23, %10, %32, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_image(%struct.png_struct_def* noalias noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %50, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %6 = load i32, i32* %5, align 4, !tbaa !16
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = tail call i32 @png_set_interlace_handling(%struct.png_struct_def* noundef nonnull %0) #6
  %11 = load i32, i32* %5, align 4, !tbaa !16, !alias.scope !47
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @png_read_start_row(%struct.png_struct_def* noundef nonnull %0) #6
  br label %31

15:                                               ; preds = %9
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %31

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 44
  %18 = load i8, i8* %17, align 4, !tbaa !32
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %22 = load i32, i32* %21, align 8, !tbaa !33
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0)) #6
  %26 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  %27 = load i32, i32* %26, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 25
  store i32 %27, i32* %28, align 4, !tbaa !51
  br label %29

29:                                               ; preds = %25, %20, %16
  %30 = tail call i32 @png_set_interlace_handling(%struct.png_struct_def* noundef nonnull %0) #6
  br label %31

31:                                               ; preds = %15, %14, %29
  %32 = phi i32 [ %30, %29 ], [ %10, %14 ], [ %10, %15 ]
  %33 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  %34 = load i32, i32* %33, align 8, !tbaa !50
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = icmp eq i32 %34, 0
  br label %38

38:                                               ; preds = %36, %47
  %39 = phi i32 [ 0, %36 ], [ %48, %47 ]
  br i1 %37, label %47, label %40

40:                                               ; preds = %38, %40
  %41 = phi i8** [ %44, %40 ], [ %1, %38 ]
  %42 = phi i32 [ %45, %40 ], [ 0, %38 ]
  %43 = load i8*, i8** %41, align 8, !tbaa !42
  tail call void @png_read_row(%struct.png_struct_def* noundef nonnull %0, i8* noundef %43, i8* noundef null)
  %44 = getelementptr inbounds i8*, i8** %41, i64 1
  %45 = add nuw i32 %42, 1
  %46 = icmp eq i32 %45, %34
  br i1 %46, label %47, label %40, !llvm.loop !52

47:                                               ; preds = %40, %38
  %48 = add nuw nsw i32 %39, 1
  %49 = icmp eq i32 %48, %32
  br i1 %49, label %50, label %38, !llvm.loop !53

50:                                               ; preds = %47, %31, %2
  ret void
}

declare dso_local i32 @png_set_interlace_handling(%struct.png_struct_def* noundef) local_unnamed_addr #2

declare dso_local void @png_warning(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_read_end(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %70, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @png_chunk_unknown_handling(%struct.png_struct_def* noundef nonnull %0, i32 noundef 1229209940) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @png_read_finish_IDAT(%struct.png_struct_def* noundef nonnull %0) #6
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 47
  %10 = load i8, i8* %9, align 1, !tbaa !18
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 40
  %14 = load i32, i32* %13, align 4, !tbaa !54
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 39
  %16 = load i16, i16* %15, align 8, !tbaa !55
  %17 = zext i16 %16 to i32
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  tail call void @png_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0)) #6
  br label %20

20:                                               ; preds = %19, %12, %8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %22 = icmp eq %struct.png_info_def* %1, null
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  br label %24

24:                                               ; preds = %66, %20
  %25 = tail call i32 @png_read_chunk_header(%struct.png_struct_def* noundef nonnull %0) #6
  %26 = load i32, i32* %21, align 8, !tbaa !17
  switch i32 %26, label %29 [
    i32 1229278788, label %27
    i32 1229472850, label %28
  ]

27:                                               ; preds = %24
  tail call void @png_handle_IEND(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %25) #6
  br label %66

28:                                               ; preds = %24
  tail call void @png_handle_IHDR(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %25) #6
  br label %66

29:                                               ; preds = %24
  br i1 %22, label %30, label %32

30:                                               ; preds = %29
  %31 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %25) #6
  br label %66

32:                                               ; preds = %29
  %33 = tail call i32 @png_chunk_unknown_handling(%struct.png_struct_def* noundef nonnull %0, i32 noundef %26) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = icmp eq i32 %26, 1229209940
  br i1 %36, label %37, label %45

37:                                               ; preds = %35
  %38 = icmp eq i32 %25, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = load i32, i32* %23, align 8, !tbaa !3
  %41 = and i32 %40, 8192
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %37
  tail call void @png_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %44

44:                                               ; preds = %39, %43
  tail call void @png_handle_unknown(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef %25, i32 noundef %33) #6
  br label %66

45:                                               ; preds = %35
  tail call void @png_handle_unknown(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef %25, i32 noundef %33) #6
  %46 = icmp eq i32 %26, 1347179589
  br i1 %46, label %47, label %66

47:                                               ; preds = %45
  %48 = load i32, i32* %23, align 8, !tbaa !3
  %49 = or i32 %48, 2
  store i32 %49, i32* %23, align 8, !tbaa !3
  br label %66

50:                                               ; preds = %32
  switch i32 %26, label %65 [
    i32 1229209940, label %51
    i32 1347179589, label %60
    i32 1649100612, label %61
    i32 1749635924, label %62
    i32 1933723988, label %63
    i32 1951551059, label %64
  ]

51:                                               ; preds = %50
  %52 = icmp eq i32 %25, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = load i32, i32* %23, align 8, !tbaa !3
  %55 = and i32 %54, 8192
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53, %51
  tail call void @png_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %58

58:                                               ; preds = %57, %53
  %59 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %25) #6
  br label %66

60:                                               ; preds = %50
  tail call void @png_handle_PLTE(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef %25) #6
  br label %66

61:                                               ; preds = %50
  tail call void @png_handle_bKGD(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef %25) #6
  br label %66

62:                                               ; preds = %50
  tail call void @png_handle_hIST(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef %25) #6
  br label %66

63:                                               ; preds = %50
  tail call void @png_handle_sBIT(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef %25) #6
  br label %66

64:                                               ; preds = %50
  tail call void @png_handle_tRNS(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef %25) #6
  br label %66

65:                                               ; preds = %50
  tail call void @png_handle_unknown(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef %25, i32 noundef 0) #6
  br label %66

66:                                               ; preds = %44, %28, %47, %45, %60, %62, %64, %65, %63, %61, %58, %30, %27
  %67 = load i32, i32* %23, align 8, !tbaa !3
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %24, label %70, !llvm.loop !56

70:                                               ; preds = %66, %2
  ret void
}

declare dso_local void @png_read_finish_IDAT(%struct.png_struct_def* noundef) local_unnamed_addr #2

declare dso_local void @png_benign_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @png_crc_finish(%struct.png_struct_def* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_destroy_read_struct(%struct.png_struct_def** noundef %0, %struct.png_info_def** noundef %1, %struct.png_info_def** noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.png_struct_def** %0, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %3
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %0, align 8, !tbaa !42
  %7 = icmp eq %struct.png_struct_def* %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %5
  tail call void @png_destroy_info_struct(%struct.png_struct_def* noundef nonnull %6, %struct.png_info_def** noundef %2) #6
  tail call void @png_destroy_info_struct(%struct.png_struct_def* noundef nonnull %6, %struct.png_info_def** noundef %1) #6
  store %struct.png_struct_def* null, %struct.png_struct_def** %0, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i64 0, i32 71
  %10 = load i8*, i8** %9, align 8, !tbaa !57, !alias.scope !58
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %6, i8* noundef %10) #6
  store i8* null, i8** %9, align 8, !tbaa !57, !alias.scope !58
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i64 0, i32 83
  %12 = load i8*, i8** %11, align 8, !tbaa !61, !alias.scope !58
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %6, i8* noundef %12) #6
  store i8* null, i8** %11, align 8, !tbaa !61, !alias.scope !58
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i64 0, i32 79
  %14 = load i8*, i8** %13, align 8, !tbaa !62, !alias.scope !58
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %6, i8* noundef %14) #6
  store i8* null, i8** %13, align 8, !tbaa !62, !alias.scope !58
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i64 0, i32 67
  %16 = load i32, i32* %15, align 8, !tbaa !63, !alias.scope !58
  %17 = and i32 %16, 4096
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %8
  %20 = bitcast %struct.png_struct_def* %6 to i8*
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i64 0, i32 38
  %22 = bitcast %struct.png_color_struct** %21 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !64, !alias.scope !58
  tail call void @png_zfree(i8* noundef nonnull %20, i8* noundef %23) #6
  store %struct.png_color_struct* null, %struct.png_color_struct** %21, align 8, !tbaa !64, !alias.scope !58
  %24 = load i32, i32* %15, align 8, !tbaa !63, !alias.scope !58
  br label %25

25:                                               ; preds = %19, %8
  %26 = phi i32 [ %24, %19 ], [ %16, %8 ]
  %27 = and i32 %26, -4097
  store i32 %27, i32* %15, align 8, !tbaa !63, !alias.scope !58
  %28 = and i32 %26, 8192
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i64 0, i32 63
  %32 = load i8*, i8** %31, align 8, !tbaa !65, !alias.scope !58
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %6, i8* noundef %32) #6
  store i8* null, i8** %31, align 8, !tbaa !65, !alias.scope !58
  %33 = load i32, i32* %15, align 8, !tbaa !63, !alias.scope !58
  br label %34

34:                                               ; preds = %25, %30
  %35 = phi i32 [ %33, %30 ], [ %27, %25 ]
  %36 = and i32 %35, -8193
  store i32 %36, i32* %15, align 8, !tbaa !63, !alias.scope !58
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i64 0, i32 10
  %38 = tail call i32 @inflateEnd(%struct.z_stream_s* noundef nonnull %37) #6
  %39 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i64 0, i32 77, i32 1
  %40 = load i8*, i8** %39, align 8, !tbaa !66, !alias.scope !58
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %6, i8* noundef %40) #6
  store i8* null, i8** %39, align 8, !tbaa !66, !alias.scope !58
  %41 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i64 0, i32 70
  %42 = load i8*, i8** %41, align 8, !tbaa !67, !alias.scope !58
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %6, i8* noundef %42) #6
  store i8* null, i8** %41, align 8, !tbaa !67, !alias.scope !58
  tail call void @png_destroy_png_struct(%struct.png_struct_def* noundef nonnull %6) #6
  br label %43

43:                                               ; preds = %3, %5, %34
  ret void
}

declare dso_local void @png_destroy_info_struct(%struct.png_struct_def* noundef, %struct.png_info_def** noundef) local_unnamed_addr #2

declare dso_local void @png_destroy_png_struct(%struct.png_struct_def* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_set_read_status_fn(%struct.png_struct_def* noalias noundef writeonly %0, void (%struct.png_struct_def*, i32, i32)* noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 65
  store void (%struct.png_struct_def*, i32, i32)* %1, void (%struct.png_struct_def*, i32, i32)** %5, align 8, !tbaa !41
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_png(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i8* nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct.png_struct_def* %0, null
  %6 = icmp eq %struct.png_info_def* %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %153, label %8

8:                                                ; preds = %4
  tail call void @png_read_info(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1)
  %9 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !68
  %11 = icmp ugt i32 %10, 536870911
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0)) #7
  unreachable

13:                                               ; preds = %8
  %14 = and i32 %2, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0)) #6
  br label %17

17:                                               ; preds = %16, %13
  %18 = and i32 %2, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0)) #6
  br label %21

21:                                               ; preds = %20, %17
  %22 = and i32 %2, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0)) #6
  br label %25

25:                                               ; preds = %24, %21
  %26 = and i32 %2, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0)) #6
  br label %29

29:                                               ; preds = %28, %25
  %30 = and i32 %2, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0)) #6
  br label %33

33:                                               ; preds = %32, %29
  %34 = and i32 %2, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0)) #6
  br label %37

37:                                               ; preds = %36, %33
  %38 = and i32 %2, 32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0)) #6
  br label %41

41:                                               ; preds = %40, %37
  %42 = and i32 %2, 64
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0)) #6
  br label %45

45:                                               ; preds = %44, %41
  %46 = and i32 %2, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0)) #6
  br label %49

49:                                               ; preds = %48, %45
  %50 = and i32 %2, 256
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0)) #6
  br label %53

53:                                               ; preds = %52, %49
  %54 = and i32 %2, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0)) #6
  br label %57

57:                                               ; preds = %56, %53
  %58 = and i32 %2, 1024
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0)) #6
  br label %61

61:                                               ; preds = %60, %57
  %62 = and i32 %2, 8192
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #6
  br label %65

65:                                               ; preds = %64, %61
  %66 = and i32 %2, 16384
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0)) #6
  br label %69

69:                                               ; preds = %65, %68
  %70 = tail call i32 @png_set_interlace_handling(%struct.png_struct_def* noundef nonnull %0) #6
  %71 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %72 = load i32, i32* %71, align 4, !tbaa !16, !alias.scope !70, !noalias !73
  %73 = and i32 %72, 64
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  tail call void @png_read_start_row(%struct.png_struct_def* noundef nonnull %0) #6, !noalias !73
  tail call void @png_read_transform_info(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1) #6
  br label %77

76:                                               ; preds = %69
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0)) #6, !noalias !73
  br label %77

77:                                               ; preds = %75, %76
  tail call void @png_free_data(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef 64, i32 noundef 0) #6
  %78 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 24
  %79 = load i8**, i8*** %78, align 8, !tbaa !75
  %80 = icmp eq i8** %79, null
  br i1 %80, label %81, label %148

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4, !tbaa !68
  %83 = zext i32 %82 to i64
  %84 = shl nuw nsw i64 %83, 3
  %85 = tail call noalias i8* @png_malloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef %84) #6
  %86 = bitcast i8*** %78 to i8**
  store i8* %85, i8** %86, align 8, !tbaa !75
  %87 = load i32, i32* %9, align 4, !tbaa !68
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 21
  %91 = load i32, i32* %90, align 8, !tbaa !76
  %92 = or i32 %91, 64
  store i32 %92, i32* %90, align 8, !tbaa !76
  br label %148

93:                                               ; preds = %81
  %94 = bitcast i8* %85 to i8**
  %95 = zext i32 %87 to i64
  store i8* null, i8** %94, align 8, !tbaa !42
  %96 = icmp eq i32 %87, 1
  br i1 %96, label %132, label %97, !llvm.loop !77

97:                                               ; preds = %93
  %98 = add nsw i64 %95, -1
  %99 = add nsw i64 %95, -2
  %100 = and i64 %98, 3
  %101 = icmp ult i64 %99, 3
  br i1 %101, label %121, label %102

102:                                              ; preds = %97
  %103 = and i64 %98, -4
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi i64 [ 1, %102 ], [ %118, %104 ]
  %106 = phi i64 [ 0, %102 ], [ %119, %104 ]
  %107 = load i8**, i8*** %78, align 8, !tbaa !75
  %108 = getelementptr inbounds i8*, i8** %107, i64 %105
  store i8* null, i8** %108, align 8, !tbaa !42
  %109 = add nuw nsw i64 %105, 1
  %110 = load i8**, i8*** %78, align 8, !tbaa !75
  %111 = getelementptr inbounds i8*, i8** %110, i64 %109
  store i8* null, i8** %111, align 8, !tbaa !42
  %112 = add nuw nsw i64 %105, 2
  %113 = load i8**, i8*** %78, align 8, !tbaa !75
  %114 = getelementptr inbounds i8*, i8** %113, i64 %112
  store i8* null, i8** %114, align 8, !tbaa !42
  %115 = add nuw nsw i64 %105, 3
  %116 = load i8**, i8*** %78, align 8, !tbaa !75
  %117 = getelementptr inbounds i8*, i8** %116, i64 %115
  store i8* null, i8** %117, align 8, !tbaa !42
  %118 = add nuw nsw i64 %105, 4
  %119 = add i64 %106, 4
  %120 = icmp eq i64 %119, %103
  br i1 %120, label %121, label %104, !llvm.loop !77

121:                                              ; preds = %104, %97
  %122 = phi i64 [ 1, %97 ], [ %118, %104 ]
  %123 = icmp eq i64 %100, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %121, %124
  %125 = phi i64 [ %129, %124 ], [ %122, %121 ]
  %126 = phi i64 [ %130, %124 ], [ 0, %121 ]
  %127 = load i8**, i8*** %78, align 8, !tbaa !75
  %128 = getelementptr inbounds i8*, i8** %127, i64 %125
  store i8* null, i8** %128, align 8, !tbaa !42
  %129 = add nuw nsw i64 %125, 1
  %130 = add i64 %126, 1
  %131 = icmp eq i64 %130, %100
  br i1 %131, label %132, label %124, !llvm.loop !78

132:                                              ; preds = %121, %124, %93
  %133 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 21
  %134 = load i32, i32* %133, align 8, !tbaa !76
  %135 = or i32 %134, 64
  store i32 %135, i32* %133, align 8, !tbaa !76
  br i1 %88, label %148, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 3
  br label %138

138:                                              ; preds = %136, %138
  %139 = phi i64 [ 0, %136 ], [ %144, %138 ]
  %140 = load i64, i64* %137, align 8, !tbaa !80
  %141 = tail call noalias i8* @png_malloc(%struct.png_struct_def* noundef %0, i64 noundef %140) #6
  %142 = load i8**, i8*** %78, align 8, !tbaa !75
  %143 = getelementptr inbounds i8*, i8** %142, i64 %139
  store i8* %141, i8** %143, align 8, !tbaa !42
  %144 = add nuw nsw i64 %139, 1
  %145 = load i32, i32* %9, align 4, !tbaa !68
  %146 = zext i32 %145 to i64
  %147 = icmp ult i64 %144, %146
  br i1 %147, label %138, label %148, !llvm.loop !81

148:                                              ; preds = %138, %89, %132, %77
  %149 = load i8**, i8*** %78, align 8, !tbaa !75
  tail call void @png_read_image(%struct.png_struct_def* noundef %0, i8** noundef %149)
  %150 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %151 = load i32, i32* %150, align 8, !tbaa !82
  %152 = or i32 %151, 32768
  store i32 %152, i32* %150, align 8, !tbaa !82
  tail call void @png_read_end(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef nonnull %1)
  br label %153

153:                                              ; preds = %4, %148
  ret void
}

declare dso_local void @png_free_data(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @png_free(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @png_zfree(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @inflateEnd(%struct.z_stream_s* noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
!15 = !{!4, !8, i64 552}
!16 = !{!4, !8, i64 52}
!17 = !{!4, !8, i64 264}
!18 = !{!4, !6, i64 343}
!19 = !{!4, !8, i64 312}
!20 = !{!4, !8, i64 256}
!21 = !{!22, !8, i64 0}
!22 = !{!"png_row_info_struct", !8, i64 0, !10, i64 8, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 19}
!23 = !{!22, !6, i64 16}
!24 = !{!4, !6, i64 344}
!25 = !{!22, !6, i64 17}
!26 = !{!4, !6, i64 347}
!27 = !{!22, !6, i64 18}
!28 = !{!4, !6, i64 346}
!29 = !{!22, !6, i64 19}
!30 = !{!22, !10, i64 8}
!31 = !{!4, !8, i64 260}
!32 = !{!4, !6, i64 340}
!33 = !{!4, !8, i64 56}
!34 = !{!4, !6, i64 341}
!35 = !{!4, !8, i64 228}
!36 = !{!4, !5, i64 280}
!37 = !{!6, !6, i64 0}
!38 = !{!4, !5, i64 272}
!39 = !{!4, !6, i64 351}
!40 = !{!4, !6, i64 350}
!41 = !{!4, !5, i64 424}
!42 = !{!5, !5, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = !{!48}
!48 = distinct !{!48, !49, !"png_start_read_image: argument 0"}
!49 = distinct !{!49, !"png_start_read_image"}
!50 = !{!4, !8, i64 232}
!51 = !{!4, !8, i64 236}
!52 = distinct !{!52, !44}
!53 = distinct !{!53, !44}
!54 = !{!4, !8, i64 332}
!55 = !{!4, !11, i64 328}
!56 = distinct !{!56, !44}
!57 = !{!4, !5, i64 464}
!58 = !{!59}
!59 = distinct !{!59, !60, !"png_read_destroy: argument 0"}
!60 = distinct !{!60, !"png_read_destroy"}
!61 = !{!4, !5, i64 560}
!62 = !{!4, !5, i64 536}
!63 = !{!4, !8, i64 440}
!64 = !{!4, !5, i64 320}
!65 = !{!4, !5, i64 400}
!66 = !{!4, !5, i64 504}
!67 = !{!4, !5, i64 456}
!68 = !{!69, !8, i64 4}
!69 = !{!"png_info_def", !8, i64 0, !8, i64 4, !8, i64 8, !10, i64 16, !5, i64 24, !11, i64 32, !11, i64 34, !6, i64 36, !6, i64 37, !6, i64 38, !6, i64 39, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !6, i64 44, !13, i64 52, !5, i64 64, !12, i64 72, !12, i64 82, !5, i64 96, !8, i64 104, !5, i64 112, !8, i64 120, !5, i64 128}
!70 = !{!71}
!71 = distinct !{!71, !72, !"png_read_update_info: argument 0"}
!72 = distinct !{!72, !"png_read_update_info"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"png_read_update_info: argument 1"}
!75 = !{!69, !5, i64 128}
!76 = !{!69, !8, i64 104}
!77 = distinct !{!77, !44}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!69, !10, i64 16}
!81 = distinct !{!81, !44}
!82 = !{!69, !8, i64 8}
