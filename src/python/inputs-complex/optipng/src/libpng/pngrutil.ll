; ModuleID = 'pngrutil.c'
source_filename = "pngrutil.c"
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

@.str = private unnamed_addr constant [34 x i8] c"PNG unsigned integer out of range\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Not a PNG file\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"PNG file corrupted by ASCII conversion\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CRC error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"out of place\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"ignored in grayscale PNG\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"tRNS must be after\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"hIST must be after\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"bKGD must be after\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"invalid with alpha channel\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"no space in chunk cache\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"unhandled critical chunk\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"invalid chunk type\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"internal row logic error\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"internal row size calculation error\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"internal row width error\00", align 1
@png_combine_row.row_mask = internal unnamed_addr constant [2 x [3 x [6 x i32]]] [[3 x [6 x i32]] [[6 x i32] [i32 16843009, i32 269488144, i32 286331153, i32 1145324612, i32 1431655765, i32 -1431655766], [6 x i32] [i32 196611, i32 50332416, i32 50529027, i32 808464432, i32 858993459, i32 -858993460], [6 x i32] [i32 15, i32 983040, i32 983055, i32 251662080, i32 252645135, i32 -252645136]], [3 x [6 x i32]] [[6 x i32] [i32 -2139062144, i32 134744072, i32 -2004318072, i32 572662306, i32 -1431655766, i32 1431655765], [6 x i32] [i32 12583104, i32 -1073692672, i32 -1061109568, i32 202116108, i32 -858993460, i32 858993459], [6 x i32] [i32 240, i32 15728640, i32 15728880, i32 -268374016, i32 -252645136, i32 252645135]]], align 16
@png_combine_row.display_mask = internal unnamed_addr constant [2 x [3 x [3 x i32]]] [[3 x [3 x i32]] [[3 x i32] [i32 -252645136, i32 -858993460, i32 -1431655766], [3 x i32] [i32 -16711936, i32 -252645136, i32 -858993460], [3 x i32] [i32 -65536, i32 -16711936, i32 -252645136]], [3 x [3 x i32]] [[3 x i32] [i32 252645135, i32 858993459, i32 1431655765], [3 x i32] [i32 -16711936, i32 252645135, i32 858993459], [3 x i32] [i32 -65536, i32 -16711936, i32 252645135]]], align 16
@.str.20 = private unnamed_addr constant [35 x i8] c"invalid user transform pixel depth\00", align 1
@png_do_read_interlace.png_pass_inc = internal unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 4, i32 4, i32 2, i32 2, i32 1], align 16
@.str.21 = private unnamed_addr constant [22 x i8] c"Not enough image data\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Extra compressed data\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Too much image data\00", align 1
@png_read_finish_row.png_pass_ystart = internal unnamed_addr constant [7 x i8] c"\00\00\04\00\02\00\01", align 1
@png_read_finish_row.png_pass_yinc = internal unnamed_addr constant [7 x i8] c"\08\08\08\04\04\02\02", align 1
@png_read_start_row.png_pass_start = internal unnamed_addr constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@png_read_start_row.png_pass_inc = internal unnamed_addr constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Row has too many bytes to allocate in memory\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"unknown chunk exceeds memory limits\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"insufficient memory to read chunk\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c" using zstream\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"1.2.8-optipng\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @png_get_uint_31(%struct.png_struct_def* noalias noundef %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, i8* %1, align 1, !tbaa !3
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr inbounds i8, i8* %1, i64 1
  %7 = load i8, i8* %6, align 1, !tbaa !3
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or i32 %9, %5
  %11 = getelementptr inbounds i8, i8* %1, i64 2
  %12 = load i8, i8* %11, align 1, !tbaa !3
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %10, %14
  %16 = getelementptr inbounds i8, i8* %1, i64 3
  %17 = load i8, i8* %16, align 1, !tbaa !3
  %18 = zext i8 %17 to i32
  %19 = or i32 %15, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  tail call void @png_error(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #11
  unreachable

22:                                               ; preds = %2
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @png_get_uint_32(i8* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, i8* %0, align 1, !tbaa !3
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds i8, i8* %0, i64 1
  %6 = load i8, i8* %5, align 1, !tbaa !3
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or i32 %8, %4
  %10 = getelementptr inbounds i8, i8* %0, i64 2
  %11 = load i8, i8* %10, align 1, !tbaa !3
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or i32 %9, %13
  %15 = getelementptr inbounds i8, i8* %0, i64 3
  %16 = load i8, i8* %15, align 1, !tbaa !3
  %17 = zext i8 %16 to i32
  %18 = or i32 %14, %17
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @png_get_int_32(i8* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, i8* %0, align 1, !tbaa !3
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds i8, i8* %0, i64 1
  %6 = load i8, i8* %5, align 1, !tbaa !3
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or i32 %8, %4
  %10 = getelementptr inbounds i8, i8* %0, i64 2
  %11 = load i8, i8* %10, align 1, !tbaa !3
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or i32 %9, %13
  %15 = getelementptr inbounds i8, i8* %0, i64 3
  %16 = load i8, i8* %15, align 1, !tbaa !3
  %17 = zext i8 %16 to i32
  %18 = or i32 %14, %17
  %19 = icmp sgt i32 %4, -1
  %20 = add i32 %18, -1
  %21 = icmp slt i32 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  %23 = select i1 %22, i32 %18, i32 0
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i16 @png_get_uint_16(i8* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, i8* %0, align 1, !tbaa !3
  %3 = zext i8 %2 to i16
  %4 = shl nuw i16 %3, 8
  %5 = getelementptr inbounds i8, i8* %0, i64 1
  %6 = load i8, i8* %5, align 1, !tbaa !3
  %7 = zext i8 %6 to i16
  %8 = or i16 %4, %7
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_sig(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 53
  %4 = load i8, i8* %3, align 1, !tbaa !6
  %5 = icmp ugt i8 %4, 7
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = zext i8 %4 to i64
  %8 = sub nuw nsw i64 8, %7
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  store i32 17, i32* %9, align 4, !tbaa !16
  %10 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 15, i64 %7
  tail call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %10, i64 noundef %8) #12
  store i8 8, i8* %3, align 1, !tbaa !6
  %11 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 15, i64 0
  %12 = tail call i32 @png_sig_cmp(i8* noundef nonnull %11, i64 noundef %7, i64 noundef %8) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %6
  %15 = icmp ult i8 %4, 4
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = sub nsw i64 4, %7
  %18 = tail call i32 @png_sig_cmp(i8* noundef nonnull %11, i64 noundef %7, i64 noundef %17) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #11
  unreachable

21:                                               ; preds = %16, %14
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0)) #11
  unreachable

22:                                               ; preds = %6
  %23 = icmp ult i8 %4, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %26 = load i32, i32* %25, align 8, !tbaa !17
  %27 = or i32 %26, 4096
  store i32 %27, i32* %25, align 8, !tbaa !17
  br label %28

28:                                               ; preds = %22, %24, %2
  ret void
}

declare dso_local void @png_read_data(%struct.png_struct_def* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i32 @png_sig_cmp(i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @png_read_chunk_header(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8 x i8], align 1
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  store i32 33, i32* %4, align 4, !tbaa !16
  call void @png_read_data(%struct.png_struct_def* noundef %0, i8* noundef nonnull %3, i64 noundef 8) #12
  %5 = load i8, i8* %3, align 1, !tbaa !3, !noalias !18
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 1
  %9 = load i8, i8* %8, align 1, !tbaa !3, !noalias !18
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, %7
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 2
  %14 = load i8, i8* %13, align 1, !tbaa !3, !noalias !18
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or i32 %12, %16
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 3
  %19 = load i8, i8* %18, align 1, !tbaa !3, !noalias !18
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #11
  unreachable

24:                                               ; preds = %1
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 4
  %26 = load i8, i8* %25, align 1, !tbaa !3
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 %27, 24
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 5
  %30 = load i8, i8* %29, align 1, !tbaa !3
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or i32 %32, %28
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 6
  %35 = load i8, i8* %34, align 1, !tbaa !3
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = or i32 %33, %37
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 7
  %40 = load i8, i8* %39, align 1, !tbaa !3
  %41 = zext i8 %40 to i32
  %42 = or i32 %38, %41
  %43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  store i32 %42, i32* %43, align 8, !tbaa !21
  call void @png_reset_crc(%struct.png_struct_def* noundef nonnull %0) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %25, i64 noundef 4) #12
  %44 = load i32, i32* %43, align 8, !tbaa !21
  %45 = and i32 %44, 255
  %46 = add nsw i32 %45, -123
  %47 = icmp ult i32 %46, -58
  %48 = add nsw i32 %45, -91
  %49 = icmp ult i32 %48, 6
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %68, %60, %52, %24
  call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0)) #11
  unreachable

52:                                               ; preds = %24
  %53 = lshr i32 %44, 8
  %54 = and i32 %53, 255
  %55 = add nsw i32 %54, -123
  %56 = icmp ult i32 %55, -58
  %57 = add nsw i32 %54, -91
  %58 = icmp ult i32 %57, 6
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %51, label %60

60:                                               ; preds = %52
  %61 = lshr i32 %44, 16
  %62 = and i32 %61, 255
  %63 = add nsw i32 %62, -123
  %64 = icmp ult i32 %63, -58
  %65 = add nsw i32 %62, -91
  %66 = icmp ult i32 %65, 6
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %51, label %68

68:                                               ; preds = %60
  %69 = lshr i32 %44, 24
  %70 = add nsw i32 %69, -123
  %71 = icmp ult i32 %70, -58
  %72 = add nsw i32 %69, -91
  %73 = icmp ult i32 %72, 6
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %51, label %75

75:                                               ; preds = %68
  store i32 65, i32* %4, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  ret i32 %21
}

declare dso_local void @png_reset_crc(%struct.png_struct_def* noundef) local_unnamed_addr #4

declare dso_local void @png_calculate_crc(%struct.png_struct_def* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_check_chunk_name(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 255
  %4 = add nsw i32 %3, -123
  %5 = icmp ult i32 %4, -58
  %6 = add nsw i32 %3, -91
  %7 = icmp ult i32 %6, 6
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %26, %18, %10, %2
  tail call void @png_chunk_error(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0)) #11
  unreachable

10:                                               ; preds = %2
  %11 = lshr i32 %1, 8
  %12 = and i32 %11, 255
  %13 = add nsw i32 %12, -123
  %14 = icmp ult i32 %13, -58
  %15 = add nsw i32 %12, -91
  %16 = icmp ult i32 %15, 6
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %9, label %18

18:                                               ; preds = %10
  %19 = lshr i32 %1, 16
  %20 = and i32 %19, 255
  %21 = add nsw i32 %20, -123
  %22 = icmp ult i32 %21, -58
  %23 = add nsw i32 %20, -91
  %24 = icmp ult i32 %23, 6
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %9, label %26

26:                                               ; preds = %18
  %27 = lshr i32 %1, 24
  %28 = add nsw i32 %27, -123
  %29 = icmp ult i32 %28, -58
  %30 = add nsw i32 %27, -91
  %31 = icmp ult i32 %30, 6
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %9, label %33

33:                                               ; preds = %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_crc_read(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.png_struct_def* %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  tail call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1, i64 noundef %6) #12
  tail call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1, i64 noundef %6) #12
  br label %7

7:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_crc_finish(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  %4 = alloca [1024 x i8], align 16
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %8 = icmp eq %struct.png_struct_def* %0, null
  br label %9

9:                                                ; preds = %6, %16
  %10 = phi i32 [ %1, %6 ], [ %13, %16 ]
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %7) #12
  %11 = icmp ult i32 %10, 1024
  %12 = select i1 %11, i32 %10, i32 1024
  %13 = sub i32 %10, %12
  br i1 %8, label %16, label %14

14:                                               ; preds = %9
  %15 = zext i32 %12 to i64
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %7, i64 noundef %15) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %7, i64 noundef %15) #12
  br label %16

16:                                               ; preds = %9, %14
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %7) #12
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %18, label %9, !llvm.loop !22

18:                                               ; preds = %16, %2
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !noalias !24
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %21 = load i32, i32* %20, align 8, !tbaa !21, !alias.scope !24
  %22 = and i32 %21, 536870912
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %25 = load i32, i32* %24, align 4, !tbaa !27, !alias.scope !24
  br i1 %23, label %30, label %26

26:                                               ; preds = %18
  %27 = and i32 %25, 768
  %28 = icmp eq i32 %27, 768
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  store i32 129, i32* %29, align 4, !tbaa !16, !alias.scope !24
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %19, i64 noundef 4) #12
  br i1 %28, label %34, label %35

30:                                               ; preds = %18
  %31 = and i32 %25, 2048
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  store i32 129, i32* %33, align 4, !tbaa !16, !alias.scope !24
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %19, i64 noundef 4) #12
  br i1 %32, label %35, label %34

34:                                               ; preds = %30, %26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !noalias !24
  br label %69

35:                                               ; preds = %26, %30
  %36 = load i8, i8* %19, align 1, !tbaa !3, !noalias !24
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 %37, 24
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !3, !noalias !24
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 16
  %43 = or i32 %42, %38
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 2
  %45 = load i8, i8* %44, align 1, !tbaa !3, !noalias !24
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = or i32 %43, %47
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !3, !noalias !24
  %51 = zext i8 %50 to i32
  %52 = or i32 %48, %51
  %53 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 37
  %54 = load i32, i32* %53, align 4, !tbaa !28, !alias.scope !24
  %55 = icmp eq i32 %52, %54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !noalias !24
  br i1 %55, label %69, label %56

56:                                               ; preds = %35
  %57 = load i32, i32* %20, align 8, !tbaa !21
  %58 = and i32 %57, 536870912
  %59 = icmp eq i32 %58, 0
  %60 = load i32, i32* %24, align 4, !tbaa !27
  br i1 %59, label %64, label %61

61:                                               ; preds = %56
  %62 = and i32 %60, 512
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %68

64:                                               ; preds = %56
  %65 = and i32 %60, 1024
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64, %61
  call void @png_chunk_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #12
  br label %69

68:                                               ; preds = %64, %61
  call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #11
  unreachable

69:                                               ; preds = %34, %35, %67
  %70 = phi i32 [ 1, %67 ], [ 0, %35 ], [ 0, %34 ]
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_crc_error(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i8], align 1
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #12
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %5 = load i32, i32* %4, align 8, !tbaa !21
  %6 = and i32 %5, 536870912
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %9 = load i32, i32* %8, align 4, !tbaa !27
  br i1 %7, label %14, label %10

10:                                               ; preds = %1
  %11 = and i32 %9, 768
  %12 = icmp eq i32 %11, 768
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  store i32 129, i32* %13, align 4, !tbaa !16
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %3, i64 noundef 4) #12
  br i1 %12, label %40, label %18

14:                                               ; preds = %1
  %15 = and i32 %9, 2048
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  store i32 129, i32* %17, align 4, !tbaa !16
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %3, i64 noundef 4) #12
  br i1 %16, label %18, label %40

18:                                               ; preds = %10, %14
  %19 = load i8, i8* %3, align 1, !tbaa !3
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %23 = load i8, i8* %22, align 1, !tbaa !3
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = or i32 %25, %21
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %28 = load i8, i8* %27, align 1, !tbaa !3
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or i32 %26, %30
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %33 = load i8, i8* %32, align 1, !tbaa !3
  %34 = zext i8 %33 to i32
  %35 = or i32 %31, %34
  %36 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 37
  %37 = load i32, i32* %36, align 4, !tbaa !28
  %38 = icmp ne i32 %35, %37
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %10, %14, %18
  %41 = phi i32 [ %39, %18 ], [ 0, %14 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #12
  ret i32 %41
}

declare dso_local void @png_chunk_warning(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare dso_local void @png_chunk_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_IHDR(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [13 x i8], align 1
  %5 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %5) #12
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %7 = load i32, i32* %6, align 8, !tbaa !17
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #11
  unreachable

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 13
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #11
  unreachable

14:                                               ; preds = %11
  %15 = or i32 %7, 1
  store i32 %15, i32* %6, align 8, !tbaa !17
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %5, i64 noundef 13) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %5, i64 noundef 13) #12
  %16 = call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef 0)
  %17 = load i8, i8* %5, align 1, !tbaa !3, !noalias !29
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 1
  %21 = load i8, i8* %20, align 1, !tbaa !3, !noalias !29
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 16
  %24 = or i32 %23, %19
  %25 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 2
  %26 = load i8, i8* %25, align 1, !tbaa !3, !noalias !29
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = or i32 %24, %28
  %30 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 3
  %31 = load i8, i8* %30, align 1, !tbaa !3, !noalias !29
  %32 = zext i8 %31 to i32
  %33 = or i32 %29, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %14
  call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #11
  unreachable

36:                                               ; preds = %14
  %37 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 4
  %38 = load i8, i8* %37, align 1, !tbaa !3, !noalias !32
  %39 = zext i8 %38 to i32
  %40 = shl nuw i32 %39, 24
  %41 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 5
  %42 = load i8, i8* %41, align 1, !tbaa !3, !noalias !32
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 16
  %45 = or i32 %44, %40
  %46 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 6
  %47 = load i8, i8* %46, align 1, !tbaa !3, !noalias !32
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 8
  %50 = or i32 %45, %49
  %51 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 7
  %52 = load i8, i8* %51, align 1, !tbaa !3, !noalias !32
  %53 = zext i8 %52 to i32
  %54 = or i32 %50, %53
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %36
  call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #11
  unreachable

57:                                               ; preds = %36
  %58 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 8
  %59 = load i8, i8* %58, align 1, !tbaa !3
  %60 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 9
  %61 = load i8, i8* %60, align 1, !tbaa !3
  %62 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 10
  %63 = load i8, i8* %62, align 1, !tbaa !3
  %64 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 11
  %65 = load i8, i8* %64, align 1, !tbaa !3
  %66 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 12
  %67 = load i8, i8* %66, align 1, !tbaa !3
  %68 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  store i32 %33, i32* %68, align 4, !tbaa !35
  %69 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  store i32 %54, i32* %69, align 8, !tbaa !36
  %70 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 48
  store i8 %59, i8* %70, align 8, !tbaa !37
  %71 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 44
  store i8 %67, i8* %71, align 4, !tbaa !38
  %72 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 47
  store i8 %61, i8* %72, align 1, !tbaa !39
  %73 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 72
  store i8 %63, i8* %73, align 8, !tbaa !40
  %74 = add i8 %61, -2
  %75 = icmp ult i8 %74, 5
  %76 = zext i8 %74 to i40
  %77 = shl nuw nsw i40 %76, 3
  %78 = lshr i40 17196777731, %77
  %79 = trunc i40 %78 to i8
  %80 = select i1 %75, i8 %79, i8 1
  %81 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 51
  store i8 %80, i8* %81, align 1, !tbaa !41
  %82 = mul i8 %80, %59
  %83 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 50
  store i8 %82, i8* %83, align 2, !tbaa !42
  %84 = icmp ugt i8 %82, 7
  %85 = zext i32 %33 to i64
  br i1 %84, label %86, label %90

86:                                               ; preds = %57
  %87 = lshr i8 %82, 3
  %88 = zext i8 %87 to i64
  %89 = mul nuw nsw i64 %88, %85
  br label %95

90:                                               ; preds = %57
  %91 = zext i8 %82 to i64
  %92 = mul nuw nsw i64 %91, %85
  %93 = add nuw nsw i64 %92, 7
  %94 = lshr i64 %93, 3
  br label %95

95:                                               ; preds = %90, %86
  %96 = phi i64 [ %89, %86 ], [ %94, %90 ]
  %97 = zext i8 %67 to i32
  %98 = zext i8 %65 to i32
  %99 = zext i8 %63 to i32
  %100 = zext i8 %61 to i32
  %101 = zext i8 %59 to i32
  %102 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 27
  store i64 %96, i64* %102, align 8, !tbaa !43
  call void @png_set_IHDR(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i32 noundef %33, i32 noundef %54, i32 noundef %101, i32 noundef %100, i32 noundef %97, i32 noundef %99, i32 noundef %98) #12
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %5) #12
  ret void
}

declare dso_local void @png_set_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_PLTE(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x %struct.png_color_struct], align 16
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %4, i64 0, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 768, i8* nonnull %6) #12
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %8 = load i32, i32* %7, align 8, !tbaa !17
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #11
  unreachable

12:                                               ; preds = %3
  %13 = and i32 %8, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #11
  unreachable

16:                                               ; preds = %12
  %17 = and i32 %8, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #12
  br label %105

21:                                               ; preds = %16
  %22 = or i32 %8, 2
  store i32 %22, i32* %7, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 47
  %24 = load i8, i8* %23, align 1, !tbaa !39
  %25 = and i8 %24, 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #12
  br label %105

29:                                               ; preds = %21
  %30 = icmp ult i32 %2, 769
  %31 = urem i32 %2, 3
  %32 = icmp eq i32 %31, 0
  %33 = and i1 %30, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  %36 = load i8, i8* %23, align 1, !tbaa !39
  %37 = icmp eq i8 %36, 3
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #12
  br label %105

39:                                               ; preds = %34
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #11
  unreachable

40:                                               ; preds = %29
  %41 = trunc i32 %2 to i16
  %42 = udiv i16 %41, 3
  %43 = zext i16 %42 to i32
  %44 = icmp eq i8 %24, 3
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 48
  %47 = load i8, i8* %46, align 8, !tbaa !37
  %48 = zext i8 %47 to i32
  %49 = shl nuw i32 1, %48
  br label %50

50:                                               ; preds = %40, %45
  %51 = phi i32 [ %49, %45 ], [ 256, %40 ]
  %52 = icmp slt i32 %51, %43
  %53 = select i1 %52, i32 %51, i32 %43
  %54 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %4, i64 0, i64 0
  %55 = icmp sgt i32 %53, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %58 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  %59 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  br label %60

60:                                               ; preds = %56, %60
  %61 = phi %struct.png_color_struct* [ %54, %56 ], [ %70, %60 ]
  %62 = phi i32 [ 0, %56 ], [ %69, %60 ]
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %57) #12
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %57, i64 noundef 3) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %57, i64 noundef 3) #12
  %63 = load i8, i8* %57, align 1, !tbaa !3
  %64 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %61, i64 0, i32 0
  store i8 %63, i8* %64, align 1, !tbaa !44
  %65 = load i8, i8* %58, align 1, !tbaa !3
  %66 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %61, i64 0, i32 1
  store i8 %65, i8* %66, align 1, !tbaa !46
  %67 = load i8, i8* %59, align 1, !tbaa !3
  %68 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %61, i64 0, i32 2
  store i8 %67, i8* %68, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %57) #12
  %69 = add nuw nsw i32 %62, 1
  %70 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %61, i64 1
  %71 = icmp eq i32 %69, %53
  br i1 %71, label %72, label %60, !llvm.loop !48

72:                                               ; preds = %60, %50
  %73 = mul i32 %53, -3
  %74 = add i32 %73, %2
  %75 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %0, i32 noundef %74)
  call void @png_set_PLTE(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, %struct.png_color_struct* noundef nonnull %54, i32 noundef %53) #12
  %76 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 41
  %77 = load i16, i16* %76, align 8, !tbaa !49
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = icmp eq %struct.png_info_def* %1, null
  br i1 %80, label %105, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %83 = load i32, i32* %82, align 8, !tbaa !50
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  store i16 0, i16* %76, align 8, !tbaa !49
  br label %90

87:                                               ; preds = %72
  store i16 0, i16* %76, align 8, !tbaa !49
  %88 = icmp eq %struct.png_info_def* %1, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0)) #12
  br label %105

90:                                               ; preds = %87, %86
  %91 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 6
  store i16 0, i16* %91, align 2, !tbaa !52
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0)) #12
  %92 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %93 = load i32, i32* %92, align 8, !tbaa !50
  br label %94

94:                                               ; preds = %81, %90
  %95 = phi i32 [ %83, %81 ], [ %93, %90 ]
  %96 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %97 = and i32 %95, 64
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0)) #12
  br label %100

100:                                              ; preds = %94, %99
  %101 = load i32, i32* %96, align 8, !tbaa !50
  %102 = and i32 %101, 32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0)) #12
  br label %105

105:                                              ; preds = %79, %89, %100, %104, %38, %27, %19
  call void @llvm.lifetime.end.p0i8(i64 768, i8* nonnull %6) #12
  ret void
}

declare dso_local void @png_chunk_benign_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local void @png_set_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_IEND(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %5 = load i32, i32* %4, align 8, !tbaa !17
  %6 = and i32 %5, 5
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #11
  unreachable

9:                                                ; preds = %3
  %10 = or i32 %5, 24
  store i32 %10, i32* %4, align 8, !tbaa !17
  %11 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #12
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_sBIT(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i8], align 1
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #12
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %7 = load i32, i32* %6, align 8, !tbaa !17
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #11
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #12
  br label %103

16:                                               ; preds = %11
  %17 = icmp eq %struct.png_info_def* %1, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %20 = load i32, i32* %19, align 8, !tbaa !50
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #12
  br label %103

25:                                               ; preds = %18, %16
  %26 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 47
  %27 = load i8, i8* %26, align 1, !tbaa !39
  %28 = icmp eq i8 %27, 3
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 51
  %31 = load i8, i8* %30, align 1, !tbaa !41
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 48
  %34 = load i8, i8* %33, align 8, !tbaa !37
  br label %35

35:                                               ; preds = %25, %29
  %36 = phi i32 [ %32, %29 ], [ 3, %25 ]
  %37 = phi i8 [ %34, %29 ], [ 8, %25 ]
  %38 = icmp ne i32 %36, %2
  %39 = icmp ugt i32 %2, 4
  %40 = or i1 %39, %38
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #12
  %42 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  br label %103

43:                                               ; preds = %35
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %47 = zext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(4) %5, i8 %37, i64 4, i1 false)
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %5, i64 noundef %47) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %5, i64 noundef %47) #12
  %48 = call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef 0)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %103

