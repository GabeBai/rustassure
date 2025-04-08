; ModuleID = 'pngwutil.c'
source_filename = "pngwutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.png_struct_def = type { void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*, i8*, void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)*, i8*, i32, i32, i32, i32, %struct.z_stream_s, %struct.png_compression_buffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i64, i32, i32, %struct.png_color_struct*, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.png_color_16_struct, {}*, i32, i32, %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)*, i32, i32, i32, i8*, i8*, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, i8*, i64, i32, i32, i8*, [4 x void (%struct.png_row_info_struct*, i8*, i8*)*] }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }
%struct.png_compression_buffer = type { %struct.png_compression_buffer*, [1 x i8] }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [38 x i8] c"Invalid bit depth for grayscale image\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid bit depth for RGB image\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Invalid bit depth for paletted image\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Invalid bit depth for grayscale+alpha image\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Invalid bit depth for RGBA image\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Invalid image color type specified\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Invalid compression type specified\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Invalid filter type specified\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Invalid interlace type specified\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Invalid number of colors in palette\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Ignoring request to write a PLTE chunk in grayscale PNG\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Z_OK on Z_FINISH with output space\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Invalid sBIT depth specified\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Invalid number of transparent colors specified\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write tRNS chunk out-of-range for bit_depth\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Can't write tRNS with an alpha channel\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Invalid background palette index\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write 16-bit bKGD chunk when bit_depth is 8\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write bKGD chunk out-of-range for bit_depth\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"Invalid number of histogram entries specified\00", align 1
@png_write_finish_row.png_pass_ystart = internal unnamed_addr constant [7 x i8] c"\00\00\04\00\02\00\01", align 1
@png_write_finish_row.png_pass_yinc = internal unnamed_addr constant [7 x i8] c"\08\08\08\04\04\02\02", align 1
@png_do_write_interlace.png_pass_start = internal unnamed_addr constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@png_do_write_interlace.png_pass_inc = internal unnamed_addr constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"length exceeds PNG maximum\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c" using zstream\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"in use by IDAT\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"deflateEnd failed (ignored)\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"1.2.8-optipng\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_save_uint_32(i8* nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 24
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* %0, align 1, !tbaa !3
  %5 = lshr i32 %1, 16
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %6, i8* %7, align 1, !tbaa !3
  %8 = lshr i32 %1, 8
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 %9, i8* %10, align 1, !tbaa !3
  %11 = trunc i32 %1 to i8
  %12 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 %11, i8* %12, align 1, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_save_uint_16(i8* nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 8
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* %0, align 1, !tbaa !3
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %5, i8* %6, align 1, !tbaa !3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_sig(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #1 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to [8 x i8]*
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  store i64 727905341920923785, i64* %2, align 8
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  store i32 18, i32* %5, align 4, !tbaa !6
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 53
  %7 = load i8, i8* %6, align 1, !tbaa !16
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %8
  %10 = sub nsw i64 8, %8
  call void @png_write_data(%struct.png_struct_def* noundef %0, i8* noundef nonnull %9, i64 noundef %10) #12
  %11 = load i8, i8* %6, align 1, !tbaa !16
  %12 = icmp ult i8 %11, 3
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %15 = load i32, i32* %14, align 8, !tbaa !17
  %16 = or i32 %15, 4096
  store i32 %16, i32* %14, align 8, !tbaa !17
  br label %17

17:                                               ; preds = %13, %1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @png_write_data(%struct.png_struct_def* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @png_write_chunk_start(%struct.png_struct_def* noalias noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [8 x i8], align 1
  %5 = load i8, i8* %1, align 1, !tbaa !3
  %6 = getelementptr inbounds i8, i8* %1, i64 1
  %7 = load i8, i8* %6, align 1, !tbaa !3
  %8 = getelementptr inbounds i8, i8* %1, i64 2
  %9 = load i8, i8* %8, align 1, !tbaa !3
  %10 = getelementptr inbounds i8, i8* %1, i64 3
  %11 = load i8, i8* %10, align 1, !tbaa !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #12, !noalias !18
  %13 = icmp eq %struct.png_struct_def* %0, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %3
  %15 = zext i8 %11 to i32
  %16 = zext i8 %5 to i32
  %17 = shl nuw i32 %16, 24
  %18 = zext i8 %7 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or i32 %19, %17
  %21 = zext i8 %9 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or i32 %20, %22
  %24 = or i32 %23, %15
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  store i32 34, i32* %25, align 4, !tbaa !6, !alias.scope !18
  %26 = lshr i32 %2, 24
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %12, align 1, !tbaa !3, !noalias !18
  %28 = lshr i32 %2, 16
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 1
  store i8 %29, i8* %30, align 1, !tbaa !3, !noalias !18
  %31 = lshr i32 %2, 8
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 2
  store i8 %32, i8* %33, align 1, !tbaa !3, !noalias !18
  %34 = trunc i32 %2 to i8
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 3
  store i8 %34, i8* %35, align 1, !tbaa !3, !noalias !18
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 4
  store i8 %5, i8* %36, align 1, !tbaa !3, !noalias !18
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 5
  store i8 %7, i8* %37, align 1, !tbaa !3, !noalias !18
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 6
  store i8 %9, i8* %38, align 1, !tbaa !3, !noalias !18
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 7
  store i8 %11, i8* %39, align 1, !tbaa !3, !noalias !18
  call void @png_write_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %12, i64 noundef 8) #12
  %40 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  store i32 %24, i32* %40, align 8, !tbaa !21, !alias.scope !18
  call void @png_reset_crc(%struct.png_struct_def* noundef nonnull %0) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %36, i64 noundef 4) #12
  store i32 66, i32* %25, align 4, !tbaa !6, !alias.scope !18
  br label %41

41:                                               ; preds = %3, %14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #12, !noalias !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_chunk_data(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ne %struct.png_struct_def* %0, null
  %5 = icmp ne i8* %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne i64 %2, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @png_write_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef %2) #12
  tail call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef %2) #12
  br label %10

10:                                               ; preds = %3, %9
  ret void
}

declare dso_local void @png_calculate_crc(%struct.png_struct_def* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_write_chunk_end(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #1 {
  %2 = alloca [4 x i8], align 1
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #12
  %4 = icmp eq %struct.png_struct_def* %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  store i32 130, i32* %6, align 4, !tbaa !6
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 37
  %8 = load i32, i32* %7, align 4, !tbaa !22
  %9 = lshr i32 %8, 24
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %3, align 1, !tbaa !3
  %11 = lshr i32 %8, 16
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  store i8 %12, i8* %13, align 1, !tbaa !3
  %14 = lshr i32 %8, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  store i8 %15, i8* %16, align 1, !tbaa !3
  %17 = trunc i32 %8 to i8
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  store i8 %17, i8* %18, align 1, !tbaa !3
  call void @png_write_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %3, i64 noundef 4) #12
  br label %19

19:                                               ; preds = %1, %5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_chunk(%struct.png_struct_def* noalias noundef %0, i8* nocapture noundef readonly %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = load i8, i8* %1, align 1, !tbaa !3
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr inbounds i8, i8* %1, i64 1
  %9 = load i8, i8* %8, align 1, !tbaa !3
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, %7
  %13 = getelementptr inbounds i8, i8* %1, i64 2
  %14 = load i8, i8* %13, align 1, !tbaa !3
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or i32 %12, %16
  %18 = getelementptr inbounds i8, i8* %1, i64 3
  %19 = load i8, i8* %18, align 1, !tbaa !3
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  tail call fastcc void @png_write_complete_chunk(%struct.png_struct_def* noundef %0, i32 noundef %21, i8* noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @png_write_complete_chunk(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) unnamed_addr #1 {
  %5 = alloca [4 x i8], align 1
  %6 = alloca [8 x i8], align 1
  %7 = icmp eq %struct.png_struct_def* %0, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %4
  %9 = icmp ugt i64 %3, 2147483647
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0)) #13
  unreachable

11:                                               ; preds = %8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #12, !noalias !23
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  store i32 34, i32* %13, align 4, !tbaa !6, !alias.scope !23
  %14 = lshr i64 %3, 24
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %12, align 1, !tbaa !3, !noalias !23
  %16 = lshr i64 %3, 16
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 1
  store i8 %17, i8* %18, align 1, !tbaa !3, !noalias !23
  %19 = lshr i64 %3, 8
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 2
  store i8 %20, i8* %21, align 1, !tbaa !3, !noalias !23
  %22 = trunc i64 %3 to i8
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 3
  store i8 %22, i8* %23, align 1, !tbaa !3, !noalias !23
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 4
  %25 = lshr i32 %1, 24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %24, align 1, !tbaa !3, !noalias !23
  %27 = lshr i32 %1, 16
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 5
  store i8 %28, i8* %29, align 1, !tbaa !3, !noalias !23
  %30 = lshr i32 %1, 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 6
  store i8 %31, i8* %32, align 1, !tbaa !3, !noalias !23
  %33 = trunc i32 %1 to i8
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 7
  store i8 %33, i8* %34, align 1, !tbaa !3, !noalias !23
  call void @png_write_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %12, i64 noundef 8) #12
  %35 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  store i32 %1, i32* %35, align 8, !tbaa !21, !alias.scope !23
  call void @png_reset_crc(%struct.png_struct_def* noundef nonnull %0) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %24, i64 noundef 4) #12
  store i32 66, i32* %13, align 4, !tbaa !6, !alias.scope !23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #12, !noalias !23
  %36 = icmp ne i8* %2, null
  %37 = icmp ne i64 %3, 0
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %11
  call void @png_write_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef %3) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef %3) #12
  br label %40

40:                                               ; preds = %11, %39
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %41) #12, !noalias !26
  store i32 130, i32* %13, align 4, !tbaa !6, !alias.scope !26
  %42 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 37
  %43 = load i32, i32* %42, align 4, !tbaa !22, !alias.scope !26
  %44 = lshr i32 %43, 24
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 1, !tbaa !3, !noalias !26
  %46 = lshr i32 %43, 16
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 1
  store i8 %47, i8* %48, align 1, !tbaa !3, !noalias !26
  %49 = lshr i32 %43, 8
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 2
  store i8 %50, i8* %51, align 1, !tbaa !3, !noalias !26
  %52 = trunc i32 %43 to i8
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 3
  store i8 %52, i8* %53, align 1, !tbaa !3, !noalias !26
  call void @png_write_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %41, i64 noundef 4) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %41) #12, !noalias !26
  br label %54

54:                                               ; preds = %4, %40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_free_buffer_list(%struct.png_struct_def* noalias noundef %0, %struct.png_compression_buffer** nocapture noundef %1) local_unnamed_addr #1 {
  %3 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %1, align 8, !tbaa !29
  %4 = icmp eq %struct.png_compression_buffer* %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  store %struct.png_compression_buffer* null, %struct.png_compression_buffer** %1, align 8, !tbaa !29
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi %struct.png_compression_buffer* [ %3, %5 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %7, i64 0, i32 0
  %9 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %8, align 8, !tbaa !30
  %10 = bitcast %struct.png_compression_buffer* %7 to i8*
  tail call void @png_free(%struct.png_struct_def* noundef %0, i8* noundef %10) #12
  %11 = icmp eq %struct.png_compression_buffer* %9, null
  br i1 %11, label %12, label %6, !llvm.loop !32

12:                                               ; preds = %6, %2
  ret void
}

declare dso_local void @png_free(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_write_IHDR(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = alloca [13 x i8], align 1
  %10 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %10) #12
  switch i32 %4, label %23 [
    i32 0, label %11
    i32 2, label %13
    i32 3, label %15
    i32 4, label %19
    i32 6, label %21
  ]

11:                                               ; preds = %8
  switch i32 %3, label %12 [
    i32 1, label %29
    i32 2, label %29
    i32 4, label %29
    i32 8, label %29
    i32 16, label %29
  ]

12:                                               ; preds = %11
  tail call void @png_error(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0)) #13
  unreachable

13:                                               ; preds = %8
  switch i32 %3, label %14 [
    i32 16, label %29
    i32 8, label %29
  ]

14:                                               ; preds = %13
  tail call void @png_error(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)) #13
  unreachable

15:                                               ; preds = %8
  %16 = add i32 %3, -1
  %17 = icmp ult i32 %16, 8
  br i1 %17, label %24, label %18

18:                                               ; preds = %24, %15
  tail call void @png_error(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0)) #13
  unreachable

19:                                               ; preds = %8
  switch i32 %3, label %20 [
    i32 16, label %29
    i32 8, label %29
  ]

20:                                               ; preds = %19
  tail call void @png_error(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0)) #13
  unreachable

21:                                               ; preds = %8
  switch i32 %3, label %22 [
    i32 16, label %29
    i32 8, label %29
  ]

22:                                               ; preds = %21
  tail call void @png_error(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)) #13
  unreachable

23:                                               ; preds = %8
  tail call void @png_error(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #13
  unreachable

24:                                               ; preds = %15
  %25 = trunc i32 %16 to i8
  %26 = lshr i8 -117, %25
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %18, label %29

29:                                               ; preds = %24, %21, %21, %19, %19, %13, %13, %11, %11, %11, %11, %11
  %30 = phi i8 [ 1, %11 ], [ 1, %11 ], [ 1, %11 ], [ 1, %11 ], [ 1, %11 ], [ 3, %13 ], [ 3, %13 ], [ 2, %19 ], [ 2, %19 ], [ 4, %21 ], [ 4, %21 ], [ 1, %24 ]
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 51
  store i8 %30, i8* %31, align 1, !tbaa !34
  %32 = icmp eq i32 %5, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0)) #12
  br label %34

34:                                               ; preds = %33, %29
  %35 = icmp eq i32 %6, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0)) #12
  br label %37

37:                                               ; preds = %36, %34
  %38 = icmp ult i32 %7, 2
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0)) #12
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ 1, %39 ], [ %7, %37 ]
  %42 = trunc i32 %3 to i8
  %43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 48
  store i8 %42, i8* %43, align 8, !tbaa !35
  %44 = trunc i32 %4 to i8
  %45 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 47
  store i8 %44, i8* %45, align 1, !tbaa !36
  %46 = trunc i32 %41 to i8
  %47 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 44
  store i8 %46, i8* %47, align 4, !tbaa !37
  %48 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 72
  store i8 0, i8* %48, align 8, !tbaa !38
  %49 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  store i32 %1, i32* %49, align 4, !tbaa !39
  %50 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  store i32 %2, i32* %50, align 8, !tbaa !40
  %51 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 51
  %52 = load i8, i8* %51, align 1, !tbaa !34
  %53 = mul i8 %52, %42
  %54 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 50
  store i8 %53, i8* %54, align 2, !tbaa !41
  %55 = icmp ugt i8 %53, 7
  %56 = zext i32 %1 to i64
  br i1 %55, label %57, label %61

57:                                               ; preds = %40
  %58 = lshr i8 %53, 3
  %59 = zext i8 %58 to i64
  %60 = mul nuw nsw i64 %59, %56
  br label %66

61:                                               ; preds = %40
  %62 = zext i8 %53 to i64
  %63 = mul nuw nsw i64 %62, %56
  %64 = add nuw nsw i64 %63, 7
  %65 = lshr i64 %64, 3
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i64 [ %60, %57 ], [ %65, %61 ]
  %68 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 27
  store i64 %67, i64* %68, align 8, !tbaa !42
  %69 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 26
  store i32 %1, i32* %69, align 8, !tbaa !43
  %70 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 49
  store i8 %42, i8* %70, align 1, !tbaa !44
  %71 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 52
  store i8 %52, i8* %71, align 4, !tbaa !45
  %72 = lshr i32 %1, 24
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %10, align 1, !tbaa !3
  %74 = lshr i32 %1, 16
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 1
  store i8 %75, i8* %76, align 1, !tbaa !3
  %77 = lshr i32 %1, 8
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 2
  store i8 %78, i8* %79, align 1, !tbaa !3
  %80 = trunc i32 %1 to i8
  %81 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 3
  store i8 %80, i8* %81, align 1, !tbaa !3
  %82 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 4
  %83 = lshr i32 %2, 24
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %82, align 1, !tbaa !3
  %85 = lshr i32 %2, 16
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 5
  store i8 %86, i8* %87, align 1, !tbaa !3
  %88 = lshr i32 %2, 8
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 6
  store i8 %89, i8* %90, align 1, !tbaa !3
  %91 = trunc i32 %2 to i8
  %92 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 7
  store i8 %91, i8* %92, align 1, !tbaa !3
  %93 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 8
  store i8 %42, i8* %93, align 1, !tbaa !3
  %94 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 9
  store i8 %44, i8* %94, align 1, !tbaa !3
  %95 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 10
  store i8 0, i8* %95, align 1, !tbaa !3
  %96 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 11
  store i8 0, i8* %96, align 1, !tbaa !3
  %97 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 12
  store i8 %46, i8* %97, align 1, !tbaa !3
  call fastcc void @png_write_complete_chunk(%struct.png_struct_def* noundef nonnull %0, i32 noundef 1229472850, i8* noundef nonnull %10, i64 noundef 13)
  %98 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 46
  %99 = load i8, i8* %98, align 2, !tbaa !46
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %66
  %102 = load i8, i8* %45, align 1, !tbaa !36
  %103 = icmp eq i8 %102, 3
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i8, i8* %43, align 8, !tbaa !35
  %106 = icmp ult i8 %105, 8
  %107 = select i1 %106, i8 8, i8 -8
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i8 [ 8, %101 ], [ %107, %104 ]
  store i8 %109, i8* %98, align 2, !tbaa !46
  br label %110

110:                                              ; preds = %108, %66
  %111 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  store i32 1, i32* %111, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %10) #12
  ret void
}

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local void @png_warning(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_write_PLTE(%struct.png_struct_def* noalias noundef %0, %struct.png_color_struct* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [4 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca [3 x i8], align 1
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %7) #12
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 47
  %9 = load i8, i8* %8, align 1, !tbaa !36
  %10 = icmp eq i8 %9, 3
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 48
  %13 = load i8, i8* %12, align 8, !tbaa !35
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  %16 = icmp eq i32 %2, 0
  %17 = icmp ult i32 %15, %2
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %22, label %28

19:                                               ; preds = %3
  %20 = add i32 %2, -257
  %21 = icmp ult i32 %20, -256
  br i1 %21, label %23, label %24

22:                                               ; preds = %11
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0)) #13
  unreachable

23:                                               ; preds = %19
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0)) #12
  br label %80

24:                                               ; preds = %19
  %25 = and i8 %9, 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0)) #12
  br label %80

28:                                               ; preds = %11, %24
  %29 = trunc i32 %2 to i16
  %30 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 39
  store i16 %29, i16* %30, align 8, !tbaa !47
  %31 = mul i32 %2, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #12, !noalias !48
  %33 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  store i32 34, i32* %33, align 4, !tbaa !6, !alias.scope !48
  %34 = lshr i32 %31, 24
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %32, align 1, !tbaa !3, !noalias !48
  %36 = lshr i32 %31, 16
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 1
  store i8 %37, i8* %38, align 1, !tbaa !3, !noalias !48
  %39 = lshr i32 %31, 8
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2
  store i8 %40, i8* %41, align 1, !tbaa !3, !noalias !48
  %42 = trunc i32 %31 to i8
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 3
  store i8 %42, i8* %43, align 1, !tbaa !3, !noalias !48
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  store i8 80, i8* %44, align 1, !tbaa !3, !noalias !48
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 5
  store i8 76, i8* %45, align 1, !tbaa !3, !noalias !48
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 6
  store i8 84, i8* %46, align 1, !tbaa !3, !noalias !48
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 7
  store i8 69, i8* %47, align 1, !tbaa !3, !noalias !48
  call void @png_write_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %32, i64 noundef 8) #12
  %48 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  store i32 1347179589, i32* %48, align 8, !tbaa !21, !alias.scope !48
  call void @png_reset_crc(%struct.png_struct_def* noundef nonnull %0) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %44, i64 noundef 4) #12
  store i32 66, i32* %33, align 4, !tbaa !6, !alias.scope !48
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #12, !noalias !48
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  br label %51

51:                                               ; preds = %28, %51
  %52 = phi %struct.png_color_struct* [ %1, %28 ], [ %61, %51 ]
  %53 = phi i32 [ 0, %28 ], [ %60, %51 ]
  %54 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %52, i64 0, i32 0
  %55 = load i8, i8* %54, align 1, !tbaa !51
  store i8 %55, i8* %7, align 1, !tbaa !3
  %56 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %52, i64 0, i32 1
  %57 = load i8, i8* %56, align 1, !tbaa !53
  store i8 %57, i8* %49, align 1, !tbaa !3
  %58 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %52, i64 0, i32 2
  %59 = load i8, i8* %58, align 1, !tbaa !54
  store i8 %59, i8* %50, align 1, !tbaa !3
  call void @png_write_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %7, i64 noundef 3) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %7, i64 noundef 3) #12
  %60 = add nuw i32 %53, 1
  %61 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %52, i64 1
  %62 = icmp eq i32 %60, %2
  br i1 %62, label %63, label %51, !llvm.loop !55

63:                                               ; preds = %51
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %64) #12, !noalias !56
  store i32 130, i32* %33, align 4, !tbaa !6, !alias.scope !56
  %65 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 37
  %66 = load i32, i32* %65, align 4, !tbaa !22, !alias.scope !56
  %67 = lshr i32 %66, 24
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %64, align 1, !tbaa !3, !noalias !56
  %69 = lshr i32 %66, 16
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  store i8 %70, i8* %71, align 1, !tbaa !3, !noalias !56
  %72 = lshr i32 %66, 8
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %73, i8* %74, align 1, !tbaa !3, !noalias !56
  %75 = trunc i32 %66 to i8
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  store i8 %75, i8* %76, align 1, !tbaa !3, !noalias !56
  call void @png_write_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %64, i64 noundef 4) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %64) #12, !noalias !56
  %77 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %78 = load i32, i32* %77, align 8, !tbaa !17
  %79 = or i32 %78, 2
  store i32 %79, i32* %77, align 8, !tbaa !17
  br label %80

80:                                               ; preds = %63, %27, %23
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %7) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_compress_IDAT(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 9
  %7 = load i32, i32* %6, align 4, !tbaa !59
  %8 = icmp eq i32 %7, 1229209940
  br i1 %8, label %159, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 11
  %11 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %10, align 8, !tbaa !60
  %12 = icmp eq %struct.png_compression_buffer* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 12
  %15 = load i32, i32* %14, align 8, !tbaa !61
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %16, 8
  %18 = tail call noalias i8* @png_malloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef %17) #12
  %19 = bitcast %struct.png_compression_buffer** %10 to i8**
  store i8* %18, i8** %19, align 8, !tbaa !60
  %20 = bitcast i8* %18 to %struct.png_compression_buffer**
  store %struct.png_compression_buffer* null, %struct.png_compression_buffer** %20, align 8, !tbaa !30
  br label %32

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %11, i64 0, i32 0
  %23 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %22, align 8, !tbaa !29, !noalias !62
  %24 = icmp eq %struct.png_compression_buffer* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  store %struct.png_compression_buffer* null, %struct.png_compression_buffer** %22, align 8, !tbaa !29, !noalias !62
  br label %26

26:                                               ; preds = %26, %25
  %27 = phi %struct.png_compression_buffer* [ %23, %25 ], [ %29, %26 ]
  %28 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %27, i64 0, i32 0
  %29 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %28, align 8, !tbaa !30
  %30 = bitcast %struct.png_compression_buffer* %27 to i8*
  tail call void @png_free(%struct.png_struct_def* noundef %0, i8* noundef %30) #12
  %31 = icmp eq %struct.png_compression_buffer* %29, null
  br i1 %31, label %32, label %26, !llvm.loop !32

