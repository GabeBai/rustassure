; ModuleID = 'pngset.c'
source_filename = "pngset.c"
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

@.str = private unnamed_addr constant [46 x i8] c"Invalid palette size, hIST allocation skipped\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Insufficient memory for hIST chunk data\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid palette length\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Invalid palette\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"tRNS chunk has out-of-range samples for bit_depth\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"too many unknown chunks\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unknown chunk: out of memory\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"invalid unknown chunk location\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"png_set_keep_unknown_chunks: invalid keep\00", align 1
@png_set_keep_unknown_chunks.chunks_to_ignore = internal constant [85 x i8] c"bKGD\00cHRM\00gAMA\00hIST\00iCCP\00iTXt\00oFFs\00pCAL\00pHYs\00sBIT\00sCAL\00sPLT\00sTER\00sRGB\00tEXt\00tIME\00zTXt\00", align 16
@.str.9 = private unnamed_addr constant [43 x i8] c"png_set_keep_unknown_chunks: no chunk list\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"png_set_keep_unknown_chunks: too many chunks\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"invalid compression buffer size\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"Compression buffer size cannot be changed because it is in use\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"Compression buffer size cannot be reduced below 6\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"png_set_unknown_chunks now expects a valid location\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"invalid location in png_set_unknown_chunks\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @png_set_bKGD(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef %1, %struct.png_color_16_struct* noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.png_struct_def* %0, null
  %5 = icmp eq %struct.png_info_def* %1, null
  %6 = or i1 %4, %5
  %7 = icmp eq %struct.png_color_16_struct* %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 19, i32 0
  %11 = getelementptr %struct.png_color_16_struct, %struct.png_color_16_struct* %2, i64 0, i32 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(10) %10, i8* noundef nonnull align 2 dereferenceable(10) %11, i64 10, i1 false), !tbaa.struct !3
  %12 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %13 = load i32, i32* %12, align 8, !tbaa !9
  %14 = or i32 %13, 32
  store i32 %14, i32* %12, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @png_set_hIST(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i16* nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = icmp eq %struct.png_struct_def* %0, null
  %5 = icmp eq %struct.png_info_def* %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %121, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 5
  %9 = load i16, i16* %8, align 8, !tbaa !16
  %10 = add i16 %9, -257
  %11 = icmp ult i16 %10, -256
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0)) #9
  br label %121

13:                                               ; preds = %7
  tail call void @png_free_data(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef 8, i32 noundef 0) #9
  %14 = tail call noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef nonnull %0, i64 noundef 512) #9
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 20
  %16 = bitcast i16** %15 to i8**
  store i8* %14, i8** %16, align 8, !tbaa !17
  %17 = icmp eq i8* %14, null
  %18 = bitcast i8* %14 to i16*
  br i1 %17, label %19, label %20

19:                                               ; preds = %13
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %121

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 21
  %22 = load i32, i32* %21, align 8, !tbaa !18
  %23 = or i32 %22, 8
  store i32 %23, i32* %21, align 8, !tbaa !18
  %24 = load i16, i16* %8, align 8, !tbaa !16
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %117, label %26

26:                                               ; preds = %20
  %27 = zext i16 %24 to i64
  %28 = icmp ult i16 %24, 16
  br i1 %28, label %108, label %29

29:                                               ; preds = %26
  %30 = and i64 %27, 65520
  %31 = add nsw i64 %30, -16
  %32 = lshr exact i64 %31, 4
  %33 = add nuw nsw i64 %32, 1
  %34 = and i64 %33, 3
  %35 = icmp ult i64 %31, 48
  br i1 %35, label %87, label %36

