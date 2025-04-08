; ModuleID = 'osys.c'
source_filename = "osys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._G_fpos_t = type { i64, %struct.__mbstate_t }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@osys_path_mkbak.bak_extname = internal constant [5 x i8] c".bak\00", align 1
@osys_terminate.msg = internal global i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"The execution of this program has been terminated abnormally.\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @osys_path_chdir(i8* noundef %0, i64 noundef %1, i8* noundef %2, i8* noundef %3) #0 {
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
  %16 = call i8* @strpbrk(i8* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6
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
  %25 = call i64 @strlen(i8* noundef %24) #6
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @strlen(i8* noundef %27) #6
  %29 = add i64 %26, %28
  %30 = add i64 %29, 2
  %31 = load i64, i64* %7, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i8* null, i8** %5, align 8
  br label %62

34:                                               ; preds = %23
  %35 = load i64, i64* %12, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i8* @strcpy(i8* noundef %38, i8* noundef %39) #7
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %12, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = call i8* @strchr(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 noundef %46) #6
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %12, align 8
  %53 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 47, i8* %53, align 1
  br label %54

54:                                               ; preds = %49, %37
  br label %55

55:                                               ; preds = %54, %34
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8*, i8** %10, align 8
  %60 = call i8* @strcpy(i8* noundef %58, i8* noundef %59) #7
  %61 = load i8*, i8** %6, align 8
  store i8* %61, i8** %5, align 8
  br label %62

62:                                               ; preds = %55, %33
  %63 = load i8*, i8** %5, align 8
  ret i8* %63
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strpbrk(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @osys_path_chext(i8* noundef %0, i64 noundef %1, i8* noundef %2, i8* noundef %3) #0 {
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
  br label %19, !llvm.loop !4

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @osys_path_mkbak(i8* noundef %0, i64 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @strlen(i8* noundef %8) #6
  %10 = add i64 %9, 5
  %11 = load i64, i64* %6, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %21

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @strcpy(i8* noundef %15, i8* noundef %16) #7
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strcat(i8* noundef %18, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @osys_path_mkbak.bak_extname, i64 0, i64 0)) #7
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %14, %13
  %22 = load i8*, i8** %4, align 8
  ret i8* %22
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @osys_ftello(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = call i64 @ftell(%struct._IO_FILE* noundef %3)
  ret i64 %4
}

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osys_fseeko(%struct._IO_FILE* noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @fseek(%struct._IO_FILE* noundef %7, i64 noundef %8, i32 noundef %9)
  ret i32 %10
}

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osys_fgetsize(%struct._IO_FILE* noundef %0, i64* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %8 = call i32 @osys_fseeko(%struct._IO_FILE* noundef %7, i64 noundef 0, i32 noundef 2)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %13 = call i64 @osys_ftello(%struct._IO_FILE* noundef %12)
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @osys_fread_at(%struct._IO_FILE* noundef %0, i64 noundef %1, i32 noundef %2, i8* noundef %3, i64 noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct._G_fpos_t, align 8
  %13 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %15 = call i32 @fgetpos(%struct._IO_FILE* noundef %14, %struct._G_fpos_t* noundef %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %37

18:                                               ; preds = %5
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @osys_fseeko(%struct._IO_FILE* noundef %19, i64 noundef %20, i32 noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %28 = call i64 @fread(i8* noundef %25, i64 noundef 1, i64 noundef %26, %struct._IO_FILE* noundef %27)
  store i64 %28, i64* %13, align 8
  br label %30

29:                                               ; preds = %18
  store i64 0, i64* %13, align 8
  br label %30

30:                                               ; preds = %29, %24
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %32 = call i32 @fsetpos(%struct._IO_FILE* noundef %31, %struct._G_fpos_t* noundef %12)
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

declare dso_local i32 @fgetpos(%struct._IO_FILE* noundef, %struct._G_fpos_t* noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

declare dso_local i32 @fsetpos(%struct._IO_FILE* noundef, %struct._G_fpos_t* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @osys_fwrite_at(%struct._IO_FILE* noundef %0, i64 noundef %1, i32 noundef %2, i8* noundef %3, i64 noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct._G_fpos_t, align 8
  %13 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %15 = call i32 @fgetpos(%struct._IO_FILE* noundef %14, %struct._G_fpos_t* noundef %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %19 = call i32 @fflush(%struct._IO_FILE* noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %5
  store i64 0, i64* %6, align 8
  br label %46

22:                                               ; preds = %17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @osys_fseeko(%struct._IO_FILE* noundef %23, i64 noundef %24, i32 noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %32 = call i64 @fwrite(i8* noundef %29, i64 noundef 1, i64 noundef %30, %struct._IO_FILE* noundef %31)
  store i64 %32, i64* %13, align 8
  br label %34

33:                                               ; preds = %22
  store i64 0, i64* %13, align 8
  br label %34

34:                                               ; preds = %33, %28
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %36 = call i32 @fflush(%struct._IO_FILE* noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i64 0, i64* %13, align 8
  br label %39

39:                                               ; preds = %38, %34
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %41 = call i32 @fsetpos(%struct._IO_FILE* noundef %40, %struct._G_fpos_t* noundef %12)
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

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osys_rename(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
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
  %12 = call i32 @access(i8* noundef %11, i32 noundef 0) #7
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
  %19 = call i32 @rename(i8* noundef %17, i8* noundef %18) #7
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

; Function Attrs: nounwind
declare dso_local i32 @access(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @rename(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osys_copy_attr(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.timespec], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @stat(i8* noundef %9, %struct.stat* noundef %6) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @chown(i8* noundef %14, i32 noundef %16, i32 noundef %18) #7
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @chmod(i8* noundef %23, i32 noundef %25) #7
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %8, i64 0, i64 0
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 11
  %32 = bitcast %struct.timespec* %30 to i8*
  %33 = bitcast %struct.timespec* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %8, i64 0, i64 1
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 12
  %36 = bitcast %struct.timespec* %34 to i8*
  %37 = bitcast %struct.timespec* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %8, i64 0, i64 0
  %40 = call i32 @utimensat(i32 noundef -100, i8* noundef %38, %struct.timespec* noundef %39, i32 noundef 0) #7
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

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @chown(i8* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @chmod(i8* noundef, i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @utimensat(i32 noundef, i8* noundef, %struct.timespec* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osys_create_dir(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* noundef %6) #6
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @stat(i8* noundef %12, %struct.stat* noundef %5) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 16384
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 -1
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %11
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @mkdir(i8* noundef %23, i32 noundef 511) #7
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %15, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: nounwind
declare dso_local i32 @mkdir(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osys_test(i8* noundef %0, i8* noundef %1) #0 {
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
  %10 = call i8* @strchr(i8* noundef %9, i32 noundef 102) #6
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strchr(i8* noundef %14, i32 noundef 114) #6
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strchr(i8* noundef %21, i32 noundef 119) #6
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, 2
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strchr(i8* noundef %28, i32 noundef 120) #6
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
  %42 = call i8* @strchr(i8* noundef %41, i32 noundef 101) #6
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %68

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %37, %34
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @stat(i8* noundef %47, %struct.stat* noundef %8) #7
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %68

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 32768
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %68

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @access(i8* noundef %65, i32 noundef %66) #7
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %63, %59, %50, %44
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osys_test_eq(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @stat(i8* noundef %8, %struct.stat* noundef %6) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @stat(i8* noundef %12, %struct.stat* noundef %7) #7
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %35

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osys_unlink(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @remove(i8* noundef %3) #7
  ret i32 %4
}

; Function Attrs: nounwind
declare dso_local i32 @remove(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osys_terminate() #0 {
  %1 = load i8*, i8** @osys_terminate.msg, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = call i32 @fputs(i8* noundef %1, %struct._IO_FILE* noundef %2)
  call void @exit(i32 noundef 70) #8
  unreachable
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
