; ModuleID = 'png.c'
source_filename = "png.c"
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [33 x i8] c"Too many bytes for PNG signature\00", align 1
@__const.png_sig_cmp.png_signature = private unnamed_addr constant [8 x i8] c"\89PNG\0D\0A\1A\0A", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"1.6.21\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Application built with libpng-\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c" but running with \00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Unknown freer parameter in png_data_freer\00", align 1
@.str.6 = private unnamed_addr constant [201 x i8] c"\0Alibpng version 1.6.21 - January 15, 2016\0ACopyright (c) 1998-2002,2004,2006-2016 Glenn Randers-Pehrson\0ACopyright (c) 1996-1997 Andreas Dilger\0ACopyright (c) 1995-1996 Guy Eric Schalnat, Group 42, Inc.\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c" libpng version 1.6.21 - January 15, 2016\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"unexpected zlib return code\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"unexpected end of LZ stream\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"missing LZ dictionary\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"zlib IO error\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"bad parameters to zlib\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"damaged LZ stream\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"insufficient memory\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"unsupported zlib version\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"unexpected zlib return\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Image width is zero in IHDR\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Invalid image width in IHDR\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Image width exceeds user limit in IHDR\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Image height is zero in IHDR\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Invalid image height in IHDR\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Image height exceeds user limit in IHDR\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Invalid bit depth in IHDR\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Invalid color type in IHDR\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"Invalid color type/bit depth combination in IHDR\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"Unknown interlace method in IHDR\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Unknown compression method in IHDR\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Unknown filter method in IHDR\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Invalid IHDR data\00", align 1
@switch.table.png_zstream_error = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)], align 8

