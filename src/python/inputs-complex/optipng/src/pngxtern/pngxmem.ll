; ModuleID = 'pngxmem.c'
source_filename = "pngxmem.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Missing IHDR\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Can't handle exceedingly large image dimensions\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8** @pngx_malloc_rows(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8** @pngx_malloc_rows_extended(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i64 noundef %2, i32 noundef %3) #0 {
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
  call void @png_error(%struct.png_struct_def* noundef %21, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #5
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
  call void @png_error(%struct.png_struct_def* noundef %33, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0)) #5
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
  br label %103

52:                                               ; preds = %40
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %95, %52
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %98

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
  br label %64, !llvm.loop !10

75:                                               ; preds = %64
  %76 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %77 = load i8**, i8*** %12, align 8
  %78 = bitcast i8** %77 to i8*
  call void @png_free(%struct.png_struct_def* noundef %76, i8* noundef %78)
  store i8** null, i8*** %5, align 8
  br label %103

79:                                               ; preds = %57
  %80 = load i32, i32* %9, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i64, i64* %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i64 @llvm.objectsize.i64.p0i8(i8* %86, i1 false, i1 true, i1 false)
  %88 = call i8* @__memset_chk(i8* noundef %83, i32 noundef %84, i64 noundef %85, i64 noundef %87) #6
  br label %89

89:                                               ; preds = %82, %79
  %90 = load i8*, i8** %11, align 8
  %91 = load i8**, i8*** %12, align 8
  %92 = load i32, i32* %14, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %90, i8** %94, align 8
  br label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %14, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %53, !llvm.loop !12

98:                                               ; preds = %53
  %99 = load %struct.png_struct_def*, %struct.png_struct_def** %6, align 8
  %100 = load %struct.png_info_def*, %struct.png_info_def** %7, align 8
  %101 = load i8**, i8*** %12, align 8
  call void @png_set_rows(%struct.png_struct_def* noundef %99, %struct.png_info_def* noundef %100, i8** noundef %101)
  %102 = load i8**, i8*** %12, align 8
  store i8** %102, i8*** %5, align 8
  br label %103

103:                                              ; preds = %98, %75, %51
  %104 = load i8**, i8*** %5, align 8
  ret i8** %104
}

declare i32 @png_get_image_height(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #2

declare i64 @png_get_rowbytes(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare void @png_free_data(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) #1

declare noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) #1

declare void @png_free(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

declare void @png_set_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8** noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 4]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"clang version 14.0.0"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