32:                                               ; preds = %26, %21, %13
  %33 = tail call fastcc i64 @png_image_size(%struct.png_struct_def* noundef %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %34 = load i32, i32* %6, align 4, !tbaa !59, !alias.scope !65
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %37) #12, !noalias !65
  store i8 73, i8* %37, align 16, !tbaa !3, !noalias !65
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 1
  store i8 68, i8* %38, align 1, !tbaa !3, !noalias !65
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 2
  store i8 65, i8* %39, align 2, !tbaa !3, !noalias !65
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 3
  store i8 84, i8* %40, align 1, !tbaa !3, !noalias !65
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 4
  store i8 58, i8* %41, align 4, !tbaa !3, !noalias !65
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 5
  store i8 32, i8* %42, align 1, !tbaa !3, !noalias !65
  %43 = lshr i32 %34, 24
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 6
  store i8 %44, i8* %45, align 2, !tbaa !3, !noalias !65
  %46 = lshr i32 %34, 16
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 7
  store i8 %47, i8* %48, align 1, !tbaa !3, !noalias !65
  %49 = lshr i32 %34, 8
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 8
  store i8 %50, i8* %51, align 8, !tbaa !3, !noalias !65
  %52 = trunc i32 %34 to i8
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 9
  store i8 %52, i8* %53, align 1, !tbaa !3, !noalias !65
  %54 = call i64 @png_safecat(i8* noundef nonnull %37, i64 noundef 64, i64 noundef 10, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #12
  call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %37) #12
  %55 = load i32, i32* %6, align 4, !tbaa !59, !alias.scope !65
  %56 = icmp eq i32 %55, 1229209940
  br i1 %56, label %58, label %57

57:                                               ; preds = %36
  store i32 0, i32* %6, align 4, !tbaa !59, !alias.scope !65
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %37) #12, !noalias !65
  br label %60

58:                                               ; preds = %36
  %59 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 6
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8** %59, align 8, !tbaa !68, !alias.scope !65
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %37) #12, !noalias !65
  br label %152

60:                                               ; preds = %57, %32
  %61 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 13
  %62 = load i32, i32* %61, align 4, !tbaa !69, !alias.scope !65
  %63 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 14
  %64 = load i32, i32* %63, align 8, !tbaa !70, !alias.scope !65
  %65 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 15
  %66 = load i32, i32* %65, align 4, !tbaa !71, !alias.scope !65
  %67 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 16
  %68 = load i32, i32* %67, align 8, !tbaa !72, !alias.scope !65
  %69 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %70 = load i32, i32* %69, align 4, !tbaa !73, !alias.scope !65
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 17
  %75 = load i32, i32* %74, align 4, !tbaa !74, !alias.scope !65
  br label %81

76:                                               ; preds = %60
  %77 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 46
  %78 = load i8, i8* %77, align 2, !tbaa !46, !alias.scope !65
  %79 = icmp ne i8 %78, 8
  %80 = zext i1 %79 to i32
  br label %81

81:                                               ; preds = %76, %73
  %82 = phi i32 [ %75, %73 ], [ %80, %76 ]
  %83 = icmp ult i64 %33, 16385
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = add nsw i32 %66, -1
  %86 = shl nuw i32 1, %85
  %87 = add nuw nsw i64 %33, 262
  %88 = zext i32 %86 to i64
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %84
  %91 = trunc i64 %87 to i32
  br label %92

92:                                               ; preds = %92, %90
  %93 = phi i32 [ %95, %92 ], [ %86, %90 ]
  %94 = phi i32 [ %96, %92 ], [ %66, %90 ]
  %95 = lshr i32 %93, 1
  %96 = add nsw i32 %94, -1
  %97 = icmp ult i32 %95, %91
  br i1 %97, label %98, label %92, !llvm.loop !75

98:                                               ; preds = %92, %84, %81
  %99 = phi i32 [ %66, %81 ], [ %66, %84 ], [ %96, %92 ]
  %100 = and i32 %70, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 18
  %104 = load i32, i32* %103, align 8, !tbaa !76, !alias.scope !65
  %105 = icmp eq i32 %104, %62
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 19
  %108 = load i32, i32* %107, align 4, !tbaa !77, !alias.scope !65
  %109 = icmp eq i32 %108, %64
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 20
  %112 = load i32, i32* %111, align 8, !tbaa !78, !alias.scope !65
  %113 = icmp eq i32 %112, %99
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 21
  %116 = load i32, i32* %115, align 4, !tbaa !79, !alias.scope !65
  %117 = icmp eq i32 %116, %68
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 22
  %120 = load i32, i32* %119, align 8, !tbaa !80, !alias.scope !65
  %121 = icmp eq i32 %120, %82
  br i1 %121, label %130, label %122

122:                                              ; preds = %118, %114, %110, %106, %102
  %123 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10
  %124 = call i32 @deflateEnd(%struct.z_stream_s* noundef nonnull %123) #12
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0)) #12
  br label %127

127:                                              ; preds = %126, %122
  %128 = load i32, i32* %69, align 4, !tbaa !73, !alias.scope !65
  %129 = and i32 %128, -3
  store i32 %129, i32* %69, align 4, !tbaa !73, !alias.scope !65
  br label %130

130:                                              ; preds = %127, %118, %98
  %131 = phi i32 [ %129, %127 ], [ %70, %118 ], [ %70, %98 ]
  %132 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10
  %133 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %132, i64 0, i32 0
  store i8* null, i8** %133, align 8, !tbaa !81, !alias.scope !65
  %134 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 1
  store i32 0, i32* %134, align 8, !tbaa !82, !alias.scope !65
  %135 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 3
  store i8* null, i8** %135, align 8, !tbaa !83, !alias.scope !65
  %136 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 4
  store i32 0, i32* %136, align 8, !tbaa !84, !alias.scope !65
  %137 = and i32 %131, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %130
  %140 = call i32 @deflateInit2_(%struct.z_stream_s* noundef nonnull %132, i32 noundef %62, i32 noundef %64, i32 noundef %99, i32 noundef %68, i32 noundef %82, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 noundef 112) #12
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32, i32* %69, align 4, !tbaa !73, !alias.scope !65
  %144 = or i32 %143, 2
  store i32 %144, i32* %69, align 4, !tbaa !73, !alias.scope !65
  br label %154

145:                                              ; preds = %130
  %146 = call i32 @deflateReset(%struct.z_stream_s* noundef nonnull %132) #12
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %145, %139
  %149 = phi i32 [ %146, %145 ], [ %140, %139 ]
  call void @png_zstream_error(%struct.png_struct_def* noundef nonnull %0, i32 noundef %149) #12
  %150 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 6
  %151 = load i8*, i8** %150, align 8, !tbaa !68
  br label %152

152:                                              ; preds = %58, %148
  %153 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), %58 ], [ %151, %148 ]
  call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef %153) #13
  unreachable

154:                                              ; preds = %145, %142
  store i32 1229209940, i32* %6, align 4, !tbaa !59, !alias.scope !65
  %155 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %10, align 8, !tbaa !60
  %156 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %155, i64 0, i32 1, i64 0
  store i8* %156, i8** %135, align 8, !tbaa !83
  %157 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 12
  %158 = load i32, i32* %157, align 8, !tbaa !61
  store i32 %158, i32* %136, align 8, !tbaa !84
  br label %159

159:                                              ; preds = %154, %4
  %160 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10
  %161 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %160, i64 0, i32 0
  store i8* %1, i8** %161, align 8, !tbaa !81
  %162 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 1
  %163 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 4
  %164 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 11
  %165 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 12
  %166 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %167 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 72
  %168 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 3
  %169 = icmp ne i32 %3, 0
  br label %170

170:                                              ; preds = %244, %159
  %171 = phi i64 [ %2, %159 ], [ %181, %244 ]
  %172 = icmp ult i64 %171, 4294967295
  %173 = select i1 %172, i64 %171, i64 4294967295
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %162, align 8, !tbaa !82
  %175 = sub i64 %171, %173
  %176 = icmp eq i64 %175, 0
  %177 = select i1 %176, i32 %3, i32 0
  %178 = call i32 @deflate(%struct.z_stream_s* noundef nonnull %160, i32 noundef %177) #12
  %179 = load i32, i32* %162, align 8, !tbaa !82
  %180 = zext i32 %179 to i64
  %181 = add i64 %175, %180
  store i32 0, i32* %162, align 8, !tbaa !82
  %182 = load i32, i32* %163, align 8, !tbaa !84
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %239

184:                                              ; preds = %170
  %185 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %164, align 8, !tbaa !60
  %186 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %185, i64 0, i32 1, i64 0
  %187 = load i32, i32* %165, align 8, !tbaa !61
  %188 = load i32, i32* %166, align 8, !tbaa !17
  %189 = and i32 %188, 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %233

191:                                              ; preds = %184
  %192 = load i8, i8* %167, align 8, !tbaa !38
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %233

194:                                              ; preds = %191
  %195 = call fastcc i64 @png_image_size(%struct.png_struct_def* noundef nonnull %0)
  %196 = icmp ult i64 %195, 16385
  br i1 %196, label %197, label %233

197:                                              ; preds = %194
  %198 = load i8, i8* %186, align 1, !tbaa !3
  %199 = zext i8 %198 to i32
  %200 = and i32 %199, 15
  %201 = icmp eq i32 %200, 8
  %202 = and i32 %199, 240
  %203 = icmp ult i32 %202, 113
  %204 = and i1 %201, %203
  br i1 %204, label %205, label %233

205:                                              ; preds = %197
  %206 = lshr i32 %199, 4
  %207 = shl nuw nsw i32 128, %206
  %208 = zext i32 %207 to i64
  %209 = icmp ugt i64 %195, %208
  br i1 %209, label %233, label %210

210:                                              ; preds = %205, %210
  %211 = phi i32 [ %214, %210 ], [ %206, %205 ]
  %212 = phi i32 [ %213, %210 ], [ %207, %205 ]
  %213 = lshr i32 %212, 1
  %214 = add i32 %211, -1
  %215 = icmp ne i32 %214, 0
  %216 = zext i32 %213 to i64
  %217 = icmp ule i64 %195, %216
  %218 = select i1 %215, i1 %217, i1 false
  br i1 %218, label %210, label %219, !llvm.loop !85

219:                                              ; preds = %210
  %220 = shl i32 %214, 4
  %221 = or i32 %220, 8
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %186, align 1, !tbaa !3
  %223 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %185, i64 0, i32 1, i64 1
  %224 = load i8, i8* %223, align 1, !tbaa !3
  %225 = and i8 %224, -32
  %226 = zext i8 %225 to i32
  %227 = shl i32 %221, 8
  %228 = or i32 %227, %226
  %229 = urem i32 %228, 31
  %230 = trunc i32 %229 to i8
  %231 = or i8 %225, %230
  %232 = xor i8 %231, 31
  store i8 %232, i8* %223, align 1, !tbaa !3
  br label %233

233:                                              ; preds = %219, %205, %197, %194, %191, %184
  %234 = zext i32 %187 to i64
  call fastcc void @png_write_complete_chunk(%struct.png_struct_def* noundef %0, i32 noundef 1229209940, i8* noundef nonnull %186, i64 noundef %234)
  %235 = load i32, i32* %166, align 8, !tbaa !17
  %236 = or i32 %235, 4
  store i32 %236, i32* %166, align 8, !tbaa !17
  store i8* %186, i8** %168, align 8, !tbaa !83
  store i32 %187, i32* %163, align 8, !tbaa !84
  %237 = icmp eq i32 %178, 0
  %238 = and i1 %169, %237
  br i1 %238, label %244, label %239

239:                                              ; preds = %233, %170
  %240 = phi i32 [ %187, %233 ], [ %182, %170 ]
  %241 = icmp eq i32 %178, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %239
  %243 = icmp eq i64 %181, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %242, %233
  br label %170

245:                                              ; preds = %242
  %246 = icmp eq i32 %3, 4
  br i1 %246, label %247, label %309

247:                                              ; preds = %245
  call void @png_error(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #13
  unreachable

248:                                              ; preds = %239
  %249 = icmp eq i32 %178, 1
  %250 = icmp eq i32 %3, 4
  %251 = and i1 %250, %249
  br i1 %251, label %252, label %306

252:                                              ; preds = %248
  %253 = load %struct.png_compression_buffer*, %struct.png_compression_buffer** %164, align 8, !tbaa !60
  %254 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %253, i64 0, i32 1, i64 0
  %255 = load i32, i32* %165, align 8, !tbaa !61
  %256 = sub i32 %255, %240
  %257 = load i32, i32* %166, align 8, !tbaa !17
  %258 = and i32 %257, 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %302

260:                                              ; preds = %252
  %261 = load i8, i8* %167, align 8, !tbaa !38
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %302

263:                                              ; preds = %260
  %264 = call fastcc i64 @png_image_size(%struct.png_struct_def* noundef nonnull %0)
  %265 = icmp ult i64 %264, 16385
  br i1 %265, label %266, label %302

266:                                              ; preds = %263
  %267 = load i8, i8* %254, align 1, !tbaa !3
  %268 = zext i8 %267 to i32
  %269 = and i32 %268, 15
  %270 = icmp eq i32 %269, 8
  %271 = and i32 %268, 240
  %272 = icmp ult i32 %271, 113
  %273 = and i1 %270, %272
  br i1 %273, label %274, label %302

274:                                              ; preds = %266
  %275 = lshr i32 %268, 4
  %276 = shl nuw nsw i32 128, %275
  %277 = zext i32 %276 to i64
  %278 = icmp ugt i64 %264, %277
  br i1 %278, label %302, label %279

279:                                              ; preds = %274, %279
  %280 = phi i32 [ %283, %279 ], [ %275, %274 ]
  %281 = phi i32 [ %282, %279 ], [ %276, %274 ]
  %282 = lshr i32 %281, 1
  %283 = add i32 %280, -1
  %284 = icmp ne i32 %283, 0
  %285 = zext i32 %282 to i64
  %286 = icmp ule i64 %264, %285
  %287 = select i1 %284, i1 %286, i1 false
  br i1 %287, label %279, label %288, !llvm.loop !85

288:                                              ; preds = %279
  %289 = shl i32 %283, 4
  %290 = or i32 %289, 8
  %291 = trunc i32 %290 to i8
  store i8 %291, i8* %254, align 1, !tbaa !3
  %292 = getelementptr inbounds %struct.png_compression_buffer, %struct.png_compression_buffer* %253, i64 0, i32 1, i64 1
  %293 = load i8, i8* %292, align 1, !tbaa !3
  %294 = and i8 %293, -32
  %295 = zext i8 %294 to i32
  %296 = shl i32 %290, 8
  %297 = or i32 %296, %295
  %298 = urem i32 %297, 31
  %299 = trunc i32 %298 to i8
  %300 = or i8 %294, %299
  %301 = xor i8 %300, 31
  store i8 %301, i8* %292, align 1, !tbaa !3
  br label %302

302:                                              ; preds = %288, %274, %266, %263, %260, %252
  %303 = zext i32 %256 to i64
  call fastcc void @png_write_complete_chunk(%struct.png_struct_def* noundef %0, i32 noundef 1229209940, i8* noundef nonnull %254, i64 noundef %303)
  store i32 0, i32* %163, align 8, !tbaa !84
  store i8* null, i8** %168, align 8, !tbaa !83
  %304 = load i32, i32* %166, align 8, !tbaa !17
  %305 = or i32 %304, 12
  store i32 %305, i32* %166, align 8, !tbaa !17
  store i32 0, i32* %6, align 4, !tbaa !59
  br label %309

306:                                              ; preds = %248
  call void @png_zstream_error(%struct.png_struct_def* noundef %0, i32 noundef %178) #12
  %307 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 6
  %308 = load i8*, i8** %307, align 8, !tbaa !68
  call void @png_error(%struct.png_struct_def* noundef %0, i8* noundef %308) #13
  unreachable

309:                                              ; preds = %245, %302
  ret void
}

declare dso_local noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define internal fastcc i64 @png_image_size(%struct.png_struct_def* noalias nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  %3 = load i32, i32* %2, align 8, !tbaa !40
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 27
  %5 = load i64, i64* %4, align 8, !tbaa !42
  %6 = icmp ult i64 %5, 32768
  %7 = icmp ult i32 %3, 32768
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %149

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 44
  %11 = load i8, i8* %10, align 4, !tbaa !37
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %145, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %15 = load i32, i32* %14, align 4, !tbaa !39
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 50
  %17 = load i8, i8* %16, align 2, !tbaa !41
  %18 = icmp ugt i8 %17, 7
  %19 = zext i8 %17 to i64
  %20 = lshr i8 %17, 3
  %21 = zext i8 %20 to i64
  %22 = add i32 %15, 7
  %23 = icmp ult i32 %22, 8
  br i1 %23, label %37, label %24

24:                                               ; preds = %13
  %25 = lshr i32 %22, 3
  %26 = zext i32 %25 to i64
  %27 = mul nuw nsw i64 %26, %21
  %28 = mul nuw nsw i64 %26, %19
  %29 = add nuw nsw i64 %28, 7
  %30 = lshr i64 %29, 3
  %31 = select i1 %18, i64 %27, i64 %30
  %32 = add nuw nsw i64 %31, 1
  %33 = add nuw nsw i32 %3, 7
  %34 = lshr i32 %33, 3
  %35 = zext i32 %34 to i64
  %36 = mul nuw nsw i64 %32, %35
  br label %37

37:                                               ; preds = %24, %13
  %38 = phi i64 [ %36, %24 ], [ 0, %13 ]
  %39 = add i32 %15, 3
  %40 = icmp ult i32 %39, 8
  br i1 %40, label %56, label %41

41:                                               ; preds = %37
  %42 = lshr i32 %39, 3
  %43 = zext i32 %42 to i64
  %44 = mul nuw nsw i64 %43, %21
  %45 = mul nuw nsw i64 %43, %19
  %46 = add nuw nsw i64 %45, 7
  %47 = lshr i64 %46, 3
  %48 = select i1 %18, i64 %44, i64 %47
  %49 = add nuw nsw i64 %48, 1
  %50 = add nuw nsw i32 %3, 7
  %51 = lshr i32 %50, 3
  %52 = zext i32 %51 to i64
  %53 = mul nuw nsw i64 %49, %52
  %54 = add nuw nsw i64 %53, %38
  %55 = add nuw i32 %15, 3
  br label %59

56:                                               ; preds = %37
  %57 = add nsw i32 %15, 3
  %58 = icmp ult i32 %57, 4
  br i1 %58, label %75, label %59

59:                                               ; preds = %41, %56
  %60 = phi i32 [ %55, %41 ], [ %57, %56 ]
  %61 = phi i64 [ %54, %41 ], [ %38, %56 ]
  %62 = lshr i32 %60, 2
  %63 = zext i32 %62 to i64
  %64 = mul nuw nsw i64 %63, %21
  %65 = mul nuw nsw i64 %63, %19
  %66 = add nuw nsw i64 %65, 7
  %67 = lshr i64 %66, 3
  %68 = select i1 %18, i64 %64, i64 %67
  %69 = add nuw nsw i64 %68, 1
  %70 = add nuw nsw i32 %3, 3
  %71 = lshr i32 %70, 3
  %72 = zext i32 %71 to i64
  %73 = mul nuw nsw i64 %69, %72
  %74 = add nuw nsw i64 %73, %61
  br label %75

75:                                               ; preds = %59, %56
  %76 = phi i64 [ %74, %59 ], [ %38, %56 ]
  %77 = add i32 %15, 1
  %78 = icmp ult i32 %77, 4
  br i1 %78, label %94, label %79

79:                                               ; preds = %75
  %80 = lshr i32 %77, 2
  %81 = zext i32 %80 to i64
  %82 = mul nuw nsw i64 %81, %21
  %83 = mul nuw nsw i64 %81, %19
  %84 = add nuw nsw i64 %83, 7
  %85 = lshr i64 %84, 3
  %86 = select i1 %18, i64 %82, i64 %85
  %87 = add nuw nsw i64 %86, 1
  %88 = add nuw nsw i32 %3, 3
  %89 = lshr i32 %88, 2
  %90 = zext i32 %89 to i64
  %91 = mul nuw nsw i64 %87, %90
  %92 = add nuw nsw i64 %91, %76
  %93 = add nuw i32 %15, 1
  br label %97

94:                                               ; preds = %75
  %95 = add nsw i32 %15, 1
  %96 = icmp ult i32 %95, 2
  br i1 %96, label %113, label %97

97:                                               ; preds = %79, %94
  %98 = phi i32 [ %93, %79 ], [ %95, %94 ]
  %99 = phi i64 [ %92, %79 ], [ %76, %94 ]
  %100 = lshr i32 %98, 1
  %101 = zext i32 %100 to i64
  %102 = mul nuw nsw i64 %101, %21
  %103 = mul nuw nsw i64 %101, %19
  %104 = add nuw nsw i64 %103, 7
  %105 = lshr i64 %104, 3
  %106 = select i1 %18, i64 %102, i64 %105
  %107 = add nuw nsw i64 %106, 1
  %108 = add nuw nsw i32 %3, 1
  %109 = lshr i32 %108, 2
  %110 = zext i32 %109 to i64
  %111 = mul nuw nsw i64 %107, %110
  %112 = add nuw nsw i64 %111, %99
  br label %113

113:                                              ; preds = %97, %94
  %114 = phi i64 [ %112, %97 ], [ %76, %94 ]
  %115 = icmp ult i32 %15, 2
  br i1 %115, label %130, label %116

116:                                              ; preds = %113
  %117 = lshr i32 %15, 1
  %118 = zext i32 %117 to i64
  %119 = mul nuw nsw i64 %118, %21
  %120 = mul nuw nsw i64 %118, %19
  %121 = add nuw nsw i64 %120, 7
  %122 = lshr i64 %121, 3
  %123 = select i1 %18, i64 %119, i64 %122
  %124 = add nuw nsw i64 %123, 1
  %125 = add nuw nsw i32 %3, 1
  %126 = lshr i32 %125, 1
  %127 = zext i32 %126 to i64
  %128 = mul nuw nsw i64 %124, %127
  %129 = add nuw nsw i64 %128, %114
  br label %132

130:                                              ; preds = %113
  %131 = icmp eq i32 %15, 0
  br i1 %131, label %149, label %132

132:                                              ; preds = %116, %130
  %133 = phi i64 [ %129, %116 ], [ %114, %130 ]
  %134 = zext i32 %15 to i64
  %135 = mul nuw nsw i64 %134, %21
  %136 = mul nuw nsw i64 %134, %19
  %137 = add nuw nsw i64 %136, 7
  %138 = lshr i64 %137, 3
  %139 = select i1 %18, i64 %135, i64 %138
  %140 = add nuw nsw i64 %139, 1
  %141 = lshr i32 %3, 1
  %142 = zext i32 %141 to i64
  %143 = mul nuw nsw i64 %140, %142
  %144 = add nuw nsw i64 %143, %133
  br label %149

145:                                              ; preds = %9
  %146 = add nuw nsw i64 %5, 1
  %147 = zext i32 %3 to i64
  %148 = mul nuw nsw i64 %146, %147
  br label %149

149:                                              ; preds = %130, %132, %1, %145
  %150 = phi i64 [ %148, %145 ], [ 4294967295, %1 ], [ %144, %132 ], [ %114, %130 ]
  ret i64 %150
}

declare dso_local i32 @deflate(%struct.z_stream_s* noundef, i32 noundef) local_unnamed_addr #4

