; ModuleID = 'pngerror.c'
source_filename = "pngerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.png_struct_def = type { void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*, i8*, void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)*, i8*, i32, i32, i32, i32, %struct.z_stream_s, %struct.png_compression_buffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i64, i32, i32, %struct.png_color_struct*, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.png_color_16_struct, void (%struct.png_struct_def*)*, i32, i32, %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)*, i32, i32, i32, i8*, i8*, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, i8*, i64, i32, i32, i8*, [4 x void (%struct.png_row_info_struct*, i8*, i8*)*] }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }
%struct.png_compression_buffer = type { %struct.png_compression_buffer*, [1 x i8] }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

@png_format_number.digits = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@png_formatted_warning.valid_parameters = internal unnamed_addr constant [10 x i8] c"123456789\00", align 1
@png_digit = internal unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 16
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"libpng error: %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"libpng warning: %s\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @png_error(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 0
  %6 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %5, align 8, !tbaa !3
  %7 = icmp eq void (%struct.png_struct_def*, i8*)* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1) #12
  br label %9

9:                                                ; preds = %8, %4, %2
  tail call fastcc void @png_default_error(%struct.png_struct_def* noundef %0, i8* noundef %1) #13
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @png_default_error(%struct.png_struct_def* noalias nocapture noundef readnone %0, i8* noundef %1) unnamed_addr #0 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %4 = icmp eq i8* %1, null
  %5 = select i1 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %1
  %6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* noundef %5) #14
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %8 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %7)
  tail call void @abort() #15
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i64 @png_safecat(i8* noundef writeonly %0, i64 noundef %1, i64 noundef %2, i8* noundef readonly %3) local_unnamed_addr #1 {
  %5 = icmp ne i8* %0, null
  %6 = icmp ult i64 %2, %1
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = icmp eq i8* %3, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %8
  %11 = add i64 %1, -1
  %12 = load i8, i8* %3, align 1, !tbaa !16
  %13 = icmp ne i8 %12, 0
  %14 = icmp ugt i64 %11, %2
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10, %16
  %17 = phi i8 [ %23, %16 ], [ %12, %10 ]
  %18 = phi i8* [ %20, %16 ], [ %3, %10 ]
  %19 = phi i64 [ %21, %16 ], [ %2, %10 ]
  %20 = getelementptr inbounds i8, i8* %18, i64 1
  %21 = add nuw i64 %19, 1
  %22 = getelementptr inbounds i8, i8* %0, i64 %19
  store i8 %17, i8* %22, align 1, !tbaa !16
  %23 = load i8, i8* %20, align 1, !tbaa !16
  %24 = icmp ne i8 %23, 0
  %25 = icmp ult i64 %21, %11
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %16, label %27, !llvm.loop !17

27:                                               ; preds = %16, %10, %8
  %28 = phi i64 [ %2, %8 ], [ %2, %10 ], [ %21, %16 ]
  %29 = getelementptr inbounds i8, i8* %0, i64 %28
  store i8 0, i8* %29, align 1, !tbaa !16
  br label %30

30:                                               ; preds = %27, %4
  %31 = phi i64 [ %28, %27 ], [ %2, %4 ]
  ret i64 %31
}