50:                                               ; preds = %43
  %51 = icmp eq i32 %2, 0
  br i1 %51, label %83, label %76

52:                                               ; preds = %76
  %53 = icmp eq i32 %2, 1
  br i1 %53, label %83, label %54, !llvm.loop !53

54:                                               ; preds = %52
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %56 = load i8, i8* %55, align 1, !tbaa !3
  %57 = icmp eq i8 %56, 0
  %58 = icmp ugt i8 %56, %37
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %82, label %60

60:                                               ; preds = %54
  %61 = icmp eq i32 %2, 2
  br i1 %61, label %83, label %62, !llvm.loop !53

62:                                               ; preds = %60
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %64 = load i8, i8* %63, align 1, !tbaa !3
  %65 = icmp eq i8 %64, 0
  %66 = icmp ugt i8 %64, %37
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %62
  %69 = icmp eq i32 %2, 3
  br i1 %69, label %83, label %70, !llvm.loop !53

70:                                               ; preds = %68
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  %72 = load i8, i8* %71, align 1, !tbaa !3
  %73 = icmp eq i8 %72, 0
  %74 = icmp ugt i8 %72, %37
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %82, label %83

76:                                               ; preds = %50
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %78 = load i8, i8* %77, align 1, !tbaa !3
  %79 = icmp eq i8 %78, 0
  %80 = icmp ugt i8 %78, %37
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %82, label %52

82:                                               ; preds = %70, %62, %54, %76
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #12
  br label %103

83:                                               ; preds = %52, %60, %68, %70, %50
  %84 = load i8, i8* %26, align 1, !tbaa !39
  %85 = and i8 %84, 2
  %86 = icmp eq i8 %85, 0
  %87 = load i8, i8* %5, align 1, !tbaa !3
  br i1 %86, label %91, label %88

88:                                               ; preds = %83
  %89 = load i8, i8* %46, align 1, !tbaa !3
  %90 = load i8, i8* %45, align 1, !tbaa !3
  br label %93

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 62, i32 3
  store i8 %87, i8* %92, align 1, !tbaa !54
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi i8* [ %46, %91 ], [ %44, %88 ]
  %95 = phi i8 [ %87, %91 ], [ %89, %88 ]
  %96 = phi i8 [ %87, %91 ], [ %90, %88 ]
  %97 = load i8, i8* %94, align 1, !tbaa !3
  %98 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 62, i32 0
  store i8 %87, i8* %98, align 8
  %99 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 62, i32 1
  store i8 %95, i8* %99, align 1
  %100 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 62, i32 2
  store i8 %96, i8* %100, align 2
  %101 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 62, i32 4
  store i8 %97, i8* %101, align 4
  %102 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 62
  call void @png_set_sBIT(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, %struct.png_color_8_struct* noundef nonnull %102) #12
  br label %103

103:                                              ; preds = %43, %93, %82, %41, %23, %14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #12
  ret void
}

declare dso_local void @png_set_sBIT(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_8_struct* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_tRNS(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [2 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %7) #12
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %9 = load i32, i32* %8, align 8, !tbaa !17
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #11
  unreachable

13:                                               ; preds = %3
  %14 = and i32 %9, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #12
  br label %108

18:                                               ; preds = %13
  %19 = icmp eq %struct.png_info_def* %1, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %22 = load i32, i32* %21, align 8, !tbaa !50
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #12
  br label %108

27:                                               ; preds = %20, %18
  %28 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 47
  %29 = load i8, i8* %28, align 1, !tbaa !39
  switch i8 %29, label %97 [
    i8 0, label %30
    i8 2, label %45
    i8 3, label %78
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %31) #12
  %32 = icmp eq i32 %2, 2
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %31, i64 noundef 2) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %31, i64 noundef 2) #12
  %34 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 41
  store i16 1, i16* %34, align 8, !tbaa !49
  %35 = load i8, i8* %31, align 1, !tbaa !3
  %36 = zext i8 %35 to i16
  %37 = shl nuw i16 %36, 8
  %38 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %39 = load i8, i8* %38, align 1, !tbaa !3
  %40 = zext i8 %39 to i16
  %41 = or i16 %37, %40
  %42 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 64, i32 4
  store i16 %41, i16* %42, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %31) #12
  br label %99

43:                                               ; preds = %30
  %44 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #12
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %31) #12
  br label %108

45:                                               ; preds = %27
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %46) #12
  %47 = icmp eq i32 %2, 6
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %46, i64 noundef 6) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %46, i64 noundef 6) #12
  %49 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 41
  store i16 1, i16* %49, align 8, !tbaa !49
  %50 = load i8, i8* %46, align 1, !tbaa !3
  %51 = zext i8 %50 to i16
  %52 = shl nuw i16 %51, 8
  %53 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 1
  %54 = load i8, i8* %53, align 1, !tbaa !3
  %55 = zext i8 %54 to i16
  %56 = or i16 %52, %55
  %57 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 64, i32 1
  store i16 %56, i16* %57, align 2, !tbaa !56
  %58 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 2
  %59 = load i8, i8* %58, align 1, !tbaa !3
  %60 = zext i8 %59 to i16
  %61 = shl nuw i16 %60, 8
  %62 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 3
  %63 = load i8, i8* %62, align 1, !tbaa !3
  %64 = zext i8 %63 to i16
  %65 = or i16 %61, %64
  %66 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 64, i32 2
  store i16 %65, i16* %66, align 4, !tbaa !57
  %67 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 4
  %68 = load i8, i8* %67, align 1, !tbaa !3
  %69 = zext i8 %68 to i16
  %70 = shl nuw i16 %69, 8
  %71 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 5
  %72 = load i8, i8* %71, align 1, !tbaa !3
  %73 = zext i8 %72 to i16
  %74 = or i16 %70, %73
  %75 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 64, i32 3
  store i16 %74, i16* %75, align 2, !tbaa !58
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %46) #12
  br label %99

76:                                               ; preds = %45
  %77 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #12
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %46) #12
  br label %108

78:                                               ; preds = %27
  %79 = and i32 %9, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #12
  br label %108

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 39
  %85 = load i16, i16* %84, align 8, !tbaa !59
  %86 = zext i16 %85 to i32
  %87 = icmp ugt i32 %2, 256
  %88 = add i32 %2, -1
  %89 = icmp uge i32 %88, %86
  %90 = or i1 %87, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #12
  br label %108

93:                                               ; preds = %83
  %94 = zext i32 %2 to i64
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %7, i64 noundef %94) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %7, i64 noundef %94) #12
  %95 = trunc i32 %2 to i16
  %96 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 41
  store i16 %95, i16* %96, align 8, !tbaa !49
  br label %99

97:                                               ; preds = %27
  %98 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0)) #12
  br label %108

99:                                               ; preds = %48, %33, %93
  %100 = call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef 0)
  %101 = icmp eq i32 %100, 0
  %102 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 41
  br i1 %101, label %104, label %103

103:                                              ; preds = %99
  store i16 0, i16* %102, align 8, !tbaa !49
  br label %108

104:                                              ; preds = %99
  %105 = load i16, i16* %102, align 8, !tbaa !49
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 64
  call void @png_set_tRNS(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, i8* noundef nonnull %7, i32 noundef %106, %struct.png_color_16_struct* noundef nonnull %107) #12
  br label %108

108:                                              ; preds = %76, %43, %104, %103, %97, %91, %81, %25, %16
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %7) #12
  ret void
}

declare dso_local void @png_set_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8* noundef, i32 noundef, %struct.png_color_16_struct* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_bKGD(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [6 x i8], align 1
  %5 = alloca %struct.png_color_16_struct, align 2
  %6 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %6) #12
  %7 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %7) #12
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %9 = load i32, i32* %8, align 8, !tbaa !17
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #11
  unreachable

13:                                               ; preds = %3
  %14 = and i32 %9, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 47
  %18 = load i8, i8* %17, align 1, !tbaa !39
  %19 = icmp eq i8 %18, 3
  %20 = and i32 %9, 2
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %25

23:                                               ; preds = %16, %13
  %24 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #12
  br label %118

25:                                               ; preds = %16
  %26 = icmp eq %struct.png_info_def* %1, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %29 = load i32, i32* %28, align 8, !tbaa !50
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #12
  br label %118

34:                                               ; preds = %27, %25
  %35 = and i8 %18, 2
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i32 2, i32 6
  %38 = select i1 %19, i32 1, i32 %37
  %39 = icmp eq i32 %38, %2
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #12
  br label %118

42:                                               ; preds = %34
  %43 = zext i32 %2 to i64
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %6, i64 noundef %43) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %6, i64 noundef %43) #12
  %44 = call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef 0)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %118

46:                                               ; preds = %42
  %47 = load i8, i8* %17, align 1, !tbaa !39
  %48 = icmp eq i8 %47, 3
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  %50 = load i8, i8* %6, align 1, !tbaa !3
  store i8 %50, i8* %7, align 2, !tbaa !60
  br i1 %26, label %75, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 5
  %53 = load i16, i16* %52, align 8, !tbaa !61
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %51
  %56 = zext i8 %50 to i16
  %57 = icmp ugt i16 %53, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #12
  br label %118

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 38
  %61 = load %struct.png_color_struct*, %struct.png_color_struct** %60, align 8, !tbaa !62
  %62 = zext i8 %50 to i64
  %63 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %61, i64 %62, i32 0
  %64 = load i8, i8* %63, align 1, !tbaa !44
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 1
  store i16 %65, i16* %66, align 2, !tbaa !63
  %67 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %61, i64 %62, i32 1
  %68 = load i8, i8* %67, align 1, !tbaa !46
  %69 = zext i8 %68 to i16
  %70 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 2
  store i16 %69, i16* %70, align 2, !tbaa !64
  %71 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %61, i64 %62, i32 2
  %72 = load i8, i8* %71, align 1, !tbaa !47
  %73 = zext i8 %72 to i16
  %74 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 3
  store i16 %73, i16* %74, align 2, !tbaa !65
  br label %79

75:                                               ; preds = %51, %49
  %76 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 3
  store i16 0, i16* %76, align 2, !tbaa !65
  %77 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 2
  store i16 0, i16* %77, align 2, !tbaa !64
  %78 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 1
  store i16 0, i16* %78, align 2, !tbaa !63
  br label %79

79:                                               ; preds = %75, %59
  %80 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 4
  store i16 0, i16* %80, align 2, !tbaa !66
  br label %117

81:                                               ; preds = %46
  %82 = and i8 %47, 2
  %83 = icmp eq i8 %82, 0
  store i8 0, i8* %7, align 2, !tbaa !60
  %84 = load i8, i8* %6, align 1, !tbaa !3
  %85 = zext i8 %84 to i16
  %86 = shl nuw i16 %85, 8
  %87 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  %88 = load i8, i8* %87, align 1, !tbaa !3
  %89 = zext i8 %88 to i16
  %90 = or i16 %86, %89
  br i1 %83, label %91, label %96

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 4
  store i16 %90, i16* %92, align 2, !tbaa !66
  %93 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 3
  store i16 %90, i16* %93, align 2, !tbaa !65
  %94 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 2
  store i16 %90, i16* %94, align 2, !tbaa !64
  %95 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 1
  store i16 %90, i16* %95, align 2, !tbaa !63
  br label %117

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 1
  store i16 %90, i16* %97, align 2, !tbaa !63
  %98 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  %99 = load i8, i8* %98, align 1, !tbaa !3
  %100 = zext i8 %99 to i16
  %101 = shl nuw i16 %100, 8
  %102 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  %103 = load i8, i8* %102, align 1, !tbaa !3
  %104 = zext i8 %103 to i16
  %105 = or i16 %101, %104
  %106 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 2
  store i16 %105, i16* %106, align 2, !tbaa !64
  %107 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  %108 = load i8, i8* %107, align 1, !tbaa !3
  %109 = zext i8 %108 to i16
  %110 = shl nuw i16 %109, 8
  %111 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  %112 = load i8, i8* %111, align 1, !tbaa !3
  %113 = zext i8 %112 to i16
  %114 = or i16 %110, %113
  %115 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 3
  store i16 %114, i16* %115, align 2, !tbaa !65
  %116 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %5, i64 0, i32 4
  store i16 0, i16* %116, align 2, !tbaa !66
  br label %117

117:                                              ; preds = %91, %96, %79
  call void @png_set_bKGD(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, %struct.png_color_16_struct* noundef nonnull %5) #12
  br label %118

118:                                              ; preds = %42, %117, %58, %40, %32, %23
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %6) #12
  ret void
}

declare dso_local void @png_set_bKGD(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_16_struct* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_hIST(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i16], align 16
  %5 = alloca [2 x i8], align 1
  %6 = bitcast [256 x i16]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %6) #12
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %8 = load i32, i32* %7, align 8, !tbaa !17
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #11
  unreachable

12:                                               ; preds = %3
  %13 = and i32 %8, 6
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #12
  br label %59

17:                                               ; preds = %12
  %18 = icmp eq %struct.png_info_def* %1, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %21 = load i32, i32* %20, align 8, !tbaa !50
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #12
  br label %59

26:                                               ; preds = %19, %17
  %27 = lshr i32 %2, 1
  %28 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 39
  %29 = load i16, i16* %28, align 8, !tbaa !59
  %30 = zext i16 %29 to i32
  %31 = icmp ne i32 %27, %30
  %32 = icmp ugt i32 %2, 513
  %33 = or i1 %32, %31
  br i1 %33, label %41, label %34

34:                                               ; preds = %26
  %35 = icmp ult i32 %2, 2
  br i1 %35, label %54, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %38 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %39 = call i32 @llvm.umax.i32(i32 %27, i32 1)
  %40 = zext i32 %39 to i64
  br label %43

41:                                               ; preds = %26
  %42 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2)
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #12
  br label %59

43:                                               ; preds = %36, %43
  %44 = phi i64 [ 0, %36 ], [ %52, %43 ]
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %37) #12
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %37, i64 noundef 2) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %37, i64 noundef 2) #12
  %45 = load i8, i8* %37, align 1, !tbaa !3
  %46 = zext i8 %45 to i16
  %47 = shl nuw i16 %46, 8
  %48 = load i8, i8* %38, align 1, !tbaa !3
  %49 = zext i8 %48 to i16
  %50 = or i16 %47, %49
  %51 = getelementptr inbounds [256 x i16], [256 x i16]* %4, i64 0, i64 %44
  store i16 %50, i16* %51, align 2, !tbaa !67
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %37) #12
  %52 = add nuw nsw i64 %44, 1
  %53 = icmp eq i64 %52, %40
  br i1 %53, label %54, label %43, !llvm.loop !68

54:                                               ; preds = %43, %34
  %55 = call i32 @png_crc_finish(%struct.png_struct_def* noundef %0, i32 noundef 0)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = getelementptr inbounds [256 x i16], [256 x i16]* %4, i64 0, i64 0
  call void @png_set_hIST(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i16* noundef nonnull %58) #12
  br label %59

59:                                               ; preds = %54, %57, %41, %24, %15
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %6) #12
  ret void
}

declare dso_local void @png_set_hIST(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i16* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_unknown(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 68
  %8 = load i32, i32* %7, align 4, !tbaa !69
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ %8, %6 ], [ %3, %4 ]
  switch i32 %10, label %66 [
    i32 3, label %16
    i32 2, label %11
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %13 = load i32, i32* %12, align 8, !tbaa !21
  %14 = and i32 %13, 536870912
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %66, label %16

16:                                               ; preds = %9, %11
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 77, i32 1
  %18 = load i8*, i8** %17, align 8, !tbaa !70, !alias.scope !71
  %19 = icmp eq i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %18) #12
  store i8* null, i8** %17, align 8, !tbaa !70, !alias.scope !71
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 76
  %23 = load i64, i64* %22, align 8, !tbaa !74, !alias.scope !71
  switch i64 %23, label %26 [
    i64 0, label %24
    i64 -1, label %24
  ]

24:                                               ; preds = %21, %21
  %25 = zext i32 %2 to i64
  br label %29

26:                                               ; preds = %21
  %27 = zext i32 %2 to i64
  %28 = icmp ult i64 %23, %27
  br i1 %28, label %54, label %29

29:                                               ; preds = %26, %24
  %30 = phi i64 [ %25, %24 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %32 = load i32, i32* %31, align 8, !tbaa !21, !alias.scope !71
  %33 = lshr i32 %32, 24
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 77, i32 0, i64 0
  store i8 %34, i8* %35, align 8, !tbaa !3, !alias.scope !71
  %36 = lshr i32 %32, 16
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 77, i32 0, i64 1
  store i8 %37, i8* %38, align 1, !tbaa !3, !alias.scope !71
  %39 = lshr i32 %32, 8
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 77, i32 0, i64 2
  store i8 %40, i8* %41, align 2, !tbaa !3, !alias.scope !71
  %42 = trunc i32 %32 to i8
  %43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 77, i32 0, i64 3
  store i8 %42, i8* %43, align 1, !tbaa !3, !alias.scope !71
  %44 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 77, i32 0, i64 4
  store i8 0, i8* %44, align 4, !tbaa !3, !alias.scope !71
  %45 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 77, i32 2
  store i64 %30, i64* %45, align 8, !tbaa !75, !alias.scope !71
  %46 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %47 = load i32, i32* %46, align 8, !tbaa !17, !alias.scope !71
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 77, i32 3
  store i8 %48, i8* %49, align 8, !tbaa !76, !alias.scope !71
  %50 = icmp eq i32 %2, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %29
  store i8* null, i8** %17, align 8, !tbaa !70, !alias.scope !71
  br label %62

52:                                               ; preds = %29
  %53 = tail call noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef nonnull %0, i64 noundef %30) #12
  store i8* %53, i8** %17, align 8, !tbaa !70, !alias.scope !71
  br label %54

54:                                               ; preds = %52, %26
  %55 = phi i8* [ %53, %52 ], [ null, %26 ]
  %56 = phi i64 [ %30, %52 ], [ %27, %26 ]
  %57 = icmp eq i8* %55, null
  %58 = icmp ne i32 %2, 0
  %59 = and i1 %58, %57
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  br i1 %58, label %61, label %62

61:                                               ; preds = %60
  tail call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef %55, i64 noundef %56) #12
  tail call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef %55, i64 noundef %56) #12
  br label %62

62:                                               ; preds = %51, %60, %61
  %63 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef 0) #12
  br label %68

64:                                               ; preds = %54
  %65 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %2) #12
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0)) #12
  br label %82

66:                                               ; preds = %9, %11
  %67 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef %0, i32 noundef %2)
  br label %68

68:                                               ; preds = %62, %66
  switch i32 %10, label %82 [
    i32 3, label %74
    i32 2, label %69
  ]

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %71 = load i32, i32* %70, align 8, !tbaa !21
  %72 = and i32 %71, 536870912
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %68, %69
  %75 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 75
  %76 = load i32, i32* %75, align 4, !tbaa !77
  switch i32 %76, label %78 [
    i32 2, label %77
    i32 1, label %82
    i32 0, label %80
  ]

77:                                               ; preds = %74
  store i32 1, i32* %75, align 4, !tbaa !77
  tail call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #12
  br label %82

78:                                               ; preds = %74
  %79 = add i32 %76, -1
  store i32 %79, i32* %75, align 4, !tbaa !77
  br label %80

80:                                               ; preds = %74, %78
  %81 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 77
  tail call void @png_set_unknown_chunks(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef %1, %struct.png_unknown_chunk_t* noundef nonnull %81, i32 noundef 1) #12
  br label %82

82:                                               ; preds = %64, %68, %74, %77, %80, %69
  %83 = phi i1 [ true, %74 ], [ true, %77 ], [ false, %80 ], [ true, %69 ], [ true, %68 ], [ true, %64 ]
  %84 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 77, i32 1
  %85 = load i8*, i8** %84, align 8, !tbaa !70
  %86 = icmp eq i8* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %85) #12
  br label %88

88:                                               ; preds = %87, %82
  store i8* null, i8** %84, align 8, !tbaa !70
  br i1 %83, label %89, label %95

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %91 = load i32, i32* %90, align 8, !tbaa !21
  %92 = and i32 %91, 536870912
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0)) #11
  unreachable

95:                                               ; preds = %89, %88
  ret void
}

declare dso_local void @png_set_unknown_chunks(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_unknown_chunk_t* noundef, i32 noundef) local_unnamed_addr #4

declare dso_local void @png_free(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_combine_row(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 55
  %5 = load i8, i8* %4, align 1, !tbaa !78
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 32
  %8 = load i8*, i8** %7, align 8, !tbaa !79
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %11 = load i32, i32* %10, align 4, !tbaa !35
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 45
  %14 = load i8, i8* %13, align 1, !tbaa !80
  %15 = zext i8 %14 to i32
  %16 = icmp eq i8 %5, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0)) #11
  unreachable

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 35
  %20 = load i64, i64* %19, align 8, !tbaa !81
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = icmp ugt i8 %5, 7
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = lshr i8 %5, 3
  %26 = zext i8 %25 to i64
  %27 = mul nuw nsw i64 %12, %26
  br label %33

28:                                               ; preds = %22
  %29 = zext i8 %5 to i64
  %30 = mul nuw nsw i64 %12, %29
  %31 = add nuw nsw i64 %30, 7
  %32 = lshr i64 %31, 3
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i64 [ %27, %24 ], [ %32, %28 ]
  %35 = icmp eq i64 %20, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0)) #11
  unreachable

37:                                               ; preds = %33, %18
  %38 = icmp eq i32 %11, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0)) #11
  unreachable

40:                                               ; preds = %37
  %41 = zext i8 %5 to i64
  %42 = mul nuw nsw i64 %12, %41
  %43 = trunc i64 %42 to i32
  %44 = and i32 %43, 7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = icmp ugt i8 %5, 7
  %48 = lshr i64 %41, 3
  %49 = mul nuw nsw i64 %48, %12
  %50 = add nuw nsw i64 %42, 7
  %51 = lshr i64 %50, 3
  %52 = select i1 %47, i64 %49, i64 %51
  %53 = getelementptr inbounds i8, i8* %1, i64 %52
  %54 = getelementptr inbounds i8, i8* %53, i64 -1
  %55 = load i8, i8* %54, align 1, !tbaa !3
  %56 = lshr i32 255, %44
  %57 = zext i8 %55 to i32
  br label %58

58:                                               ; preds = %46, %40
  %59 = phi i32 [ %57, %46 ], [ 0, %40 ]
  %60 = phi i32 [ %56, %46 ], [ 0, %40 ]
  %61 = phi i8* [ %54, %46 ], [ null, %40 ]
  %62 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 44
  %63 = load i8, i8* %62, align 4, !tbaa !38
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %649, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %67 = load i32, i32* %66, align 8, !tbaa !82
  %68 = and i32 %67, 2
  %69 = icmp ne i32 %68, 0
  %70 = icmp ult i8 %14, 6
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %649

72:                                               ; preds = %65
  switch i32 %2, label %649 [
    i32 0, label %73
    i32 1, label %75
  ]

73:                                               ; preds = %72
  %74 = and i32 %15, 1
  br label %78

75:                                               ; preds = %72
  %76 = and i32 %15, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %649, label %78

78:                                               ; preds = %73, %75
  %79 = phi i32 [ %74, %73 ], [ 1, %75 ]
  %80 = add nuw nsw i32 %15, 1
  %81 = lshr i32 %80, 1
  %82 = sub nsw i32 3, %81
  %83 = shl nuw nsw i32 %79, %82
  %84 = and i32 %83, 7
  %85 = icmp ugt i32 %11, %84
  br i1 %85, label %86, label %666

86:                                               ; preds = %78
  %87 = icmp ult i8 %5, 8
  br i1 %87, label %88, label %130

88:                                               ; preds = %86
  %89 = udiv i8 8, %5
  %90 = icmp eq i32 %2, 0
  %91 = icmp eq i8 %5, 1
  %92 = icmp eq i8 %5, 2
  %93 = select i1 %92, i64 1, i64 2
  %94 = select i1 %91, i64 0, i64 %93
  %95 = lshr i32 %15, 1
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [2 x [3 x [3 x i32]]], [2 x [3 x [3 x i32]]]* @png_combine_row.display_mask, i64 0, i64 1, i64 %94, i64 %96
  %98 = zext i8 %14 to i64
  %99 = getelementptr inbounds [2 x [3 x [6 x i32]]], [2 x [3 x [6 x i32]]]* @png_combine_row.row_mask, i64 0, i64 1, i64 %94, i64 %98
  %100 = select i1 %90, i32* %99, i32* %97
  %101 = load i32, i32* %100, align 4, !tbaa !83
  %102 = zext i8 %89 to i64
  br label %103

