; ModuleID = 'optipng.c'
source_filename = "optipng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.png_struct_def = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.opng_ui = type { void (i8*, ...)*, void (i32)*, void (i64, i64)*, void (i8*)* }

@local_options = internal global %struct.anon zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@msg_intro = internal global i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.73, i32 0, i32 0), align 8
@operation = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@msg_help_synopsis = internal global i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.80, i32 0, i32 0), align 8
@msg_help_options = internal global i8* getelementptr inbounds ([2045 x i8], [2045 x i8]* @.str.81, i32 0, i32 0), align 8
@msg_help_examples = internal global i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.82, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@msg_help_basic_options = internal global i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.83, i32 0, i32 0), align 8
@msg_help_more = internal global i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i32 0, i32 0), align 8
@msg_license = internal global i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.85, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"Using libpng version %s and zlib version %s\0A\00", align 1
@options = internal global %struct.opng_options zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"fio\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"clobber\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"fix\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"np\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"preserve\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"simulate\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"snip\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"No argument allowed for option: %s\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"Multiple optimization levels are not permitted\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"Multiple interlace types are not permitted\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"zc\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"-zc\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"zm\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"-zm\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"zs\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"-zs\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"zw\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"-zw\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"Multiple window sizes are not permitted\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"-strip\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"Multiple output file names are not permitted\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"-out\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.53 = private unnamed_addr constant [44 x i8] c"Multiple output dir names are not permitted\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"-dir\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"Multiple log file names are not permitted\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"-log\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"Unrecognized option: %s\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"The option -out requires one input file\00", align 1
@.str.60 = private unnamed_addr constant [49 x i8] c"The options -out and -dir are mutually exclusive\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c".log\00", align 1
@.str.62 = private unnamed_addr constant [78 x i8] c"To prevent accidental data corruption, the log file name must end with \22.log\22\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.63 = private unnamed_addr constant [11 x i8] c"** Error: \00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.66 = private unnamed_addr constant [53 x i8] c"Manipulation of individual chunks is not implemented\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Missing argument for option %s\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"Invalid argument for option %s: %s\00", align 1
@start_of_line = internal global i32 0, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@con_file = internal global %struct._IO_FILE* null, align 8
@.str.69 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@log_file = internal global %struct._IO_FILE* null, align 8
@.str.70 = private unnamed_addr constant [25 x i8] c"Can't open log file: %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"** Warning: %s\0A\0A\00", align 1
@.str.72 = private unnamed_addr constant [53 x i8] c"The option -log is deprecated; use shell redirection\00", align 1
@.str.73 = private unnamed_addr constant [90 x i8] c"OptiPNG version 0.7.6\0ACopyright (C) 2001-2016 Cosmin Truta and the Contributing Authors.\0A\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"Can't initialize optimization engine\00", align 1
@.str.75 = private unnamed_addr constant [35 x i8] c"Can't finalize optimization engine\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"<?>\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"\0A** INTERNAL ERROR: %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [65 x i8] c"Please submit a defect report.\0Ahttp://optipng.sourceforge.net/\0A\0A\00", align 1
@.str.80 = private unnamed_addr constant [102 x i8] c"Synopsis:\0A    optipng [options] files ...\0AFiles:\0A    Image files of type: PNG, BMP, GIF, PNM or TIFF\0A\00", align 1
@.str.81 = private unnamed_addr constant [2045 x i8] c"Basic options:\0A    -?, -h, -help\09show this help\0A    -o <level>\09\09optimization level (0-7)\09\09[default: 2]\0A    -v\09\09\09run in verbose mode / show copyright and version info\0AGeneral options:\0A    -backup, -keep\09keep a backup of the modified files\0A    -clobber\09\09overwrite existing files\0A    -fix\09\09enable error recovery\0A    -force\09\09enforce writing of a new output file\0A    -preserve\09\09preserve file attributes if possible\0A    -quiet, -silent\09run in quiet mode\0A    -simulate\09\09run in simulation mode\0A    -out <file>\09\09write output file to <file>\0A    -dir <directory>\09write output file(s) to <directory>\0A    -log <file>\09\09log messages to <file>\0A    --\09\09\09stop option switch parsing\0AOptimization options:\0A    -f <filters>\09PNG delta filters (0-5)\09\09\09[default: 0,5]\0A    -i <type>\09\09PNG interlace type (0-1)\0A    -zc <levels>\09zlib compression levels (1-9)\09\09[default: 9]\0A    -zm <levels>\09zlib memory levels (1-9)\09\09[default: 8]\0A    -zs <strategies>\09zlib compression strategies (0-3)\09[default: 0-3]\0A    -zw <size>\09\09zlib window size (256,512,1k,2k,4k,8k,16k,32k)\0A    -full\09\09produce a full report on IDAT (might reduce speed)\0A    -nb\09\09\09no bit depth reduction\0A    -nc\09\09\09no color type reduction\0A    -np\09\09\09no palette reduction\0A    -nx\09\09\09no reductions\0A    -nz\09\09\09no IDAT recoding\0AEditing options:\0A    -snip\09\09cut one image out of multi-image or animation files\0A    -strip <objects>\09strip metadata objects (e.g. \22all\22)\0AOptimization levels:\0A    -o0\09\09<=>\09-o1 -nx -nz\09\09\09\09(0 or 1 trials)\0A    -o1\09\09<=>\09-zc9 -zm8 -zs0 -f0\09\09\09(1 trial)\0A    \09\09(or...)\09-zc9 -zm8 -zs1 -f5\09\09\09(1 trial)\0A    -o2\09\09<=>\09-zc9 -zm8 -zs0-3 -f0,5\09\09\09(8 trials)\0A    -o3\09\09<=>\09-zc9 -zm8-9 -zs0-3 -f0,5\09\09(16 trials)\0A    -o4\09\09<=>\09-zc9 -zm8 -zs0-3 -f0-5\09\09\09(24 trials)\0A    -o5\09\09<=>\09-zc9 -zm8-9 -zs0-3 -f0-5\09\09(48 trials)\0A    -o6\09\09<=>\09-zc1-9 -zm8 -zs0-3 -f0-5\09\09(120 trials)\0A    -o7\09\09<=>\09-zc1-9 -zm8-9 -zs0-3 -f0-5\09\09(240 trials)\0A    -o7 -zm1-9\09<=>\09-zc1-9 -zm1-9 -zs0-3 -f0-5\09\09(1080 trials)\0ANotes:\0A    The combination for -o1 is chosen heuristically.\0A    Exhaustive combinations such as \22-o7 -zm1-9\22 are not generally recommended.\0A\00", align 1
@.str.82 = private unnamed_addr constant [130 x i8] c"Examples:\0A    optipng file.png\09\09\09\09\09\09(default speed)\0A    optipng -o5 file.png\09\09\09\09\09(slow)\0A    optipng -o7 file.png\09\09\09\09\09(very slow)\0A\00", align 1
@.str.83 = private unnamed_addr constant [175 x i8] c"Basic options:\0A    -?, -h, -help\09show the extended help\0A    -o <level>\09\09optimization level (0-7)\09\09[default: 2]\0A    -v\09\09\09run in verbose mode / show copyright and version info\0A\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"Type \22optipng -h\22 for extended help.\0A\00", align 1
@.str.85 = private unnamed_addr constant [295 x i8] c"This program is open-source software. See LICENSE for more details.\0A\0APortions of this software are based in part on the work of:\0A  Jean-loup Gailly and Mark Adler (zlib)\0A  Glenn Randers-Pehrson and the PNG Development Group (libpng)\0A  Miyasaka Masaru (BMP support)\0A  David Koblas (GIF support)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  call void @parse_args(i32 noundef %7, i8** noundef %8)
  call void @app_init()
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 1), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8*, i8** @msg_intro, align 8
  call void (i8*, ...) @app_printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %12)
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* @operation, align 4
  switch i32 %14, label %36 [
    i32 0, label %15
    i32 1, label %19
    i32 2, label %32
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @process_files(i32 noundef %16, i8** noundef %17)
  store i32 %18, i32* %6, align 4
  br label %37

19:                                               ; preds = %13
  %20 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 0), align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i8*, i8** @msg_help_synopsis, align 8
  %24 = load i8*, i8** @msg_help_options, align 8
  %25 = load i8*, i8** @msg_help_examples, align 8
  call void (i8*, ...) @app_printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef %23, i8* noundef %24, i8* noundef %25)
  br label %31