; Function Attrs: nofree norecurse nosync nounwind uwtable writeonly
define dso_local nonnull i8* @png_format_number(i8* noundef readnone %0, i8* noundef writeonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds i8, i8* %1, i64 -1
  store i8 0, i8* %5, align 1, !tbaa !16
  %6 = icmp ugt i8* %5, %0
  br i1 %6, label %7, label %78

7:                                                ; preds = %4
  %8 = icmp eq i32 %2, 5
  br label %9

9:                                                ; preds = %7, %71
  %10 = phi i32 [ 0, %7 ], [ %73, %71 ]
  %11 = phi i32 [ 1, %7 ], [ %74, %71 ]
  %12 = phi i32 [ 0, %7 ], [ %72, %71 ]
  %13 = phi i64 [ %3, %7 ], [ %75, %71 ]
  %14 = phi i8* [ %5, %7 ], [ %76, %71 ]
  %15 = icmp ne i64 %13, 0
  %16 = icmp slt i32 %12, %11
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %78

18:                                               ; preds = %9
  switch i32 %2, label %53 [
    i32 5, label %19
    i32 2, label %32
    i32 1, label %33
    i32 4, label %40
    i32 3, label %41
  ]

19:                                               ; preds = %18
  %20 = icmp eq i32 %10, 0
  %21 = urem i64 %13, 10
  %22 = icmp eq i64 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %21
  %26 = load i8, i8* %25, align 1, !tbaa !16
  %27 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8 %26, i8* %27, align 1, !tbaa !16
  br label %28

28:                                               ; preds = %19, %24
  %29 = phi i8* [ %27, %24 ], [ %14, %19 ]
  %30 = phi i32 [ 1, %24 ], [ 0, %19 ]
  %31 = udiv i64 %13, 10
  br label %53

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %18, %32
  %34 = phi i32 [ %11, %18 ], [ 2, %32 ]
  %35 = urem i64 %13, 10
  %36 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !16
  %38 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8 %37, i8* %38, align 1, !tbaa !16
  %39 = udiv i64 %13, 10
  br label %48

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %18, %40
  %42 = phi i32 [ %11, %18 ], [ 2, %40 ]
  %43 = and i64 %13, 15
  %44 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1, !tbaa !16
  %46 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8 %45, i8* %46, align 1, !tbaa !16
  %47 = lshr i64 %13, 4
  br label %48

48:                                               ; preds = %41, %33
  %49 = phi i8* [ %38, %33 ], [ %46, %41 ]
  %50 = phi i64 [ %39, %33 ], [ %47, %41 ]
  %51 = phi i32 [ %34, %33 ], [ %42, %41 ]
  %52 = add nuw nsw i32 %12, 1
  br label %71

53:                                               ; preds = %18, %28
  %54 = phi i8* [ %29, %28 ], [ %14, %18 ]
  %55 = phi i64 [ %31, %28 ], [ 0, %18 ]
  %56 = phi i32 [ 5, %28 ], [ %11, %18 ]
  %57 = phi i32 [ %30, %28 ], [ %10, %18 ]
  %58 = add nuw nsw i32 %12, 1
  %59 = icmp eq i32 %58, 5
  %60 = select i1 %8, i1 %59, i1 false
  %61 = icmp ugt i8* %54, %0
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = icmp eq i32 %57, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds i8, i8* %54, i64 -1
  store i8 46, i8* %66, align 1, !tbaa !16
  br label %71

67:                                               ; preds = %63
  %68 = icmp eq i64 %55, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %67
  %70 = getelementptr inbounds i8, i8* %54, i64 -1
  store i8 48, i8* %70, align 1, !tbaa !16
  br label %71

71:                                               ; preds = %48, %65, %69, %67, %53
  %72 = phi i32 [ 5, %65 ], [ 5, %69 ], [ 5, %67 ], [ %58, %53 ], [ %52, %48 ]
  %73 = phi i32 [ %57, %65 ], [ 0, %69 ], [ 0, %67 ], [ %57, %53 ], [ %10, %48 ]
  %74 = phi i32 [ %56, %65 ], [ %56, %69 ], [ %56, %67 ], [ %56, %53 ], [ %51, %48 ]
  %75 = phi i64 [ %55, %65 ], [ 0, %69 ], [ %55, %67 ], [ %55, %53 ], [ %50, %48 ]
  %76 = phi i8* [ %66, %65 ], [ %70, %69 ], [ %54, %67 ], [ %54, %53 ], [ %49, %48 ]
  %77 = icmp ugt i8* %76, %0
  br i1 %77, label %9, label %78, !llvm.loop !19

78:                                               ; preds = %9, %71, %4
  %79 = phi i8* [ %5, %4 ], [ %76, %71 ], [ %14, %9 ]
  ret i8* %79
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @png_warning(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %72, label %4

4:                                                ; preds = %2
  %5 = load i8, i8* %1, align 1, !tbaa !16
  %6 = icmp eq i8 %5, 35
  br i1 %6, label %7, label %64

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %1, i64 1
  %9 = load i8, i8* %8, align 1, !tbaa !16
  %10 = icmp eq i8 %9, 32
  br i1 %10, label %64, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, i8* %1, i64 2
  %13 = load i8, i8* %12, align 1, !tbaa !16
  %14 = icmp eq i8 %13, 32
  br i1 %14, label %64, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, i8* %1, i64 3
  %17 = load i8, i8* %16, align 1, !tbaa !16
  %18 = icmp eq i8 %17, 32
  br i1 %18, label %64, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, i8* %1, i64 4
  %21 = load i8, i8* %20, align 1, !tbaa !16
  %22 = icmp eq i8 %21, 32
  br i1 %22, label %64, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, i8* %1, i64 5
  %25 = load i8, i8* %24, align 1, !tbaa !16
  %26 = icmp eq i8 %25, 32
  br i1 %26, label %64, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, i8* %1, i64 6
  %29 = load i8, i8* %28, align 1, !tbaa !16
  %30 = icmp eq i8 %29, 32
  br i1 %30, label %64, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, i8* %1, i64 7
  %33 = load i8, i8* %32, align 1, !tbaa !16
  %34 = icmp eq i8 %33, 32
  br i1 %34, label %64, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %1, i64 8
  %37 = load i8, i8* %36, align 1, !tbaa !16
  %38 = icmp eq i8 %37, 32
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, i8* %1, i64 9
  %41 = load i8, i8* %40, align 1, !tbaa !16
  %42 = icmp eq i8 %41, 32
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, i8* %1, i64 10
  %45 = load i8, i8* %44, align 1, !tbaa !16
  %46 = icmp eq i8 %45, 32
  br i1 %46, label %64, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, i8* %1, i64 11
  %49 = load i8, i8* %48, align 1, !tbaa !16
  %50 = icmp eq i8 %49, 32
  br i1 %50, label %64, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, i8* %1, i64 12
  %53 = load i8, i8* %52, align 1, !tbaa !16
  %54 = icmp eq i8 %53, 32
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, i8* %1, i64 13
  %57 = load i8, i8* %56, align 1, !tbaa !16
  %58 = icmp eq i8 %57, 32
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, i8* %1, i64 14
  %61 = load i8, i8* %60, align 1, !tbaa !16
  %62 = icmp eq i8 %61, 32
  %63 = select i1 %62, i32 14, i32 15
  br label %64

64:                                               ; preds = %59, %7, %11, %15, %19, %23, %27, %31, %35, %39, %43, %47, %51, %55, %4
  %65 = phi i32 [ 0, %4 ], [ 1, %7 ], [ 2, %11 ], [ 3, %15 ], [ 4, %19 ], [ 5, %23 ], [ 6, %27 ], [ 7, %31 ], [ 8, %35 ], [ 9, %39 ], [ 10, %43 ], [ 11, %47 ], [ 12, %51 ], [ 13, %55 ], [ %63, %59 ]
  %66 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 1
  %67 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %66, align 8, !tbaa !20
  %68 = icmp eq void (%struct.png_struct_def*, i8*)* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = zext i32 %65 to i64
  %71 = getelementptr inbounds i8, i8* %1, i64 %70
  tail call void %67(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %71) #12
  br label %80

72:                                               ; preds = %2, %64
  %73 = phi i32 [ %65, %64 ], [ 0, %2 ]
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %1, i64 %74
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %77 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %75) #16
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %79 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %78) #12
  br label %80

