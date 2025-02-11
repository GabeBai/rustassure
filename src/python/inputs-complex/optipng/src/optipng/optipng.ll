; ModuleID = 'optipng.c'
source_filename = "optipng.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.anon = type { i32, i32 }
%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.png_struct_def = type opaque
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
@__stderrp = external global %struct.__sFILE*, align 8
@.str.63 = private unnamed_addr constant [11 x i8] c"** Error: \00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.66 = private unnamed_addr constant [53 x i8] c"Manipulation of individual chunks is not implemented\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Missing argument for option %s\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"Invalid argument for option %s: %s\00", align 1
@start_of_line = internal global i32 0, align 4
@__stdoutp = external global %struct.__sFILE*, align 8
@con_file = internal global %struct.__sFILE* null, align 8
@.str.69 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@log_file = internal global %struct.__sFILE* null, align 8
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %0, i8** noundef %1) #0 {
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parse_args(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [16 x i8], align 1
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

15:                                               ; preds = %455, %2
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %458

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
  br label %455

35:                                               ; preds = %27
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %37 = call i64 @strlen(i8* noundef %36)
  store i64 %37, i64* %7, align 8
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* null, i8** %41, align 8
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = call i8* @strchr(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %44)
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = call i32 @isdigit(i32 noundef %50) #7
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %47, %35
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 122
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = call i32 @isalpha(i32 noundef %61) #7
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = call i32 @isdigit(i32 noundef %67) #7
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %64, %47
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %72 = call i8* @opng_strpbrk_digit(i8* noundef %71)
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %5, align 8
  %80 = call i8* @opng_strpbrk_digit(i8* noundef %79)
  store i8* %80, i8** %8, align 8
  br label %81

81:                                               ; preds = %70, %64, %58, %53
  store i32 1, i32* %9, align 4
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %83 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* noundef %82)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* %10, align 4
  br label %271

86:                                               ; preds = %81
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %88 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef %87)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef %91, i64 noundef %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %86
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 0), align 4
  br label %270

96:                                               ; preds = %90
  %97 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @strncmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %97, i64 noundef %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %102, i64 noundef %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101, %96
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 0), align 8
  br label %269

107:                                              ; preds = %101
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @strncmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef %108, i64 noundef %109)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 1), align 4
  br label %268

113:                                              ; preds = %107
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %115 = call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef %114)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 2), align 8
  br label %267

118:                                              ; preds = %113
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef %119, i64 noundef %120)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i64, i64* %7, align 8
  %125 = icmp uge i64 %124, 2
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 3), align 4
  br label %266

127:                                              ; preds = %123, %118
  %128 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* noundef %128, i64 noundef %129)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i64, i64* %7, align 8
  %134 = icmp uge i64 %133, 2
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 4), align 8
  br label %265

136:                                              ; preds = %132, %127
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %138 = load i64, i64* %7, align 8
  %139 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef %137, i64 noundef %138)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i64, i64* %7, align 8
  %143 = icmp uge i64 %142, 2
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 5), align 4
  br label %264

145:                                              ; preds = %141, %136
  %146 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %147 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* noundef %146)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 14), align 4
  br label %263

150:                                              ; preds = %145
  %151 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %152 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* noundef %151)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 15), align 8
  br label %262

155:                                              ; preds = %150
  %156 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %157 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* noundef %156)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 16), align 4
  br label %261

160:                                              ; preds = %155
  %161 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %162 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* noundef %161)
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 16), align 4
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 15), align 8
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 14), align 4
  br label %260

165:                                              ; preds = %160
  %166 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %167 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %166)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 17), align 8
  br label %259

170:                                              ; preds = %165
  %171 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %172 = load i64, i64* %7, align 8
  %173 = call i32 @strncmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* noundef %171, i64 noundef %172)
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 6), align 8
  br label %258

176:                                              ; preds = %170
  %177 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %178 = load i64, i64* %7, align 8
  %179 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* noundef %177, i64 noundef %178)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %183 = load i64, i64* %7, align 8
  %184 = call i32 @strncmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef %182, i64 noundef %183)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load i64, i64* %7, align 8
  %188 = icmp uge i64 %187, 3
  br i1 %188, label %189, label %190

