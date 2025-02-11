; ModuleID = 'pngerror.c'
source_filename = "pngerror.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.png_struct_def = type { void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*, i8*, void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)*, i8*, i32, i32, i32, i32, %struct.z_stream_s, %struct.png_compression_buffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i64, i32, i32, %struct.png_color_struct*, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.png_color_16_struct, void (%struct.png_struct_def*)*, i32, i32, %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)*, i32, i32, i32, i8*, i8*, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, i8*, i64, i32, i32, i8*, [4 x void (%struct.png_row_info_struct*, i8*, i8*)*] }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }
%struct.png_compression_buffer = type { %struct.png_compression_buffer*, [1 x i8] }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

@png_format_number.digits = internal constant [17 x i8] c"0123456789ABCDEF\00", align 1
@png_formatted_warning.valid_parameters = internal constant [10 x i8] c"123456789\00", align 1
@png_digit = internal constant [16 x i8] c"0123456789ABCDEF", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"libpng error: %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"libpng warning: %s\00", align 1

; Function Attrs: noinline noreturn nounwind optnone ssp uwtable
define void @png_error(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = icmp ne %struct.png_struct_def* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 0
  %10 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %9, align 8
  %11 = icmp ne void (%struct.png_struct_def*, i8*)* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 0
  %15 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %14, align 8
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %17 = load i8*, i8** %4, align 8
  call void %15(%struct.png_struct_def* noundef %16, i8* noundef %17)
  br label %18

18:                                               ; preds = %12, %7, %2
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %20 = load i8*, i8** %4, align 8
  call void @png_default_error(%struct.png_struct_def* noundef %19, i8* noundef %20) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone ssp uwtable
define internal void @png_default_error(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i8* [ %9, %8 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %10 ]
  %13 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %5, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* noundef %12)
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %15 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  call void @png_longjmp(%struct.png_struct_def* noundef %16, i32 noundef 1) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @png_safecat(i8* noundef %0, i64 noundef %1, i64 noundef %2, i8* noundef %3) #1 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %44

11:                                               ; preds = %4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = sub i64 %26, 1
  %28 = icmp ult i64 %25, %27
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %39

31:                                               ; preds = %29
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  %34 = load i8, i8* %32, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 %34, i8* %38, align 1
  br label %19, !llvm.loop !10

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %15
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %40, %11, %4
  %45 = load i64, i64* %7, align 8
  ret i64 %45
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @png_format_number(i8* noundef %0, i8* noundef %1, i32 noundef %2, i64 noundef %3) #1 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %13, i8** %6, align 8
  store i8 0, i8* %13, align 1
  br label %14

14:                                               ; preds = %95, %4
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ugt i8* %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ true, %18 ], [ %24, %21 ]
  br label %27

27:                                               ; preds = %25, %14
  %28 = phi i1 [ false, %14 ], [ %26, %25 ]
  br i1 %28, label %29, label %96

29:                                               ; preds = %27
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %68 [
    i32 5, label %31
    i32 2, label %48
    i32 1, label %49
    i32 4, label %58
    i32 3, label %59
  ]

31:                                               ; preds = %29
  store i32 5, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = urem i64 %35, 10
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34, %31
  %39 = load i64, i64* %8, align 8
  %40 = urem i64 %39, 10
  %41 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %44, i8** %6, align 8
  store i8 %42, i8* %44, align 1
  store i32 1, i32* %11, align 4
  br label %45

45:                                               ; preds = %38, %34
  %46 = load i64, i64* %8, align 8
  %47 = udiv i64 %46, 10
  store i64 %47, i64* %8, align 8
  br label %69

48:                                               ; preds = %29
  store i32 2, i32* %10, align 4
  br label %49

49:                                               ; preds = %29, %48
  %50 = load i64, i64* %8, align 8
  %51 = urem i64 %50, 10
  %52 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %55, i8** %6, align 8
  store i8 %53, i8* %55, align 1
  %56 = load i64, i64* %8, align 8
  %57 = udiv i64 %56, 10
  store i64 %57, i64* %8, align 8
  br label %69

58:                                               ; preds = %29
  store i32 2, i32* %10, align 4
  br label %59

59:                                               ; preds = %29, %58
  %60 = load i64, i64* %8, align 8
  %61 = and i64 %60, 15
  %62 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %6, align 8
  store i8 %63, i8* %65, align 1
  %66 = load i64, i64* %8, align 8
  %67 = lshr i64 %66, 4
  store i64 %67, i64* %8, align 8
  br label %69

68:                                               ; preds = %29
  store i64 0, i64* %8, align 8
  br label %69