; Function Attrs: nounwind uwtable
define dso_local void @png_set_sig_bytes(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  %6 = select i1 %5, i32 %1, i32 0
  %7 = icmp ugt i32 %6, 8
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #16
  unreachable

9:                                                ; preds = %4
  %10 = trunc i32 %6 to i8
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 53
  store i8 %10, i8* %11, align 1, !tbaa !3
  br label %12

12:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i32 @png_sig_cmp(i8* nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp ugt i64 %2, 8
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3, %5
  %8 = phi i64 [ %2, %5 ], [ 8, %3 ]
  %9 = icmp ugt i64 %1, 7
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i64 %8, %1
  %12 = icmp ugt i64 %11, 8
  %13 = sub nuw nsw i64 8, %1
  %14 = select i1 %12, i64 %13, i64 %8
  %15 = getelementptr inbounds i8, i8* %0, i64 %1
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* @__const.png_sig_cmp.png_signature, i64 0, i64 %1
  %17 = tail call i32 @memcmp(i8* noundef %15, i8* noundef nonnull %16, i64 noundef %14) #17
  br label %18

18:                                               ; preds = %7, %5, %10
  %19 = phi i32 [ %17, %10 ], [ -1, %5 ], [ -1, %7 ]
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @png_zalloc(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i8* %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = zext i32 %1 to i64
  %8 = mul nuw i64 %6, %7
  %9 = bitcast i8* %0 to %struct.png_struct_def*
  %10 = tail call noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef nonnull %9, i64 noundef %8) #18
  br label %11

11:                                               ; preds = %3, %5
  %12 = phi i8* [ %10, %5 ], [ null, %3 ]
  ret i8* %12
}

declare dso_local void @png_warning(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #6

declare dso_local noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @png_zfree(i8* noundef %0, i8* noundef %1) #0 {
  %3 = bitcast i8* %0 to %struct.png_struct_def*
  tail call void @png_free(%struct.png_struct_def* noundef %3, i8* noundef %1) #18
  ret void
}

declare dso_local void @png_free(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @png_reset_crc(%struct.png_struct_def* noalias nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @crc32(i64 noundef 0, i8* noundef null, i32 noundef 0) #18
  %3 = trunc i64 %2 to i32
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 37
  store i32 %3, i32* %4, align 4, !tbaa !15
  ret void
}

declare dso_local i64 @crc32(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @png_calculate_crc(%struct.png_struct_def* noalias nocapture noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %5 = load i32, i32* %4, align 8, !tbaa !16
  %6 = and i32 %5, 536870912
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %9 = load i32, i32* %8, align 4, !tbaa !17
  %10 = and i32 %9, 768
  %11 = icmp ne i32 %10, 768
  %12 = and i32 %9, 2048
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %7, i1 %13, i1 %11
  %15 = icmp ne i64 %2, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 37
  %19 = load i32, i32* %18, align 4, !tbaa !15
  %20 = zext i32 %19 to i64
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i64 [ %2, %17 ], [ %31, %21 ]
  %23 = phi i64 [ %20, %17 ], [ %28, %21 ]
  %24 = phi i8* [ %1, %17 ], [ %30, %21 ]
  %25 = trunc i64 %22 to i32
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 -1, i32 %25
  %28 = tail call i64 @crc32(i64 noundef %23, i8* noundef %24, i32 noundef %27) #18
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %24, i64 %29
  %31 = sub i64 %22, %29
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %21, !llvm.loop !18

33:                                               ; preds = %21
  %34 = trunc i64 %28 to i32
  store i32 %34, i32* %18, align 4, !tbaa !15
  br label %35

35:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_user_version_check(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = icmp eq i8* %1, null
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  br i1 %4, label %93, label %6

6:                                                ; preds = %2
  %7 = load i8, i8* %1, align 1, !tbaa !20
  %8 = icmp eq i8 %7, 49
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4, !tbaa !17
  %11 = or i32 %10, 131072
  store i32 %11, i32* %5, align 4, !tbaa !17
  br label %12

12:                                               ; preds = %9, %6
  %13 = icmp eq i8 %7, 46
  %14 = zext i1 %13 to i32
  %15 = icmp eq i8 %7, 0
  br i1 %15, label %96, label %16, !llvm.loop !21

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, i8* %1, i64 1
  %18 = load i8, i8* %17, align 1, !tbaa !20
  %19 = icmp eq i8 %18, 46
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4, !tbaa !17
  %22 = or i32 %21, 131072
  store i32 %22, i32* %5, align 4, !tbaa !17
  br label %23

23:                                               ; preds = %20, %16
  %24 = icmp eq i8 %18, 46
  %25 = zext i1 %24 to i32
  %26 = add nuw nsw i32 %14, %25
  %27 = icmp uge i32 %26, 2
  %28 = icmp eq i8 %18, 0
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %96, label %30, !llvm.loop !21

30:                                               ; preds = %23
  %31 = getelementptr inbounds i8, i8* %1, i64 2
  %32 = load i8, i8* %31, align 1, !tbaa !20
  %33 = icmp eq i8 %32, 54
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4, !tbaa !17
  %36 = or i32 %35, 131072
  store i32 %36, i32* %5, align 4, !tbaa !17
  br label %37

37:                                               ; preds = %34, %30
  %38 = icmp eq i8 %32, 46
  %39 = zext i1 %38 to i32
  %40 = add nuw nsw i32 %26, %39
  %41 = icmp uge i32 %40, 2
  %42 = icmp eq i8 %32, 0
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %96, label %44, !llvm.loop !21

44:                                               ; preds = %37
  %45 = getelementptr inbounds i8, i8* %1, i64 3
  %46 = load i8, i8* %45, align 1, !tbaa !20
  %47 = icmp eq i8 %46, 46
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4, !tbaa !17
  %50 = or i32 %49, 131072
  store i32 %50, i32* %5, align 4, !tbaa !17
  br label %51

51:                                               ; preds = %48, %44
  %52 = icmp eq i8 %46, 46
  %53 = zext i1 %52 to i32
  %54 = add nuw nsw i32 %40, %53
  %55 = icmp uge i32 %54, 2
  %56 = icmp eq i8 %46, 0
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %96, label %58, !llvm.loop !21

58:                                               ; preds = %51
  %59 = getelementptr inbounds i8, i8* %1, i64 4
  %60 = load i8, i8* %59, align 1, !tbaa !20
  %61 = icmp eq i8 %60, 50
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4, !tbaa !17
  %64 = or i32 %63, 131072
  store i32 %64, i32* %5, align 4, !tbaa !17
  br label %65

65:                                               ; preds = %62, %58
  %66 = icmp eq i8 %60, 46
  %67 = zext i1 %66 to i32
  %68 = add nuw nsw i32 %54, %67
  %69 = icmp uge i32 %68, 2
  %70 = icmp eq i8 %60, 0
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %96, label %72, !llvm.loop !21

72:                                               ; preds = %65
  %73 = getelementptr inbounds i8, i8* %1, i64 5
  %74 = load i8, i8* %73, align 1, !tbaa !20
  %75 = icmp eq i8 %74, 49
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4, !tbaa !17
  %78 = or i32 %77, 131072
  store i32 %78, i32* %5, align 4, !tbaa !17
  br label %79

79:                                               ; preds = %76, %72
  %80 = icmp eq i8 %74, 46
  %81 = zext i1 %80 to i32
  %82 = add nuw nsw i32 %68, %81
  %83 = icmp uge i32 %82, 2
  %84 = icmp eq i8 %74, 0
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %96, label %86, !llvm.loop !21

86:                                               ; preds = %79
  %87 = getelementptr inbounds i8, i8* %1, i64 6
  %88 = load i8, i8* %87, align 1, !tbaa !20
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %5, align 4, !tbaa !17
  %92 = or i32 %91, 131072
  store i32 %92, i32* %5, align 4, !tbaa !17
  br label %96

93:                                               ; preds = %2
  %94 = load i32, i32* %5, align 4, !tbaa !17
  %95 = or i32 %94, 131072
  store i32 %95, i32* %5, align 4, !tbaa !17
  br label %98

96:                                               ; preds = %86, %90, %79, %65, %51, %37, %23, %12
  %97 = load i32, i32* %5, align 4, !tbaa !17
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi i32 [ %97, %96 ], [ %95, %93 ]
  %100 = and i32 %99, 131072
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %103) #18
  %104 = call i64 @png_safecat(i8* noundef nonnull %103, i64 noundef 128, i64 noundef 0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #18
  %105 = call i64 @png_safecat(i8* noundef nonnull %103, i64 noundef 128, i64 noundef %104, i8* noundef %1) #18
  %106 = call i64 @png_safecat(i8* noundef nonnull %103, i64 noundef 128, i64 noundef %105, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0)) #18
  %107 = call i64 @png_safecat(i8* noundef nonnull %103, i64 noundef 128, i64 noundef %106, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #18
  call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %103) #18
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %103) #18
  br label %108

108:                                              ; preds = %98, %102
  %109 = phi i32 [ 0, %102 ], [ 1, %98 ]
  ret i32 %109
}

declare dso_local i64 @png_safecat(i8* noundef, i64 noundef, i64 noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.png_struct_def* @png_create_png_struct(i8* noundef %0, i8* noundef %1, void (%struct.png_struct_def*, i8*)* noundef %2, void (%struct.png_struct_def*, i8*)* noundef %3, i8* nocapture noundef readnone %4, i8* (%struct.png_struct_def*, i64)* nocapture noundef readnone %5, void (%struct.png_struct_def*, i8*)* nocapture noundef readnone %6) local_unnamed_addr #0 {
  %8 = alloca %struct.png_struct_def, align 8
  %9 = bitcast %struct.png_struct_def* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 600, i8* nonnull %9) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(600) %9, i8 0, i64 600, i1 false)
  %10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i64 0, i32 73
  store i32 1000000, i32* %10, align 4, !tbaa !22
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i64 0, i32 74
  store i32 1000000, i32* %11, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i64 0, i32 75
  store i32 1000, i32* %12, align 4, !tbaa !24
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i64 0, i32 76
  store i64 8000000, i64* %13, align 8, !tbaa !25
  call void @png_set_error_fn(%struct.png_struct_def* noundef nonnull %8, i8* noundef %1, void (%struct.png_struct_def*, i8*)* noundef %2, void (%struct.png_struct_def*, i8*)* noundef %3) #18
  %14 = call i32 @png_user_version_check(%struct.png_struct_def* noundef nonnull %8, i8* noundef %0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %7
  %17 = call noalias i8* @png_malloc_warn(%struct.png_struct_def* noundef nonnull %8, i64 noundef 600) #18
  %18 = icmp eq i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = bitcast i8* %17 to %struct.png_struct_def*
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i64 0, i32 10, i32 8
  store i8* (i8*, i32, i32)* @png_zalloc, i8* (i8*, i32, i32)** %21, align 8, !tbaa !26
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i64 0, i32 10, i32 9
  store void (i8*, i8*)* @png_zfree, void (i8*, i8*)** %22, align 8, !tbaa !27
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i64 0, i32 10, i32 10
  store i8* %17, i8** %23, align 8, !tbaa !28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(600) %17, i8* noundef nonnull align 8 dereferenceable(600) %9, i64 600, i1 false), !tbaa.struct !29
  br label %24

24:                                               ; preds = %7, %16, %19
  %25 = phi %struct.png_struct_def* [ %20, %19 ], [ null, %16 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0i8(i64 600, i8* nonnull %9) #18
  ret %struct.png_struct_def* %25
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

declare dso_local void @png_set_error_fn(%struct.png_struct_def* noundef, i8* noundef, void (%struct.png_struct_def*, i8*)* noundef, void (%struct.png_struct_def*, i8*)* noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call noalias i8* @png_malloc_base(%struct.png_struct_def* noundef nonnull %0, i64 noundef 136) #18
  %5 = bitcast i8* %4 to %struct.png_info_def*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(136) %4, i8 0, i64 136, i1 false)
  br label %8

8:                                                ; preds = %3, %7, %1
  %9 = phi %struct.png_info_def* [ null, %1 ], [ %5, %7 ], [ %5, %3 ]
  ret %struct.png_info_def* %9
}

declare dso_local noalias i8* @png_malloc_base(%struct.png_struct_def* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @png_destroy_info_struct(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  %4 = icmp eq %struct.png_info_def** %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load %struct.png_info_def*, %struct.png_info_def** %1, align 8, !tbaa !30
  %8 = icmp eq %struct.png_info_def* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  store %struct.png_info_def* null, %struct.png_info_def** %1, align 8, !tbaa !30
  tail call void @png_free_data(%struct.png_struct_def* noundef nonnull %0, %struct.png_info_def* noundef nonnull %7, i32 noundef 32767, i32 noundef -1)
  %10 = bitcast %struct.png_info_def* %7 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(136) %10, i8 0, i64 136, i1 false)
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %10) #18
  br label %11

11:                                               ; preds = %6, %9, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_free_data(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct.png_struct_def* %0, null
  %6 = icmp eq %struct.png_info_def* %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %134, label %8

8:                                                ; preds = %4
  %9 = and i32 %2, 8192
  %10 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 21
  %11 = load i32, i32* %10, align 8, !tbaa !34
  %12 = and i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %16 = load i32, i32* %15, align 8, !tbaa !36
  %17 = and i32 %16, -17
  store i32 %17, i32* %15, align 8, !tbaa !36
  %18 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 17
  %19 = load i8*, i8** %18, align 8, !tbaa !37
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %0, i8* noundef %19) #18
  store i8* null, i8** %18, align 8, !tbaa !37
  %20 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 6
  store i16 0, i16* %20, align 2, !tbaa !38
  br label %21

21:                                               ; preds = %14, %8
  %22 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 22
  %23 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %22, align 8, !tbaa !39
  %24 = icmp eq %struct.png_unknown_chunk_t* %23, null
  %25 = getelementptr %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %23, i64 0, i32 0, i64 0
  br i1 %24, label %62, label %26

26:                                               ; preds = %21
  %27 = and i32 %2, 512
  %28 = load i32, i32* %10, align 8, !tbaa !34
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %26
  %32 = icmp eq i32 %3, -1
  br i1 %32, label %33, label %42

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 23
  %35 = load i32, i32* %34, align 8, !tbaa !40
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %23, i64 0, i32 1
  %39 = load i8*, i8** %38, align 8, !tbaa !41
  tail call void @png_free(%struct.png_struct_def* noundef %0, i8* noundef %39) #18
  %40 = load i32, i32* %34, align 8, !tbaa !40
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %48, label %57, !llvm.loop !42

42:                                               ; preds = %31
  %43 = sext i32 %3 to i64
  %44 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %23, i64 %43, i32 1
  %45 = load i8*, i8** %44, align 8, !tbaa !41
  tail call void @png_free(%struct.png_struct_def* noundef nonnull %0, i8* noundef %45) #18
  %46 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %22, align 8, !tbaa !39
  %47 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %46, i64 %43, i32 1
  store i8* null, i8** %47, align 8, !tbaa !41
  br label %62

48:                                               ; preds = %37, %48
  %49 = phi i64 [ %53, %48 ], [ 1, %37 ]
  %50 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %22, align 8, !tbaa !39
  %51 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %50, i64 %49, i32 1
  %52 = load i8*, i8** %51, align 8, !tbaa !41
  tail call void @png_free(%struct.png_struct_def* noundef %0, i8* noundef %52) #18
  %53 = add nuw nsw i64 %49, 1
  %54 = load i32, i32* %34, align 8, !tbaa !40
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %48, label %57, !llvm.loop !42

57:                                               ; preds = %48, %37
  %58 = bitcast %struct.png_unknown_chunk_t** %22 to i8**
  %59 = load i8*, i8** %58, align 8, !tbaa !39
  br label %60

60:                                               ; preds = %33, %57
  %61 = phi i8* [ %59, %57 ], [ %25, %33 ]
  tail call void @png_free(%struct.png_struct_def* noundef %0, i8* noundef %61) #18
  store %struct.png_unknown_chunk_t* null, %struct.png_unknown_chunk_t** %22, align 8, !tbaa !39
  store i32 0, i32* %34, align 8, !tbaa !40
  br label %62

62:                                               ; preds = %42, %60, %26, %21
  %63 = and i32 %2, 8
  %64 = load i32, i32* %10, align 8, !tbaa !34
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 20
  %69 = bitcast i16** %68 to i8**
  %70 = load i8*, i8** %69, align 8, !tbaa !43
  tail call void @png_free(%struct.png_struct_def* noundef %0, i8* noundef %70) #18
  store i16* null, i16** %68, align 8, !tbaa !43
  %71 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %72 = load i32, i32* %71, align 8, !tbaa !36
  %73 = and i32 %72, -65
  store i32 %73, i32* %71, align 8, !tbaa !36
  %74 = load i32, i32* %10, align 8, !tbaa !34
  br label %75

75:                                               ; preds = %67, %62
  %76 = phi i32 [ %74, %67 ], [ %64, %62 ]
  %77 = and i32 %2, 4096
  %78 = and i32 %77, %76
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 4
  %82 = bitcast %struct.png_color_struct** %81 to i8**
  %83 = load i8*, i8** %82, align 8, !tbaa !44
  tail call void @png_free(%struct.png_struct_def* noundef %0, i8* noundef %83) #18
  store %struct.png_color_struct* null, %struct.png_color_struct** %81, align 8, !tbaa !44
  %84 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %85 = load i32, i32* %84, align 8, !tbaa !36
  %86 = and i32 %85, -9
  store i32 %86, i32* %84, align 8, !tbaa !36
  %87 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 5
  store i16 0, i16* %87, align 8, !tbaa !45
  %88 = load i32, i32* %10, align 8, !tbaa !34
  br label %89

89:                                               ; preds = %80, %75
  %90 = phi i32 [ %88, %80 ], [ %76, %75 ]
  %91 = and i32 %2, 64
  %92 = and i32 %91, %90
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %127, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 24
  %96 = load i8**, i8*** %95, align 8, !tbaa !46
  %97 = icmp eq i8** %96, null
  br i1 %97, label %122, label %98

98:                                               ; preds = %94
  %99 = bitcast i8** %96 to i8*
  %100 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 1
  %101 = load i32, i32* %100, align 4, !tbaa !47
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %98
  %104 = load i8*, i8** %96, align 8, !tbaa !30
  tail call void @png_free(%struct.png_struct_def* noundef %0, i8* noundef %104) #18
  %105 = load i32, i32* %100, align 4, !tbaa !47
  %106 = icmp ugt i32 %105, 1
  br i1 %106, label %107, label %116, !llvm.loop !48

107:                                              ; preds = %103, %107
  %108 = phi i64 [ %112, %107 ], [ 1, %103 ]
  %109 = load i8**, i8*** %95, align 8, !tbaa !46
  %110 = getelementptr inbounds i8*, i8** %109, i64 %108
  %111 = load i8*, i8** %110, align 8, !tbaa !30
  tail call void @png_free(%struct.png_struct_def* noundef %0, i8* noundef %111) #18
  %112 = add nuw nsw i64 %108, 1
  %113 = load i32, i32* %100, align 4, !tbaa !47
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %107, label %116, !llvm.loop !48

116:                                              ; preds = %107, %103
  %117 = bitcast i8*** %95 to i8**
  %118 = load i8*, i8** %117, align 8, !tbaa !46
  br label %119

119:                                              ; preds = %98, %116
  %120 = phi i8* [ %118, %116 ], [ %99, %98 ]
  tail call void @png_free(%struct.png_struct_def* noundef %0, i8* noundef %120) #18
  store i8** null, i8*** %95, align 8, !tbaa !46
  %121 = load i32, i32* %10, align 8, !tbaa !34
  br label %122

122:                                              ; preds = %119, %94
  %123 = phi i32 [ %121, %119 ], [ %90, %94 ]
  %124 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 2
  %125 = load i32, i32* %124, align 8, !tbaa !36
  %126 = and i32 %125, -32769
  store i32 %126, i32* %124, align 8, !tbaa !36
  br label %127

127:                                              ; preds = %122, %89
  %128 = phi i32 [ %123, %122 ], [ %90, %89 ]
  %129 = icmp eq i32 %3, -1
  %130 = and i32 %2, -16929
  %131 = select i1 %129, i32 %2, i32 %130
  %132 = xor i32 %131, -1
  %133 = and i32 %128, %132
  store i32 %133, i32* %10, align 8, !tbaa !34
  br label %134

134:                                              ; preds = %4, %127
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_info_init_3(%struct.png_info_def** nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load %struct.png_info_def*, %struct.png_info_def** %0, align 8, !tbaa !30
  %4 = icmp eq %struct.png_info_def* %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = icmp ult i64 %1, 136
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  store %struct.png_info_def* null, %struct.png_info_def** %0, align 8, !tbaa !30
  %8 = bitcast %struct.png_info_def* %3 to i8*
  tail call void @free(i8* noundef %8) #18
  %9 = tail call noalias i8* @png_malloc_base(%struct.png_struct_def* noundef null, i64 noundef 136) #18
  %10 = icmp eq i8* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = bitcast i8* %9 to %struct.png_info_def*
  %13 = bitcast %struct.png_info_def** %0 to i8**
  store i8* %9, i8** %13, align 8, !tbaa !30
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi %struct.png_info_def* [ %12, %11 ], [ %3, %5 ]
  %16 = bitcast %struct.png_info_def* %15 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(136) %16, i8 0, i64 136, i1 false)
  br label %17

17:                                               ; preds = %7, %2, %14
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @png_data_freer(%struct.png_struct_def* noalias noundef %0, %struct.png_info_def* noalias noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct.png_struct_def* %0, null
  %6 = icmp eq %struct.png_info_def* %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  switch i32 %2, label %18 [
    i32 1, label %9
    i32 2, label %13
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 21
  %11 = load i32, i32* %10, align 8, !tbaa !34
  %12 = or i32 %11, %3
  store i32 %12, i32* %10, align 8, !tbaa !34
  br label %19

13:                                               ; preds = %8
  %14 = xor i32 %3, -1
  %15 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %1, i64 0, i32 21
  %16 = load i32, i32* %15, align 8, !tbaa !34
  %17 = and i32 %16, %14
  store i32 %17, i32* %15, align 8, !tbaa !34
  br label %19

18:                                               ; preds = %8
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0)) #16
  unreachable

19:                                               ; preds = %4, %13, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @png_get_io_ptr(%struct.png_struct_def* noalias noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 5
  %5 = load i8*, i8** %4, align 8, !tbaa !49
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i8* [ %5, %3 ], [ null, %1 ]
  ret i8* %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_init_io(%struct.png_struct_def* noalias noundef writeonly %0, %struct._IO_FILE* noundef %1) local_unnamed_addr #10 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 5
  %6 = bitcast i8** %5 to %struct._IO_FILE**
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8, !tbaa !49
  br label %7

7:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_save_int_32(i8* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @png_save_uint_32(i8* noundef %0, i32 noundef %1) #18
  ret void
}

declare dso_local void @png_save_uint_32(i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i8* @png_get_copyright(%struct.png_struct_def* noalias nocapture noundef readnone %0) local_unnamed_addr #11 {
  ret i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.6, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i8* @png_get_libpng_ver(%struct.png_struct_def* noalias nocapture noundef readnone %0) local_unnamed_addr #11 {
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i8* @png_get_header_ver(%struct.png_struct_def* noalias nocapture readnone %0) local_unnamed_addr #11 {
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i8* @png_get_header_version(%struct.png_struct_def* noalias nocapture noundef readnone %0) local_unnamed_addr #11 {
  ret i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0)
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @png_handle_as_unknown(%struct.png_struct_def* noalias noundef readonly %0, i8* noundef readonly %1) local_unnamed_addr #12 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  %4 = icmp eq i8* %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 69
  %8 = load i32, i32* %7, align 8, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 70
  %12 = load i8*, i8** %11, align 8, !tbaa !51
  %13 = mul i32 %8, 5
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  br label %16

16:                                               ; preds = %25, %10
  %17 = phi i8* [ %15, %10 ], [ %18, %25 ]
  %18 = getelementptr inbounds i8, i8* %17, i64 -5
  %19 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %1, i8* noundef nonnull dereferenceable(4) %18, i64 4)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, i8* %17, i64 -1
  %23 = load i8, i8* %22, align 1, !tbaa !20
  %24 = zext i8 %23 to i32
  br label %27

25:                                               ; preds = %16
  %26 = icmp ugt i8* %18, %12
  br i1 %26, label %16, label %27, !llvm.loop !52

27:                                               ; preds = %25, %2, %6, %21
  %28 = phi i32 [ %24, %21 ], [ 0, %6 ], [ 0, %2 ], [ 0, %25 ]
  ret i32 %28
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @png_chunk_unknown_handling(%struct.png_struct_def* noalias noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = alloca [5 x i8], align 1
  %4 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %4) #18
  %5 = lshr i32 %1, 24
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %4, align 1, !tbaa !20
  %7 = lshr i32 %1, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 1
  store i8 %8, i8* %9, align 1, !tbaa !20
  %10 = lshr i32 %1, 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 2
  store i8 %11, i8* %12, align 1, !tbaa !20
  %13 = trunc i32 %1 to i8
  %14 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 3
  store i8 %13, i8* %14, align 1, !tbaa !20
  %15 = icmp eq %struct.png_struct_def* %0, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 69
  %18 = load i32, i32* %17, align 8, !tbaa !50, !alias.scope !53
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 70
  %22 = load i8*, i8** %21, align 8, !tbaa !51, !alias.scope !53
  %23 = mul i32 %18, 5
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  br label %26

26:                                               ; preds = %35, %20
  %27 = phi i8* [ %25, %20 ], [ %28, %35 ]
  %28 = getelementptr inbounds i8, i8* %27, i64 -5
  %29 = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %4, i8* noundef nonnull dereferenceable(4) %28, i64 4) #18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, i8* %27, i64 -1
  %33 = load i8, i8* %32, align 1, !tbaa !20
  %34 = zext i8 %33 to i32
  br label %37