36:                                               ; preds = %29
  %37 = and i64 %33, 2305843009213693948
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i64 [ 0, %36 ], [ %84, %38 ]
  %40 = phi i64 [ 0, %36 ], [ %85, %38 ]
  %41 = getelementptr inbounds i16, i16* %2, i64 %39
  %42 = bitcast i16* %41 to <8 x i16>*
  %43 = load <8 x i16>, <8 x i16>* %42, align 2, !tbaa !7
  %44 = getelementptr inbounds i16, i16* %41, i64 8
  %45 = bitcast i16* %44 to <8 x i16>*
  %46 = load <8 x i16>, <8 x i16>* %45, align 2, !tbaa !7
  %47 = getelementptr inbounds i16, i16* %18, i64 %39
  %48 = bitcast i16* %47 to <8 x i16>*
  store <8 x i16> %43, <8 x i16>* %48, align 2, !tbaa !7
  %49 = getelementptr inbounds i16, i16* %47, i64 8
  %50 = bitcast i16* %49 to <8 x i16>*
  store <8 x i16> %46, <8 x i16>* %50, align 2, !tbaa !7
  %51 = or i64 %39, 16
  %52 = getelementptr inbounds i16, i16* %2, i64 %51
  %53 = bitcast i16* %52 to <8 x i16>*
  %54 = load <8 x i16>, <8 x i16>* %53, align 2, !tbaa !7
  %55 = getelementptr inbounds i16, i16* %52, i64 8
  %56 = bitcast i16* %55 to <8 x i16>*
  %57 = load <8 x i16>, <8 x i16>* %56, align 2, !tbaa !7
  %58 = getelementptr inbounds i16, i16* %18, i64 %51
  %59 = bitcast i16* %58 to <8 x i16>*
  store <8 x i16> %54, <8 x i16>* %59, align 2, !tbaa !7
  %60 = getelementptr inbounds i16, i16* %58, i64 8
  %61 = bitcast i16* %60 to <8 x i16>*
  store <8 x i16> %57, <8 x i16>* %61, align 2, !tbaa !7
  %62 = or i64 %39, 32
  %63 = getelementptr inbounds i16, i16* %2, i64 %62
  %64 = bitcast i16* %63 to <8 x i16>*
  %65 = load <8 x i16>, <8 x i16>* %64, align 2, !tbaa !7
  %66 = getelementptr inbounds i16, i16* %63, i64 8
  %67 = bitcast i16* %66 to <8 x i16>*
  %68 = load <8 x i16>, <8 x i16>* %67, align 2, !tbaa !7
  %69 = getelementptr inbounds i16, i16* %18, i64 %62
  %70 = bitcast i16* %69 to <8 x i16>*
  store <8 x i16> %65, <8 x i16>* %70, align 2, !tbaa !7
  %71 = getelementptr inbounds i16, i16* %69, i64 8
  %72 = bitcast i16* %71 to <8 x i16>*
  store <8 x i16> %68, <8 x i16>* %72, align 2, !tbaa !7
  %73 = or i64 %39, 48
  %74 = getelementptr inbounds i16, i16* %2, i64 %73
  %75 = bitcast i16* %74 to <8 x i16>*
  %76 = load <8 x i16>, <8 x i16>* %75, align 2, !tbaa !7
  %77 = getelementptr inbounds i16, i16* %74, i64 8
  %78 = bitcast i16* %77 to <8 x i16>*
  %79 = load <8 x i16>, <8 x i16>* %78, align 2, !tbaa !7
  %80 = getelementptr inbounds i16, i16* %18, i64 %73
  %81 = bitcast i16* %80 to <8 x i16>*
  store <8 x i16> %76, <8 x i16>* %81, align 2, !tbaa !7
  %82 = getelementptr inbounds i16, i16* %80, i64 8
  %83 = bitcast i16* %82 to <8 x i16>*
  store <8 x i16> %79, <8 x i16>* %83, align 2, !tbaa !7
  %84 = add nuw i64 %39, 64
  %85 = add i64 %40, 4
  %86 = icmp eq i64 %85, %37
  br i1 %86, label %87, label %38, !llvm.loop !19

87:                                               ; preds = %38, %29
  %88 = phi i64 [ 0, %29 ], [ %84, %38 ]
  %89 = icmp eq i64 %34, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %87, %90
  %91 = phi i64 [ %103, %90 ], [ %88, %87 ]
  %92 = phi i64 [ %104, %90 ], [ 0, %87 ]
  %93 = getelementptr inbounds i16, i16* %2, i64 %91
  %94 = bitcast i16* %93 to <8 x i16>*
  %95 = load <8 x i16>, <8 x i16>* %94, align 2, !tbaa !7
  %96 = getelementptr inbounds i16, i16* %93, i64 8
  %97 = bitcast i16* %96 to <8 x i16>*
  %98 = load <8 x i16>, <8 x i16>* %97, align 2, !tbaa !7
  %99 = getelementptr inbounds i16, i16* %18, i64 %91
  %100 = bitcast i16* %99 to <8 x i16>*
  store <8 x i16> %95, <8 x i16>* %100, align 2, !tbaa !7
  %101 = getelementptr inbounds i16, i16* %99, i64 8
  %102 = bitcast i16* %101 to <8 x i16>*
  store <8 x i16> %98, <8 x i16>* %102, align 2, !tbaa !7
  %103 = add nuw i64 %91, 16
  %104 = add i64 %92, 1
  %105 = icmp eq i64 %104, %34
  br i1 %105, label %106, label %90, !llvm.loop !22

106:                                              ; preds = %90, %87
  %107 = icmp eq i64 %30, %27
  br i1 %107, label %117, label %108

108:                                              ; preds = %26, %106
  %109 = phi i64 [ 0, %26 ], [ %30, %106 ]
  br label %110

110:                                              ; preds = %108, %110
  %111 = phi i64 [ %115, %110 ], [ %109, %108 ]
  %112 = getelementptr inbounds i16, i16* %2, i64 %111
  %113 = load i16, i16* %112, align 2, !tbaa !7
  %114 = getelementptr inbounds i16, i16* %18, i64 %111
  store i16 %113, i16* %114, align 2, !tbaa !7
  %115 = add nuw nsw i64 %111, 1
  %116 = icmp ult i64 %115, %27
  br i1 %116, label %110, label %117, !llvm.loop !24

117:                                              ; preds = %110, %106, %20
  %118 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %119 = load i32, i32* %118, align 8, !tbaa !9
  %120 = or i32 %119, 64
  store i32 %120, i32* %118, align 8, !tbaa !9
  br label %121

121:                                              ; preds = %3, %117, %19, %12
  ret void
}