103:                                              ; preds = %126, %88
  %104 = phi i32 [ %101, %88 ], [ %108, %126 ]
  %105 = phi i64 [ %12, %88 ], [ %127, %126 ]
  %106 = phi i8* [ %9, %88 ], [ %129, %126 ]
  %107 = phi i8* [ %1, %88 ], [ %128, %126 ]
  %108 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 24)
  %109 = trunc i32 %104 to i8
  switch i8 %109, label %110 [
    i8 0, label %124
    i8 -1, label %120
  ]

110:                                              ; preds = %103
  %111 = load i8, i8* %107, align 1, !tbaa !3
  %112 = zext i8 %111 to i32
  %113 = xor i32 %104, -1
  %114 = and i32 %112, %113
  %115 = load i8, i8* %106, align 1, !tbaa !3
  %116 = zext i8 %115 to i32
  %117 = and i32 %104, %116
  %118 = or i32 %117, %114
  %119 = trunc i32 %118 to i8
  br label %122

120:                                              ; preds = %103
  %121 = load i8, i8* %106, align 1, !tbaa !3
  br label %122

122:                                              ; preds = %120, %110
  %123 = phi i8 [ %119, %110 ], [ %121, %120 ]
  store i8 %123, i8* %107, align 1, !tbaa !3
  br label %124

124:                                              ; preds = %122, %103
  %125 = icmp ugt i64 %105, %102
  br i1 %125, label %126, label %656

126:                                              ; preds = %124
  %127 = sub i64 %105, %102
  %128 = getelementptr inbounds i8, i8* %107, i64 1
  %129 = getelementptr inbounds i8, i8* %106, i64 1
  br label %103

130:                                              ; preds = %86
  %131 = and i32 %6, 7
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0)) #11
  unreachable

134:                                              ; preds = %130
  %135 = lshr i32 %6, 3
  %136 = zext i32 %135 to i64
  %137 = mul nuw nsw i64 %12, %136
  %138 = mul nuw nsw i32 %84, %135
  %139 = zext i32 %138 to i64
  %140 = sub nsw i64 %137, %139
  %141 = getelementptr inbounds i8, i8* %1, i64 %139
  %142 = getelementptr inbounds i8, i8* %9, i64 %139
  %143 = icmp eq i32 %2, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %134
  %145 = sub nsw i32 6, %15
  %146 = lshr i32 %145, 1
  %147 = shl i32 %135, %146
  %148 = zext i32 %147 to i64
  %149 = icmp ult i64 %140, %148
  %150 = trunc i64 %140 to i32
  %151 = select i1 %149, i32 %150, i32 %147
  br label %152

152:                                              ; preds = %144, %134
  %153 = phi i32 [ %135, %134 ], [ %151, %144 ]
  %154 = sub nsw i32 7, %15
  %155 = lshr i32 %154, 1
  %156 = shl i32 %135, %155
  switch i32 %153, label %213 [
    i32 1, label %169
    i32 2, label %167
    i32 3, label %157
  ]

157:                                              ; preds = %152
  %158 = zext i32 %156 to i64
  %159 = load i8, i8* %142, align 1, !tbaa !3
  store i8 %159, i8* %141, align 1, !tbaa !3
  %160 = getelementptr inbounds i8, i8* %142, i64 1
  %161 = load i8, i8* %160, align 1, !tbaa !3
  %162 = getelementptr inbounds i8, i8* %141, i64 1
  store i8 %161, i8* %162, align 1, !tbaa !3
  %163 = getelementptr inbounds i8, i8* %142, i64 2
  %164 = load i8, i8* %163, align 1, !tbaa !3
  %165 = getelementptr inbounds i8, i8* %141, i64 2
  store i8 %164, i8* %165, align 1, !tbaa !3
  %166 = icmp ugt i64 %140, %158
  br i1 %166, label %198, label %666

167:                                              ; preds = %152
  %168 = zext i32 %156 to i64
  br label %182

169:                                              ; preds = %152
  %170 = zext i32 %156 to i64
  %171 = load i8, i8* %142, align 1, !tbaa !3
  store i8 %171, i8* %141, align 1, !tbaa !3
  %172 = icmp ugt i64 %140, %170
  br i1 %172, label %173, label %666

173:                                              ; preds = %169, %173
  %174 = phi i8* [ %177, %173 ], [ %141, %169 ]
  %175 = phi i8* [ %178, %173 ], [ %142, %169 ]
  %176 = phi i64 [ %179, %173 ], [ %140, %169 ]
  %177 = getelementptr inbounds i8, i8* %174, i64 %170
  %178 = getelementptr inbounds i8, i8* %175, i64 %170
  %179 = sub i64 %176, %170
  %180 = load i8, i8* %178, align 1, !tbaa !3
  store i8 %180, i8* %177, align 1, !tbaa !3
  %181 = icmp ugt i64 %179, %170
  br i1 %181, label %173, label %666

182:                                              ; preds = %167, %191
  %183 = phi i64 [ %194, %191 ], [ %140, %167 ]
  %184 = phi i8* [ %192, %191 ], [ %142, %167 ]
  %185 = phi i8* [ %193, %191 ], [ %141, %167 ]
  %186 = load i8, i8* %184, align 1, !tbaa !3
  store i8 %186, i8* %185, align 1, !tbaa !3
  %187 = getelementptr inbounds i8, i8* %184, i64 1
  %188 = load i8, i8* %187, align 1, !tbaa !3
  %189 = getelementptr inbounds i8, i8* %185, i64 1
  store i8 %188, i8* %189, align 1, !tbaa !3
  %190 = icmp ugt i64 %183, %168
  br i1 %190, label %191, label %666

191:                                              ; preds = %182
  %192 = getelementptr inbounds i8, i8* %184, i64 %168
  %193 = getelementptr inbounds i8, i8* %185, i64 %168
  %194 = sub i64 %183, %168
  %195 = icmp ugt i64 %194, 1
  br i1 %195, label %182, label %196, !llvm.loop !84

196:                                              ; preds = %191
  %197 = load i8, i8* %192, align 1, !tbaa !3
  store i8 %197, i8* %193, align 1, !tbaa !3
  br label %666

198:                                              ; preds = %157, %198
  %199 = phi i8* [ %203, %198 ], [ %141, %157 ]
  %200 = phi i8* [ %202, %198 ], [ %142, %157 ]
  %201 = phi i64 [ %204, %198 ], [ %140, %157 ]
  %202 = getelementptr inbounds i8, i8* %200, i64 %158
  %203 = getelementptr inbounds i8, i8* %199, i64 %158
  %204 = sub i64 %201, %158
  %205 = load i8, i8* %202, align 1, !tbaa !3
  store i8 %205, i8* %203, align 1, !tbaa !3
  %206 = getelementptr inbounds i8, i8* %202, i64 1
  %207 = load i8, i8* %206, align 1, !tbaa !3
  %208 = getelementptr inbounds i8, i8* %203, i64 1
  store i8 %207, i8* %208, align 1, !tbaa !3
  %209 = getelementptr inbounds i8, i8* %202, i64 2
  %210 = load i8, i8* %209, align 1, !tbaa !3
  %211 = getelementptr inbounds i8, i8* %203, i64 2
  store i8 %210, i8* %211, align 1, !tbaa !3
  %212 = icmp ugt i64 %204, %158
  br i1 %212, label %198, label %666

213:                                              ; preds = %152
  %214 = icmp ult i32 %153, 16
  br i1 %214, label %215, label %631

215:                                              ; preds = %213
  %216 = ptrtoint i8* %141 to i64
  %217 = and i64 %216, 1
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %631

219:                                              ; preds = %215
  %220 = ptrtoint i8* %142 to i64
  %221 = and i64 %220, 1
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %631

223:                                              ; preds = %219
  %224 = zext i32 %153 to i64
  %225 = and i64 %224, 1
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %631

227:                                              ; preds = %223
  %228 = zext i32 %156 to i64
  %229 = and i64 %228, 1
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %631

231:                                              ; preds = %227
  %232 = and i64 %216, 3
  %233 = icmp eq i64 %232, 0
  %234 = and i64 %220, 3
  %235 = icmp eq i64 %234, 0
  %236 = select i1 %233, i1 %235, i1 false
  %237 = and i64 %224, 3
  %238 = icmp eq i64 %237, 0
  %239 = select i1 %236, i1 %238, i1 false
  %240 = and i64 %228, 3
  %241 = icmp eq i64 %240, 0
  %242 = select i1 %239, i1 %241, i1 false
  br i1 %242, label %243, label %437

243:                                              ; preds = %231
  %244 = bitcast i8* %141 to i32*
  %245 = bitcast i8* %142 to i32*
  %246 = sub i32 %156, %153
  %247 = lshr i32 %246, 2
  %248 = zext i32 %247 to i64
  br label %249

249:                                              ; preds = %267, %243
  %250 = phi i64 [ %140, %243 ], [ %266, %267 ]
  %251 = phi i32* [ %244, %243 ], [ %264, %267 ]
  %252 = phi i32* [ %245, %243 ], [ %265, %267 ]
  br label %253

253:                                              ; preds = %253, %249
  %254 = phi i32* [ %251, %249 ], [ %259, %253 ]
  %255 = phi i32* [ %252, %249 ], [ %257, %253 ]
  %256 = phi i64 [ %224, %249 ], [ %260, %253 ]
  %257 = getelementptr inbounds i32, i32* %255, i64 1
  %258 = load i32, i32* %255, align 4, !tbaa !83
  %259 = getelementptr inbounds i32, i32* %254, i64 1
  store i32 %258, i32* %254, align 4, !tbaa !83
  %260 = add i64 %256, -4
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %253, !llvm.loop !85

262:                                              ; preds = %253
  %263 = icmp ugt i64 %250, %228
  %264 = getelementptr inbounds i32, i32* %259, i64 %248
  %265 = getelementptr inbounds i32, i32* %257, i64 %248
  %266 = sub i64 %250, %228
  br i1 %263, label %267, label %666

267:                                              ; preds = %262
  %268 = icmp ult i64 %266, %224
  br i1 %268, label %269, label %249, !llvm.loop !86

269:                                              ; preds = %267
  %270 = bitcast i32* %265 to i8*
  %271 = bitcast i32* %264 to i8*
  %272 = bitcast i32* %265 to i8*
  %273 = icmp ult i64 %266, 8
  br i1 %273, label %384, label %274

274:                                              ; preds = %269
  %275 = getelementptr i8, i8* %271, i64 %266
  %276 = getelementptr i8, i8* %270, i64 %266
  %277 = icmp ugt i8* %276, %271
  %278 = icmp ugt i8* %275, %270
  %279 = and i1 %277, %278
  br i1 %279, label %384, label %280

280:                                              ; preds = %274
  %281 = icmp ult i64 %266, 32
  br i1 %281, label %367, label %282

282:                                              ; preds = %280
  %283 = and i64 %266, -32
  %284 = add i64 %283, -32
  %285 = lshr exact i64 %284, 5
  %286 = add nuw nsw i64 %285, 1
  %287 = and i64 %286, 3
  %288 = icmp ult i64 %284, 96
  br i1 %288, label %340, label %289

289:                                              ; preds = %282
  %290 = and i64 %286, 1152921504606846972
  br label %291

291:                                              ; preds = %291, %289
  %292 = phi i64 [ 0, %289 ], [ %337, %291 ]
  %293 = phi i64 [ 0, %289 ], [ %338, %291 ]
  %294 = getelementptr i8, i8* %272, i64 %292
  %295 = getelementptr i8, i8* %271, i64 %292
  %296 = bitcast i8* %294 to <16 x i8>*
  %297 = load <16 x i8>, <16 x i8>* %296, align 1, !tbaa !3, !alias.scope !87
  %298 = getelementptr i8, i8* %294, i64 16
  %299 = bitcast i8* %298 to <16 x i8>*
  %300 = load <16 x i8>, <16 x i8>* %299, align 1, !tbaa !3, !alias.scope !87
  %301 = bitcast i8* %295 to <16 x i8>*
  store <16 x i8> %297, <16 x i8>* %301, align 1, !tbaa !3, !alias.scope !90, !noalias !87
  %302 = getelementptr i8, i8* %295, i64 16
  %303 = bitcast i8* %302 to <16 x i8>*
  store <16 x i8> %300, <16 x i8>* %303, align 1, !tbaa !3, !alias.scope !90, !noalias !87
  %304 = or i64 %292, 32
  %305 = getelementptr i8, i8* %272, i64 %304
  %306 = getelementptr i8, i8* %271, i64 %304
  %307 = bitcast i8* %305 to <16 x i8>*
  %308 = load <16 x i8>, <16 x i8>* %307, align 1, !tbaa !3, !alias.scope !87
  %309 = getelementptr i8, i8* %305, i64 16
  %310 = bitcast i8* %309 to <16 x i8>*
  %311 = load <16 x i8>, <16 x i8>* %310, align 1, !tbaa !3, !alias.scope !87
  %312 = bitcast i8* %306 to <16 x i8>*
  store <16 x i8> %308, <16 x i8>* %312, align 1, !tbaa !3, !alias.scope !90, !noalias !87
  %313 = getelementptr i8, i8* %306, i64 16
  %314 = bitcast i8* %313 to <16 x i8>*
  store <16 x i8> %311, <16 x i8>* %314, align 1, !tbaa !3, !alias.scope !90, !noalias !87
  %315 = or i64 %292, 64
  %316 = getelementptr i8, i8* %272, i64 %315
  %317 = getelementptr i8, i8* %271, i64 %315
  %318 = bitcast i8* %316 to <16 x i8>*
  %319 = load <16 x i8>, <16 x i8>* %318, align 1, !tbaa !3, !alias.scope !87
  %320 = getelementptr i8, i8* %316, i64 16
  %321 = bitcast i8* %320 to <16 x i8>*
  %322 = load <16 x i8>, <16 x i8>* %321, align 1, !tbaa !3, !alias.scope !87
  %323 = bitcast i8* %317 to <16 x i8>*
  store <16 x i8> %319, <16 x i8>* %323, align 1, !tbaa !3, !alias.scope !90, !noalias !87
  %324 = getelementptr i8, i8* %317, i64 16
  %325 = bitcast i8* %324 to <16 x i8>*
  store <16 x i8> %322, <16 x i8>* %325, align 1, !tbaa !3, !alias.scope !90, !noalias !87
  %326 = or i64 %292, 96
  %327 = getelementptr i8, i8* %272, i64 %326
  %328 = getelementptr i8, i8* %271, i64 %326
  %329 = bitcast i8* %327 to <16 x i8>*
  %330 = load <16 x i8>, <16 x i8>* %329, align 1, !tbaa !3, !alias.scope !87
  %331 = getelementptr i8, i8* %327, i64 16
  %332 = bitcast i8* %331 to <16 x i8>*
  %333 = load <16 x i8>, <16 x i8>* %332, align 1, !tbaa !3, !alias.scope !87
  %334 = bitcast i8* %328 to <16 x i8>*
  store <16 x i8> %330, <16 x i8>* %334, align 1, !tbaa !3, !alias.scope !90, !noalias !87
  %335 = getelementptr i8, i8* %328, i64 16
  %336 = bitcast i8* %335 to <16 x i8>*
  store <16 x i8> %333, <16 x i8>* %336, align 1, !tbaa !3, !alias.scope !90, !noalias !87
  %337 = add nuw i64 %292, 128
  %338 = add i64 %293, 4
  %339 = icmp eq i64 %338, %290
  br i1 %339, label %340, label %291, !llvm.loop !92

340:                                              ; preds = %291, %282
  %341 = phi i64 [ 0, %282 ], [ %337, %291 ]
  %342 = icmp eq i64 %287, 0
  br i1 %342, label %359, label %343

343:                                              ; preds = %340, %343
  %344 = phi i64 [ %356, %343 ], [ %341, %340 ]
  %345 = phi i64 [ %357, %343 ], [ 0, %340 ]
  %346 = getelementptr i8, i8* %272, i64 %344
  %347 = getelementptr i8, i8* %271, i64 %344
  %348 = bitcast i8* %346 to <16 x i8>*
  %349 = load <16 x i8>, <16 x i8>* %348, align 1, !tbaa !3, !alias.scope !87
  %350 = getelementptr i8, i8* %346, i64 16
  %351 = bitcast i8* %350 to <16 x i8>*
  %352 = load <16 x i8>, <16 x i8>* %351, align 1, !tbaa !3, !alias.scope !87
  %353 = bitcast i8* %347 to <16 x i8>*
  store <16 x i8> %349, <16 x i8>* %353, align 1, !tbaa !3, !alias.scope !90, !noalias !87
  %354 = getelementptr i8, i8* %347, i64 16
  %355 = bitcast i8* %354 to <16 x i8>*
  store <16 x i8> %352, <16 x i8>* %355, align 1, !tbaa !3, !alias.scope !90, !noalias !87
  %356 = add nuw i64 %344, 32
  %357 = add i64 %345, 1
  %358 = icmp eq i64 %357, %287
  br i1 %358, label %359, label %343, !llvm.loop !94

359:                                              ; preds = %343, %340
  %360 = icmp eq i64 %266, %283
  br i1 %360, label %666, label %361

361:                                              ; preds = %359
  %362 = getelementptr i8, i8* %271, i64 %283
  %363 = getelementptr i8, i8* %272, i64 %283
  %364 = and i64 %266, 31
  %365 = and i64 %266, 24
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %384, label %367

367:                                              ; preds = %280, %361
  %368 = phi i64 [ %283, %361 ], [ 0, %280 ]
  %369 = and i64 %266, -8
  %370 = and i64 %266, 7
  %371 = getelementptr i8, i8* %272, i64 %369
  %372 = getelementptr i8, i8* %271, i64 %369
  br label %373

373:                                              ; preds = %373, %367
  %374 = phi i64 [ %368, %367 ], [ %380, %373 ]
  %375 = getelementptr i8, i8* %272, i64 %374
  %376 = getelementptr i8, i8* %271, i64 %374
  %377 = bitcast i8* %375 to <8 x i8>*
  %378 = load <8 x i8>, <8 x i8>* %377, align 1, !tbaa !3
  %379 = bitcast i8* %376 to <8 x i8>*
  store <8 x i8> %378, <8 x i8>* %379, align 1, !tbaa !3
  %380 = add nuw i64 %374, 8
  %381 = icmp eq i64 %380, %369
  br i1 %381, label %382, label %373, !llvm.loop !96

382:                                              ; preds = %373
  %383 = icmp eq i64 %266, %369
  br i1 %383, label %666, label %384

384:                                              ; preds = %274, %269, %361, %382
  %385 = phi i64 [ %266, %269 ], [ %266, %274 ], [ %364, %361 ], [ %370, %382 ]
  %386 = phi i8* [ %272, %269 ], [ %272, %274 ], [ %363, %361 ], [ %371, %382 ]
  %387 = phi i8* [ %271, %269 ], [ %271, %274 ], [ %362, %361 ], [ %372, %382 ]
  %388 = add i64 %385, -1
  %389 = and i64 %385, 7
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %402, label %391

391:                                              ; preds = %384, %391
  %392 = phi i64 [ %399, %391 ], [ %385, %384 ]
  %393 = phi i8* [ %396, %391 ], [ %386, %384 ]
  %394 = phi i8* [ %398, %391 ], [ %387, %384 ]
  %395 = phi i64 [ %400, %391 ], [ 0, %384 ]
  %396 = getelementptr inbounds i8, i8* %393, i64 1
  %397 = load i8, i8* %393, align 1, !tbaa !3
  %398 = getelementptr inbounds i8, i8* %394, i64 1
  store i8 %397, i8* %394, align 1, !tbaa !3
  %399 = add i64 %392, -1
  %400 = add i64 %395, 1
  %401 = icmp eq i64 %400, %389
  br i1 %401, label %402, label %391, !llvm.loop !98

402:                                              ; preds = %391, %384
  %403 = phi i64 [ %385, %384 ], [ %399, %391 ]
  %404 = phi i8* [ %386, %384 ], [ %396, %391 ]
  %405 = phi i8* [ %387, %384 ], [ %398, %391 ]
  %406 = icmp ult i64 %388, 7
  br i1 %406, label %666, label %407

407:                                              ; preds = %402, %407
  %408 = phi i64 [ %435, %407 ], [ %403, %402 ]
  %409 = phi i8* [ %432, %407 ], [ %404, %402 ]
  %410 = phi i8* [ %434, %407 ], [ %405, %402 ]
  %411 = getelementptr inbounds i8, i8* %409, i64 1
  %412 = load i8, i8* %409, align 1, !tbaa !3
  %413 = getelementptr inbounds i8, i8* %410, i64 1
  store i8 %412, i8* %410, align 1, !tbaa !3
  %414 = getelementptr inbounds i8, i8* %409, i64 2
  %415 = load i8, i8* %411, align 1, !tbaa !3
  %416 = getelementptr inbounds i8, i8* %410, i64 2
  store i8 %415, i8* %413, align 1, !tbaa !3
  %417 = getelementptr inbounds i8, i8* %409, i64 3
  %418 = load i8, i8* %414, align 1, !tbaa !3
  %419 = getelementptr inbounds i8, i8* %410, i64 3
  store i8 %418, i8* %416, align 1, !tbaa !3
  %420 = getelementptr inbounds i8, i8* %409, i64 4
  %421 = load i8, i8* %417, align 1, !tbaa !3
  %422 = getelementptr inbounds i8, i8* %410, i64 4
  store i8 %421, i8* %419, align 1, !tbaa !3
  %423 = getelementptr inbounds i8, i8* %409, i64 5
  %424 = load i8, i8* %420, align 1, !tbaa !3
  %425 = getelementptr inbounds i8, i8* %410, i64 5
  store i8 %424, i8* %422, align 1, !tbaa !3
  %426 = getelementptr inbounds i8, i8* %409, i64 6
  %427 = load i8, i8* %423, align 1, !tbaa !3
  %428 = getelementptr inbounds i8, i8* %410, i64 6
  store i8 %427, i8* %425, align 1, !tbaa !3
  %429 = getelementptr inbounds i8, i8* %409, i64 7
  %430 = load i8, i8* %426, align 1, !tbaa !3
  %431 = getelementptr inbounds i8, i8* %410, i64 7
  store i8 %430, i8* %428, align 1, !tbaa !3
  %432 = getelementptr inbounds i8, i8* %409, i64 8
  %433 = load i8, i8* %429, align 1, !tbaa !3
  %434 = getelementptr inbounds i8, i8* %410, i64 8
  store i8 %433, i8* %431, align 1, !tbaa !3
  %435 = add i64 %408, -8
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %666, label %407, !llvm.loop !99

437:                                              ; preds = %231
  %438 = bitcast i8* %141 to i16*
  %439 = bitcast i8* %142 to i16*
  %440 = sub i32 %156, %153
  %441 = lshr i32 %440, 1
  %442 = zext i32 %441 to i64
  br label %443

443:                                              ; preds = %461, %437
  %444 = phi i64 [ %140, %437 ], [ %460, %461 ]
  %445 = phi i16* [ %438, %437 ], [ %458, %461 ]
  %446 = phi i16* [ %439, %437 ], [ %459, %461 ]
  br label %447

447:                                              ; preds = %447, %443
  %448 = phi i16* [ %445, %443 ], [ %453, %447 ]
  %449 = phi i16* [ %446, %443 ], [ %451, %447 ]
  %450 = phi i64 [ %224, %443 ], [ %454, %447 ]
  %451 = getelementptr inbounds i16, i16* %449, i64 1
  %452 = load i16, i16* %449, align 2, !tbaa !67
  %453 = getelementptr inbounds i16, i16* %448, i64 1
  store i16 %452, i16* %448, align 2, !tbaa !67
  %454 = add i64 %450, -2
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %456, label %447, !llvm.loop !100

456:                                              ; preds = %447
  %457 = icmp ugt i64 %444, %228
  %458 = getelementptr inbounds i16, i16* %453, i64 %442
  %459 = getelementptr inbounds i16, i16* %451, i64 %442
  %460 = sub i64 %444, %228
  br i1 %457, label %461, label %666

461:                                              ; preds = %456
  %462 = icmp ult i64 %460, %224
  br i1 %462, label %463, label %443, !llvm.loop !101

463:                                              ; preds = %461
  %464 = bitcast i16* %459 to i8*
  %465 = bitcast i16* %458 to i8*
  %466 = bitcast i16* %459 to i8*
  %467 = icmp ult i64 %460, 8
  br i1 %467, label %578, label %468

468:                                              ; preds = %463
  %469 = getelementptr i8, i8* %465, i64 %460
  %470 = getelementptr i8, i8* %464, i64 %460
  %471 = icmp ugt i8* %470, %465
  %472 = icmp ugt i8* %469, %464
  %473 = and i1 %471, %472
  br i1 %473, label %578, label %474

474:                                              ; preds = %468
  %475 = icmp ult i64 %460, 32
  br i1 %475, label %561, label %476

476:                                              ; preds = %474
  %477 = and i64 %460, -32
  %478 = add i64 %477, -32
  %479 = lshr exact i64 %478, 5
  %480 = add nuw nsw i64 %479, 1
  %481 = and i64 %480, 3
  %482 = icmp ult i64 %478, 96
  br i1 %482, label %534, label %483

483:                                              ; preds = %476
  %484 = and i64 %480, 1152921504606846972
  br label %485

