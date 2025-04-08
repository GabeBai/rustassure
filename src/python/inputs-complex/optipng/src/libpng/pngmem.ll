; ModuleID = 'pngmem.c'
source_filename = "pngmem.c"
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

@.str = private unnamed_addr constant [28 x i8] c"internal error: array alloc\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"internal error: array realloc\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @png_destroy_png_struct(%struct.png_struct_def* noalias noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.png_struct_def* %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = bitcast %struct.png_struct_def* %0 to i8*
  tail call void @free(i8* noundef nonnull %4) #11
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @png_free(%struct.png_struct_def* noalias noundef readnone %0, i8* noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  %4 = icmp eq i8* %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @free(i8* noundef nonnull %1) #11
  br label %7

7:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @png_calloc(%struct.png_struct_def* noalias noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = call i8* @calloc(i64 1, i64 %1)
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %4
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #12
  unreachable

10:                                               ; preds = %6, %2
  %11 = phi i8* [ null, %2 ], [ %7, %6 ]
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @png_malloc(%struct.png_struct_def* noalias noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call noalias i8* @malloc(i64 noundef %1) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4, %6
  tail call void @png_error(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #12
  unreachable

10:                                               ; preds = %6, %2
  %11 = phi i8* [ null, %2 ], [ %7, %6 ]
  ret i8* %11
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias i8* @png_malloc_base(%struct.png_struct_def* noalias nocapture readnone %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noalias i8* @malloc(i64 noundef %1) #11
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i8* [ %5, %4 ], [ null, %2 ]
  ret i8* %7
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @png_malloc_array(%struct.png_struct_def* noalias noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp slt i32 %1, 1
  %5 = icmp eq i64 %2, 0
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @png_error(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #12
  unreachable

8:                                                ; preds = %3
  %9 = zext i32 %1 to i64
  %10 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %9) #11
  %11 = extractvalue { i64, i1 } %10, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = mul i64 %9, %2
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call noalias i8* @malloc(i64 noundef %13) #11
  br label %17

17:                                               ; preds = %8, %12, %15
  %18 = phi i8* [ null, %8 ], [ %16, %15 ], [ null, %12 ]
  ret i8* %18
}

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @png_realloc_array(%struct.png_struct_def* noalias noundef %0, i8* noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
  %6 = icmp slt i32 %3, 1
  %7 = icmp eq i64 %4, 0
  %8 = or i1 %6, %7
  %9 = icmp slt i32 %2, 0
  %10 = or i1 %9, %8
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = icmp eq i8* %1, null
  %13 = icmp ne i32 %2, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %5
  tail call void @png_error(%struct.png_struct_def* noundef %0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #12
  unreachable

16:                                               ; preds = %11
  %17 = sub nuw nsw i32 2147483647, %2
  %18 = icmp ult i32 %17, %3
  br i1 %18, label %39, label %19

19:                                               ; preds = %16
  %20 = add nuw nsw i32 %3, %2
  %21 = zext i32 %20 to i64
  %22 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %21) #11
  %23 = extractvalue { i64, i1 } %22, 1
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = mul i64 %21, %4
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = tail call noalias i8* @malloc(i64 noundef %25) #11
  %29 = icmp eq i8* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  br i1 %13, label %31, label %34

31:                                               ; preds = %30
  %32 = zext i32 %2 to i64
  %33 = mul i64 %32, %4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %28, i8* align 1 %1, i64 %33, i1 false)
  br label %34

34:                                               ; preds = %30, %31
  %35 = phi i64 [ %33, %31 ], [ 0, %30 ]
  %36 = getelementptr inbounds i8, i8* %28, i64 %35
  %37 = zext i32 %3 to i64
  %38 = mul i64 %37, %4
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %36, i8 0, i64 %38, i1 false)
  br label %39

39:                                               ; preds = %24, %19, %27, %16, %34
  %40 = phi i8* [ %28, %34 ], [ null, %16 ], [ null, %27 ], [ null, %19 ], [ null, %24 ]
  ret i8* %40
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @png_malloc_warn(%struct.png_struct_def* noalias noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq %struct.png_struct_def* %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call noalias i8* @malloc(i64 noundef %1) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %4
  tail call void @png_warning(%struct.png_struct_def* noundef nonnull %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #11
  br label %10

10:                                               ; preds = %6, %2, %9
  %11 = phi i8* [ null, %9 ], [ null, %2 ], [ %7, %6 ]
  ret i8* %11
}

declare dso_local void @png_warning(%struct.png_struct_def* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

attributes #0 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblememonly nofree nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