80:                                               ; preds = %72, %69
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @png_warning_parameter([32 x i8]* nocapture noundef writeonly %0, i32 noundef %1, i8* noundef readonly %2) local_unnamed_addr #1 {
  %4 = add i32 %1, -1
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = icmp eq [32 x i8]* %0, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = icmp eq i8* %2, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %9
  %12 = load i8, i8* %2, align 1, !tbaa !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %14
  %15 = phi i8 [ %21, %14 ], [ %12, %11 ]
  %16 = phi i8* [ %18, %14 ], [ %2, %11 ]
  %17 = phi i64 [ %19, %14 ], [ 0, %11 ]
  %18 = getelementptr inbounds i8, i8* %16, i64 1
  %19 = add nuw nsw i64 %17, 1
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %0, i64 %7, i64 %17
  store i8 %15, i8* %20, align 1, !tbaa !16
  %21 = load i8, i8* %18, align 1, !tbaa !16
  %22 = icmp ne i8 %21, 0
  %23 = icmp ult i64 %17, 30
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %14, label %25, !llvm.loop !17

25:                                               ; preds = %14, %11, %9
  %26 = phi i64 [ 0, %9 ], [ 0, %11 ], [ %19, %14 ]
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %0, i64 %7, i64 %26
  store i8 0, i8* %27, align 1, !tbaa !16
  br label %28

