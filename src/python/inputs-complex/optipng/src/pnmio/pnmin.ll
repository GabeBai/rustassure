; ModuleID = 'pnmin.c'
source_filename = "pnmin.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.pnm_struct = type { i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pnm_fget_header(%struct.pnm_struct* noundef %0, %struct.__sFILE* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnm_struct*, align 8
  %5 = alloca %struct.__sFILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pnm_struct* %0, %struct.pnm_struct** %4, align 8
  store %struct.__sFILE* %1, %struct.__sFILE** %5, align 8
  %8 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %9 = bitcast %struct.pnm_struct* %8 to i8*
  %10 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %11 = bitcast %struct.pnm_struct* %10 to i8*
  %12 = call i64 @llvm.objectsize.i64.p0i8(i8* %11, i1 false, i1 true, i1 false)
  %13 = call i8* @__memset_chk(i8* noundef %9, i32 noundef 0, i64 noundef 20, i64 noundef %12) #4
  %14 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %15 = call i32 @getc(%struct.__sFILE* noundef %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %106

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 80
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %106

23:                                               ; preds = %19
  %24 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %25 = call i32 @getc(%struct.__sFILE* noundef %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 49
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 57
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %23
  store i32 -1, i32* %3, align 4
  br label %106

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 48
  store i32 %34, i32* %6, align 4
  %35 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %36 = call i32 @pnm_fget_char(%struct.__sFILE* noundef %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 13
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %106

49:                                               ; preds = %45, %42, %39, %32
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %52 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp uge i32 %53, 1
  br i1 %54, label %55, label %105

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = icmp ule i32 %56, 6
  br i1 %57, label %58, label %105

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 6
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ true, %58 ], [ %63, %61 ]
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 3, i32 1
  %68 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %69 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %71 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %72 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %71, i32 0, i32 2
  %73 = call i32 @pnm_fscan_uint(%struct.__sFILE* noundef %70, i32* noundef %72)
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %81, label %75

75:                                               ; preds = %64
  %76 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %77 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %78 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %77, i32 0, i32 3
  %79 = call i32 @pnm_fscan_uint(%struct.__sFILE* noundef %76, i32* noundef %78)
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %64
  store i32 -1, i32* %3, align 4
  br label %106

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %88, label %91

88:                                               ; preds = %85, %82
  %89 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %90 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %89, i32 0, i32 4
  store i32 1, i32* %90, align 4
  br label %99

91:                                               ; preds = %85
  %92 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %93 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %94 = getelementptr inbounds %struct.pnm_struct, %struct.pnm_struct* %93, i32 0, i32 4
  %95 = call i32 @pnm_fscan_uint(%struct.__sFILE* noundef %92, i32* noundef %94)
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %106

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %88
  %100 = load %struct.pnm_struct*, %struct.pnm_struct** %4, align 8
  %101 = call i32 @pnm_is_valid(%struct.pnm_struct* noundef %100)
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  store i32 %104, i32* %3, align 4
  br label %106

105:                                              ; preds = %55, %49
  store i32 -1, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %99, %97, %81, %48, %31, %22, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #2

declare i32 @getc(%struct.__sFILE* noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @pnm_fget_char(%struct.__sFILE* noundef %0) #0 {
  %2 = alloca %struct.__sFILE*, align 8
  %3 = alloca i32, align 4
  store %struct.__sFILE* %0, %struct.__sFILE** %2, align 8
  %4 = load %struct.__sFILE*, %struct.__sFILE** %2, align 8
  %5 = call i32 @getc(%struct.__sFILE* noundef %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 35
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %21, %8
  %10 = load %struct.__sFILE*, %struct.__sFILE** %2, align 8
  %11 = call i32 @getc(%struct.__sFILE* noundef %10)
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
  br i1 %22, label %9, label %23, !llvm.loop !10

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 13
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.__sFILE*, %struct.__sFILE** %2, align 8
  %29 = call i32 @getc(%struct.__sFILE* noundef %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 10
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.__sFILE*, %struct.__sFILE** %2, align 8
  %35 = call i32 @ungetc(i32 noundef %33, %struct.__sFILE* noundef %34)
  store i32 10, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %27
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @pnm_fscan_uint(%struct.__sFILE* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__sFILE*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.__sFILE* %0, %struct.__sFILE** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %8

8:                                                ; preds = %23, %2
  %9 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8
  %10 = call i32 @pnm_fget_char(%struct.__sFILE* noundef %9)
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
  br i1 %24, label %8, label %25, !llvm.loop !12

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
  %37 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8
  %38 = call i32 @ungetc(i32 noundef %36, %struct.__sFILE* noundef %37)
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
  %57 = call i32* @__error()
  store i32 34, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8
  %60 = call i32 @getc(%struct.__sFILE* noundef %59)
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
  br i1 %68, label %41, label %69, !llvm.loop !13

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
  %83 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8
  %84 = call i32 @ungetc(i32 noundef %82, %struct.__sFILE* noundef %83)
  br label %85

85:                                               ; preds = %81, %78, %75, %72, %69
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %35, %28
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare i32 @pnm_is_valid(%struct.pnm_struct* noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pnm_fget_values(%struct.pnm_struct* noundef %0, i32* noundef %1, i32 noundef %2, %struct.__sFILE* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pnm_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.__sFILE*, align 8
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
  store %struct.__sFILE* %3, %struct.__sFILE** %9, align 8
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
  %52 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %53 = call i32 @pnm_fget_char(%struct.__sFILE* noundef %52)
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
  br i1 %67, label %51, label %68, !llvm.loop !14

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
  %76 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %77 = call i32 @ungetc(i32 noundef %75, %struct.__sFILE* noundef %76)
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
  br label %46, !llvm.loop !15

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
  %96 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i64, i64* %21, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = call i32 @pnm_fscan_uint(%struct.__sFILE* noundef %96, i32* noundef %99)
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
  br label %91, !llvm.loop !16

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
  %114 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %115 = call i32 @getc(%struct.__sFILE* noundef %114)
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
  br label %120, !llvm.loop !17

143:                                              ; preds = %138, %120
  br label %109, !llvm.loop !18

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
  %154 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %155 = call i32 @getc(%struct.__sFILE* noundef %154)
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
  br label %149, !llvm.loop !19

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
  %177 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %178 = call i32 @getc(%struct.__sFILE* noundef %177)
  store i32 %178, i32* %17, align 4
  %179 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %180 = call i32 @getc(%struct.__sFILE* noundef %179)
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
  br label %172, !llvm.loop !20

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
  %208 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %209 = call i32 @getc(%struct.__sFILE* noundef %208)
  store i32 %209, i32* %19, align 4
  br label %210

210:                                              ; preds = %207, %204
  %211 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %212 = call i32 @getc(%struct.__sFILE* noundef %211)
  store i32 %212, i32* %18, align 4
  %213 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %214 = call i32 @getc(%struct.__sFILE* noundef %213)
  store i32 %214, i32* %17, align 4
  %215 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8
  %216 = call i32 @getc(%struct.__sFILE* noundef %215)
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
  br label %200, !llvm.loop !21

237:                                              ; preds = %219, %200
  br label %240

238:                                              ; preds = %196
  %239 = call i32* @__error()
  store i32 22, i32* %239, align 4
  store i32 0, i32* %5, align 4
  br label %265

240:                                              ; preds = %237
  br label %241

241:                                              ; preds = %240, %195
  br label %242

242:                                              ; preds = %241, %167
  br label %245

243:                                              ; preds = %4
  %244 = call i32* @__error()
  store i32 22, i32* %244, align 4
  store i32 0, i32* %5, align 4
  br label %265

245:                                              ; preds = %242, %144, %107, %89
  %246 = load i64, i64* %21, align 8
  %247 = load i64, i64* %15, align 8
  %248 = icmp ult i64 %246, %247
  br i1 %248, label %249, label %264

249:                                              ; preds = %245
  %250 = load i32*, i32** %7, align 8
  %251 = load i64, i64* %21, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  %253 = bitcast i32* %252 to i8*
  %254 = load i64, i64* %15, align 8
  %255 = load i64, i64* %21, align 8
  %256 = sub i64 %254, %255
  %257 = mul i64 %256, 4
  %258 = load i32*, i32** %7, align 8
  %259 = load i64, i64* %21, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = bitcast i32* %260 to i8*
  %262 = call i64 @llvm.objectsize.i64.p0i8(i8* %261, i1 false, i1 true, i1 false)
  %263 = call i8* @__memset_chk(i8* noundef %253, i32 noundef 0, i64 noundef %257, i64 noundef %262) #4
  store i32 -1, i32* %5, align 4
  br label %265

264:                                              ; preds = %245
  store i32 1, i32* %5, align 4
  br label %265

265:                                              ; preds = %264, %249, %243, %238
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

declare i32 @ungetc(i32 noundef, %struct.__sFILE* noundef) #3

declare i32* @__error() #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pnm_fget_bytes(%struct.pnm_struct* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3, %struct.__sFILE* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pnm_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.__sFILE*, align 8
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
  store %struct.__sFILE* %4, %struct.__sFILE** %11, align 8
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
  %73 = call i32* @__error()
  store i32 22, i32* %73, align 4
  store i32 0, i32* %6, align 4
  br label %141

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
  %82 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8
  %83 = call i32 @getc(%struct.__sFILE* noundef %82)
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
  br label %88, !llvm.loop !22

112:                                              ; preds = %107, %88
  br label %77, !llvm.loop !23

113:                                              ; preds = %86, %77
  br label %122

114:                                              ; preds = %74, %74, %74
  %115 = load i8*, i8** %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8
  %119 = call i64 @fread(i8* noundef %115, i64 noundef %116, i64 noundef %117, %struct.__sFILE* noundef %118)
  store i64 %119, i64* %21, align 8
  br label %122

120:                                              ; preds = %74
  %121 = call i32* @__error()
  store i32 22, i32* %121, align 4
  store i32 0, i32* %6, align 4
  br label %141

122:                                              ; preds = %114, %113
  %123 = load i64, i64* %21, align 8
  %124 = load i64, i64* %17, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load i8*, i8** %8, align 8
  %128 = load i64, i64* %21, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %17, align 8
  %132 = mul i64 %130, %131
  %133 = load i64, i64* %21, align 8
  %134 = sub i64 %132, %133
  %135 = load i8*, i8** %8, align 8
  %136 = load i64, i64* %21, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = call i64 @llvm.objectsize.i64.p0i8(i8* %137, i1 false, i1 true, i1 false)
  %139 = call i8* @__memset_chk(i8* noundef %129, i32 noundef 0, i64 noundef %134, i64 noundef %138) #4
  store i32 -1, i32* %6, align 4
  br label %141

140:                                              ; preds = %122
  store i32 1, i32* %6, align 4
  br label %141

141:                                              ; preds = %140, %126, %120, %72
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
