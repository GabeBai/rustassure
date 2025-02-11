; ModuleID = 'test/example.c'
source_filename = "test/example.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@hello = global [14 x i8] c"hello, hello!\00", align 1
@dictionary = constant [6 x i8] c"hello\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"%s error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"uncompress\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"bad uncompress\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"uncompress(): %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"NO_GZCOMPRESS -- gz* functions cannot compress\0A\00", align 1
@zalloc = internal global i8* (i8*, i32, i32)* null, align 8
@zfree = internal global void (i8*, i8*)* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"1.2.8-optipng\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"deflateInit\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"deflateEnd\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"inflateInit\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"inflate\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"inflateEnd\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"bad inflate\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"inflate(): %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"deflate not greedy\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"deflate should report Z_STREAM_END\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"large inflate\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"bad large inflate: %ld\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"large_inflate(): OK\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"inflateSync\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"inflate should report DATA_ERROR\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"after inflateSync(): hel%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"deflateSetDictionary\00", align 1
@dictId = global i64 0, align 8
@.str.25 = private unnamed_addr constant [22 x i8] c"unexpected dictionary\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"inflate with dict\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"bad inflate with dict\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"inflate with dictionary: %s\0A\00", align 1
@main.myVersion = internal global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), align 8
@.str.29 = private unnamed_addr constant [27 x i8] c"incompatible zlib version\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"warning: different zlib version\0A\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"zlib version %s = 0x%04x, compile flags = 0x%lx\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"foo.gz\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @test_compress(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i64 @strlen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i64 0, i64 0))
  %12 = add i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @compress(i8* noundef %13, i64* noundef %6, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i64 0, i64 0), i64 noundef %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %19, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef %20)
  call void @exit(i32 noundef 1) #6
  unreachable

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @llvm.objectsize.i64.p0i8(i8* %24, i1 false, i1 true, i1 false)
  %26 = call i8* @__strcpy_chk(i8* noundef %23, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 noundef %25) #7
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @uncompress(i8* noundef %27, i64* noundef %8, i8* noundef %28, i64 noundef %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %34, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 noundef %35)
  call void @exit(i32 noundef 1) #6
  unreachable

37:                                               ; preds = %22
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strcmp(i8* noundef %38, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %43 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %42, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* noundef %45)
  br label %47

47:                                               ; preds = %44
  ret void
}

declare i64 @strlen(i8* noundef) #1

declare i32 @compress(i8* noundef, i64* noundef, i8* noundef, i64 noundef) #1

declare i32 @fprintf(%struct.__sFILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

declare i32 @uncompress(i8* noundef, i64* noundef, i8* noundef, i64 noundef) #1

declare i32 @strcmp(i8* noundef, i8* noundef) #1

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @test_gzio(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %7, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @test_deflate(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.z_stream_s, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i64 @strlen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i64 0, i64 0))
  %9 = add i64 %8, 1
  store i64 %9, i64* %7, align 8
  %10 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 8
  store i8* (i8*, i32, i32)* %10, i8* (i8*, i32, i32)** %11, align 8
  %12 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 9
  store void (i8*, i8*)* %12, void (i8*, i8*)** %13, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 10
  store i8* null, i8** %14, align 8
  %15 = call i32 @deflateInit_(%struct.z_stream_s* noundef %5, i32 noundef -1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 112)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %19, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 noundef %20)
  call void @exit(i32 noundef 1) #6
  unreachable

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i64 0, i64 0), i8** %23, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  br label %26

26:                                               ; preds = %48, %22
  %27 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ult i64 %33, %34
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %49

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 4
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 1
  store i32 1, i32* %40, align 8
  %41 = call i32 @deflate(%struct.z_stream_s* noundef %5, i32 noundef 0)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %45, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %46)
  call void @exit(i32 noundef 1) #6
  unreachable