35:                                               ; preds = %26
  %36 = icmp ugt i8* %28, %22
  br i1 %36, label %26, label %37, !llvm.loop !52

37:                                               ; preds = %35, %2, %16, %31
  %38 = phi i32 [ %34, %31 ], [ 0, %16 ], [ 0, %2 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %4) #18
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_reset_zstream(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10
  %5 = tail call i32 @inflateReset(%struct.z_stream_s* noundef nonnull %4) #18
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ -2, %1 ]
  ret i32 %7
}

declare dso_local i32 @inflateReset(%struct.z_stream_s* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @png_access_version_number() local_unnamed_addr #11 {
  ret i32 10621
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @png_zstream_error(%struct.png_struct_def* noalias nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 10, i32 6
  %4 = load i8*, i8** %3, align 8, !tbaa !56
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = add i32 %1, 7
  %8 = icmp ult i32 %7, 10
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [10 x i8*], [10 x i8*]* @switch.table.png_zstream_error, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i8* [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), %6 ], [ %12, %9 ]
  store i8* %14, i8** %3, align 8, !tbaa !56
  br label %15

15:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_check_IHDR(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = icmp slt i32 %1, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %10, %8
  %13 = phi i8* [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), %8 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), %10 ]
  tail call void @png_warning(%struct.png_struct_def* noundef %0, i8* noundef %13) #18
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ 0, %10 ], [ 1, %12 ]
  %16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 73
  %17 = load i32, i32* %16, align 4, !tbaa !22
  %18 = icmp ult i32 %17, %1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0)) #18
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i32 [ 1, %19 ], [ %15, %14 ]
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = icmp slt i32 %2, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23, %20
  %26 = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), %20 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), %23 ]
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef %26) #18
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %21, %23 ], [ 1, %25 ]
  %29 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 74
  %30 = load i32, i32* %29, align 8, !tbaa !23
  %31 = icmp ult i32 %30, %2
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #18
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi i32 [ 1, %32 ], [ %28, %27 ]
  switch i32 %3, label %35 [
    i32 16, label %36
    i32 8, label %36
    i32 4, label %36
    i32 2, label %36
    i32 1, label %36
  ]