28:                                               ; preds = %25, %6, %3
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @png_warning_parameter_unsigned([32 x i8]* noundef writeonly %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #5 {
  %5 = alloca [24 x i8], align 16
  %6 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12
  %7 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 23
  store i8 0, i8* %7, align 1, !tbaa !16
  %8 = icmp eq i32 %2, 5
  br label %9

9:                                                ; preds = %75, %4
  %10 = phi i8 [ 0, %4 ], [ %76, %75 ]
  %11 = phi i32 [ 0, %4 ], [ %78, %75 ]
  %12 = phi i32 [ 1, %4 ], [ %79, %75 ]
  %13 = phi i32 [ 0, %4 ], [ %77, %75 ]
  %14 = phi i64 [ %3, %4 ], [ %80, %75 ]
  %15 = phi i8* [ %7, %4 ], [ %81, %75 ]
  %16 = icmp ne i64 %14, 0
  %17 = icmp slt i32 %13, %12
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %83

19:                                               ; preds = %9
  switch i32 %2, label %56 [
    i32 5, label %20
    i32 2, label %34
    i32 1, label %35
    i32 4, label %42
    i32 3, label %43
  ]

20:                                               ; preds = %19
  %21 = icmp eq i32 %11, 0
  %22 = urem i64 %14, 10
  %23 = icmp eq i64 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %22
  %27 = load i8, i8* %26, align 1, !tbaa !16
  %28 = getelementptr inbounds i8, i8* %15, i64 -1
  store i8 %27, i8* %28, align 1, !tbaa !16
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i8 [ %27, %25 ], [ %10, %20 ]
  %31 = phi i8* [ %28, %25 ], [ %15, %20 ]
  %32 = phi i32 [ 1, %25 ], [ 0, %20 ]
  %33 = udiv i64 %14, 10
  br label %56

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %19
  %36 = phi i32 [ %12, %19 ], [ 2, %34 ]
  %37 = urem i64 %14, 10
  %38 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !16
  %40 = getelementptr inbounds i8, i8* %15, i64 -1
  store i8 %39, i8* %40, align 1, !tbaa !16
  %41 = udiv i64 %14, 10
  br label %50

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42, %19
  %44 = phi i32 [ %12, %19 ], [ 2, %42 ]
  %45 = and i64 %14, 15
  %46 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1, !tbaa !16
  %48 = getelementptr inbounds i8, i8* %15, i64 -1
  store i8 %47, i8* %48, align 1, !tbaa !16
  %49 = lshr i64 %14, 4
  br label %50

50:                                               ; preds = %43, %35
  %51 = phi i8 [ %39, %35 ], [ %47, %43 ]
  %52 = phi i8* [ %40, %35 ], [ %48, %43 ]
  %53 = phi i64 [ %41, %35 ], [ %49, %43 ]
  %54 = phi i32 [ %36, %35 ], [ %44, %43 ]
  %55 = add nuw nsw i32 %13, 1
  br label %75

56:                                               ; preds = %29, %19
  %57 = phi i8 [ %30, %29 ], [ %10, %19 ]
  %58 = phi i8* [ %31, %29 ], [ %15, %19 ]
  %59 = phi i64 [ %33, %29 ], [ 0, %19 ]
  %60 = phi i32 [ 5, %29 ], [ %12, %19 ]
  %61 = phi i32 [ %32, %29 ], [ %11, %19 ]
  %62 = add nuw nsw i32 %13, 1
  %63 = icmp eq i32 %62, 5
  %64 = select i1 %8, i1 %63, i1 false
  %65 = icmp ugt i8* %58, %6
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = icmp eq i32 %61, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds i8, i8* %58, i64 -1
  store i8 46, i8* %70, align 1, !tbaa !16
  br label %75

71:                                               ; preds = %67
  %72 = icmp eq i64 %59, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = getelementptr inbounds i8, i8* %58, i64 -1
  store i8 48, i8* %74, align 1, !tbaa !16
  br label %75

75:                                               ; preds = %73, %71, %69, %56, %50
  %76 = phi i8 [ 46, %69 ], [ 48, %73 ], [ %57, %71 ], [ %57, %56 ], [ %51, %50 ]
  %77 = phi i32 [ 5, %69 ], [ 5, %73 ], [ 5, %71 ], [ %62, %56 ], [ %55, %50 ]
  %78 = phi i32 [ %61, %69 ], [ 0, %73 ], [ 0, %71 ], [ %61, %56 ], [ %11, %50 ]
  %79 = phi i32 [ %60, %69 ], [ %60, %73 ], [ %60, %71 ], [ %60, %56 ], [ %54, %50 ]
  %80 = phi i64 [ %59, %69 ], [ 0, %73 ], [ %59, %71 ], [ %59, %56 ], [ %53, %50 ]
  %81 = phi i8* [ %70, %69 ], [ %74, %73 ], [ %58, %71 ], [ %58, %56 ], [ %52, %50 ]
  %82 = icmp ugt i8* %81, %6
  br i1 %82, label %9, label %83, !llvm.loop !19

83:                                               ; preds = %9, %75
  %84 = phi i8 [ %76, %75 ], [ %10, %9 ]
  %85 = phi i8* [ %81, %75 ], [ %15, %9 ]
  %86 = add i32 %1, -1
  %87 = icmp ult i32 %86, 8
  br i1 %87, label %88, label %109

88:                                               ; preds = %83
  %89 = zext i32 %86 to i64
  %90 = icmp eq [32 x i8]* %0, null
  br i1 %90, label %109, label %91

91:                                               ; preds = %88
  %92 = icmp eq i8* %85, null
  %93 = icmp eq i8 %84, 0
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %106, label %95

95:                                               ; preds = %91, %95
  %96 = phi i8 [ %102, %95 ], [ %84, %91 ]
  %97 = phi i8* [ %99, %95 ], [ %85, %91 ]
  %98 = phi i64 [ %100, %95 ], [ 0, %91 ]
  %99 = getelementptr inbounds i8, i8* %97, i64 1
  %100 = add nuw nsw i64 %98, 1
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %0, i64 %89, i64 %98
  store i8 %96, i8* %101, align 1, !tbaa !16
  %102 = load i8, i8* %99, align 1, !tbaa !16
  %103 = icmp ne i8 %102, 0
  %104 = icmp ult i64 %98, 30
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %95, label %106, !llvm.loop !17

106:                                              ; preds = %95, %91
  %107 = phi i64 [ 0, %91 ], [ %100, %95 ]
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %0, i64 %89, i64 %107
  store i8 0, i8* %108, align 1, !tbaa !16
  br label %109

109:                                              ; preds = %83, %88, %106
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @png_warning_parameter_signed([32 x i8]* noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = alloca [24 x i8], align 16
  %6 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12
  %7 = sext i32 %3 to i64
  %8 = icmp slt i32 %3, 0
  %9 = sub nsw i64 0, %7
  %10 = select i1 %8, i64 %9, i64 %7
  %11 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 23
  store i8 0, i8* %11, align 1, !tbaa !16
  %12 = icmp eq i32 %2, 5
  br label %13

13:                                               ; preds = %79, %4
  %14 = phi i8 [ 0, %4 ], [ %80, %79 ]
  %15 = phi i32 [ 0, %4 ], [ %82, %79 ]
  %16 = phi i32 [ 1, %4 ], [ %83, %79 ]
  %17 = phi i32 [ 0, %4 ], [ %81, %79 ]
  %18 = phi i64 [ %10, %4 ], [ %84, %79 ]
  %19 = phi i8* [ %11, %4 ], [ %85, %79 ]
  %20 = icmp ne i64 %18, 0
  %21 = icmp slt i32 %17, %16
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %87

23:                                               ; preds = %13
  switch i32 %2, label %60 [
    i32 5, label %24
    i32 2, label %38
    i32 1, label %39
    i32 4, label %46
    i32 3, label %47
  ]

24:                                               ; preds = %23
  %25 = icmp eq i32 %15, 0
  %26 = urem i64 %18, 10
  %27 = icmp eq i64 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %26
  %31 = load i8, i8* %30, align 1, !tbaa !16
  %32 = getelementptr inbounds i8, i8* %19, i64 -1
  store i8 %31, i8* %32, align 1, !tbaa !16
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i8 [ %31, %29 ], [ %14, %24 ]
  %35 = phi i8* [ %32, %29 ], [ %19, %24 ]
  %36 = phi i32 [ 1, %29 ], [ 0, %24 ]
  %37 = udiv i64 %18, 10
  br label %60

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %23
  %40 = phi i32 [ %16, %23 ], [ 2, %38 ]
  %41 = urem i64 %18, 10
  %42 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !16
  %44 = getelementptr inbounds i8, i8* %19, i64 -1
  store i8 %43, i8* %44, align 1, !tbaa !16
  %45 = udiv i64 %18, 10
  br label %54

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %46, %23
  %48 = phi i32 [ %16, %23 ], [ 2, %46 ]
  %49 = and i64 %18, 15
  %50 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !16
  %52 = getelementptr inbounds i8, i8* %19, i64 -1
  store i8 %51, i8* %52, align 1, !tbaa !16
  %53 = lshr i64 %18, 4
  br label %54

54:                                               ; preds = %47, %39
  %55 = phi i8 [ %43, %39 ], [ %51, %47 ]
  %56 = phi i8* [ %44, %39 ], [ %52, %47 ]
  %57 = phi i64 [ %45, %39 ], [ %53, %47 ]
  %58 = phi i32 [ %40, %39 ], [ %48, %47 ]
  %59 = add nuw nsw i32 %17, 1
  br label %79

60:                                               ; preds = %33, %23
  %61 = phi i8 [ %34, %33 ], [ %14, %23 ]
  %62 = phi i8* [ %35, %33 ], [ %19, %23 ]
  %63 = phi i64 [ %37, %33 ], [ 0, %23 ]
  %64 = phi i32 [ 5, %33 ], [ %16, %23 ]
  %65 = phi i32 [ %36, %33 ], [ %15, %23 ]
  %66 = add nuw nsw i32 %17, 1
  %67 = icmp eq i32 %66, 5
  %68 = select i1 %12, i1 %67, i1 false
  %69 = icmp ugt i8* %62, %6
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %79

71:                                               ; preds = %60
  %72 = icmp eq i32 %65, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds i8, i8* %62, i64 -1
  store i8 46, i8* %74, align 1, !tbaa !16
  br label %79

75:                                               ; preds = %71
  %76 = icmp eq i64 %63, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = getelementptr inbounds i8, i8* %62, i64 -1
  store i8 48, i8* %78, align 1, !tbaa !16
  br label %79

79:                                               ; preds = %77, %75, %73, %60, %54
  %80 = phi i8 [ 46, %73 ], [ 48, %77 ], [ %61, %75 ], [ %61, %60 ], [ %55, %54 ]
  %81 = phi i32 [ 5, %73 ], [ 5, %77 ], [ 5, %75 ], [ %66, %60 ], [ %59, %54 ]
  %82 = phi i32 [ %65, %73 ], [ 0, %77 ], [ 0, %75 ], [ %65, %60 ], [ %15, %54 ]
  %83 = phi i32 [ %64, %73 ], [ %64, %77 ], [ %64, %75 ], [ %64, %60 ], [ %58, %54 ]
  %84 = phi i64 [ %63, %73 ], [ 0, %77 ], [ %63, %75 ], [ %63, %60 ], [ %57, %54 ]
  %85 = phi i8* [ %74, %73 ], [ %78, %77 ], [ %62, %75 ], [ %62, %60 ], [ %56, %54 ]
  %86 = icmp ugt i8* %85, %6
  br i1 %86, label %13, label %87, !llvm.loop !19

87:                                               ; preds = %13, %79
  %88 = phi i8 [ %80, %79 ], [ %14, %13 ]
  %89 = phi i8* [ %85, %79 ], [ %19, %13 ]
  %90 = icmp ugt i8* %89, %6
  %91 = select i1 %8, i1 %90, i1 false
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = getelementptr inbounds i8, i8* %89, i64 -1
  store i8 45, i8* %93, align 1, !tbaa !16
  br label %94

94:                                               ; preds = %92, %87
  %95 = phi i8 [ 45, %92 ], [ %88, %87 ]
  %96 = phi i8* [ %93, %92 ], [ %89, %87 ]
  %97 = add i32 %1, -1
  %98 = icmp ult i32 %97, 8
  br i1 %98, label %99, label %120

99:                                               ; preds = %94
  %100 = zext i32 %97 to i64
  %101 = icmp eq [32 x i8]* %0, null
  br i1 %101, label %120, label %102

102:                                              ; preds = %99
  %103 = icmp eq i8* %96, null
  %104 = icmp eq i8 %95, 0
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %117, label %106

106:                                              ; preds = %102, %106
  %107 = phi i8 [ %113, %106 ], [ %95, %102 ]
  %108 = phi i8* [ %110, %106 ], [ %96, %102 ]
  %109 = phi i64 [ %111, %106 ], [ 0, %102 ]
  %110 = getelementptr inbounds i8, i8* %108, i64 1
  %111 = add nuw nsw i64 %109, 1
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %0, i64 %100, i64 %109
  store i8 %107, i8* %112, align 1, !tbaa !16
  %113 = load i8, i8* %110, align 1, !tbaa !16
  %114 = icmp ne i8 %113, 0
  %115 = icmp ult i64 %109, 30
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %106, label %117, !llvm.loop !17

117:                                              ; preds = %106, %102
  %118 = phi i64 [ 0, %102 ], [ %111, %106 ]
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %0, i64 %100, i64 %118
  store i8 0, i8* %119, align 1, !tbaa !16
  br label %120

120:                                              ; preds = %94, %99, %117
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_formatted_warning(%struct.png_struct_def* noalias noundef %0, [32 x i8]* noundef readonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = alloca [192 x i8], align 16
  %5 = getelementptr inbounds [192 x i8], [192 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %5) #12
  %6 = icmp ne [32 x i8]* %1, null
  br label %7

7:                                                ; preds = %3, %57
  %8 = phi i8* [ %2, %3 ], [ %59, %57 ]
  %9 = phi i64 [ 0, %3 ], [ %58, %57 ]
  %10 = load i8, i8* %8, align 1, !tbaa !16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %61, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %10, 64
  %14 = select i1 %6, i1 %13, i1 false
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, i8* %8, i64 1
  %17 = load i8, i8* %16, align 1, !tbaa !16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %15, %19
  %20 = phi i64 [ %26, %19 ], [ 0, %15 ]
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* @png_formatted_warning.valid_parameters, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !16
  %23 = icmp eq i8 %22, %17
  %24 = icmp eq i64 %20, 9
  %25 = select i1 %23, i1 true, i1 %24
  %26 = add nuw nsw i64 %20, 1
  br i1 %25, label %27, label %19, !llvm.loop !21

27:                                               ; preds = %19
  %28 = and i64 %20, 4294967295
  %29 = and i64 %20, 4294967288
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 %28, i64 32
  %33 = icmp ult i64 %9, 191
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 %28, i64 0
  br label %36

36:                                               ; preds = %34, %43
  %37 = phi i8* [ %44, %43 ], [ %35, %34 ]
  %38 = phi i64 [ %45, %43 ], [ %9, %34 ]
  %39 = load i8, i8* %37, align 1, !tbaa !16
  %40 = icmp ne i8 %39, 0
  %41 = icmp ult i8* %37, %32
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = getelementptr inbounds i8, i8* %37, i64 1
  %45 = add i64 %38, 1
  %46 = getelementptr inbounds [192 x i8], [192 x i8]* %4, i64 0, i64 %38
  store i8 %39, i8* %46, align 1, !tbaa !16
  %47 = icmp eq i64 %45, 191
  br i1 %47, label %48, label %36, !llvm.loop !22

48:                                               ; preds = %43, %36, %31
  %49 = phi i64 [ %9, %31 ], [ %38, %36 ], [ 191, %43 ]
  %50 = getelementptr inbounds i8, i8* %8, i64 2
  br label %57

51:                                               ; preds = %27, %15, %12
  %52 = phi i8 [ 64, %15 ], [ %10, %12 ], [ %17, %27 ]
  %53 = phi i8* [ %8, %15 ], [ %8, %12 ], [ %16, %27 ]
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = add i64 %9, 1
  %56 = getelementptr inbounds [192 x i8], [192 x i8]* %4, i64 0, i64 %9
  store i8 %52, i8* %56, align 1, !tbaa !16
  br label %57

57:                                               ; preds = %51, %48
  %58 = phi i64 [ %49, %48 ], [ %55, %51 ]
  %59 = phi i8* [ %50, %48 ], [ %54, %51 ]
  %60 = icmp ult i64 %58, 191
  br i1 %60, label %7, label %61, !llvm.loop !23

61:                                               ; preds = %57, %7
  %62 = phi i64 [ %58, %57 ], [ %9, %7 ]
  %63 = getelementptr inbounds [192 x i8], [192 x i8]* %4, i64 0, i64 %62
  store i8 0, i8* %63, align 1, !tbaa !16
  call void @png_warning(%struct.png_struct_def* noundef %0, i8* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_benign_error(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) local_unnamed_addr #4 {
  %3 = alloca [214 x i8], align 16
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %5 = load i32, i32* %4, align 4, !tbaa !24
  %6 = and i32 %5, 1048576
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %9 = load i32, i32* %8, align 8, !tbaa !25
  %10 = and i32 %9, 32768
  %11 = icmp eq i32 %10, 0
  br i1 %7, label %20, label %12

12:                                               ; preds = %2
  br i1 %11, label %19, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %15 = load i32, i32* %14, align 8, !tbaa !26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds [214 x i8], [214 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 214, i8* nonnull %18) #12, !noalias !27
  call fastcc void @png_format_buffer(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %18, i8* noundef %1) #12
  call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %18) #12
  call void @llvm.lifetime.end.p0i8(i64 214, i8* nonnull %18) #12, !noalias !27
  br label %27

19:                                               ; preds = %13, %12
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1)
  br label %27

20:                                               ; preds = %2
  br i1 %11, label %26, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %23 = load i32, i32* %22, align 8, !tbaa !26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1) #13
  unreachable

26:                                               ; preds = %21, %20
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1) #13
  unreachable