declare dso_local void @png_warning(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @png_free_data(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_set_IHDR(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #2 {
  %10 = icmp eq %struct.png_struct_def* %0, null
  %11 = icmp eq %struct.png_info_def* %1, null
  %12 = or i1 %10, %11
  br i1 %12, label %62, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 0
  store i32 %2, i32* %14, align 8, !tbaa !26
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 1
  store i32 %3, i32* %15, align 4, !tbaa !27
  %16 = trunc i32 %4 to i8
  %17 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 7
  store i8 %16, i8* %17, align 4, !tbaa !28
  %18 = trunc i32 %5 to i8
  %19 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 8
  store i8 %18, i8* %19, align 1, !tbaa !29
  %20 = trunc i32 %7 to i8
  %21 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 9
  store i8 %20, i8* %21, align 2, !tbaa !30
  %22 = trunc i32 %8 to i8
  %23 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 10
  store i8 %22, i8* %23, align 1, !tbaa !31
  %24 = trunc i32 %6 to i8
  %25 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 11
  store i8 %24, i8* %25, align 8, !tbaa !32
  %26 = and i32 %4, 255
  %27 = and i32 %5, 255
  %28 = and i32 %6, 255
  %29 = and i32 %7, 255
  %30 = and i32 %8, 255
  tail call void @png_check_IHDR(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30) #9
  %31 = load i8, i8* %19, align 1, !tbaa !29
  %32 = icmp eq i8 %31, 3
  br i1 %32, label %33, label %35

33:                                               ; preds = %13
  %34 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 12
  store i8 1, i8* %34, align 1, !tbaa !33
  br label %43

35:                                               ; preds = %13
  %36 = and i8 %31, 2
  %37 = or i8 %36, 1
  %38 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 12
  store i8 %37, i8* %38, align 1
  %39 = and i8 %31, 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = add nuw nsw i8 %36, 2
  store i8 %42, i8* %38, align 1, !tbaa !33
  br label %43

43:                                               ; preds = %33, %41, %35
  %44 = phi i8 [ 1, %33 ], [ %42, %41 ], [ %37, %35 ]
  %45 = load i8, i8* %17, align 4, !tbaa !28
  %46 = mul i8 %45, %44
  %47 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 13
  store i8 %46, i8* %47, align 2, !tbaa !34
  %48 = icmp ugt i8 %46, 7
  %49 = zext i32 %2 to i64
  br i1 %48, label %50, label %54

50:                                               ; preds = %43
  %51 = lshr i8 %46, 3
  %52 = zext i8 %51 to i64
  %53 = mul nuw nsw i64 %52, %49
  br label %59

54:                                               ; preds = %43
  %55 = zext i8 %46 to i64
  %56 = mul nuw nsw i64 %55, %49
  %57 = add nuw nsw i64 %56, 7
  %58 = lshr i64 %57, 3
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i64 [ %53, %50 ], [ %58, %54 ]
  %61 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 3
  store i64 %60, i64* %61, align 8, !tbaa !35
  br label %62

62:                                               ; preds = %9, %59
  ret void
}

declare dso_local void @png_check_IHDR(%struct.png_struct_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_set_PLTE(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, %struct.png_color_struct* noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq %struct.png_struct_def* %0, null
  %6 = icmp eq %struct.png_info_def* %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %47, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 8
  %10 = load i8, i8* %9, align 1, !tbaa !29
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 7
  %14 = load i8, i8* %13, align 4, !tbaa !28
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 1, %15
  %17 = icmp slt i32 %3, 0
  %18 = icmp slt i32 %16, %3
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %22, label %24

20:                                               ; preds = %8
  %21 = icmp ugt i32 %3, 256
  br i1 %21, label %23, label %24

22:                                               ; preds = %12
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0)) #10
  unreachable

23:                                               ; preds = %20
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0)) #9
  br label %47

24:                                               ; preds = %20, %12
  %25 = icmp eq %struct.png_color_struct* %2, null
  %26 = icmp eq i32 %3, 0
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #10
  unreachable

29:                                               ; preds = %24
  tail call void @png_free_data(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef 4096, i32 noundef 0) #9
  %30 = tail call noalias i8* @png_calloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef 768) #9
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 38
  %32 = bitcast %struct.png_color_struct** %31 to i8**
  store i8* %30, i8** %32, align 8, !tbaa !36
  %33 = getelementptr %struct.png_color_struct, %struct.png_color_struct* %2, i64 0, i32 0
  %34 = zext i32 %3 to i64
  %35 = mul nuw nsw i64 %34, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 %33, i64 %35, i1 false)
  %36 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 4
  %37 = bitcast %struct.png_color_struct** %36 to i8**
  store i8* %30, i8** %37, align 8, !tbaa !40
  %38 = trunc i32 %3 to i16
  %39 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 39
  store i16 %38, i16* %39, align 8, !tbaa !41
  %40 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 5
  store i16 %38, i16* %40, align 8, !tbaa !16
  %41 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 21
  %42 = load i32, i32* %41, align 8, !tbaa !18
  %43 = or i32 %42, 4096
  store i32 %43, i32* %41, align 8, !tbaa !18
  %44 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %45 = load i32, i32* %44, align 8, !tbaa !9
  %46 = or i32 %45, 8
  store i32 %46, i32* %44, align 8, !tbaa !9
  br label %47

47:                                               ; preds = %4, %29, %23
  ret void
}

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local noalias i8* @png_calloc(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @png_set_sBIT(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef %1, %struct.png_color_8_struct* noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.png_struct_def* %0, null
  %5 = icmp eq %struct.png_info_def* %1, null
  %6 = or i1 %4, %5
  %7 = icmp eq %struct.png_color_8_struct* %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 16, i32 0
  %11 = getelementptr %struct.png_color_8_struct, %struct.png_color_8_struct* %2, i64 0, i32 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(5) %10, i8* noundef nonnull align 1 dereferenceable(5) %11, i64 5, i1 false), !tbaa.struct !42
  %12 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %13 = load i32, i32* %12, align 8, !tbaa !9
  %14 = or i32 %13, 2
  store i32 %14, i32* %12, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_tRNS(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i8* noundef readonly %2, i32 noundef %3, %struct.png_color_16_struct* noundef readonly %4) local_unnamed_addr #2 {
  %6 = icmp eq %struct.png_struct_def* %0, null
  %7 = icmp eq %struct.png_info_def* %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %70, label %9

9:                                                ; preds = %5
  %10 = icmp eq i8* %2, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %9
  tail call void @png_free_data(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef 8192, i32 noundef 0) #9
  %12 = tail call noalias i8* @png_malloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef 256) #9
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 17
  store i8* %12, i8** %13, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 63
  store i8* %12, i8** %14, align 8, !tbaa !44
  %15 = add i32 %3, -1
  %16 = icmp ult i32 %15, 256
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* nonnull align 1 %2, i64 %18, i1 false)
  br label %19