69:                                               ; preds = %68, %59, %49, %45
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 5
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 5
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ugt i8* %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** %6, align 8
  store i8 46, i8* %86, align 1
  br label %94

87:                                               ; preds = %81
  %88 = load i64, i64* %8, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %6, align 8
  store i8 48, i8* %92, align 1
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %84
  br label %95

95:                                               ; preds = %94, %77, %74, %69
  br label %14, !llvm.loop !12

96:                                               ; preds = %27
  %97 = load i8*, i8** %6, align 8
  ret i8* %97
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_warning(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %7 = icmp ne %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 35
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  store i32 1, i32* %5, align 4
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 15
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %14, !llvm.loop !13

30:                                               ; preds = %25, %14
  br label %31

31:                                               ; preds = %30, %8
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %34 = icmp ne %struct.png_struct_def* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 1
  %38 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %37, align 8
  %39 = icmp ne void (%struct.png_struct_def*, i8*)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %42 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %41, i32 0, i32 1
  %43 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %42, align 8
  %44 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  call void %43(%struct.png_struct_def* noundef %44, i8* noundef %48)
  br label %55

49:                                               ; preds = %35, %32
  %50 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  call void @png_default_warning(%struct.png_struct_def* noundef %50, i8* noundef %54)
  br label %55

55:                                               ; preds = %49, %40
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_default_warning(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %6)
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %9 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_warning_parameter([32 x i8]* noundef %0, i32 noundef %1, i8* noundef %2) #1 {
  %4 = alloca [32 x i8]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store [32 x i8]* %0, [32 x i8]** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp sle i32 %10, 8
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load [32 x i8]*, [32 x i8]** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 %16
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @png_safecat(i8* noundef %18, i64 noundef 32, i64 noundef 0, i8* noundef %19)
  br label %21

21:                                               ; preds = %12, %9, %3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_warning_parameter_unsigned([32 x i8]* noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) #1 {
  %5 = alloca [32 x i8]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [24 x i8], align 1
  store [32 x i8]* %0, [32 x i8]** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load [32 x i8]*, [32 x i8]** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds [24 x i8], [24 x i8]* %9, i64 0, i64 0
  %13 = getelementptr inbounds [24 x i8], [24 x i8]* %9, i64 0, i64 0
  %14 = getelementptr inbounds i8, i8* %13, i64 24
  %15 = load i32, i32* %7, align 4
  %16 = load i64, i64* %8, align 8
  %17 = call i8* @png_format_number(i8* noundef %12, i8* noundef %14, i32 noundef %15, i64 noundef %16)
  call void @png_warning_parameter([32 x i8]* noundef %10, i32 noundef %11, i8* noundef %17)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_warning_parameter_signed([32 x i8]* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca [32 x i8]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [24 x i8], align 1
  store [32 x i8]* %0, [32 x i8]** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = xor i64 %17, -1
  %19 = add i64 %18, 1
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %16, %4
  %21 = getelementptr inbounds [24 x i8], [24 x i8]* %11, i64 0, i64 0
  %22 = getelementptr inbounds [24 x i8], [24 x i8]* %11, i64 0, i64 0
  %23 = getelementptr inbounds i8, i8* %22, i64 24
  %24 = load i32, i32* %7, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i8* @png_format_number(i8* noundef %21, i8* noundef %23, i32 noundef %24, i64 noundef %25)
  store i8* %26, i8** %10, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds [24 x i8], [24 x i8]* %11, i64 0, i64 0
  %32 = icmp ugt i8* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %10, align 8
  store i8 45, i8* %35, align 1
  br label %36

36:                                               ; preds = %33, %29, %20
  %37 = load [32 x i8]*, [32 x i8]** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i8*, i8** %10, align 8
  call void @png_warning_parameter([32 x i8]* noundef %37, i32 noundef %38, i8* noundef %39)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_formatted_warning(%struct.png_struct_def* noalias noundef %0, [32 x i8]* noundef %1, i8* noundef %2) #1 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca [32 x i8]*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [192 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store [32 x i8]* %1, [32 x i8]** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %102, %98, %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %14, 191
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %109

23:                                               ; preds = %21
  %24 = load [32 x i8]*, [32 x i8]** %5, align 8
  %25 = icmp ne [32 x i8]* %24, null
  br i1 %25, label %26, label %102

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 64
  br i1 %30, label %31, label %102

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %102

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %59, %37
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* @png_formatted_warning.valid_parameters, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [10 x i8], [10 x i8]* @png_formatted_warning.valid_parameters, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %50, %42
  %58 = phi i1 [ false, %42 ], [ %56, %50 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %42, !llvm.loop !14

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %101

65:                                               ; preds = %62
  %66 = load [32 x i8]*, [32 x i8]** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %66, i64 %68
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %69, i64 0, i64 0
  store i8* %70, i8** %11, align 8
  %71 = load [32 x i8]*, [32 x i8]** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %71, i64 %73
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %74, i64 0, i64 0
  %76 = getelementptr inbounds i8, i8* %75, i64 32
  store i8* %76, i8** %12, align 8
  br label %77

77:                                               ; preds = %91, %65
  %78 = load i64, i64* %7, align 8
  %79 = icmp ult i64 %78, 191
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load i8*, i8** %11, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ult i8* %86, %87
  br label %89

89:                                               ; preds = %85, %80, %77
  %90 = phi i1 [ false, %80 ], [ false, %77 ], [ %88, %85 ]
  br i1 %90, label %91, label %98

91:                                               ; preds = %89
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %11, align 8
  %94 = load i8, i8* %92, align 1
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  %97 = getelementptr inbounds [192 x i8], [192 x i8]* %8, i64 0, i64 %95
  store i8 %94, i8* %97, align 1
  br label %77, !llvm.loop !15

98:                                               ; preds = %89
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  br label %13, !llvm.loop !16

101:                                              ; preds = %62
  br label %102

102:                                              ; preds = %101, %31, %26, %23
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %6, align 8
  %105 = load i8, i8* %103, align 1
  %106 = load i64, i64* %7, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %7, align 8
  %108 = getelementptr inbounds [192 x i8], [192 x i8]* %8, i64 0, i64 %106
  store i8 %105, i8* %108, align 1
  br label %13, !llvm.loop !16

109:                                              ; preds = %21
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds [192 x i8], [192 x i8]* %8, i64 0, i64 %110
  store i8 0, i8* %111, align 1
  %112 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %113 = getelementptr inbounds [192 x i8], [192 x i8]* %8, i64 0, i64 0
  call void @png_warning(%struct.png_struct_def* noundef %112, i8* noundef %113)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_benign_error(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 1048576
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 32768
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 30
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %23 = load i8*, i8** %4, align 8
  call void @png_chunk_warning(%struct.png_struct_def* noundef %22, i8* noundef %23)
  br label %27

24:                                               ; preds = %16, %10
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %26 = load i8*, i8** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %25, i8* noundef %26)
  br label %27

27:                                               ; preds = %24, %21
  br label %45

28:                                               ; preds = %2
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %30 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 32768
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %36 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %35, i32 0, i32 30
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %41 = load i8*, i8** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %40, i8* noundef %41) #4
  unreachable

42:                                               ; preds = %34, %28
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %44 = load i8*, i8** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %43, i8* noundef %44) #4
  unreachable

45:                                               ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_chunk_warning(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [214 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %7 = icmp eq %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %10 = load i8*, i8** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %9, i8* noundef %10)
  br label %17

11:                                               ; preds = %2
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %13 = getelementptr inbounds [214 x i8], [214 x i8]* %5, i64 0, i64 0
  %14 = load i8*, i8** %4, align 8
  call void @png_format_buffer(%struct.png_struct_def* noundef %12, i8* noundef %13, i8* noundef %14)
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %16 = getelementptr inbounds [214 x i8], [214 x i8]* %5, i64 0, i64 0
  call void @png_warning(%struct.png_struct_def* noundef %15, i8* noundef %16)
  br label %17

17:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone ssp uwtable
define void @png_chunk_error(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [214 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %7 = icmp eq %struct.png_struct_def* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %10 = load i8*, i8** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %9, i8* noundef %10) #4
  unreachable

11:                                               ; preds = %2
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %13 = getelementptr inbounds [214 x i8], [214 x i8]* %5, i64 0, i64 0
  %14 = load i8*, i8** %4, align 8
  call void @png_format_buffer(%struct.png_struct_def* noundef %12, i8* noundef %13, i8* noundef %14)
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %16 = getelementptr inbounds [214 x i8], [214 x i8]* %5, i64 0, i64 0
  call void @png_error(%struct.png_struct_def* noundef %15, i8* noundef %16) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_app_warning(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 2097152
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %12 = load i8*, i8** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %11, i8* noundef %12)
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %15 = load i8*, i8** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %14, i8* noundef %15) #4
  unreachable

16:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_app_error(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 4194304
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %12 = load i8*, i8** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %11, i8* noundef %12)
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %15 = load i8*, i8** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %14, i8* noundef %15) #4
  unreachable

16:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @png_format_buffer(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i8* noundef %2) #1 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 30
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 24, i32* %9, align 4
  br label %15

15:                                               ; preds = %82, %3
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %83

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = lshr i32 %19, %20
  %22 = and i32 %21, 255
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 8
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 65
  br i1 %26, label %38, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 122
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp sgt i32 %31, 90
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 97
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  br label %38

38:                                               ; preds = %36, %27, %18
  %39 = phi i1 [ true, %27 ], [ true, %18 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 91, i8* %47, align 1
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 240
  %50 = ashr i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* @png_digit, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 %53, i8* %58, align 1
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, 15
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* @png_digit, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 %63, i8* %68, align 1
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 93, i8* %73, align 1
  br label %82

74:                                               ; preds = %38
  %75 = load i32, i32* %10, align 4
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 %76, i8* %81, align 1
  br label %82

82:                                               ; preds = %74, %42
  br label %15, !llvm.loop !17

83:                                               ; preds = %15
  %84 = load i8*, i8** %6, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 0, i8* %90, align 1
  br label %132

91:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 58, i8* %96, align 1
  %97 = load i8*, i8** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 32, i8* %101, align 1
  br label %102

102:                                              ; preds = %115, %91
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 195
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br label %113

113:                                              ; preds = %105, %102
  %114 = phi i1 [ false, %102 ], [ %112, %105 ]
  br i1 %114, label %115, label %127

115:                                              ; preds = %113
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  store i8 %121, i8* %126, align 1
  br label %102, !llvm.loop !18

127:                                              ; preds = %113
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 0, i8* %131, align 1
  br label %132

132:                                              ; preds = %127, %86
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_chunk_benign_error(%struct.png_struct_def* noalias noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 1048576
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %12 = load i8*, i8** %4, align 8
  call void @png_chunk_warning(%struct.png_struct_def* noundef %11, i8* noundef %12)
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %15 = load i8*, i8** %4, align 8
  call void @png_chunk_error(%struct.png_struct_def* noundef %14, i8* noundef %15) #4
  unreachable

16:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_chunk_report(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 32768
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %17 = load i8*, i8** %5, align 8
  call void @png_chunk_warning(%struct.png_struct_def* noundef %16, i8* noundef %17)
  br label %21

18:                                               ; preds = %12
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %20 = load i8*, i8** %5, align 8
  call void @png_chunk_benign_error(%struct.png_struct_def* noundef %19, i8* noundef %20)
  br label %21

21:                                               ; preds = %18, %15
  br label %39

22:                                               ; preds = %3
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %24 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 32768
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %33 = load i8*, i8** %5, align 8
  call void @png_app_warning(%struct.png_struct_def* noundef %32, i8* noundef %33)
  br label %37

34:                                               ; preds = %28
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %36 = load i8*, i8** %5, align 8
  call void @png_app_error(%struct.png_struct_def* noundef %35, i8* noundef %36)
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %22
  br label %39

39:                                               ; preds = %38, %21
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone ssp uwtable
define void @png_longjmp(%struct.png_struct_def* noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = load i32, i32* %4, align 4
  call void @abort() #5
  unreachable
}

; Function Attrs: cold noreturn
declare void @abort() #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_error_fn(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, void (%struct.png_struct_def*, i8*)* noundef %2, void (%struct.png_struct_def*, i8*)* noundef %3) #1 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (%struct.png_struct_def*, i8*)*, align 8
  %8 = alloca void (%struct.png_struct_def*, i8*)*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store i8* %1, i8** %6, align 8
  store void (%struct.png_struct_def*, i8*)* %2, void (%struct.png_struct_def*, i8*)** %7, align 8
  store void (%struct.png_struct_def*, i8*)* %3, void (%struct.png_struct_def*, i8*)** %8, align 8
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %10 = icmp eq %struct.png_struct_def* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %22

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %7, align 8
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 0
  store void (%struct.png_struct_def*, i8*)* %16, void (%struct.png_struct_def*, i8*)** %18, align 8
  %19 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %8, align 8
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 1
  store void (%struct.png_struct_def*, i8*)* %19, void (%struct.png_struct_def*, i8*)** %21, align 8
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @png_get_error_ptr(%struct.png_struct_def* noalias noundef %0) #1 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %5 = icmp eq %struct.png_struct_def* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i8*, i8** %2, align 8
  ret i8* %12
}

declare i32 @fprintf(%struct.__sFILE* noundef, i8* noundef, ...) #3

attributes #0 = { noinline noreturn nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn }
attributes #5 = { cold noreturn }

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
