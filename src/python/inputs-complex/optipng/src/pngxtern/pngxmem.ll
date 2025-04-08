; ModuleID = 'pngxmem.c'
source_filename = "pngxmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Missing IHDR\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Can't handle exceedingly large image dimensions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @pngx_malloc_rows(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i8** @pngx_malloc_rows_extended(%struct.png_struct_def* noundef %7, %struct.png_info_def* noundef %8, i64 noundef 0, i32 noundef %9)
  ret i8** %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @pngx_malloc_rows_extended(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.png_struct_def*, align 8
  %7 = alloca %struct.png_info_def*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %6, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %16 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %17 = call i32 @png_get_image_height(%struct.png_struct_def* noundef %15, %struct.png_info_def* noundef %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  call void @png_error(%struct.png_struct_def* noundef %21, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #4
  unreachable

22:                                               ; preds = %4
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %24 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %25 = call i64 @png_get_rowbytes(%struct.png_struct_def* noundef %23, %struct.png_info_def* noundef %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp ugt i64 %30, 2305843009213693951
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %22
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  call void @png_error(%struct.png_struct_def* noundef %33, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0)) #4
  unreachable

34:                                               ; preds = %28
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %42 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  call void @png_free_data(%struct.png_struct_def* noundef %41, %struct.png_info_def* noundef %42, i32 noundef 64, i32 noundef 0)
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = zext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %43, i64 noundef %46)
  %48 = bitcast i8* %47 to i8**
  store i8** %48, i8*** %12, align 8
  %49 = load i8**, i8*** %12, align 8
  %50 = icmp eq i8** %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i8** null, i8*** %5, align 8
  br label %101

52:                                               ; preds = %40
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %93, %52
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %53
  %58 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %58, i64 noundef %59)
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %67, %63
  %65 = load i32, i32* %14, align 4
  %66 = icmp ugt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %69 = load i8**, i8*** %12, align 8
  %70 = load i32, i32* %14, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %14, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  %74 = load i8*, i8** %73, align 8
  call void @png_free(%struct.png_struct_def* noundef %68, i8* noundef %74)
  br label %64, !llvm.loop !4

75:                                               ; preds = %64
  %76 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %77 = load i8**, i8*** %12, align 8
  %78 = bitcast i8** %77 to i8*
  call void @png_free(%struct.png_struct_def* noundef %76, i8* noundef %78)
  store i8** null, i8*** %5, align 8
  br label %101

79:                                               ; preds = %57
  %80 = load i32, i32* %9, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* %9, align 4
  %85 = trunc i32 %84 to i8
  %86 = load i64, i64* %10, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %83, i8 %85, i64 %86, i1 false)
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i8*, i8** %11, align 8
  %89 = load i8**, i8*** %12, align 8
  %90 = load i32, i32* %14, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  store i8* %88, i8** %92, align 8
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %14, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %53, !llvm.loop !6

96:                                               ; preds = %53
  %97 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %98 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %99 = load i8**, i8*** %12, align 8
  call void @png_set_rows(%struct.png_struct_def* noundef %97, %struct.png_info_def* noundef %98, i8** noundef %99)
  %100 = load i8**, i8*** %12, align 8
  store i8** %100, i8*** %5, align 8
  br label %101

101:                                              ; preds = %96, %75, %51
  %102 = load i8**, i8*** %5, align 8
  ret i8** %102
}

declare dso_local i32 @png_get_image_height(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def* noundef, i8* noundef) #2

declare dso_local i64 @png_get_rowbytes(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare dso_local void @png_free_data(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) #1

declare dso_local noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) #1

declare dso_local void @png_free(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local void @png_set_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8** noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