35:                                               ; preds = %33
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0)) #18
  br label %36

36:                                               ; preds = %33, %33, %33, %33, %33, %35
  %37 = phi i32 [ 1, %35 ], [ %34, %33 ], [ %34, %33 ], [ %34, %33 ], [ %34, %33 ], [ %34, %33 ]
  %38 = and i32 %4, -5
  %39 = icmp eq i32 %38, 1
  %40 = icmp ugt i32 %4, 6
  %41 = or i1 %40, %39
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0)) #18
  br label %43

43:                                               ; preds = %36, %42
  %44 = phi i32 [ 1, %42 ], [ %37, %36 ]
  %45 = icmp eq i32 %4, 3
  %46 = icmp sgt i32 %3, 8
  %47 = and i1 %46, %45
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = icmp eq i32 %4, 4
  %50 = icmp eq i32 %38, 2
  %51 = or i1 %49, %50
  %52 = icmp slt i32 %3, 8
  %53 = and i1 %52, %51
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %43
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i64 0, i64 0)) #18
  br label %55

55:                                               ; preds = %48, %54
  %56 = phi i32 [ 1, %54 ], [ %44, %48 ]
  %57 = icmp sgt i32 %5, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0)) #18
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ 1, %58 ], [ %56, %55 ]
  %61 = icmp eq i32 %6, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = icmp eq i32 %7, 0
  br i1 %63, label %67, label %66