485:                                              ; preds = %485, %483
  %486 = phi i64 [ 0, %483 ], [ %531, %485 ]
  %487 = phi i64 [ 0, %483 ], [ %532, %485 ]
  %488 = getelementptr i8, i8* %466, i64 %486
  %489 = getelementptr i8, i8* %465, i64 %486
  %490 = bitcast i8* %488 to <16 x i8>*
  %491 = load <16 x i8>, <16 x i8>* %490, align 1, !tbaa !3, !alias.scope !102
  %492 = getelementptr i8, i8* %488, i64 16
  %493 = bitcast i8* %492 to <16 x i8>*
  %494 = load <16 x i8>, <16 x i8>* %493, align 1, !tbaa !3, !alias.scope !102
  %495 = bitcast i8* %489 to <16 x i8>*
  store <16 x i8> %491, <16 x i8>* %495, align 1, !tbaa !3, !alias.scope !105, !noalias !102
  %496 = getelementptr i8, i8* %489, i64 16
  %497 = bitcast i8* %496 to <16 x i8>*
  store <16 x i8> %494, <16 x i8>* %497, align 1, !tbaa !3, !alias.scope !105, !noalias !102
  %498 = or i64 %486, 32
  %499 = getelementptr i8, i8* %466, i64 %498
  %500 = getelementptr i8, i8* %465, i64 %498
  %501 = bitcast i8* %499 to <16 x i8>*
  %502 = load <16 x i8>, <16 x i8>* %501, align 1, !tbaa !3, !alias.scope !102
  %503 = getelementptr i8, i8* %499, i64 16
  %504 = bitcast i8* %503 to <16 x i8>*
  %505 = load <16 x i8>, <16 x i8>* %504, align 1, !tbaa !3, !alias.scope !102
  %506 = bitcast i8* %500 to <16 x i8>*
  store <16 x i8> %502, <16 x i8>* %506, align 1, !tbaa !3, !alias.scope !105, !noalias !102
  %507 = getelementptr i8, i8* %500, i64 16
  %508 = bitcast i8* %507 to <16 x i8>*
  store <16 x i8> %505, <16 x i8>* %508, align 1, !tbaa !3, !alias.scope !105, !noalias !102
  %509 = or i64 %486, 64
  %510 = getelementptr i8, i8* %466, i64 %509
  %511 = getelementptr i8, i8* %465, i64 %509
  %512 = bitcast i8* %510 to <16 x i8>*
  %513 = load <16 x i8>, <16 x i8>* %512, align 1, !tbaa !3, !alias.scope !102
  %514 = getelementptr i8, i8* %510, i64 16
  %515 = bitcast i8* %514 to <16 x i8>*
  %516 = load <16 x i8>, <16 x i8>* %515, align 1, !tbaa !3, !alias.scope !102
  %517 = bitcast i8* %511 to <16 x i8>*
  store <16 x i8> %513, <16 x i8>* %517, align 1, !tbaa !3, !alias.scope !105, !noalias !102
  %518 = getelementptr i8, i8* %511, i64 16
  %519 = bitcast i8* %518 to <16 x i8>*
  store <16 x i8> %516, <16 x i8>* %519, align 1, !tbaa !3, !alias.scope !105, !noalias !102
  %520 = or i64 %486, 96
  %521 = getelementptr i8, i8* %466, i64 %520
  %522 = getelementptr i8, i8* %465, i64 %520
  %523 = bitcast i8* %521 to <16 x i8>*
  %524 = load <16 x i8>, <16 x i8>* %523, align 1, !tbaa !3, !alias.scope !102
  %525 = getelementptr i8, i8* %521, i64 16
  %526 = bitcast i8* %525 to <16 x i8>*
  %527 = load <16 x i8>, <16 x i8>* %526, align 1, !tbaa !3, !alias.scope !102
  %528 = bitcast i8* %522 to <16 x i8>*
  store <16 x i8> %524, <16 x i8>* %528, align 1, !tbaa !3, !alias.scope !105, !noalias !102
  %529 = getelementptr i8, i8* %522, i64 16
  %530 = bitcast i8* %529 to <16 x i8>*
  store <16 x i8> %527, <16 x i8>* %530, align 1, !tbaa !3, !alias.scope !105, !noalias !102
  %531 = add nuw i64 %486, 128
  %532 = add i64 %487, 4
  %533 = icmp eq i64 %532, %484
  br i1 %533, label %534, label %485, !llvm.loop !107

534:                                              ; preds = %485, %476
  %535 = phi i64 [ 0, %476 ], [ %531, %485 ]
  %536 = icmp eq i64 %481, 0
  br i1 %536, label %553, label %537

537:                                              ; preds = %534, %537
  %538 = phi i64 [ %550, %537 ], [ %535, %534 ]
  %539 = phi i64 [ %551, %537 ], [ 0, %534 ]
  %540 = getelementptr i8, i8* %466, i64 %538
  %541 = getelementptr i8, i8* %465, i64 %538
  %542 = bitcast i8* %540 to <16 x i8>*
  %543 = load <16 x i8>, <16 x i8>* %542, align 1, !tbaa !3, !alias.scope !102
  %544 = getelementptr i8, i8* %540, i64 16
  %545 = bitcast i8* %544 to <16 x i8>*
  %546 = load <16 x i8>, <16 x i8>* %545, align 1, !tbaa !3, !alias.scope !102
  %547 = bitcast i8* %541 to <16 x i8>*
  store <16 x i8> %543, <16 x i8>* %547, align 1, !tbaa !3, !alias.scope !105, !noalias !102
  %548 = getelementptr i8, i8* %541, i64 16
  %549 = bitcast i8* %548 to <16 x i8>*
  store <16 x i8> %546, <16 x i8>* %549, align 1, !tbaa !3, !alias.scope !105, !noalias !102
  %550 = add nuw i64 %538, 32
  %551 = add i64 %539, 1
  %552 = icmp eq i64 %551, %481
  br i1 %552, label %553, label %537, !llvm.loop !108

553:                                              ; preds = %537, %534
  %554 = icmp eq i64 %460, %477
  br i1 %554, label %666, label %555

555:                                              ; preds = %553
  %556 = getelementptr i8, i8* %465, i64 %477
  %557 = getelementptr i8, i8* %466, i64 %477
  %558 = and i64 %460, 31
  %559 = and i64 %460, 24
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %578, label %561

561:                                              ; preds = %474, %555
  %562 = phi i64 [ %477, %555 ], [ 0, %474 ]
  %563 = and i64 %460, -8
  %564 = and i64 %460, 7
  %565 = getelementptr i8, i8* %466, i64 %563
  %566 = getelementptr i8, i8* %465, i64 %563
  br label %567

567:                                              ; preds = %567, %561
  %568 = phi i64 [ %562, %561 ], [ %574, %567 ]
  %569 = getelementptr i8, i8* %466, i64 %568
  %570 = getelementptr i8, i8* %465, i64 %568
  %571 = bitcast i8* %569 to <8 x i8>*
  %572 = load <8 x i8>, <8 x i8>* %571, align 1, !tbaa !3
  %573 = bitcast i8* %570 to <8 x i8>*
  store <8 x i8> %572, <8 x i8>* %573, align 1, !tbaa !3
  %574 = add nuw i64 %568, 8
  %575 = icmp eq i64 %574, %563
  br i1 %575, label %576, label %567, !llvm.loop !109

576:                                              ; preds = %567
  %577 = icmp eq i64 %460, %563
  br i1 %577, label %666, label %578

578:                                              ; preds = %468, %463, %555, %576
  %579 = phi i64 [ %460, %463 ], [ %460, %468 ], [ %558, %555 ], [ %564, %576 ]
  %580 = phi i8* [ %466, %463 ], [ %466, %468 ], [ %557, %555 ], [ %565, %576 ]
  %581 = phi i8* [ %465, %463 ], [ %465, %468 ], [ %556, %555 ], [ %566, %576 ]
  %582 = add i64 %579, -1
  %583 = and i64 %579, 7
  %584 = icmp eq i64 %583, 0
  br i1 %584, label %596, label %585

585:                                              ; preds = %578, %585
  %586 = phi i64 [ %593, %585 ], [ %579, %578 ]
  %587 = phi i8* [ %590, %585 ], [ %580, %578 ]
  %588 = phi i8* [ %592, %585 ], [ %581, %578 ]
  %589 = phi i64 [ %594, %585 ], [ 0, %578 ]
  %590 = getelementptr inbounds i8, i8* %587, i64 1
  %591 = load i8, i8* %587, align 1, !tbaa !3
  %592 = getelementptr inbounds i8, i8* %588, i64 1
  store i8 %591, i8* %588, align 1, !tbaa !3
  %593 = add i64 %586, -1
  %594 = add i64 %589, 1
  %595 = icmp eq i64 %594, %583
  br i1 %595, label %596, label %585, !llvm.loop !110

596:                                              ; preds = %585, %578
  %597 = phi i64 [ %579, %578 ], [ %593, %585 ]
  %598 = phi i8* [ %580, %578 ], [ %590, %585 ]
  %599 = phi i8* [ %581, %578 ], [ %592, %585 ]
  %600 = icmp ult i64 %582, 7
  br i1 %600, label %666, label %601

601:                                              ; preds = %596, %601
  %602 = phi i64 [ %629, %601 ], [ %597, %596 ]
  %603 = phi i8* [ %626, %601 ], [ %598, %596 ]
  %604 = phi i8* [ %628, %601 ], [ %599, %596 ]
  %605 = getelementptr inbounds i8, i8* %603, i64 1
  %606 = load i8, i8* %603, align 1, !tbaa !3
  %607 = getelementptr inbounds i8, i8* %604, i64 1
  store i8 %606, i8* %604, align 1, !tbaa !3
  %608 = getelementptr inbounds i8, i8* %603, i64 2
  %609 = load i8, i8* %605, align 1, !tbaa !3
  %610 = getelementptr inbounds i8, i8* %604, i64 2
  store i8 %609, i8* %607, align 1, !tbaa !3
  %611 = getelementptr inbounds i8, i8* %603, i64 3
  %612 = load i8, i8* %608, align 1, !tbaa !3
  %613 = getelementptr inbounds i8, i8* %604, i64 3
  store i8 %612, i8* %610, align 1, !tbaa !3
  %614 = getelementptr inbounds i8, i8* %603, i64 4
  %615 = load i8, i8* %611, align 1, !tbaa !3
  %616 = getelementptr inbounds i8, i8* %604, i64 4
  store i8 %615, i8* %613, align 1, !tbaa !3
  %617 = getelementptr inbounds i8, i8* %603, i64 5
  %618 = load i8, i8* %614, align 1, !tbaa !3
  %619 = getelementptr inbounds i8, i8* %604, i64 5
  store i8 %618, i8* %616, align 1, !tbaa !3
  %620 = getelementptr inbounds i8, i8* %603, i64 6
  %621 = load i8, i8* %617, align 1, !tbaa !3
  %622 = getelementptr inbounds i8, i8* %604, i64 6
  store i8 %621, i8* %619, align 1, !tbaa !3
  %623 = getelementptr inbounds i8, i8* %603, i64 7
  %624 = load i8, i8* %620, align 1, !tbaa !3
  %625 = getelementptr inbounds i8, i8* %604, i64 7
  store i8 %624, i8* %622, align 1, !tbaa !3
  %626 = getelementptr inbounds i8, i8* %603, i64 8
  %627 = load i8, i8* %623, align 1, !tbaa !3
  %628 = getelementptr inbounds i8, i8* %604, i64 8
  store i8 %627, i8* %625, align 1, !tbaa !3
  %629 = add i64 %602, -8
  %630 = icmp eq i64 %629, 0
  br i1 %630, label %666, label %601, !llvm.loop !111

631:                                              ; preds = %227, %223, %219, %215, %213
  %632 = zext i32 %156 to i64
  %633 = zext i32 %153 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %141, i8* nonnull align 1 %142, i64 %633, i1 false)
  %634 = icmp ugt i64 %140, %632
  br i1 %634, label %635, label %666

635:                                              ; preds = %631, %635
  %636 = phi i64 [ %647, %635 ], [ %633, %631 ]
  %637 = phi i8* [ %642, %635 ], [ %141, %631 ]
  %638 = phi i8* [ %641, %635 ], [ %142, %631 ]
  %639 = phi i64 [ %643, %635 ], [ %140, %631 ]
  %640 = phi i32 [ %646, %635 ], [ %153, %631 ]
  %641 = getelementptr inbounds i8, i8* %638, i64 %632
  %642 = getelementptr inbounds i8, i8* %637, i64 %632
  %643 = sub i64 %639, %632
  %644 = icmp ult i64 %643, %636
  %645 = trunc i64 %643 to i32
  %646 = select i1 %644, i32 %645, i32 %640
  %647 = zext i32 %646 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %642, i8* align 1 %641, i64 %647, i1 false)
  %648 = icmp ugt i64 %643, %632
  br i1 %648, label %635, label %666

649:                                              ; preds = %72, %75, %65, %58
  %650 = icmp ugt i8 %5, 7
  %651 = lshr i64 %41, 3
  %652 = mul nuw nsw i64 %651, %12
  %653 = add nuw nsw i64 %42, 7
  %654 = lshr i64 %653, 3
  %655 = select i1 %650, i64 %652, i64 %654
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* nonnull align 1 %9, i64 %655, i1 false)
  br label %656

656:                                              ; preds = %124, %649
  %657 = icmp eq i8* %61, null
  br i1 %657, label %666, label %658

658:                                              ; preds = %656
  %659 = and i32 %60, %59
  %660 = load i8, i8* %61, align 1, !tbaa !3
  %661 = zext i8 %660 to i32
  %662 = xor i32 %60, -1
  %663 = and i32 %661, %662
  %664 = or i32 %663, %659
  %665 = trunc i32 %664 to i8
  store i8 %665, i8* %61, align 1, !tbaa !3
  br label %666

666:                                              ; preds = %198, %182, %173, %635, %456, %596, %601, %262, %402, %407, %553, %576, %359, %382, %157, %169, %631, %656, %658, %196, %78
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @png_do_read_interlace(%struct.png_row_info_struct* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = alloca i64, align 8
  %6 = icmp ne i8* %1, null
  %7 = icmp ne %struct.png_row_info_struct* %0, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %370

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !112
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds [7 x i32], [7 x i32]* @png_do_read_interlace.png_pass_inc, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !83
  %15 = mul i32 %14, %11
  %16 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 5
  %17 = load i8, i8* %16, align 1, !tbaa !114
  switch i8 %17, label %300 [
    i8 1, label %18
    i8 2, label %112
    i8 4, label %208
  ]

18:                                               ; preds = %9
  %19 = icmp eq i32 %11, 0
  br i1 %19, label %351, label %20

20:                                               ; preds = %18
  %21 = add i32 %15, 7
  %22 = and i32 %21, 7
  %23 = xor i32 %22, 7
  %24 = add i32 %11, 7
  %25 = and i32 %24, 7
  %26 = xor i32 %25, 7
  %27 = add i32 %15, -1
  %28 = lshr i32 %27, 3
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %1, i64 %29
  %31 = add i32 %11, -1
  %32 = lshr i32 %31, 3
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %1, i64 %33
  %35 = call i32 @llvm.smax.i32(i32 %14, i32 1)
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %2, 6
  %38 = and i32 %35, 2147483646
  %39 = icmp eq i32 %36, 0
  br label %40

40:                                               ; preds = %101, %20
  %41 = phi i8* [ %34, %20 ], [ %109, %101 ]
  %42 = phi i8* [ %30, %20 ], [ %103, %101 ]
  %43 = phi i32 [ %26, %20 ], [ %107, %101 ]
  %44 = phi i32 [ %23, %20 ], [ %102, %101 ]
  %45 = phi i32 [ 0, %20 ], [ %110, %101 ]
  %46 = load i8, i8* %41, align 1, !tbaa !3
  %47 = zext i8 %46 to i32
  %48 = lshr i32 %47, %43
  %49 = and i32 %48, 1
  br i1 %37, label %82, label %50

50:                                               ; preds = %40, %50
  %51 = phi i8* [ %79, %50 ], [ %42, %40 ]
  %52 = phi i32 [ %77, %50 ], [ %44, %40 ]
  %53 = phi i32 [ %80, %50 ], [ 0, %40 ]
  %54 = load i8, i8* %51, align 1, !tbaa !3
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 7, %52
  %57 = lshr i32 32639, %56
  %58 = and i32 %57, %55
  %59 = shl i32 %49, %52
  %60 = or i32 %58, %59
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %51, align 1, !tbaa !3
  %62 = icmp eq i32 %52, 7
  %63 = add nsw i32 %52, 1
  %64 = select i1 %62, i32 0, i32 %63
  %65 = sext i1 %62 to i64
  %66 = getelementptr i8, i8* %51, i64 %65
  %67 = load i8, i8* %66, align 1, !tbaa !3
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 7, %64
  %70 = lshr i32 32639, %69
  %71 = and i32 %70, %68
  %72 = shl i32 %49, %64
  %73 = or i32 %71, %72
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %66, align 1, !tbaa !3
  %75 = icmp eq i32 %64, 7
  %76 = add nsw i32 %64, 1
  %77 = select i1 %75, i32 0, i32 %76
  %78 = sext i1 %75 to i64
  %79 = getelementptr i8, i8* %66, i64 %78
  %80 = add i32 %53, 2
  %81 = icmp eq i32 %80, %38
  br i1 %81, label %82, label %50, !llvm.loop !115

82:                                               ; preds = %50, %40
  %83 = phi i32 [ undef, %40 ], [ %77, %50 ]
  %84 = phi i8* [ undef, %40 ], [ %79, %50 ]
  %85 = phi i8* [ %42, %40 ], [ %79, %50 ]
  %86 = phi i32 [ %44, %40 ], [ %77, %50 ]
  br i1 %39, label %101, label %87

87:                                               ; preds = %82
  %88 = load i8, i8* %85, align 1, !tbaa !3
  %89 = zext i8 %88 to i32
  %90 = sub nsw i32 7, %86
  %91 = lshr i32 32639, %90
  %92 = and i32 %91, %89
  %93 = shl i32 %49, %86
  %94 = or i32 %92, %93
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %85, align 1, !tbaa !3
  %96 = icmp eq i32 %86, 7
  %97 = add nsw i32 %86, 1
  %98 = select i1 %96, i32 0, i32 %97
  %99 = sext i1 %96 to i64
  %100 = getelementptr i8, i8* %85, i64 %99
  br label %101

101:                                              ; preds = %82, %87
  %102 = phi i32 [ %83, %82 ], [ %98, %87 ]
  %103 = phi i8* [ %84, %82 ], [ %100, %87 ]
  %104 = load i32, i32* %10, align 8, !tbaa !112
  %105 = icmp eq i32 %43, 7
  %106 = add nsw i32 %43, 1
  %107 = select i1 %105, i32 0, i32 %106
  %108 = sext i1 %105 to i64
  %109 = getelementptr i8, i8* %41, i64 %108
  %110 = add nuw i32 %45, 1
  %111 = icmp ult i32 %110, %104
  br i1 %111, label %40, label %349, !llvm.loop !116

112:                                              ; preds = %9
  %113 = icmp eq i32 %11, 0
  br i1 %113, label %351, label %114

114:                                              ; preds = %112
  %115 = shl i32 %15, 1
  %116 = add i32 %115, 6
  %117 = and i32 %116, 6
  %118 = xor i32 %117, 6
  %119 = shl i32 %11, 1
  %120 = add i32 %119, 6
  %121 = and i32 %120, 6
  %122 = xor i32 %121, 6
  %123 = add i32 %15, -1
  %124 = lshr i32 %123, 2
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %1, i64 %125
  %127 = add i32 %11, -1
  %128 = lshr i32 %127, 2
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %1, i64 %129
  %131 = call i32 @llvm.smax.i32(i32 %14, i32 1)
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %2, 6
  %134 = and i32 %131, 2147483646
  %135 = icmp eq i32 %132, 0
  br label %136

136:                                              ; preds = %197, %114
  %137 = phi i8* [ %130, %114 ], [ %205, %197 ]
  %138 = phi i8* [ %126, %114 ], [ %199, %197 ]
  %139 = phi i32 [ %122, %114 ], [ %203, %197 ]
  %140 = phi i32 [ %118, %114 ], [ %198, %197 ]
  %141 = phi i32 [ 0, %114 ], [ %206, %197 ]
  %142 = load i8, i8* %137, align 1, !tbaa !3
  %143 = zext i8 %142 to i32
  %144 = lshr i32 %143, %139
  %145 = and i32 %144, 3
  br i1 %133, label %178, label %146

146:                                              ; preds = %136, %146
  %147 = phi i8* [ %175, %146 ], [ %138, %136 ]
  %148 = phi i32 [ %173, %146 ], [ %140, %136 ]
  %149 = phi i32 [ %176, %146 ], [ 0, %136 ]
  %150 = load i8, i8* %147, align 1, !tbaa !3
  %151 = zext i8 %150 to i32
  %152 = sub nsw i32 6, %148
  %153 = lshr i32 16191, %152
  %154 = and i32 %153, %151
  %155 = shl i32 %145, %148
  %156 = or i32 %154, %155
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %147, align 1, !tbaa !3
  %158 = icmp eq i32 %148, 6
  %159 = add nsw i32 %148, 2
  %160 = select i1 %158, i32 0, i32 %159
  %161 = sext i1 %158 to i64
  %162 = getelementptr i8, i8* %147, i64 %161
  %163 = load i8, i8* %162, align 1, !tbaa !3
  %164 = zext i8 %163 to i32
  %165 = sub nsw i32 6, %160
  %166 = lshr i32 16191, %165
  %167 = and i32 %166, %164
  %168 = shl i32 %145, %160
  %169 = or i32 %167, %168
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %162, align 1, !tbaa !3
  %171 = icmp eq i32 %160, 6
  %172 = add nsw i32 %160, 2
  %173 = select i1 %171, i32 0, i32 %172
  %174 = sext i1 %171 to i64
  %175 = getelementptr i8, i8* %162, i64 %174
  %176 = add i32 %149, 2
  %177 = icmp eq i32 %176, %134
  br i1 %177, label %178, label %146, !llvm.loop !117

178:                                              ; preds = %146, %136
  %179 = phi i32 [ undef, %136 ], [ %173, %146 ]
  %180 = phi i8* [ undef, %136 ], [ %175, %146 ]
  %181 = phi i8* [ %138, %136 ], [ %175, %146 ]
  %182 = phi i32 [ %140, %136 ], [ %173, %146 ]
  br i1 %135, label %197, label %183

183:                                              ; preds = %178
  %184 = load i8, i8* %181, align 1, !tbaa !3
  %185 = zext i8 %184 to i32
  %186 = sub nsw i32 6, %182
  %187 = lshr i32 16191, %186
  %188 = and i32 %187, %185
  %189 = shl i32 %145, %182
  %190 = or i32 %188, %189
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %181, align 1, !tbaa !3
  %192 = icmp eq i32 %182, 6
  %193 = add nsw i32 %182, 2
  %194 = select i1 %192, i32 0, i32 %193
  %195 = sext i1 %192 to i64
  %196 = getelementptr i8, i8* %181, i64 %195
  br label %197

197:                                              ; preds = %178, %183
  %198 = phi i32 [ %179, %178 ], [ %194, %183 ]
  %199 = phi i8* [ %180, %178 ], [ %196, %183 ]
  %200 = load i32, i32* %10, align 8, !tbaa !112
  %201 = icmp eq i32 %139, 6
  %202 = add nsw i32 %139, 2
  %203 = select i1 %201, i32 0, i32 %202
  %204 = sext i1 %201 to i64
  %205 = getelementptr i8, i8* %137, i64 %204
  %206 = add nuw i32 %141, 1
  %207 = icmp ult i32 %206, %200
  br i1 %207, label %136, label %349, !llvm.loop !118

208:                                              ; preds = %9
  %209 = icmp eq i32 %11, 0
  br i1 %209, label %351, label %210

210:                                              ; preds = %208
  %211 = shl i32 %15, 2
  %212 = and i32 %211, 4
  %213 = shl i32 %11, 2
  %214 = and i32 %213, 4
  %215 = add i32 %15, -1
  %216 = lshr i32 %215, 1
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %1, i64 %217
  %219 = add i32 %11, -1
  %220 = lshr i32 %219, 1
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %1, i64 %221
  %223 = call i32 @llvm.smax.i32(i32 %14, i32 1)
  %224 = and i32 %223, 1
  %225 = icmp eq i32 %2, 6
  %226 = and i32 %223, 2147483646
  %227 = icmp eq i32 %224, 0
  br label %228

228:                                              ; preds = %289, %210
  %229 = phi i32 [ 0, %210 ], [ %298, %289 ]
  %230 = phi i32 [ %212, %210 ], [ %291, %289 ]
  %231 = phi i32 [ %214, %210 ], [ %297, %289 ]
  %232 = phi i8* [ %218, %210 ], [ %290, %289 ]
  %233 = phi i8* [ %222, %210 ], [ %296, %289 ]
  %234 = load i8, i8* %233, align 1, !tbaa !3
  %235 = zext i8 %234 to i32
  %236 = lshr i32 %235, %231
  %237 = and i32 %236, 15
  br i1 %225, label %270, label %238

238:                                              ; preds = %228, %238
  %239 = phi i32 [ %267, %238 ], [ %230, %228 ]
  %240 = phi i8* [ %266, %238 ], [ %232, %228 ]
  %241 = phi i32 [ %268, %238 ], [ 0, %228 ]
  %242 = load i8, i8* %240, align 1, !tbaa !3
  %243 = zext i8 %242 to i32
  %244 = sub nsw i32 4, %239
  %245 = lshr i32 3855, %244
  %246 = and i32 %245, %243
  %247 = shl i32 %237, %239
  %248 = or i32 %246, %247
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %240, align 1, !tbaa !3
  %250 = icmp eq i32 %239, 4
  %251 = add nsw i32 %239, 4
  %252 = sext i1 %250 to i64
  %253 = getelementptr i8, i8* %240, i64 %252
  %254 = select i1 %250, i32 0, i32 %251
  %255 = load i8, i8* %253, align 1, !tbaa !3
  %256 = zext i8 %255 to i32
  %257 = sub nsw i32 4, %254
  %258 = lshr i32 3855, %257
  %259 = and i32 %258, %256
  %260 = shl i32 %237, %254
  %261 = or i32 %259, %260
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %253, align 1, !tbaa !3
  %263 = icmp eq i32 %254, 4
  %264 = add nsw i32 %254, 4
  %265 = sext i1 %263 to i64
  %266 = getelementptr i8, i8* %253, i64 %265
  %267 = select i1 %263, i32 0, i32 %264
  %268 = add i32 %241, 2
  %269 = icmp eq i32 %268, %226
  br i1 %269, label %270, label %238, !llvm.loop !119

270:                                              ; preds = %238, %228
  %271 = phi i8* [ undef, %228 ], [ %266, %238 ]
  %272 = phi i32 [ undef, %228 ], [ %267, %238 ]
  %273 = phi i32 [ %230, %228 ], [ %267, %238 ]
  %274 = phi i8* [ %232, %228 ], [ %266, %238 ]
  br i1 %227, label %289, label %275

275:                                              ; preds = %270
  %276 = load i8, i8* %274, align 1, !tbaa !3
  %277 = zext i8 %276 to i32
  %278 = sub nsw i32 4, %273
  %279 = lshr i32 3855, %278
  %280 = and i32 %279, %277
  %281 = shl i32 %237, %273
  %282 = or i32 %280, %281
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %274, align 1, !tbaa !3
  %284 = icmp eq i32 %273, 4
  %285 = add nsw i32 %273, 4
  %286 = sext i1 %284 to i64
  %287 = getelementptr i8, i8* %274, i64 %286
  %288 = select i1 %284, i32 0, i32 %285
  br label %289

289:                                              ; preds = %270, %275
  %290 = phi i8* [ %271, %270 ], [ %287, %275 ]
  %291 = phi i32 [ %272, %270 ], [ %288, %275 ]
  %292 = load i32, i32* %10, align 8, !tbaa !112
  %293 = icmp eq i32 %231, 4
  %294 = add nsw i32 %231, 4
  %295 = sext i1 %293 to i64
  %296 = getelementptr i8, i8* %233, i64 %295
  %297 = select i1 %293, i32 0, i32 %294
  %298 = add nuw i32 %229, 1
  %299 = icmp ult i32 %298, %292
  br i1 %299, label %228, label %349, !llvm.loop !120

300:                                              ; preds = %9
  %301 = lshr i8 %17, 3
  %302 = zext i8 %301 to i64
  %303 = icmp eq i32 %11, 0
  br i1 %303, label %352, label %304

304:                                              ; preds = %300
  %305 = add i32 %15, -1
  %306 = zext i32 %305 to i64
  %307 = mul nuw nsw i64 %306, %302
  %308 = getelementptr inbounds i8, i8* %1, i64 %307
  %309 = add i32 %11, -1
  %310 = zext i32 %309 to i64
  %311 = mul nuw nsw i64 %302, %310
  %312 = getelementptr inbounds i8, i8* %1, i64 %311
  %313 = sub nsw i64 0, %302
  %314 = call i32 @llvm.smax.i32(i32 %14, i32 1)
  %315 = bitcast i64* %5 to i8*
  %316 = add nsw i32 %314, -1
  %317 = and i32 %314, 3
  %318 = icmp ult i32 %316, 3
  %319 = and i32 %314, 2147483644
  %320 = icmp eq i32 %317, 0
  br label %321

321:                                              ; preds = %343, %304
  %322 = phi i32 [ 0, %304 ], [ %347, %343 ]
  %323 = phi i8* [ %308, %304 ], [ %344, %343 ]
  %324 = phi i8* [ %312, %304 ], [ %346, %343 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %315)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %315, i8* align 1 %324, i64 %302, i1 false)
  br i1 %318, label %334, label %325