19:                                               ; preds = %11, %17, %9
  %20 = icmp eq %struct.png_color_16_struct* %4, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 7
  %23 = load i8, i8* %22, align 4, !tbaa !28
  %24 = icmp ult i8 %23, 16
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = zext i8 %23 to i32
  %27 = shl nsw i32 -1, %26
  %28 = xor i32 %27, -1
  %29 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 8
  %30 = load i8, i8* %29, align 1, !tbaa !29
  switch i8 %30, label %52 [
    i8 0, label %31
    i8 2, label %36
  ]

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %4, i64 0, i32 4
  %33 = load i16, i16* %32, align 2, !tbaa !45
  %34 = zext i16 %33 to i32
  %35 = icmp sgt i32 %34, %28
  br i1 %35, label %51, label %52

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %4, i64 0, i32 1
  %38 = load i16, i16* %37, align 2, !tbaa !46
  %39 = zext i16 %38 to i32
  %40 = icmp sgt i32 %39, %28
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %4, i64 0, i32 2
  %43 = load i16, i16* %42, align 2, !tbaa !47
  %44 = zext i16 %43 to i32
  %45 = icmp sgt i32 %44, %28
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %4, i64 0, i32 3
  %48 = load i16, i16* %47, align 2, !tbaa !48
  %49 = zext i16 %48 to i32
  %50 = icmp sgt i32 %49, %28
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %41, %36, %31
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #9
  br label %52

52:                                               ; preds = %25, %31, %46, %51, %21
  %53 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 18, i32 0
  %54 = getelementptr %struct.png_color_16_struct, %struct.png_color_16_struct* %4, i64 0, i32 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(10) %53, i8* noundef nonnull align 2 dereferenceable(10) %54, i64 10, i1 false), !tbaa.struct !3
  %55 = icmp eq i32 %3, 0
  %56 = trunc i32 %3 to i16
  %57 = select i1 %55, i16 1, i16 %56
  %58 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 6
  store i16 %57, i16* %58, align 2, !tbaa !49
  br label %63

59:                                               ; preds = %19
  %60 = trunc i32 %3 to i16
  %61 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 6
  store i16 %60, i16* %61, align 2, !tbaa !49
  %62 = icmp eq i32 %3, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %52, %59
  %64 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %65 = load i32, i32* %64, align 8, !tbaa !9
  %66 = or i32 %65, 16
  store i32 %66, i32* %64, align 8, !tbaa !9
  %67 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 21
  %68 = load i32, i32* %67, align 8, !tbaa !18
  %69 = or i32 %68, 8192
  store i32 %69, i32* %67, align 8, !tbaa !18
  br label %70

70:                                               ; preds = %5, %63, %59
  ret void
}

declare dso_local noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_set_unknown_chunks(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, %struct.png_unknown_chunk_t* noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq %struct.png_struct_def* %0, null
  %6 = icmp eq %struct.png_info_def* %1, null
  %7 = or i1 %5, %6
  %8 = icmp slt i32 %3, 1
  %9 = or i1 %7, %8
  %10 = icmp eq %struct.png_unknown_chunk_t* %2, null
  %11 = or i1 %10, %9
  br i1 %11, label %88, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 22
  %14 = bitcast %struct.png_unknown_chunk_t** %13 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 23
  %17 = load i32, i32* %16, align 8, !tbaa !51
  %18 = tail call noalias i8* @png_realloc_array(%struct.png_struct_def* noundef nonnull %0, i8* noundef %15, i32 noundef %17, i32 noundef %3, i64 noundef 32) #9
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void @png_chunk_report(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1) #9
  br label %88

21:                                               ; preds = %12
  %22 = load i8*, i8** %14, align 8, !tbaa !50
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %0, i8* noundef %22) #9
  store i8* %18, i8** %14, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 21
  %24 = load i32, i32* %23, align 8, !tbaa !18
  %25 = or i32 %24, 512
  store i32 %25, i32* %23, align 8, !tbaa !18
  %26 = bitcast i8* %18 to %struct.png_unknown_chunk_t*
  %27 = load i32, i32* %16, align 8, !tbaa !51
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %26, i64 %28
  %30 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  br label %31

31:                                               ; preds = %21, %83
  %32 = phi %struct.png_unknown_chunk_t* [ %29, %21 ], [ %84, %83 ]
  %33 = phi i32 [ %3, %21 ], [ %85, %83 ]
  %34 = phi %struct.png_unknown_chunk_t* [ %2, %21 ], [ %86, %83 ]
  %35 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %32, i64 0, i32 0, i64 0
  %36 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %34, i64 0, i32 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(5) %35, i8* noundef nonnull align 8 dereferenceable(5) %36, i64 5, i1 false)
  %37 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %32, i64 0, i32 0, i64 4
  store i8 0, i8* %37, align 4, !tbaa !4
  %38 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %34, i64 0, i32 3
  %39 = load i8, i8* %38, align 8, !tbaa !52
  %40 = and i8 %39, 11
  %41 = zext i8 %40 to i32
  %42 = icmp eq i8 %40, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %49, %31
  %44 = phi i32 [ %41, %31 ], [ %51, %49 ]
  br label %54