27:                                               ; preds = %17, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_chunk_warning(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) local_unnamed_addr #4 {
  %3 = alloca [214 x i8], align 16
  %4 = getelementptr inbounds [214 x i8], [214 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 214, i8* nonnull %4) #12
  %5 = icmp eq %struct.png_struct_def* %0, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %1) #16
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %10 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %9) #12
  br label %12

11:                                               ; preds = %2
  call fastcc void @png_format_buffer(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %4, i8* noundef %1)
  call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %4)
  br label %12

12:                                               ; preds = %11, %6
  call void @llvm.lifetime.end.p0i8(i64 214, i8* nonnull %4) #12
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @png_chunk_error(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) local_unnamed_addr #0 {
  %3 = alloca [214 x i8], align 16
  %4 = getelementptr inbounds [214 x i8], [214 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 214, i8* nonnull %4) #12
  %5 = icmp eq %struct.png_struct_def* %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @png_error(%struct.png_struct_def* noundef null, i8* noundef %1) #13
  unreachable

7:                                                ; preds = %2
  call fastcc void @png_format_buffer(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %4, i8* noundef %1)
  call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %4) #13
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @png_app_warning(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %4 = load i32, i32* %3, align 4, !tbaa !24
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1)
  ret void

8:                                                ; preds = %2
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1) #13
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @png_app_error(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %4 = load i32, i32* %3, align 4, !tbaa !24
  %5 = and i32 %4, 4194304
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1)
  ret void