325:                                              ; preds = %321, %325
  %326 = phi i8* [ %331, %325 ], [ %323, %321 ]
  %327 = phi i32 [ %332, %325 ], [ 0, %321 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %326, i8* nonnull align 8 %315, i64 %302, i1 false)
  %328 = getelementptr inbounds i8, i8* %326, i64 %313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %328, i8* nonnull align 8 %315, i64 %302, i1 false)
  %329 = getelementptr inbounds i8, i8* %328, i64 %313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %329, i8* nonnull align 8 %315, i64 %302, i1 false)
  %330 = getelementptr inbounds i8, i8* %329, i64 %313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %330, i8* nonnull align 8 %315, i64 %302, i1 false)
  %331 = getelementptr inbounds i8, i8* %330, i64 %313
  %332 = add i32 %327, 4
  %333 = icmp eq i32 %332, %319
  br i1 %333, label %334, label %325, !llvm.loop !121

334:                                              ; preds = %325, %321
  %335 = phi i8* [ undef, %321 ], [ %331, %325 ]
  %336 = phi i8* [ %323, %321 ], [ %331, %325 ]
  br i1 %320, label %343, label %337

337:                                              ; preds = %334, %337
  %338 = phi i8* [ %340, %337 ], [ %336, %334 ]
  %339 = phi i32 [ %341, %337 ], [ 0, %334 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %338, i8* nonnull align 8 %315, i64 %302, i1 false)
  %340 = getelementptr inbounds i8, i8* %338, i64 %313
  %341 = add i32 %339, 1
  %342 = icmp eq i32 %341, %317
  br i1 %342, label %343, label %337, !llvm.loop !122

343:                                              ; preds = %337, %334
  %344 = phi i8* [ %335, %334 ], [ %340, %337 ]
  %345 = load i32, i32* %10, align 8, !tbaa !112
  %346 = getelementptr inbounds i8, i8* %324, i64 %313
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %315)
  %347 = add nuw i32 %322, 1
  %348 = icmp ult i32 %347, %345
  br i1 %348, label %321, label %349, !llvm.loop !123

349:                                              ; preds = %289, %197, %101, %343
  %350 = load i8, i8* %16, align 1, !tbaa !114
  br label %352

351:                                              ; preds = %208, %112, %18
  store i32 %15, i32* %10, align 8, !tbaa !112
  br label %360

352:                                              ; preds = %349, %300
  %353 = phi i8 [ %350, %349 ], [ %17, %300 ]
  store i32 %15, i32* %10, align 8, !tbaa !112
  %354 = icmp ugt i8 %353, 7
  br i1 %354, label %355, label %360

355:                                              ; preds = %352
  %356 = zext i32 %15 to i64
  %357 = lshr i8 %353, 3
  %358 = zext i8 %357 to i64
  %359 = mul nuw nsw i64 %358, %356
  br label %367

360:                                              ; preds = %351, %352
  %361 = phi i8 [ %17, %351 ], [ %353, %352 ]
  %362 = zext i32 %15 to i64
  %363 = zext i8 %361 to i64
  %364 = mul nuw nsw i64 %363, %362
  %365 = add nuw nsw i64 %364, 7
  %366 = lshr i64 %365, 3
  br label %367

367:                                              ; preds = %360, %355
  %368 = phi i64 [ %359, %355 ], [ %366, %360 ]
  %369 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 1
  store i64 %368, i64* %369, align 8, !tbaa !124
  br label %370

370:                                              ; preds = %367, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_filter_row(%struct.png_struct_def* noalias nocapture noundef %0, %struct.png_row_info_struct* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = add i32 %4, -1
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 84, i64 0
  %10 = load void (%struct.png_row_info_struct*, i8*, i8*)*, void (%struct.png_row_info_struct*, i8*, i8*)** %9, align 8, !tbaa !125
  %11 = icmp eq void (%struct.png_row_info_struct*, i8*, i8*)* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 50
  %14 = load i8, i8* %13, align 2, !tbaa !42, !alias.scope !126
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, 7
  store void (%struct.png_row_info_struct*, i8*, i8*)* @png_read_filter_row_sub, void (%struct.png_row_info_struct*, i8*, i8*)** %9, align 8, !tbaa !125, !alias.scope !126
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 84, i64 1
  store void (%struct.png_row_info_struct*, i8*, i8*)* @png_read_filter_row_up, void (%struct.png_row_info_struct*, i8*, i8*)** %17, align 8, !tbaa !125, !alias.scope !126
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 84, i64 2
  store void (%struct.png_row_info_struct*, i8*, i8*)* @png_read_filter_row_avg, void (%struct.png_row_info_struct*, i8*, i8*)** %18, align 8, !tbaa !125, !alias.scope !126
  %19 = and i32 %16, 504
  %20 = icmp eq i32 %19, 8
  %21 = select i1 %20, void (%struct.png_row_info_struct*, i8*, i8*)* @png_read_filter_row_paeth_1byte_pixel, void (%struct.png_row_info_struct*, i8*, i8*)* @png_read_filter_row_paeth_multibyte_pixel
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 84, i64 3
  store void (%struct.png_row_info_struct*, i8*, i8*)* %21, void (%struct.png_row_info_struct*, i8*, i8*)** %22, align 8, !alias.scope !126
  br label %23

23:                                               ; preds = %12, %8
  %24 = zext i32 %6 to i64
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 84, i64 %24
  %26 = load void (%struct.png_row_info_struct*, i8*, i8*)*, void (%struct.png_row_info_struct*, i8*, i8*)** %25, align 8, !tbaa !125
  tail call void %26(%struct.png_row_info_struct* noundef %1, i8* noundef %2, i8* noundef %3) #12
  br label %27

27:                                               ; preds = %23, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_IDAT_data(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 3
  store i8* %1, i8** %6, align 8, !tbaa !129
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 4
  store i32 0, i32* %7, align 8, !tbaa !130
  %8 = icmp eq i8* %1, null
  %9 = select i1 %8, i64 0, i64 %2
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 1
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 36
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 81
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 79
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 80
  %17 = bitcast i8** %15 to i8*
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 0
  br label %19

19:                                               ; preds = %91, %3
  %20 = phi i64 [ %9, %3 ], [ %72, %91 ]
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %10) #12
  %21 = load i32, i32* %11, align 8, !tbaa !131
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load i32, i32* %12, align 8, !tbaa !132
  br label %25

25:                                               ; preds = %23, %28
  %26 = phi i32 [ %24, %23 ], [ %30, %28 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef 0)
  %30 = call i32 @png_read_chunk_header(%struct.png_struct_def* noundef nonnull %0)
  store i32 %30, i32* %12, align 8, !tbaa !132
  %31 = load i32, i32* %13, align 8, !tbaa !21
  %32 = icmp eq i32 %31, 1229209940
  br i1 %32, label %25, label %33, !llvm.loop !133

33:                                               ; preds = %28
  call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0)) #11
  unreachable

34:                                               ; preds = %25
  %35 = load i32, i32* %14, align 8, !tbaa !134
  %36 = icmp ugt i32 %35, %26
  %37 = select i1 %36, i32 %26, i32 %35
  %38 = zext i32 %37 to i64
  %39 = load i8*, i8** %15, align 8, !tbaa !135, !alias.scope !136
  %40 = icmp eq i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i64, i64* %16, align 8, !tbaa !139, !alias.scope !136
  %43 = icmp ult i64 %42, %38
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false) #12, !alias.scope !136
  call void @png_free(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %39) #12
  br label %45

45:                                               ; preds = %44, %34
  %46 = call noalias i8* @png_malloc_base(%struct.png_struct_def* noundef nonnull %0, i64 noundef %38) #12
  %47 = icmp eq i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i8* %46, i8** %15, align 8, !tbaa !135, !alias.scope !136
  store i64 %38, i64* %16, align 8, !tbaa !139, !alias.scope !136
  br label %50

49:                                               ; preds = %45
  call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #11
  unreachable

50:                                               ; preds = %41, %48
  %51 = phi i8* [ %46, %48 ], [ %39, %41 ]
  call void @png_read_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %51, i64 noundef %38) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %51, i64 noundef %38) #12
  %52 = load i32, i32* %12, align 8, !tbaa !132
  %53 = sub i32 %52, %37
  store i32 %53, i32* %12, align 8, !tbaa !132
  store i8* %51, i8** %18, align 8, !tbaa !140
  store i32 %37, i32* %11, align 8, !tbaa !131
  br label %54

54:                                               ; preds = %50, %19
  br i1 %8, label %63, label %55

55:                                               ; preds = %54
  %56 = icmp ult i64 %20, 4294967295
  %57 = select i1 %56, i64 %20, i64 4294967295
  %58 = trunc i64 %57 to i32
  %59 = sub i64 %20, %57
  store i32 %58, i32* %7, align 8, !tbaa !130
  %60 = call i32 @inflate(%struct.z_stream_s* noundef nonnull %5, i32 noundef 0) #12
  %61 = load i32, i32* %7, align 8, !tbaa !130
  %62 = zext i32 %61 to i64
  br label %68

63:                                               ; preds = %54
  store i8* %10, i8** %6, align 8, !tbaa !129
  store i32 1024, i32* %7, align 8, !tbaa !130
  %64 = call i32 @inflate(%struct.z_stream_s* noundef nonnull %5, i32 noundef 0) #12
  %65 = load i32, i32* %7, align 8, !tbaa !130
  %66 = zext i32 %65 to i64
  %67 = sub nsw i64 1024, %66
  br label %68

68:                                               ; preds = %63, %55
  %69 = phi i32 [ %60, %55 ], [ %64, %63 ]
  %70 = phi i64 [ %59, %55 ], [ %20, %63 ]
  %71 = phi i64 [ %62, %55 ], [ %67, %63 ]
  %72 = add i64 %71, %70
  store i32 0, i32* %7, align 8, !tbaa !130
  switch i32 %69, label %86 [
    i32 1, label %73
    i32 0, label %91
  ]

73:                                               ; preds = %68
  store i8* null, i8** %6, align 8, !tbaa !129
  %74 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %75 = load i32, i32* %74, align 8, !tbaa !17
  %76 = or i32 %75, 8
  store i32 %76, i32* %74, align 8, !tbaa !17
  %77 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %78 = load i32, i32* %77, align 4, !tbaa !27
  %79 = or i32 %78, 8
  store i32 %79, i32* %77, align 4, !tbaa !27
  %80 = load i32, i32* %11, align 8, !tbaa !131
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* %12, align 8, !tbaa !132
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %82, %73
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0)) #12
  br label %93

86:                                               ; preds = %68
  call void @png_zstream_error(%struct.png_struct_def* noundef nonnull %0, i32 noundef %69) #12
  %87 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 6
  %88 = load i8*, i8** %87, align 8, !tbaa !141
  br i1 %8, label %90, label %89

89:                                               ; preds = %86
  call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef %88) #11
  unreachable

90:                                               ; preds = %86
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef %88) #12
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %10) #12
  br label %98

91:                                               ; preds = %68
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %10) #12
  %92 = icmp eq i64 %72, 0
  br i1 %92, label %98, label %19

93:                                               ; preds = %85, %82
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %10) #12
  %94 = icmp eq i64 %72, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %93
  br i1 %8, label %97, label %96

96:                                               ; preds = %95
  call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0)) #11
  unreachable

97:                                               ; preds = %95
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0)) #12
  br label %98

98:                                               ; preds = %91, %90, %97, %93
  ret void
}

declare dso_local i32 @inflate(%struct.z_stream_s* noundef, i32 noundef) local_unnamed_addr #4

declare dso_local void @png_zstream_error(%struct.png_struct_def* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_read_finish_IDAT(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %3 = load i32, i32* %2, align 4, !tbaa !27
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  tail call void @png_read_IDAT_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef null, i64 noundef 0)
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 3
  store i8* null, i8** %7, align 8, !tbaa !129
  %8 = load i32, i32* %2, align 4, !tbaa !27
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %13 = load i32, i32* %12, align 8, !tbaa !17
  %14 = or i32 %13, 8
  store i32 %14, i32* %12, align 8, !tbaa !17
  %15 = or i32 %8, 8
  store i32 %15, i32* %2, align 4, !tbaa !27
  br label %16

16:                                               ; preds = %6, %11, %1
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 9
  %18 = load i32, i32* %17, align 4, !tbaa !142
  %19 = icmp eq i32 %18, 1229209940
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 36
  %22 = bitcast i32* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %23 = load i32, i32* %21, align 8, !tbaa !132
  %24 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %23)
  br label %25

25:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_finish_row(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 29
  %3 = load i32, i32* %2, align 4, !tbaa !143
  %4 = add i32 %3, 1
  store i32 %4, i32* %2, align 4, !tbaa !143
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 25
  %6 = load i32, i32* %5, align 4, !tbaa !144
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %85, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 44
  %10 = load i8, i8* %9, align 4, !tbaa !38
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %60, label %12

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4, !tbaa !143
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %14 = load i8*, i8** %13, align 8, !tbaa !145
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 27
  %16 = load i64, i64* %15, align 8, !tbaa !43
  %17 = add i64 %16, 1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 %17, i1 false)
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 45
  %19 = load i8, i8* %18, align 1, !tbaa !80
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 28
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  br label %24

24:                                               ; preds = %44, %12
  %25 = phi i8 [ %26, %44 ], [ %19, %12 ]
  %26 = add i8 %25, 1
  %27 = icmp ugt i8 %26, 6
  br i1 %27, label %59, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %20, align 4, !tbaa !35
  %30 = zext i8 %26 to i64
  %31 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_start_row.png_pass_inc, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1, !tbaa !3
  %33 = zext i8 %32 to i32
  %34 = add i32 %29, %33
  %35 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_start_row.png_pass_start, i64 0, i64 %30
  %36 = load i8, i8* %35, align 1, !tbaa !3
  %37 = zext i8 %36 to i32
  %38 = xor i32 %37, -1
  %39 = add i32 %34, %38
  %40 = udiv i32 %39, %33
  store i32 %40, i32* %21, align 8, !tbaa !146
  %41 = load i32, i32* %22, align 8, !tbaa !82
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %28
  %45 = load i32, i32* %23, align 8, !tbaa !36
  %46 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_finish_row.png_pass_yinc, i64 0, i64 %30
  %47 = load i8, i8* %46, align 1, !tbaa !3
  %48 = zext i8 %47 to i32
  %49 = add i32 %45, %48
  %50 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_finish_row.png_pass_ystart, i64 0, i64 %30
  %51 = load i8, i8* %50, align 1, !tbaa !3
  %52 = zext i8 %51 to i32
  %53 = xor i32 %52, -1
  %54 = add i32 %49, %53
  %55 = udiv i32 %54, %48
  store i32 %55, i32* %5, align 4, !tbaa !144
  %56 = icmp ult i32 %54, %48
  %57 = icmp ult i32 %39, %33
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %24, label %84, !llvm.loop !147

59:                                               ; preds = %24
  store i8 %26, i8* %18, align 1, !tbaa !80
  br label %60

60:                                               ; preds = %59, %8
  %61 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %62 = load i32, i32* %61, align 4, !tbaa !27, !alias.scope !148
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  tail call void @png_read_IDAT_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef null, i64 noundef 0) #12
  %66 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 3
  store i8* null, i8** %66, align 8, !tbaa !129, !alias.scope !148
  %67 = load i32, i32* %61, align 4, !tbaa !27, !alias.scope !148
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %72 = load i32, i32* %71, align 8, !tbaa !17, !alias.scope !148
  %73 = or i32 %72, 8
  store i32 %73, i32* %71, align 8, !tbaa !17, !alias.scope !148
  %74 = or i32 %67, 8
  store i32 %74, i32* %61, align 4, !tbaa !27, !alias.scope !148
  br label %75

75:                                               ; preds = %70, %65, %60
  %76 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 9
  %77 = load i32, i32* %76, align 4, !tbaa !142, !alias.scope !148
  %78 = icmp eq i32 %77, 1229209940
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 36
  %81 = bitcast i32* %76 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %81, i8 0, i64 16, i1 false) #12, !alias.scope !148
  %82 = load i32, i32* %80, align 8, !tbaa !132, !alias.scope !148
  %83 = tail call i32 @png_crc_finish(%struct.png_struct_def* noundef nonnull %0, i32 noundef %82) #12
  br label %85

84:                                               ; preds = %28, %44
  store i8 %26, i8* %18, align 1, !tbaa !80
  br label %85

85:                                               ; preds = %84, %79, %75, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @png_read_start_row(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #0 {
  %2 = alloca [64 x i8], align 16
  tail call void @png_init_read_transformations(%struct.png_struct_def* noundef %0) #12
  %3 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 44
  %4 = load i8, i8* %3, align 4, !tbaa !38
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %8 = load i32, i32* %7, align 8, !tbaa !82
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  %12 = load i32, i32* %11, align 8, !tbaa !36
  %13 = add i32 %12, 7
  %14 = lshr i32 %13, 3
  %15 = select i1 %10, i32 %14, i32 %12
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 25
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %18 = load i32, i32* %17, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 45
  %20 = load i8, i8* %19, align 1, !tbaa !80
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_start_row.png_pass_inc, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !3
  %24 = zext i8 %23 to i32
  %25 = add i32 %18, %24
  %26 = getelementptr inbounds [7 x i8], [7 x i8]* @png_read_start_row.png_pass_start, i64 0, i64 %21
  %27 = load i8, i8* %26, align 1, !tbaa !3
  %28 = zext i8 %27 to i32
  %29 = xor i32 %28, -1
  %30 = add i32 %25, %29
  %31 = udiv i32 %30, %24
  br label %38

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  %34 = load i32, i32* %33, align 8, !tbaa !36
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 25
  store i32 %34, i32* %35, align 4, !tbaa !144
  %36 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %37 = load i32, i32* %36, align 4, !tbaa !35
  br label %38

38:                                               ; preds = %32, %6
  %39 = phi i32 [ %37, %32 ], [ %31, %6 ]
  %40 = phi i32 [ %37, %32 ], [ %18, %6 ]
  %41 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 28
  store i32 %39, i32* %41, align 8, !tbaa !146
  %42 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 50
  %43 = load i8, i8* %42, align 2, !tbaa !42
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 54
  store i8 %43, i8* %45, align 2, !tbaa !151
  %46 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 55
  store i8 0, i8* %46, align 1, !tbaa !78
  %47 = add i32 %40, 7
  %48 = and i32 %47, -8
  %49 = zext i32 %48 to i64
  %50 = icmp ugt i8 %43, 7
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = lshr i8 %43, 3
  %53 = zext i8 %52 to i64
  %54 = mul nuw nsw i64 %49, %53
  br label %58

55:                                               ; preds = %38
  %56 = mul nuw nsw i64 %49, %44
  %57 = lshr exact i64 %56, 3
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i64 [ %54, %51 ], [ %57, %55 ]
  %60 = add nuw nsw i64 %44, 7
  %61 = lshr i64 %60, 3
  %62 = add nuw nsw i64 %61, 49
  %63 = add nuw nsw i64 %62, %59
  %64 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 78
  %65 = load i64, i64* %64, align 8, !tbaa !152
  %66 = icmp ugt i64 %63, %65
  br i1 %66, label %67, label %97

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 71
  %69 = load i8*, i8** %68, align 8, !tbaa !153
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %0, i8* noundef %69) #12
  %70 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 83
  %71 = load i8*, i8** %70, align 8, !tbaa !154
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %0, i8* noundef %71) #12
  %72 = load i8, i8* %3, align 4, !tbaa !38
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = tail call noalias i8* @png_calloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef %63) #12
  br label %78

76:                                               ; preds = %67
  %77 = tail call noalias i8* @png_malloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef %63) #12
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i8* [ %77, %76 ], [ %75, %74 ]
  store i8* %79, i8** %68, align 8, !tbaa !153
  %80 = tail call noalias i8* @png_malloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef %63) #12
  store i8* %80, i8** %70, align 8, !tbaa !154
  %81 = load i8*, i8** %68, align 8, !tbaa !153
  %82 = getelementptr inbounds i8, i8* %81, i64 32
  %83 = ptrtoint i8* %82 to i64
  %84 = and i64 %83, 15
  %85 = sub nsw i64 0, %84
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = getelementptr inbounds i8, i8* %80, i64 32
  %88 = ptrtoint i8* %87 to i64
  %89 = and i64 %88, 15
  %90 = sub nsw i64 0, %89
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = insertelement <2 x i8*> poison, i8* %91, i64 0
  %93 = insertelement <2 x i8*> %92, i8* %86, i64 1
  %94 = getelementptr i8, <2 x i8*> %93, <2 x i64> <i64 -1, i64 -1>
  %95 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %96 = bitcast i8** %95 to <2 x i8*>*
  store <2 x i8*> %94, <2 x i8*>* %96, align 8, !tbaa !125
  store i64 %63, i64* %64, align 8, !tbaa !152
  br label %97

97:                                               ; preds = %78, %58
  %98 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 27
  %99 = load i64, i64* %98, align 8, !tbaa !43
  %100 = icmp eq i64 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0)) #11
  unreachable

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %104 = load i8*, i8** %103, align 8, !tbaa !145
  %105 = add nuw i64 %99, 1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %104, i8 0, i64 %105, i1 false)
  %106 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 79
  %107 = load i8*, i8** %106, align 8, !tbaa !135
  %108 = icmp eq i8* %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %102
  %110 = bitcast i8** %106 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %107) #12
  br label %111

