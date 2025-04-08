; ModuleID = 'pnmin.c'
source_filename = "pnmin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnm_struct = type { i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnm_fget_header(%struct.pnm_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnm_struct*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pnm_struct* %0, %struct.pnm_struct** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  %8 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %9 = bitcast %struct.pnm_struct* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 20, i1 false)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %11 = call i32 @getc(%struct._IO_FILE* noundef %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %102

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 80
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %102

19:                                               ; preds = %15
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %21 = call i32 @getc(%struct._IO_FILE* noundef %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 49
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 57
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %19
  store i32 -1, i32* %3, align 4
  br label %102

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 48
  store i32 %30, i32* %6, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %32 = call i32 @pnm_fget_char(%struct._IO_FILE* noundef %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %45, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %102

45:                                               ; preds = %41, %38, %35, %28
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %48 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp uge i32 %49, 1
  br i1 %50, label %51, label %101

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = icmp ule i32 %52, 6
  br i1 %53, label %54, label %101

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 6
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i1 [ true, %54 ], [ %59, %57 ]
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 3, i32 1
  %64 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %65 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %67 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %68 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %67, i32 0, i32 2
  %69 = call i32 @pnm_fscan_uint(%struct._IO_FILE* noundef %66, i32* noundef %68)
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %77, label %71

71:                                               ; preds = %60
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %73 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %74 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %73, i32 0, i32 3
  %75 = call i32 @pnm_fscan_uint(%struct._IO_FILE* noundef %72, i32* noundef %74)
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %60
  store i32 -1, i32* %3, align 4
  br label %102

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %87

84:                                               ; preds = %81, %78
  %85 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %86 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %85, i32 0, i32 4
  store i32 1, i32* %86, align 4
  br label %95

87:                                               ; preds = %81
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %89 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %90 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %89, i32 0, i32 4
  %91 = call i32 @pnm_fscan_uint(%struct._IO_FILE* noundef %88, i32* noundef %90)
  %92 = icmp ne i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 -1, i32* %3, align 4
  br label %102

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %84
  %96 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %97 = call i32 @pnm_is_valid(%struct.pnm_struct* noundef %96)
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %51, %45
  store i32 -1, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %95, %93, %77, %44, %27, %18, %14
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnm_fget_char(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = call i32 @getc(%struct._IO_FILE* noundef %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 35
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %21, %8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %11 = call i32 @getc(%struct._IO_FILE* noundef %10)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 10
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 13
  br label %21

21:                                               ; preds = %18, %15, %12
  %22 = phi i1 [ false, %15 ], [ false, %12 ], [ %20, %18 ]
  br i1 %22, label %9, label %23, !llvm.loop !4

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 13
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %29 = call i32 @getc(%struct._IO_FILE* noundef %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 10
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %35 = call i32 @ungetc(i32 noundef %33, %struct._IO_FILE* noundef %34)
  store i32 10, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %27
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnm_fscan_uint(%struct._IO_FILE* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %8

8:                                                ; preds = %23, %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %10 = call i32 @pnm_fget_char(%struct._IO_FILE* noundef %9)
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 13
  br label %23

23:                                               ; preds = %20, %17, %14, %11
  %24 = phi i1 [ true, %17 ], [ true, %14 ], [ true, %11 ], [ %22, %20 ]
  br i1 %24, label %8, label %25, !llvm.loop !6

25:                                               ; preds = %23
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %86

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 48
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %33, 57
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %6, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %38 = call i32 @ungetc(i32 noundef %36, %struct._IO_FILE* noundef %37)
  store i32 0, i32* %3, align 4
  br label %86

39:                                               ; preds = %32
  %40 = load i32*, i32** %5, align 8
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %67, %39
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = mul i32 %43, 10
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 48
  %47 = add i32 %44, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp uge i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %58

55:                                               ; preds = %41
  %56 = load i32*, i32** %5, align 8
  store i32 -1, i32* %56, align 4
  %57 = call i32* @__errno_location() #4
  store i32 34, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %60 = call i32 @getc(%struct._IO_FILE* noundef %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %62, 48
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp sle i32 %65, 57
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i1 [ false, %61 ], [ %66, %64 ]
  br i1 %68, label %41, label %69, !llvm.loop !7

69:                                               ; preds = %67
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %85, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 9
  br i1 %74, label %85, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %85, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 13
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %84 = call i32 @ungetc(i32 noundef %82, %struct._IO_FILE* noundef %83)
  br label %85

85:                                               ; preds = %81, %78, %75, %72, %69
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %35, %28
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @pnm_is_valid(%struct.pnm_struct* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnm_fget_values(%struct.pnm_struct* noundef %0, i32* noundef %1, i32 noundef %2, %struct._IO_FILE* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pnm_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.pnm_struct* %0, %struct.pnm_struct** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct._IO_FILE* %3, %struct._IO_FILE** %9, align 8
  %23 = load %struct.pnm_struct*, %struct.pnm_struct** %6, align 8
  %24 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.pnm_struct*, %struct.pnm_struct** %6, align 8
  %27 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.pnm_struct*, %struct.pnm_struct** %6, align 8
  %30 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.pnm_struct*, %struct.pnm_struct** %6, align 8
  %33 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %36, %38
  store i64 %39, i64* %14, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %14, align 8
  %43 = mul i64 %41, %42
  store i64 %43, i64* %15, align 8
  %44 = load i32, i32* %10, align 4
  switch i32 %44, label %243 [
    i32 1, label %45
    i32 2, label %90
    i32 3, label %90
    i32 4, label %108
    i32 5, label %145
    i32 6, label %145
    i32 7, label %145
  ]

45:                                               ; preds = %4
  store i64 0, i64* %21, align 8
  br label %46

46:                                               ; preds = %86, %45
  %47 = load i64, i64* %21, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %89

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %66, %50
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %53 = call i32 @pnm_fget_char(%struct._IO_FILE* noundef %52)
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %16, align 4
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %16, align 4
  %59 = icmp eq i32 %58, 9
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %16, align 4
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %16, align 4
  %65 = icmp eq i32 %64, 13
  br label %66

66:                                               ; preds = %63, %60, %57, %54
  %67 = phi i1 [ true, %60 ], [ true, %57 ], [ true, %54 ], [ %65, %63 ]
  br i1 %67, label %51, label %68, !llvm.loop !8

68:                                               ; preds = %66
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 48
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 49
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %16, align 4
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %77 = call i32 @ungetc(i32 noundef %75, %struct._IO_FILE* noundef %76)
  br label %89

78:                                               ; preds = %71, %68
  %79 = load i32, i32* %16, align 4
  %80 = icmp eq i32 %79, 48
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  %83 = load i32*, i32** %7, align 8
  %84 = load i64, i64* %21, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %78
  %87 = load i64, i64* %21, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %21, align 8
  br label %46, !llvm.loop !9

89:                                               ; preds = %74, %46
  br label %245

90:                                               ; preds = %4, %4
  store i64 0, i64* %21, align 8
  br label %91

91:                                               ; preds = %104, %90
  %92 = load i64, i64* %21, align 8
  %93 = load i64, i64* %15, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i64, i64* %21, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = call i32 @pnm_fscan_uint(%struct._IO_FILE* noundef %96, i32* noundef %99)
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %107

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %21, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %21, align 8
  br label %91, !llvm.loop !10

107:                                              ; preds = %102, %91
  br label %245

108:                                              ; preds = %4
  store i64 0, i64* %22, align 8
  store i64 0, i64* %21, align 8
  br label %109

109:                                              ; preds = %143, %108
  %110 = load i64, i64* %21, align 8
  %111 = load i64, i64* %15, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %144

113:                                              ; preds = %109
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %115 = call i32 @getc(%struct._IO_FILE* noundef %114)
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %144

119:                                              ; preds = %113
  store i32 128, i32* %20, align 4
  br label %120

120:                                              ; preds = %140, %119
  %121 = load i32, i32* %20, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %120
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %20, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 0, i32 1
  %130 = load i32*, i32** %7, align 8
  %131 = load i64, i64* %21, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %21, align 8
  %133 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %129, i32* %133, align 4
  %134 = load i64, i64* %22, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %22, align 8
  %136 = load i64, i64* %14, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %123
  store i64 0, i64* %22, align 8
  br label %143

139:                                              ; preds = %123
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %20, align 4
  %142 = ashr i32 %141, 1
  store i32 %142, i32* %20, align 4
  br label %120, !llvm.loop !11

143:                                              ; preds = %138, %120
  br label %109, !llvm.loop !12

144:                                              ; preds = %118, %109
  br label %245

145:                                              ; preds = %4, %4, %4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ule i32 %146, 255
  br i1 %147, label %148, label %168

148:                                              ; preds = %145
  store i64 0, i64* %21, align 8
  br label %149

149:                                              ; preds = %164, %148
  %150 = load i64, i64* %21, align 8
  %151 = load i64, i64* %15, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %149
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %155 = call i32 @getc(%struct._IO_FILE* noundef %154)
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %16, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %167

159:                                              ; preds = %153
  %160 = load i32, i32* %16, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = load i64, i64* %21, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32 %160, i32* %163, align 4
  br label %164

164:                                              ; preds = %159
  %165 = load i64, i64* %21, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %21, align 8
  br label %149, !llvm.loop !13

167:                                              ; preds = %158, %149
  br label %242

168:                                              ; preds = %145
  %169 = load i32, i32* %13, align 4
  %170 = icmp ule i32 %169, 65535
  br i1 %170, label %171, label %196

171:                                              ; preds = %168
  store i64 0, i64* %21, align 8
  br label %172

172:                                              ; preds = %192, %171
  %173 = load i64, i64* %21, align 8
  %174 = load i64, i64* %15, align 8
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %172
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %178 = call i32 @getc(%struct._IO_FILE* noundef %177)
  store i32 %178, i32* %17, align 4
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %180 = call i32 @getc(%struct._IO_FILE* noundef %179)
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %195

184:                                              ; preds = %176
  %185 = load i32, i32* %17, align 4
  %186 = shl i32 %185, 8
  %187 = load i32, i32* %16, align 4
  %188 = add i32 %186, %187
  %189 = load i32*, i32** %7, align 8
  %190 = load i64, i64* %21, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32 %188, i32* %191, align 4
  br label %192

192:                                              ; preds = %184
  %193 = load i64, i64* %21, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %21, align 8
  br label %172, !llvm.loop !14

195:                                              ; preds = %183, %172
  br label %241

196:                                              ; preds = %168
  %197 = load i32, i32* %13, align 4
  %198 = icmp ule i32 %197, -1
  br i1 %198, label %199, label %238

199:                                              ; preds = %196
  store i32 0, i32* %19, align 4
  store i64 0, i64* %21, align 8
  br label %200

200:                                              ; preds = %234, %199
  %201 = load i64, i64* %21, align 8
  %202 = load i64, i64* %15, align 8
  %203 = icmp ult i64 %201, %202
  br i1 %203, label %204, label %237

204:                                              ; preds = %200
  %205 = load i32, i32* %13, align 4
  %206 = icmp ugt i32 %205, 16777215
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %209 = call i32 @getc(%struct._IO_FILE* noundef %208)
  store i32 %209, i32* %19, align 4
  br label %210

210:                                              ; preds = %207, %204
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %212 = call i32 @getc(%struct._IO_FILE* noundef %211)
  store i32 %212, i32* %18, align 4
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %214 = call i32 @getc(%struct._IO_FILE* noundef %213)
  store i32 %214, i32* %17, align 4
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %216 = call i32 @getc(%struct._IO_FILE* noundef %215)
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %16, align 4
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %220

219:                                              ; preds = %210
  br label %237

220:                                              ; preds = %210
  %221 = load i32, i32* %19, align 4
  %222 = shl i32 %221, 24
  %223 = load i32, i32* %18, align 4
  %224 = shl i32 %223, 16
  %225 = add i32 %222, %224
  %226 = load i32, i32* %17, align 4
  %227 = shl i32 %226, 8
  %228 = add i32 %225, %227
  %229 = load i32, i32* %16, align 4
  %230 = add i32 %228, %229
  %231 = load i32*, i32** %7, align 8
  %232 = load i64, i64* %21, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32 %230, i32* %233, align 4
  br label %234

234:                                              ; preds = %220
  %235 = load i64, i64* %21, align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* %21, align 8
  br label %200, !llvm.loop !15

237:                                              ; preds = %219, %200
  br label %240

238:                                              ; preds = %196
  %239 = call i32* @__errno_location() #4
  store i32 22, i32* %239, align 4
  store i32 0, i32* %5, align 4
  br label %259

240:                                              ; preds = %237
  br label %241

241:                                              ; preds = %240, %195
  br label %242

242:                                              ; preds = %241, %167
  br label %245

243:                                              ; preds = %4
  %244 = call i32* @__errno_location() #4
  store i32 22, i32* %244, align 4
  store i32 0, i32* %5, align 4
  br label %259

245:                                              ; preds = %242, %144, %107, %89
  %246 = load i64, i64* %21, align 8
  %247 = load i64, i64* %15, align 8
  %248 = icmp ult i64 %246, %247
  br i1 %248, label %249, label %258

249:                                              ; preds = %245
  %250 = load i32*, i32** %7, align 8
  %251 = load i64, i64* %21, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  %253 = bitcast i32* %252 to i8*
  %254 = load i64, i64* %15, align 8
  %255 = load i64, i64* %21, align 8
  %256 = sub i64 %254, %255
  %257 = mul i64 %256, 4
  call void @llvm.memset.p0i8.i64(i8* align 4 %253, i8 0, i64 %257, i1 false)
  store i32 -1, i32* %5, align 4
  br label %259

258:                                              ; preds = %245
  store i32 1, i32* %5, align 4
  br label %259

259:                                              ; preds = %258, %249, %243, %238
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnm_fget_bytes(%struct.pnm_struct* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pnm_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.pnm_struct* %0, %struct.pnm_struct** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct._IO_FILE* %4, %struct._IO_FILE** %11, align 8
  %23 = load %struct.pnm_struct*, %struct.pnm_struct** %7, align 8
  %24 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.pnm_struct*, %struct.pnm_struct** %7, align 8
  %27 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load %struct.pnm_struct*, %struct.pnm_struct** %7, align 8
  %30 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load %struct.pnm_struct*, %struct.pnm_struct** %7, align 8
  %33 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %13, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, i32* %14, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %36, %38
  store i64 %39, i64* %16, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %16, align 8
  %43 = mul i64 %41, %42
  store i64 %43, i64* %17, align 8
  %44 = load i32, i32* %15, align 4
  %45 = icmp ule i32 %44, 255
  br i1 %45, label %46, label %47

46:                                               ; preds = %5
  store i64 1, i64* %18, align 8
  br label %68

47:                                               ; preds = %5
  %48 = load i32, i32* %15, align 4
  %49 = icmp ule i32 %48, 65535
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i64 2, i64* %18, align 8
  br label %67

51:                                               ; preds = %47
  %52 = load i32, i32* %15, align 4
  %53 = icmp ule i32 %52, 16777215
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i64 3, i64* %18, align 8
  br label %66

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  %57 = icmp ule i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64 4, i64* %18, align 8
  br label %65

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %18, align 8
  br label %65

65:                                               ; preds = %59, %58
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66, %50
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32* @__errno_location() #4
  store i32 22, i32* %73, align 4
  store i32 0, i32* %6, align 4
  br label %136

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  switch i32 %75, label %120 [
    i32 4, label %76
    i32 5, label %114
    i32 6, label %114
    i32 7, label %114
  ]

76:                                               ; preds = %74
  store i64 0, i64* %22, align 8
  store i64 0, i64* %21, align 8
  br label %77

77:                                               ; preds = %112, %76
  %78 = load i64, i64* %21, align 8
  %79 = load i64, i64* %17, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %113

81:                                               ; preds = %77
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %83 = call i32 @getc(%struct._IO_FILE* noundef %82)
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %113

87:                                               ; preds = %81
  store i32 128, i32* %20, align 4
  br label %88

88:                                               ; preds = %109, %87
  %89 = load i32, i32* %20, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 0, i32 1
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %8, align 8
  %100 = load i64, i64* %21, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %21, align 8
  %102 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 %98, i8* %102, align 1
  %103 = load i64, i64* %22, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %22, align 8
  %105 = load i64, i64* %16, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %91
  store i64 0, i64* %22, align 8
  br label %112

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %20, align 4
  %111 = ashr i32 %110, 1
  store i32 %111, i32* %20, align 4
  br label %88, !llvm.loop !16

112:                                              ; preds = %107, %88
  br label %77, !llvm.loop !17

113:                                              ; preds = %86, %77
  br label %122

114:                                              ; preds = %74, %74, %74
  %115 = load i8*, i8** %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %119 = call i64 @fread(i8* noundef %115, i64 noundef %116, i64 noundef %117, %struct._IO_FILE* noundef %118)
  store i64 %119, i64* %21, align 8
  br label %122

120:                                              ; preds = %74
  %121 = call i32* @__errno_location() #4
  store i32 22, i32* %121, align 4
  store i32 0, i32* %6, align 4
  br label %136

122:                                              ; preds = %114, %113
  %123 = load i64, i64* %21, align 8
  %124 = load i64, i64* %17, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i8*, i8** %8, align 8
  %128 = load i64, i64* %21, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %17, align 8
  %132 = mul i64 %130, %131
  %133 = load i64, i64* %21, align 8
  %134 = sub i64 %132, %133
  call void @llvm.memset.p0i8.i64(i8* align 1 %129, i8 0, i64 %134, i1 false)
  store i32 -1, i32* %6, align 4
  br label %136

135:                                              ; preds = %122
  store i32 1, i32* %6, align 4
  br label %136

136:                                              ; preds = %135, %126, %120, %72
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