declare dso_local void @png_zstream_error(%struct.png_struct_def* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_write_IEND(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @png_write_complete_chunk(%struct.png_struct_def* noundef %0, i32 noundef 1229278788, i8* noundef null, i64 noundef 0)
  %2 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %3 = load i32, i32* %2, align 8, !tbaa !17
  %4 = or i32 %3, 16
  store i32 %4, i32* %2, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_sBIT(%struct.png_struct_def* noalias noundef %0, %struct.png_color_8_struct* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [4 x i8], align 1
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #12
  %6 = and i32 %2, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 3
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 49
  %12 = load i8, i8* %11, align 1, !tbaa !44
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %8, %10
  %15 = phi i32 [ %13, %10 ], [ 8, %8 ]
  %16 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %1, i64 0, i32 0
  %17 = load i8, i8* %16, align 1, !tbaa !86
  %18 = icmp eq i8 %17, 0
  %19 = zext i8 %17 to i32
  %20 = icmp ult i32 %15, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %36, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %1, i64 0, i32 1
  %24 = load i8, i8* %23, align 1, !tbaa !87
  %25 = icmp eq i8 %24, 0
  %26 = zext i8 %24 to i32
  %27 = icmp ult i32 %15, %26
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %1, i64 0, i32 2
  %31 = load i8, i8* %30, align 1, !tbaa !88
  %32 = icmp eq i8 %31, 0
  %33 = zext i8 %31 to i32
  %34 = icmp ult i32 %15, %33
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %22, %14
  tail call void @png_warning(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0)) #12
  br label %68

37:                                               ; preds = %29
  store i8 %17, i8* %5, align 1, !tbaa !3
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  store i8 %24, i8* %38, align 1, !tbaa !3
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %31, i8* %39, align 1, !tbaa !3
  br label %50

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %1, i64 0, i32 3
  %42 = load i8, i8* %41, align 1, !tbaa !89
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 49
  %46 = load i8, i8* %45, align 1, !tbaa !44
  %47 = icmp ugt i8 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40
  tail call void @png_warning(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0)) #12
  br label %68

49:                                               ; preds = %44
  store i8 %42, i8* %5, align 1, !tbaa !3
  br label %50

50:                                               ; preds = %37, %49
  %51 = phi i64 [ 1, %49 ], [ 3, %37 ]
  %52 = and i32 %2, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.png_color_8_struct, %struct.png_color_8_struct* %1, i64 0, i32 4
  %56 = load i8, i8* %55, align 1, !tbaa !90
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 49
  %60 = load i8, i8* %59, align 1, !tbaa !44
  %61 = icmp ugt i8 %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54
  tail call void @png_warning(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0)) #12
  br label %68

63:                                               ; preds = %58
  %64 = add nuw nsw i64 %51, 1
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 %51
  store i8 %56, i8* %65, align 1, !tbaa !3
  br label %66

66:                                               ; preds = %63, %50
  %67 = phi i64 [ %64, %63 ], [ %51, %50 ]
  call fastcc void @png_write_complete_chunk(%struct.png_struct_def* noundef %0, i32 noundef 1933723988, i8* noundef nonnull %5, i64 noundef %67)
  br label %68

68:                                               ; preds = %36, %66, %62, %48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_tRNS(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, %struct.png_color_16_struct* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [6 x i8], align 1
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %7) #12
  switch i32 %4, label %63 [
    i32 3, label %8
    i32 0, label %18
    i32 2, label %33
  ]

8:                                                ; preds = %5
  %9 = icmp slt i32 %3, 1
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 39
  %12 = load i16, i16* %11, align 8, !tbaa !47
  %13 = zext i16 %12 to i32
  %14 = icmp ult i32 %13, %3
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %8
  tail call void @png_app_warning(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0)) #12
  br label %64

16:                                               ; preds = %10
  %17 = zext i32 %3 to i64
  tail call fastcc void @png_write_complete_chunk(%struct.png_struct_def* noundef nonnull %0, i32 noundef 1951551059, i8* noundef %1, i64 noundef %17)
  br label %64

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %2, i64 0, i32 4
  %20 = load i16, i16* %19, align 2, !tbaa !91
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 48
  %23 = load i8, i8* %22, align 8, !tbaa !35
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 1, %24
  %26 = icmp sgt i32 %25, %21
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  tail call void @png_app_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.14, i64 0, i64 0)) #12
  br label %64

28:                                               ; preds = %18
  %29 = lshr i16 %20, 8
  %30 = trunc i16 %29 to i8
  store i8 %30, i8* %7, align 1, !tbaa !3
  %31 = trunc i16 %20 to i8
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 1
  store i8 %31, i8* %32, align 1, !tbaa !3
  call fastcc void @png_write_complete_chunk(%struct.png_struct_def* noundef nonnull %0, i32 noundef 1951551059, i8* noundef nonnull %7, i64 noundef 2)
  br label %64

33:                                               ; preds = %5
  %34 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %2, i64 0, i32 1
  %35 = load i16, i16* %34, align 2, !tbaa !92
  %36 = lshr i16 %35, 8
  %37 = trunc i16 %36 to i8
  store i8 %37, i8* %7, align 1, !tbaa !3
  %38 = trunc i16 %35 to i8
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 1
  store i8 %38, i8* %39, align 1, !tbaa !3
  %40 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 2
  %41 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %2, i64 0, i32 2
  %42 = load i16, i16* %41, align 2, !tbaa !93
  %43 = lshr i16 %42, 8
  %44 = trunc i16 %43 to i8
  store i8 %44, i8* %40, align 1, !tbaa !3
  %45 = trunc i16 %42 to i8
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 3
  store i8 %45, i8* %46, align 1, !tbaa !3
  %47 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 4
  %48 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %2, i64 0, i32 3
  %49 = load i16, i16* %48, align 2, !tbaa !94
  %50 = lshr i16 %49, 8
  %51 = trunc i16 %50 to i8
  store i8 %51, i8* %47, align 1, !tbaa !3
  %52 = trunc i16 %49 to i8
  %53 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 5
  store i8 %52, i8* %53, align 1, !tbaa !3
  %54 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 48
  %55 = load i8, i8* %54, align 8, !tbaa !35
  %56 = icmp eq i8 %55, 8
  br i1 %56, label %57, label %62

57:                                               ; preds = %33
  %58 = or i16 %43, %36
  %59 = or i16 %58, %50
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @png_app_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0)) #12
  br label %64

62:                                               ; preds = %57, %33
  call fastcc void @png_write_complete_chunk(%struct.png_struct_def* noundef nonnull %0, i32 noundef 1951551059, i8* noundef nonnull %7, i64 noundef 6)
  br label %64

63:                                               ; preds = %5
  tail call void @png_app_warning(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0)) #12
  br label %64

64:                                               ; preds = %16, %62, %63, %28, %61, %27, %15
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %7) #12
  ret void
}

declare dso_local void @png_app_warning(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_write_bKGD(%struct.png_struct_def* noalias noundef %0, %struct.png_color_16_struct* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [6 x i8], align 1
  %5 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #12
  %6 = icmp eq i32 %2, 3
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %1, i64 0, i32 0
  %9 = load i8, i8* %8, align 2, !tbaa !95
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 39
  %11 = load i16, i16* %10, align 8, !tbaa !47
  %12 = zext i8 %9 to i16
  %13 = icmp ugt i16 %11, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0)) #12
  br label %64

15:                                               ; preds = %7
  store i8 %9, i8* %5, align 1, !tbaa !3
  call fastcc void @png_write_complete_chunk(%struct.png_struct_def* noundef nonnull %0, i32 noundef 1649100612, i8* noundef nonnull %5, i64 noundef 1)
  br label %64

16:                                               ; preds = %3
  %17 = and i32 %2, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %1, i64 0, i32 1
  %21 = load i16, i16* %20, align 2, !tbaa !92
  %22 = lshr i16 %21, 8
  %23 = trunc i16 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !3
  %24 = trunc i16 %21 to i8
  %25 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %24, i8* %25, align 1, !tbaa !3
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  %27 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %1, i64 0, i32 2
  %28 = load i16, i16* %27, align 2, !tbaa !93
  %29 = lshr i16 %28, 8
  %30 = trunc i16 %29 to i8
  store i8 %30, i8* %26, align 1, !tbaa !3
  %31 = trunc i16 %28 to i8
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  store i8 %31, i8* %32, align 1, !tbaa !3
  %33 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  %34 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %1, i64 0, i32 3
  %35 = load i16, i16* %34, align 2, !tbaa !94
  %36 = lshr i16 %35, 8
  %37 = trunc i16 %36 to i8
  store i8 %37, i8* %33, align 1, !tbaa !3
  %38 = trunc i16 %35 to i8
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  store i8 %38, i8* %39, align 1, !tbaa !3
  %40 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 48
  %41 = load i8, i8* %40, align 8, !tbaa !35
  %42 = icmp eq i8 %41, 8
  br i1 %42, label %43, label %48

43:                                               ; preds = %19
  %44 = or i16 %29, %22
  %45 = or i16 %44, %36
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0)) #12
  br label %64

48:                                               ; preds = %43, %19
  call fastcc void @png_write_complete_chunk(%struct.png_struct_def* noundef nonnull %0, i32 noundef 1649100612, i8* noundef nonnull %5, i64 noundef 6)
  br label %64

49:                                               ; preds = %16
  %50 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %1, i64 0, i32 4
  %51 = load i16, i16* %50, align 2, !tbaa !91
  %52 = zext i16 %51 to i32
  %53 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 48
  %54 = load i8, i8* %53, align 8, !tbaa !35
  %55 = zext i8 %54 to i32
  %56 = shl nuw i32 1, %55
  %57 = icmp sgt i32 %56, %52
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0)) #12
  br label %64

59:                                               ; preds = %49
  %60 = lshr i16 %51, 8
  %61 = trunc i16 %60 to i8
  store i8 %61, i8* %5, align 1, !tbaa !3
  %62 = trunc i16 %51 to i8
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %62, i8* %63, align 1, !tbaa !3
  call fastcc void @png_write_complete_chunk(%struct.png_struct_def* noundef nonnull %0, i32 noundef 1649100612, i8* noundef nonnull %5, i64 noundef 2)
  br label %64

64:                                               ; preds = %15, %59, %48, %58, %47, %14
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_hIST(%struct.png_struct_def* noalias noundef %0, i16* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [4 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca [3 x i8], align 1
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %7) #12
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 39
  %9 = load i16, i16* %8, align 8, !tbaa !47
  %10 = zext i16 %9 to i32
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #12
  br label %59

13:                                               ; preds = %3
  %14 = shl nsw i32 %2, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #12, !noalias !96
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 82
  store i32 34, i32* %16, align 4, !tbaa !6, !alias.scope !96
  %17 = lshr i32 %14, 24
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %15, align 1, !tbaa !3, !noalias !96
  %19 = lshr i32 %14, 16
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 1
  store i8 %20, i8* %21, align 1, !tbaa !3, !noalias !96
  %22 = lshr i32 %14, 8
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2
  store i8 %23, i8* %24, align 1, !tbaa !3, !noalias !96
  %25 = trunc i32 %14 to i8
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 3
  store i8 %25, i8* %26, align 1, !tbaa !3, !noalias !96
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  store i8 104, i8* %27, align 1, !tbaa !3, !noalias !96
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 5
  store i8 73, i8* %28, align 1, !tbaa !3, !noalias !96
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 6
  store i8 83, i8* %29, align 1, !tbaa !3, !noalias !96
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 7
  store i8 84, i8* %30, align 1, !tbaa !3, !noalias !96
  call void @png_write_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %15, i64 noundef 8) #12
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  store i32 1749635924, i32* %31, align 8, !tbaa !21, !alias.scope !96
  call void @png_reset_crc(%struct.png_struct_def* noundef nonnull %0) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %27, i64 noundef 4) #12
  store i32 66, i32* %16, align 4, !tbaa !6, !alias.scope !96
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #12, !noalias !96
  %32 = icmp sgt i32 %2, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %13
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %35 = zext i32 %2 to i64
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ 0, %33 ], [ %43, %36 ]
  %38 = getelementptr inbounds i16, i16* %1, i64 %37
  %39 = load i16, i16* %38, align 2, !tbaa !99
  %40 = lshr i16 %39, 8
  %41 = trunc i16 %40 to i8
  store i8 %41, i8* %7, align 1, !tbaa !3
  %42 = trunc i16 %39 to i8
  store i8 %42, i8* %34, align 1, !tbaa !3
  call void @png_write_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %7, i64 noundef 2) #12
  call void @png_calculate_crc(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %7, i64 noundef 2) #12
  %43 = add nuw nsw i64 %37, 1
  %44 = icmp eq i64 %43, %35
  br i1 %44, label %45, label %36, !llvm.loop !100

45:                                               ; preds = %36, %13
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %46) #12, !noalias !101
  store i32 130, i32* %16, align 4, !tbaa !6, !alias.scope !101
  %47 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 37
  %48 = load i32, i32* %47, align 4, !tbaa !22, !alias.scope !101
  %49 = lshr i32 %48, 24
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %46, align 1, !tbaa !3, !noalias !101
  %51 = lshr i32 %48, 16
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  store i8 %52, i8* %53, align 1, !tbaa !3, !noalias !101
  %54 = lshr i32 %48, 8
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %55, i8* %56, align 1, !tbaa !3, !noalias !101
  %57 = trunc i32 %48 to i8
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  store i8 %57, i8* %58, align 1, !tbaa !3, !noalias !101
  call void @png_write_data(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %46, i64 noundef 4) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %46) #12, !noalias !101
  br label %59

59:                                               ; preds = %45, %12
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %7) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_start_row(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 52
  %3 = load i8, i8* %2, align 4, !tbaa !45
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 49
  %6 = load i8, i8* %5, align 1, !tbaa !44
  %7 = zext i8 %6 to i32
  %8 = mul nuw nsw i32 %7, %4
  %9 = icmp ugt i32 %8, 7
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %11 = load i32, i32* %10, align 4, !tbaa !39
  %12 = zext i32 %11 to i64
  br i1 %9, label %13, label %17

13:                                               ; preds = %1
  %14 = lshr i32 %8, 3
  %15 = zext i32 %14 to i64
  %16 = mul nuw nsw i64 %12, %15
  br label %22

17:                                               ; preds = %1
  %18 = zext i32 %8 to i64
  %19 = mul nuw nsw i64 %12, %18
  %20 = add nuw nsw i64 %19, 7
  %21 = lshr i64 %20, 3
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi i64 [ %16, %13 ], [ %21, %17 ]
  %24 = add nuw nsw i64 %23, 1
  %25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 50
  %26 = load i8, i8* %25, align 2, !tbaa !41
  %27 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 55
  store i8 %26, i8* %27, align 1, !tbaa !104
  %28 = trunc i32 %8 to i8
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 54
  store i8 %28, i8* %29, align 2, !tbaa !105
  %30 = tail call noalias i8* @png_malloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef %24) #12
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 32
  store i8* %30, i8** %31, align 8, !tbaa !106
  store i8 0, i8* %30, align 1, !tbaa !3
  %32 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 46
  %33 = load i8, i8* %32, align 2, !tbaa !46
  %34 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  %35 = load i32, i32* %34, align 8, !tbaa !40
  %36 = icmp eq i32 %35, 1
  %37 = and i8 %33, 31
  %38 = select i1 %36, i8 %37, i8 %33
  %39 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %40 = load i32, i32* %39, align 4, !tbaa !39
  %41 = icmp eq i32 %40, 1
  %42 = and i8 %38, 47
  %43 = select i1 %41, i8 %42, i8 %38
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i8 8, i8 %43
  store i8 %45, i8* %32, align 2, !tbaa !46
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 240
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %22
  %50 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 33
  %51 = load i8*, i8** %50, align 8, !tbaa !107
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = tail call noalias i8* @png_malloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef %24) #12
  store i8* %54, i8** %50, align 8, !tbaa !107
  %55 = lshr i32 %46, 4
  %56 = and i32 %55, 1
  %57 = lshr i32 %46, 5
  %58 = and i32 %57, 1
  %59 = lshr i32 %46, 6
  %60 = and i32 %59, 1
  %61 = lshr i32 %46, 7
  %62 = add nuw nsw i32 %58, %61
  %63 = add nuw nsw i32 %62, %56
  %64 = add nuw nsw i32 %63, %60
  %65 = icmp ugt i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = tail call noalias i8* @png_malloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef %24) #12
  %68 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 34
  store i8* %67, i8** %68, align 8, !tbaa !108
  br label %69

69:                                               ; preds = %53, %66, %49, %22
  %70 = and i32 %46, 224
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = tail call noalias i8* @png_calloc(%struct.png_struct_def* noundef nonnull %0, i64 noundef %24) #12
  %74 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  store i8* %73, i8** %74, align 8, !tbaa !109
  br label %75

75:                                               ; preds = %72, %69
  %76 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 44
  %77 = load i8, i8* %76, align 4, !tbaa !37
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %81 = load i32, i32* %80, align 8, !tbaa !110
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  %84 = load i32, i32* %34, align 8, !tbaa !40
  br i1 %83, label %85, label %92

85:                                               ; preds = %79
  %86 = add i32 %84, 7
  %87 = lshr i32 %86, 3
  %88 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 25
  store i32 %87, i32* %88, align 4, !tbaa !111
  %89 = load i32, i32* %39, align 4, !tbaa !39
  %90 = add i32 %89, 7
  %91 = lshr i32 %90, 3
  br label %99

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 25
  store i32 %84, i32* %93, align 4, !tbaa !111
  %94 = load i32, i32* %39, align 4, !tbaa !39
  br label %99

95:                                               ; preds = %75
  %96 = load i32, i32* %34, align 8, !tbaa !40
  %97 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 25
  store i32 %96, i32* %97, align 4, !tbaa !111
  %98 = load i32, i32* %39, align 4, !tbaa !39
  br label %99

99:                                               ; preds = %85, %92, %95
  %100 = phi i32 [ %91, %85 ], [ %94, %92 ], [ %98, %95 ]
  %101 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 26
  store i32 %100, i32* %101, align 8, !tbaa !43
  ret void
}