111:                                              ; preds = %109, %102
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %112 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 9
  %113 = load i32, i32* %112, align 4, !tbaa !142, !alias.scope !155
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %116) #12, !noalias !155
  %117 = lshr i32 %113, 24
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %116, align 16, !tbaa !3, !noalias !155
  %119 = lshr i32 %113, 16
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 1
  store i8 %120, i8* %121, align 1, !tbaa !3, !noalias !155
  %122 = lshr i32 %113, 8
  %123 = trunc i32 %122 to i8
  %124 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 2
  store i8 %123, i8* %124, align 2, !tbaa !3, !noalias !155
  %125 = trunc i32 %113 to i8
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 3
  store i8 %125, i8* %126, align 1, !tbaa !3, !noalias !155
  %127 = call i64 @png_safecat(i8* noundef nonnull %116, i64 noundef 64, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #12, !noalias !155
  call void @png_chunk_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %116) #12
  store i32 0, i32* %112, align 4, !tbaa !142, !alias.scope !155
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %116) #12, !noalias !155
  br label %128

128:                                              ; preds = %115, %111
  %129 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10
  %130 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %129, i64 0, i32 0
  store i8* null, i8** %130, align 8, !tbaa !140, !alias.scope !155
  %131 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 1
  store i32 0, i32* %131, align 8, !tbaa !131, !alias.scope !155
  %132 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 3
  store i8* null, i8** %132, align 8, !tbaa !129, !alias.scope !155
  %133 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 4
  store i32 0, i32* %133, align 8, !tbaa !130, !alias.scope !155
  %134 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %135 = load i32, i32* %134, align 4, !tbaa !27, !alias.scope !155
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %128
  %139 = call i32 @inflateInit_(%struct.z_stream_s* noundef nonnull %129, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 noundef 112) #12
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32, i32* %134, align 4, !tbaa !27, !alias.scope !155
  %143 = or i32 %142, 2
  br label %153

144:                                              ; preds = %128
  %145 = call i32 @inflateReset(%struct.z_stream_s* noundef nonnull %129) #12
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* %134, align 4, !tbaa !27
  br label %153

149:                                              ; preds = %144, %138
  %150 = phi i32 [ %145, %144 ], [ %139, %138 ]
  call void @png_zstream_error(%struct.png_struct_def* noundef nonnull %0, i32 noundef %150) #12
  %151 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 6
  %152 = load i8*, i8** %151, align 8, !tbaa !141
  call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef %152) #11
  unreachable

153:                                              ; preds = %147, %141
  %154 = phi i32 [ %148, %147 ], [ %143, %141 ]
  store i32 1229209940, i32* %112, align 4, !tbaa !142, !alias.scope !155
  %155 = or i32 %154, 64
  store i32 %155, i32* %134, align 4, !tbaa !27
  ret void
}

declare dso_local void @png_init_read_transformations(%struct.png_struct_def* noundef) local_unnamed_addr #4

declare dso_local noalias i8* @png_calloc(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @png_read_filter_row_sub(%struct.png_row_info_struct* nocapture noundef readonly %0, i8* nocapture noundef %1, i8* nocapture noundef readnone %2) #8 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 5
  %7 = load i8, i8* %6, align 1, !tbaa !114
  %8 = zext i8 %7 to i64
  %9 = add nuw nsw i64 %8, 7
  %10 = lshr i64 %9, 3
  %11 = icmp ugt i64 %5, %10
  br i1 %11, label %12, label %170

12:                                               ; preds = %3
  %13 = getelementptr i8, i8* %1, i64 %10
  %14 = sub nsw i64 0, %10
  %15 = sub i64 %5, %10
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %121, label %17

17:                                               ; preds = %12
  %18 = getelementptr i8, i8* %1, i64 %5
  %19 = sub i64 %5, %10
  %20 = getelementptr i8, i8* %1, i64 %19
  %21 = icmp ult i8* %13, %20
  %22 = icmp ugt i8* %18, %1
  %23 = and i1 %21, %22
  br i1 %23, label %121, label %24

24:                                               ; preds = %17
  %25 = icmp ult i64 %15, 32
  br i1 %25, label %101, label %26

26:                                               ; preds = %24
  %27 = and i64 %15, -32
  %28 = add i64 %27, -32
  %29 = lshr exact i64 %28, 5
  %30 = add nuw nsw i64 %29, 1
  %31 = and i64 %30, 1
  %32 = icmp eq i64 %28, 0
  br i1 %32, label %74, label %33

33:                                               ; preds = %26
  %34 = and i64 %30, 1152921504606846974
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %71, %35 ]
  %37 = phi i64 [ 0, %33 ], [ %72, %35 ]
  %38 = getelementptr i8, i8* %13, i64 %36
  %39 = bitcast i8* %38 to <16 x i8>*
  %40 = load <16 x i8>, <16 x i8>* %39, align 1, !tbaa !3, !alias.scope !158, !noalias !161
  %41 = getelementptr i8, i8* %38, i64 16
  %42 = bitcast i8* %41 to <16 x i8>*
  %43 = load <16 x i8>, <16 x i8>* %42, align 1, !tbaa !3, !alias.scope !158, !noalias !161
  %44 = getelementptr inbounds i8, i8* %38, i64 %14
  %45 = bitcast i8* %44 to <16 x i8>*
  %46 = load <16 x i8>, <16 x i8>* %45, align 1, !tbaa !3, !alias.scope !161
  %47 = getelementptr inbounds i8, i8* %44, i64 16
  %48 = bitcast i8* %47 to <16 x i8>*
  %49 = load <16 x i8>, <16 x i8>* %48, align 1, !tbaa !3, !alias.scope !161
  %50 = add <16 x i8> %46, %40
  %51 = add <16 x i8> %49, %43
  %52 = bitcast i8* %38 to <16 x i8>*
  store <16 x i8> %50, <16 x i8>* %52, align 1, !tbaa !3, !alias.scope !158, !noalias !161
  %53 = bitcast i8* %41 to <16 x i8>*
  store <16 x i8> %51, <16 x i8>* %53, align 1, !tbaa !3, !alias.scope !158, !noalias !161
  %54 = or i64 %36, 32
  %55 = getelementptr i8, i8* %13, i64 %54
  %56 = bitcast i8* %55 to <16 x i8>*
  %57 = load <16 x i8>, <16 x i8>* %56, align 1, !tbaa !3, !alias.scope !158, !noalias !161
  %58 = getelementptr i8, i8* %55, i64 16
  %59 = bitcast i8* %58 to <16 x i8>*
  %60 = load <16 x i8>, <16 x i8>* %59, align 1, !tbaa !3, !alias.scope !158, !noalias !161
  %61 = getelementptr inbounds i8, i8* %55, i64 %14
  %62 = bitcast i8* %61 to <16 x i8>*
  %63 = load <16 x i8>, <16 x i8>* %62, align 1, !tbaa !3, !alias.scope !161
  %64 = getelementptr inbounds i8, i8* %61, i64 16
  %65 = bitcast i8* %64 to <16 x i8>*
  %66 = load <16 x i8>, <16 x i8>* %65, align 1, !tbaa !3, !alias.scope !161
  %67 = add <16 x i8> %63, %57
  %68 = add <16 x i8> %66, %60
  %69 = bitcast i8* %55 to <16 x i8>*
  store <16 x i8> %67, <16 x i8>* %69, align 1, !tbaa !3, !alias.scope !158, !noalias !161
  %70 = bitcast i8* %58 to <16 x i8>*
  store <16 x i8> %68, <16 x i8>* %70, align 1, !tbaa !3, !alias.scope !158, !noalias !161
  %71 = add nuw i64 %36, 64
  %72 = add i64 %37, 2
  %73 = icmp eq i64 %72, %34
  br i1 %73, label %74, label %35, !llvm.loop !163

74:                                               ; preds = %35, %26
  %75 = phi i64 [ 0, %26 ], [ %71, %35 ]
  %76 = icmp eq i64 %31, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %74
  %78 = getelementptr i8, i8* %13, i64 %75
  %79 = bitcast i8* %78 to <16 x i8>*
  %80 = load <16 x i8>, <16 x i8>* %79, align 1, !tbaa !3, !alias.scope !158, !noalias !161
  %81 = getelementptr i8, i8* %78, i64 16
  %82 = bitcast i8* %81 to <16 x i8>*
  %83 = load <16 x i8>, <16 x i8>* %82, align 1, !tbaa !3, !alias.scope !158, !noalias !161
  %84 = getelementptr inbounds i8, i8* %78, i64 %14
  %85 = bitcast i8* %84 to <16 x i8>*
  %86 = load <16 x i8>, <16 x i8>* %85, align 1, !tbaa !3, !alias.scope !161
  %87 = getelementptr inbounds i8, i8* %84, i64 16
  %88 = bitcast i8* %87 to <16 x i8>*
  %89 = load <16 x i8>, <16 x i8>* %88, align 1, !tbaa !3, !alias.scope !161
  %90 = add <16 x i8> %86, %80
  %91 = add <16 x i8> %89, %83
  %92 = bitcast i8* %78 to <16 x i8>*
  store <16 x i8> %90, <16 x i8>* %92, align 1, !tbaa !3, !alias.scope !158, !noalias !161
  %93 = bitcast i8* %81 to <16 x i8>*
  store <16 x i8> %91, <16 x i8>* %93, align 1, !tbaa !3, !alias.scope !158, !noalias !161
  br label %94

94:                                               ; preds = %74, %77
  %95 = icmp eq i64 %15, %27
  br i1 %95, label %170, label %96

96:                                               ; preds = %94
  %97 = add i64 %10, %27
  %98 = getelementptr i8, i8* %13, i64 %27
  %99 = and i64 %15, 24
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %24, %96
  %102 = phi i64 [ %27, %96 ], [ 0, %24 ]
  %103 = sub i64 %5, %10
  %104 = and i64 %103, -8
  %105 = getelementptr i8, i8* %13, i64 %104
  %106 = add i64 %10, %104
  br label %107

107:                                              ; preds = %107, %101
  %108 = phi i64 [ %102, %101 ], [ %117, %107 ]
  %109 = getelementptr i8, i8* %13, i64 %108
  %110 = bitcast i8* %109 to <8 x i8>*
  %111 = load <8 x i8>, <8 x i8>* %110, align 1, !tbaa !3
  %112 = getelementptr inbounds i8, i8* %109, i64 %14
  %113 = bitcast i8* %112 to <8 x i8>*
  %114 = load <8 x i8>, <8 x i8>* %113, align 1, !tbaa !3
  %115 = add <8 x i8> %114, %111
  %116 = bitcast i8* %109 to <8 x i8>*
  store <8 x i8> %115, <8 x i8>* %116, align 1, !tbaa !3
  %117 = add nuw i64 %108, 8
  %118 = icmp eq i64 %117, %104
  br i1 %118, label %119, label %107, !llvm.loop !164

119:                                              ; preds = %107
  %120 = icmp eq i64 %103, %104
  br i1 %120, label %170, label %121

121:                                              ; preds = %17, %12, %96, %119
  %122 = phi i8* [ %13, %12 ], [ %13, %17 ], [ %98, %96 ], [ %105, %119 ]
  %123 = phi i64 [ %10, %12 ], [ %10, %17 ], [ %97, %96 ], [ %106, %119 ]
  %124 = sub i64 %5, %123
  %125 = xor i64 %123, -1
  %126 = add i64 %5, %125
  %127 = and i64 %124, 3
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %121, %129
  %130 = phi i8* [ %137, %129 ], [ %122, %121 ]
  %131 = phi i64 [ %138, %129 ], [ %123, %121 ]
  %132 = phi i64 [ %139, %129 ], [ 0, %121 ]
  %133 = load i8, i8* %130, align 1, !tbaa !3
  %134 = getelementptr inbounds i8, i8* %130, i64 %14
  %135 = load i8, i8* %134, align 1, !tbaa !3
  %136 = add i8 %135, %133
  store i8 %136, i8* %130, align 1, !tbaa !3
  %137 = getelementptr inbounds i8, i8* %130, i64 1
  %138 = add nuw i64 %131, 1
  %139 = add i64 %132, 1
  %140 = icmp eq i64 %139, %127
  br i1 %140, label %141, label %129, !llvm.loop !165

141:                                              ; preds = %129, %121
  %142 = phi i8* [ %122, %121 ], [ %137, %129 ]
  %143 = phi i64 [ %123, %121 ], [ %138, %129 ]
  %144 = icmp ult i64 %126, 3
  br i1 %144, label %170, label %145

145:                                              ; preds = %141, %145
  %146 = phi i8* [ %167, %145 ], [ %142, %141 ]
  %147 = phi i64 [ %168, %145 ], [ %143, %141 ]
  %148 = load i8, i8* %146, align 1, !tbaa !3
  %149 = getelementptr inbounds i8, i8* %146, i64 %14
  %150 = load i8, i8* %149, align 1, !tbaa !3
  %151 = add i8 %150, %148
  store i8 %151, i8* %146, align 1, !tbaa !3
  %152 = getelementptr inbounds i8, i8* %146, i64 1
  %153 = load i8, i8* %152, align 1, !tbaa !3
  %154 = getelementptr inbounds i8, i8* %152, i64 %14
  %155 = load i8, i8* %154, align 1, !tbaa !3
  %156 = add i8 %155, %153
  store i8 %156, i8* %152, align 1, !tbaa !3
  %157 = getelementptr inbounds i8, i8* %146, i64 2
  %158 = load i8, i8* %157, align 1, !tbaa !3
  %159 = getelementptr inbounds i8, i8* %157, i64 %14
  %160 = load i8, i8* %159, align 1, !tbaa !3
  %161 = add i8 %160, %158
  store i8 %161, i8* %157, align 1, !tbaa !3
  %162 = getelementptr inbounds i8, i8* %146, i64 3
  %163 = load i8, i8* %162, align 1, !tbaa !3
  %164 = getelementptr inbounds i8, i8* %162, i64 %14
  %165 = load i8, i8* %164, align 1, !tbaa !3
  %166 = add i8 %165, %163
  store i8 %166, i8* %162, align 1, !tbaa !3
  %167 = getelementptr inbounds i8, i8* %146, i64 4
  %168 = add nuw i64 %147, 4
  %169 = icmp eq i64 %168, %5
  br i1 %169, label %170, label %145, !llvm.loop !166

170:                                              ; preds = %141, %145, %94, %119, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @png_read_filter_row_up(%struct.png_row_info_struct* nocapture noundef readonly %0, i8* nocapture noundef %1, i8* nocapture noundef readonly %2) #8 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !124
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %163, label %7

7:                                                ; preds = %3
  %8 = icmp ult i64 %5, 8
  br i1 %8, label %111, label %9

9:                                                ; preds = %7
  %10 = getelementptr i8, i8* %1, i64 %5
  %11 = getelementptr i8, i8* %2, i64 %5
  %12 = icmp ugt i8* %11, %1
  %13 = icmp ugt i8* %10, %2
  %14 = and i1 %12, %13
  br i1 %14, label %111, label %15

15:                                               ; preds = %9
  %16 = icmp ult i64 %5, 32
  br i1 %16, label %92, label %17

17:                                               ; preds = %15
  %18 = and i64 %5, -32
  %19 = add i64 %18, -32
  %20 = lshr exact i64 %19, 5
  %21 = add nuw nsw i64 %20, 1
  %22 = and i64 %21, 1
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %65, label %24

24:                                               ; preds = %17
  %25 = and i64 %21, 1152921504606846974
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i64 [ 0, %24 ], [ %62, %26 ]
  %28 = phi i64 [ 0, %24 ], [ %63, %26 ]
  %29 = getelementptr i8, i8* %2, i64 %27
  %30 = getelementptr i8, i8* %1, i64 %27
  %31 = bitcast i8* %30 to <16 x i8>*
  %32 = load <16 x i8>, <16 x i8>* %31, align 1, !tbaa !3, !alias.scope !167, !noalias !170
  %33 = getelementptr i8, i8* %30, i64 16
  %34 = bitcast i8* %33 to <16 x i8>*
  %35 = load <16 x i8>, <16 x i8>* %34, align 1, !tbaa !3, !alias.scope !167, !noalias !170
  %36 = bitcast i8* %29 to <16 x i8>*
  %37 = load <16 x i8>, <16 x i8>* %36, align 1, !tbaa !3, !alias.scope !170
  %38 = getelementptr i8, i8* %29, i64 16
  %39 = bitcast i8* %38 to <16 x i8>*
  %40 = load <16 x i8>, <16 x i8>* %39, align 1, !tbaa !3, !alias.scope !170
  %41 = add <16 x i8> %37, %32
  %42 = add <16 x i8> %40, %35
  %43 = bitcast i8* %30 to <16 x i8>*
  store <16 x i8> %41, <16 x i8>* %43, align 1, !tbaa !3, !alias.scope !167, !noalias !170
  %44 = bitcast i8* %33 to <16 x i8>*
  store <16 x i8> %42, <16 x i8>* %44, align 1, !tbaa !3, !alias.scope !167, !noalias !170
  %45 = or i64 %27, 32
  %46 = getelementptr i8, i8* %2, i64 %45
  %47 = getelementptr i8, i8* %1, i64 %45
  %48 = bitcast i8* %47 to <16 x i8>*
  %49 = load <16 x i8>, <16 x i8>* %48, align 1, !tbaa !3, !alias.scope !167, !noalias !170
  %50 = getelementptr i8, i8* %47, i64 16
  %51 = bitcast i8* %50 to <16 x i8>*
  %52 = load <16 x i8>, <16 x i8>* %51, align 1, !tbaa !3, !alias.scope !167, !noalias !170
  %53 = bitcast i8* %46 to <16 x i8>*
  %54 = load <16 x i8>, <16 x i8>* %53, align 1, !tbaa !3, !alias.scope !170
  %55 = getelementptr i8, i8* %46, i64 16
  %56 = bitcast i8* %55 to <16 x i8>*
  %57 = load <16 x i8>, <16 x i8>* %56, align 1, !tbaa !3, !alias.scope !170
  %58 = add <16 x i8> %54, %49
  %59 = add <16 x i8> %57, %52
  %60 = bitcast i8* %47 to <16 x i8>*
  store <16 x i8> %58, <16 x i8>* %60, align 1, !tbaa !3, !alias.scope !167, !noalias !170
  %61 = bitcast i8* %50 to <16 x i8>*
  store <16 x i8> %59, <16 x i8>* %61, align 1, !tbaa !3, !alias.scope !167, !noalias !170
  %62 = add nuw i64 %27, 64
  %63 = add i64 %28, 2
  %64 = icmp eq i64 %63, %25
  br i1 %64, label %65, label %26, !llvm.loop !172

65:                                               ; preds = %26, %17
  %66 = phi i64 [ 0, %17 ], [ %62, %26 ]
  %67 = icmp eq i64 %22, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %65
  %69 = getelementptr i8, i8* %2, i64 %66
  %70 = getelementptr i8, i8* %1, i64 %66
  %71 = bitcast i8* %70 to <16 x i8>*
  %72 = load <16 x i8>, <16 x i8>* %71, align 1, !tbaa !3, !alias.scope !167, !noalias !170
  %73 = getelementptr i8, i8* %70, i64 16
  %74 = bitcast i8* %73 to <16 x i8>*
  %75 = load <16 x i8>, <16 x i8>* %74, align 1, !tbaa !3, !alias.scope !167, !noalias !170
  %76 = bitcast i8* %69 to <16 x i8>*
  %77 = load <16 x i8>, <16 x i8>* %76, align 1, !tbaa !3, !alias.scope !170
  %78 = getelementptr i8, i8* %69, i64 16
  %79 = bitcast i8* %78 to <16 x i8>*
  %80 = load <16 x i8>, <16 x i8>* %79, align 1, !tbaa !3, !alias.scope !170
  %81 = add <16 x i8> %77, %72
  %82 = add <16 x i8> %80, %75
  %83 = bitcast i8* %70 to <16 x i8>*
  store <16 x i8> %81, <16 x i8>* %83, align 1, !tbaa !3, !alias.scope !167, !noalias !170
  %84 = bitcast i8* %73 to <16 x i8>*
  store <16 x i8> %82, <16 x i8>* %84, align 1, !tbaa !3, !alias.scope !167, !noalias !170
  br label %85

85:                                               ; preds = %65, %68
  %86 = icmp eq i64 %5, %18
  br i1 %86, label %163, label %87

87:                                               ; preds = %85
  %88 = getelementptr i8, i8* %1, i64 %18
  %89 = getelementptr i8, i8* %2, i64 %18
  %90 = and i64 %5, 24
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %15, %87
  %93 = phi i64 [ %18, %87 ], [ 0, %15 ]
  %94 = and i64 %5, -8
  %95 = getelementptr i8, i8* %2, i64 %94
  %96 = getelementptr i8, i8* %1, i64 %94
  br label %97

97:                                               ; preds = %97, %92
  %98 = phi i64 [ %93, %92 ], [ %107, %97 ]
  %99 = getelementptr i8, i8* %2, i64 %98
  %100 = getelementptr i8, i8* %1, i64 %98
  %101 = bitcast i8* %100 to <8 x i8>*
  %102 = load <8 x i8>, <8 x i8>* %101, align 1, !tbaa !3
  %103 = bitcast i8* %99 to <8 x i8>*
  %104 = load <8 x i8>, <8 x i8>* %103, align 1, !tbaa !3
  %105 = add <8 x i8> %104, %102
  %106 = bitcast i8* %100 to <8 x i8>*
  store <8 x i8> %105, <8 x i8>* %106, align 1, !tbaa !3
  %107 = add nuw i64 %98, 8
  %108 = icmp eq i64 %107, %94
  br i1 %108, label %109, label %97, !llvm.loop !173

109:                                              ; preds = %97
  %110 = icmp eq i64 %5, %94
  br i1 %110, label %163, label %111

111:                                              ; preds = %9, %7, %87, %109
  %112 = phi i8* [ %2, %7 ], [ %2, %9 ], [ %89, %87 ], [ %95, %109 ]
  %113 = phi i8* [ %1, %7 ], [ %1, %9 ], [ %88, %87 ], [ %96, %109 ]
  %114 = phi i64 [ 0, %7 ], [ 0, %9 ], [ %18, %87 ], [ %94, %109 ]
  %115 = xor i64 %114, -1
  %116 = add i64 %5, %115
  %117 = and i64 %5, 3
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %111, %119
  %120 = phi i8* [ %125, %119 ], [ %112, %111 ]
  %121 = phi i8* [ %128, %119 ], [ %113, %111 ]
  %122 = phi i64 [ %129, %119 ], [ %114, %111 ]
  %123 = phi i64 [ %130, %119 ], [ 0, %111 ]
  %124 = load i8, i8* %121, align 1, !tbaa !3
  %125 = getelementptr inbounds i8, i8* %120, i64 1
  %126 = load i8, i8* %120, align 1, !tbaa !3
  %127 = add i8 %126, %124
  store i8 %127, i8* %121, align 1, !tbaa !3
  %128 = getelementptr inbounds i8, i8* %121, i64 1
  %129 = add nuw i64 %122, 1
  %130 = add i64 %123, 1
  %131 = icmp eq i64 %130, %117
  br i1 %131, label %132, label %119, !llvm.loop !174

132:                                              ; preds = %119, %111
  %133 = phi i8* [ %112, %111 ], [ %125, %119 ]
  %134 = phi i8* [ %113, %111 ], [ %128, %119 ]
  %135 = phi i64 [ %114, %111 ], [ %129, %119 ]
  %136 = icmp ult i64 %116, 3
  br i1 %136, label %163, label %137

137:                                              ; preds = %132, %137
  %138 = phi i8* [ %157, %137 ], [ %133, %132 ]
  %139 = phi i8* [ %160, %137 ], [ %134, %132 ]
  %140 = phi i64 [ %161, %137 ], [ %135, %132 ]
  %141 = load i8, i8* %139, align 1, !tbaa !3
  %142 = getelementptr inbounds i8, i8* %138, i64 1
  %143 = load i8, i8* %138, align 1, !tbaa !3
  %144 = add i8 %143, %141
  store i8 %144, i8* %139, align 1, !tbaa !3
  %145 = getelementptr inbounds i8, i8* %139, i64 1
  %146 = load i8, i8* %145, align 1, !tbaa !3
  %147 = getelementptr inbounds i8, i8* %138, i64 2
  %148 = load i8, i8* %142, align 1, !tbaa !3
  %149 = add i8 %148, %146
  store i8 %149, i8* %145, align 1, !tbaa !3
  %150 = getelementptr inbounds i8, i8* %139, i64 2
  %151 = load i8, i8* %150, align 1, !tbaa !3
  %152 = getelementptr inbounds i8, i8* %138, i64 3
  %153 = load i8, i8* %147, align 1, !tbaa !3
  %154 = add i8 %153, %151
  store i8 %154, i8* %150, align 1, !tbaa !3
  %155 = getelementptr inbounds i8, i8* %139, i64 3
  %156 = load i8, i8* %155, align 1, !tbaa !3
  %157 = getelementptr inbounds i8, i8* %138, i64 4
  %158 = load i8, i8* %152, align 1, !tbaa !3
  %159 = add i8 %158, %156
  store i8 %159, i8* %155, align 1, !tbaa !3
  %160 = getelementptr inbounds i8, i8* %139, i64 4
  %161 = add nuw i64 %140, 4
  %162 = icmp eq i64 %161, %5
  br i1 %162, label %163, label %137, !llvm.loop !175

