; ModuleID = 'pngxrjpg.c'
source_filename = "pngxrjpg.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@jpeg_sig_jp2 = internal constant [12 x i8] c"\00\00\00\0CjP  \0D\0A\87\0A", align 1
@jpeg_sig_jpc = internal constant [4 x i8] c"\FFO\FFQ", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"JPEG-2000\00", align 1
@jpeg_sig_jng = internal constant [8 x i8] c"\8BJNG\0D\0A\1A\0A", align 1
@jpeg_sig_jng_jhdr = internal constant [8 x i8] c"\00\00\00\1AJHDR", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"JNG\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"JPEG decoding is not supported\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"JPEG-2000 decoding is not supported\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"JNG (JPEG) decoding is not supported\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pngx_sig_is_jpeg(i8* noundef %0, i64 noundef %1, i8** noundef %2, i8** noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %13, 12
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %89

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 255
  br i1 %21, label %22, label %54

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 216
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 255
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 65280, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp uge i32 %40, 65472
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %11, align 4
  %44 = icmp ule i32 %43, 65487
  br i1 %44, label %51, label %45

45:                                               ; preds = %42, %34
  %46 = load i32, i32* %11, align 4
  %47 = icmp uge i32 %46, 65498
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = icmp ule i32 %49, 65534
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %42
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 1, i32* %12, align 4
  br label %53

52:                                               ; preds = %48, %45
  store i32 0, i32* %5, align 4
  br label %89

53:                                               ; preds = %51
  br label %75

54:                                               ; preds = %28, %22, %16
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @memcmp(i8* noundef %55, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @jpeg_sig_jp2, i64 0, i64 0), i64 noundef 12)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @memcmp(i8* noundef %59, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @jpeg_sig_jpc, i64 0, i64 0), i64 noundef 4)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i32 2, i32* %12, align 4
  br label %74

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @memcmp(i8* noundef %64, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @jpeg_sig_jng, i64 0, i64 0), i64 noundef 8)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @memcmp(i8* noundef %68, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @jpeg_sig_jng_jhdr, i64 0, i64 0), i64 noundef 8)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i32 3, i32* %12, align 4
  br label %73

72:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %89

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73, %62
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i8**, i8*** %8, align 8
  %77 = icmp ne i8** %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %10, align 8
  %80 = load i8**, i8*** %8, align 8
  store i8* %79, i8** %80, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i8**, i8*** %9, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8*, i8** %10, align 8
  %86 = load i8**, i8*** %9, align 8
  store i8* %85, i8** %86, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %72, %52, %15
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pngx_read_jpeg(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, %struct.__sFILE* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca %struct.png_info_def*, align 8
  %7 = alloca %struct.__sFILE*, align 8
  %8 = alloca [12 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %6, align 8
  store %struct.__sFILE* %2, %struct.__sFILE** %7, align 8
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %11 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %12 = call i64 @fread(i8* noundef %10, i64 noundef 12, i64 noundef 1, %struct.__sFILE* noundef %11)
  %13 = icmp ne i64 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

15:                                               ; preds = %3
  %16 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %17 = call i32 @pngx_sig_is_jpeg(i8* noundef %16, i64 noundef 12, i8** noundef null, i8** noundef null)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %25 [
    i32 1, label %19
    i32 2, label %21
    i32 3, label %23
  ]

19:                                               ; preds = %15
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %20, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #3
  unreachable

21:                                               ; preds = %15
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %22, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #3
  unreachable

23:                                               ; preds = %15
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_error(%struct.png_struct_def* noundef %24, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0)) #3
  unreachable

25:                                               ; preds = %15
  %26 = load %struct.png_info_def*, %struct.png_info_def** %6, align 8
  %27 = icmp eq %struct.png_info_def* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %30

29:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %28, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #1

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