8:                                                ; preds = %2
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1) #13
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @png_format_buffer(%struct.png_struct_def* noalias nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i8* noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 30
  %5 = load i32, i32* %4, align 8, !tbaa !26
  %6 = lshr i32 %5, 24
  %7 = add nsw i32 %6, -123
  %8 = icmp ult i32 %7, -58
  %9 = add nsw i32 %6, -91
  %10 = icmp ult i32 %9, 6
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  store i8 91, i8* %1, align 1, !tbaa !16
  %13 = lshr i32 %5, 28
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* @png_digit, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1, !tbaa !16
  %17 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %16, i8* %17, align 1, !tbaa !16
  %18 = and i32 %6, 15
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* @png_digit, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1, !tbaa !16
  %22 = getelementptr inbounds i8, i8* %1, i64 2
  store i8 %21, i8* %22, align 1, !tbaa !16
  %23 = getelementptr inbounds i8, i8* %1, i64 3
  store i8 93, i8* %23, align 1, !tbaa !16
  br label %26

24:                                               ; preds = %3
  %25 = trunc i32 %6 to i8
  store i8 %25, i8* %1, align 1, !tbaa !16
  br label %26

26:                                               ; preds = %24, %12
  %27 = phi i32 [ 4, %12 ], [ 1, %24 ]
  %28 = lshr i32 %5, 16
  %29 = and i32 %28, 255
  %30 = add nsw i32 %29, -123
  %31 = icmp ult i32 %30, -58
  %32 = add nsw i32 %29, -91
  %33 = icmp ult i32 %32, 6
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = trunc i32 %28 to i8
  br label %56

37:                                               ; preds = %26
  %38 = add nuw nsw i32 %27, 1
  %39 = zext i32 %27 to i64
  %40 = getelementptr inbounds i8, i8* %1, i64 %39
  store i8 91, i8* %40, align 1, !tbaa !16
  %41 = lshr i32 %5, 20
  %42 = and i32 %41, 15
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* @png_digit, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1, !tbaa !16
  %46 = or i32 %27, 2
  %47 = zext i32 %38 to i64
  %48 = getelementptr inbounds i8, i8* %1, i64 %47
  store i8 %45, i8* %48, align 1, !tbaa !16
  %49 = and i32 %28, 15
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* @png_digit, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !16
  %53 = add nuw nsw i32 %27, 3
  %54 = zext i32 %46 to i64
  %55 = getelementptr inbounds i8, i8* %1, i64 %54
  store i8 %52, i8* %55, align 1, !tbaa !16
  br label %56

56:                                               ; preds = %37, %35
  %57 = phi i32 [ %53, %37 ], [ %27, %35 ]
  %58 = phi i8 [ 93, %37 ], [ %36, %35 ]
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %1, i64 %59
  store i8 %58, i8* %60, align 1, !tbaa !16
  %61 = add nuw nsw i32 %57, 1
  %62 = lshr i32 %5, 8
  %63 = and i32 %62, 255
  %64 = add nsw i32 %63, -123
  %65 = icmp ult i32 %64, -58
  %66 = add nsw i32 %63, -91
  %67 = icmp ult i32 %66, 6
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %71, label %69

69:                                               ; preds = %56
  %70 = trunc i32 %62 to i8
  br label %90

71:                                               ; preds = %56
  %72 = add nuw nsw i32 %57, 2
  %73 = zext i32 %61 to i64
  %74 = getelementptr inbounds i8, i8* %1, i64 %73
  store i8 91, i8* %74, align 1, !tbaa !16
  %75 = lshr i32 %5, 12
  %76 = and i32 %75, 15
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* @png_digit, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1, !tbaa !16
  %80 = add nuw nsw i32 %57, 3
  %81 = zext i32 %72 to i64
  %82 = getelementptr inbounds i8, i8* %1, i64 %81
  store i8 %79, i8* %82, align 1, !tbaa !16
  %83 = and i32 %62, 15
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* @png_digit, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1, !tbaa !16
  %87 = add nuw nsw i32 %57, 4
  %88 = zext i32 %80 to i64
  %89 = getelementptr inbounds i8, i8* %1, i64 %88
  store i8 %86, i8* %89, align 1, !tbaa !16
  br label %90

90:                                               ; preds = %71, %69
  %91 = phi i32 [ %87, %71 ], [ %61, %69 ]
  %92 = phi i8 [ 93, %71 ], [ %70, %69 ]
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %1, i64 %93
  store i8 %92, i8* %94, align 1, !tbaa !16
  %95 = add nuw nsw i32 %91, 1
  %96 = and i32 %5, 255
  %97 = add nsw i32 %96, -123
  %98 = icmp ult i32 %97, -58
  %99 = add nsw i32 %96, -91
  %100 = icmp ult i32 %99, 6
  %101 = select i1 %98, i1 true, i1 %100
  br i1 %101, label %104, label %102

102:                                              ; preds = %90
  %103 = trunc i32 %5 to i8
  br label %123

104:                                              ; preds = %90
  %105 = add nuw nsw i32 %91, 2
  %106 = zext i32 %95 to i64
  %107 = getelementptr inbounds i8, i8* %1, i64 %106
  store i8 91, i8* %107, align 1, !tbaa !16
  %108 = lshr i32 %5, 4
  %109 = and i32 %108, 15
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* @png_digit, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1, !tbaa !16
  %113 = add nuw nsw i32 %91, 3
  %114 = zext i32 %105 to i64
  %115 = getelementptr inbounds i8, i8* %1, i64 %114
  store i8 %112, i8* %115, align 1, !tbaa !16
  %116 = and i32 %5, 15
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [16 x i8], [16 x i8]* @png_digit, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1, !tbaa !16
  %120 = add nuw nsw i32 %91, 4
  %121 = zext i32 %113 to i64
  %122 = getelementptr inbounds i8, i8* %1, i64 %121
  store i8 %119, i8* %122, align 1, !tbaa !16
  br label %123

123:                                              ; preds = %104, %102
  %124 = phi i32 [ %120, %104 ], [ %95, %102 ]
  %125 = phi i8 [ 93, %104 ], [ %103, %102 ]
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %1, i64 %126
  store i8 %125, i8* %127, align 1, !tbaa !16
  %128 = add nuw nsw i32 %124, 1
  %129 = icmp eq i8* %2, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = zext i32 %128 to i64
  br label %171

132:                                              ; preds = %123
  %133 = add nuw nsw i32 %124, 2
  %134 = zext i32 %128 to i64
  %135 = getelementptr inbounds i8, i8* %1, i64 %134
  store i8 58, i8* %135, align 1, !tbaa !16
  %136 = zext i32 %133 to i64
  %137 = getelementptr inbounds i8, i8* %1, i64 %136
  store i8 32, i8* %137, align 1, !tbaa !16
  %138 = zext i32 %124 to i64
  %139 = add nuw nsw i32 %124, 198
  br label %140

140:                                              ; preds = %161, %132
  %141 = phi i64 [ %138, %132 ], [ %143, %161 ]
  %142 = phi i64 [ 0, %132 ], [ %162, %161 ]
  %143 = add nuw nsw i64 %141, 3
  %144 = getelementptr inbounds i8, i8* %2, i64 %142
  %145 = load i8, i8* %144, align 1, !tbaa !16
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %140
  %148 = add nuw nsw i64 %142, 1
  %149 = add nuw nsw i64 %141, 4
  %150 = getelementptr inbounds i8, i8* %1, i64 %143
  store i8 %145, i8* %150, align 1, !tbaa !16
  %151 = getelementptr inbounds i8, i8* %2, i64 %148
  %152 = load i8, i8* %151, align 1, !tbaa !16
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %147
  %155 = add nuw nsw i64 %142, 2
  %156 = add nuw nsw i64 %141, 5
  %157 = getelementptr inbounds i8, i8* %1, i64 %149
  store i8 %152, i8* %157, align 1, !tbaa !16
  %158 = getelementptr inbounds i8, i8* %2, i64 %155
  %159 = load i8, i8* %158, align 1, !tbaa !16
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %154
  %162 = add nuw nsw i64 %142, 3
  %163 = getelementptr inbounds i8, i8* %1, i64 %156
  store i8 %159, i8* %163, align 1, !tbaa !16
  %164 = icmp eq i64 %162, 195
  br i1 %164, label %168, label %140, !llvm.loop !30

165:                                              ; preds = %154, %147, %140
  %166 = phi i64 [ %143, %140 ], [ %149, %147 ], [ %156, %154 ]
  %167 = trunc i64 %166 to i32
  br label %168

168:                                              ; preds = %161, %165
  %169 = phi i32 [ %167, %165 ], [ %139, %161 ]
  %170 = sext i32 %169 to i64
  br label %171

171:                                              ; preds = %168, %130
  %172 = phi i64 [ %170, %168 ], [ %131, %130 ]
  %173 = getelementptr inbounds i8, i8* %1, i64 %172
  store i8 0, i8* %173, align 1, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_chunk_benign_error(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) local_unnamed_addr #4 {
  %3 = alloca [214 x i8], align 16
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %5 = load i32, i32* %4, align 4, !tbaa !24
  %6 = and i32 %5, 1048576
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds [214 x i8], [214 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 214, i8* nonnull %9) #12, !noalias !31
  call fastcc void @png_format_buffer(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %9, i8* noundef %1) #12
  call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %9) #12
  call void @llvm.lifetime.end.p0i8(i64 214, i8* nonnull %9) #12, !noalias !31
  ret void