163:                                              ; preds = %132, %137, %85, %109, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @png_read_filter_row_avg(%struct.png_row_info_struct* nocapture noundef readonly %0, i8* nocapture noundef %1, i8* nocapture noundef readonly %2) #8 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 5
  %5 = load i8, i8* %4, align 1, !tbaa !114
  %6 = zext i8 %5 to i64
  %7 = add nuw nsw i64 %6, 7
  %8 = lshr i64 %7, 3
  %9 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 1
  %10 = load i64, i64* %9, align 8, !tbaa !124
  %11 = sub i64 %10, %8
  %12 = icmp eq i8 %5, 0
  br i1 %12, label %127, label %13

13:                                               ; preds = %3
  %14 = call i64 @llvm.umax.i64(i64 %8, i64 1)
  %15 = icmp ult i64 %14, 16
  br i1 %15, label %98, label %16

16:                                               ; preds = %13
  %17 = getelementptr i8, i8* %1, i64 %14
  %18 = getelementptr i8, i8* %2, i64 %14
  %19 = icmp ugt i8* %18, %1
  %20 = icmp ugt i8* %17, %2
  %21 = and i1 %19, %20
  br i1 %21, label %98, label %22

22:                                               ; preds = %16
  %23 = and i64 %14, 48
  %24 = getelementptr i8, i8* %1, i64 %23
  %25 = getelementptr i8, i8* %2, i64 %23
  %26 = add nsw i64 %23, -16
  %27 = lshr exact i64 %26, 4
  %28 = add nuw nsw i64 %27, 1
  %29 = and i64 %28, 3
  %30 = icmp ult i64 %26, 48
  br i1 %30, label %78, label %31

31:                                               ; preds = %22
  %32 = and i64 %28, 2305843009213693948
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %75, %33 ]
  %35 = phi i64 [ 0, %31 ], [ %76, %33 ]
  %36 = getelementptr i8, i8* %1, i64 %34
  %37 = getelementptr i8, i8* %2, i64 %34
  %38 = bitcast i8* %36 to <16 x i8>*
  %39 = load <16 x i8>, <16 x i8>* %38, align 1, !tbaa !3, !alias.scope !176, !noalias !179
  %40 = bitcast i8* %37 to <16 x i8>*
  %41 = load <16 x i8>, <16 x i8>* %40, align 1, !tbaa !3, !alias.scope !179
  %42 = lshr <16 x i8> %41, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %43 = add <16 x i8> %42, %39
  %44 = bitcast i8* %36 to <16 x i8>*
  store <16 x i8> %43, <16 x i8>* %44, align 1, !tbaa !3, !alias.scope !176, !noalias !179
  %45 = or i64 %34, 16
  %46 = getelementptr i8, i8* %1, i64 %45
  %47 = getelementptr i8, i8* %2, i64 %45
  %48 = bitcast i8* %46 to <16 x i8>*
  %49 = load <16 x i8>, <16 x i8>* %48, align 1, !tbaa !3, !alias.scope !176, !noalias !179
  %50 = bitcast i8* %47 to <16 x i8>*
  %51 = load <16 x i8>, <16 x i8>* %50, align 1, !tbaa !3, !alias.scope !179
  %52 = lshr <16 x i8> %51, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %53 = add <16 x i8> %52, %49
  %54 = bitcast i8* %46 to <16 x i8>*
  store <16 x i8> %53, <16 x i8>* %54, align 1, !tbaa !3, !alias.scope !176, !noalias !179
  %55 = or i64 %34, 32
  %56 = getelementptr i8, i8* %1, i64 %55
  %57 = getelementptr i8, i8* %2, i64 %55
  %58 = bitcast i8* %56 to <16 x i8>*
  %59 = load <16 x i8>, <16 x i8>* %58, align 1, !tbaa !3, !alias.scope !176, !noalias !179
  %60 = bitcast i8* %57 to <16 x i8>*
  %61 = load <16 x i8>, <16 x i8>* %60, align 1, !tbaa !3, !alias.scope !179
  %62 = lshr <16 x i8> %61, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %63 = add <16 x i8> %62, %59
  %64 = bitcast i8* %56 to <16 x i8>*
  store <16 x i8> %63, <16 x i8>* %64, align 1, !tbaa !3, !alias.scope !176, !noalias !179
  %65 = or i64 %34, 48
  %66 = getelementptr i8, i8* %1, i64 %65
  %67 = getelementptr i8, i8* %2, i64 %65
  %68 = bitcast i8* %66 to <16 x i8>*
  %69 = load <16 x i8>, <16 x i8>* %68, align 1, !tbaa !3, !alias.scope !176, !noalias !179
  %70 = bitcast i8* %67 to <16 x i8>*
  %71 = load <16 x i8>, <16 x i8>* %70, align 1, !tbaa !3, !alias.scope !179
  %72 = lshr <16 x i8> %71, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %73 = add <16 x i8> %72, %69
  %74 = bitcast i8* %66 to <16 x i8>*
  store <16 x i8> %73, <16 x i8>* %74, align 1, !tbaa !3, !alias.scope !176, !noalias !179
  %75 = add nuw i64 %34, 64
  %76 = add i64 %35, 4
  %77 = icmp eq i64 %76, %32
  br i1 %77, label %78, label %33, !llvm.loop !181

78:                                               ; preds = %33, %22
  %79 = phi i64 [ 0, %22 ], [ %75, %33 ]
  %80 = icmp eq i64 %29, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %78, %81
  %82 = phi i64 [ %93, %81 ], [ %79, %78 ]
  %83 = phi i64 [ %94, %81 ], [ 0, %78 ]
  %84 = getelementptr i8, i8* %1, i64 %82
  %85 = getelementptr i8, i8* %2, i64 %82
  %86 = bitcast i8* %84 to <16 x i8>*
  %87 = load <16 x i8>, <16 x i8>* %86, align 1, !tbaa !3, !alias.scope !176, !noalias !179
  %88 = bitcast i8* %85 to <16 x i8>*
  %89 = load <16 x i8>, <16 x i8>* %88, align 1, !tbaa !3, !alias.scope !179
  %90 = lshr <16 x i8> %89, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %91 = add <16 x i8> %90, %87
  %92 = bitcast i8* %84 to <16 x i8>*
  store <16 x i8> %91, <16 x i8>* %92, align 1, !tbaa !3, !alias.scope !176, !noalias !179
  %93 = add nuw i64 %82, 16
  %94 = add i64 %83, 1
  %95 = icmp eq i64 %94, %29
  br i1 %95, label %96, label %81, !llvm.loop !182

96:                                               ; preds = %81, %78
  %97 = icmp eq i64 %14, %23
  br i1 %97, label %127, label %98

98:                                               ; preds = %16, %13, %96
  %99 = phi i64 [ 0, %16 ], [ 0, %13 ], [ %23, %96 ]
  %100 = phi i8* [ %1, %16 ], [ %1, %13 ], [ %24, %96 ]
  %101 = phi i8* [ %2, %16 ], [ %2, %13 ], [ %25, %96 ]
  %102 = xor i64 %99, -1
  %103 = add nsw i64 %14, %102
  %104 = and i64 %14, 3
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %98, %106
  %107 = phi i64 [ %117, %106 ], [ %99, %98 ]
  %108 = phi i8* [ %116, %106 ], [ %100, %98 ]
  %109 = phi i8* [ %112, %106 ], [ %101, %98 ]
  %110 = phi i64 [ %118, %106 ], [ 0, %98 ]
  %111 = load i8, i8* %108, align 1, !tbaa !3
  %112 = getelementptr inbounds i8, i8* %109, i64 1
  %113 = load i8, i8* %109, align 1, !tbaa !3
  %114 = lshr i8 %113, 1
  %115 = add i8 %114, %111
  store i8 %115, i8* %108, align 1, !tbaa !3
  %116 = getelementptr inbounds i8, i8* %108, i64 1
  %117 = add nuw nsw i64 %107, 1
  %118 = add i64 %110, 1
  %119 = icmp eq i64 %118, %104
  br i1 %119, label %120, label %106, !llvm.loop !183

120:                                              ; preds = %106, %98
  %121 = phi i8* [ undef, %98 ], [ %112, %106 ]
  %122 = phi i8* [ undef, %98 ], [ %116, %106 ]
  %123 = phi i64 [ %99, %98 ], [ %117, %106 ]
  %124 = phi i8* [ %100, %98 ], [ %116, %106 ]
  %125 = phi i8* [ %101, %98 ], [ %112, %106 ]
  %126 = icmp ult i64 %103, 3
  br i1 %126, label %127, label %250

127:                                              ; preds = %120, %250, %96, %3
  %128 = phi i8* [ %2, %3 ], [ %25, %96 ], [ %121, %120 ], [ %273, %250 ]
  %129 = phi i8* [ %1, %3 ], [ %24, %96 ], [ %122, %120 ], [ %277, %250 ]
  %130 = icmp eq i64 %11, 0
  br i1 %130, label %310, label %131

131:                                              ; preds = %127
  %132 = sub nsw i64 0, %8
  %133 = icmp ult i64 %11, 8
  br i1 %133, label %222, label %134

134:                                              ; preds = %131
  %135 = getelementptr i8, i8* %129, i64 %11
  %136 = getelementptr i8, i8* %128, i64 %11
  %137 = getelementptr i8, i8* %129, i64 %132
  %138 = mul nsw i64 %8, -2
  %139 = add i64 %138, %10
  %140 = getelementptr i8, i8* %129, i64 %139
  %141 = icmp ult i8* %129, %136
  %142 = icmp ult i8* %128, %135
  %143 = and i1 %141, %142
  %144 = icmp ult i8* %129, %140
  %145 = icmp ult i8* %137, %135
  %146 = and i1 %144, %145
  %147 = or i1 %143, %146
  br i1 %147, label %222, label %148

148:                                              ; preds = %134
  %149 = icmp ult i64 %11, 32
  br i1 %149, label %195, label %150

150:                                              ; preds = %148
  %151 = and i64 %11, -32
  br label %152

152:                                              ; preds = %152, %150
  %153 = phi i64 [ 0, %150 ], [ %186, %152 ]
  %154 = getelementptr i8, i8* %129, i64 %153
  %155 = getelementptr i8, i8* %128, i64 %153
  %156 = bitcast i8* %154 to <16 x i8>*
  %157 = load <16 x i8>, <16 x i8>* %156, align 1, !tbaa !3, !alias.scope !184, !noalias !187
  %158 = getelementptr i8, i8* %154, i64 16
  %159 = bitcast i8* %158 to <16 x i8>*
  %160 = load <16 x i8>, <16 x i8>* %159, align 1, !tbaa !3, !alias.scope !184, !noalias !187
  %161 = bitcast i8* %155 to <16 x i8>*
  %162 = load <16 x i8>, <16 x i8>* %161, align 1, !tbaa !3, !alias.scope !190
  %163 = getelementptr i8, i8* %155, i64 16
  %164 = bitcast i8* %163 to <16 x i8>*
  %165 = load <16 x i8>, <16 x i8>* %164, align 1, !tbaa !3, !alias.scope !190
  %166 = zext <16 x i8> %162 to <16 x i16>
  %167 = zext <16 x i8> %165 to <16 x i16>
  %168 = getelementptr inbounds i8, i8* %154, i64 %132
  %169 = bitcast i8* %168 to <16 x i8>*
  %170 = load <16 x i8>, <16 x i8>* %169, align 1, !tbaa !3, !alias.scope !191
  %171 = getelementptr inbounds i8, i8* %168, i64 16
  %172 = bitcast i8* %171 to <16 x i8>*
  %173 = load <16 x i8>, <16 x i8>* %172, align 1, !tbaa !3, !alias.scope !191
  %174 = zext <16 x i8> %170 to <16 x i16>
  %175 = zext <16 x i8> %173 to <16 x i16>
  %176 = add nuw nsw <16 x i16> %174, %166
  %177 = add nuw nsw <16 x i16> %175, %167
  %178 = lshr <16 x i16> %176, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %179 = lshr <16 x i16> %177, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %180 = trunc <16 x i16> %178 to <16 x i8>
  %181 = trunc <16 x i16> %179 to <16 x i8>
  %182 = add <16 x i8> %157, %180
  %183 = add <16 x i8> %160, %181
  %184 = bitcast i8* %154 to <16 x i8>*
  store <16 x i8> %182, <16 x i8>* %184, align 1, !tbaa !3, !alias.scope !184, !noalias !187
  %185 = bitcast i8* %158 to <16 x i8>*
  store <16 x i8> %183, <16 x i8>* %185, align 1, !tbaa !3, !alias.scope !184, !noalias !187
  %186 = add nuw i64 %153, 32
  %187 = icmp eq i64 %186, %151
  br i1 %187, label %188, label %152, !llvm.loop !192

188:                                              ; preds = %152
  %189 = icmp eq i64 %11, %151
  br i1 %189, label %310, label %190

190:                                              ; preds = %188
  %191 = getelementptr i8, i8* %128, i64 %151
  %192 = getelementptr i8, i8* %129, i64 %151
  %193 = and i64 %11, 24
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %222, label %195

195:                                              ; preds = %148, %190
  %196 = phi i64 [ %151, %190 ], [ 0, %148 ]
  %197 = and i64 %11, -8
  %198 = getelementptr i8, i8* %129, i64 %197
  %199 = getelementptr i8, i8* %128, i64 %197
  br label %200

200:                                              ; preds = %200, %195
  %201 = phi i64 [ %196, %195 ], [ %218, %200 ]
  %202 = getelementptr i8, i8* %129, i64 %201
  %203 = getelementptr i8, i8* %128, i64 %201
  %204 = bitcast i8* %202 to <8 x i8>*
  %205 = load <8 x i8>, <8 x i8>* %204, align 1, !tbaa !3
  %206 = bitcast i8* %203 to <8 x i8>*
  %207 = load <8 x i8>, <8 x i8>* %206, align 1, !tbaa !3
  %208 = zext <8 x i8> %207 to <8 x i16>
  %209 = getelementptr inbounds i8, i8* %202, i64 %132
  %210 = bitcast i8* %209 to <8 x i8>*
  %211 = load <8 x i8>, <8 x i8>* %210, align 1, !tbaa !3
  %212 = zext <8 x i8> %211 to <8 x i16>
  %213 = add nuw nsw <8 x i16> %212, %208
  %214 = lshr <8 x i16> %213, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %215 = trunc <8 x i16> %214 to <8 x i8>
  %216 = add <8 x i8> %205, %215
  %217 = bitcast i8* %202 to <8 x i8>*
  store <8 x i8> %216, <8 x i8>* %217, align 1, !tbaa !3
  %218 = add nuw i64 %201, 8
  %219 = icmp eq i64 %218, %197
  br i1 %219, label %220, label %200, !llvm.loop !193

220:                                              ; preds = %200
  %221 = icmp eq i64 %11, %197
  br i1 %221, label %310, label %222

222:                                              ; preds = %134, %131, %190, %220
  %223 = phi i64 [ 0, %131 ], [ 0, %134 ], [ %151, %190 ], [ %197, %220 ]
  %224 = phi i8* [ %129, %131 ], [ %129, %134 ], [ %192, %190 ], [ %198, %220 ]
  %225 = phi i8* [ %128, %131 ], [ %128, %134 ], [ %191, %190 ], [ %199, %220 ]
  %226 = sub i64 %10, %8
  %227 = xor i64 %223, -1
  %228 = add i64 %10, %227
  %229 = and i64 %226, 1
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %245, label %231

231:                                              ; preds = %222
  %232 = load i8, i8* %224, align 1, !tbaa !3
  %233 = getelementptr inbounds i8, i8* %225, i64 1
  %234 = load i8, i8* %225, align 1, !tbaa !3
  %235 = zext i8 %234 to i16
  %236 = getelementptr inbounds i8, i8* %224, i64 %132
  %237 = load i8, i8* %236, align 1, !tbaa !3
  %238 = zext i8 %237 to i16
  %239 = add nuw nsw i16 %238, %235
  %240 = lshr i16 %239, 1
  %241 = trunc i16 %240 to i8
  %242 = add i8 %232, %241
  store i8 %242, i8* %224, align 1, !tbaa !3
  %243 = getelementptr inbounds i8, i8* %224, i64 1
  %244 = or i64 %223, 1
  br label %245

245:                                              ; preds = %231, %222
  %246 = phi i64 [ %223, %222 ], [ %244, %231 ]
  %247 = phi i8* [ %224, %222 ], [ %243, %231 ]
  %248 = phi i8* [ %225, %222 ], [ %233, %231 ]
  %249 = icmp eq i64 %228, %8
  br i1 %249, label %310, label %280

250:                                              ; preds = %120, %250
  %251 = phi i64 [ %278, %250 ], [ %123, %120 ]
  %252 = phi i8* [ %277, %250 ], [ %124, %120 ]
  %253 = phi i8* [ %273, %250 ], [ %125, %120 ]
  %254 = load i8, i8* %252, align 1, !tbaa !3
  %255 = getelementptr inbounds i8, i8* %253, i64 1
  %256 = load i8, i8* %253, align 1, !tbaa !3
  %257 = lshr i8 %256, 1
  %258 = add i8 %257, %254
  store i8 %258, i8* %252, align 1, !tbaa !3
  %259 = getelementptr inbounds i8, i8* %252, i64 1
  %260 = load i8, i8* %259, align 1, !tbaa !3
  %261 = getelementptr inbounds i8, i8* %253, i64 2
  %262 = load i8, i8* %255, align 1, !tbaa !3
  %263 = lshr i8 %262, 1
  %264 = add i8 %263, %260
  store i8 %264, i8* %259, align 1, !tbaa !3
  %265 = getelementptr inbounds i8, i8* %252, i64 2
  %266 = load i8, i8* %265, align 1, !tbaa !3
  %267 = getelementptr inbounds i8, i8* %253, i64 3
  %268 = load i8, i8* %261, align 1, !tbaa !3
  %269 = lshr i8 %268, 1
  %270 = add i8 %269, %266
  store i8 %270, i8* %265, align 1, !tbaa !3
  %271 = getelementptr inbounds i8, i8* %252, i64 3
  %272 = load i8, i8* %271, align 1, !tbaa !3
  %273 = getelementptr inbounds i8, i8* %253, i64 4
  %274 = load i8, i8* %267, align 1, !tbaa !3
  %275 = lshr i8 %274, 1
  %276 = add i8 %275, %272
  store i8 %276, i8* %271, align 1, !tbaa !3
  %277 = getelementptr inbounds i8, i8* %252, i64 4
  %278 = add nuw nsw i64 %251, 4
  %279 = icmp eq i64 %278, %14
  br i1 %279, label %127, label %250, !llvm.loop !194

280:                                              ; preds = %245, %280
  %281 = phi i64 [ %308, %280 ], [ %246, %245 ]
  %282 = phi i8* [ %307, %280 ], [ %247, %245 ]
  %283 = phi i8* [ %297, %280 ], [ %248, %245 ]
  %284 = load i8, i8* %282, align 1, !tbaa !3
  %285 = getelementptr inbounds i8, i8* %283, i64 1
  %286 = load i8, i8* %283, align 1, !tbaa !3
  %287 = zext i8 %286 to i16
  %288 = getelementptr inbounds i8, i8* %282, i64 %132
  %289 = load i8, i8* %288, align 1, !tbaa !3
  %290 = zext i8 %289 to i16
  %291 = add nuw nsw i16 %290, %287
  %292 = lshr i16 %291, 1
  %293 = trunc i16 %292 to i8
  %294 = add i8 %284, %293
  store i8 %294, i8* %282, align 1, !tbaa !3
  %295 = getelementptr inbounds i8, i8* %282, i64 1
  %296 = load i8, i8* %295, align 1, !tbaa !3
  %297 = getelementptr inbounds i8, i8* %283, i64 2
  %298 = load i8, i8* %285, align 1, !tbaa !3
  %299 = zext i8 %298 to i16
  %300 = getelementptr inbounds i8, i8* %295, i64 %132
  %301 = load i8, i8* %300, align 1, !tbaa !3
  %302 = zext i8 %301 to i16
  %303 = add nuw nsw i16 %302, %299
  %304 = lshr i16 %303, 1
  %305 = trunc i16 %304 to i8
  %306 = add i8 %296, %305
  store i8 %306, i8* %295, align 1, !tbaa !3
  %307 = getelementptr inbounds i8, i8* %282, i64 2
  %308 = add nuw i64 %281, 2
  %309 = icmp eq i64 %308, %11
  br i1 %309, label %310, label %280, !llvm.loop !195

310:                                              ; preds = %245, %280, %188, %220, %127
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @png_read_filter_row_paeth_1byte_pixel(%struct.png_row_info_struct* nocapture noundef readonly %0, i8* noundef %1, i8* nocapture noundef readonly %2) #6 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !124
  %6 = getelementptr inbounds i8, i8* %1, i64 %5
  %7 = load i8, i8* %2, align 1, !tbaa !3
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* %1, align 1, !tbaa !3
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, %8
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %1, align 1, !tbaa !3
  %13 = icmp sgt i64 %5, 1
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = getelementptr inbounds i8, i8* %1, i64 1
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i8* [ %21, %16 ], [ %2, %14 ]
  %18 = phi i8* [ %40, %16 ], [ %15, %14 ]
  %19 = phi i32 [ %38, %16 ], [ %11, %14 ]
  %20 = phi i32 [ %24, %16 ], [ %8, %14 ]
  %21 = getelementptr inbounds i8, i8* %17, i64 1
  %22 = and i32 %19, 255
  %23 = load i8, i8* %21, align 1, !tbaa !3
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 %24, %20
  %26 = sub nsw i32 %22, %20
  %27 = tail call i32 @llvm.abs.i32(i32 %25, i1 true)
  %28 = tail call i32 @llvm.abs.i32(i32 %26, i1 true)
  %29 = add nsw i32 %25, %26
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 true)
  %31 = icmp ult i32 %28, %27
  %32 = select i1 %31, i32 %24, i32 %22
  %33 = select i1 %31, i32 %28, i32 %27
  %34 = icmp ult i32 %30, %33
  %35 = select i1 %34, i32 %20, i32 %32
  %36 = load i8, i8* %18, align 1, !tbaa !3
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %35, %37
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %18, align 1, !tbaa !3
  %40 = getelementptr inbounds i8, i8* %18, i64 1
  %41 = icmp ult i8* %40, %6
  br i1 %41, label %16, label %42, !llvm.loop !196

42:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @png_read_filter_row_paeth_multibyte_pixel(%struct.png_row_info_struct* nocapture noundef readonly %0, i8* noundef %1, i8* nocapture noundef readonly %2) #6 {
  %4 = ptrtoint i8* %1 to i64
  %5 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 5
  %6 = load i8, i8* %5, align 1, !tbaa !114
  %7 = zext i8 %6 to i64
  %8 = add nuw nsw i64 %7, 7
  %9 = lshr i64 %8, 3
  %10 = getelementptr inbounds i8, i8* %1, i64 %9
  %11 = icmp eq i8 %6, 0
  br i1 %11, label %112, label %12

12:                                               ; preds = %3
  %13 = add i64 %9, %4
  %14 = add i64 %4, 1
  %15 = call i64 @llvm.umax.i64(i64 %13, i64 %14)
  %16 = sub i64 %15, %4
  %17 = icmp ult i64 %16, 32
  br i1 %17, label %100, label %18

18:                                               ; preds = %12
  %19 = add i64 %9, %4
  %20 = add i64 %4, 1
  %21 = call i64 @llvm.umax.i64(i64 %19, i64 %20)
  %22 = sub i64 %21, %4
  %23 = getelementptr i8, i8* %1, i64 %22
  %24 = getelementptr i8, i8* %2, i64 %22
  %25 = icmp ugt i8* %24, %1
  %26 = icmp ugt i8* %23, %2
  %27 = and i1 %25, %26
  br i1 %27, label %100, label %28

28:                                               ; preds = %18
  %29 = and i64 %16, -32
  %30 = getelementptr i8, i8* %1, i64 %29
  %31 = getelementptr i8, i8* %2, i64 %29
  %32 = add i64 %29, -32
  %33 = lshr exact i64 %32, 5
  %34 = add nuw nsw i64 %33, 1
  %35 = and i64 %34, 1
  %36 = icmp eq i64 %32, 0
  br i1 %36, label %78, label %37