declare dso_local noalias i8* @png_calloc(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_write_finish_row(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 29
  %3 = load i32, i32* %2, align 4, !tbaa !112
  %4 = add i32 %3, 1
  store i32 %4, i32* %2, align 4, !tbaa !112
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 25
  %6 = load i32, i32* %5, align 4, !tbaa !111
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %88, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 44
  %10 = load i8, i8* %9, align 4, !tbaa !37
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %87, label %12

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4, !tbaa !112
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 8
  %14 = load i32, i32* %13, align 8, !tbaa !110
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 45
  %18 = load i8, i8* %17, align 1, !tbaa !113
  br i1 %16, label %19, label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 26
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 24
  br label %25

23:                                               ; preds = %12
  %24 = add i8 %18, 1
  br label %56

25:                                               ; preds = %19, %29
  %26 = phi i8 [ %18, %19 ], [ %27, %29 ]
  %27 = add i8 %26, 1
  %28 = icmp ugt i8 %27, 6
  br i1 %28, label %56, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %20, align 4, !tbaa !39
  %31 = zext i8 %27 to i64
  %32 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_inc, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !3
  %34 = zext i8 %33 to i32
  %35 = add i32 %30, %34
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_start, i64 0, i64 %31
  %37 = load i8, i8* %36, align 1, !tbaa !3
  %38 = zext i8 %37 to i32
  %39 = xor i32 %38, -1
  %40 = add i32 %35, %39
  %41 = udiv i32 %40, %34
  store i32 %41, i32* %21, align 8, !tbaa !43
  %42 = load i32, i32* %22, align 8, !tbaa !40
  %43 = getelementptr inbounds [7 x i8], [7 x i8]* @png_write_finish_row.png_pass_yinc, i64 0, i64 %31
  %44 = load i8, i8* %43, align 1, !tbaa !3
  %45 = zext i8 %44 to i32
  %46 = add i32 %42, %45
  %47 = getelementptr inbounds [7 x i8], [7 x i8]* @png_write_finish_row.png_pass_ystart, i64 0, i64 %31
  %48 = load i8, i8* %47, align 1, !tbaa !3
  %49 = zext i8 %48 to i32
  %50 = xor i32 %49, -1
  %51 = add i32 %46, %50
  %52 = udiv i32 %51, %45
  store i32 %52, i32* %5, align 4, !tbaa !111
  %53 = icmp ult i32 %40, %34
  %54 = icmp ult i32 %51, %45
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %25, label %56, !llvm.loop !114

56:                                               ; preds = %29, %25, %23
  %57 = phi i8 [ %24, %23 ], [ %27, %25 ], [ %27, %29 ]
  store i8 %57, i8* %17, align 1, !tbaa !113
  %58 = icmp ult i8 %57, 7
  br i1 %58, label %59, label %87

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %61 = load i8*, i8** %60, align 8, !tbaa !109
  %62 = icmp eq i8* %61, null
  br i1 %62, label %88, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 52
  %65 = load i8, i8* %64, align 4, !tbaa !45
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 49
  %68 = load i8, i8* %67, align 1, !tbaa !44
  %69 = zext i8 %68 to i32
  %70 = mul nuw nsw i32 %69, %66
  %71 = icmp ugt i32 %70, 7
  %72 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 23
  %73 = load i32, i32* %72, align 4, !tbaa !39
  %74 = zext i32 %73 to i64
  br i1 %71, label %75, label %79

75:                                               ; preds = %63
  %76 = lshr i32 %70, 3
  %77 = zext i32 %76 to i64
  %78 = mul nuw nsw i64 %74, %77
  br label %84

79:                                               ; preds = %63
  %80 = zext i32 %70 to i64
  %81 = mul nuw nsw i64 %74, %80
  %82 = add nuw nsw i64 %81, 7
  %83 = lshr i64 %82, 3
  br label %84

84:                                               ; preds = %79, %75
  %85 = phi i64 [ %78, %75 ], [ %83, %79 ]
  %86 = add nuw nsw i64 %85, 1
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %61, i8 0, i64 %86, i1 false)
  br label %88

87:                                               ; preds = %56, %8
  tail call void @png_compress_IDAT(%struct.png_struct_def* noundef nonnull %0, i8* noundef null, i64 noundef 0, i32 noundef 4)
  br label %88

88:                                               ; preds = %59, %84, %1, %87
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @png_do_write_interlace(%struct.png_row_info_struct* nocapture noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = icmp slt i32 %2, 6
  br i1 %4, label %5, label %195

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 5
  %7 = load i8, i8* %6, align 1, !tbaa !115
  switch i8 %7, label %136 [
    i8 1, label %8
    i8 2, label %50
    i8 4, label %93
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !117
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_start, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !3
  %14 = zext i8 %13 to i32
  %15 = icmp ugt i32 %10, %14
  br i1 %15, label %16, label %168

16:                                               ; preds = %8
  %17 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_inc, i64 0, i64 %11
  %18 = load i8, i8* %17, align 1, !tbaa !3
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %16, %42
  %21 = phi i8* [ %1, %16 ], [ %45, %42 ]
  %22 = phi i32 [ 7, %16 ], [ %44, %42 ]
  %23 = phi i32 [ 0, %16 ], [ %43, %42 ]
  %24 = phi i32 [ %14, %16 ], [ %46, %42 ]
  %25 = lshr i32 %24, 3
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %1, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !3
  %29 = zext i8 %28 to i32
  %30 = and i32 %24, 7
  %31 = xor i32 %30, 7
  %32 = lshr i32 %29, %31
  %33 = and i32 %32, 1
  %34 = shl nuw i32 %33, %22
  %35 = or i32 %34, %23
  %36 = icmp eq i32 %22, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = trunc i32 %35 to i8
  %39 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %38, i8* %21, align 1, !tbaa !3
  br label %42

40:                                               ; preds = %20
  %41 = add i32 %22, -1
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi i32 [ 0, %37 ], [ %35, %40 ]
  %44 = phi i32 [ 7, %37 ], [ %41, %40 ]
  %45 = phi i8* [ %39, %37 ], [ %21, %40 ]
  %46 = add i32 %24, %19
  %47 = icmp ult i32 %46, %10
  br i1 %47, label %20, label %48, !llvm.loop !118

48:                                               ; preds = %42
  %49 = icmp eq i32 %44, 7
  br i1 %49, label %168, label %162

50:                                               ; preds = %5
  %51 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 0
  %52 = load i32, i32* %51, align 8, !tbaa !117
  %53 = sext i32 %2 to i64
  %54 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_start, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1, !tbaa !3
  %56 = zext i8 %55 to i32
  %57 = icmp ugt i32 %52, %56
  br i1 %57, label %58, label %168

58:                                               ; preds = %50
  %59 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_inc, i64 0, i64 %53
  %60 = load i8, i8* %59, align 1, !tbaa !3
  %61 = zext i8 %60 to i32
  br label %62

62:                                               ; preds = %58, %85
  %63 = phi i8* [ %1, %58 ], [ %88, %85 ]
  %64 = phi i32 [ 6, %58 ], [ %87, %85 ]
  %65 = phi i32 [ 0, %58 ], [ %86, %85 ]
  %66 = phi i32 [ %56, %58 ], [ %89, %85 ]
  %67 = lshr i32 %66, 2
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %1, i64 %68
  %70 = load i8, i8* %69, align 1, !tbaa !3
  %71 = zext i8 %70 to i32
  %72 = shl i32 %66, 1
  %73 = and i32 %72, 6
  %74 = xor i32 %73, 6
  %75 = lshr i32 %71, %74
  %76 = and i32 %75, 3
  %77 = shl i32 %76, %64
  %78 = or i32 %77, %65
  %79 = icmp eq i32 %64, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %62
  %81 = trunc i32 %78 to i8
  %82 = getelementptr inbounds i8, i8* %63, i64 1
  store i8 %81, i8* %63, align 1, !tbaa !3
  br label %85

83:                                               ; preds = %62
  %84 = add i32 %64, -2
  br label %85

85:                                               ; preds = %80, %83
  %86 = phi i32 [ 0, %80 ], [ %78, %83 ]
  %87 = phi i32 [ 6, %80 ], [ %84, %83 ]
  %88 = phi i8* [ %82, %80 ], [ %63, %83 ]
  %89 = add i32 %66, %61
  %90 = icmp ult i32 %89, %52
  br i1 %90, label %62, label %91, !llvm.loop !119

91:                                               ; preds = %85
  %92 = icmp eq i32 %87, 6
  br i1 %92, label %168, label %162

93:                                               ; preds = %5
  %94 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 0
  %95 = load i32, i32* %94, align 8, !tbaa !117
  %96 = sext i32 %2 to i64
  %97 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_start, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1, !tbaa !3
  %99 = zext i8 %98 to i32
  %100 = icmp ugt i32 %95, %99
  br i1 %100, label %101, label %168

101:                                              ; preds = %93
  %102 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_inc, i64 0, i64 %96
  %103 = load i8, i8* %102, align 1, !tbaa !3
  %104 = zext i8 %103 to i32
  br label %105

105:                                              ; preds = %101, %128
  %106 = phi i32 [ %99, %101 ], [ %132, %128 ]
  %107 = phi i32 [ 0, %101 ], [ %131, %128 ]
  %108 = phi i32 [ 4, %101 ], [ %130, %128 ]
  %109 = phi i8* [ %1, %101 ], [ %129, %128 ]
  %110 = lshr i32 %106, 1
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %1, i64 %111
  %113 = load i8, i8* %112, align 1, !tbaa !3
  %114 = zext i8 %113 to i32
  %115 = shl i32 %106, 2
  %116 = and i32 %115, 4
  %117 = xor i32 %116, 4
  %118 = lshr i32 %114, %117
  %119 = and i32 %118, 15
  %120 = shl i32 %119, %108
  %121 = or i32 %120, %107
  %122 = icmp eq i32 %108, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %105
  %124 = trunc i32 %121 to i8
  %125 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 %124, i8* %109, align 1, !tbaa !3
  br label %128

126:                                              ; preds = %105
  %127 = add i32 %108, -4
  br label %128

128:                                              ; preds = %123, %126
  %129 = phi i8* [ %125, %123 ], [ %109, %126 ]
  %130 = phi i32 [ 4, %123 ], [ %127, %126 ]
  %131 = phi i32 [ 0, %123 ], [ %121, %126 ]
  %132 = add i32 %106, %104
  %133 = icmp ult i32 %132, %95
  br i1 %133, label %105, label %134, !llvm.loop !120

134:                                              ; preds = %128
  %135 = icmp eq i32 %130, 4
  br i1 %135, label %168, label %162

136:                                              ; preds = %5
  %137 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 0
  %138 = load i32, i32* %137, align 8, !tbaa !117
  %139 = lshr i8 %7, 3
  %140 = zext i8 %139 to i64
  %141 = sext i32 %2 to i64
  %142 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_start, i64 0, i64 %141
  %143 = load i8, i8* %142, align 1, !tbaa !3
  %144 = zext i8 %143 to i32
  %145 = icmp ugt i32 %138, %144
  br i1 %145, label %146, label %168

146:                                              ; preds = %136
  %147 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_inc, i64 0, i64 %141
  %148 = load i8, i8* %147, align 1, !tbaa !3
  %149 = zext i8 %148 to i32
  br label %150

150:                                              ; preds = %146, %158
  %151 = phi i32 [ %144, %146 ], [ %160, %158 ]
  %152 = phi i8* [ %1, %146 ], [ %159, %158 ]
  %153 = zext i32 %151 to i64
  %154 = mul nuw nsw i64 %153, %140
  %155 = getelementptr inbounds i8, i8* %1, i64 %154
  %156 = icmp eq i8* %152, %155
  br i1 %156, label %158, label %157

157:                                              ; preds = %150
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %152, i8* align 1 %155, i64 %140, i1 false)
  br label %158

158:                                              ; preds = %157, %150
  %159 = getelementptr inbounds i8, i8* %152, i64 %140
  %160 = add i32 %151, %149
  %161 = icmp ult i32 %160, %138
  br i1 %161, label %150, label %168, !llvm.loop !121

162:                                              ; preds = %134, %91, %48
  %163 = phi i32 [ %43, %48 ], [ %86, %91 ], [ %131, %134 ]
  %164 = phi i8* [ %45, %48 ], [ %88, %91 ], [ %129, %134 ]
  %165 = phi i32 [ %14, %48 ], [ %56, %91 ], [ %99, %134 ]
  %166 = phi i64 [ %11, %48 ], [ %53, %91 ], [ %96, %134 ]
  %167 = trunc i32 %163 to i8
  store i8 %167, i8* %164, align 1, !tbaa !3
  br label %168

168:                                              ; preds = %158, %162, %93, %50, %8, %136, %134, %91, %48
  %169 = phi i32 [ %144, %136 ], [ %99, %134 ], [ %56, %91 ], [ %14, %48 ], [ %14, %8 ], [ %56, %50 ], [ %99, %93 ], [ %165, %162 ], [ %144, %158 ]
  %170 = phi i64 [ %141, %136 ], [ %96, %134 ], [ %53, %91 ], [ %11, %48 ], [ %11, %8 ], [ %53, %50 ], [ %96, %93 ], [ %166, %162 ], [ %141, %158 ]
  %171 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 0
  %172 = load i32, i32* %171, align 8, !tbaa !117
  %173 = getelementptr inbounds [7 x i8], [7 x i8]* @png_do_write_interlace.png_pass_inc, i64 0, i64 %170
  %174 = load i8, i8* %173, align 1, !tbaa !3
  %175 = zext i8 %174 to i32
  %176 = add i32 %172, %175
  %177 = xor i32 %169, -1
  %178 = add i32 %176, %177
  %179 = udiv i32 %178, %175
  store i32 %179, i32* %171, align 8, !tbaa !117
  %180 = load i8, i8* %6, align 1, !tbaa !115
  %181 = icmp ugt i8 %180, 7
  %182 = zext i32 %179 to i64
  br i1 %181, label %183, label %187

183:                                              ; preds = %168
  %184 = lshr i8 %180, 3
  %185 = zext i8 %184 to i64
  %186 = mul nuw nsw i64 %185, %182
  br label %192

187:                                              ; preds = %168
  %188 = zext i8 %180 to i64
  %189 = mul nuw nsw i64 %188, %182
  %190 = add nuw nsw i64 %189, 7
  %191 = lshr i64 %190, 3
  br label %192

192:                                              ; preds = %187, %183
  %193 = phi i64 [ %186, %183 ], [ %191, %187 ]
  %194 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i64 0, i32 1
  store i64 %193, i64* %194, align 8, !tbaa !122
  br label %195

195:                                              ; preds = %192, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_find_filter(%struct.png_struct_def* noalias noundef %0, %struct.png_row_info_struct* nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 46
  %4 = load i8, i8* %3, align 2, !tbaa !46
  %5 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %1, i64 0, i32 5
  %8 = load i8, i8* %7, align 1, !tbaa !115
  %9 = zext i8 %8 to i32
  %10 = add nuw nsw i32 %9, 7
  %11 = lshr i32 %10, 3
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 32
  %13 = load i8*, i8** %12, align 8, !tbaa !106
  %14 = zext i8 %4 to i32
  %15 = and i32 %14, 8
  %16 = icmp ne i32 %15, 0
  %17 = icmp ne i8 %4, 8
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %91

19:                                               ; preds = %2
  %20 = icmp ugt i64 %6, 144115188075855870
  br i1 %20, label %61, label %21

21:                                               ; preds = %19
  %22 = icmp eq i64 %6, 0
  br i1 %22, label %91, label %23

23:                                               ; preds = %21
  %24 = icmp ult i64 %6, 4
  br i1 %24, label %57, label %25

25:                                               ; preds = %23
  %26 = and i64 %6, -4
  %27 = getelementptr i8, i8* %13, i64 %26
  %28 = getelementptr i8, i8* %13, i64 1
  br label %29

29:                                               ; preds = %29, %25
  %30 = phi i64 [ 0, %25 ], [ %51, %29 ]
  %31 = phi <2 x i64> [ zeroinitializer, %25 ], [ %49, %29 ]
  %32 = phi <2 x i64> [ zeroinitializer, %25 ], [ %50, %29 ]
  %33 = getelementptr inbounds i8, i8* %28, i64 %30
  %34 = bitcast i8* %33 to <2 x i8>*
  %35 = load <2 x i8>, <2 x i8>* %34, align 1, !tbaa !3
  %36 = getelementptr inbounds i8, i8* %33, i64 2
  %37 = bitcast i8* %36 to <2 x i8>*
  %38 = load <2 x i8>, <2 x i8>* %37, align 1, !tbaa !3
  %39 = zext <2 x i8> %35 to <2 x i32>
  %40 = zext <2 x i8> %38 to <2 x i32>
  %41 = icmp sgt <2 x i8> %35, <i8 -1, i8 -1>
  %42 = icmp sgt <2 x i8> %38, <i8 -1, i8 -1>
  %43 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %39
  %44 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %40
  %45 = select <2 x i1> %41, <2 x i32> %39, <2 x i32> %43
  %46 = select <2 x i1> %42, <2 x i32> %40, <2 x i32> %44
  %47 = zext <2 x i32> %45 to <2 x i64>
  %48 = zext <2 x i32> %46 to <2 x i64>
  %49 = add <2 x i64> %31, %47
  %50 = add <2 x i64> %32, %48
  %51 = add nuw i64 %30, 4
  %52 = icmp eq i64 %51, %26
  br i1 %52, label %53, label %29, !llvm.loop !123

53:                                               ; preds = %29
  %54 = add <2 x i64> %50, %49
  %55 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %54)
  %56 = icmp eq i64 %6, %26
  br i1 %56, label %91, label %57

57:                                               ; preds = %23, %53
  %58 = phi i8* [ %13, %23 ], [ %27, %53 ]
  %59 = phi i64 [ 0, %23 ], [ %55, %53 ]
  %60 = phi i64 [ 0, %23 ], [ %26, %53 ]
  br label %77

61:                                               ; preds = %19, %61
  %62 = phi i8* [ %65, %61 ], [ %13, %19 ]
  %63 = phi i64 [ %72, %61 ], [ 0, %19 ]
  %64 = phi i64 [ %73, %61 ], [ 0, %19 ]
  %65 = getelementptr inbounds i8, i8* %62, i64 1
  %66 = load i8, i8* %65, align 1, !tbaa !3
  %67 = zext i8 %66 to i32
  %68 = icmp sgt i8 %66, -1
  %69 = sub nuw nsw i32 256, %67
  %70 = select i1 %68, i32 %67, i32 %69
  %71 = zext i32 %70 to i64
  %72 = add nuw nsw i64 %63, %71
  %73 = add nuw i64 %64, 1
  %74 = icmp uge i64 %73, %6
  %75 = icmp ugt i64 %72, 144115188075855615
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %91, label %61, !llvm.loop !125

77:                                               ; preds = %57, %77
  %78 = phi i8* [ %81, %77 ], [ %58, %57 ]
  %79 = phi i64 [ %88, %77 ], [ %59, %57 ]
  %80 = phi i64 [ %89, %77 ], [ %60, %57 ]
  %81 = getelementptr inbounds i8, i8* %78, i64 1
  %82 = load i8, i8* %81, align 1, !tbaa !3
  %83 = zext i8 %82 to i32
  %84 = icmp sgt i8 %82, -1
  %85 = sub nuw nsw i32 256, %83
  %86 = select i1 %84, i32 %83, i32 %85
  %87 = zext i32 %86 to i64
  %88 = add i64 %79, %87
  %89 = add nuw i64 %80, 1
  %90 = icmp eq i64 %89, %6
  br i1 %90, label %91, label %77, !llvm.loop !126

91:                                               ; preds = %77, %61, %53, %21, %2
  %92 = phi i64 [ -257, %2 ], [ 0, %21 ], [ %55, %53 ], [ %72, %61 ], [ %88, %77 ]
  %93 = icmp eq i8 %4, 16
  br i1 %93, label %94, label %255

94:                                               ; preds = %91
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %95 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 33
  %96 = load i8*, i8** %95, align 8, !tbaa !107, !alias.scope !128
  store i8 1, i8* %96, align 1, !tbaa !3, !noalias !128
  %97 = zext i32 %11 to i64
  %98 = getelementptr i8, i8* %96, i64 1
  %99 = getelementptr i8, i8* %13, i64 1
  %100 = icmp eq i8 %8, 0
  br i1 %100, label %201, label %101

101:                                              ; preds = %94
  %102 = icmp ult i8 %8, 9
  br i1 %102, label %172, label %103

103:                                              ; preds = %101
  %104 = add nuw nsw i64 %97, 1
  %105 = getelementptr i8, i8* %96, i64 %104
  %106 = getelementptr i8, i8* %13, i64 %104
  %107 = icmp ult i8* %98, %106
  %108 = icmp ult i8* %99, %105
  %109 = and i1 %107, %108
  br i1 %109, label %172, label %110

110:                                              ; preds = %103
  %111 = and i64 %97, 62
  %112 = getelementptr i8, i8* %99, i64 %111
  %113 = getelementptr i8, i8* %98, i64 %111
  %114 = add nsw i64 %111, -2
  %115 = lshr exact i64 %114, 1
  %116 = add nuw i64 %115, 1
  %117 = and i64 %116, 1
  %118 = icmp eq i64 %114, 0
  br i1 %118, label %151, label %119

119:                                              ; preds = %110
  %120 = and i64 %116, -2
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi i64 [ 0, %119 ], [ %148, %121 ]
  %123 = phi <2 x i64> [ zeroinitializer, %119 ], [ %147, %121 ]
  %124 = phi i64 [ 0, %119 ], [ %149, %121 ]
  %125 = getelementptr i8, i8* %99, i64 %122
  %126 = getelementptr i8, i8* %98, i64 %122
  %127 = bitcast i8* %125 to <2 x i8>*
  %128 = load <2 x i8>, <2 x i8>* %127, align 1, !tbaa !3, !alias.scope !131, !noalias !128
  %129 = bitcast i8* %126 to <2 x i8>*
  store <2 x i8> %128, <2 x i8>* %129, align 1, !tbaa !3, !alias.scope !134, !noalias !136
  %130 = zext <2 x i8> %128 to <2 x i32>
  %131 = icmp sgt <2 x i8> %128, <i8 -1, i8 -1>
  %132 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %130
  %133 = select <2 x i1> %131, <2 x i32> %130, <2 x i32> %132
  %134 = zext <2 x i32> %133 to <2 x i64>
  %135 = add <2 x i64> %123, %134
  %136 = or i64 %122, 2
  %137 = getelementptr i8, i8* %99, i64 %136
  %138 = getelementptr i8, i8* %98, i64 %136
  %139 = bitcast i8* %137 to <2 x i8>*
  %140 = load <2 x i8>, <2 x i8>* %139, align 1, !tbaa !3, !alias.scope !131, !noalias !128
  %141 = bitcast i8* %138 to <2 x i8>*
  store <2 x i8> %140, <2 x i8>* %141, align 1, !tbaa !3, !alias.scope !134, !noalias !136
  %142 = zext <2 x i8> %140 to <2 x i32>
  %143 = icmp sgt <2 x i8> %140, <i8 -1, i8 -1>
  %144 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %142
  %145 = select <2 x i1> %143, <2 x i32> %142, <2 x i32> %144
  %146 = zext <2 x i32> %145 to <2 x i64>
  %147 = add <2 x i64> %135, %146
  %148 = add nuw i64 %122, 4
  %149 = add nuw i64 %124, 2
  %150 = icmp eq i64 %149, %120
  br i1 %150, label %151, label %121, !llvm.loop !137

151:                                              ; preds = %121, %110
  %152 = phi <2 x i64> [ undef, %110 ], [ %147, %121 ]
  %153 = phi i64 [ 0, %110 ], [ %148, %121 ]
  %154 = phi <2 x i64> [ zeroinitializer, %110 ], [ %147, %121 ]
  %155 = icmp eq i64 %117, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %151
  %157 = getelementptr i8, i8* %99, i64 %153
  %158 = getelementptr i8, i8* %98, i64 %153
  %159 = bitcast i8* %157 to <2 x i8>*
  %160 = load <2 x i8>, <2 x i8>* %159, align 1, !tbaa !3, !alias.scope !131, !noalias !128
  %161 = bitcast i8* %158 to <2 x i8>*
  store <2 x i8> %160, <2 x i8>* %161, align 1, !tbaa !3, !alias.scope !134, !noalias !136
  %162 = zext <2 x i8> %160 to <2 x i32>
  %163 = icmp sgt <2 x i8> %160, <i8 -1, i8 -1>
  %164 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %162
  %165 = select <2 x i1> %163, <2 x i32> %162, <2 x i32> %164
  %166 = zext <2 x i32> %165 to <2 x i64>
  %167 = add <2 x i64> %154, %166
  br label %168

168:                                              ; preds = %151, %156
  %169 = phi <2 x i64> [ %152, %151 ], [ %167, %156 ]
  %170 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %169)
  %171 = icmp eq i64 %111, %97
  br i1 %171, label %201, label %172

172:                                              ; preds = %103, %101, %168
  %173 = phi i8* [ %99, %103 ], [ %99, %101 ], [ %112, %168 ]
  %174 = phi i8* [ %98, %103 ], [ %98, %101 ], [ %113, %168 ]
  %175 = phi i64 [ 0, %103 ], [ 0, %101 ], [ %170, %168 ]
  %176 = phi i64 [ 0, %103 ], [ 0, %101 ], [ %111, %168 ]
  %177 = xor i64 %176, -1
  %178 = and i64 %97, 1
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %172
  %181 = load i8, i8* %173, align 1, !tbaa !3, !noalias !128
  store i8 %181, i8* %174, align 1, !tbaa !3, !noalias !128
  %182 = zext i8 %181 to i32
  %183 = icmp sgt i8 %181, -1
  %184 = sub nuw nsw i32 256, %182
  %185 = select i1 %183, i32 %182, i32 %184
  %186 = zext i32 %185 to i64
  %187 = add i64 %175, %186
  %188 = or i64 %176, 1
  %189 = getelementptr inbounds i8, i8* %174, i64 1
  %190 = getelementptr inbounds i8, i8* %173, i64 1
  br label %191

191:                                              ; preds = %180, %172
  %192 = phi i64 [ undef, %172 ], [ %187, %180 ]
  %193 = phi i8* [ undef, %172 ], [ %189, %180 ]
  %194 = phi i8* [ undef, %172 ], [ %190, %180 ]
  %195 = phi i8* [ %173, %172 ], [ %190, %180 ]
  %196 = phi i8* [ %174, %172 ], [ %189, %180 ]
  %197 = phi i64 [ %175, %172 ], [ %187, %180 ]
  %198 = phi i64 [ %176, %172 ], [ %188, %180 ]
  %199 = sub nsw i64 0, %97
  %200 = icmp eq i64 %177, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %191, %206, %168, %94
  %202 = phi i64 [ 0, %94 ], [ %170, %168 ], [ %192, %191 ], [ %226, %206 ]
  %203 = phi i8* [ %98, %94 ], [ %113, %168 ], [ %193, %191 ], [ %228, %206 ]
  %204 = phi i8* [ %99, %94 ], [ %112, %168 ], [ %194, %191 ], [ %229, %206 ]
  %205 = icmp ugt i64 %6, %97
  br i1 %205, label %231, label %253

206:                                              ; preds = %191, %206
  %207 = phi i8* [ %229, %206 ], [ %195, %191 ]
  %208 = phi i8* [ %228, %206 ], [ %196, %191 ]
  %209 = phi i64 [ %226, %206 ], [ %197, %191 ]
  %210 = phi i64 [ %227, %206 ], [ %198, %191 ]
  %211 = load i8, i8* %207, align 1, !tbaa !3, !noalias !128
  store i8 %211, i8* %208, align 1, !tbaa !3, !noalias !128
  %212 = zext i8 %211 to i32
  %213 = icmp sgt i8 %211, -1
  %214 = sub nuw nsw i32 256, %212
  %215 = select i1 %213, i32 %212, i32 %214
  %216 = zext i32 %215 to i64
  %217 = add i64 %209, %216
  %218 = getelementptr inbounds i8, i8* %208, i64 1
  %219 = getelementptr inbounds i8, i8* %207, i64 1
  %220 = load i8, i8* %219, align 1, !tbaa !3, !noalias !128
  store i8 %220, i8* %218, align 1, !tbaa !3, !noalias !128
  %221 = zext i8 %220 to i32
  %222 = icmp sgt i8 %220, -1
  %223 = sub nuw nsw i32 256, %221
  %224 = select i1 %222, i32 %221, i32 %223
  %225 = zext i32 %224 to i64
  %226 = add i64 %217, %225
  %227 = add nuw nsw i64 %210, 2
  %228 = getelementptr inbounds i8, i8* %208, i64 2
  %229 = getelementptr inbounds i8, i8* %207, i64 2
  %230 = icmp eq i64 %227, %97
  br i1 %230, label %201, label %206, !llvm.loop !138

231:                                              ; preds = %201, %231
  %232 = phi i8* [ %237, %231 ], [ %13, %201 ]
  %233 = phi i64 [ %246, %231 ], [ %202, %201 ]
  %234 = phi i64 [ %248, %231 ], [ %97, %201 ]
  %235 = phi i8* [ %250, %231 ], [ %203, %201 ]
  %236 = phi i8* [ %249, %231 ], [ %204, %201 ]
  %237 = getelementptr inbounds i8, i8* %232, i64 1
  %238 = load i8, i8* %236, align 1, !tbaa !3, !noalias !128
  %239 = load i8, i8* %237, align 1, !tbaa !3, !noalias !128
  %240 = sub i8 %238, %239
  store i8 %240, i8* %235, align 1, !tbaa !3, !noalias !128
  %241 = zext i8 %240 to i32
  %242 = icmp sgt i8 %240, -1
  %243 = sub nuw nsw i32 256, %241
  %244 = select i1 %242, i32 %241, i32 %243
  %245 = zext i32 %244 to i64
  %246 = add i64 %233, %245
  %247 = icmp ule i64 %246, %92
  %248 = add nuw i64 %234, 1
  %249 = getelementptr inbounds i8, i8* %236, i64 1
  %250 = getelementptr inbounds i8, i8* %235, i64 1
  %251 = icmp ult i64 %248, %6
  %252 = select i1 %247, i1 %251, i1 false
  br i1 %252, label %231, label %253, !llvm.loop !139

253:                                              ; preds = %231, %201
  %254 = load i8*, i8** %95, align 8, !tbaa !107
  br label %426

255:                                              ; preds = %91
  %256 = and i32 %14, 16
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %426, label %258

258:                                              ; preds = %255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %259 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 33
  %260 = load i8*, i8** %259, align 8, !tbaa !107, !alias.scope !140
  store i8 1, i8* %260, align 1, !tbaa !3, !noalias !140
  %261 = zext i32 %11 to i64
  %262 = getelementptr i8, i8* %260, i64 1
  %263 = getelementptr i8, i8* %13, i64 1
  %264 = icmp eq i8 %8, 0
  br i1 %264, label %365, label %265

265:                                              ; preds = %258
  %266 = icmp ult i8 %8, 9
  br i1 %266, label %336, label %267

267:                                              ; preds = %265
  %268 = add nuw nsw i64 %261, 1
  %269 = getelementptr i8, i8* %260, i64 %268
  %270 = getelementptr i8, i8* %13, i64 %268
  %271 = icmp ult i8* %262, %270
  %272 = icmp ult i8* %263, %269
  %273 = and i1 %271, %272
  br i1 %273, label %336, label %274

274:                                              ; preds = %267
  %275 = and i64 %261, 62
  %276 = getelementptr i8, i8* %263, i64 %275
  %277 = getelementptr i8, i8* %262, i64 %275
  %278 = add nsw i64 %275, -2
  %279 = lshr exact i64 %278, 1
  %280 = add nuw i64 %279, 1
  %281 = and i64 %280, 1
  %282 = icmp eq i64 %278, 0
  br i1 %282, label %315, label %283

283:                                              ; preds = %274
  %284 = and i64 %280, -2
  br label %285

285:                                              ; preds = %285, %283
  %286 = phi i64 [ 0, %283 ], [ %312, %285 ]
  %287 = phi <2 x i64> [ zeroinitializer, %283 ], [ %311, %285 ]
  %288 = phi i64 [ 0, %283 ], [ %313, %285 ]
  %289 = getelementptr i8, i8* %263, i64 %286
  %290 = getelementptr i8, i8* %262, i64 %286
  %291 = bitcast i8* %289 to <2 x i8>*
  %292 = load <2 x i8>, <2 x i8>* %291, align 1, !tbaa !3, !alias.scope !143, !noalias !140
  %293 = bitcast i8* %290 to <2 x i8>*
  store <2 x i8> %292, <2 x i8>* %293, align 1, !tbaa !3, !alias.scope !146, !noalias !148
  %294 = zext <2 x i8> %292 to <2 x i32>
  %295 = icmp sgt <2 x i8> %292, <i8 -1, i8 -1>
  %296 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %294
  %297 = select <2 x i1> %295, <2 x i32> %294, <2 x i32> %296
  %298 = zext <2 x i32> %297 to <2 x i64>
  %299 = add <2 x i64> %287, %298
  %300 = or i64 %286, 2
  %301 = getelementptr i8, i8* %263, i64 %300
  %302 = getelementptr i8, i8* %262, i64 %300
  %303 = bitcast i8* %301 to <2 x i8>*
  %304 = load <2 x i8>, <2 x i8>* %303, align 1, !tbaa !3, !alias.scope !143, !noalias !140
  %305 = bitcast i8* %302 to <2 x i8>*
  store <2 x i8> %304, <2 x i8>* %305, align 1, !tbaa !3, !alias.scope !146, !noalias !148
  %306 = zext <2 x i8> %304 to <2 x i32>
  %307 = icmp sgt <2 x i8> %304, <i8 -1, i8 -1>
  %308 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %306
  %309 = select <2 x i1> %307, <2 x i32> %306, <2 x i32> %308
  %310 = zext <2 x i32> %309 to <2 x i64>
  %311 = add <2 x i64> %299, %310
  %312 = add nuw i64 %286, 4
  %313 = add nuw i64 %288, 2
  %314 = icmp eq i64 %313, %284
  br i1 %314, label %315, label %285, !llvm.loop !149

315:                                              ; preds = %285, %274
  %316 = phi <2 x i64> [ undef, %274 ], [ %311, %285 ]
  %317 = phi i64 [ 0, %274 ], [ %312, %285 ]
  %318 = phi <2 x i64> [ zeroinitializer, %274 ], [ %311, %285 ]
  %319 = icmp eq i64 %281, 0
  br i1 %319, label %332, label %320

320:                                              ; preds = %315
  %321 = getelementptr i8, i8* %263, i64 %317
  %322 = getelementptr i8, i8* %262, i64 %317
  %323 = bitcast i8* %321 to <2 x i8>*
  %324 = load <2 x i8>, <2 x i8>* %323, align 1, !tbaa !3, !alias.scope !143, !noalias !140
  %325 = bitcast i8* %322 to <2 x i8>*
  store <2 x i8> %324, <2 x i8>* %325, align 1, !tbaa !3, !alias.scope !146, !noalias !148
  %326 = zext <2 x i8> %324 to <2 x i32>
  %327 = icmp sgt <2 x i8> %324, <i8 -1, i8 -1>
  %328 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %326
  %329 = select <2 x i1> %327, <2 x i32> %326, <2 x i32> %328
  %330 = zext <2 x i32> %329 to <2 x i64>
  %331 = add <2 x i64> %318, %330
  br label %332

332:                                              ; preds = %315, %320
  %333 = phi <2 x i64> [ %316, %315 ], [ %331, %320 ]
  %334 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %333)
  %335 = icmp eq i64 %275, %261
  br i1 %335, label %365, label %336