64:                                               ; preds = %59
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0)) #18
  %65 = icmp eq i32 %7, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %64, %62
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0)) #18
  br label %69

67:                                               ; preds = %62
  %68 = icmp eq i32 %60, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %66, %67
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0)) #16
  unreachable

70:                                               ; preds = %67
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !6, i64 349}
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
!15 = !{!4, !8, i64 316}
!16 = !{!4, !8, i64 264}
!17 = !{!4, !8, i64 52}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!6, !6, i64 0}
!21 = distinct !{!21, !19}
!22 = !{!4, !8, i64 476}
!23 = !{!4, !8, i64 480}
!24 = !{!4, !8, i64 484}
!25 = !{!4, !10, i64 488}
!26 = !{!4, !5, i64 128}
!27 = !{!4, !5, i64 136}
!28 = !{!4, !5, i64 144}
!29 = !{i64 0, i64 8, !30, i64 8, i64 8, !30, i64 16, i64 8, !30, i64 24, i64 8, !30, i64 32, i64 8, !30, i64 40, i64 8, !30, i64 48, i64 4, !31, i64 52, i64 4, !31, i64 56, i64 4, !31, i64 60, i64 4, !31, i64 64, i64 8, !30, i64 72, i64 4, !31, i64 80, i64 8, !32, i64 88, i64 8, !30, i64 96, i64 4, !31, i64 104, i64 8, !32, i64 112, i64 8, !30, i64 120, i64 8, !30, i64 128, i64 8, !30, i64 136, i64 8, !30, i64 144, i64 8, !30, i64 152, i64 4, !31, i64 160, i64 8, !32, i64 168, i64 8, !32, i64 176, i64 8, !30, i64 184, i64 4, !31, i64 188, i64 4, !31, i64 192, i64 4, !31, i64 196, i64 4, !31, i64 200, i64 4, !31, i64 204, i64 4, !31, i64 208, i64 4, !31, i64 212, i64 4, !31, i64 216, i64 4, !31, i64 220, i64 4, !31, i64 224, i64 4, !31, i64 228, i64 4, !31, i64 232, i64 4, !31, i64 236, i64 4, !31, i64 240, i64 4, !31, i64 248, i64 8, !32, i64 256, i64 4, !31, i64 260, i64 4, !31, i64 264, i64 4, !31, i64 272, i64 8, !30, i64 280, i64 8, !30, i64 288, i64 8, !30, i64 296, i64 8, !30, i64 304, i64 8, !32, i64 312, i64 4, !31, i64 316, i64 4, !31, i64 320, i64 8, !30, i64 328, i64 2, !33, i64 332, i64 4, !31, i64 336, i64 2, !33, i64 338, i64 1, !20, i64 339, i64 1, !20, i64 340, i64 1, !20, i64 341, i64 1, !20, i64 342, i64 1, !20, i64 343, i64 1, !20, i64 344, i64 1, !20, i64 345, i64 1, !20, i64 346, i64 1, !20, i64 347, i64 1, !20, i64 348, i64 1, !20, i64 349, i64 1, !20, i64 350, i64 1, !20, i64 351, i64 1, !20, i64 352, i64 1, !20, i64 356, i64 4, !31, i64 360, i64 1, !20, i64 362, i64 2, !33, i64 364, i64 2, !33, i64 366, i64 2, !33, i64 368, i64 2, !33, i64 376, i64 8, !30, i64 384, i64 4, !31, i64 388, i64 4, !31, i64 392, i64 1, !20, i64 393, i64 1, !20, i64 394, i64 1, !20, i64 395, i64 1, !20, i64 396, i64 1, !20, i64 400, i64 8, !30, i64 408, i64 1, !20, i64 410, i64 2, !33, i64 412, i64 2, !33, i64 414, i64 2, !33, i64 416, i64 2, !33, i64 424, i64 8, !30, i64 432, i64 8, !30, i64 440, i64 4, !31, i64 444, i64 4, !31, i64 448, i64 4, !31, i64 456, i64 8, !30, i64 464, i64 8, !30, i64 472, i64 1, !20, i64 476, i64 4, !31, i64 480, i64 4, !31, i64 484, i64 4, !31, i64 488, i64 8, !32, i64 496, i64 5, !20, i64 504, i64 8, !30, i64 512, i64 8, !32, i64 520, i64 1, !20, i64 528, i64 8, !32, i64 536, i64 8, !30, i64 544, i64 8, !32, i64 552, i64 4, !31, i64 556, i64 4, !31, i64 560, i64 8, !30, i64 568, i64 32, !20}
!30 = !{!5, !5, i64 0}
!31 = !{!8, !8, i64 0}
!32 = !{!10, !10, i64 0}
!33 = !{!11, !11, i64 0}
!34 = !{!35, !8, i64 104}
!35 = !{!"png_info_def", !8, i64 0, !8, i64 4, !8, i64 8, !10, i64 16, !5, i64 24, !11, i64 32, !11, i64 34, !6, i64 36, !6, i64 37, !6, i64 38, !6, i64 39, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !6, i64 44, !13, i64 52, !5, i64 64, !12, i64 72, !12, i64 82, !5, i64 96, !8, i64 104, !5, i64 112, !8, i64 120, !5, i64 128}
!36 = !{!35, !8, i64 8}
!37 = !{!35, !5, i64 64}
!38 = !{!35, !11, i64 34}
!39 = !{!35, !5, i64 112}
!40 = !{!35, !8, i64 120}
!41 = !{!14, !5, i64 8}
!42 = distinct !{!42, !19}
!43 = !{!35, !5, i64 96}
!44 = !{!35, !5, i64 24}
!45 = !{!35, !11, i64 32}
!46 = !{!35, !5, i64 128}
!47 = !{!35, !8, i64 4}
!48 = distinct !{!48, !19}
!49 = !{!4, !5, i64 40}
!50 = !{!4, !8, i64 448}
!51 = !{!4, !5, i64 456}
!52 = distinct !{!52, !19}
!53 = !{!54}
!54 = distinct !{!54, !55, !"png_handle_as_unknown: argument 0"}
!55 = distinct !{!55, !"png_handle_as_unknown"}
!56 = !{!4, !5, i64 112}