26:                                               ; preds = %19
  %27 = load i8*, i8** @msg_help_synopsis, align 8
  %28 = load i8*, i8** @msg_help_basic_options, align 8
  %29 = load i8*, i8** @msg_help_examples, align 8
  %30 = load i8*, i8** @msg_help_more, align 8
  call void (i8*, ...) @app_printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %27, i8* noundef %28, i8* noundef %29, i8* noundef %30)
  br label %31

31:                                               ; preds = %26, %22
  br label %37

32:                                               ; preds = %13
  %33 = load i8*, i8** @msg_license, align 8
  call void (i8*, ...) @app_printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %33)
  %34 = call i8* @png_get_libpng_ver(%struct.png_struct_def* noundef null)
  %35 = call i8* @zlibVersion()
  call void (i8*, ...) @app_printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* noundef %34, i8* noundef %35)
  br label %37

36:                                               ; preds = %13
  store i32 -1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %32, %31, %15
  call void @app_finish()
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_args(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.opng_options* @options to i8*), i8 0, i64 120, i1 false)
  store i32 -1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %14, align 4
  br label %15

15:                                               ; preds = %473, %2
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %476

19:                                               ; preds = %15
  %20 = load i8**, i8*** %4, align 8
  %21 = load i32, i32* %14, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %30 = call i32 @scan_option(i8* noundef %28, i8* noundef %29, i64 noundef 16, i8** noundef %8)
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %19
  %33 = load i32, i32* %13, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %13, align 4
  br label %473