189:                                              ; preds = %186, %176
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 7), align 4
  br label %257

190:                                              ; preds = %186, %181
  %191 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %192 = load i64, i64* %7, align 8
  %193 = call i32 @strncmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* noundef %191, i64 noundef %192)
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load i64, i64* %7, align 8
  %197 = icmp uge i64 %196, 3
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 8), align 8
  br label %256

199:                                              ; preds = %195, %190
  %200 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %201 = load i64, i64* %7, align 8
  %202 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* noundef %200, i64 noundef %201)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load i64, i64* %7, align 8
  %206 = icmp uge i64 %205, 2
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  br label %255

208:                                              ; preds = %204, %199
  %209 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %210 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef %209)
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 9), align 4
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 1), align 4
  br label %254

213:                                              ; preds = %208
  %214 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %215 = load i64, i64* %7, align 8
  %216 = call i32 @strncmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* noundef %214, i64 noundef %215)
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load i64, i64* %7, align 8
  %220 = icmp uge i64 %219, 4
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 9), align 4
  br label %253

222:                                              ; preds = %218, %213
  %223 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %224 = load i64, i64* %7, align 8
  %225 = call i32 @strncmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* noundef %223, i64 noundef %224)
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = load i64, i64* %7, align 8
  %229 = icmp uge i64 %228, 4
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 1), align 4
  br label %252

231:                                              ; preds = %227, %222
  store i32 0, i32* %9, align 4
  %232 = load i8*, i8** %8, align 8
  %233 = icmp eq i8* %232, null
  br i1 %233, label %234, label %251

234:                                              ; preds = %231
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %14, align 4
  %237 = load i32, i32* %3, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %249

239:                                              ; preds = %234
  %240 = load i8**, i8*** %4, align 8
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** %8, align 8
  %245 = load i8**, i8*** %4, align 8
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  store i8* null, i8** %248, align 8
  br label %250

249:                                              ; preds = %234
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i8** %8, align 8
  br label %250

250:                                              ; preds = %249, %239
  br label %251

251:                                              ; preds = %250, %231
  br label %252

252:                                              ; preds = %251, %230
  br label %253

253:                                              ; preds = %252, %221
  br label %254

254:                                              ; preds = %253, %212
  br label %255

255:                                              ; preds = %254, %207
  br label %256

256:                                              ; preds = %255, %198
  br label %257

257:                                              ; preds = %256, %189
  br label %258

258:                                              ; preds = %257, %175
  br label %259

259:                                              ; preds = %258, %169
  br label %260

260:                                              ; preds = %259, %164
  br label %261

261:                                              ; preds = %260, %159
  br label %262

262:                                              ; preds = %261, %154
  br label %263

263:                                              ; preds = %262, %149
  br label %264

264:                                              ; preds = %263, %144
  br label %265

265:                                              ; preds = %264, %135
  br label %266

266:                                              ; preds = %265, %126
  br label %267

267:                                              ; preds = %266, %117
  br label %268

268:                                              ; preds = %267, %112
  br label %269

269:                                              ; preds = %268, %106
  br label %270

270:                                              ; preds = %269, %95
  br label %271

271:                                              ; preds = %270, %85
  %272 = load i32, i32* %9, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %271
  %275 = load i8*, i8** %8, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = load i8*, i8** %5, align 8
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* noundef %278)
  br label %279

279:                                              ; preds = %277, %274
  br label %454

280:                                              ; preds = %271
  %281 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %282 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i8* noundef %281)
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %298

284:                                              ; preds = %280
  %285 = load i8*, i8** %8, align 8
  %286 = call i32 @check_num_option(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* noundef %285, i32 noundef 0, i32 noundef 2147483647)
  store i32 %286, i32* %12, align 4
  %287 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %284
  %290 = load i32, i32* %12, align 4
  store i32 %290, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  br label %297

291:                                              ; preds = %284
  %292 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  %293 = load i32, i32* %12, align 4
  %294 = icmp ne i32 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %291
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i64 0, i64 0))
  br label %296

296:                                              ; preds = %295, %291
  br label %297

297:                                              ; preds = %296, %289
  br label %453

298:                                              ; preds = %280
  %299 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %300 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8* noundef %299)
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %316