45:                                               ; preds = %31
  %46 = load i32, i32* %30, align 8, !tbaa !53, !alias.scope !54
  %47 = and i32 %46, 32768
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  tail call void @png_app_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0)) #9
  %50 = load i32, i32* %30, align 8, !tbaa !53, !alias.scope !54
  %51 = and i32 %50, 11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %43

53:                                               ; preds = %49, %45
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0)) #10
  unreachable

54:                                               ; preds = %43, %54
  %55 = phi i32 [ %59, %54 ], [ %44, %43 ]
  %56 = sub nsw i32 0, %55
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %55, %57
  %59 = xor i32 %57, %55
  br i1 %58, label %60, label %54, !llvm.loop !57

60:                                               ; preds = %54
  %61 = trunc i32 %55 to i8
  %62 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %32, i64 0, i32 3
  store i8 %61, i8* %62, align 8, !tbaa !52
  %63 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %34, i64 0, i32 2
  %64 = load i64, i64* %63, align 8, !tbaa !58
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %32, i64 0, i32 1
  %68 = bitcast i8** %67 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %68, i8 0, i64 16, i1 false)
  br label %79

69:                                               ; preds = %60
  %70 = tail call noalias i8* @png_malloc_base(%struct.png_struct_def* noundef %0, i64 noundef %64) #9
  %71 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %32, i64 0, i32 1
  store i8* %70, i8** %71, align 8, !tbaa !59
  %72 = icmp eq i8* %70, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  tail call void @png_chunk_report(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 noundef 1) #9
  br label %83

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %34, i64 0, i32 1
  %76 = load i8*, i8** %75, align 8, !tbaa !59
  %77 = load i64, i64* %63, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %70, i8* align 1 %76, i64 %77, i1 false)
  %78 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %32, i64 0, i32 2
  store i64 %77, i64* %78, align 8, !tbaa !58
  br label %79

79:                                               ; preds = %74, %66
  %80 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %32, i64 1
  %81 = load i32, i32* %16, align 8, !tbaa !51
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 8, !tbaa !51
  br label %83

83:                                               ; preds = %79, %73
  %84 = phi %struct.png_unknown_chunk_t* [ %80, %79 ], [ %32, %73 ]
  %85 = add nsw i32 %33, -1
  %86 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %34, i64 1
  %87 = icmp sgt i32 %33, 1
  br i1 %87, label %31, label %88, !llvm.loop !60

88:                                               ; preds = %83, %4, %20
  ret void
}

declare dso_local noalias i8* @png_realloc_array(%struct.png_struct_def* noundef, i8* noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @png_chunk_report(%struct.png_struct_def* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @png_free(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local noalias i8* @png_malloc_base(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_set_unknown_chunk_location(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ne %struct.png_struct_def* %0, null
  %6 = icmp ne %struct.png_info_def* %1, null
  %7 = and i1 %5, %6
  %8 = icmp sgt i32 %2, -1
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 23
  %12 = load i32, i32* %11, align 8, !tbaa !51
  %13 = icmp sgt i32 %12, %2
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = and i32 %3, 11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0)) #9
  %18 = and i32 %3, 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 1, i32 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ %3, %14 ], [ %20, %17 ]
  %23 = and i32 %22, 11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %32, %21
  %26 = phi i32 [ %23, %21 ], [ %34, %32 ]
  br label %37

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %29 = load i32, i32* %28, align 8, !tbaa !53, !alias.scope !61
  %30 = and i32 %29, 32768
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  tail call void @png_app_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0)) #9
  %33 = load i32, i32* %28, align 8, !tbaa !53, !alias.scope !61
  %34 = and i32 %33, 11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %25

36:                                               ; preds = %32, %27
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0)) #10
  unreachable

37:                                               ; preds = %25, %37
  %38 = phi i32 [ %42, %37 ], [ %26, %25 ]
  %39 = sub nsw i32 0, %38
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %38, %40
  %42 = xor i32 %40, %38
  br i1 %41, label %43, label %37, !llvm.loop !57

43:                                               ; preds = %37
  %44 = trunc i32 %38 to i8
  %45 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 22
  %46 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %45, align 8, !tbaa !50
  %47 = sext i32 %2 to i64
  %48 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %46, i64 %47, i32 3
  store i8 %44, i8* %48, align 8, !tbaa !52
  br label %49

49:                                               ; preds = %43, %10, %4
  ret void
}

declare dso_local void @png_app_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_set_keep_unknown_chunks(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i8* noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq %struct.png_struct_def* %0, null
  br i1 %5, label %154, label %6

6:                                                ; preds = %4
  %7 = icmp ugt i32 %1, 3
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0)) #9
  br label %154

9:                                                ; preds = %6
  %10 = icmp slt i32 %3, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 68
  store i32 %1, i32* %12, align 4, !tbaa !64
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %154, label %17

14:                                               ; preds = %9
  %15 = icmp eq i8* %2, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0)) #9
  br label %154