37:                                               ; preds = %28
  %38 = and i64 %34, 1152921504606846974
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %75, %39 ]
  %41 = phi i64 [ 0, %37 ], [ %76, %39 ]
  %42 = getelementptr i8, i8* %1, i64 %40
  %43 = getelementptr i8, i8* %2, i64 %40
  %44 = bitcast i8* %42 to <16 x i8>*
  %45 = load <16 x i8>, <16 x i8>* %44, align 1, !tbaa !3, !alias.scope !197, !noalias !200
  %46 = getelementptr i8, i8* %42, i64 16
  %47 = bitcast i8* %46 to <16 x i8>*
  %48 = load <16 x i8>, <16 x i8>* %47, align 1, !tbaa !3, !alias.scope !197, !noalias !200
  %49 = bitcast i8* %43 to <16 x i8>*
  %50 = load <16 x i8>, <16 x i8>* %49, align 1, !tbaa !3, !alias.scope !200
  %51 = getelementptr i8, i8* %43, i64 16
  %52 = bitcast i8* %51 to <16 x i8>*
  %53 = load <16 x i8>, <16 x i8>* %52, align 1, !tbaa !3, !alias.scope !200
  %54 = add <16 x i8> %50, %45
  %55 = add <16 x i8> %53, %48
  %56 = bitcast i8* %42 to <16 x i8>*
  store <16 x i8> %54, <16 x i8>* %56, align 1, !tbaa !3, !alias.scope !197, !noalias !200
  %57 = bitcast i8* %46 to <16 x i8>*
  store <16 x i8> %55, <16 x i8>* %57, align 1, !tbaa !3, !alias.scope !197, !noalias !200
  %58 = or i64 %40, 32
  %59 = getelementptr i8, i8* %1, i64 %58
  %60 = getelementptr i8, i8* %2, i64 %58
  %61 = bitcast i8* %59 to <16 x i8>*
  %62 = load <16 x i8>, <16 x i8>* %61, align 1, !tbaa !3, !alias.scope !197, !noalias !200
  %63 = getelementptr i8, i8* %59, i64 16
  %64 = bitcast i8* %63 to <16 x i8>*
  %65 = load <16 x i8>, <16 x i8>* %64, align 1, !tbaa !3, !alias.scope !197, !noalias !200
  %66 = bitcast i8* %60 to <16 x i8>*
  %67 = load <16 x i8>, <16 x i8>* %66, align 1, !tbaa !3, !alias.scope !200
  %68 = getelementptr i8, i8* %60, i64 16
  %69 = bitcast i8* %68 to <16 x i8>*
  %70 = load <16 x i8>, <16 x i8>* %69, align 1, !tbaa !3, !alias.scope !200
  %71 = add <16 x i8> %67, %62
  %72 = add <16 x i8> %70, %65
  %73 = bitcast i8* %59 to <16 x i8>*
  store <16 x i8> %71, <16 x i8>* %73, align 1, !tbaa !3, !alias.scope !197, !noalias !200
  %74 = bitcast i8* %63 to <16 x i8>*
  store <16 x i8> %72, <16 x i8>* %74, align 1, !tbaa !3, !alias.scope !197, !noalias !200
  %75 = add nuw i64 %40, 64
  %76 = add i64 %41, 2
  %77 = icmp eq i64 %76, %38
  br i1 %77, label %78, label %39, !llvm.loop !202

78:                                               ; preds = %39, %28
  %79 = phi i64 [ 0, %28 ], [ %75, %39 ]
  %80 = icmp eq i64 %35, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %78
  %82 = getelementptr i8, i8* %1, i64 %79
  %83 = getelementptr i8, i8* %2, i64 %79
  %84 = bitcast i8* %82 to <16 x i8>*
  %85 = load <16 x i8>, <16 x i8>* %84, align 1, !tbaa !3, !alias.scope !197, !noalias !200
  %86 = getelementptr i8, i8* %82, i64 16
  %87 = bitcast i8* %86 to <16 x i8>*
  %88 = load <16 x i8>, <16 x i8>* %87, align 1, !tbaa !3, !alias.scope !197, !noalias !200
  %89 = bitcast i8* %83 to <16 x i8>*
  %90 = load <16 x i8>, <16 x i8>* %89, align 1, !tbaa !3, !alias.scope !200
  %91 = getelementptr i8, i8* %83, i64 16
  %92 = bitcast i8* %91 to <16 x i8>*
  %93 = load <16 x i8>, <16 x i8>* %92, align 1, !tbaa !3, !alias.scope !200
  %94 = add <16 x i8> %90, %85
  %95 = add <16 x i8> %93, %88
  %96 = bitcast i8* %82 to <16 x i8>*
  store <16 x i8> %94, <16 x i8>* %96, align 1, !tbaa !3, !alias.scope !197, !noalias !200
  %97 = bitcast i8* %86 to <16 x i8>*
  store <16 x i8> %95, <16 x i8>* %97, align 1, !tbaa !3, !alias.scope !197, !noalias !200
  br label %98

98:                                               ; preds = %78, %81
  %99 = icmp eq i64 %16, %29
  br i1 %99, label %112, label %100

100:                                              ; preds = %18, %12, %98
  %101 = phi i8* [ %1, %18 ], [ %1, %12 ], [ %30, %98 ]
  %102 = phi i8* [ %2, %18 ], [ %2, %12 ], [ %31, %98 ]
  br label %103

103:                                              ; preds = %100, %103
  %104 = phi i8* [ %110, %103 ], [ %101, %100 ]
  %105 = phi i8* [ %107, %103 ], [ %102, %100 ]
  %106 = load i8, i8* %104, align 1, !tbaa !3
  %107 = getelementptr inbounds i8, i8* %105, i64 1
  %108 = load i8, i8* %105, align 1, !tbaa !3
  %109 = add i8 %108, %106
  %110 = getelementptr inbounds i8, i8* %104, i64 1
  store i8 %109, i8* %104, align 1, !tbaa !3
  %111 = icmp ult i8* %110, %10
  br i1 %111, label %103, label %112, !llvm.loop !203

112:                                              ; preds = %103, %98, %3
  %113 = phi i8* [ %2, %3 ], [ %31, %98 ], [ %107, %103 ]
  %114 = phi i8* [ %1, %3 ], [ %30, %98 ], [ %110, %103 ]
  %115 = ptrtoint i8* %114 to i64
  %116 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 1
  %117 = load i64, i64* %116, align 8, !tbaa !124
  %118 = getelementptr inbounds i8, i8* %1, i64 %117
  %119 = icmp ult i8* %114, %118
  br i1 %119, label %120, label %260

120:                                              ; preds = %112
  %121 = sub nsw i64 0, %9
  %122 = add i64 %117, %4
  %123 = sub i64 %122, %115
  %124 = icmp ult i64 %123, 8
  br i1 %124, label %230, label %125

125:                                              ; preds = %120
  %126 = add i64 %117, %4
  %127 = sub i64 %126, %115
  %128 = getelementptr i8, i8* %114, i64 %127
  %129 = getelementptr i8, i8* %113, i64 %121
  %130 = sub i64 %127, %9
  %131 = getelementptr i8, i8* %113, i64 %130
  %132 = getelementptr i8, i8* %114, i64 %121
  %133 = getelementptr i8, i8* %114, i64 %130
  %134 = getelementptr i8, i8* %113, i64 %127
  %135 = icmp ult i8* %114, %131
  %136 = icmp ult i8* %129, %128
  %137 = and i1 %135, %136
  %138 = icmp ult i8* %114, %133
  %139 = icmp ult i8* %132, %128
  %140 = and i1 %138, %139
  %141 = or i1 %137, %140
  %142 = icmp ult i8* %114, %134
  %143 = icmp ult i8* %113, %128
  %144 = and i1 %142, %143
  %145 = or i1 %141, %144
  br i1 %145, label %230, label %146

146:                                              ; preds = %125
  %147 = icmp ult i64 %123, 16
  br i1 %147, label %189, label %148

148:                                              ; preds = %146
  %149 = and i64 %123, -16
  br label %150

150:                                              ; preds = %150, %148
  %151 = phi i64 [ 0, %148 ], [ %180, %150 ]
  %152 = getelementptr i8, i8* %114, i64 %151
  %153 = getelementptr i8, i8* %113, i64 %151
  %154 = getelementptr inbounds i8, i8* %153, i64 %121
  %155 = bitcast i8* %154 to <16 x i8>*
  %156 = load <16 x i8>, <16 x i8>* %155, align 1, !tbaa !3, !alias.scope !204
  %157 = zext <16 x i8> %156 to <16 x i32>
  %158 = getelementptr inbounds i8, i8* %152, i64 %121
  %159 = bitcast i8* %158 to <16 x i8>*
  %160 = load <16 x i8>, <16 x i8>* %159, align 1, !tbaa !3, !alias.scope !207
  %161 = zext <16 x i8> %160 to <16 x i32>
  %162 = bitcast i8* %153 to <16 x i8>*
  %163 = load <16 x i8>, <16 x i8>* %162, align 1, !tbaa !3, !alias.scope !209
  %164 = zext <16 x i8> %163 to <16 x i32>
  %165 = sub nsw <16 x i32> %164, %157
  %166 = sub nsw <16 x i32> %161, %157
  %167 = call <16 x i32> @llvm.abs.v16i32(<16 x i32> %165, i1 true)
  %168 = call <16 x i32> @llvm.abs.v16i32(<16 x i32> %166, i1 true)
  %169 = add nsw <16 x i32> %165, %166
  %170 = call <16 x i32> @llvm.abs.v16i32(<16 x i32> %169, i1 true)
  %171 = icmp ult <16 x i32> %168, %167
  %172 = select <16 x i1> %171, <16 x i8> %163, <16 x i8> %160
  %173 = select <16 x i1> %171, <16 x i32> %168, <16 x i32> %167
  %174 = icmp ult <16 x i32> %170, %173
  %175 = select <16 x i1> %174, <16 x i8> %156, <16 x i8> %172
  %176 = bitcast i8* %152 to <16 x i8>*
  %177 = load <16 x i8>, <16 x i8>* %176, align 1, !tbaa !3, !alias.scope !211, !noalias !213
  %178 = add <16 x i8> %175, %177
  %179 = bitcast i8* %152 to <16 x i8>*
  store <16 x i8> %178, <16 x i8>* %179, align 1, !tbaa !3, !alias.scope !211, !noalias !213
  %180 = add nuw i64 %151, 16
  %181 = icmp eq i64 %180, %149
  br i1 %181, label %182, label %150, !llvm.loop !214

182:                                              ; preds = %150
  %183 = icmp eq i64 %123, %149
  br i1 %183, label %260, label %184

184:                                              ; preds = %182
  %185 = getelementptr i8, i8* %113, i64 %149
  %186 = getelementptr i8, i8* %114, i64 %149
  %187 = and i64 %123, 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %230, label %189

189:                                              ; preds = %146, %184
  %190 = phi i64 [ %149, %184 ], [ 0, %146 ]
  %191 = add i64 %117, %4
  %192 = sub i64 %191, %115
  %193 = and i64 %192, -8
  %194 = getelementptr i8, i8* %114, i64 %193
  %195 = getelementptr i8, i8* %113, i64 %193
  br label %196

196:                                              ; preds = %196, %189
  %197 = phi i64 [ %190, %189 ], [ %226, %196 ]
  %198 = getelementptr i8, i8* %114, i64 %197
  %199 = getelementptr i8, i8* %113, i64 %197
  %200 = getelementptr inbounds i8, i8* %199, i64 %121
  %201 = bitcast i8* %200 to <8 x i8>*
  %202 = load <8 x i8>, <8 x i8>* %201, align 1, !tbaa !3
  %203 = zext <8 x i8> %202 to <8 x i32>
  %204 = getelementptr inbounds i8, i8* %198, i64 %121
  %205 = bitcast i8* %204 to <8 x i8>*
  %206 = load <8 x i8>, <8 x i8>* %205, align 1, !tbaa !3
  %207 = zext <8 x i8> %206 to <8 x i32>
  %208 = bitcast i8* %199 to <8 x i8>*
  %209 = load <8 x i8>, <8 x i8>* %208, align 1, !tbaa !3
  %210 = zext <8 x i8> %209 to <8 x i32>
  %211 = sub nsw <8 x i32> %210, %203
  %212 = sub nsw <8 x i32> %207, %203
  %213 = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %211, i1 true)
  %214 = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %212, i1 true)
  %215 = add nsw <8 x i32> %211, %212
  %216 = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %215, i1 true)
  %217 = icmp ult <8 x i32> %214, %213
  %218 = select <8 x i1> %217, <8 x i8> %209, <8 x i8> %206
  %219 = select <8 x i1> %217, <8 x i32> %214, <8 x i32> %213
  %220 = icmp ult <8 x i32> %216, %219
  %221 = select <8 x i1> %220, <8 x i8> %202, <8 x i8> %218
  %222 = bitcast i8* %198 to <8 x i8>*
  %223 = load <8 x i8>, <8 x i8>* %222, align 1, !tbaa !3
  %224 = add <8 x i8> %221, %223
  %225 = bitcast i8* %198 to <8 x i8>*
  store <8 x i8> %224, <8 x i8>* %225, align 1, !tbaa !3
  %226 = add nuw i64 %197, 8
  %227 = icmp eq i64 %226, %193
  br i1 %227, label %228, label %196, !llvm.loop !215

228:                                              ; preds = %196
  %229 = icmp eq i64 %192, %193
  br i1 %229, label %260, label %230

230:                                              ; preds = %125, %120, %184, %228
  %231 = phi i8* [ %114, %120 ], [ %114, %125 ], [ %186, %184 ], [ %194, %228 ]
  %232 = phi i8* [ %113, %120 ], [ %113, %125 ], [ %185, %184 ], [ %195, %228 ]
  br label %233

233:                                              ; preds = %230, %233
  %234 = phi i8* [ %258, %233 ], [ %231, %230 ]
  %235 = phi i8* [ %242, %233 ], [ %232, %230 ]
  %236 = getelementptr inbounds i8, i8* %235, i64 %121
  %237 = load i8, i8* %236, align 1, !tbaa !3
  %238 = zext i8 %237 to i32
  %239 = getelementptr inbounds i8, i8* %234, i64 %121
  %240 = load i8, i8* %239, align 1, !tbaa !3
  %241 = zext i8 %240 to i32
  %242 = getelementptr inbounds i8, i8* %235, i64 1
  %243 = load i8, i8* %235, align 1, !tbaa !3
  %244 = zext i8 %243 to i32
  %245 = sub nsw i32 %244, %238
  %246 = sub nsw i32 %241, %238
  %247 = tail call i32 @llvm.abs.i32(i32 %245, i1 true)
  %248 = tail call i32 @llvm.abs.i32(i32 %246, i1 true)
  %249 = add nsw i32 %245, %246
  %250 = tail call i32 @llvm.abs.i32(i32 %249, i1 true)
  %251 = icmp ult i32 %248, %247
  %252 = select i1 %251, i8 %243, i8 %240
  %253 = select i1 %251, i32 %248, i32 %247
  %254 = icmp ult i32 %250, %253
  %255 = select i1 %254, i8 %237, i8 %252
  %256 = load i8, i8* %234, align 1, !tbaa !3
  %257 = add i8 %255, %256
  %258 = getelementptr inbounds i8, i8* %234, i64 1
  store i8 %257, i8* %234, align 1, !tbaa !3
  %259 = icmp ult i8* %258, %118
  br i1 %259, label %233, label %260, !llvm.loop !216

260:                                              ; preds = %233, %182, %228, %112
  ret void
}

declare dso_local noalias i8* @png_malloc_base(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i64 @png_safecat(i8* noundef, i64 noundef, i64 noundef, i8* noundef) local_unnamed_addr #4

declare dso_local i32 @inflateReset(%struct.z_stream_s* noundef) local_unnamed_addr #4

declare dso_local i32 @inflateInit_(%struct.z_stream_s* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !4, i64 349}
!7 = !{!"png_struct_def", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !10, i64 64, !8, i64 176, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !11, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !11, i64 304, !9, i64 312, !9, i64 316, !8, i64 320, !12, i64 328, !9, i64 332, !12, i64 336, !4, i64 338, !4, i64 339, !4, i64 340, !4, i64 341, !4, i64 342, !4, i64 343, !4, i64 344, !4, i64 345, !4, i64 346, !4, i64 347, !4, i64 348, !4, i64 349, !4, i64 350, !4, i64 351, !4, i64 352, !9, i64 356, !13, i64 360, !8, i64 376, !9, i64 384, !9, i64 388, !14, i64 392, !8, i64 400, !13, i64 408, !8, i64 424, !8, i64 432, !9, i64 440, !9, i64 444, !9, i64 448, !8, i64 456, !8, i64 464, !4, i64 472, !9, i64 476, !9, i64 480, !9, i64 484, !11, i64 488, !15, i64 496, !11, i64 528, !8, i64 536, !11, i64 544, !9, i64 552, !9, i64 556, !8, i64 560, !4, i64 568}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = !{!"z_stream_s", !8, i64 0, !9, i64 8, !11, i64 16, !8, i64 24, !9, i64 32, !11, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !9, i64 88, !11, i64 96, !11, i64 104}
!11 = !{!"long", !4, i64 0}
!12 = !{!"short", !4, i64 0}
!13 = !{!"png_color_16_struct", !4, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8}
!14 = !{!"png_color_8_struct", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !4, i64 4}
!15 = !{!"png_unknown_chunk_t", !4, i64 0, !8, i64 8, !11, i64 16, !4, i64 24}
!16 = !{!7, !9, i64 556}
!17 = !{!7, !9, i64 48}
!18 = !{!19}
!19 = distinct !{!19, !20, !"png_get_uint_31: argument 0"}
!20 = distinct !{!20, !"png_get_uint_31"}
!21 = !{!7, !9, i64 264}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"png_crc_error: argument 0"}
!26 = distinct !{!26, !"png_crc_error"}
!27 = !{!7, !9, i64 52}
!28 = !{!7, !9, i64 316}
!29 = !{!30}
!30 = distinct !{!30, !31, !"png_get_uint_31: argument 0"}
!31 = distinct !{!31, !"png_get_uint_31"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"png_get_uint_31: argument 0"}
!34 = distinct !{!34, !"png_get_uint_31"}
!35 = !{!7, !9, i64 228}
!36 = !{!7, !9, i64 232}
!37 = !{!7, !4, i64 344}
!38 = !{!7, !4, i64 340}
!39 = !{!7, !4, i64 343}
!40 = !{!7, !4, i64 472}
!41 = !{!7, !4, i64 347}
!42 = !{!7, !4, i64 346}
!43 = !{!7, !11, i64 248}
!44 = !{!45, !4, i64 0}
!45 = !{!"png_color_struct", !4, i64 0, !4, i64 1, !4, i64 2}
!46 = !{!45, !4, i64 1}
!47 = !{!45, !4, i64 2}
!48 = distinct !{!48, !23}
!49 = !{!7, !12, i64 336}
!50 = !{!51, !9, i64 8}
!51 = !{!"png_info_def", !9, i64 0, !9, i64 4, !9, i64 8, !11, i64 16, !8, i64 24, !12, i64 32, !12, i64 34, !4, i64 36, !4, i64 37, !4, i64 38, !4, i64 39, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44, !14, i64 52, !8, i64 64, !13, i64 72, !13, i64 82, !8, i64 96, !9, i64 104, !8, i64 112, !9, i64 120, !8, i64 128}
!52 = !{!51, !12, i64 34}
!53 = distinct !{!53, !23}
!54 = !{!7, !4, i64 395}
!55 = !{!7, !12, i64 416}
!56 = !{!7, !12, i64 410}
!57 = !{!7, !12, i64 412}
!58 = !{!7, !12, i64 414}
!59 = !{!7, !12, i64 328}
!60 = !{!13, !4, i64 0}
!61 = !{!51, !12, i64 32}
!62 = !{!7, !8, i64 320}
!63 = !{!13, !12, i64 2}
!64 = !{!13, !12, i64 4}
!65 = !{!13, !12, i64 6}
!66 = !{!13, !12, i64 8}
!67 = !{!12, !12, i64 0}
!68 = distinct !{!68, !23}
!69 = !{!7, !9, i64 444}
!70 = !{!7, !8, i64 504}
!71 = !{!72}
!72 = distinct !{!72, !73, !"png_cache_unknown_chunk: argument 0"}
!73 = distinct !{!73, !"png_cache_unknown_chunk"}
!74 = !{!7, !11, i64 488}
!75 = !{!7, !11, i64 512}
!76 = !{!7, !4, i64 520}
!77 = !{!7, !9, i64 484}
!78 = !{!7, !4, i64 351}
!79 = !{!7, !8, i64 280}
!80 = !{!7, !4, i64 341}
!81 = !{!7, !11, i64 304}
!82 = !{!7, !9, i64 56}
!83 = !{!9, !9, i64 0}
!84 = distinct !{!84, !23}
!85 = distinct !{!85, !23}
!86 = distinct !{!86, !23}
!87 = !{!88}
!88 = distinct !{!88, !89}
!89 = distinct !{!89, !"LVerDomain"}
!90 = !{!91}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !23, !93}
!93 = !{!"llvm.loop.isvectorized", i32 1}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = distinct !{!96, !23, !93, !97}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = distinct !{!98, !95}
!99 = distinct !{!99, !23, !93}
!100 = distinct !{!100, !23}
!101 = distinct !{!101, !23}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!106}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !23, !93}
!108 = distinct !{!108, !95}
!109 = distinct !{!109, !23, !93, !97}
!110 = distinct !{!110, !95}
!111 = distinct !{!111, !23, !93}
!112 = !{!113, !9, i64 0}
!113 = !{!"png_row_info_struct", !9, i64 0, !11, i64 8, !4, i64 16, !4, i64 17, !4, i64 18, !4, i64 19}
!114 = !{!113, !4, i64 19}
!115 = distinct !{!115, !23}
!116 = distinct !{!116, !23}
!117 = distinct !{!117, !23}
!118 = distinct !{!118, !23}
!119 = distinct !{!119, !23}
!120 = distinct !{!120, !23}
!121 = distinct !{!121, !23}
!122 = distinct !{!122, !95}
!123 = distinct !{!123, !23}
!124 = !{!113, !11, i64 8}
!125 = !{!8, !8, i64 0}
!126 = !{!127}
!127 = distinct !{!127, !128, !"png_init_filter_functions: argument 0"}
!128 = distinct !{!128, !"png_init_filter_functions"}
!129 = !{!7, !8, i64 88}
!130 = !{!7, !9, i64 96}
!131 = !{!7, !9, i64 72}
!132 = !{!7, !9, i64 312}
!133 = distinct !{!133, !23}
!134 = !{!7, !9, i64 552}
!135 = !{!7, !8, i64 536}
!136 = !{!137}
!137 = distinct !{!137, !138, !"png_read_buffer: argument 0"}
!138 = distinct !{!138, !"png_read_buffer"}
!139 = !{!7, !11, i64 544}
!140 = !{!7, !8, i64 64}
!141 = !{!7, !8, i64 112}
!142 = !{!7, !9, i64 60}
!143 = !{!7, !9, i64 260}
!144 = !{!7, !9, i64 236}
!145 = !{!7, !8, i64 272}
!146 = !{!7, !9, i64 256}
!147 = distinct !{!147, !23}
!148 = !{!149}
!149 = distinct !{!149, !150, !"png_read_finish_IDAT: argument 0"}
!150 = distinct !{!150, !"png_read_finish_IDAT"}
!151 = !{!7, !4, i64 350}
!152 = !{!7, !11, i64 528}
!153 = !{!7, !8, i64 464}
!154 = !{!7, !8, i64 560}
!155 = !{!156}
!156 = distinct !{!156, !157, !"png_inflate_claim: argument 0"}
!157 = distinct !{!157, !"png_inflate_claim"}
!158 = !{!159}
!159 = distinct !{!159, !160}
!160 = distinct !{!160, !"LVerDomain"}
!161 = !{!162}
!162 = distinct !{!162, !160}
!163 = distinct !{!163, !23, !93}
!164 = distinct !{!164, !23, !93, !97}
!165 = distinct !{!165, !95}
!166 = distinct !{!166, !23, !93}
!167 = !{!168}
!168 = distinct !{!168, !169}
!169 = distinct !{!169, !"LVerDomain"}
!170 = !{!171}
!171 = distinct !{!171, !169}
!172 = distinct !{!172, !23, !93}
!173 = distinct !{!173, !23, !93, !97}
!174 = distinct !{!174, !95}
!175 = distinct !{!175, !23, !93}
!176 = !{!177}
!177 = distinct !{!177, !178}
!178 = distinct !{!178, !"LVerDomain"}
!179 = !{!180}
!180 = distinct !{!180, !178}
!181 = distinct !{!181, !23, !93}
!182 = distinct !{!182, !95}
!183 = distinct !{!183, !95}
!184 = !{!185}
!185 = distinct !{!185, !186}
!186 = distinct !{!186, !"LVerDomain"}
!187 = !{!188, !189}
!188 = distinct !{!188, !186}
!189 = distinct !{!189, !186}
!190 = !{!188}
!191 = !{!189}
!192 = distinct !{!192, !23, !93}
!193 = distinct !{!193, !23, !93, !97}
!194 = distinct !{!194, !23, !93}
!195 = distinct !{!195, !23, !93}
!196 = distinct !{!196, !23}
!197 = !{!198}
!198 = distinct !{!198, !199}
!199 = distinct !{!199, !"LVerDomain"}
!200 = !{!201}
!201 = distinct !{!201, !199}
!202 = distinct !{!202, !23, !93}
!203 = distinct !{!203, !23, !93}
!204 = !{!205}
!205 = distinct !{!205, !206}
!206 = distinct !{!206, !"LVerDomain"}
!207 = !{!208}
!208 = distinct !{!208, !206}
!209 = !{!210}
!210 = distinct !{!210, !206}
!211 = !{!212}
!212 = distinct !{!212, !206}
!213 = !{!205, !208, !210}
!214 = distinct !{!214, !23, !93}
!215 = distinct !{!215, !23, !93, !97}
!216 = distinct !{!216, !23, !93}
