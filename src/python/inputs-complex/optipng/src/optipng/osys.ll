; ModuleID = 'osys.c'
source_filename = "osys.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"/:\00", align 1
@osys_path_mkbak.bak_extname = internal constant [5 x i8] c".bak\00", align 1
@osys_terminate.msg = internal global i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"The execution of this program has been terminated abnormally.\0A\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @osys_path_chdir(i8* noundef %0, i64 noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %10, align 8
  br label %14

14:                                               ; preds = %20, %4
  %15 = load i8*, i8** %10, align 8
  %16 = call i8* @strpbrk(i8* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %23

20:                                               ; preds = %14
  %21 = load i8*, i8** %11, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %10, align 8
  br label %14

23:                                               ; preds = %19
  %24 = load i8*, i8** %9, align 8
  %25 = call i64 @strlen(i8* noundef %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @strlen(i8* noundef %27)
  %29 = add i64 %26, %28
  %30 = add i64 %29, 2
  %31 = load i64, i64* %7, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i8* null, i8** %5, align 8
  br label %68

34:                                               ; preds = %23
  %35 = load i64, i64* %12, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @llvm.objectsize.i64.p0i8(i8* %40, i1 false, i1 true, i1 false)
  %42 = call i8* @__strcpy_chk(i8* noundef %38, i8* noundef %39, i64 noundef %41) #6
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %12, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = call i8* @strchr(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %48)
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %37
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %12, align 8
  %55 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 47, i8* %55, align 1
  br label %56

56:                                               ; preds = %51, %37
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = call i64 @llvm.objectsize.i64.p0i8(i8* %64, i1 false, i1 true, i1 false)
  %66 = call i8* @__strcpy_chk(i8* noundef %60, i8* noundef %61, i64 noundef %65) #6
  %67 = load i8*, i8** %6, align 8
  store i8* %67, i8** %5, align 8
  br label %68

68:                                               ; preds = %57, %33
  %69 = load i8*, i8** %5, align 8
  ret i8* %69
}

declare i8* @strpbrk(i8* noundef, i8* noundef) #1

declare i64 @strlen(i8* noundef) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

declare i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @osys_path_chext(i8* noundef %0, i64 noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 46
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %75

18:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  store i64 -1, i64* %11, align 8
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %19
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* null, i8** %5, align 8
  br label %75

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 %35, i8* %38, align 1
  %39 = sext i8 %35 to i32
  %40 = icmp eq i32 %39, 46
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %41, %31
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %19, !llvm.loop !10

47:                                               ; preds = %19
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i8* null, i8** %5, align 8
  br label %75

59:                                               ; preds = %54
  %60 = load i8*, i8** %9, align 8
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 %61, i8* %64, align 1
  %65 = sext i8 %61 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i8*, i8** %6, align 8
  store i8* %68, i8** %5, align 8
  br label %75

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  br label %54

75:                                               ; preds = %67, %58, %30, %17
  %76 = load i8*, i8** %5, align 8
  ret i8* %76
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @osys_path_mkbak(i8* noundef %0, i64 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @strlen(i8* noundef %8)
  %10 = add i64 %9, 5
  %11 = load i64, i64* %6, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %25

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @llvm.objectsize.i64.p0i8(i8* %17, i1 false, i1 true, i1 false)
  %19 = call i8* @__strcpy_chk(i8* noundef %15, i8* noundef %16, i64 noundef %18) #6
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @llvm.objectsize.i64.p0i8(i8* %21, i1 false, i1 true, i1 false)
  %23 = call i8* @__strcat_chk(i8* noundef %20, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @osys_path_mkbak.bak_extname, i64 0, i64 0), i64 noundef %22) #6
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %14, %13
  %26 = load i8*, i8** %4, align 8
  ret i8* %26
}

; Function Attrs: nounwind
declare i8* @__strcat_chk(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @osys_ftello(%struct.__sFILE* noundef %0) #0 {
  %2 = alloca %struct.__sFILE*, align 8
  store %struct.__sFILE* %0, %struct.__sFILE** %2, align 8
  %3 = load %struct.__sFILE*, %struct.__sFILE** %2, align 8
  %4 = call i64 @ftell(%struct.__sFILE* noundef %3)
  ret i64 %4
}

declare i64 @ftell(%struct.__sFILE* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @osys_fseeko(%struct.__sFILE* noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.__sFILE*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.__sFILE* %0, %struct.__sFILE** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @fseek(%struct.__sFILE* noundef %7, i64 noundef %8, i32 noundef %9)
  ret i32 %10
}

declare i32 @fseek(%struct.__sFILE* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @osys_fgetsize(%struct.__sFILE* noundef %0, i64* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__sFILE*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.__sFILE* %0, %struct.__sFILE** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8
  %8 = call i32 @osys_fseeko(%struct.__sFILE* noundef %7, i64 noundef 0, i32 noundef 2)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8
  %13 = call i64 @osys_ftello(%struct.__sFILE* noundef %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %20

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %16, %10
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @osys_fread_at(%struct.__sFILE* noundef %0, i64 noundef %1, i32 noundef %2, i8* noundef %3, i64 noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.__sFILE*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.__sFILE* %0, %struct.__sFILE** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %15 = call i32 @fgetpos(%struct.__sFILE* noundef %14, i64* noundef %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %37

18:                                               ; preds = %5
  %19 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @osys_fseeko(%struct.__sFILE* noundef %19, i64 noundef %20, i32 noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %28 = call i64 @fread(i8* noundef %25, i64 noundef 1, i64 noundef %26, %struct.__sFILE* noundef %27)
  store i64 %28, i64* %13, align 8
  br label %30

29:                                               ; preds = %18
  store i64 0, i64* %13, align 8
  br label %30

30:                                               ; preds = %29, %24
  %31 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %32 = call i32 @fsetpos(%struct.__sFILE* noundef %31, i64* noundef %12)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i64, i64* %13, align 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %35, %17
  %38 = load i64, i64* %6, align 8
  ret i64 %38
}

declare i32 @fgetpos(%struct.__sFILE* noundef, i64* noundef) #1

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #1

declare i32 @fsetpos(%struct.__sFILE* noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @osys_fwrite_at(%struct.__sFILE* noundef %0, i64 noundef %1, i32 noundef %2, i8* noundef %3, i64 noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.__sFILE*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.__sFILE* %0, %struct.__sFILE** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %15 = call i32 @fgetpos(%struct.__sFILE* noundef %14, i64* noundef %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %19 = call i32 @fflush(%struct.__sFILE* noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %5
  store i64 0, i64* %6, align 8
  br label %46

22:                                               ; preds = %17
  %23 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @osys_fseeko(%struct.__sFILE* noundef %23, i64 noundef %24, i32 noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %32 = call i64 @"\01_fwrite"(i8* noundef %29, i64 noundef 1, i64 noundef %30, %struct.__sFILE* noundef %31)
  store i64 %32, i64* %13, align 8
  br label %34

33:                                               ; preds = %22
  store i64 0, i64* %13, align 8
  br label %34

34:                                               ; preds = %33, %28
  %35 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %36 = call i32 @fflush(%struct.__sFILE* noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i64 0, i64* %13, align 8
  br label %39

39:                                               ; preds = %38, %34
  %40 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %41 = call i32 @fsetpos(%struct.__sFILE* noundef %40, i64* noundef %12)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i64 0, i64* %13, align 8
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i64, i64* %13, align 8
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %44, %21
  %47 = load i64, i64* %6, align 8
  ret i64 %47
}

declare i32 @fflush(%struct.__sFILE* noundef) #1

declare i64 @"\01_fwrite"(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @osys_rename(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @access(i8* noundef %11, i32 noundef 0)
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 -1, i32* %4, align 4
  br label %20

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @rename(i8* noundef %17, i8* noundef %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare i32 @access(i8* noundef, i32 noundef) #1

declare i32 @rename(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @osys_copy_attr(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.timespec], align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @"\01_stat"(i8* noundef %9, %struct.stat* noundef %6)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @chown(i8* noundef %14, i32 noundef %16, i32 noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %25 = load i16, i16* %24, align 4
  %26 = call i32 @"\01_chmod"(i8* noundef %23, i16 noundef zeroext %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %8, i64 0, i64 0
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 7
  %32 = bitcast %struct.timespec* %30 to i8*
  %33 = bitcast %struct.timespec* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %8, i64 0, i64 1
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 8
  %36 = bitcast %struct.timespec* %34 to i8*
  %37 = bitcast %struct.timespec* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %8, i64 0, i64 0
  %40 = call i32 @utimensat(i32 noundef -2, i8* noundef %38, %struct.timespec* noundef %39, i32 noundef 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 -1, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare i32 @"\01_stat"(i8* noundef, %struct.stat* noundef) #1

declare i32 @chown(i8* noundef, i32 noundef, i32 noundef) #1

declare i32 @"\01_chmod"(i8* noundef, i16 noundef zeroext) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @utimensat(i32 noundef, i8* noundef, %struct.timespec* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @osys_create_dir(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* noundef %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @"\01_stat"(i8* noundef %12, %struct.stat* noundef %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %17 = load i16, i16* %16, align 4
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 16384
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 -1
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %11
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @mkdir(i8* noundef %24, i16 noundef zeroext 511)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %15, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare i32 @mkdir(i8* noundef, i16 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @osys_test(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @strchr(i8* noundef %9, i32 noundef 102)
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strchr(i8* noundef %14, i32 noundef 114)
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strchr(i8* noundef %21, i32 noundef 119)
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, 2
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strchr(i8* noundef %28, i32 noundef 120)
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* @strchr(i8* noundef %41, i32 noundef 101)
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %69

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %37, %34
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @"\01_stat"(i8* noundef %47, %struct.stat* noundef %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %69

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %56 = load i16, i16* %55, align 4
  %57 = zext i16 %56 to i32
  %58 = and i32 %57, 32768
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %69

61:                                               ; preds = %54, %51
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %69

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @access(i8* noundef %66, i32 noundef %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %64, %60, %50, %44
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @osys_test_eq(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @"\01_stat"(i8* noundef %8, %struct.stat* noundef %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @"\01_stat"(i8* noundef %12, %struct.stat* noundef %7)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %35

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 -1
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %22, %16
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %28, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @osys_unlink(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @remove(i8* noundef %3)
  ret i32 %4
}

declare i32 @remove(i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @osys_terminate() #0 {
  %1 = load i8*, i8** @osys_terminate.msg, align 8
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %3 = call i32 @"\01_fputs"(i8* noundef %1, %struct.__sFILE* noundef %2)
  call void @exit(i32 noundef 70) #7
  unreachable
}

declare i32 @"\01_fputs"(i8* noundef, %struct.__sFILE* noundef) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #5

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