336:                                              ; preds = %267, %265, %332
  %337 = phi i8* [ %263, %267 ], [ %263, %265 ], [ %276, %332 ]
  %338 = phi i8* [ %262, %267 ], [ %262, %265 ], [ %277, %332 ]
  %339 = phi i64 [ 0, %267 ], [ 0, %265 ], [ %334, %332 ]
  %340 = phi i64 [ 0, %267 ], [ 0, %265 ], [ %275, %332 ]
  %341 = xor i64 %340, -1
  %342 = and i64 %261, 1
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %355, label %344

344:                                              ; preds = %336
  %345 = load i8, i8* %337, align 1, !tbaa !3, !noalias !140
  store i8 %345, i8* %338, align 1, !tbaa !3, !noalias !140
  %346 = zext i8 %345 to i32
  %347 = icmp sgt i8 %345, -1
  %348 = sub nuw nsw i32 256, %346
  %349 = select i1 %347, i32 %346, i32 %348
  %350 = zext i32 %349 to i64
  %351 = add i64 %339, %350
  %352 = or i64 %340, 1
  %353 = getelementptr inbounds i8, i8* %338, i64 1
  %354 = getelementptr inbounds i8, i8* %337, i64 1
  br label %355

355:                                              ; preds = %344, %336
  %356 = phi i64 [ undef, %336 ], [ %351, %344 ]
  %357 = phi i8* [ undef, %336 ], [ %353, %344 ]
  %358 = phi i8* [ undef, %336 ], [ %354, %344 ]
  %359 = phi i8* [ %337, %336 ], [ %354, %344 ]
  %360 = phi i8* [ %338, %336 ], [ %353, %344 ]
  %361 = phi i64 [ %339, %336 ], [ %351, %344 ]
  %362 = phi i64 [ %340, %336 ], [ %352, %344 ]
  %363 = sub nsw i64 0, %261
  %364 = icmp eq i64 %341, %363
  br i1 %364, label %365, label %370

365:                                              ; preds = %355, %370, %332, %258
  %366 = phi i64 [ 0, %258 ], [ %334, %332 ], [ %356, %355 ], [ %390, %370 ]
  %367 = phi i8* [ %262, %258 ], [ %277, %332 ], [ %357, %355 ], [ %392, %370 ]
  %368 = phi i8* [ %263, %258 ], [ %276, %332 ], [ %358, %355 ], [ %393, %370 ]
  %369 = icmp ugt i64 %6, %261
  br i1 %369, label %395, label %417

370:                                              ; preds = %355, %370
  %371 = phi i8* [ %393, %370 ], [ %359, %355 ]
  %372 = phi i8* [ %392, %370 ], [ %360, %355 ]
  %373 = phi i64 [ %390, %370 ], [ %361, %355 ]
  %374 = phi i64 [ %391, %370 ], [ %362, %355 ]
  %375 = load i8, i8* %371, align 1, !tbaa !3, !noalias !140
  store i8 %375, i8* %372, align 1, !tbaa !3, !noalias !140
  %376 = zext i8 %375 to i32
  %377 = icmp sgt i8 %375, -1
  %378 = sub nuw nsw i32 256, %376
  %379 = select i1 %377, i32 %376, i32 %378
  %380 = zext i32 %379 to i64
  %381 = add i64 %373, %380
  %382 = getelementptr inbounds i8, i8* %372, i64 1
  %383 = getelementptr inbounds i8, i8* %371, i64 1
  %384 = load i8, i8* %383, align 1, !tbaa !3, !noalias !140
  store i8 %384, i8* %382, align 1, !tbaa !3, !noalias !140
  %385 = zext i8 %384 to i32
  %386 = icmp sgt i8 %384, -1
  %387 = sub nuw nsw i32 256, %385
  %388 = select i1 %386, i32 %385, i32 %387
  %389 = zext i32 %388 to i64
  %390 = add i64 %381, %389
  %391 = add nuw nsw i64 %374, 2
  %392 = getelementptr inbounds i8, i8* %372, i64 2
  %393 = getelementptr inbounds i8, i8* %371, i64 2
  %394 = icmp eq i64 %391, %261
  br i1 %394, label %365, label %370, !llvm.loop !150

395:                                              ; preds = %365, %395
  %396 = phi i8* [ %401, %395 ], [ %13, %365 ]
  %397 = phi i64 [ %410, %395 ], [ %366, %365 ]
  %398 = phi i64 [ %412, %395 ], [ %261, %365 ]
  %399 = phi i8* [ %414, %395 ], [ %367, %365 ]
  %400 = phi i8* [ %413, %395 ], [ %368, %365 ]
  %401 = getelementptr inbounds i8, i8* %396, i64 1
  %402 = load i8, i8* %400, align 1, !tbaa !3, !noalias !140
  %403 = load i8, i8* %401, align 1, !tbaa !3, !noalias !140
  %404 = sub i8 %402, %403
  store i8 %404, i8* %399, align 1, !tbaa !3, !noalias !140
  %405 = zext i8 %404 to i32
  %406 = icmp sgt i8 %404, -1
  %407 = sub nuw nsw i32 256, %405
  %408 = select i1 %406, i32 %405, i32 %407
  %409 = zext i32 %408 to i64
  %410 = add i64 %397, %409
  %411 = icmp ule i64 %410, %92
  %412 = add nuw i64 %398, 1
  %413 = getelementptr inbounds i8, i8* %400, i64 1
  %414 = getelementptr inbounds i8, i8* %399, i64 1
  %415 = icmp ult i64 %412, %6
  %416 = select i1 %411, i1 %415, i1 false
  br i1 %416, label %395, label %417, !llvm.loop !139

417:                                              ; preds = %395, %365
  %418 = phi i64 [ %366, %365 ], [ %410, %395 ]
  %419 = icmp ult i64 %418, %92
  br i1 %419, label %420, label %426

420:                                              ; preds = %417
  %421 = load i8*, i8** %259, align 8, !tbaa !107
  %422 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 34
  %423 = load i8*, i8** %422, align 8, !tbaa !108
  %424 = icmp eq i8* %423, null
  br i1 %424, label %426, label %425

425:                                              ; preds = %420
  store i8* %423, i8** %259, align 8, !tbaa !107
  store i8* %421, i8** %422, align 8, !tbaa !108
  br label %426

426:                                              ; preds = %417, %425, %420, %255, %253
  %427 = phi i64 [ %92, %253 ], [ %92, %255 ], [ %418, %425 ], [ %418, %420 ], [ %92, %417 ]
  %428 = phi i8* [ %254, %253 ], [ %13, %255 ], [ %421, %425 ], [ %421, %420 ], [ %13, %417 ]
  %429 = icmp eq i8 %4, 32
  br i1 %429, label %430, label %462

430:                                              ; preds = %426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %431 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 33
  %432 = load i8*, i8** %431, align 8, !tbaa !107, !alias.scope !151
  store i8 2, i8* %432, align 1, !tbaa !3, !noalias !151
  %433 = icmp eq i64 %6, 0
  br i1 %433, label %460, label %434

434:                                              ; preds = %430
  %435 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %436 = load i8*, i8** %435, align 8, !tbaa !109, !alias.scope !151
  %437 = load i8*, i8** %12, align 8, !tbaa !106, !alias.scope !151
  br label %438

438:                                              ; preds = %438, %434
  %439 = phi i8* [ %437, %434 ], [ %446, %438 ]
  %440 = phi i8* [ %436, %434 ], [ %445, %438 ]
  %441 = phi i8* [ %432, %434 ], [ %444, %438 ]
  %442 = phi i64 [ 0, %434 ], [ %455, %438 ]
  %443 = phi i64 [ 0, %434 ], [ %457, %438 ]
  %444 = getelementptr inbounds i8, i8* %441, i64 1
  %445 = getelementptr inbounds i8, i8* %440, i64 1
  %446 = getelementptr inbounds i8, i8* %439, i64 1
  %447 = load i8, i8* %446, align 1, !tbaa !3, !noalias !151
  %448 = load i8, i8* %445, align 1, !tbaa !3, !noalias !151
  %449 = sub i8 %447, %448
  store i8 %449, i8* %444, align 1, !tbaa !3, !noalias !151
  %450 = zext i8 %449 to i32
  %451 = icmp sgt i8 %449, -1
  %452 = sub nuw nsw i32 256, %450
  %453 = select i1 %451, i32 %450, i32 %452
  %454 = zext i32 %453 to i64
  %455 = add i64 %442, %454
  %456 = icmp ule i64 %455, %427
  %457 = add nuw i64 %443, 1
  %458 = icmp ult i64 %457, %6
  %459 = select i1 %456, i1 %458, i1 false
  br i1 %459, label %438, label %460, !llvm.loop !154

460:                                              ; preds = %438, %430
  %461 = load i8*, i8** %431, align 8, !tbaa !107
  br label %504

462:                                              ; preds = %426
  %463 = and i32 %14, 32
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %504, label %465

465:                                              ; preds = %462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %466 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 33
  %467 = load i8*, i8** %466, align 8, !tbaa !107, !alias.scope !155
  store i8 2, i8* %467, align 1, !tbaa !3, !noalias !155
  %468 = icmp eq i64 %6, 0
  br i1 %468, label %495, label %469

469:                                              ; preds = %465
  %470 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %471 = load i8*, i8** %470, align 8, !tbaa !109, !alias.scope !155
  %472 = load i8*, i8** %12, align 8, !tbaa !106, !alias.scope !155
  br label %473

473:                                              ; preds = %473, %469
  %474 = phi i8* [ %472, %469 ], [ %481, %473 ]
  %475 = phi i8* [ %471, %469 ], [ %480, %473 ]
  %476 = phi i8* [ %467, %469 ], [ %479, %473 ]
  %477 = phi i64 [ 0, %469 ], [ %490, %473 ]
  %478 = phi i64 [ 0, %469 ], [ %492, %473 ]
  %479 = getelementptr inbounds i8, i8* %476, i64 1
  %480 = getelementptr inbounds i8, i8* %475, i64 1
  %481 = getelementptr inbounds i8, i8* %474, i64 1
  %482 = load i8, i8* %481, align 1, !tbaa !3, !noalias !155
  %483 = load i8, i8* %480, align 1, !tbaa !3, !noalias !155
  %484 = sub i8 %482, %483
  store i8 %484, i8* %479, align 1, !tbaa !3, !noalias !155
  %485 = zext i8 %484 to i32
  %486 = icmp sgt i8 %484, -1
  %487 = sub nuw nsw i32 256, %485
  %488 = select i1 %486, i32 %485, i32 %487
  %489 = zext i32 %488 to i64
  %490 = add i64 %477, %489
  %491 = icmp ule i64 %490, %427
  %492 = add nuw i64 %478, 1
  %493 = icmp ult i64 %492, %6
  %494 = select i1 %491, i1 %493, i1 false
  br i1 %494, label %473, label %495, !llvm.loop !154

495:                                              ; preds = %473, %465
  %496 = phi i64 [ 0, %465 ], [ %490, %473 ]
  %497 = icmp ult i64 %496, %427
  br i1 %497, label %498, label %504

498:                                              ; preds = %495
  %499 = load i8*, i8** %466, align 8, !tbaa !107
  %500 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 34
  %501 = load i8*, i8** %500, align 8, !tbaa !108
  %502 = icmp eq i8* %501, null
  br i1 %502, label %504, label %503

503:                                              ; preds = %498
  store i8* %501, i8** %466, align 8, !tbaa !107
  store i8* %499, i8** %500, align 8, !tbaa !108
  br label %504

504:                                              ; preds = %495, %503, %498, %462, %460
  %505 = phi i64 [ %427, %460 ], [ %427, %462 ], [ %496, %503 ], [ %496, %498 ], [ %427, %495 ]
  %506 = phi i8* [ %461, %460 ], [ %428, %462 ], [ %499, %503 ], [ %499, %498 ], [ %428, %495 ]
  %507 = icmp eq i8 %4, 64
  br i1 %507, label %508, label %726

508:                                              ; preds = %504
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %509 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 33
  %510 = load i8*, i8** %509, align 8, !tbaa !107, !alias.scope !158
  store i8 3, i8* %510, align 1, !tbaa !3, !noalias !158
  %511 = load i8*, i8** %12, align 8, !tbaa !106, !alias.scope !158
  %512 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %513 = load i8*, i8** %512, align 8, !tbaa !109, !alias.scope !158
  %514 = getelementptr i8, i8* %510, i64 1
  %515 = getelementptr i8, i8* %513, i64 1
  %516 = getelementptr i8, i8* %511, i64 1
  %517 = icmp eq i8 %8, 0
  br i1 %517, label %652, label %518

518:                                              ; preds = %508
  %519 = add nsw i32 %11, -1
  %520 = zext i32 %519 to i64
  %521 = add nuw nsw i64 %520, 1
  %522 = icmp eq i32 %519, 0
  br i1 %522, label %616, label %523

523:                                              ; preds = %518
  %524 = add nsw i32 %11, -1
  %525 = zext i32 %524 to i64
  %526 = add nuw nsw i64 %525, 2
  %527 = getelementptr i8, i8* %510, i64 %526
  %528 = getelementptr i8, i8* %511, i64 %526
  %529 = getelementptr i8, i8* %513, i64 %526
  %530 = icmp ult i8* %514, %528
  %531 = icmp ult i8* %516, %527
  %532 = and i1 %530, %531
  %533 = icmp ult i8* %514, %529
  %534 = icmp ult i8* %515, %527
  %535 = and i1 %533, %534
  %536 = or i1 %532, %535
  br i1 %536, label %616, label %537

537:                                              ; preds = %523
  %538 = and i64 %521, 8589934590
  %539 = getelementptr i8, i8* %516, i64 %538
  %540 = getelementptr i8, i8* %515, i64 %538
  %541 = getelementptr i8, i8* %514, i64 %538
  %542 = trunc i64 %538 to i32
  %543 = add nsw i64 %538, -2
  %544 = lshr exact i64 %543, 1
  %545 = add nuw i64 %544, 1
  %546 = and i64 %545, 1
  %547 = icmp eq i64 %543, 0
  br i1 %547, label %590, label %548

548:                                              ; preds = %537
  %549 = and i64 %545, -2
  br label %550

550:                                              ; preds = %550, %548
  %551 = phi i64 [ 0, %548 ], [ %587, %550 ]
  %552 = phi <2 x i64> [ zeroinitializer, %548 ], [ %586, %550 ]
  %553 = phi i64 [ 0, %548 ], [ %588, %550 ]
  %554 = getelementptr i8, i8* %516, i64 %551
  %555 = getelementptr i8, i8* %515, i64 %551
  %556 = getelementptr i8, i8* %514, i64 %551
  %557 = bitcast i8* %554 to <2 x i8>*
  %558 = load <2 x i8>, <2 x i8>* %557, align 1, !tbaa !3, !alias.scope !161, !noalias !158
  %559 = bitcast i8* %555 to <2 x i8>*
  %560 = load <2 x i8>, <2 x i8>* %559, align 1, !tbaa !3, !alias.scope !164, !noalias !158
  %561 = lshr <2 x i8> %560, <i8 1, i8 1>
  %562 = sub <2 x i8> %558, %561
  %563 = bitcast i8* %556 to <2 x i8>*
  store <2 x i8> %562, <2 x i8>* %563, align 1, !tbaa !3, !alias.scope !166, !noalias !168
  %564 = zext <2 x i8> %562 to <2 x i32>
  %565 = icmp sgt <2 x i8> %562, <i8 -1, i8 -1>
  %566 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %564
  %567 = select <2 x i1> %565, <2 x i32> %564, <2 x i32> %566
  %568 = zext <2 x i32> %567 to <2 x i64>
  %569 = add <2 x i64> %552, %568
  %570 = or i64 %551, 2
  %571 = getelementptr i8, i8* %516, i64 %570
  %572 = getelementptr i8, i8* %515, i64 %570
  %573 = getelementptr i8, i8* %514, i64 %570
  %574 = bitcast i8* %571 to <2 x i8>*
  %575 = load <2 x i8>, <2 x i8>* %574, align 1, !tbaa !3, !alias.scope !161, !noalias !158
  %576 = bitcast i8* %572 to <2 x i8>*
  %577 = load <2 x i8>, <2 x i8>* %576, align 1, !tbaa !3, !alias.scope !164, !noalias !158
  %578 = lshr <2 x i8> %577, <i8 1, i8 1>
  %579 = sub <2 x i8> %575, %578
  %580 = bitcast i8* %573 to <2 x i8>*
  store <2 x i8> %579, <2 x i8>* %580, align 1, !tbaa !3, !alias.scope !166, !noalias !168
  %581 = zext <2 x i8> %579 to <2 x i32>
  %582 = icmp sgt <2 x i8> %579, <i8 -1, i8 -1>
  %583 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %581
  %584 = select <2 x i1> %582, <2 x i32> %581, <2 x i32> %583
  %585 = zext <2 x i32> %584 to <2 x i64>
  %586 = add <2 x i64> %569, %585
  %587 = add nuw i64 %551, 4
  %588 = add nuw i64 %553, 2
  %589 = icmp eq i64 %588, %549
  br i1 %589, label %590, label %550, !llvm.loop !169