48:                                               ; preds = %38
  br label %26, !llvm.loop !10

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %63, %49
  %51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 4
  store i32 1, i32* %51, align 8
  %52 = call i32 @deflate(%struct.z_stream_s* noundef %5, i32 noundef 4)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %64

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %60, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %61)
  call void @exit(i32 noundef 1) #6
  unreachable

63:                                               ; preds = %56
  br label %50

64:                                               ; preds = %55
  %65 = call i32 @deflateEnd(%struct.z_stream_s* noundef %5)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %69, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 noundef %70)
  call void @exit(i32 noundef 1) #6
  unreachable

72:                                               ; preds = %64
  ret void
}

declare i32 @deflateInit_(%struct.z_stream_s* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare i32 @deflate(%struct.z_stream_s* noundef, i32 noundef) #1

declare i32 @deflateEnd(%struct.z_stream_s* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @test_inflate(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_stream_s, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @llvm.objectsize.i64.p0i8(i8* %12, i1 false, i1 true, i1 false)
  %14 = call i8* @__strcpy_chk(i8* noundef %11, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 noundef %13) #7
  %15 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 8
  store i8* (i8*, i32, i32)* %15, i8* (i8*, i32, i32)** %16, align 8
  %17 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 9
  store void (i8*, i8*)* %17, void (i8*, i8*)** %18, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 10
  store i8* null, i8** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = call i32 @inflateInit_(%struct.z_stream_s* noundef %10, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 112)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %29, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 noundef %30)
  call void @exit(i32 noundef 1) #6
  unreachable

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %59, %32
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ult i64 %40, %41
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %60

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4
  store i32 1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = call i32 @inflate(%struct.z_stream_s* noundef %10, i32 noundef 0)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %60

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %56, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef %57)
  call void @exit(i32 noundef 1) #6
  unreachable

59:                                               ; preds = %52
  br label %33, !llvm.loop !12

60:                                               ; preds = %51, %43
  %61 = call i32 @inflateEnd(%struct.z_stream_s* noundef %10)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %65, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 noundef %66)
  call void @exit(i32 noundef 1) #6
  unreachable

68:                                               ; preds = %60
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @strcmp(i8* noundef %69, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %74 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %73, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

75:                                               ; preds = %68
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* noundef %76)
  br label %78

78:                                               ; preds = %75
  ret void
}

declare i32 @inflateInit_(%struct.z_stream_s* noundef, i8* noundef, i32 noundef) #1

declare i32 @inflate(%struct.z_stream_s* noundef, i32 noundef) #1

declare i32 @inflateEnd(%struct.z_stream_s* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @test_large_deflate(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.z_stream_s, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8
  %12 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 8
  store i8* (i8*, i32, i32)* %11, i8* (i8*, i32, i32)** %12, align 8
  %13 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 9
  store void (i8*, i8*)* %13, void (i8*, i8*)** %14, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 10
  store i8* null, i8** %15, align 8
  %16 = call i32 @deflateInit_(%struct.z_stream_s* noundef %9, i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 112)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %20, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 noundef %21)
  call void @exit(i32 noundef 1) #6
  unreachable

23:                                               ; preds = %4
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = call i32 @deflate(%struct.z_stream_s* noundef %9, i32 noundef 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %23
  %38 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %38, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %39)
  call void @exit(i32 noundef 1) #6
  unreachable

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %47 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %46, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

48:                                               ; preds = %41
  %49 = call i32 @deflateParams(%struct.z_stream_s* noundef %9, i32 noundef 0, i32 noundef 0)
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = trunc i64 %52 to i32
  %54 = udiv i32 %53, 2
  %55 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = call i32 @deflate(%struct.z_stream_s* noundef %9, i32 noundef 0)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %60, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %61)
  call void @exit(i32 noundef 1) #6
  unreachable

63:                                               ; preds = %48
  %64 = call i32 @deflateParams(%struct.z_stream_s* noundef %9, i32 noundef 9, i32 noundef 1)
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 0
  store i8* %65, i8** %66, align 8
  %67 = load i64, i64* %8, align 8
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 1
  store i32 %68, i32* %69, align 8
  %70 = call i32 @deflate(%struct.z_stream_s* noundef %9, i32 noundef 0)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %74, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %75)
  call void @exit(i32 noundef 1) #6
  unreachable