35:                                               ; preds = %27
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %37 = call i64 @strlen(i8* noundef %36) #8
  store i64 %37, i64* %7, align 8
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* null, i8** %41, align 8
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = sext i8 %43 to i32
  %45 = call i8* @strchr(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %44) #8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %35
  %48 = call i16** @__ctype_b_loc() #9
  %49 = load i16*, i16** %48, align 8
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16* %49, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = and i32 %56, 2048
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %47, %35
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %61 = load i8, i8* %60, align 16
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 122
  br i1 %63, label %64, label %99

64:                                               ; preds = %59
  %65 = call i16** @__ctype_b_loc() #9
  %66 = load i16*, i16** %65, align 8
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %66, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = and i32 %73, 1024
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %64
  %77 = call i16** @__ctype_b_loc() #9
  %78 = load i16*, i16** %77, align 8
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %80 = load i8, i8* %79, align 2
  %81 = sext i8 %80 to i32
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i16, i16* %78, i64 %82
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i32
  %86 = and i32 %85, 2048
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %76, %47
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %90 = call i8* @opng_strpbrk_digit(i8* noundef %89)
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %5, align 8
  %98 = call i8* @opng_strpbrk_digit(i8* noundef %97)
  store i8* %98, i8** %8, align 8
  br label %99

99:                                               ; preds = %88, %76, %64, %59
  store i32 1, i32* %9, align 4
  %100 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %101 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* noundef %100) #8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 1, i32* %10, align 4
  br label %289

104:                                              ; preds = %99
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %106 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef %105) #8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef %109, i64 noundef %110) #8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108, %104
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 0), align 4
  br label %288

114:                                              ; preds = %108
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @strncmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %115, i64 noundef %116) #8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %120, i64 noundef %121) #8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119, %114
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 0), align 8
  br label %287

125:                                              ; preds = %119
  %126 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %127 = load i64, i64* %7, align 8
  %128 = call i32 @strncmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef %126, i64 noundef %127) #8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 1), align 4
  br label %286

131:                                              ; preds = %125
  %132 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %133 = call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef %132) #8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 2), align 8
  br label %285

136:                                              ; preds = %131
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %138 = load i64, i64* %7, align 8
  %139 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef %137, i64 noundef %138) #8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i64, i64* %7, align 8
  %143 = icmp uge i64 %142, 2
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 3), align 4
  br label %284

145:                                              ; preds = %141, %136
  %146 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* noundef %146, i64 noundef %147) #8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i64, i64* %7, align 8
  %152 = icmp uge i64 %151, 2
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 4), align 8
  br label %283

154:                                              ; preds = %150, %145
  %155 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef %155, i64 noundef %156) #8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load i64, i64* %7, align 8
  %161 = icmp uge i64 %160, 2
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 5), align 4
  br label %282

163:                                              ; preds = %159, %154
  %164 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %165 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* noundef %164) #8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 14), align 4
  br label %281

168:                                              ; preds = %163
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %170 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* noundef %169) #8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 15), align 8
  br label %280

173:                                              ; preds = %168
  %174 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %175 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* noundef %174) #8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 16), align 4
  br label %279

178:                                              ; preds = %173
  %179 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %180 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* noundef %179) #8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 16), align 4
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 15), align 8
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 14), align 4
  br label %278

183:                                              ; preds = %178
  %184 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %185 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %184) #8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 17), align 8
  br label %277

188:                                              ; preds = %183
  %189 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %190 = load i64, i64* %7, align 8
  %191 = call i32 @strncmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* noundef %189, i64 noundef %190) #8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 6), align 8
  br label %276

194:                                              ; preds = %188
  %195 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %196 = load i64, i64* %7, align 8
  %197 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* noundef %195, i64 noundef %196) #8
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %201 = load i64, i64* %7, align 8
  %202 = call i32 @strncmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef %200, i64 noundef %201) #8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load i64, i64* %7, align 8
  %206 = icmp uge i64 %205, 3
  br i1 %206, label %207, label %208

207:                                              ; preds = %204, %194
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 7), align 4
  br label %275

208:                                              ; preds = %204, %199
  %209 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %210 = load i64, i64* %7, align 8
  %211 = call i32 @strncmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* noundef %209, i64 noundef %210) #8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load i64, i64* %7, align 8
  %215 = icmp uge i64 %214, 3
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 8), align 8
  br label %274

217:                                              ; preds = %213, %208
  %218 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %219 = load i64, i64* %7, align 8
  %220 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* noundef %218, i64 noundef %219) #8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load i64, i64* %7, align 8
  %224 = icmp uge i64 %223, 2
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  br label %273

226:                                              ; preds = %222, %217
  %227 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %228 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef %227) #8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 9), align 4
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 1), align 4
  br label %272

231:                                              ; preds = %226
  %232 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %233 = load i64, i64* %7, align 8
  %234 = call i32 @strncmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* noundef %232, i64 noundef %233) #8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = load i64, i64* %7, align 8
  %238 = icmp uge i64 %237, 4
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 9), align 4
  br label %271

240:                                              ; preds = %236, %231
  %241 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %242 = load i64, i64* %7, align 8
  %243 = call i32 @strncmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* noundef %241, i64 noundef %242) #8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %240
  %246 = load i64, i64* %7, align 8
  %247 = icmp uge i64 %246, 4
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 1), align 4
  br label %270