17:                                               ; preds = %11, %14
  %18 = phi i8* [ %2, %14 ], [ getelementptr inbounds ([85 x i8], [85 x i8]* @png_set_keep_unknown_chunks.chunks_to_ignore, i64 0, i64 0), %11 ]
  %19 = phi i32 [ %3, %14 ], [ 17, %11 ]
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 69
  %21 = load i32, i32* %20, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 70
  %23 = load i8*, i8** %22, align 8, !tbaa !66
  %24 = icmp eq i8* %23, null
  %25 = select i1 %24, i32 0, i32 %21
  %26 = add i32 %25, %19
  %27 = icmp ugt i32 %26, 858993459
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  tail call void @png_app_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0)) #9
  br label %154

29:                                               ; preds = %17
  %30 = icmp eq i32 %1, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %29
  %32 = mul nuw i32 %26, 5
  %33 = zext i32 %32 to i64
  %34 = tail call noalias i8* @png_malloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef %33) #9
  %35 = icmp eq i32 %25, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %22, align 8, !tbaa !66
  %38 = mul i32 %25, 5
  %39 = zext i32 %38 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 %37, i64 %39, i1 false)
  br label %42

40:                                               ; preds = %29
  %41 = icmp eq i32 %25, 0
  br i1 %41, label %141, label %42

42:                                               ; preds = %40, %31, %36
  %43 = phi i8* [ %34, %36 ], [ %34, %31 ], [ %23, %40 ]
  %44 = icmp eq i8* %43, null
  br i1 %44, label %141, label %45

45:                                               ; preds = %42
  %46 = trunc i32 %1 to i8
  %47 = zext i32 %19 to i64
  br label %55

48:                                               ; preds = %82
  %49 = icmp eq i32 %83, 0
  br i1 %49, label %137, label %50

50:                                               ; preds = %48
  %51 = and i32 %83, 1
  %52 = icmp eq i32 %83, 1
  br i1 %52, label %119, label %53

53:                                               ; preds = %50
  %54 = and i32 %83, -2
  br label %86

55:                                               ; preds = %45, %82
  %56 = phi i64 [ 0, %45 ], [ %84, %82 ]
  %57 = phi i32 [ %25, %45 ], [ %83, %82 ]
  %58 = mul i64 %56, 5
  %59 = and i64 %58, 4294967295
  %60 = getelementptr inbounds i8, i8* %18, i64 %59
  %61 = icmp eq i32 %57, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %55, %67
  %63 = phi i32 [ %68, %67 ], [ 0, %55 ]
  %64 = phi i8* [ %69, %67 ], [ %43, %55 ]
  %65 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %64, i8* noundef nonnull dereferenceable(4) %60, i64 4) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  %68 = add nuw i32 %63, 1
  %69 = getelementptr inbounds i8, i8* %64, i64 5
  %70 = icmp eq i32 %68, %57
  br i1 %70, label %71, label %62, !llvm.loop !67

71:                                               ; preds = %67, %55
  %72 = phi i8* [ %43, %55 ], [ %69, %67 ]
  br i1 %30, label %82, label %73

73:                                               ; preds = %71
  %74 = add i32 %57, 1
  %75 = bitcast i8* %60 to i32*
  %76 = bitcast i8* %72 to i32*
  %77 = load i32, i32* %75, align 1
  store i32 %77, i32* %76, align 1
  br label %78

78:                                               ; preds = %62, %73
  %79 = phi i8* [ %72, %73 ], [ %64, %62 ]
  %80 = phi i32 [ %74, %73 ], [ %57, %62 ]
  %81 = getelementptr inbounds i8, i8* %79, i64 4
  store i8 %46, i8* %81, align 1, !tbaa !4
  br label %82

82:                                               ; preds = %71, %78
  %83 = phi i32 [ %57, %71 ], [ %80, %78 ]
  %84 = add nuw nsw i64 %56, 1
  %85 = icmp eq i64 %84, %47
  br i1 %85, label %48, label %55, !llvm.loop !68

86:                                               ; preds = %113, %53
  %87 = phi i8* [ %43, %53 ], [ %115, %113 ]
  %88 = phi i8* [ %43, %53 ], [ %116, %113 ]
  %89 = phi i32 [ 0, %53 ], [ %114, %113 ]
  %90 = phi i32 [ 0, %53 ], [ %117, %113 ]
  %91 = getelementptr inbounds i8, i8* %88, i64 4
  %92 = load i8, i8* %91, align 1, !tbaa !4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %86
  %95 = icmp eq i8* %87, %88
  br i1 %95, label %97, label %96

96:                                               ; preds = %94
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %87, i8* noundef nonnull align 1 dereferenceable(5) %88, i64 5, i1 false)
  br label %97

97:                                               ; preds = %96, %94
  %98 = getelementptr inbounds i8, i8* %87, i64 5
  %99 = add i32 %89, 1
  br label %100

100:                                              ; preds = %86, %97
  %101 = phi i32 [ %99, %97 ], [ %89, %86 ]
  %102 = phi i8* [ %98, %97 ], [ %87, %86 ]
  %103 = getelementptr inbounds i8, i8* %88, i64 5
  %104 = getelementptr inbounds i8, i8* %88, i64 9
  %105 = load i8, i8* %104, align 1, !tbaa !4
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %100
  %108 = icmp eq i8* %102, %103
  br i1 %108, label %110, label %109

109:                                              ; preds = %107
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %102, i8* noundef nonnull align 1 dereferenceable(5) %103, i64 5, i1 false)
  br label %110