302:                                              ; preds = %298
  %303 = load i8*, i8** %8, align 8
  %304 = call i32 @check_num_option(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* noundef %303, i32 noundef 0, i32 noundef 1)
  store i32 %304, i32* %12, align 4
  %305 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %302
  %308 = load i32, i32* %12, align 4
  store i32 %308, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  br label %315

309:                                              ; preds = %302
  %310 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  %311 = load i32, i32* %12, align 4
  %312 = icmp ne i32 %310, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %309
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i64 0, i64 0))
  br label %314

314:                                              ; preds = %313, %309
  br label %315

315:                                              ; preds = %314, %307
  br label %452

316:                                              ; preds = %298
  %317 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %318 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* noundef %317)
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %316
  %321 = load i8*, i8** %8, align 8
  %322 = call i32 @check_rangeset_option(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* noundef %321, i32 noundef 63)
  store i32 %322, i32* %11, align 4
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 22), align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 22), align 4
  br label %451

326:                                              ; preds = %316
  %327 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %328 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* noundef %327)
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %326
  %331 = load i8*, i8** %8, align 8
  %332 = call i32 @check_rangeset_option(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* noundef %331, i32 noundef 1022)
  store i32 %332, i32* %11, align 4
  %333 = load i32, i32* %11, align 4
  %334 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 19), align 8
  %335 = or i32 %334, %333
  store i32 %335, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 19), align 8
  br label %450

336:                                              ; preds = %326
  %337 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %338 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* noundef %337)
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %336
  %341 = load i8*, i8** %8, align 8
  %342 = call i32 @check_rangeset_option(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i8* noundef %341, i32 noundef 1022)
  store i32 %342, i32* %11, align 4
  %343 = load i32, i32* %11, align 4
  %344 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 20), align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 20), align 4
  br label %449

346:                                              ; preds = %336
  %347 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %348 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* noundef %347)
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %346
  %351 = load i8*, i8** %8, align 8
  %352 = call i32 @check_rangeset_option(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i8* noundef %351, i32 noundef 15)
  store i32 %352, i32* %11, align 4
  %353 = load i32, i32* %11, align 4
  %354 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 21), align 8
  %355 = or i32 %354, %353
  store i32 %355, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 21), align 8
  br label %448

356:                                              ; preds = %346
  %357 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %358 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i8* noundef %357)
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %374

360:                                              ; preds = %356
  %361 = load i8*, i8** %8, align 8
  %362 = call i32 @check_power2_option(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef %361, i32 noundef 8, i32 noundef 15)
  store i32 %362, i32* %12, align 4
  %363 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %360
  %366 = load i32, i32* %12, align 4
  store i32 %366, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  br label %373

367:                                              ; preds = %360
  %368 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  %369 = load i32, i32* %12, align 4
  %370 = icmp ne i32 %368, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %367
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0))
  br label %372

372:                                              ; preds = %371, %367
  br label %373

373:                                              ; preds = %372, %365
  br label %447

374:                                              ; preds = %356
  %375 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %376 = load i64, i64* %7, align 8
  %377 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i8* noundef %375, i64 noundef %376)
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %374
  %380 = load i64, i64* %7, align 8
  %381 = icmp uge i64 %380, 2
  br i1 %381, label %382, label %384

382:                                              ; preds = %379
  %383 = load i8*, i8** %8, align 8
  call void @check_obj_option(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* noundef %383)
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 25), align 8
  br label %446

384:                                              ; preds = %379, %374
  %385 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %386 = load i64, i64* %7, align 8
  %387 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* noundef %385, i64 noundef %386)
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %405

389:                                              ; preds = %384
  %390 = load i64, i64* %7, align 8
  %391 = icmp uge i64 %390, 2
  br i1 %391, label %392, label %405

392:                                              ; preds = %389
  %393 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  %394 = icmp ne i8* %393, null
  br i1 %394, label %395, label %396

395:                                              ; preds = %392
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.50, i64 0, i64 0))
  br label %396

396:                                              ; preds = %395, %392
  %397 = load i8*, i8** %8, align 8
  %398 = getelementptr inbounds i8, i8* %397, i64 0
  %399 = load i8, i8* %398, align 1
  %400 = sext i8 %399 to i32
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %396
  call void @err_option_arg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8* noundef null)
  br label %403