249:                                              ; preds = %245, %240
  store i32 0, i32* %9, align 4
  %250 = load i8*, i8** %8, align 8
  %251 = icmp eq i8* %250, null
  br i1 %251, label %252, label %269

252:                                              ; preds = %249
  %253 = load i32, i32* %14, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %14, align 4
  %255 = load i32, i32* %3, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %267

257:                                              ; preds = %252
  %258 = load i8**, i8*** %4, align 8
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %258, i64 %260
  %262 = load i8*, i8** %261, align 8
  store i8* %262, i8** %8, align 8
  %263 = load i8**, i8*** %4, align 8
  %264 = load i32, i32* %14, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8*, i8** %263, i64 %265
  store i8* null, i8** %266, align 8
  br label %268

267:                                              ; preds = %252
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i8** %8, align 8
  br label %268

268:                                              ; preds = %267, %257
  br label %269

269:                                              ; preds = %268, %249
  br label %270

270:                                              ; preds = %269, %248
  br label %271

271:                                              ; preds = %270, %239
  br label %272

272:                                              ; preds = %271, %230
  br label %273

273:                                              ; preds = %272, %225
  br label %274

274:                                              ; preds = %273, %216
  br label %275

275:                                              ; preds = %274, %207
  br label %276

276:                                              ; preds = %275, %193
  br label %277

277:                                              ; preds = %276, %187
  br label %278

278:                                              ; preds = %277, %182
  br label %279

279:                                              ; preds = %278, %177
  br label %280

280:                                              ; preds = %279, %172
  br label %281

281:                                              ; preds = %280, %167
  br label %282

282:                                              ; preds = %281, %162
  br label %283

283:                                              ; preds = %282, %153
  br label %284

284:                                              ; preds = %283, %144
  br label %285

285:                                              ; preds = %284, %135
  br label %286

286:                                              ; preds = %285, %130
  br label %287

287:                                              ; preds = %286, %124
  br label %288

288:                                              ; preds = %287, %113
  br label %289

289:                                              ; preds = %288, %103
  %290 = load i32, i32* %9, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %289
  %293 = load i8*, i8** %8, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = load i8*, i8** %5, align 8
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* noundef %296)
  br label %297

297:                                              ; preds = %295, %292
  br label %472

298:                                              ; preds = %289
  %299 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %300 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i8* noundef %299) #8
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %316

302:                                              ; preds = %298
  %303 = load i8*, i8** %8, align 8
  %304 = call i32 @check_num_option(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* noundef %303, i32 noundef 0, i32 noundef 2147483647)
  store i32 %304, i32* %12, align 4
  %305 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %302
  %308 = load i32, i32* %12, align 4
  store i32 %308, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  br label %315

309:                                              ; preds = %302
  %310 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  %311 = load i32, i32* %12, align 4
  %312 = icmp ne i32 %310, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %309
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i64 0, i64 0))
  br label %314

314:                                              ; preds = %313, %309
  br label %315

315:                                              ; preds = %314, %307
  br label %471

316:                                              ; preds = %298
  %317 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %318 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8* noundef %317) #8
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %334

320:                                              ; preds = %316
  %321 = load i8*, i8** %8, align 8
  %322 = call i32 @check_num_option(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* noundef %321, i32 noundef 0, i32 noundef 1)
  store i32 %322, i32* %12, align 4
  %323 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %320
  %326 = load i32, i32* %12, align 4
  store i32 %326, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  br label %333

327:                                              ; preds = %320
  %328 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  %329 = load i32, i32* %12, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %327
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i64 0, i64 0))
  br label %332

332:                                              ; preds = %331, %327
  br label %333

333:                                              ; preds = %332, %325
  br label %470

334:                                              ; preds = %316
  %335 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %336 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* noundef %335) #8
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %334
  %339 = load i8*, i8** %8, align 8
  %340 = call i32 @check_rangeset_option(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* noundef %339, i32 noundef 63)
  store i32 %340, i32* %11, align 4
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 22), align 4
  %343 = or i32 %342, %341
  store i32 %343, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 22), align 4
  br label %469

344:                                              ; preds = %334
  %345 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %346 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* noundef %345) #8
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %344
  %349 = load i8*, i8** %8, align 8
  %350 = call i32 @check_rangeset_option(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* noundef %349, i32 noundef 1022)
  store i32 %350, i32* %11, align 4
  %351 = load i32, i32* %11, align 4
  %352 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 19), align 8
  %353 = or i32 %352, %351
  store i32 %353, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 19), align 8
  br label %468

354:                                              ; preds = %344
  %355 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %356 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* noundef %355) #8
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %354
  %359 = load i8*, i8** %8, align 8
  %360 = call i32 @check_rangeset_option(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i8* noundef %359, i32 noundef 1022)
  store i32 %360, i32* %11, align 4
  %361 = load i32, i32* %11, align 4
  %362 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 20), align 4
  %363 = or i32 %362, %361
  store i32 %363, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 20), align 4
  br label %467