110:                                              ; preds = %109, %107
  %111 = getelementptr inbounds i8, i8* %102, i64 5
  %112 = add i32 %101, 1
  br label %113

113:                                              ; preds = %110, %100
  %114 = phi i32 [ %112, %110 ], [ %101, %100 ]
  %115 = phi i8* [ %111, %110 ], [ %102, %100 ]
  %116 = getelementptr inbounds i8, i8* %88, i64 10
  %117 = add i32 %90, 2
  %118 = icmp eq i32 %117, %54
  br i1 %118, label %119, label %86, !llvm.loop !69

119:                                              ; preds = %113, %50
  %120 = phi i32 [ undef, %50 ], [ %114, %113 ]
  %121 = phi i8* [ %43, %50 ], [ %115, %113 ]
  %122 = phi i8* [ %43, %50 ], [ %116, %113 ]
  %123 = phi i32 [ 0, %50 ], [ %114, %113 ]
  %124 = icmp eq i32 %51, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds i8, i8* %122, i64 4
  %127 = load i8, i8* %126, align 1, !tbaa !4
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  %130 = icmp eq i8* %121, %122
  br i1 %130, label %132, label %131

131:                                              ; preds = %129
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %121, i8* noundef nonnull align 1 dereferenceable(5) %122, i64 5, i1 false)
  br label %132

132:                                              ; preds = %131, %129
  %133 = add i32 %123, 1
  br label %134

134:                                              ; preds = %125, %132, %119
  %135 = phi i32 [ %120, %119 ], [ %133, %132 ], [ %123, %125 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %48, %134
  %138 = load i8*, i8** %22, align 8, !tbaa !66
  %139 = icmp eq i8* %138, %43
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %43) #9
  br label %141

141:                                              ; preds = %40, %140, %134, %42
  %142 = phi i8* [ null, %42 ], [ null, %140 ], [ %43, %134 ], [ null, %40 ]
  %143 = phi i32 [ 0, %42 ], [ 0, %140 ], [ %135, %134 ], [ 0, %40 ]
  %144 = load i8*, i8** %22, align 8, !tbaa !66
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i8* [ %144, %141 ], [ %43, %137 ]
  %147 = phi i8* [ %142, %141 ], [ null, %137 ]
  %148 = phi i32 [ %143, %141 ], [ 0, %137 ]
  store i32 %148, i32* %20, align 8, !tbaa !65
  %149 = icmp eq i8* %146, %147
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = icmp eq i8* %146, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %150
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %146) #9
  br label %153

153:                                              ; preds = %152, %150
  store i8* %147, i8** %22, align 8, !tbaa !66
  br label %154

154:                                              ; preds = %145, %153, %11, %4, %28, %16, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_rows(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i8** noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq %struct.png_struct_def* %0, null
  %5 = icmp eq %struct.png_info_def* %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 24
  %9 = load i8**, i8*** %8, align 8, !tbaa !70
  %10 = icmp eq i8** %9, null
  %11 = icmp eq i8** %9, %2
  %12 = or i1 %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @png_free_data(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %1, i32 noundef 64, i32 noundef 0) #9
  br label %14

14:                                               ; preds = %13, %7
  store i8** %2, i8*** %8, align 8, !tbaa !70
  %15 = icmp eq i8** %2, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %18 = load i32, i32* %17, align 8, !tbaa !9
  %19 = or i32 %18, 32768
  store i32 %19, i32* %17, align 8, !tbaa !9
  br label %20

20:                                               ; preds = %3, %16, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_compression_buffer_size(%struct.png_struct_def* noalias noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, -2147483648
  %6 = icmp ult i64 %5, -2147483647
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0)) #10
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %10 = load i32, i32* %9, align 8, !tbaa !53
  %11 = and i32 %10, 32768
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = trunc i64 %1 to i32
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 81
  store i32 %14, i32* %15, align 8, !tbaa !71
  br label %32

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 9
  %18 = load i32, i32* %17, align 4, !tbaa !72
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0)) #9
  br label %32

21:                                               ; preds = %16
  %22 = icmp ult i64 %1, 6
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0)) #9
  br label %32

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 12
  %26 = load i32, i32* %25, align 8, !tbaa !73
  %27 = zext i32 %26 to i64
  %28 = icmp eq i64 %27, %1
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 11
  tail call void @png_free_buffer_list(%struct.png_struct_def* noundef nonnull %0, %struct.png_compression_buffer** noundef nonnull %30) #9
  %31 = trunc i64 %1 to i32
  store i32 %31, i32* %25, align 8, !tbaa !73
  br label %32

32:                                               ; preds = %24, %29, %2, %13, %20, %23
  ret void
}