403:                                              ; preds = %402, %396
  %404 = load i8*, i8** %8, align 8
  store i8* %404, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  br label %445

405:                                              ; preds = %389, %384
  %406 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %407 = load i64, i64* %7, align 8
  %408 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8* noundef %406, i64 noundef %407)
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %423

410:                                              ; preds = %405
  %411 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %412 = icmp ne i8* %411, null
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.53, i64 0, i64 0))
  br label %414

414:                                              ; preds = %413, %410
  %415 = load i8*, i8** %8, align 8
  %416 = getelementptr inbounds i8, i8* %415, i64 0
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %414
  call void @err_option_arg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* noundef null)
  br label %421

421:                                              ; preds = %420, %414
  %422 = load i8*, i8** %8, align 8
  store i8* %422, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  br label %444

423:                                              ; preds = %405
  %424 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %425 = load i64, i64* %7, align 8
  %426 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* noundef %424, i64 noundef %425)
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %441

428:                                              ; preds = %423
  %429 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %430 = icmp ne i8* %429, null
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.56, i64 0, i64 0))
  br label %432

432:                                              ; preds = %431, %428
  %433 = load i8*, i8** %8, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 0
  %435 = load i8, i8* %434, align 1
  %436 = sext i8 %435 to i32
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %432
  call void @err_option_arg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i8* noundef null)
  br label %439

439:                                              ; preds = %438, %432
  %440 = load i8*, i8** %8, align 8
  store i8* %440, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  br label %443

441:                                              ; preds = %423
  %442 = load i8*, i8** %5, align 8
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i64 0, i64 0), i8* noundef %442)
  br label %443

443:                                              ; preds = %441, %439
  br label %444

444:                                              ; preds = %443, %421
  br label %445

445:                                              ; preds = %444, %403
  br label %446

446:                                              ; preds = %445, %382
  br label %447

447:                                              ; preds = %446, %373
  br label %448

448:                                              ; preds = %447, %350
  br label %449

449:                                              ; preds = %448, %340
  br label %450

450:                                              ; preds = %449, %330
  br label %451

451:                                              ; preds = %450, %320
  br label %452

452:                                              ; preds = %451, %315
  br label %453

453:                                              ; preds = %452, %297
  br label %454

454:                                              ; preds = %453, %279
  br label %455

455:                                              ; preds = %454, %32
  %456 = load i32, i32* %14, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %14, align 4
  br label %15, !llvm.loop !10

458:                                              ; preds = %15
  %459 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  %460 = icmp ne i8* %459, null
  br i1 %460, label %461, label %470

461:                                              ; preds = %458
  %462 = load i32, i32* %13, align 4
  %463 = icmp ugt i32 %462, 1
  br i1 %463, label %464, label %465

464:                                              ; preds = %461
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i64 0, i64 0))
  br label %465

465:                                              ; preds = %464, %461
  %466 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %467 = icmp ne i8* %466, null
  br i1 %467, label %468, label %469

468:                                              ; preds = %465
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.60, i64 0, i64 0))
  br label %469

469:                                              ; preds = %468, %465
  br label %470

470:                                              ; preds = %469, %458
  %471 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %472 = icmp ne i8* %471, null
  br i1 %472, label %473, label %480

473:                                              ; preds = %470
  %474 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %475 = call i8* @opng_strtail(i8* noundef %474, i64 noundef 4)
  %476 = call i32 @opng_strcasecmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i8* noundef %475)
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %473
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.62, i64 0, i64 0))
  br label %479

479:                                              ; preds = %478, %473
  br label %480

480:                                              ; preds = %479, %470
  %481 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 0), align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %480
  store i32 1, i32* @operation, align 4
  br label %495

484:                                              ; preds = %480
  %485 = load i32, i32* %13, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %484
  store i32 0, i32* @operation, align 4
  br label %494

488:                                              ; preds = %484
  %489 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 1), align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %488
  store i32 2, i32* @operation, align 4
  br label %493

492:                                              ; preds = %488
  store i32 1, i32* @operation, align 4
  br label %493

493:                                              ; preds = %492, %491
  br label %494

494:                                              ; preds = %493, %487
  br label %495

495:                                              ; preds = %494, %483
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  store %struct.__sFILE* %7, %struct.__sFILE** @con_file, align 8
  br label %15