590:                                              ; preds = %550, %537
  %591 = phi <2 x i64> [ undef, %537 ], [ %586, %550 ]
  %592 = phi i64 [ 0, %537 ], [ %587, %550 ]
  %593 = phi <2 x i64> [ zeroinitializer, %537 ], [ %586, %550 ]
  %594 = icmp eq i64 %546, 0
  br i1 %594, label %612, label %595

595:                                              ; preds = %590
  %596 = getelementptr i8, i8* %516, i64 %592
  %597 = getelementptr i8, i8* %515, i64 %592
  %598 = getelementptr i8, i8* %514, i64 %592
  %599 = bitcast i8* %596 to <2 x i8>*
  %600 = load <2 x i8>, <2 x i8>* %599, align 1, !tbaa !3, !alias.scope !161, !noalias !158
  %601 = bitcast i8* %597 to <2 x i8>*
  %602 = load <2 x i8>, <2 x i8>* %601, align 1, !tbaa !3, !alias.scope !164, !noalias !158
  %603 = lshr <2 x i8> %602, <i8 1, i8 1>
  %604 = sub <2 x i8> %600, %603
  %605 = bitcast i8* %598 to <2 x i8>*
  store <2 x i8> %604, <2 x i8>* %605, align 1, !tbaa !3, !alias.scope !166, !noalias !168
  %606 = zext <2 x i8> %604 to <2 x i32>
  %607 = icmp sgt <2 x i8> %604, <i8 -1, i8 -1>
  %608 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %606
  %609 = select <2 x i1> %607, <2 x i32> %606, <2 x i32> %608
  %610 = zext <2 x i32> %609 to <2 x i64>
  %611 = add <2 x i64> %593, %610
  br label %612

612:                                              ; preds = %590, %595
  %613 = phi <2 x i64> [ %591, %590 ], [ %611, %595 ]
  %614 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %613)
  %615 = icmp eq i64 %521, %538
  br i1 %615, label %652, label %616

616:                                              ; preds = %523, %518, %612
  %617 = phi i8* [ %516, %523 ], [ %516, %518 ], [ %539, %612 ]
  %618 = phi i8* [ %515, %523 ], [ %515, %518 ], [ %540, %612 ]
  %619 = phi i8* [ %514, %523 ], [ %514, %518 ], [ %541, %612 ]
  %620 = phi i64 [ 0, %523 ], [ 0, %518 ], [ %614, %612 ]
  %621 = phi i32 [ 0, %523 ], [ 0, %518 ], [ %542, %612 ]
  %622 = sub i32 %11, %621
  %623 = add i32 %621, 1
  %624 = and i32 %622, 1
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %641, label %626

626:                                              ; preds = %616
  %627 = load i8, i8* %617, align 1, !tbaa !3, !noalias !158
  %628 = load i8, i8* %618, align 1, !tbaa !3, !noalias !158
  %629 = lshr i8 %628, 1
  %630 = sub i8 %627, %629
  store i8 %630, i8* %619, align 1, !tbaa !3, !noalias !158
  %631 = zext i8 %630 to i32
  %632 = icmp sgt i8 %630, -1
  %633 = sub nuw nsw i32 256, %631
  %634 = select i1 %632, i32 %631, i32 %633
  %635 = zext i32 %634 to i64
  %636 = add i64 %620, %635
  %637 = add nuw nsw i32 %621, 1
  %638 = getelementptr inbounds i8, i8* %619, i64 1
  %639 = getelementptr inbounds i8, i8* %618, i64 1
  %640 = getelementptr inbounds i8, i8* %617, i64 1
  br label %641

641:                                              ; preds = %626, %616
  %642 = phi i64 [ undef, %616 ], [ %636, %626 ]
  %643 = phi i8* [ undef, %616 ], [ %638, %626 ]
  %644 = phi i8* [ undef, %616 ], [ %639, %626 ]
  %645 = phi i8* [ undef, %616 ], [ %640, %626 ]
  %646 = phi i8* [ %617, %616 ], [ %640, %626 ]
  %647 = phi i8* [ %618, %616 ], [ %639, %626 ]
  %648 = phi i8* [ %619, %616 ], [ %638, %626 ]
  %649 = phi i64 [ %620, %616 ], [ %636, %626 ]
  %650 = phi i32 [ %621, %616 ], [ %637, %626 ]
  %651 = icmp eq i32 %11, %623
  br i1 %651, label %652, label %659

652:                                              ; preds = %641, %659, %612, %508
  %653 = phi i64 [ 0, %508 ], [ %614, %612 ], [ %642, %641 ], [ %687, %659 ]
  %654 = phi i8* [ %514, %508 ], [ %541, %612 ], [ %643, %641 ], [ %689, %659 ]
  %655 = phi i8* [ %515, %508 ], [ %540, %612 ], [ %644, %641 ], [ %690, %659 ]
  %656 = phi i8* [ %516, %508 ], [ %539, %612 ], [ %645, %641 ], [ %691, %659 ]
  %657 = zext i32 %11 to i64
  %658 = icmp ugt i64 %6, %657
  br i1 %658, label %693, label %724

659:                                              ; preds = %641, %659
  %660 = phi i8* [ %691, %659 ], [ %646, %641 ]
  %661 = phi i8* [ %690, %659 ], [ %647, %641 ]
  %662 = phi i8* [ %689, %659 ], [ %648, %641 ]
  %663 = phi i64 [ %687, %659 ], [ %649, %641 ]
  %664 = phi i32 [ %688, %659 ], [ %650, %641 ]
  %665 = load i8, i8* %660, align 1, !tbaa !3, !noalias !158
  %666 = load i8, i8* %661, align 1, !tbaa !3, !noalias !158
  %667 = lshr i8 %666, 1
  %668 = sub i8 %665, %667
  store i8 %668, i8* %662, align 1, !tbaa !3, !noalias !158
  %669 = zext i8 %668 to i32
  %670 = icmp sgt i8 %668, -1
  %671 = sub nuw nsw i32 256, %669
  %672 = select i1 %670, i32 %669, i32 %671
  %673 = zext i32 %672 to i64
  %674 = add i64 %663, %673
  %675 = getelementptr inbounds i8, i8* %662, i64 1
  %676 = getelementptr inbounds i8, i8* %661, i64 1
  %677 = getelementptr inbounds i8, i8* %660, i64 1
  %678 = load i8, i8* %677, align 1, !tbaa !3, !noalias !158
  %679 = load i8, i8* %676, align 1, !tbaa !3, !noalias !158
  %680 = lshr i8 %679, 1
  %681 = sub i8 %678, %680
  store i8 %681, i8* %675, align 1, !tbaa !3, !noalias !158
  %682 = zext i8 %681 to i32
  %683 = icmp sgt i8 %681, -1
  %684 = sub nuw nsw i32 256, %682
  %685 = select i1 %683, i32 %682, i32 %684
  %686 = zext i32 %685 to i64
  %687 = add i64 %674, %686
  %688 = add nuw nsw i32 %664, 2
  %689 = getelementptr inbounds i8, i8* %662, i64 2
  %690 = getelementptr inbounds i8, i8* %661, i64 2
  %691 = getelementptr inbounds i8, i8* %660, i64 2
  %692 = icmp eq i32 %688, %11
  br i1 %692, label %652, label %659, !llvm.loop !170

693:                                              ; preds = %652, %693
  %694 = phi i8* [ %700, %693 ], [ %511, %652 ]
  %695 = phi i64 [ %715, %693 ], [ %653, %652 ]
  %696 = phi i32 [ %720, %693 ], [ %11, %652 ]
  %697 = phi i8* [ %718, %693 ], [ %655, %652 ]
  %698 = phi i8* [ %717, %693 ], [ %654, %652 ]
  %699 = phi i8* [ %719, %693 ], [ %656, %652 ]
  %700 = getelementptr inbounds i8, i8* %694, i64 1
  %701 = load i8, i8* %699, align 1, !tbaa !3, !noalias !158
  %702 = load i8, i8* %697, align 1, !tbaa !3, !noalias !158
  %703 = zext i8 %702 to i16
  %704 = load i8, i8* %700, align 1, !tbaa !3, !noalias !158
  %705 = zext i8 %704 to i16
  %706 = add nuw nsw i16 %705, %703
  %707 = lshr i16 %706, 1
  %708 = trunc i16 %707 to i8
  %709 = sub i8 %701, %708
  store i8 %709, i8* %698, align 1, !tbaa !3, !noalias !158
  %710 = zext i8 %709 to i32
  %711 = icmp sgt i8 %709, -1
  %712 = sub nuw nsw i32 256, %710
  %713 = select i1 %711, i32 %710, i32 %712
  %714 = zext i32 %713 to i64
  %715 = add i64 %695, %714
  %716 = icmp ule i64 %715, %505
  %717 = getelementptr inbounds i8, i8* %698, i64 1
  %718 = getelementptr inbounds i8, i8* %697, i64 1
  %719 = getelementptr inbounds i8, i8* %699, i64 1
  %720 = add i32 %696, 1
  %721 = zext i32 %720 to i64
  %722 = icmp ugt i64 %6, %721
  %723 = select i1 %716, i1 %722, i1 false
  br i1 %723, label %693, label %724, !llvm.loop !171

724:                                              ; preds = %693, %652
  %725 = load i8*, i8** %509, align 8, !tbaa !107
  br label %954

726:                                              ; preds = %504
  %727 = and i32 %14, 64
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %954, label %729

729:                                              ; preds = %726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %730 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 33
  %731 = load i8*, i8** %730, align 8, !tbaa !107, !alias.scope !172
  store i8 3, i8* %731, align 1, !tbaa !3, !noalias !172
  %732 = load i8*, i8** %12, align 8, !tbaa !106, !alias.scope !172
  %733 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %734 = load i8*, i8** %733, align 8, !tbaa !109, !alias.scope !172
  %735 = getelementptr i8, i8* %731, i64 1
  %736 = getelementptr i8, i8* %734, i64 1
  %737 = getelementptr i8, i8* %732, i64 1
  %738 = icmp eq i8 %8, 0
  br i1 %738, label %873, label %739

739:                                              ; preds = %729
  %740 = add nsw i32 %11, -1
  %741 = zext i32 %740 to i64
  %742 = add nuw nsw i64 %741, 1
  %743 = icmp eq i32 %740, 0
  br i1 %743, label %837, label %744

744:                                              ; preds = %739
  %745 = add nsw i32 %11, -1
  %746 = zext i32 %745 to i64
  %747 = add nuw nsw i64 %746, 2
  %748 = getelementptr i8, i8* %731, i64 %747
  %749 = getelementptr i8, i8* %732, i64 %747
  %750 = getelementptr i8, i8* %734, i64 %747
  %751 = icmp ult i8* %735, %749
  %752 = icmp ult i8* %737, %748
  %753 = and i1 %751, %752
  %754 = icmp ult i8* %735, %750
  %755 = icmp ult i8* %736, %748
  %756 = and i1 %754, %755
  %757 = or i1 %753, %756
  br i1 %757, label %837, label %758

758:                                              ; preds = %744
  %759 = and i64 %742, 8589934590
  %760 = getelementptr i8, i8* %737, i64 %759
  %761 = getelementptr i8, i8* %736, i64 %759
  %762 = getelementptr i8, i8* %735, i64 %759
  %763 = trunc i64 %759 to i32
  %764 = add nsw i64 %759, -2
  %765 = lshr exact i64 %764, 1
  %766 = add nuw i64 %765, 1
  %767 = and i64 %766, 1
  %768 = icmp eq i64 %764, 0
  br i1 %768, label %811, label %769

769:                                              ; preds = %758
  %770 = and i64 %766, -2
  br label %771

771:                                              ; preds = %771, %769
  %772 = phi i64 [ 0, %769 ], [ %808, %771 ]
  %773 = phi <2 x i64> [ zeroinitializer, %769 ], [ %807, %771 ]
  %774 = phi i64 [ 0, %769 ], [ %809, %771 ]
  %775 = getelementptr i8, i8* %737, i64 %772
  %776 = getelementptr i8, i8* %736, i64 %772
  %777 = getelementptr i8, i8* %735, i64 %772
  %778 = bitcast i8* %775 to <2 x i8>*
  %779 = load <2 x i8>, <2 x i8>* %778, align 1, !tbaa !3, !alias.scope !175, !noalias !172
  %780 = bitcast i8* %776 to <2 x i8>*
  %781 = load <2 x i8>, <2 x i8>* %780, align 1, !tbaa !3, !alias.scope !178, !noalias !172
  %782 = lshr <2 x i8> %781, <i8 1, i8 1>
  %783 = sub <2 x i8> %779, %782
  %784 = bitcast i8* %777 to <2 x i8>*
  store <2 x i8> %783, <2 x i8>* %784, align 1, !tbaa !3, !alias.scope !180, !noalias !182
  %785 = zext <2 x i8> %783 to <2 x i32>
  %786 = icmp sgt <2 x i8> %783, <i8 -1, i8 -1>
  %787 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %785
  %788 = select <2 x i1> %786, <2 x i32> %785, <2 x i32> %787
  %789 = zext <2 x i32> %788 to <2 x i64>
  %790 = add <2 x i64> %773, %789
  %791 = or i64 %772, 2
  %792 = getelementptr i8, i8* %737, i64 %791
  %793 = getelementptr i8, i8* %736, i64 %791
  %794 = getelementptr i8, i8* %735, i64 %791
  %795 = bitcast i8* %792 to <2 x i8>*
  %796 = load <2 x i8>, <2 x i8>* %795, align 1, !tbaa !3, !alias.scope !175, !noalias !172
  %797 = bitcast i8* %793 to <2 x i8>*
  %798 = load <2 x i8>, <2 x i8>* %797, align 1, !tbaa !3, !alias.scope !178, !noalias !172
  %799 = lshr <2 x i8> %798, <i8 1, i8 1>
  %800 = sub <2 x i8> %796, %799
  %801 = bitcast i8* %794 to <2 x i8>*
  store <2 x i8> %800, <2 x i8>* %801, align 1, !tbaa !3, !alias.scope !180, !noalias !182
  %802 = zext <2 x i8> %800 to <2 x i32>
  %803 = icmp sgt <2 x i8> %800, <i8 -1, i8 -1>
  %804 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %802
  %805 = select <2 x i1> %803, <2 x i32> %802, <2 x i32> %804
  %806 = zext <2 x i32> %805 to <2 x i64>
  %807 = add <2 x i64> %790, %806
  %808 = add nuw i64 %772, 4
  %809 = add nuw i64 %774, 2
  %810 = icmp eq i64 %809, %770
  br i1 %810, label %811, label %771, !llvm.loop !183

811:                                              ; preds = %771, %758
  %812 = phi <2 x i64> [ undef, %758 ], [ %807, %771 ]
  %813 = phi i64 [ 0, %758 ], [ %808, %771 ]
  %814 = phi <2 x i64> [ zeroinitializer, %758 ], [ %807, %771 ]
  %815 = icmp eq i64 %767, 0
  br i1 %815, label %833, label %816

816:                                              ; preds = %811
  %817 = getelementptr i8, i8* %737, i64 %813
  %818 = getelementptr i8, i8* %736, i64 %813
  %819 = getelementptr i8, i8* %735, i64 %813
  %820 = bitcast i8* %817 to <2 x i8>*
  %821 = load <2 x i8>, <2 x i8>* %820, align 1, !tbaa !3, !alias.scope !175, !noalias !172
  %822 = bitcast i8* %818 to <2 x i8>*
  %823 = load <2 x i8>, <2 x i8>* %822, align 1, !tbaa !3, !alias.scope !178, !noalias !172
  %824 = lshr <2 x i8> %823, <i8 1, i8 1>
  %825 = sub <2 x i8> %821, %824
  %826 = bitcast i8* %819 to <2 x i8>*
  store <2 x i8> %825, <2 x i8>* %826, align 1, !tbaa !3, !alias.scope !180, !noalias !182
  %827 = zext <2 x i8> %825 to <2 x i32>
  %828 = icmp sgt <2 x i8> %825, <i8 -1, i8 -1>
  %829 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %827
  %830 = select <2 x i1> %828, <2 x i32> %827, <2 x i32> %829
  %831 = zext <2 x i32> %830 to <2 x i64>
  %832 = add <2 x i64> %814, %831
  br label %833

833:                                              ; preds = %811, %816
  %834 = phi <2 x i64> [ %812, %811 ], [ %832, %816 ]
  %835 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %834)
  %836 = icmp eq i64 %742, %759
  br i1 %836, label %873, label %837

837:                                              ; preds = %744, %739, %833
  %838 = phi i8* [ %737, %744 ], [ %737, %739 ], [ %760, %833 ]
  %839 = phi i8* [ %736, %744 ], [ %736, %739 ], [ %761, %833 ]
  %840 = phi i8* [ %735, %744 ], [ %735, %739 ], [ %762, %833 ]
  %841 = phi i64 [ 0, %744 ], [ 0, %739 ], [ %835, %833 ]
  %842 = phi i32 [ 0, %744 ], [ 0, %739 ], [ %763, %833 ]
  %843 = sub i32 %11, %842
  %844 = add i32 %842, 1
  %845 = and i32 %843, 1
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %862, label %847

847:                                              ; preds = %837
  %848 = load i8, i8* %838, align 1, !tbaa !3, !noalias !172
  %849 = load i8, i8* %839, align 1, !tbaa !3, !noalias !172
  %850 = lshr i8 %849, 1
  %851 = sub i8 %848, %850
  store i8 %851, i8* %840, align 1, !tbaa !3, !noalias !172
  %852 = zext i8 %851 to i32
  %853 = icmp sgt i8 %851, -1
  %854 = sub nuw nsw i32 256, %852
  %855 = select i1 %853, i32 %852, i32 %854
  %856 = zext i32 %855 to i64
  %857 = add i64 %841, %856
  %858 = add nuw nsw i32 %842, 1
  %859 = getelementptr inbounds i8, i8* %840, i64 1
  %860 = getelementptr inbounds i8, i8* %839, i64 1
  %861 = getelementptr inbounds i8, i8* %838, i64 1
  br label %862

862:                                              ; preds = %847, %837
  %863 = phi i64 [ undef, %837 ], [ %857, %847 ]
  %864 = phi i8* [ undef, %837 ], [ %859, %847 ]
  %865 = phi i8* [ undef, %837 ], [ %860, %847 ]
  %866 = phi i8* [ undef, %837 ], [ %861, %847 ]
  %867 = phi i8* [ %838, %837 ], [ %861, %847 ]
  %868 = phi i8* [ %839, %837 ], [ %860, %847 ]
  %869 = phi i8* [ %840, %837 ], [ %859, %847 ]
  %870 = phi i64 [ %841, %837 ], [ %857, %847 ]
  %871 = phi i32 [ %842, %837 ], [ %858, %847 ]
  %872 = icmp eq i32 %11, %844
  br i1 %872, label %873, label %880

873:                                              ; preds = %862, %880, %833, %729
  %874 = phi i64 [ 0, %729 ], [ %835, %833 ], [ %863, %862 ], [ %908, %880 ]
  %875 = phi i8* [ %735, %729 ], [ %762, %833 ], [ %864, %862 ], [ %910, %880 ]
  %876 = phi i8* [ %736, %729 ], [ %761, %833 ], [ %865, %862 ], [ %911, %880 ]
  %877 = phi i8* [ %737, %729 ], [ %760, %833 ], [ %866, %862 ], [ %912, %880 ]
  %878 = zext i32 %11 to i64
  %879 = icmp ugt i64 %6, %878
  br i1 %879, label %914, label %945

880:                                              ; preds = %862, %880
  %881 = phi i8* [ %912, %880 ], [ %867, %862 ]
  %882 = phi i8* [ %911, %880 ], [ %868, %862 ]
  %883 = phi i8* [ %910, %880 ], [ %869, %862 ]
  %884 = phi i64 [ %908, %880 ], [ %870, %862 ]
  %885 = phi i32 [ %909, %880 ], [ %871, %862 ]
  %886 = load i8, i8* %881, align 1, !tbaa !3, !noalias !172
  %887 = load i8, i8* %882, align 1, !tbaa !3, !noalias !172
  %888 = lshr i8 %887, 1
  %889 = sub i8 %886, %888
  store i8 %889, i8* %883, align 1, !tbaa !3, !noalias !172
  %890 = zext i8 %889 to i32
  %891 = icmp sgt i8 %889, -1
  %892 = sub nuw nsw i32 256, %890
  %893 = select i1 %891, i32 %890, i32 %892
  %894 = zext i32 %893 to i64
  %895 = add i64 %884, %894
  %896 = getelementptr inbounds i8, i8* %883, i64 1
  %897 = getelementptr inbounds i8, i8* %882, i64 1
  %898 = getelementptr inbounds i8, i8* %881, i64 1
  %899 = load i8, i8* %898, align 1, !tbaa !3, !noalias !172
  %900 = load i8, i8* %897, align 1, !tbaa !3, !noalias !172
  %901 = lshr i8 %900, 1
  %902 = sub i8 %899, %901
  store i8 %902, i8* %896, align 1, !tbaa !3, !noalias !172
  %903 = zext i8 %902 to i32
  %904 = icmp sgt i8 %902, -1
  %905 = sub nuw nsw i32 256, %903
  %906 = select i1 %904, i32 %903, i32 %905
  %907 = zext i32 %906 to i64
  %908 = add i64 %895, %907
  %909 = add nuw nsw i32 %885, 2
  %910 = getelementptr inbounds i8, i8* %883, i64 2
  %911 = getelementptr inbounds i8, i8* %882, i64 2
  %912 = getelementptr inbounds i8, i8* %881, i64 2
  %913 = icmp eq i32 %909, %11
  br i1 %913, label %873, label %880, !llvm.loop !184

914:                                              ; preds = %873, %914
  %915 = phi i8* [ %921, %914 ], [ %732, %873 ]
  %916 = phi i64 [ %936, %914 ], [ %874, %873 ]
  %917 = phi i32 [ %941, %914 ], [ %11, %873 ]
  %918 = phi i8* [ %939, %914 ], [ %876, %873 ]
  %919 = phi i8* [ %938, %914 ], [ %875, %873 ]
  %920 = phi i8* [ %940, %914 ], [ %877, %873 ]
  %921 = getelementptr inbounds i8, i8* %915, i64 1
  %922 = load i8, i8* %920, align 1, !tbaa !3, !noalias !172
  %923 = load i8, i8* %918, align 1, !tbaa !3, !noalias !172
  %924 = zext i8 %923 to i16
  %925 = load i8, i8* %921, align 1, !tbaa !3, !noalias !172
  %926 = zext i8 %925 to i16
  %927 = add nuw nsw i16 %926, %924
  %928 = lshr i16 %927, 1
  %929 = trunc i16 %928 to i8
  %930 = sub i8 %922, %929
  store i8 %930, i8* %919, align 1, !tbaa !3, !noalias !172
  %931 = zext i8 %930 to i32
  %932 = icmp sgt i8 %930, -1
  %933 = sub nuw nsw i32 256, %931
  %934 = select i1 %932, i32 %931, i32 %933
  %935 = zext i32 %934 to i64
  %936 = add i64 %916, %935
  %937 = icmp ule i64 %936, %505
  %938 = getelementptr inbounds i8, i8* %919, i64 1
  %939 = getelementptr inbounds i8, i8* %918, i64 1
  %940 = getelementptr inbounds i8, i8* %920, i64 1
  %941 = add i32 %917, 1
  %942 = zext i32 %941 to i64
  %943 = icmp ugt i64 %6, %942
  %944 = select i1 %937, i1 %943, i1 false
  br i1 %944, label %914, label %945, !llvm.loop !171