77:                                               ; preds = %63
  %78 = call i32 @deflate(%struct.z_stream_s* noundef %9, i32 noundef 4)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %83 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %82, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

84:                                               ; preds = %77
  %85 = call i32 @deflateEnd(%struct.z_stream_s* noundef %9)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %89, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 noundef %90)
  call void @exit(i32 noundef 1) #6
  unreachable

92:                                               ; preds = %84
  ret void
}

declare i32 @deflateParams(%struct.z_stream_s* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @test_large_inflate(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_stream_s, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @llvm.objectsize.i64.p0i8(i8* %12, i1 false, i1 true, i1 false)
  %14 = call i8* @__strcpy_chk(i8* noundef %11, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 noundef %13) #7
  %15 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 8
  store i8* (i8*, i32, i32)* %15, i8* (i8*, i32, i32)** %16, align 8
  %17 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 9
  store void (i8*, i8*)* %17, void (i8*, i8*)** %18, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 10
  store i8* null, i8** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = call i32 @inflateInit_(%struct.z_stream_s* noundef %10, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 112)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %29, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 noundef %30)
  call void @exit(i32 noundef 1) #6
  unreachable

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = call i32 @inflate(%struct.z_stream_s* noundef %10, i32 noundef 0)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %51

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %47, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 noundef %48)
  call void @exit(i32 noundef 1) #6
  unreachable

50:                                               ; preds = %43
  br label %33

51:                                               ; preds = %42
  %52 = call i32 @inflateEnd(%struct.z_stream_s* noundef %10)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %56, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 noundef %57)
  call void @exit(i32 noundef 1) #6
  unreachable

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = mul i64 2, %62
  %64 = load i64, i64* %6, align 8
  %65 = udiv i64 %64, 2
  %66 = add i64 %63, %65
  %67 = icmp ne i64 %61, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %70 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %69, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i64 noundef %71)
  call void @exit(i32 noundef 1) #6
  unreachable

73:                                               ; preds = %59
  %74 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @test_flush(i8* noundef %0, i64* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.z_stream_s, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = call i64 @strlen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i64 0, i64 0))
  %9 = trunc i64 %8 to i32
  %10 = add i32 %9, 1
  store i32 %10, i32* %7, align 4
  %11 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8
  %12 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 8
  store i8* (i8*, i32, i32)* %11, i8* (i8*, i32, i32)** %12, align 8
  %13 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 9
  store void (i8*, i8*)* %13, void (i8*, i8*)** %14, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 10
  store i8* null, i8** %15, align 8
  %16 = call i32 @deflateInit_(%struct.z_stream_s* noundef %5, i32 noundef -1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 112)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %20, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 noundef %21)
  call void @exit(i32 noundef 1) #6
  unreachable

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i64 0, i64 0), i8** %24, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 1
  store i32 3, i32* %27, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 4
  store i32 %30, i32* %31, align 8
  %32 = call i32 @deflate(%struct.z_stream_s* noundef %5, i32 noundef 3)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %36, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %37)
  call void @exit(i32 noundef 1) #6
  unreachable

39:                                               ; preds = %23
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = add i8 %42, 1
  store i8 %43, i8* %41, align 1
  %44 = load i32, i32* %7, align 4
  %45 = sub i32 %44, 3
  %46 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = call i32 @deflate(%struct.z_stream_s* noundef %5, i32 noundef 4)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %58