10:                                               ; preds = %2
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1) #13
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @png_chunk_report(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca [214 x i8], align 16
  %5 = alloca [214 x i8], align 16
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 6
  %7 = load i32, i32* %6, align 8, !tbaa !25
  %8 = and i32 %7, 32768
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = icmp slt i32 %2, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds [214 x i8], [214 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 214, i8* nonnull %13) #12, !noalias !34
  call fastcc void @png_format_buffer(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %13, i8* noundef %1) #12
  call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %13) #12
  call void @llvm.lifetime.end.p0i8(i64 214, i8* nonnull %13) #12, !noalias !34
  br label %36

14:                                               ; preds = %10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %16 = load i32, i32* %15, align 4, !tbaa !24, !alias.scope !37
  %17 = and i32 %16, 1048576
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @png_chunk_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1) #15
  unreachable

20:                                               ; preds = %14
  %21 = getelementptr inbounds [214 x i8], [214 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 214, i8* nonnull %21) #12, !noalias !40
  call fastcc void @png_format_buffer(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %21, i8* noundef %1) #12
  call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef nonnull %21) #12
  call void @llvm.lifetime.end.p0i8(i64 214, i8* nonnull %21) #12, !noalias !40
  br label %36

22:                                               ; preds = %3
  %23 = icmp slt i32 %2, 1
  %24 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 7
  %25 = load i32, i32* %24, align 4, !tbaa !24
  br i1 %23, label %26, label %31