945:                                              ; preds = %914, %873
  %946 = phi i64 [ %874, %873 ], [ %936, %914 ]
  %947 = icmp ult i64 %946, %505
  br i1 %947, label %948, label %954

948:                                              ; preds = %945
  %949 = load i8*, i8** %730, align 8, !tbaa !107
  %950 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 34
  %951 = load i8*, i8** %950, align 8, !tbaa !108
  %952 = icmp eq i8* %951, null
  br i1 %952, label %954, label %953

953:                                              ; preds = %948
  store i8* %951, i8** %730, align 8, !tbaa !107
  store i8* %949, i8** %950, align 8, !tbaa !108
  br label %954

954:                                              ; preds = %945, %953, %948, %726, %724
  %955 = phi i64 [ %505, %724 ], [ %505, %726 ], [ %946, %953 ], [ %946, %948 ], [ %505, %945 ]
  %956 = phi i8* [ %725, %724 ], [ %506, %726 ], [ %949, %953 ], [ %949, %948 ], [ %506, %945 ]
  %957 = icmp eq i8 %4, -128
  br i1 %957, label %958, label %1176

958:                                              ; preds = %954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %959 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 33
  %960 = load i8*, i8** %959, align 8, !tbaa !107, !alias.scope !185
  store i8 4, i8* %960, align 1, !tbaa !3, !noalias !185
  %961 = load i8*, i8** %12, align 8, !tbaa !106, !alias.scope !185
  %962 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %963 = load i8*, i8** %962, align 8, !tbaa !109, !alias.scope !185
  %964 = zext i32 %11 to i64
  %965 = getelementptr i8, i8* %960, i64 1
  %966 = getelementptr i8, i8* %963, i64 1
  %967 = getelementptr i8, i8* %961, i64 1
  %968 = icmp eq i8 %8, 0
  br i1 %968, label %1093, label %969

969:                                              ; preds = %958
  %970 = icmp ult i8 %8, 9
  br i1 %970, label %1058, label %971

971:                                              ; preds = %969
  %972 = add nuw nsw i64 %964, 1
  %973 = getelementptr i8, i8* %960, i64 %972
  %974 = getelementptr i8, i8* %961, i64 %972
  %975 = getelementptr i8, i8* %963, i64 %972
  %976 = icmp ult i8* %965, %974
  %977 = icmp ult i8* %967, %973
  %978 = and i1 %976, %977
  %979 = icmp ult i8* %965, %975
  %980 = icmp ult i8* %966, %973
  %981 = and i1 %979, %980
  %982 = or i1 %978, %981
  br i1 %982, label %1058, label %983

983:                                              ; preds = %971
  %984 = and i64 %964, 62
  %985 = getelementptr i8, i8* %967, i64 %984
  %986 = getelementptr i8, i8* %966, i64 %984
  %987 = getelementptr i8, i8* %965, i64 %984
  %988 = add nsw i64 %984, -2
  %989 = lshr exact i64 %988, 1
  %990 = add nuw i64 %989, 1
  %991 = and i64 %990, 1
  %992 = icmp eq i64 %988, 0
  br i1 %992, label %1033, label %993

993:                                              ; preds = %983
  %994 = and i64 %990, -2
  br label %995

995:                                              ; preds = %995, %993
  %996 = phi i64 [ 0, %993 ], [ %1030, %995 ]
  %997 = phi <2 x i64> [ zeroinitializer, %993 ], [ %1029, %995 ]
  %998 = phi i64 [ 0, %993 ], [ %1031, %995 ]
  %999 = getelementptr i8, i8* %967, i64 %996
  %1000 = getelementptr i8, i8* %966, i64 %996
  %1001 = getelementptr i8, i8* %965, i64 %996
  %1002 = bitcast i8* %999 to <2 x i8>*
  %1003 = load <2 x i8>, <2 x i8>* %1002, align 1, !tbaa !3, !alias.scope !188, !noalias !185
  %1004 = bitcast i8* %1000 to <2 x i8>*
  %1005 = load <2 x i8>, <2 x i8>* %1004, align 1, !tbaa !3, !alias.scope !191, !noalias !185
  %1006 = sub <2 x i8> %1003, %1005
  %1007 = bitcast i8* %1001 to <2 x i8>*
  store <2 x i8> %1006, <2 x i8>* %1007, align 1, !tbaa !3, !alias.scope !193, !noalias !195
  %1008 = zext <2 x i8> %1006 to <2 x i32>
  %1009 = icmp sgt <2 x i8> %1006, <i8 -1, i8 -1>
  %1010 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %1008
  %1011 = select <2 x i1> %1009, <2 x i32> %1008, <2 x i32> %1010
  %1012 = zext <2 x i32> %1011 to <2 x i64>
  %1013 = add <2 x i64> %997, %1012
  %1014 = or i64 %996, 2
  %1015 = getelementptr i8, i8* %967, i64 %1014
  %1016 = getelementptr i8, i8* %966, i64 %1014
  %1017 = getelementptr i8, i8* %965, i64 %1014
  %1018 = bitcast i8* %1015 to <2 x i8>*
  %1019 = load <2 x i8>, <2 x i8>* %1018, align 1, !tbaa !3, !alias.scope !188, !noalias !185
  %1020 = bitcast i8* %1016 to <2 x i8>*
  %1021 = load <2 x i8>, <2 x i8>* %1020, align 1, !tbaa !3, !alias.scope !191, !noalias !185
  %1022 = sub <2 x i8> %1019, %1021
  %1023 = bitcast i8* %1017 to <2 x i8>*
  store <2 x i8> %1022, <2 x i8>* %1023, align 1, !tbaa !3, !alias.scope !193, !noalias !195
  %1024 = zext <2 x i8> %1022 to <2 x i32>
  %1025 = icmp sgt <2 x i8> %1022, <i8 -1, i8 -1>
  %1026 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %1024
  %1027 = select <2 x i1> %1025, <2 x i32> %1024, <2 x i32> %1026
  %1028 = zext <2 x i32> %1027 to <2 x i64>
  %1029 = add <2 x i64> %1013, %1028
  %1030 = add nuw i64 %996, 4
  %1031 = add nuw i64 %998, 2
  %1032 = icmp eq i64 %1031, %994
  br i1 %1032, label %1033, label %995, !llvm.loop !196

1033:                                             ; preds = %995, %983
  %1034 = phi <2 x i64> [ undef, %983 ], [ %1029, %995 ]
  %1035 = phi i64 [ 0, %983 ], [ %1030, %995 ]
  %1036 = phi <2 x i64> [ zeroinitializer, %983 ], [ %1029, %995 ]
  %1037 = icmp eq i64 %991, 0
  br i1 %1037, label %1054, label %1038

1038:                                             ; preds = %1033
  %1039 = getelementptr i8, i8* %967, i64 %1035
  %1040 = getelementptr i8, i8* %966, i64 %1035
  %1041 = getelementptr i8, i8* %965, i64 %1035
  %1042 = bitcast i8* %1039 to <2 x i8>*
  %1043 = load <2 x i8>, <2 x i8>* %1042, align 1, !tbaa !3, !alias.scope !188, !noalias !185
  %1044 = bitcast i8* %1040 to <2 x i8>*
  %1045 = load <2 x i8>, <2 x i8>* %1044, align 1, !tbaa !3, !alias.scope !191, !noalias !185
  %1046 = sub <2 x i8> %1043, %1045
  %1047 = bitcast i8* %1041 to <2 x i8>*
  store <2 x i8> %1046, <2 x i8>* %1047, align 1, !tbaa !3, !alias.scope !193, !noalias !195
  %1048 = zext <2 x i8> %1046 to <2 x i32>
  %1049 = icmp sgt <2 x i8> %1046, <i8 -1, i8 -1>
  %1050 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %1048
  %1051 = select <2 x i1> %1049, <2 x i32> %1048, <2 x i32> %1050
  %1052 = zext <2 x i32> %1051 to <2 x i64>
  %1053 = add <2 x i64> %1036, %1052
  br label %1054

1054:                                             ; preds = %1033, %1038
  %1055 = phi <2 x i64> [ %1034, %1033 ], [ %1053, %1038 ]
  %1056 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %1055)
  %1057 = icmp eq i64 %984, %964
  br i1 %1057, label %1093, label %1058

1058:                                             ; preds = %971, %969, %1054
  %1059 = phi i8* [ %967, %971 ], [ %967, %969 ], [ %985, %1054 ]
  %1060 = phi i8* [ %966, %971 ], [ %966, %969 ], [ %986, %1054 ]
  %1061 = phi i8* [ %965, %971 ], [ %965, %969 ], [ %987, %1054 ]
  %1062 = phi i64 [ 0, %971 ], [ 0, %969 ], [ %1056, %1054 ]
  %1063 = phi i64 [ 0, %971 ], [ 0, %969 ], [ %984, %1054 ]
  %1064 = xor i64 %1063, -1
  %1065 = and i64 %964, 1
  %1066 = icmp eq i64 %1065, 0
  br i1 %1066, label %1081, label %1067

1067:                                             ; preds = %1058
  %1068 = load i8, i8* %1059, align 1, !tbaa !3, !noalias !185
  %1069 = load i8, i8* %1060, align 1, !tbaa !3, !noalias !185
  %1070 = sub i8 %1068, %1069
  store i8 %1070, i8* %1061, align 1, !tbaa !3, !noalias !185
  %1071 = zext i8 %1070 to i32
  %1072 = icmp sgt i8 %1070, -1
  %1073 = sub nuw nsw i32 256, %1071
  %1074 = select i1 %1072, i32 %1071, i32 %1073
  %1075 = zext i32 %1074 to i64
  %1076 = add i64 %1062, %1075
  %1077 = or i64 %1063, 1
  %1078 = getelementptr inbounds i8, i8* %1061, i64 1
  %1079 = getelementptr inbounds i8, i8* %1060, i64 1
  %1080 = getelementptr inbounds i8, i8* %1059, i64 1
  br label %1081

1081:                                             ; preds = %1067, %1058
  %1082 = phi i64 [ undef, %1058 ], [ %1076, %1067 ]
  %1083 = phi i8* [ undef, %1058 ], [ %1078, %1067 ]
  %1084 = phi i8* [ undef, %1058 ], [ %1079, %1067 ]
  %1085 = phi i8* [ undef, %1058 ], [ %1080, %1067 ]
  %1086 = phi i8* [ %1059, %1058 ], [ %1080, %1067 ]
  %1087 = phi i8* [ %1060, %1058 ], [ %1079, %1067 ]
  %1088 = phi i8* [ %1061, %1058 ], [ %1078, %1067 ]
  %1089 = phi i64 [ %1062, %1058 ], [ %1076, %1067 ]
  %1090 = phi i64 [ %1063, %1058 ], [ %1077, %1067 ]
  %1091 = sub nsw i64 0, %964
  %1092 = icmp eq i64 %1064, %1091
  br i1 %1092, label %1093, label %1099

1093:                                             ; preds = %1081, %1099, %1054, %958
  %1094 = phi i64 [ 0, %958 ], [ %1056, %1054 ], [ %1082, %1081 ], [ %1125, %1099 ]
  %1095 = phi i8* [ %965, %958 ], [ %987, %1054 ], [ %1083, %1081 ], [ %1127, %1099 ]
  %1096 = phi i8* [ %966, %958 ], [ %986, %1054 ], [ %1084, %1081 ], [ %1128, %1099 ]
  %1097 = phi i8* [ %967, %958 ], [ %985, %1054 ], [ %1085, %1081 ], [ %1129, %1099 ]
  %1098 = icmp ugt i64 %6, %964
  br i1 %1098, label %1131, label %1174

1099:                                             ; preds = %1081, %1099
  %1100 = phi i8* [ %1129, %1099 ], [ %1086, %1081 ]
  %1101 = phi i8* [ %1128, %1099 ], [ %1087, %1081 ]
  %1102 = phi i8* [ %1127, %1099 ], [ %1088, %1081 ]
  %1103 = phi i64 [ %1125, %1099 ], [ %1089, %1081 ]
  %1104 = phi i64 [ %1126, %1099 ], [ %1090, %1081 ]
  %1105 = load i8, i8* %1100, align 1, !tbaa !3, !noalias !185
  %1106 = load i8, i8* %1101, align 1, !tbaa !3, !noalias !185
  %1107 = sub i8 %1105, %1106
  store i8 %1107, i8* %1102, align 1, !tbaa !3, !noalias !185
  %1108 = zext i8 %1107 to i32
  %1109 = icmp sgt i8 %1107, -1
  %1110 = sub nuw nsw i32 256, %1108
  %1111 = select i1 %1109, i32 %1108, i32 %1110
  %1112 = zext i32 %1111 to i64
  %1113 = add i64 %1103, %1112
  %1114 = getelementptr inbounds i8, i8* %1102, i64 1
  %1115 = getelementptr inbounds i8, i8* %1101, i64 1
  %1116 = getelementptr inbounds i8, i8* %1100, i64 1
  %1117 = load i8, i8* %1116, align 1, !tbaa !3, !noalias !185
  %1118 = load i8, i8* %1115, align 1, !tbaa !3, !noalias !185
  %1119 = sub i8 %1117, %1118
  store i8 %1119, i8* %1114, align 1, !tbaa !3, !noalias !185
  %1120 = zext i8 %1119 to i32
  %1121 = icmp sgt i8 %1119, -1
  %1122 = sub nuw nsw i32 256, %1120
  %1123 = select i1 %1121, i32 %1120, i32 %1122
  %1124 = zext i32 %1123 to i64
  %1125 = add i64 %1113, %1124
  %1126 = add nuw nsw i64 %1104, 2
  %1127 = getelementptr inbounds i8, i8* %1102, i64 2
  %1128 = getelementptr inbounds i8, i8* %1101, i64 2
  %1129 = getelementptr inbounds i8, i8* %1100, i64 2
  %1130 = icmp eq i64 %1126, %964
  br i1 %1130, label %1093, label %1099, !llvm.loop !197

1131:                                             ; preds = %1093, %1131
  %1132 = phi i8* [ %1140, %1131 ], [ %963, %1093 ]
  %1133 = phi i8* [ %1139, %1131 ], [ %961, %1093 ]
  %1134 = phi i8* [ %1169, %1131 ], [ %1097, %1093 ]
  %1135 = phi i8* [ %1168, %1131 ], [ %1095, %1093 ]
  %1136 = phi i8* [ %1170, %1131 ], [ %1096, %1093 ]
  %1137 = phi i64 [ %1166, %1131 ], [ %1094, %1093 ]
  %1138 = phi i64 [ %1171, %1131 ], [ %964, %1093 ]
  %1139 = getelementptr inbounds i8, i8* %1133, i64 1
  %1140 = getelementptr inbounds i8, i8* %1132, i64 1
  %1141 = load i8, i8* %1136, align 1, !tbaa !3, !noalias !185
  %1142 = zext i8 %1141 to i32
  %1143 = load i8, i8* %1140, align 1, !tbaa !3, !noalias !185
  %1144 = zext i8 %1143 to i32
  %1145 = load i8, i8* %1139, align 1, !tbaa !3, !noalias !185
  %1146 = zext i8 %1145 to i32
  %1147 = sub nsw i32 %1142, %1144
  %1148 = sub nsw i32 %1146, %1144
  %1149 = tail call i32 @llvm.abs.i32(i32 %1147, i1 true) #12
  %1150 = tail call i32 @llvm.abs.i32(i32 %1148, i1 true) #12
  %1151 = add nsw i32 %1148, %1147
  %1152 = tail call i32 @llvm.abs.i32(i32 %1151, i1 true) #12
  %1153 = icmp ugt i32 %1149, %1150
  %1154 = icmp ugt i32 %1149, %1152
  %1155 = select i1 %1153, i1 true, i1 %1154
  %1156 = icmp ugt i32 %1150, %1152
  %1157 = select i1 %1156, i8 %1143, i8 %1141
  %1158 = select i1 %1155, i8 %1157, i8 %1145
  %1159 = load i8, i8* %1134, align 1, !tbaa !3, !noalias !185
  %1160 = sub i8 %1159, %1158
  store i8 %1160, i8* %1135, align 1, !tbaa !3, !noalias !185
  %1161 = zext i8 %1160 to i32
  %1162 = icmp sgt i8 %1160, -1
  %1163 = sub nuw nsw i32 256, %1161
  %1164 = select i1 %1162, i32 %1161, i32 %1163
  %1165 = zext i32 %1164 to i64
  %1166 = add i64 %1137, %1165
  %1167 = icmp ule i64 %1166, %955
  %1168 = getelementptr inbounds i8, i8* %1135, i64 1
  %1169 = getelementptr inbounds i8, i8* %1134, i64 1
  %1170 = getelementptr inbounds i8, i8* %1136, i64 1
  %1171 = add nuw i64 %1138, 1
  %1172 = icmp ult i64 %1171, %6
  %1173 = select i1 %1167, i1 %1172, i1 false
  br i1 %1173, label %1131, label %1174, !llvm.loop !198

1174:                                             ; preds = %1131, %1093
  %1175 = load i8*, i8** %959, align 8, !tbaa !107
  br label %1404

1176:                                             ; preds = %954
  %1177 = and i32 %14, 128
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1404, label %1179

1179:                                             ; preds = %1176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %1180 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 33
  %1181 = load i8*, i8** %1180, align 8, !tbaa !107, !alias.scope !199
  store i8 4, i8* %1181, align 1, !tbaa !3, !noalias !199
  %1182 = load i8*, i8** %12, align 8, !tbaa !106, !alias.scope !199
  %1183 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %1184 = load i8*, i8** %1183, align 8, !tbaa !109, !alias.scope !199
  %1185 = zext i32 %11 to i64
  %1186 = getelementptr i8, i8* %1181, i64 1
  %1187 = getelementptr i8, i8* %1184, i64 1
  %1188 = getelementptr i8, i8* %1182, i64 1
  %1189 = icmp eq i8 %8, 0
  br i1 %1189, label %1314, label %1190

1190:                                             ; preds = %1179
  %1191 = icmp ult i8 %8, 9
  br i1 %1191, label %1279, label %1192

1192:                                             ; preds = %1190
  %1193 = add nuw nsw i64 %1185, 1
  %1194 = getelementptr i8, i8* %1181, i64 %1193
  %1195 = getelementptr i8, i8* %1182, i64 %1193
  %1196 = getelementptr i8, i8* %1184, i64 %1193
  %1197 = icmp ult i8* %1186, %1195
  %1198 = icmp ult i8* %1188, %1194
  %1199 = and i1 %1197, %1198
  %1200 = icmp ult i8* %1186, %1196
  %1201 = icmp ult i8* %1187, %1194
  %1202 = and i1 %1200, %1201
  %1203 = or i1 %1199, %1202
  br i1 %1203, label %1279, label %1204

1204:                                             ; preds = %1192
  %1205 = and i64 %1185, 62
  %1206 = getelementptr i8, i8* %1188, i64 %1205
  %1207 = getelementptr i8, i8* %1187, i64 %1205
  %1208 = getelementptr i8, i8* %1186, i64 %1205
  %1209 = add nsw i64 %1205, -2
  %1210 = lshr exact i64 %1209, 1
  %1211 = add nuw i64 %1210, 1
  %1212 = and i64 %1211, 1
  %1213 = icmp eq i64 %1209, 0
  br i1 %1213, label %1254, label %1214

1214:                                             ; preds = %1204
  %1215 = and i64 %1211, -2
  br label %1216

1216:                                             ; preds = %1216, %1214
  %1217 = phi i64 [ 0, %1214 ], [ %1251, %1216 ]
  %1218 = phi <2 x i64> [ zeroinitializer, %1214 ], [ %1250, %1216 ]
  %1219 = phi i64 [ 0, %1214 ], [ %1252, %1216 ]
  %1220 = getelementptr i8, i8* %1188, i64 %1217
  %1221 = getelementptr i8, i8* %1187, i64 %1217
  %1222 = getelementptr i8, i8* %1186, i64 %1217
  %1223 = bitcast i8* %1220 to <2 x i8>*
  %1224 = load <2 x i8>, <2 x i8>* %1223, align 1, !tbaa !3, !alias.scope !202, !noalias !199
  %1225 = bitcast i8* %1221 to <2 x i8>*
  %1226 = load <2 x i8>, <2 x i8>* %1225, align 1, !tbaa !3, !alias.scope !205, !noalias !199
  %1227 = sub <2 x i8> %1224, %1226
  %1228 = bitcast i8* %1222 to <2 x i8>*
  store <2 x i8> %1227, <2 x i8>* %1228, align 1, !tbaa !3, !alias.scope !207, !noalias !209
  %1229 = zext <2 x i8> %1227 to <2 x i32>
  %1230 = icmp sgt <2 x i8> %1227, <i8 -1, i8 -1>
  %1231 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %1229
  %1232 = select <2 x i1> %1230, <2 x i32> %1229, <2 x i32> %1231
  %1233 = zext <2 x i32> %1232 to <2 x i64>
  %1234 = add <2 x i64> %1218, %1233
  %1235 = or i64 %1217, 2
  %1236 = getelementptr i8, i8* %1188, i64 %1235
  %1237 = getelementptr i8, i8* %1187, i64 %1235
  %1238 = getelementptr i8, i8* %1186, i64 %1235
  %1239 = bitcast i8* %1236 to <2 x i8>*
  %1240 = load <2 x i8>, <2 x i8>* %1239, align 1, !tbaa !3, !alias.scope !202, !noalias !199
  %1241 = bitcast i8* %1237 to <2 x i8>*
  %1242 = load <2 x i8>, <2 x i8>* %1241, align 1, !tbaa !3, !alias.scope !205, !noalias !199
  %1243 = sub <2 x i8> %1240, %1242
  %1244 = bitcast i8* %1238 to <2 x i8>*
  store <2 x i8> %1243, <2 x i8>* %1244, align 1, !tbaa !3, !alias.scope !207, !noalias !209
  %1245 = zext <2 x i8> %1243 to <2 x i32>
  %1246 = icmp sgt <2 x i8> %1243, <i8 -1, i8 -1>
  %1247 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %1245
  %1248 = select <2 x i1> %1246, <2 x i32> %1245, <2 x i32> %1247
  %1249 = zext <2 x i32> %1248 to <2 x i64>
  %1250 = add <2 x i64> %1234, %1249
  %1251 = add nuw i64 %1217, 4
  %1252 = add nuw i64 %1219, 2
  %1253 = icmp eq i64 %1252, %1215
  br i1 %1253, label %1254, label %1216, !llvm.loop !210

1254:                                             ; preds = %1216, %1204
  %1255 = phi <2 x i64> [ undef, %1204 ], [ %1250, %1216 ]
  %1256 = phi i64 [ 0, %1204 ], [ %1251, %1216 ]
  %1257 = phi <2 x i64> [ zeroinitializer, %1204 ], [ %1250, %1216 ]
  %1258 = icmp eq i64 %1212, 0
  br i1 %1258, label %1275, label %1259