50:                                               ; preds = %39
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %54, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %55)
  call void @exit(i32 noundef 1) #6
  unreachable

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %39
  %59 = call i32 @deflateEnd(%struct.z_stream_s* noundef %5)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %63, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 noundef %64)
  call void @exit(i32 noundef 1) #6
  unreachable

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %4, align 8
  store i64 %68, i64* %69, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @test_sync(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_stream_s, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @llvm.objectsize.i64.p0i8(i8* %12, i1 false, i1 true, i1 false)
  %14 = call i8* @__strcpy_chk(i8* noundef %11, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 noundef %13) #7
  %15 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 8
  store i8* (i8*, i32, i32)* %15, i8* (i8*, i32, i32)** %16, align 8
  %17 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 9
  store void (i8*, i8*)* %17, void (i8*, i8*)** %18, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 10
  store i8* null, i8** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  store i32 2, i32* %22, align 8
  %23 = call i32 @inflateInit_(%struct.z_stream_s* noundef %10, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 112)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %27, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 noundef %28)
  call void @exit(i32 noundef 1) #6
  unreachable

30:                                               ; preds = %4
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 3
  store i8* %31, i8** %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = call i32 @inflate(%struct.z_stream_s* noundef %10, i32 noundef 0)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %40, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef %41)
  call void @exit(i32 noundef 1) #6
  unreachable

43:                                               ; preds = %30
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  %46 = sub i32 %45, 2
  %47 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = call i32 @inflateSync(%struct.z_stream_s* noundef %10)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %52, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 noundef %53)
  call void @exit(i32 noundef 1) #6
  unreachable

55:                                               ; preds = %43
  %56 = call i32 @inflate(%struct.z_stream_s* noundef %10, i32 noundef 4)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, -3
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %61 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %60, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

62:                                               ; preds = %55
  %63 = call i32 @inflateEnd(%struct.z_stream_s* noundef %10)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %67, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 noundef %68)
  call void @exit(i32 noundef 1) #6
  unreachable

70:                                               ; preds = %62
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8* noundef %71)
  ret void
}

declare i32 @inflateSync(%struct.z_stream_s* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @test_dict_deflate(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.z_stream_s, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8
  %8 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 8
  store i8* (i8*, i32, i32)* %7, i8* (i8*, i32, i32)** %8, align 8
  %9 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8
  %10 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 9
  store void (i8*, i8*)* %9, void (i8*, i8*)** %10, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 10
  store i8* null, i8** %11, align 8
  %12 = call i32 @deflateInit_(%struct.z_stream_s* noundef %5, i32 noundef 9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 112)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 noundef %17)
  call void @exit(i32 noundef 1) #6
  unreachable

19:                                               ; preds = %2
  %20 = call i32 @deflateSetDictionary(%struct.z_stream_s* noundef %5, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @dictionary, i64 0, i64 0), i32 noundef 6)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %24, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 noundef %25)
  call void @exit(i32 noundef 1) #6
  unreachable

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 12
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* @dictId, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 3
  store i8* %30, i8** %31, align 8
  %32 = load i64, i64* %4, align 8
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i64 0, i64 0), i8** %35, align 8
  %36 = call i64 @strlen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i64 0, i64 0))
  %37 = trunc i64 %36 to i32
  %38 = add i32 %37, 1
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = call i32 @deflate(%struct.z_stream_s* noundef %5, i32 noundef 4)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %45 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %44, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

46:                                               ; preds = %27
  %47 = call i32 @deflateEnd(%struct.z_stream_s* noundef %5)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %51, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 noundef %52)
  call void @exit(i32 noundef 1) #6
  unreachable

54:                                               ; preds = %46
  ret void
}