declare dso_local void @png_free_buffer_list(%struct.png_struct_def* noundef, %struct.png_compression_buffer** noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @png_set_invalid(%struct.png_struct_def* noalias noundef readnone %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp ne %struct.png_struct_def* %0, null
  %5 = icmp ne %struct.png_info_def* %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = xor i32 %2, -1
  %9 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %10 = load i32, i32* %9, align 8, !tbaa !9
  %11 = and i32 %10, %8
  store i32 %11, i32* %9, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_set_user_limits(%struct.png_struct_def* noalias noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq %struct.png_struct_def* %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 73
  store i32 %1, i32* %6, align 4, !tbaa !74
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 74
  store i32 %2, i32* %7, align 8, !tbaa !75
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_set_chunk_cache_max(%struct.png_struct_def* noalias noundef writeonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 75
  store i32 %1, i32* %5, align 4, !tbaa !76
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_set_chunk_malloc_max(%struct.png_struct_def* noalias noundef writeonly %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 76
  store i64 %1, i64* %5, align 8, !tbaa !77
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @png_set_benign_errors(%struct.png_struct_def* noalias nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %5 = load i32, i32* %4, align 4, !tbaa !78
  %6 = and i32 %5, -7340033
  %7 = select i1 %3, i32 0, i32 7340032
  %8 = or i32 %6, %7
  store i32 %8, i32* %4, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_set_check_for_invalid_index(%struct.png_struct_def* noalias nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp slt i32 %1, 1
  %4 = sext i1 %3 to i32
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 40
  store i32 %4, i32* %5, align 4
  ret void
}

declare dso_local void @png_app_warning(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{i64 0, i64 1, !4, i64 2, i64 2, !7, i64 4, i64 2, !7, i64 6, i64 2, !7, i64 8, i64 2, !7}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"png_info_def", !11, i64 0, !11, i64 4, !11, i64 8, !12, i64 16, !13, i64 24, !8, i64 32, !8, i64 34, !5, i64 36, !5, i64 37, !5, i64 38, !5, i64 39, !5, i64 40, !5, i64 41, !5, i64 42, !5, i64 43, !5, i64 44, !14, i64 52, !13, i64 64, !15, i64 72, !15, i64 82, !13, i64 96, !11, i64 104, !13, i64 112, !11, i64 120, !13, i64 128}
!11 = !{!"int", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"png_color_8_struct", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4}
!15 = !{!"png_color_16_struct", !5, i64 0, !8, i64 2, !8, i64 4, !8, i64 6, !8, i64 8}
!16 = !{!10, !8, i64 32}
!17 = !{!10, !13, i64 96}
!18 = !{!10, !11, i64 104}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !20, !25, !21}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!10, !11, i64 0}
!27 = !{!10, !11, i64 4}
!28 = !{!10, !5, i64 36}
!29 = !{!10, !5, i64 37}
!30 = !{!10, !5, i64 38}
!31 = !{!10, !5, i64 39}
!32 = !{!10, !5, i64 40}
!33 = !{!10, !5, i64 41}
!34 = !{!10, !5, i64 42}
!35 = !{!10, !12, i64 16}
!36 = !{!37, !13, i64 320}
!37 = !{!"png_struct_def", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !38, i64 64, !13, i64 176, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !12, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !12, i64 304, !11, i64 312, !11, i64 316, !13, i64 320, !8, i64 328, !11, i64 332, !8, i64 336, !5, i64 338, !5, i64 339, !5, i64 340, !5, i64 341, !5, i64 342, !5, i64 343, !5, i64 344, !5, i64 345, !5, i64 346, !5, i64 347, !5, i64 348, !5, i64 349, !5, i64 350, !5, i64 351, !5, i64 352, !11, i64 356, !15, i64 360, !13, i64 376, !11, i64 384, !11, i64 388, !14, i64 392, !13, i64 400, !15, i64 408, !13, i64 424, !13, i64 432, !11, i64 440, !11, i64 444, !11, i64 448, !13, i64 456, !13, i64 464, !5, i64 472, !11, i64 476, !11, i64 480, !11, i64 484, !12, i64 488, !39, i64 496, !12, i64 528, !13, i64 536, !12, i64 544, !11, i64 552, !11, i64 556, !13, i64 560, !5, i64 568}
!38 = !{!"z_stream_s", !13, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !11, i64 32, !12, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !11, i64 88, !12, i64 96, !12, i64 104}
!39 = !{!"png_unknown_chunk_t", !5, i64 0, !13, i64 8, !12, i64 16, !5, i64 24}
!40 = !{!10, !13, i64 24}
!41 = !{!37, !8, i64 328}
!42 = !{i64 0, i64 1, !4, i64 1, i64 1, !4, i64 2, i64 1, !4, i64 3, i64 1, !4, i64 4, i64 1, !4}
!43 = !{!10, !13, i64 64}
!44 = !{!37, !13, i64 400}
!45 = !{!15, !8, i64 8}
!46 = !{!15, !8, i64 2}
!47 = !{!15, !8, i64 4}
!48 = !{!15, !8, i64 6}
!49 = !{!10, !8, i64 34}
!50 = !{!10, !13, i64 112}
!51 = !{!10, !11, i64 120}
!52 = !{!39, !5, i64 24}
!53 = !{!37, !11, i64 48}
!54 = !{!55}
!55 = distinct !{!55, !56, !"check_location: argument 0"}
!56 = distinct !{!56, !"check_location"}
!57 = distinct !{!57, !20}
!58 = !{!39, !12, i64 16}
!59 = !{!39, !13, i64 8}
!60 = distinct !{!60, !20}
!61 = !{!62}
!62 = distinct !{!62, !63, !"check_location: argument 0"}
!63 = distinct !{!63, !"check_location"}
!64 = !{!37, !11, i64 444}
!65 = !{!37, !11, i64 448}
!66 = !{!37, !13, i64 456}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
!70 = !{!10, !13, i64 128}
!71 = !{!37, !11, i64 552}
!72 = !{!37, !11, i64 60}
!73 = !{!37, !11, i64 184}
!74 = !{!37, !11, i64 476}
!75 = !{!37, !11, i64 480}
!76 = !{!37, !11, i64 484}
!77 = !{!37, !12, i64 488}
!78 = !{!37, !11, i64 52}