364:                                              ; preds = %354
  %365 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %366 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* noundef %365) #8
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %364
  %369 = load i8*, i8** %8, align 8
  %370 = call i32 @check_rangeset_option(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i8* noundef %369, i32 noundef 15)
  store i32 %370, i32* %11, align 4
  %371 = load i32, i32* %11, align 4
  %372 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 21), align 8
  %373 = or i32 %372, %371
  store i32 %373, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 21), align 8
  br label %466

374:                                              ; preds = %364
  %375 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %376 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i8* noundef %375) #8
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %392

378:                                              ; preds = %374
  %379 = load i8*, i8** %8, align 8
  %380 = call i32 @check_power2_option(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef %379, i32 noundef 8, i32 noundef 15)
  store i32 %380, i32* %12, align 4
  %381 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %378
  %384 = load i32, i32* %12, align 4
  store i32 %384, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  br label %391

385:                                              ; preds = %378
  %386 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  %387 = load i32, i32* %12, align 4
  %388 = icmp ne i32 %386, %387
  br i1 %388, label %389, label %390

389:                                              ; preds = %385
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0))
  br label %390

390:                                              ; preds = %389, %385
  br label %391

391:                                              ; preds = %390, %383
  br label %465

392:                                              ; preds = %374
  %393 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %394 = load i64, i64* %7, align 8
  %395 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i8* noundef %393, i64 noundef %394) #8
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %402

397:                                              ; preds = %392
  %398 = load i64, i64* %7, align 8
  %399 = icmp uge i64 %398, 2
  br i1 %399, label %400, label %402

400:                                              ; preds = %397
  %401 = load i8*, i8** %8, align 8
  call void @check_obj_option(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* noundef %401)
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 25), align 8
  br label %464

402:                                              ; preds = %397, %392
  %403 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %404 = load i64, i64* %7, align 8
  %405 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* noundef %403, i64 noundef %404) #8
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %423

407:                                              ; preds = %402
  %408 = load i64, i64* %7, align 8
  %409 = icmp uge i64 %408, 2
  br i1 %409, label %410, label %423

410:                                              ; preds = %407
  %411 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  %412 = icmp ne i8* %411, null
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.50, i64 0, i64 0))
  br label %414

414:                                              ; preds = %413, %410
  %415 = load i8*, i8** %8, align 8
  %416 = getelementptr inbounds i8, i8* %415, i64 0
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %414
  call void @err_option_arg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8* noundef null)
  br label %421

421:                                              ; preds = %420, %414
  %422 = load i8*, i8** %8, align 8
  store i8* %422, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  br label %463

423:                                              ; preds = %407, %402
  %424 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %425 = load i64, i64* %7, align 8
  %426 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8* noundef %424, i64 noundef %425) #8
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %441

428:                                              ; preds = %423
  %429 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %430 = icmp ne i8* %429, null
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.53, i64 0, i64 0))
  br label %432

432:                                              ; preds = %431, %428
  %433 = load i8*, i8** %8, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 0
  %435 = load i8, i8* %434, align 1
  %436 = sext i8 %435 to i32
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %432
  call void @err_option_arg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* noundef null)
  br label %439

439:                                              ; preds = %438, %432
  %440 = load i8*, i8** %8, align 8
  store i8* %440, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  br label %462

441:                                              ; preds = %423
  %442 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %443 = load i64, i64* %7, align 8
  %444 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* noundef %442, i64 noundef %443) #8
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %459

446:                                              ; preds = %441
  %447 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %449, label %450

449:                                              ; preds = %446
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.56, i64 0, i64 0))
  br label %450

450:                                              ; preds = %449, %446
  %451 = load i8*, i8** %8, align 8
  %452 = getelementptr inbounds i8, i8* %451, i64 0
  %453 = load i8, i8* %452, align 1
  %454 = sext i8 %453 to i32
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %450
  call void @err_option_arg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i8* noundef null)
  br label %457

457:                                              ; preds = %456, %450
  %458 = load i8*, i8** %8, align 8
  store i8* %458, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  br label %461

459:                                              ; preds = %441
  %460 = load i8*, i8** %5, align 8
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i64 0, i64 0), i8* noundef %460)
  br label %461

461:                                              ; preds = %459, %457
  br label %462

462:                                              ; preds = %461, %439
  br label %463

463:                                              ; preds = %462, %421
  br label %464

464:                                              ; preds = %463, %400
  br label %465

465:                                              ; preds = %464, %391
  br label %466

466:                                              ; preds = %465, %368
  br label %467

467:                                              ; preds = %466, %358
  br label %468

468:                                              ; preds = %467, %348
  br label %469

469:                                              ; preds = %468, %338
  br label %470

470:                                              ; preds = %469, %333
  br label %471

471:                                              ; preds = %470, %315
  br label %472

472:                                              ; preds = %471, %297
  br label %473

473:                                              ; preds = %472, %32
  %474 = load i32, i32* %14, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %14, align 4
  br label %15, !llvm.loop !4

476:                                              ; preds = %15
  %477 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  %478 = icmp ne i8* %477, null
  br i1 %478, label %479, label %488

479:                                              ; preds = %476
  %480 = load i32, i32* %13, align 4
  %481 = icmp ugt i32 %480, 1
  br i1 %481, label %482, label %483