declare i32 @deflateSetDictionary(%struct.z_stream_s* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @test_dict_inflate(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_stream_s, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @llvm.objectsize.i64.p0i8(i8* %12, i1 false, i1 true, i1 false)
  %14 = call i8* @__strcpy_chk(i8* noundef %11, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 noundef %13) #7
  %15 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** @zalloc, align 8
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 8
  store i8* (i8*, i32, i32)* %15, i8* (i8*, i32, i32)** %16, align 8
  %17 = load void (i8*, i8*)*, void (i8*, i8*)** @zfree, align 8
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 9
  store void (i8*, i8*)* %17, void (i8*, i8*)** %18, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 10
  store i8* null, i8** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = call i32 @inflateInit_(%struct.z_stream_s* noundef %10, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 112)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %29, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 noundef %30)
  call void @exit(i32 noundef 1) #6
  unreachable

32:                                               ; preds = %4
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 3
  store i8* %33, i8** %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  br label %38

38:                                               ; preds = %63, %32
  %39 = call i32 @inflate(%struct.z_stream_s* noundef %10, i32 noundef 0)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %64

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 12
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @dictId, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %53 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %52, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

54:                                               ; preds = %46
  %55 = call i32 @inflateSetDictionary(%struct.z_stream_s* noundef %10, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @dictionary, i64 0, i64 0), i32 noundef 6)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %43
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %60, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32 noundef %61)
  call void @exit(i32 noundef 1) #6
  unreachable

63:                                               ; preds = %56
  br label %38

64:                                               ; preds = %42
  %65 = call i32 @inflateEnd(%struct.z_stream_s* noundef %10)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %69, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 noundef %70)
  call void @exit(i32 noundef 1) #6
  unreachable

72:                                               ; preds = %64
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @strcmp(i8* noundef %73, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @hello, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %78 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %77, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

79:                                               ; preds = %72
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* noundef %80)
  br label %82

82:                                               ; preds = %79
  ret void
}

declare i32 @inflateSetDictionary(%struct.z_stream_s* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 40000, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  store i64 %10, i64* %9, align 8
  %11 = call i8* @zlibVersion()
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8*, i8** @main.myVersion, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %14, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %22 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %21, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

23:                                               ; preds = %2
  %24 = call i8* @zlibVersion()
  %25 = call i32 @strcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %29 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %28, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30
  %32 = call i64 @zlibCompileFlags()
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 4751, i64 noundef %32)
  %34 = load i64, i64* %8, align 8
  %35 = trunc i64 %34 to i32
  %36 = zext i32 %35 to i64
  %37 = call i8* @calloc(i64 noundef %36, i64 noundef 1) #8
  store i8* %37, i8** %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = trunc i64 %38 to i32
  %40 = zext i32 %39 to i64
  %41 = call i8* @calloc(i64 noundef %40, i64 noundef 1) #8
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = load i8*, i8** %7, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %31
  %48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %9, align 8
  call void @test_compress(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53)
  %54 = load i32, i32* %4, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  br label %61

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), %60 ]
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* %9, align 8
  call void @test_gzio(i8* noundef %62, i8* noundef %63, i64 noundef %64)
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %8, align 8
  call void @test_deflate(i8* noundef %65, i64 noundef %66)
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %9, align 8
  call void @test_inflate(i8* noundef %67, i64 noundef %68, i8* noundef %69, i64 noundef %70)
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* %9, align 8
  call void @test_large_deflate(i8* noundef %71, i64 noundef %72, i8* noundef %73, i64 noundef %74)
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %9, align 8
  call void @test_large_inflate(i8* noundef %75, i64 noundef %76, i8* noundef %77, i64 noundef %78)
  %79 = load i8*, i8** %6, align 8
  call void @test_flush(i8* noundef %79, i64* noundef %8)
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %9, align 8
  call void @test_sync(i8* noundef %80, i64 noundef %81, i8* noundef %82, i64 noundef %83)
  %84 = load i64, i64* %9, align 8
  store i64 %84, i64* %8, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %8, align 8
  call void @test_dict_deflate(i8* noundef %85, i64 noundef %86)
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i64, i64* %9, align 8
  call void @test_dict_inflate(i8* noundef %87, i64 noundef %88, i8* noundef %89, i64 noundef %90)
  %91 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %91)
  %92 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %92)
  ret i32 0
}

declare i8* @zlibVersion() #1

declare i64 @zlibCompileFlags() #1

; Function Attrs: allocsize(0,1)
declare i8* @calloc(i64 noundef, i64 noundef) #5

declare void @free(i8* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { noreturn }
attributes #7 = { nounwind }
attributes #8 = { allocsize(0,1) }

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