1259:                                             ; preds = %1254
  %1260 = getelementptr i8, i8* %1188, i64 %1256
  %1261 = getelementptr i8, i8* %1187, i64 %1256
  %1262 = getelementptr i8, i8* %1186, i64 %1256
  %1263 = bitcast i8* %1260 to <2 x i8>*
  %1264 = load <2 x i8>, <2 x i8>* %1263, align 1, !tbaa !3, !alias.scope !202, !noalias !199
  %1265 = bitcast i8* %1261 to <2 x i8>*
  %1266 = load <2 x i8>, <2 x i8>* %1265, align 1, !tbaa !3, !alias.scope !205, !noalias !199
  %1267 = sub <2 x i8> %1264, %1266
  %1268 = bitcast i8* %1262 to <2 x i8>*
  store <2 x i8> %1267, <2 x i8>* %1268, align 1, !tbaa !3, !alias.scope !207, !noalias !209
  %1269 = zext <2 x i8> %1267 to <2 x i32>
  %1270 = icmp sgt <2 x i8> %1267, <i8 -1, i8 -1>
  %1271 = sub nuw nsw <2 x i32> <i32 256, i32 256>, %1269
  %1272 = select <2 x i1> %1270, <2 x i32> %1269, <2 x i32> %1271
  %1273 = zext <2 x i32> %1272 to <2 x i64>
  %1274 = add <2 x i64> %1257, %1273
  br label %1275

1275:                                             ; preds = %1254, %1259
  %1276 = phi <2 x i64> [ %1255, %1254 ], [ %1274, %1259 ]
  %1277 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %1276)
  %1278 = icmp eq i64 %1205, %1185
  br i1 %1278, label %1314, label %1279

1279:                                             ; preds = %1192, %1190, %1275
  %1280 = phi i8* [ %1188, %1192 ], [ %1188, %1190 ], [ %1206, %1275 ]
  %1281 = phi i8* [ %1187, %1192 ], [ %1187, %1190 ], [ %1207, %1275 ]
  %1282 = phi i8* [ %1186, %1192 ], [ %1186, %1190 ], [ %1208, %1275 ]
  %1283 = phi i64 [ 0, %1192 ], [ 0, %1190 ], [ %1277, %1275 ]
  %1284 = phi i64 [ 0, %1192 ], [ 0, %1190 ], [ %1205, %1275 ]
  %1285 = xor i64 %1284, -1
  %1286 = and i64 %1185, 1
  %1287 = icmp eq i64 %1286, 0
  br i1 %1287, label %1302, label %1288

1288:                                             ; preds = %1279
  %1289 = load i8, i8* %1280, align 1, !tbaa !3, !noalias !199
  %1290 = load i8, i8* %1281, align 1, !tbaa !3, !noalias !199
  %1291 = sub i8 %1289, %1290
  store i8 %1291, i8* %1282, align 1, !tbaa !3, !noalias !199
  %1292 = zext i8 %1291 to i32
  %1293 = icmp sgt i8 %1291, -1
  %1294 = sub nuw nsw i32 256, %1292
  %1295 = select i1 %1293, i32 %1292, i32 %1294
  %1296 = zext i32 %1295 to i64
  %1297 = add i64 %1283, %1296
  %1298 = or i64 %1284, 1
  %1299 = getelementptr inbounds i8, i8* %1282, i64 1
  %1300 = getelementptr inbounds i8, i8* %1281, i64 1
  %1301 = getelementptr inbounds i8, i8* %1280, i64 1
  br label %1302

1302:                                             ; preds = %1288, %1279
  %1303 = phi i64 [ undef, %1279 ], [ %1297, %1288 ]
  %1304 = phi i8* [ undef, %1279 ], [ %1299, %1288 ]
  %1305 = phi i8* [ undef, %1279 ], [ %1300, %1288 ]
  %1306 = phi i8* [ undef, %1279 ], [ %1301, %1288 ]
  %1307 = phi i8* [ %1280, %1279 ], [ %1301, %1288 ]
  %1308 = phi i8* [ %1281, %1279 ], [ %1300, %1288 ]
  %1309 = phi i8* [ %1282, %1279 ], [ %1299, %1288 ]
  %1310 = phi i64 [ %1283, %1279 ], [ %1297, %1288 ]
  %1311 = phi i64 [ %1284, %1279 ], [ %1298, %1288 ]
  %1312 = sub nsw i64 0, %1185
  %1313 = icmp eq i64 %1285, %1312
  br i1 %1313, label %1314, label %1320

1314:                                             ; preds = %1302, %1320, %1275, %1179
  %1315 = phi i64 [ 0, %1179 ], [ %1277, %1275 ], [ %1303, %1302 ], [ %1346, %1320 ]
  %1316 = phi i8* [ %1186, %1179 ], [ %1208, %1275 ], [ %1304, %1302 ], [ %1348, %1320 ]
  %1317 = phi i8* [ %1187, %1179 ], [ %1207, %1275 ], [ %1305, %1302 ], [ %1349, %1320 ]
  %1318 = phi i8* [ %1188, %1179 ], [ %1206, %1275 ], [ %1306, %1302 ], [ %1350, %1320 ]
  %1319 = icmp ugt i64 %6, %1185
  br i1 %1319, label %1352, label %1395

1320:                                             ; preds = %1302, %1320
  %1321 = phi i8* [ %1350, %1320 ], [ %1307, %1302 ]
  %1322 = phi i8* [ %1349, %1320 ], [ %1308, %1302 ]
  %1323 = phi i8* [ %1348, %1320 ], [ %1309, %1302 ]
  %1324 = phi i64 [ %1346, %1320 ], [ %1310, %1302 ]
  %1325 = phi i64 [ %1347, %1320 ], [ %1311, %1302 ]
  %1326 = load i8, i8* %1321, align 1, !tbaa !3, !noalias !199
  %1327 = load i8, i8* %1322, align 1, !tbaa !3, !noalias !199
  %1328 = sub i8 %1326, %1327
  store i8 %1328, i8* %1323, align 1, !tbaa !3, !noalias !199
  %1329 = zext i8 %1328 to i32
  %1330 = icmp sgt i8 %1328, -1
  %1331 = sub nuw nsw i32 256, %1329
  %1332 = select i1 %1330, i32 %1329, i32 %1331
  %1333 = zext i32 %1332 to i64
  %1334 = add i64 %1324, %1333
  %1335 = getelementptr inbounds i8, i8* %1323, i64 1
  %1336 = getelementptr inbounds i8, i8* %1322, i64 1
  %1337 = getelementptr inbounds i8, i8* %1321, i64 1
  %1338 = load i8, i8* %1337, align 1, !tbaa !3, !noalias !199
  %1339 = load i8, i8* %1336, align 1, !tbaa !3, !noalias !199
  %1340 = sub i8 %1338, %1339
  store i8 %1340, i8* %1335, align 1, !tbaa !3, !noalias !199
  %1341 = zext i8 %1340 to i32
  %1342 = icmp sgt i8 %1340, -1
  %1343 = sub nuw nsw i32 256, %1341
  %1344 = select i1 %1342, i32 %1341, i32 %1343
  %1345 = zext i32 %1344 to i64
  %1346 = add i64 %1334, %1345
  %1347 = add nuw nsw i64 %1325, 2
  %1348 = getelementptr inbounds i8, i8* %1323, i64 2
  %1349 = getelementptr inbounds i8, i8* %1322, i64 2
  %1350 = getelementptr inbounds i8, i8* %1321, i64 2
  %1351 = icmp eq i64 %1347, %1185
  br i1 %1351, label %1314, label %1320, !llvm.loop !211

1352:                                             ; preds = %1314, %1352
  %1353 = phi i8* [ %1361, %1352 ], [ %1184, %1314 ]
  %1354 = phi i8* [ %1360, %1352 ], [ %1182, %1314 ]
  %1355 = phi i8* [ %1390, %1352 ], [ %1318, %1314 ]
  %1356 = phi i8* [ %1389, %1352 ], [ %1316, %1314 ]
  %1357 = phi i8* [ %1391, %1352 ], [ %1317, %1314 ]
  %1358 = phi i64 [ %1387, %1352 ], [ %1315, %1314 ]
  %1359 = phi i64 [ %1392, %1352 ], [ %1185, %1314 ]
  %1360 = getelementptr inbounds i8, i8* %1354, i64 1
  %1361 = getelementptr inbounds i8, i8* %1353, i64 1
  %1362 = load i8, i8* %1357, align 1, !tbaa !3, !noalias !199
  %1363 = zext i8 %1362 to i32
  %1364 = load i8, i8* %1361, align 1, !tbaa !3, !noalias !199
  %1365 = zext i8 %1364 to i32
  %1366 = load i8, i8* %1360, align 1, !tbaa !3, !noalias !199
  %1367 = zext i8 %1366 to i32
  %1368 = sub nsw i32 %1363, %1365
  %1369 = sub nsw i32 %1367, %1365
  %1370 = tail call i32 @llvm.abs.i32(i32 %1368, i1 true) #12
  %1371 = tail call i32 @llvm.abs.i32(i32 %1369, i1 true) #12
  %1372 = add nsw i32 %1369, %1368
  %1373 = tail call i32 @llvm.abs.i32(i32 %1372, i1 true) #12
  %1374 = icmp ugt i32 %1370, %1371
  %1375 = icmp ugt i32 %1370, %1373
  %1376 = select i1 %1374, i1 true, i1 %1375
  %1377 = icmp ugt i32 %1371, %1373
  %1378 = select i1 %1377, i8 %1364, i8 %1362
  %1379 = select i1 %1376, i8 %1378, i8 %1366
  %1380 = load i8, i8* %1355, align 1, !tbaa !3, !noalias !199
  %1381 = sub i8 %1380, %1379
  store i8 %1381, i8* %1356, align 1, !tbaa !3, !noalias !199
  %1382 = zext i8 %1381 to i32
  %1383 = icmp sgt i8 %1381, -1
  %1384 = sub nuw nsw i32 256, %1382
  %1385 = select i1 %1383, i32 %1382, i32 %1384
  %1386 = zext i32 %1385 to i64
  %1387 = add i64 %1358, %1386
  %1388 = icmp ule i64 %1387, %955
  %1389 = getelementptr inbounds i8, i8* %1356, i64 1
  %1390 = getelementptr inbounds i8, i8* %1355, i64 1
  %1391 = getelementptr inbounds i8, i8* %1357, i64 1
  %1392 = add nuw i64 %1359, 1
  %1393 = icmp ult i64 %1392, %6
  %1394 = select i1 %1388, i1 %1393, i1 false
  br i1 %1394, label %1352, label %1395, !llvm.loop !198

1395:                                             ; preds = %1352, %1314
  %1396 = phi i64 [ %1315, %1314 ], [ %1387, %1352 ]
  %1397 = icmp ult i64 %1396, %955
  br i1 %1397, label %1398, label %1404

1398:                                             ; preds = %1395
  %1399 = load i8*, i8** %1180, align 8, !tbaa !107
  %1400 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 34
  %1401 = load i8*, i8** %1400, align 8, !tbaa !108
  %1402 = icmp eq i8* %1401, null
  br i1 %1402, label %1404, label %1403

1403:                                             ; preds = %1398
  store i8* %1401, i8** %1180, align 8, !tbaa !107
  store i8* %1399, i8** %1400, align 8, !tbaa !108
  br label %1404

1404:                                             ; preds = %1395, %1403, %1398, %1176, %1174
  %1405 = phi i8* [ %1175, %1174 ], [ %956, %1176 ], [ %1399, %1403 ], [ %1399, %1398 ], [ %956, %1395 ]
  %1406 = load i64, i64* %5, align 8, !tbaa !122
  %1407 = add i64 %1406, 1
  tail call void @png_compress_IDAT(%struct.png_struct_def* noundef %0, i8* noundef %1405, i64 noundef %1407, i32 noundef 0) #12
  %1408 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 31
  %1409 = load i8*, i8** %1408, align 8, !tbaa !109, !alias.scope !212
  %1410 = icmp eq i8* %1409, null
  br i1 %1410, label %1413, label %1411

1411:                                             ; preds = %1404
  %1412 = load i8*, i8** %12, align 8, !tbaa !106, !alias.scope !212
  store i8* %1412, i8** %1408, align 8, !tbaa !109, !alias.scope !212
  store i8* %1409, i8** %12, align 8, !tbaa !106, !alias.scope !212
  br label %1413

1413:                                             ; preds = %1411, %1404
  tail call void @png_write_finish_row(%struct.png_struct_def* noundef nonnull %0) #12
  %1414 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 61
  %1415 = load i32, i32* %1414, align 4, !tbaa !215, !alias.scope !212
  %1416 = add i32 %1415, 1
  store i32 %1416, i32* %1414, align 4, !tbaa !215, !alias.scope !212
  %1417 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 60
  %1418 = load i32, i32* %1417, align 8, !tbaa !216, !alias.scope !212
  %1419 = icmp eq i32 %1418, 0
  %1420 = icmp ult i32 %1416, %1418
  %1421 = select i1 %1419, i1 true, i1 %1420
  br i1 %1421, label %1423, label %1422

1422:                                             ; preds = %1413
  tail call void @png_write_flush(%struct.png_struct_def* noundef nonnull %0) #12
  br label %1423

1423:                                             ; preds = %1413, %1422
  ret void
}

declare dso_local void @png_reset_crc(%struct.png_struct_def* noundef) local_unnamed_addr #4

declare dso_local i64 @png_safecat(i8* noundef, i64 noundef, i64 noundef, i8* noundef) local_unnamed_addr #4

declare dso_local i32 @deflateEnd(%struct.z_stream_s* noundef) local_unnamed_addr #4

declare dso_local i32 @deflateReset(%struct.z_stream_s* noundef) local_unnamed_addr #4

declare dso_local i32 @deflateInit2_(%struct.z_stream_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare dso_local void @png_write_flush(%struct.png_struct_def* noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #11 = { nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !9, i64 556}
!7 = !{!"png_struct_def", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !10, i64 64, !8, i64 176, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !11, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !11, i64 304, !9, i64 312, !9, i64 316, !8, i64 320, !12, i64 328, !9, i64 332, !12, i64 336, !4, i64 338, !4, i64 339, !4, i64 340, !4, i64 341, !4, i64 342, !4, i64 343, !4, i64 344, !4, i64 345, !4, i64 346, !4, i64 347, !4, i64 348, !4, i64 349, !4, i64 350, !4, i64 351, !4, i64 352, !9, i64 356, !13, i64 360, !8, i64 376, !9, i64 384, !9, i64 388, !14, i64 392, !8, i64 400, !13, i64 408, !8, i64 424, !8, i64 432, !9, i64 440, !9, i64 444, !9, i64 448, !8, i64 456, !8, i64 464, !4, i64 472, !9, i64 476, !9, i64 480, !9, i64 484, !11, i64 488, !15, i64 496, !11, i64 528, !8, i64 536, !11, i64 544, !9, i64 552, !9, i64 556, !8, i64 560, !4, i64 568}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = !{!"z_stream_s", !8, i64 0, !9, i64 8, !11, i64 16, !8, i64 24, !9, i64 32, !11, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !9, i64 88, !11, i64 96, !11, i64 104}
!11 = !{!"long", !4, i64 0}
!12 = !{!"short", !4, i64 0}
!13 = !{!"png_color_16_struct", !4, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8}
!14 = !{!"png_color_8_struct", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !4, i64 4}
!15 = !{!"png_unknown_chunk_t", !4, i64 0, !8, i64 8, !11, i64 16, !4, i64 24}
!16 = !{!7, !4, i64 349}
!17 = !{!7, !9, i64 48}
!18 = !{!19}
!19 = distinct !{!19, !20, !"png_write_chunk_header: argument 0"}
!20 = distinct !{!20, !"png_write_chunk_header"}
!21 = !{!7, !9, i64 264}
!22 = !{!7, !9, i64 316}
!23 = !{!24}
!24 = distinct !{!24, !25, !"png_write_chunk_header: argument 0"}
!25 = distinct !{!25, !"png_write_chunk_header"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"png_write_chunk_end: argument 0"}
!28 = distinct !{!28, !"png_write_chunk_end"}
!29 = !{!8, !8, i64 0}
!30 = !{!31, !8, i64 0}
!31 = !{!"png_compression_buffer", !8, i64 0, !4, i64 8}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!7, !4, i64 347}
!35 = !{!7, !4, i64 344}
!36 = !{!7, !4, i64 343}
!37 = !{!7, !4, i64 340}
!38 = !{!7, !4, i64 472}
!39 = !{!7, !9, i64 228}
!40 = !{!7, !9, i64 232}
!41 = !{!7, !4, i64 346}
!42 = !{!7, !11, i64 248}
!43 = !{!7, !9, i64 240}
!44 = !{!7, !4, i64 345}
!45 = !{!7, !4, i64 348}
!46 = !{!7, !4, i64 342}
!47 = !{!7, !12, i64 328}
!48 = !{!49}
!49 = distinct !{!49, !50, !"png_write_chunk_header: argument 0"}
!50 = distinct !{!50, !"png_write_chunk_header"}
!51 = !{!52, !4, i64 0}
!52 = !{!"png_color_struct", !4, i64 0, !4, i64 1, !4, i64 2}
!53 = !{!52, !4, i64 1}
!54 = !{!52, !4, i64 2}
!55 = distinct !{!55, !33}
!56 = !{!57}
!57 = distinct !{!57, !58, !"png_write_chunk_end: argument 0"}
!58 = distinct !{!58, !"png_write_chunk_end"}
!59 = !{!7, !9, i64 60}
!60 = !{!7, !8, i64 176}
!61 = !{!7, !9, i64 184}
!62 = !{!63}
!63 = distinct !{!63, !64, !"png_free_buffer_list: argument 0"}
!64 = distinct !{!64, !"png_free_buffer_list"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"png_deflate_claim: argument 0"}
!67 = distinct !{!67, !"png_deflate_claim"}
!68 = !{!7, !8, i64 112}
!69 = !{!7, !9, i64 188}
!70 = !{!7, !9, i64 192}
!71 = !{!7, !9, i64 196}
!72 = !{!7, !9, i64 200}
!73 = !{!7, !9, i64 52}
!74 = !{!7, !9, i64 204}
!75 = distinct !{!75, !33}
!76 = !{!7, !9, i64 208}
!77 = !{!7, !9, i64 212}
!78 = !{!7, !9, i64 216}
!79 = !{!7, !9, i64 220}
!80 = !{!7, !9, i64 224}
!81 = !{!7, !8, i64 64}
!82 = !{!7, !9, i64 72}
!83 = !{!7, !8, i64 88}
!84 = !{!7, !9, i64 96}
!85 = distinct !{!85, !33}
!86 = !{!14, !4, i64 0}
!87 = !{!14, !4, i64 1}
!88 = !{!14, !4, i64 2}
!89 = !{!14, !4, i64 3}
!90 = !{!14, !4, i64 4}
!91 = !{!13, !12, i64 8}
!92 = !{!13, !12, i64 2}
!93 = !{!13, !12, i64 4}
!94 = !{!13, !12, i64 6}
!95 = !{!13, !4, i64 0}
!96 = !{!97}
!97 = distinct !{!97, !98, !"png_write_chunk_header: argument 0"}
!98 = distinct !{!98, !"png_write_chunk_header"}
!99 = !{!12, !12, i64 0}
!100 = distinct !{!100, !33}
!101 = !{!102}
!102 = distinct !{!102, !103, !"png_write_chunk_end: argument 0"}
!103 = distinct !{!103, !"png_write_chunk_end"}
!104 = !{!7, !4, i64 351}
!105 = !{!7, !4, i64 350}
!106 = !{!7, !8, i64 280}
!107 = !{!7, !8, i64 288}
!108 = !{!7, !8, i64 296}
!109 = !{!7, !8, i64 272}
!110 = !{!7, !9, i64 56}
!111 = !{!7, !9, i64 236}
!112 = !{!7, !9, i64 260}
!113 = !{!7, !4, i64 341}
!114 = distinct !{!114, !33}
!115 = !{!116, !4, i64 19}
!116 = !{!"png_row_info_struct", !9, i64 0, !11, i64 8, !4, i64 16, !4, i64 17, !4, i64 18, !4, i64 19}
!117 = !{!116, !9, i64 0}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = !{!116, !11, i64 8}
!123 = distinct !{!123, !33, !124}
!124 = !{!"llvm.loop.isvectorized", i32 1}
!125 = distinct !{!125, !33}
!126 = distinct !{!126, !33, !127, !124}
!127 = !{!"llvm.loop.unroll.runtime.disable"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"png_setup_sub_row: argument 0"}
!130 = distinct !{!130, !"png_setup_sub_row"}
!131 = !{!132}
!132 = distinct !{!132, !133}
!133 = distinct !{!133, !"LVerDomain"}
!134 = !{!135}
!135 = distinct !{!135, !133}
!136 = !{!129, !132}
!137 = distinct !{!137, !33, !124}
!138 = distinct !{!138, !33, !124}
!139 = distinct !{!139, !33}
!140 = !{!141}
!141 = distinct !{!141, !142, !"png_setup_sub_row: argument 0"}
!142 = distinct !{!142, !"png_setup_sub_row"}
!143 = !{!144}
!144 = distinct !{!144, !145}
!145 = distinct !{!145, !"LVerDomain"}
!146 = !{!147}
!147 = distinct !{!147, !145}
!148 = !{!141, !144}
!149 = distinct !{!149, !33, !124}
!150 = distinct !{!150, !33, !124}
!151 = !{!152}
!152 = distinct !{!152, !153, !"png_setup_up_row: argument 0"}
!153 = distinct !{!153, !"png_setup_up_row"}
!154 = distinct !{!154, !33}
!155 = !{!156}
!156 = distinct !{!156, !157, !"png_setup_up_row: argument 0"}
!157 = distinct !{!157, !"png_setup_up_row"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"png_setup_avg_row: argument 0"}
!160 = distinct !{!160, !"png_setup_avg_row"}
!161 = !{!162}
!162 = distinct !{!162, !163}
!163 = distinct !{!163, !"LVerDomain"}
!164 = !{!165}
!165 = distinct !{!165, !163}
!166 = !{!167}
!167 = distinct !{!167, !163}
!168 = !{!159, !162, !165}
!169 = distinct !{!169, !33, !124}
!170 = distinct !{!170, !33, !124}
!171 = distinct !{!171, !33}
!172 = !{!173}
!173 = distinct !{!173, !174, !"png_setup_avg_row: argument 0"}
!174 = distinct !{!174, !"png_setup_avg_row"}
!175 = !{!176}
!176 = distinct !{!176, !177}
!177 = distinct !{!177, !"LVerDomain"}
!178 = !{!179}
!179 = distinct !{!179, !177}
!180 = !{!181}
!181 = distinct !{!181, !177}
!182 = !{!173, !176, !179}
!183 = distinct !{!183, !33, !124}
!184 = distinct !{!184, !33, !124}
!185 = !{!186}
!186 = distinct !{!186, !187, !"png_setup_paeth_row: argument 0"}
!187 = distinct !{!187, !"png_setup_paeth_row"}
!188 = !{!189}
!189 = distinct !{!189, !190}
!190 = distinct !{!190, !"LVerDomain"}
!191 = !{!192}
!192 = distinct !{!192, !190}
!193 = !{!194}
!194 = distinct !{!194, !190}
!195 = !{!186, !189, !192}
!196 = distinct !{!196, !33, !124}
!197 = distinct !{!197, !33, !124}
!198 = distinct !{!198, !33}
!199 = !{!200}
!200 = distinct !{!200, !201, !"png_setup_paeth_row: argument 0"}
!201 = distinct !{!201, !"png_setup_paeth_row"}
!202 = !{!203}
!203 = distinct !{!203, !204}
!204 = distinct !{!204, !"LVerDomain"}
!205 = !{!206}
!206 = distinct !{!206, !204}
!207 = !{!208}
!208 = distinct !{!208, !204}
!209 = !{!200, !203, !206}
!210 = distinct !{!210, !33, !124}
!211 = distinct !{!211, !33, !124}
!212 = !{!213}
!213 = distinct !{!213, !214, !"png_write_filtered_row: argument 0"}
!214 = distinct !{!214, !"png_write_filtered_row"}
!215 = !{!7, !9, i64 388}
!216 = !{!7, !9, i64 384}