482:                                              ; preds = %479
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i64 0, i64 0))
  br label %483

483:                                              ; preds = %482, %479
  %484 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %485 = icmp ne i8* %484, null
  br i1 %485, label %486, label %487

486:                                              ; preds = %483
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.60, i64 0, i64 0))
  br label %487

487:                                              ; preds = %486, %483
  br label %488

488:                                              ; preds = %487, %476
  %489 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %490 = icmp ne i8* %489, null
  br i1 %490, label %491, label %498

491:                                              ; preds = %488
  %492 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %493 = call i8* @opng_strtail(i8* noundef %492, i64 noundef 4)
  %494 = call i32 @opng_strcasecmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i8* noundef %493)
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %497

496:                                              ; preds = %491
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.62, i64 0, i64 0))
  br label %497

497:                                              ; preds = %496, %491
  br label %498

498:                                              ; preds = %497, %488
  %499 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 0), align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %502

501:                                              ; preds = %498
  store i32 1, i32* @operation, align 4
  br label %513

502:                                              ; preds = %498
  %503 = load i32, i32* %13, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %506

505:                                              ; preds = %502
  store i32 0, i32* @operation, align 4
  br label %512

506:                                              ; preds = %502
  %507 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 1), align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %510

509:                                              ; preds = %506
  store i32 2, i32* @operation, align 4
  br label %511

510:                                              ; preds = %506
  store i32 1, i32* @operation, align 4
  br label %511

511:                                              ; preds = %510, %509
  br label %512

512:                                              ; preds = %511, %505
  br label %513

513:                                              ; preds = %512, %501
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @app_init() #0 {
  store i32 1, i32* @start_of_line, align 4
  %1 = load i32, i32* @operation, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @operation, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** @con_file, align 8
  br label %15

8:                                                ; preds = %3
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 7), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %12, %struct._IO_FILE** @con_file, align 8
  br label %14

13:                                               ; preds = %8
  store %struct._IO_FILE* null, %struct._IO_FILE** @con_file, align 8
  br label %14

14:                                               ; preds = %13, %11
  br label %15

