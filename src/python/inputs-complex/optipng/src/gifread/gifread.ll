; ModuleID = 'gifread.c'
source_filename = "gifread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.GIFScreen = type { i32, i32, i32, i32, i32, i32, i32, i32, [768 x i8] }
%struct.GIFImage = type { %struct.GIFScreen*, i32, i32, i32, i32, i32, i32, i32, i32, [768 x i8], i8** }
%struct.GIFExtension = type { %struct.GIFScreen*, i8*, i32, i8 }
%struct.GIFGraphicCtlExt = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@GIFError = dso_local global void (i8*)* @DefaultError, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Not a GIF file\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"87a\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"89a\00", align 1
@GIFWarning = dso_local global void (i8*)* @DefaultWarning, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"Invalid GIF version number, not \2287a\22 or \2289a\22\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Invalid image dimensions\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Bogus data in GIF\00", align 1
@DefaultColorTable = internal global [24 x i8] c"\00\00\00\FF\FF\FF\FF\00\00\00\FF\FF\00\FF\00\FF\00\FF\00\00\FF\FF\FF\00", align 16
@.str.7 = private unnamed_addr constant [32 x i8] c"Not a graphic control extension\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Broken graphic control extension\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"GIF/LZW error: invalid LZW code size\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Error reading GIF image\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Pixel value out of range\00", align 1
@LZWReadByte.fresh = internal global i32 0, align 4
@LZWReadByte.code_size = internal global i32 0, align 4
@LZWReadByte.set_code_size = internal global i32 0, align 4
@LZWReadByte.max_code = internal global i32 0, align 4
@LZWReadByte.max_code_size = internal global i32 0, align 4
@LZWReadByte.firstcode = internal global i32 0, align 4
@LZWReadByte.oldcode = internal global i32 0, align 4
@LZWReadByte.clear_code = internal global i32 0, align 4
@LZWReadByte.end_code = internal global i32 0, align 4
@LZWReadByte.table = internal global [2 x [4096 x i32]] zeroinitializer, align 16
@LZWReadByte.stack = internal global [8192 x i32] zeroinitializer, align 16
@LZWReadByte.sp = internal global i32* null, align 8
@DataBlockSize = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"GIF/LZW error: circular table entry\00", align 1
@LZWGetCode.buffer = internal global [280 x i8] zeroinitializer, align 16
@LZWGetCode.curbit = internal global i32 0, align 4
@LZWGetCode.lastbit = internal global i32 0, align 4
@LZWGetCode.done = internal global i32 0, align 4
@LZWGetCode.last_byte = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [42 x i8] c"GIF/LZW error: ran off the end of my bits\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Error reading file or unexpected end of file\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GIFReadScreen(%struct.GIFScreen* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.GIFScreen*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [7 x i8], align 1
  store %struct.GIFScreen* %0, %struct.GIFScreen** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %6 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %8 = call i64 @fread(i8* noundef %6, i64 noundef 6, i64 noundef 1, %struct._IO_FILE* noundef %7)
  %9 = icmp ule i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @ReadError()
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %13 = call i32 @memcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 noundef 3) #5
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load void (i8*)*, void (i8*)** @GIFError, align 8
  call void %16(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = call i32 @memcmp(i8* noundef %19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 noundef 3) #5
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  %25 = call i32 @memcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3) #5
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load void (i8*)*, void (i8*)** @GIFWarning, align 8
  call void %28(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22, %17
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %32 = call i64 @fread(i8* noundef %30, i64 noundef 7, i64 noundef 1, %struct._IO_FILE* noundef %31)
  %33 = icmp ule i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void @ReadError()
  br label %35

35:                                               ; preds = %34, %29
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 8
  %47 = add nsw i32 %40, %46
  %48 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %49 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 8
  %61 = add nsw i32 %54, %60
  %62 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %63 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 4
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %72 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 4
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 112
  %77 = ashr i32 %76, 3
  %78 = add nsw i32 %77, 1
  %79 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %80 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 4
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 8
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %89 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 4
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 7
  %94 = shl i32 2, %93
  %95 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %96 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 5
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %101 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 6
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %106 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  %107 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %108 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %35
  %112 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %113 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %112, i32 0, i32 8
  %114 = getelementptr inbounds [768 x i8], [768 x i8]* %113, i64 0, i64 0
  %115 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %116 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = mul i32 3, %117
  %119 = zext i32 %118 to i64
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %121 = call i64 @fread(i8* noundef %114, i64 noundef %119, i64 noundef 1, %struct._IO_FILE* noundef %120)
  %122 = icmp ule i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  call void @ReadError()
  br label %124

124:                                              ; preds = %123, %111
  br label %125

125:                                              ; preds = %124, %35
  %126 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %127 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %132 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130, %125
  %136 = load void (i8*)*, void (i8*)** @GIFError, align 8
  call void %136(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %130
  %138 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %139 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = icmp ugt i32 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %137
  %143 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %144 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %149 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %152 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = icmp uge i32 %150, %153
  br i1 %154, label %160, label %155

155:                                              ; preds = %147, %142
  %156 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %157 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155, %147
  %161 = load %struct.GIFScreen*, %struct.GIFScreen** %3, align 8
  %162 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %161, i32 0, i32 6
  store i32 0, i32* %162, align 4
  br label %163

163:                                              ; preds = %160, %155
  br label %164

164:                                              ; preds = %163, %137
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReadError() #0 {
  %1 = load void (i8*)*, void (i8*)** @GIFError, align 8
  call void %1(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GIFInitImage(%struct.GIFImage* noundef %0, %struct.GIFScreen* noundef %1, i8** noundef %2) #0 {
  %4 = alloca %struct.GIFImage*, align 8
  %5 = alloca %struct.GIFScreen*, align 8
  %6 = alloca i8**, align 8
  store %struct.GIFImage* %0, %struct.GIFImage** %4, align 8
  store %struct.GIFScreen* %1, %struct.GIFScreen** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load %struct.GIFScreen*, %struct.GIFScreen** %5, align 8
  %8 = load %struct.GIFImage*, %struct.GIFImage** %4, align 8
  %9 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %8, i32 0, i32 0
  store %struct.GIFScreen* %7, %struct.GIFScreen** %9, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = load %struct.GIFImage*, %struct.GIFImage** %4, align 8
  %12 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %11, i32 0, i32 10
  store i8** %10, i8*** %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GIFDestroyImage(%struct.GIFImage* noundef %0) #0 {
  %2 = alloca %struct.GIFImage*, align 8
  store %struct.GIFImage* %0, %struct.GIFImage** %2, align 8
  %3 = load %struct.GIFImage*, %struct.GIFImage** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GIFReadNextBlock(%struct.GIFImage* noundef %0, %struct.GIFExtension* noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.GIFImage*, align 8
  %6 = alloca %struct.GIFExtension*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.GIFImage* %0, %struct.GIFImage** %5, align 8
  store %struct.GIFExtension* %1, %struct.GIFExtension** %6, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %33, %3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %12 = call i32 @getc(%struct._IO_FILE* noundef %11)
  store i32 %12, i32* %8, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  call void @ReadError()
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %27 [
    i32 44, label %17
    i32 33, label %21
    i32 59, label %25
  ]

17:                                               ; preds = %15
  %18 = load %struct.GIFImage*, %struct.GIFImage** %5, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  call void @GIFReadNextImage(%struct.GIFImage* noundef %18, %struct._IO_FILE* noundef %19)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %15
  %22 = load %struct.GIFExtension*, %struct.GIFExtension** %6, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  call void @GIFReadNextExtension(%struct.GIFExtension* noundef %22, %struct._IO_FILE* noundef %23)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %34

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %15
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load void (i8*)*, void (i8*)** @GIFWarning, align 8
  call void %31(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %32
  br label %10

34:                                               ; preds = %25, %21, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GIFReadNextImage(%struct.GIFImage* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.GIFImage*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.GIFScreen*, align 8
  %6 = alloca [9 x i8], align 1
  store %struct.GIFImage* %0, %struct.GIFImage** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %7 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %9 = call i64 @fread(i8* noundef %7, i64 noundef 9, i64 noundef 1, %struct._IO_FILE* noundef %8)
  %10 = icmp ule i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @ReadError()
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %14 = icmp eq %struct.GIFImage* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @GIFSkipDataBlocks(%struct._IO_FILE* noundef %16)
  br label %176

17:                                               ; preds = %12
  %18 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 8
  %29 = add nsw i32 %22, %28
  %30 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %31 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 8
  %43 = add nsw i32 %36, %42
  %44 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %45 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 8
  %57 = add nsw i32 %50, %56
  %58 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %59 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %61 = getelementptr inbounds i8, i8* %60, i64 6
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %66 = getelementptr inbounds i8, i8* %65, i64 6
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 8
  %71 = add nsw i32 %64, %70
  %72 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %73 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 128
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %82 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 64
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %91 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 8
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 32
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  %99 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %100 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 8
  %101 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %102 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %17
  %106 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 8
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 7
  %110 = shl i32 2, %109
  br label %112

111:                                              ; preds = %17
  br label %112

112:                                              ; preds = %111, %105
  %113 = phi i32 [ %110, %105 ], [ 0, %111 ]
  %114 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %115 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 4
  %116 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %117 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %112
  %121 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %122 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %121, i32 0, i32 9
  %123 = getelementptr inbounds [768 x i8], [768 x i8]* %122, i64 0, i64 0
  %124 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %125 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = mul i32 3, %126
  %128 = zext i32 %127 to i64
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %130 = call i64 @fread(i8* noundef %123, i64 noundef %128, i64 noundef 1, %struct._IO_FILE* noundef %129)
  %131 = icmp ule i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  call void @ReadError()
  br label %133

133:                                              ; preds = %132, %120
  br label %134

134:                                              ; preds = %133, %112
  %135 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %136 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %135, i32 0, i32 0
  %137 = load %struct.GIFScreen*, %struct.GIFScreen** %136, align 8
  store %struct.GIFScreen* %137, %struct.GIFScreen** %5, align 8
  %138 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %139 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %171, label %142

142:                                              ; preds = %134
  %143 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %144 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %171, label %147

147:                                              ; preds = %142
  %148 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %149 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %152 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = add i32 %150, %153
  %155 = load %struct.GIFScreen*, %struct.GIFScreen** %5, align 8
  %156 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ugt i32 %154, %157
  br i1 %158, label %171, label %159

159:                                              ; preds = %147
  %160 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %161 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %164 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %162, %165
  %167 = load %struct.GIFScreen*, %struct.GIFScreen** %5, align 8
  %168 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ugt i32 %166, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %159, %147, %142, %134
  %172 = load void (i8*)*, void (i8*)** @GIFError, align 8
  call void %172(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %159
  %174 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @GIFReadImageData(%struct.GIFImage* noundef %174, %struct._IO_FILE* noundef %175)
  br label %176

176:                                              ; preds = %173, %15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GIFReadNextExtension(%struct.GIFExtension* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.GIFExtension*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.GIFExtension* %0, %struct.GIFExtension** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %12 = call i32 @getc(%struct._IO_FILE* noundef %11)
  store i32 %12, i32* %10, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void @ReadError()
  br label %15

15:                                               ; preds = %14, %2
  %16 = load %struct.GIFExtension*, %struct.GIFExtension** %3, align 8
  %17 = icmp eq %struct.GIFExtension* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @GIFSkipDataBlocks(%struct._IO_FILE* noundef %19)
  br label %73

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  %22 = trunc i32 %21 to i8
  %23 = load %struct.GIFExtension*, %struct.GIFExtension** %3, align 8
  %24 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %23, i32 0, i32 3
  store i8 %22, i8* %24, align 4
  store i32 0, i32* %7, align 4
  %25 = load %struct.GIFExtension*, %struct.GIFExtension** %3, align 8
  %26 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %66, %20
  %29 = load i32, i32* %8, align 4
  %30 = icmp ult i32 %29, 255
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load %struct.GIFExtension*, %struct.GIFExtension** %3, align 8
  %33 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add i32 %34, 1024
  store i32 %35, i32* %6, align 4
  %36 = load %struct.GIFExtension*, %struct.GIFExtension** %3, align 8
  %37 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @realloc(i8* noundef %38, i64 noundef %40) #6
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  call void @MemoryError()
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.GIFExtension*, %struct.GIFExtension** %3, align 8
  %48 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.GIFExtension*, %struct.GIFExtension** %3, align 8
  %51 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1024
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %45, %28
  %55 = load %struct.GIFExtension*, %struct.GIFExtension** %3, align 8
  %56 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %62 = call i32 @GIFReadDataBlock(i8* noundef %60, %struct._IO_FILE* noundef %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %73

66:                                               ; preds = %54
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %28

73:                                               ; preds = %18, %65
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GIFGetColorTable(i8** noundef %0, i32* noundef %1, %struct.GIFImage* noundef %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.GIFImage*, align 8
  %7 = alloca %struct.GIFScreen*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.GIFImage* %2, %struct.GIFImage** %6, align 8
  %8 = load %struct.GIFImage*, %struct.GIFImage** %6, align 8
  %9 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.GIFImage*, %struct.GIFImage** %6, align 8
  %14 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %13, i32 0, i32 9
  %15 = getelementptr inbounds [768 x i8], [768 x i8]* %14, i64 0, i64 0
  %16 = load i8**, i8*** %4, align 8
  store i8* %15, i8** %16, align 8
  %17 = load %struct.GIFImage*, %struct.GIFImage** %6, align 8
  %18 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.GIFImage*, %struct.GIFImage** %6, align 8
  %23 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %22, i32 0, i32 0
  %24 = load %struct.GIFScreen*, %struct.GIFScreen** %23, align 8
  store %struct.GIFScreen* %24, %struct.GIFScreen** %7, align 8
  %25 = load %struct.GIFScreen*, %struct.GIFScreen** %7, align 8
  %26 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.GIFScreen*, %struct.GIFScreen** %7, align 8
  %31 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %30, i32 0, i32 8
  %32 = getelementptr inbounds [768 x i8], [768 x i8]* %31, i64 0, i64 0
  %33 = load i8**, i8*** %4, align 8
  store i8* %32, i8** %33, align 8
  %34 = load %struct.GIFScreen*, %struct.GIFScreen** %7, align 8
  %35 = getelementptr inbounds %struct.GIFScreen, %struct.GIFScreen* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  br label %41

38:                                               ; preds = %21
  %39 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @DefaultColorTable, i64 0, i64 0), i8** %39, align 8
  %40 = load i32*, i32** %5, align 8
  store i32 8, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %29, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GIFInitExtension(%struct.GIFExtension* noundef %0, %struct.GIFScreen* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.GIFExtension*, align 8
  %5 = alloca %struct.GIFScreen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.GIFExtension* %0, %struct.GIFExtension** %4, align 8
  store %struct.GIFScreen* %1, %struct.GIFScreen** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.GIFScreen*, %struct.GIFScreen** %5, align 8
  %9 = load %struct.GIFExtension*, %struct.GIFExtension** %4, align 8
  %10 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %9, i32 0, i32 0
  store %struct.GIFScreen* %8, %struct.GIFScreen** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ugt i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = call noalias i8* @malloc(i64 noundef %15) #6
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  call void @MemoryError()
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.GIFExtension*, %struct.GIFExtension** %4, align 8
  %23 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.GIFExtension*, %struct.GIFExtension** %4, align 8
  %26 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.GIFExtension*, %struct.GIFExtension** %4, align 8
  %29 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %28, i32 0, i32 1
  store i8* null, i8** %29, align 8
  %30 = load %struct.GIFExtension*, %struct.GIFExtension** %4, align 8
  %31 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %27, %20
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MemoryError() #0 {
  %1 = load void (i8*)*, void (i8*)** @GIFError, align 8
  call void %1(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GIFDestroyExtension(%struct.GIFExtension* noundef %0) #0 {
  %2 = alloca %struct.GIFExtension*, align 8
  store %struct.GIFExtension* %0, %struct.GIFExtension** %2, align 8
  %3 = load %struct.GIFExtension*, %struct.GIFExtension** %2, align 8
  %4 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %5) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GIFGetGraphicCtl(%struct.GIFGraphicCtlExt* noundef %0, %struct.GIFExtension* noundef %1) #0 {
  %3 = alloca %struct.GIFGraphicCtlExt*, align 8
  %4 = alloca %struct.GIFExtension*, align 8
  %5 = alloca i8*, align 8
  store %struct.GIFGraphicCtlExt* %0, %struct.GIFGraphicCtlExt** %3, align 8
  store %struct.GIFExtension* %1, %struct.GIFExtension** %4, align 8
  %6 = load %struct.GIFExtension*, %struct.GIFExtension** %4, align 8
  %7 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %6, i32 0, i32 3
  %8 = load i8, i8* %7, align 4
  %9 = zext i8 %8 to i32
  %10 = icmp ne i32 %9, 249
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load void (i8*)*, void (i8*)** @GIFWarning, align 8
  call void %12(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %67

13:                                               ; preds = %2
  %14 = load %struct.GIFExtension*, %struct.GIFExtension** %4, align 8
  %15 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load void (i8*)*, void (i8*)** @GIFWarning, align 8
  call void %19(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %67

20:                                               ; preds = %13
  %21 = load %struct.GIFExtension*, %struct.GIFExtension** %4, align 8
  %22 = getelementptr inbounds %struct.GIFExtension, %struct.GIFExtension* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = ashr i32 %27, 2
  %29 = and i32 %28, 7
  %30 = load %struct.GIFGraphicCtlExt*, %struct.GIFGraphicCtlExt** %3, align 8
  %31 = getelementptr inbounds %struct.GIFGraphicCtlExt, %struct.GIFGraphicCtlExt* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = ashr i32 %35, 1
  %37 = and i32 %36, 1
  %38 = load %struct.GIFGraphicCtlExt*, %struct.GIFGraphicCtlExt** %3, align 8
  %39 = getelementptr inbounds %struct.GIFGraphicCtlExt, %struct.GIFGraphicCtlExt* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 1
  %45 = load %struct.GIFGraphicCtlExt*, %struct.GIFGraphicCtlExt** %3, align 8
  %46 = getelementptr inbounds %struct.GIFGraphicCtlExt, %struct.GIFGraphicCtlExt* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 8
  %58 = add nsw i32 %51, %57
  %59 = load %struct.GIFGraphicCtlExt*, %struct.GIFGraphicCtlExt** %3, align 8
  %60 = getelementptr inbounds %struct.GIFGraphicCtlExt, %struct.GIFGraphicCtlExt* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load %struct.GIFGraphicCtlExt*, %struct.GIFGraphicCtlExt** %3, align 8
  %66 = getelementptr inbounds %struct.GIFGraphicCtlExt, %struct.GIFGraphicCtlExt* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %20, %18, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DefaultError(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef %4)
  call void @exit(i32 noundef 1) #7
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DefaultWarning(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GIFSkipDataBlocks(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  br label %5

5:                                                ; preds = %23, %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %7 = call i32 @getc(%struct._IO_FILE* noundef %6)
  store i32 %7, i32* %3, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void @ReadError()
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %18 = call i64 @fread(i8* noundef %14, i64 noundef %16, i64 noundef 1, %struct._IO_FILE* noundef %17)
  %19 = icmp ule i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  call void @ReadError()
  br label %21

21:                                               ; preds = %20, %13
  br label %23

22:                                               ; preds = %10
  ret void

23:                                               ; preds = %21
  br label %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GIFReadImageData(%struct.GIFImage* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.GIFImage*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.GIFImage* %0, %struct.GIFImage** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %17 = call i32 @getc(%struct._IO_FILE* noundef %16)
  store i32 %17, i32* %5, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  call void @ReadError()
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 12
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load void (i8*)*, void (i8*)** @GIFError, align 8
  call void %24(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %5, align 4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %28 = call i32 @LZWReadByte(i32 noundef 1, i32 noundef %26, %struct._IO_FILE* noundef %27)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load void (i8*)*, void (i8*)** @GIFError, align 8
  call void %31(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %34 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %33, i32 0, i32 10
  %35 = load i8**, i8*** %34, align 8
  store i8** %35, i8*** %6, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = icmp eq i8** %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @GIFSkipDataBlocks(%struct._IO_FILE* noundef %39)
  br label %124

40:                                               ; preds = %32
  %41 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %42 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  %44 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %45 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  %48 = getelementptr inbounds %struct.GIFImage, %struct.GIFImage* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.GIFImage*, %struct.GIFImage** %3, align 8
  call void @GIFGetColorTable(i8** noundef %10, i32* noundef %11, %struct.GIFImage* noundef %50)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %115, %40
  %52 = load i32, i32* %5, align 4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %54 = call i32 @LZWReadByte(i32 noundef 0, i32 noundef %52, %struct._IO_FILE* noundef %53)
  store i32 %54, i32* %15, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %116

56:                                               ; preds = %51
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load void (i8*)*, void (i8*)** @GIFWarning, align 8
  call void %61(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %62 = load i32, i32* %11, align 4
  %63 = sub i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %15, align 4
  %66 = trunc i32 %65 to i8
  %67 = load i8**, i8*** %6, align 8
  %68 = load i32, i32* %13, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8 %66, i8* %74, align 1
  %75 = load i32, i32* %12, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %64
  store i32 0, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %79
  %83 = load i32, i32* %14, align 4
  switch i32 %83, label %93 [
    i32 0, label %84
    i32 1, label %84
    i32 2, label %87
    i32 3, label %90
  ]

84:                                               ; preds = %82, %82
  %85 = load i32, i32* %13, align 4
  %86 = add i32 %85, 8
  store i32 %86, i32* %13, align 4
  br label %93

87:                                               ; preds = %82
  %88 = load i32, i32* %13, align 4
  %89 = add i32 %88, 4
  store i32 %89, i32* %13, align 4
  br label %93

90:                                               ; preds = %82
  %91 = load i32, i32* %13, align 4
  %92 = add i32 %91, 2
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %82, %90, %87, %84
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp uge i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  switch i32 %99, label %103 [
    i32 1, label %100
    i32 2, label %101
    i32 3, label %102
  ]

100:                                              ; preds = %97
  store i32 4, i32* %13, align 4
  br label %104

101:                                              ; preds = %97
  store i32 2, i32* %13, align 4
  br label %104

102:                                              ; preds = %97
  store i32 1, i32* %13, align 4
  br label %104

103:                                              ; preds = %97
  br label %117

104:                                              ; preds = %102, %101, %100
  br label %105

105:                                              ; preds = %104, %93
  br label %109

106:                                              ; preds = %79
  %107 = load i32, i32* %13, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %106, %105
  br label %110

110:                                              ; preds = %109, %64
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp uge i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %116

115:                                              ; preds = %110
  br label %51, !llvm.loop !4

116:                                              ; preds = %114, %51
  br label %117

117:                                              ; preds = %116, %103
  br label %118

118:                                              ; preds = %123, %117
  %119 = load i32, i32* %5, align 4
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %121 = call i32 @LZWReadByte(i32 noundef 0, i32 noundef %119, %struct._IO_FILE* noundef %120)
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %118, !llvm.loop !6

124:                                              ; preds = %38, %118
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZWReadByte(i32 noundef %0, i32 noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [260 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* @LZWReadByte.set_code_size, align 4
  %17 = load i32, i32* @LZWReadByte.set_code_size, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @LZWReadByte.code_size, align 4
  %19 = load i32, i32* @LZWReadByte.set_code_size, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* @LZWReadByte.clear_code, align 4
  %21 = load i32, i32* @LZWReadByte.clear_code, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @LZWReadByte.end_code, align 4
  %23 = load i32, i32* @LZWReadByte.clear_code, align 4
  %24 = mul nsw i32 2, %23
  store i32 %24, i32* @LZWReadByte.max_code_size, align 4
  %25 = load i32, i32* @LZWReadByte.clear_code, align 4
  %26 = add nsw i32 %25, 2
  store i32 %26, i32* @LZWReadByte.max_code, align 4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %28 = call i32 @LZWGetCode(i32 noundef 0, i32 noundef 1, %struct._IO_FILE* noundef %27)
  store i32 1, i32* @LZWReadByte.fresh, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %41, %15
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @LZWReadByte.clear_code, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 0), i64 0, i64 %35
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 1), i64 0, i64 %39
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %29, !llvm.loop !7

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %55, %44
  %46 = load i32, i32* %10, align 4
  %47 = icmp sle i32 %46, 4095
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 0), i64 0, i64 %50
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 1), i64 0, i64 %53
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %45, !llvm.loop !8

58:                                               ; preds = %45
  store i32* getelementptr inbounds ([8192 x i32], [8192 x i32]* @LZWReadByte.stack, i64 0, i64 0), i32** @LZWReadByte.sp, align 8
  store i32 0, i32* %4, align 4
  br label %228

59:                                               ; preds = %3
  %60 = load i32, i32* @LZWReadByte.fresh, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  store i32 0, i32* @LZWReadByte.fresh, align 4
  br label %63

63:                                               ; preds = %67, %62
  %64 = load i32, i32* @LZWReadByte.code_size, align 4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %66 = call i32 @LZWGetCode(i32 noundef %64, i32 noundef 0, %struct._IO_FILE* noundef %65)
  store i32 %66, i32* @LZWReadByte.oldcode, align 4
  store i32 %66, i32* @LZWReadByte.firstcode, align 4
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @LZWReadByte.firstcode, align 4
  %69 = load i32, i32* @LZWReadByte.clear_code, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %63, label %71, !llvm.loop !9

71:                                               ; preds = %67
  %72 = load i32, i32* @LZWReadByte.firstcode, align 4
  store i32 %72, i32* %4, align 4
  br label %228

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73
  %75 = load i32*, i32** @LZWReadByte.sp, align 8
  %76 = icmp ugt i32* %75, getelementptr inbounds ([8192 x i32], [8192 x i32]* @LZWReadByte.stack, i64 0, i64 0)
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32*, i32** @LZWReadByte.sp, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 -1
  store i32* %79, i32** @LZWReadByte.sp, align 8
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %4, align 4
  br label %228

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %225, %81
  %83 = load i32, i32* @LZWReadByte.code_size, align 4
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %85 = call i32 @LZWGetCode(i32 noundef %83, i32 noundef 0, %struct._IO_FILE* noundef %84)
  store i32 %85, i32* %8, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %226

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @LZWReadByte.clear_code, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %132

91:                                               ; preds = %87
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %104, %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @LZWReadByte.clear_code, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 0), i64 0, i64 %98
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 1), i64 0, i64 %102
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %92, !llvm.loop !10

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %118, %107
  %109 = load i32, i32* %10, align 4
  %110 = icmp sle i32 %109, 4095
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 0), i64 0, i64 %113
  store i32 0, i32* %114, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 1), i64 0, i64 %116
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %108, !llvm.loop !11

121:                                              ; preds = %108
  %122 = load i32, i32* @LZWReadByte.set_code_size, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @LZWReadByte.code_size, align 4
  %124 = load i32, i32* @LZWReadByte.clear_code, align 4
  %125 = mul nsw i32 2, %124
  store i32 %125, i32* @LZWReadByte.max_code_size, align 4
  %126 = load i32, i32* @LZWReadByte.clear_code, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* @LZWReadByte.max_code, align 4
  store i32* getelementptr inbounds ([8192 x i32], [8192 x i32]* @LZWReadByte.stack, i64 0, i64 0), i32** @LZWReadByte.sp, align 8
  %128 = load i32, i32* @LZWReadByte.code_size, align 4
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %130 = call i32 @LZWGetCode(i32 noundef %128, i32 noundef 0, %struct._IO_FILE* noundef %129)
  store i32 %130, i32* @LZWReadByte.oldcode, align 4
  store i32 %130, i32* @LZWReadByte.firstcode, align 4
  %131 = load i32, i32* @LZWReadByte.firstcode, align 4
  store i32 %131, i32* %4, align 4
  br label %228

132:                                              ; preds = %87
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @LZWReadByte.end_code, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load i32, i32* @DataBlockSize, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 -2, i32* %4, align 4
  br label %228

140:                                              ; preds = %136
  br label %141

141:                                              ; preds = %146, %140
  %142 = getelementptr inbounds [260 x i8], [260 x i8]* %12, i64 0, i64 0
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %144 = call i32 @GIFReadDataBlock(i8* noundef %142, %struct._IO_FILE* noundef %143)
  store i32 %144, i32* %11, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %141, !llvm.loop !12

147:                                              ; preds = %141
  %148 = load i32, i32* %11, align 4
  store i32 -2, i32* %4, align 4
  br label %228

149:                                              ; preds = %132
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @LZWReadByte.max_code, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load i32, i32* @LZWReadByte.firstcode, align 4
  %157 = load i32*, i32** @LZWReadByte.sp, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** @LZWReadByte.sp, align 8
  store i32 %156, i32* %157, align 4
  %159 = load i32, i32* @LZWReadByte.oldcode, align 4
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %155, %150
  br label %161

161:                                              ; preds = %180, %160
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @LZWReadByte.clear_code, align 4
  %164 = icmp sge i32 %162, %163
  br i1 %164, label %165, label %185

165:                                              ; preds = %161
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 1), i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** @LZWReadByte.sp, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** @LZWReadByte.sp, align 8
  store i32 %169, i32* %170, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 0), i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %172, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %165
  %179 = load void (i8*)*, void (i8*)** @GIFError, align 8
  call void %179(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %165
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 0), i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %8, align 4
  br label %161, !llvm.loop !13

185:                                              ; preds = %161
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 1), i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* @LZWReadByte.firstcode, align 4
  %190 = load i32*, i32** @LZWReadByte.sp, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** @LZWReadByte.sp, align 8
  store i32 %189, i32* %190, align 4
  %192 = load i32, i32* @LZWReadByte.max_code, align 4
  store i32 %192, i32* %8, align 4
  %193 = icmp sle i32 %192, 4095
  br i1 %193, label %194, label %217

194:                                              ; preds = %185
  %195 = load i32, i32* @LZWReadByte.oldcode, align 4
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 0), i64 0, i64 %197
  store i32 %195, i32* %198, align 4
  %199 = load i32, i32* @LZWReadByte.firstcode, align 4
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i64 0, i64 1), i64 0, i64 %201
  store i32 %199, i32* %202, align 4
  %203 = load i32, i32* @LZWReadByte.max_code, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* @LZWReadByte.max_code, align 4
  %205 = load i32, i32* @LZWReadByte.max_code, align 4
  %206 = load i32, i32* @LZWReadByte.max_code_size, align 4
  %207 = icmp sge i32 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %194
  %209 = load i32, i32* @LZWReadByte.max_code_size, align 4
  %210 = icmp sle i32 %209, 4095
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load i32, i32* @LZWReadByte.max_code_size, align 4
  %213 = mul nsw i32 %212, 2
  store i32 %213, i32* @LZWReadByte.max_code_size, align 4
  %214 = load i32, i32* @LZWReadByte.code_size, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* @LZWReadByte.code_size, align 4
  br label %216

216:                                              ; preds = %211, %208, %194
  br label %217

217:                                              ; preds = %216, %185
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* @LZWReadByte.oldcode, align 4
  %219 = load i32*, i32** @LZWReadByte.sp, align 8
  %220 = icmp ugt i32* %219, getelementptr inbounds ([8192 x i32], [8192 x i32]* @LZWReadByte.stack, i64 0, i64 0)
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load i32*, i32** @LZWReadByte.sp, align 8
  %223 = getelementptr inbounds i32, i32* %222, i32 -1
  store i32* %223, i32** @LZWReadByte.sp, align 8
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %4, align 4
  br label %228

225:                                              ; preds = %217
  br label %82, !llvm.loop !14

226:                                              ; preds = %82
  %227 = load i32, i32* %8, align 4
  store i32 %227, i32* %4, align 4
  br label %228

228:                                              ; preds = %226, %221, %147, %139, %121, %77, %71, %58
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZWGetCode(i32 noundef %0, i32 noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* @LZWGetCode.curbit, align 4
  store i32 0, i32* @LZWGetCode.lastbit, align 4
  store i32 2, i32* @LZWGetCode.last_byte, align 4
  store i32 0, i32* @LZWGetCode.done, align 4
  store i32 0, i32* %4, align 4
  br label %89

15:                                               ; preds = %3
  %16 = load i32, i32* @LZWGetCode.curbit, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @LZWGetCode.lastbit, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %15
  %22 = load i32, i32* @LZWGetCode.done, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @LZWGetCode.curbit, align 4
  %26 = load i32, i32* @LZWGetCode.lastbit, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load void (i8*)*, void (i8*)** @GIFError, align 8
  call void %29(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  store i32 -1, i32* %4, align 4
  br label %89

31:                                               ; preds = %21
  %32 = load i32, i32* @LZWGetCode.last_byte, align 4
  %33 = sub nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [280 x i8], [280 x i8]* @LZWGetCode.buffer, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* getelementptr inbounds ([280 x i8], [280 x i8]* @LZWGetCode.buffer, i64 0, i64 0), align 16
  %37 = load i32, i32* @LZWGetCode.last_byte, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [280 x i8], [280 x i8]* @LZWGetCode.buffer, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* getelementptr inbounds ([280 x i8], [280 x i8]* @LZWGetCode.buffer, i64 0, i64 1), align 1
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %43 = call i32 @GIFReadDataBlock(i8* noundef getelementptr inbounds ([280 x i8], [280 x i8]* @LZWGetCode.buffer, i64 0, i64 2), %struct._IO_FILE* noundef %42)
  store i32 %43, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  store i32 1, i32* @LZWGetCode.done, align 4
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 2, %47
  store i32 %48, i32* @LZWGetCode.last_byte, align 4
  %49 = load i32, i32* @LZWGetCode.curbit, align 4
  %50 = load i32, i32* @LZWGetCode.lastbit, align 4
  %51 = sub nsw i32 %49, %50
  %52 = add nsw i32 %51, 16
  store i32 %52, i32* @LZWGetCode.curbit, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 2, %53
  %55 = mul nsw i32 %54, 8
  store i32 %55, i32* @LZWGetCode.lastbit, align 4
  br label %56

56:                                               ; preds = %46, %15
  store i32 0, i32* %11, align 4
  %57 = load i32, i32* @LZWGetCode.curbit, align 4
  store i32 %57, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %79, %56
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = sdiv i32 %63, 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [280 x i8], [280 x i8]* @LZWGetCode.buffer, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i32, i32* %9, align 4
  %70 = srem i32 %69, 8
  %71 = shl i32 1, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %10, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %58, !llvm.loop !15

84:                                               ; preds = %58
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @LZWGetCode.curbit, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* @LZWGetCode.curbit, align 4
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %84, %30, %14
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GIFReadDataBlock(i8* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %7 = call i32 @getc(%struct._IO_FILE* noundef %6)
  store i32 %7, i32* %5, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @ReadError()
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* @DataBlockSize, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %19 = call i64 @fread(i8* noundef %15, i64 noundef %17, i64 noundef 1, %struct._IO_FILE* noundef %18)
  %20 = icmp ule i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  call void @ReadError()
  br label %22

22:                                               ; preds = %21, %14
  br label %23

23:                                               ; preds = %22, %10
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