8:                                                ; preds = %3
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 7), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %12, %struct.__sFILE** @con_file, align 8
  br label %14

13:                                               ; preds = %8
  store %struct.__sFILE* null, %struct.__sFILE** @con_file, align 8
  br label %14

14:                                               ; preds = %13, %11
  br label %15

15:                                               ; preds = %14, %6
  %16 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %20 = call %struct.__sFILE* @"\01_fopen"(i8* noundef %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0))
  store %struct.__sFILE* %20, %struct.__sFILE** @log_file, align 8
  %21 = icmp eq %struct.__sFILE* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  call void (i8*, ...) @error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i64 0, i64 0), i8* noundef %23)
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.__sFILE*, %struct.__sFILE** @log_file, align 8
  %26 = call i32 @setvbuf(%struct.__sFILE* noundef %25, i8* noundef null, i32 noundef 1, i64 noundef 1024)
  call void (i8*, ...) @app_printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.72, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @app_printf(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %40

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* noundef %12)
  %14 = sub i64 %13, 1
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 10
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* @start_of_line, align 4
  %21 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %22 = icmp ne %struct.__sFILE* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %10
  %24 = bitcast i8** %3 to i8*
  call void @llvm.va_start(i8* %24)
  %25 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @vfprintf(%struct.__sFILE* noundef %25, i8* noundef %26, i8* noundef %27)
  %29 = bitcast i8** %3 to i8*
  call void @llvm.va_end(i8* %29)
  br label %30

30:                                               ; preds = %23, %10
  %31 = load %struct.__sFILE*, %struct.__sFILE** @log_file, align 8
  %32 = icmp ne %struct.__sFILE* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = bitcast i8** %3 to i8*
  call void @llvm.va_start(i8* %34)
  %35 = load %struct.__sFILE*, %struct.__sFILE** @log_file, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @vfprintf(%struct.__sFILE* noundef %35, i8* noundef %36, i8* noundef %37)
  %39 = bitcast i8** %3 to i8*
  call void @llvm.va_end(i8* %39)
  br label %40

40:                                               ; preds = %9, %33, %30
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  br label %16, !llvm.loop !12

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

declare i8* @png_get_libpng_ver(%struct.png_struct_def* noundef) #1

declare i8* @zlibVersion() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @app_finish() #0 {
  %1 = load %struct.__sFILE*, %struct.__sFILE** @log_file, align 8
  %2 = icmp ne %struct.__sFILE* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct.__sFILE*, %struct.__sFILE** @log_file, align 8
  %5 = call i32 @fclose(%struct.__sFILE* noundef %4)
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  br label %126

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
  br label %27, !llvm.loop !13

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

44:                                               ; preds = %105, %43
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* %8, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 @tolower(i32 noundef %52) #7
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
  br i1 %67, label %74, label %68

68:                                               ; preds = %59
  %69 = load i8*, i8** %10, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = call i32 @isspace(i32 noundef %71) #7
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %68, %59
  br label %75

75:                                               ; preds = %81, %74
  %76 = load i8*, i8** %10, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = call i32 @isspace(i32 noundef %78) #7
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %10, align 8
  br label %75, !llvm.loop !14

84:                                               ; preds = %75
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i8*, i8** %10, align 8
  br label %92

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i8* [ %90, %89 ], [ null, %91 ]
  %94 = load i8**, i8*** %9, align 8
  store i8* %93, i8** %94, align 8
  br label %106

95:                                               ; preds = %68
  %96 = load i8*, i8** %10, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 61
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %10, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load i8**, i8*** %9, align 8
  store i8* %103, i8** %104, align 8
  br label %106

105:                                              ; preds = %95
  br label %44

106:                                              ; preds = %100, %92
  %107 = load i64, i64* %8, align 8
  %108 = icmp ugt i64 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %8, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 0, i8* %118, align 1
  br label %124

119:                                              ; preds = %109
  %120 = load i8*, i8** %7, align 8
  %121 = load i64, i64* %8, align 8
  %122 = sub i64 %121, 1
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 0, i8* %123, align 1
  br label %124

124:                                              ; preds = %119, %114
  br label %125