26:                                               ; preds = %22
  %27 = and i32 %25, 2097152
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1) #15
  unreachable

30:                                               ; preds = %26
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1) #12
  br label %36

31:                                               ; preds = %22
  %32 = and i32 %25, 4194304
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1) #15
  unreachable

35:                                               ; preds = %31
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef %1) #12
  br label %36

36:                                               ; preds = %35, %30, %12, %20
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @png_longjmp(%struct.png_struct_def* noalias nocapture readnone %0, i32 %1) local_unnamed_addr #0 {
  tail call void @abort() #15
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @png_set_error_fn(%struct.png_struct_def* noalias noundef writeonly %0, i8* noundef %1, void (%struct.png_struct_def*, i8*)* noundef %2, void (%struct.png_struct_def*, i8*)* noundef %3) local_unnamed_addr #7 {
  %5 = icmp eq %struct.png_struct_def* %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 2
  store i8* %1, i8** %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 0
  store void (%struct.png_struct_def*, i8*)* %2, void (%struct.png_struct_def*, i8*)** %8, align 8, !tbaa !3
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 1
  store void (%struct.png_struct_def*, i8*)* %3, void (%struct.png_struct_def*, i8*)** %9, align 8, !tbaa !20
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @png_get_error_ptr(%struct.png_struct_def* noalias noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !43
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i8* [ %5, %3 ], [ null, %1 ]
  ret i8* %7
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #10

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !5, i64 0}
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
!15 = !{!5, !5, i64 0}
!16 = !{!6, !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{!4, !5, i64 8}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = !{!4, !8, i64 52}
!25 = !{!4, !8, i64 48}
!26 = !{!4, !8, i64 264}
!27 = !{!28}
!28 = distinct !{!28, !29, !"png_chunk_warning: argument 0"}
!29 = distinct !{!29, !"png_chunk_warning"}
!30 = distinct !{!30, !18}
!31 = !{!32}
!32 = distinct !{!32, !33, !"png_chunk_warning: argument 0"}
!33 = distinct !{!33, !"png_chunk_warning"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"png_chunk_warning: argument 0"}
!36 = distinct !{!36, !"png_chunk_warning"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"png_chunk_benign_error: argument 0"}
!39 = distinct !{!39, !"png_chunk_benign_error"}
!40 = !{!41, !38}
!41 = distinct !{!41, !42, !"png_chunk_warning: argument 0"}
!42 = distinct !{!42, !"png_chunk_warning"}
!43 = !{!4, !5, i64 16}