15:                                               ; preds = %14, %6
  %16 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %20 = call noalias %struct._IO_FILE* @fopen(i8* noundef %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0))
  store %struct._IO_FILE* %20, %struct._IO_FILE** @log_file, align 8
  %21 = icmp eq %struct._IO_FILE* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i64 0, i64 0), i8* noundef %23)
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8
  %26 = call i32 @setvbuf(%struct._IO_FILE* noundef %25, i8* noundef null, i32 noundef 1, i64 noundef 8192) #10
  call void (i8*, ...) @app_printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.72, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @app_printf(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %44

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* noundef %12) #8
  %14 = sub i64 %13, 1
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 10
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* @start_of_line, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @con_file, align 8
  %22 = icmp ne %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %10
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %25 = bitcast %struct.__va_list_tag* %24 to i8*
  call void @llvm.va_start(i8* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @con_file, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %29 = call i32 @vfprintf(%struct._IO_FILE* noundef %26, i8* noundef %27, %struct.__va_list_tag* noundef %28)
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %31 = bitcast %struct.__va_list_tag* %30 to i8*
  call void @llvm.va_end(i8* %31)
  br label %32

32:                                               ; preds = %23, %10
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8
  %34 = icmp ne %struct._IO_FILE* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %37 = bitcast %struct.__va_list_tag* %36 to i8*
  call void @llvm.va_start(i8* %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %41 = call i32 @vfprintf(%struct._IO_FILE* noundef %38, i8* noundef %39, %struct.__va_list_tag* noundef %40)
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %43 = bitcast %struct.__va_list_tag* %42 to i8*
  call void @llvm.va_end(i8* %43)
  br label %44

44:                                               ; preds = %9, %35, %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_files(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.opng_ui, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %6, i32 0, i32 0
  store void (i8*, ...)* @app_printf, void (i8*, ...)** %8, align 8
  %9 = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %6, i32 0, i32 1
  store void (i32)* @app_print_cntrl, void (i32)** %9, align 8
  %10 = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %6, i32 0, i32 2
  store void (i64, i64)* @app_progress, void (i64, i64)** %10, align 8
  %11 = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %6, i32 0, i32 3
  store void (i8*)* @panic, void (i8*)** %11, align 8
  %12 = call i32 @opng_initialize(%struct.opng_options* noundef @options, %struct.opng_ui* noundef %6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void @panic(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i64 0, i64 0))
  br label %15

15:                                               ; preds = %14, %2
  store i32 0, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %48, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %20
  %28 = load i8**, i8*** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27, %20
  br label %48

38:                                               ; preds = %27
  %39 = load i8**, i8*** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @opng_optimize(i8* noundef %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %38
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %16, !llvm.loop !6

51:                                               ; preds = %16
  %52 = call i32 @opng_finalize()
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  call void @panic(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.75, i64 0, i64 0))
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i8* @png_get_libpng_ver(%struct.png_struct_def* noundef) #1

declare dso_local i8* @zlibVersion() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @app_finish() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8
  %2 = icmp ne %struct._IO_FILE* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8
  %5 = call i32 @fclose(%struct._IO_FILE* noundef %4)
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_option(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8** noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 45
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %138

24:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %32, %24
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  br label %27, !llvm.loop !7

35:                                               ; preds = %27
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %117, %43
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* %8, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 @tolower(i32 noundef %52) #8
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 %54, i8* %58, align 1
  br label %59

59:                                               ; preds = %49, %44
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %59
  %69 = call i16** @__ctype_b_loc() #9
  %70 = load i16*, i16** %69, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %70, i64 %74
  %76 = load i16, i16* %75, align 2
  %77 = zext i16 %76 to i32
  %78 = and i32 %77, 8192
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %68, %59
  br label %81

81:                                               ; preds = %93, %80
  %82 = call i16** @__ctype_b_loc() #9
  %83 = load i16*, i16** %82, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %83, i64 %87
  %89 = load i16, i16* %88, align 2
  %90 = zext i16 %89 to i32
  %91 = and i32 %90, 8192
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %10, align 8
  br label %81, !llvm.loop !8

96:                                               ; preds = %81
  %97 = load i8*, i8** %10, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i8*, i8** %10, align 8
  br label %104

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i8* [ %102, %101 ], [ null, %103 ]
  %106 = load i8**, i8*** %9, align 8
  store i8* %105, i8** %106, align 8
  br label %118

107:                                              ; preds = %68
  %108 = load i8*, i8** %10, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 61
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %10, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load i8**, i8*** %9, align 8
  store i8* %115, i8** %116, align 8
  br label %118

117:                                              ; preds = %107
  br label %44

118:                                              ; preds = %112, %104
  %119 = load i64, i64* %8, align 8
  %120 = icmp ugt i64 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* %8, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %11, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8 0, i8* %130, align 1
  br label %136

131:                                              ; preds = %121
  %132 = load i8*, i8** %7, align 8
  %133 = load i64, i64* %8, align 8
  %134 = sub i64 %133, 1
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  store i8 0, i8* %135, align 1
  br label %136

136:                                              ; preds = %131, %126
  br label %137

137:                                              ; preds = %136, %118
  store i32 1, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %23
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @opng_strpbrk_digit(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  br label %4

4:                                                ; preds = %24, %1
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i8* null, i8** %2, align 8
  br label %27

10:                                               ; preds = %4
  %11 = call i16** @__ctype_b_loc() #9
  %12 = load i16*, i16** %11, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %12, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 2048
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = load i8*, i8** %3, align 8
  store i8* %23, i8** %2, align 8
  br label %27

24:                                               ; preds = %10
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  br label %4

27:                                               ; preds = %22, %9
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0))
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %11 = call i32 @vfprintf(%struct._IO_FILE* noundef %8, i8* noundef %9, %struct.__va_list_tag* noundef %10)
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_end(i8* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_num_option(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @opng_str2ulong(i64* noundef %9, i8* noundef %10, i32 noundef 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %9, align 8
  %15 = icmp ugt i64 %14, 2147483647
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %9, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %16, %13, %4
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  call void @err_option_arg(i8* noundef %27, i8* noundef %28)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_rangeset_option(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @opng_rangeset2bitset(i32* noundef %7, i8* noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %7, align 4
  br label %16

15:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %5, align 8
  call void @err_option_arg(i8* noundef %20, i8* noundef %21)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_power2_option(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @opng_str2ulong(i64* noundef %10, i8* noundef %12, i32 noundef 1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 62
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 62, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %38, %23
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = shl i64 1, %31
  %33 = load i64, i64* %10, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %45

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %25, !llvm.loop !9

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  call void @err_option_arg(i8* noundef %43, i8* noundef %44)
  store i32 -1, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_obj_option(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i8* noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %66

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %48, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %20, 65
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 90
  br i1 %29, label %47, label %30

30:                                               ; preds = %22, %14
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 97
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sle i32 %44, 122
  br i1 %45, label %47, label %46

46:                                               ; preds = %38, %30
  br label %51

47:                                               ; preds = %38, %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %11, !llvm.loop !10

51:                                               ; preds = %46, %11
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.66, i64 0, i64 0))
  br label %66

63:                                               ; preds = %54, %51
  %64 = load i8*, i8** %3, align 8
  %65 = load i8*, i8** %4, align 8
  call void @err_option_arg(i8* noundef %64, i8* noundef %65)
  br label %66

66:                                               ; preds = %9, %63, %62
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @err_option_arg(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @opng_strltrim(i8* noundef %8)
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7, %2
  %14 = load i8*, i8** %3, align 8
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i64 0, i64 0), i8* noundef %14)
  br label %18

15:                                               ; preds = %7
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %4, align 8
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i64 0, i64 0), i8* noundef %16, i8* noundef %17)
  br label %18

18:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opng_strcasecmp(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  %12 = sext i8 %11 to i32
  %13 = call i32 @tolower(i32 noundef %12) #8
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %5, align 8
  %16 = load i8, i8* %14, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 @tolower(i32 noundef %17) #8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %8
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %31

30:                                               ; preds = %26
  br label %8

31:                                               ; preds = %29, %22
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @opng_strtail(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* noundef %7) #8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %3, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i64, i64* %5, align 8
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %14, %12
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opng_str2ulong(i64* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @opng_strltrim(i8* noundef %11)
  store i8* %12, i8** %9, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sge i32 %15, 48
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sle i32 %20, 57
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strtoul(i8* noundef %23, i8** noundef %9, i32 noundef 10) #10
  %25 = load i64*, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %17, %3
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = call i32* @__errno_location() #9
  store i32 22, i32* %31, align 4
  %32 = load i64*, i64** %5, align 8
  store i64 0, i64* %32, align 8
  store i32 -1, i32* %4, align 4
  br label %96

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 107
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %9, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 75
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %36
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  store i64 1024, i64* %10, align 8
  br label %68

49:                                               ; preds = %41
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 77
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  store i64 1048576, i64* %10, align 8
  br label %67

57:                                               ; preds = %49
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 71
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  store i64 1073741824, i64* %10, align 8
  br label %66

65:                                               ; preds = %57
  store i64 1, i64* %10, align 8
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %66, %54
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i64, i64* %10, align 8
  %70 = icmp ugt i64 %69, 1
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i64*, i64** %5, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = udiv i64 -1, %74
  %76 = icmp ugt i64 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = call i32* @__errno_location() #9
  store i32 34, i32* %78, align 4
  %79 = load i64*, i64** %5, align 8
  store i64 -1, i64* %79, align 8
  br label %85

80:                                               ; preds = %71
  %81 = load i64, i64* %10, align 8
  %82 = load i64*, i64** %5, align 8
  %83 = load i64, i64* %82, align 8
  %84 = mul i64 %83, %81
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %80, %77
  br label %86

86:                                               ; preds = %85, %68
  br label %87

87:                                               ; preds = %86, %33
  %88 = load i8*, i8** %9, align 8
  %89 = call i8* @opng_strltrim(i8* noundef %88)
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = call i32* @__errno_location() #9
  store i32 22, i32* %94, align 4
  store i32 -1, i32* %4, align 4
  br label %96

95:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %93, %30
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @opng_strltrim(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %15, %1
  %4 = call i16** @__ctype_b_loc() #9
  %5 = load i16*, i16** %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i16, i16* %5, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 8192
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %2, align 8
  br label %3, !llvm.loop !11

18:                                               ; preds = %3
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) #7

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opng_rangeset2bitset(i32* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @opng_rangeset_string_to_bitset(i8* noundef %7, i64* noundef %6)
  %9 = load i32*, i32** %4, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = call i8* @opng_strltrim(i8* noundef %15)
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12, %2
  %21 = call i32* @__errno_location() #9
  store i32 22, i32* %21, align 4
  store i32 -1, i32* %3, align 4
  br label %23

22:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @opng_rangeset_string_to_bitset(i8* noundef, i64* noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @setvbuf(%struct._IO_FILE* noundef, i8* noundef, i32 noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @app_print_cntrl(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 13
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i8** %4, align 8
  store i32 1, i32* @start_of_line, align 4
  br label %46

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 11
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @start_of_line, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i8** %3, align 8
  store i32 1, i32* @start_of_line, align 4
  br label %17

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %17

17:                                               ; preds = %16, %15
  br label %45

18:                                               ; preds = %9
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = icmp sgt i32 %22, -80
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load i32, i32* @start_of_line, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @con_file, align 8
  %29 = icmp ne %struct._IO_FILE* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %38, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @con_file, align 8
  %37 = call i32 @fputc(i32 noundef 32, %struct._IO_FILE* noundef %36)
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  br label %31, !llvm.loop !12

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i8** %4, align 8
  br label %44

43:                                               ; preds = %24, %21, %18
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0), i8** %3, align 8
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %17
  br label %46

46:                                               ; preds = %45, %8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @con_file, align 8
  %48 = icmp ne %struct._IO_FILE* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i8*, i8** %3, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @con_file, align 8
  %52 = call i32 @fputs(i8* noundef %50, %struct._IO_FILE* noundef %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8
  %55 = icmp ne %struct._IO_FILE* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8
  %59 = call i32 @fputs(i8* noundef %57, %struct._IO_FILE* noundef %58)
  br label %60

60:                                               ; preds = %56, %53
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @app_progress(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @con_file, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @con_file, align 8
  %9 = call i32 @fflush(%struct._IO_FILE* noundef %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %13, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panic(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.78, i64 0, i64 0), i8* noundef %4)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.79, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 @fflush(%struct._IO_FILE* noundef %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 2), align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void @abort() #11
  unreachable

13:                                               ; preds = %1
  call void @osys_terminate()
  br label %14

14:                                               ; preds = %13
  ret void
}

declare dso_local i32 @opng_initialize(%struct.opng_options* noundef, %struct.opng_ui* noundef) #1

declare dso_local i32 @opng_optimize(i8* noundef) #1

declare dso_local i32 @opng_finalize() #1

declare dso_local i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #6

declare dso_local void @osys_terminate() #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind willreturn }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

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