125:                                              ; preds = %124, %106
  store i32 1, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %23
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare i64 @strlen(i8* noundef) #1

declare i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isdigit(i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @isalpha(i32 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @opng_strpbrk_digit(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i8* null, i8** %2, align 8
  br label %21

10:                                               ; preds = %4
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 @isdigit(i32 noundef %13) #7
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %2, align 8
  br label %21

18:                                               ; preds = %10
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  br label %4

21:                                               ; preds = %16, %9
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare i32 @strcmp(i8* noundef, i8* noundef) #1

declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @error(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0))
  %6 = bitcast i8** %3 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @vfprintf(%struct.__sFILE* noundef %7, i8* noundef %8, i8* noundef %9)
  %11 = bitcast i8** %3 to i8*
  call void @llvm.va_end(i8* %11)
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %13 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0))
  call void @exit(i32 noundef 1) #8
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  br label %25, !llvm.loop !15

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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @check_obj_option(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i8* noundef %6)
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
  br label %11, !llvm.loop !16

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

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %13 = call i32 @tolower(i32 noundef %12) #7
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %5, align 8
  %16 = load i8, i8* %14, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 @tolower(i32 noundef %17) #7
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @opng_strtail(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* noundef %7)
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
declare i32 @tolower(i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #3

declare i32 @fprintf(%struct.__sFILE* noundef, i8* noundef, ...) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

declare i32 @vfprintf(%struct.__sFILE* noundef, i8* noundef, i8* noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noreturn
declare void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %24 = call i64 @strtoul(i8* noundef %23, i8** noundef %9, i32 noundef 10)
  %25 = load i64*, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %17, %3
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = call i32* @__error()
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
  %78 = call i32* @__error()
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
  %94 = call i32* @__error()
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @opng_strltrim(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %9, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = call i32 @isspace(i32 noundef %6) #7
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %2, align 8
  br label %3, !llvm.loop !17

12:                                               ; preds = %3
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
}

declare i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) #1

declare i32* @__error() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %21 = call i32* @__error()
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

declare i32 @opng_rangeset_string_to_bitset(i8* noundef, i64* noundef) #1

declare %struct.__sFILE* @"\01_fopen"(i8* noundef, i8* noundef) #1

declare i32 @setvbuf(%struct.__sFILE* noundef, i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %28 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %29 = icmp ne %struct.__sFILE* %28, null
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
  %36 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %37 = call i32 @fputc(i32 noundef 32, %struct.__sFILE* noundef %36)
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  br label %31, !llvm.loop !18

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
  %47 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %48 = icmp ne %struct.__sFILE* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i8*, i8** %3, align 8
  %51 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %52 = call i32 @"\01_fputs"(i8* noundef %50, %struct.__sFILE* noundef %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.__sFILE*, %struct.__sFILE** @log_file, align 8
  %55 = icmp ne %struct.__sFILE* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.__sFILE*, %struct.__sFILE** @log_file, align 8
  %59 = call i32 @"\01_fputs"(i8* noundef %57, %struct.__sFILE* noundef %58)
  br label %60

60:                                               ; preds = %56, %53
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @app_progress(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %6 = icmp ne %struct.__sFILE* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %9 = call i32 @fflush(%struct.__sFILE* noundef %8)
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @panic(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.78, i64 0, i64 0), i8* noundef %4)
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %6, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.79, i64 0, i64 0))
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %9 = call i32 @fflush(%struct.__sFILE* noundef %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 2), align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void @abort() #9
  unreachable

13:                                               ; preds = %1
  call void @osys_terminate()
  br label %14

14:                                               ; preds = %13
  ret void
}

declare i32 @opng_initialize(%struct.opng_options* noundef, %struct.opng_ui* noundef) #1

declare i32 @opng_optimize(i8* noundef) #1

declare i32 @opng_finalize() #1

declare i32 @fputc(i32 noundef, %struct.__sFILE* noundef) #1

declare i32 @"\01_fputs"(i8* noundef, %struct.__sFILE* noundef) #1

declare i32 @fflush(%struct.__sFILE* noundef) #1

; Function Attrs: cold noreturn
declare void @abort() #6

declare void @osys_terminate() #1

declare i32 @fclose(%struct.__sFILE* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { noreturn }
attributes #9 = { cold noreturn }

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
