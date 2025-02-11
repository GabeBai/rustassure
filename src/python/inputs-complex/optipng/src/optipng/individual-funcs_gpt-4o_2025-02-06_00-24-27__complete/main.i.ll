; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/main.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/main.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.anon = type { i32, i32 }
%struct.png_struct_def = type opaque

@.str = private unnamed_addr constant [90 x i8] c"OptiPNG version 0.7.6\0ACopyright (C) 2001-2016 Cosmin Truta and the Contributing Authors.\0A\00", align 1
@msg_intro = global i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [295 x i8] c"This program is open-source software. See LICENSE for more details.\0A\0APortions of this software are based in part on the work of:\0A  Jean-loup Gailly and Mark Adler (zlib)\0A  Glenn Randers-Pehrson and the PNG Development Group (libpng)\0A  Miyasaka Masaru (BMP support)\0A  David Koblas (GIF support)\0A\00", align 1
@msg_license = global i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [102 x i8] c"Synopsis:\0A    optipng [options] files ...\0AFiles:\0A    Image files of type: PNG, BMP, GIF, PNM or TIFF\0A\00", align 1
@msg_help_synopsis = global i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [175 x i8] c"Basic options:\0A    -?, -h, -help\09show the extended help\0A    -o <level>\09\09optimization level (0-7)\09\09[default: 2]\0A    -v\09\09\09run in verbose mode / show copyright and version info\0A\00", align 1
@msg_help_basic_options = global i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.3, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [2045 x i8] c"Basic options:\0A    -?, -h, -help\09show this help\0A    -o <level>\09\09optimization level (0-7)\09\09[default: 2]\0A    -v\09\09\09run in verbose mode / show copyright and version info\0AGeneral options:\0A    -backup, -keep\09keep a backup of the modified files\0A    -clobber\09\09overwrite existing files\0A    -fix\09\09enable error recovery\0A    -force\09\09enforce writing of a new output file\0A    -preserve\09\09preserve file attributes if possible\0A    -quiet, -silent\09run in quiet mode\0A    -simulate\09\09run in simulation mode\0A    -out <file>\09\09write output file to <file>\0A    -dir <directory>\09write output file(s) to <directory>\0A    -log <file>\09\09log messages to <file>\0A    --\09\09\09stop option switch parsing\0AOptimization options:\0A    -f <filters>\09PNG delta filters (0-5)\09\09\09[default: 0,5]\0A    -i <type>\09\09PNG interlace type (0-1)\0A    -zc <levels>\09zlib compression levels (1-9)\09\09[default: 9]\0A    -zm <levels>\09zlib memory levels (1-9)\09\09[default: 8]\0A    -zs <strategies>\09zlib compression strategies (0-3)\09[default: 0-3]\0A    -zw <size>\09\09zlib window size (256,512,1k,2k,4k,8k,16k,32k)\0A    -full\09\09produce a full report on IDAT (might reduce speed)\0A    -nb\09\09\09no bit depth reduction\0A    -nc\09\09\09no color type reduction\0A    -np\09\09\09no palette reduction\0A    -nx\09\09\09no reductions\0A    -nz\09\09\09no IDAT recoding\0AEditing options:\0A    -snip\09\09cut one image out of multi-image or animation files\0A    -strip <objects>\09strip metadata objects (e.g. \22all\22)\0AOptimization levels:\0A    -o0\09\09<=>\09-o1 -nx -nz\09\09\09\09(0 or 1 trials)\0A    -o1\09\09<=>\09-zc9 -zm8 -zs0 -f0\09\09\09(1 trial)\0A    \09\09(or...)\09-zc9 -zm8 -zs1 -f5\09\09\09(1 trial)\0A    -o2\09\09<=>\09-zc9 -zm8 -zs0-3 -f0,5\09\09\09(8 trials)\0A    -o3\09\09<=>\09-zc9 -zm8-9 -zs0-3 -f0,5\09\09(16 trials)\0A    -o4\09\09<=>\09-zc9 -zm8 -zs0-3 -f0-5\09\09\09(24 trials)\0A    -o5\09\09<=>\09-zc9 -zm8-9 -zs0-3 -f0-5\09\09(48 trials)\0A    -o6\09\09<=>\09-zc1-9 -zm8 -zs0-3 -f0-5\09\09(120 trials)\0A    -o7\09\09<=>\09-zc1-9 -zm8-9 -zs0-3 -f0-5\09\09(240 trials)\0A    -o7 -zm1-9\09<=>\09-zc1-9 -zm1-9 -zs0-3 -f0-5\09\09(1080 trials)\0ANotes:\0A    The combination for -o1 is chosen heuristically.\0A    Exhaustive combinations such as \22-o7 -zm1-9\22 are not generally recommended.\0A\00", align 1
@msg_help_options = global i8* getelementptr inbounds ([2045 x i8], [2045 x i8]* @.str.4, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [130 x i8] c"Examples:\0A    optipng file.png\09\09\09\09\09\09(default speed)\0A    optipng -o5 file.png\09\09\09\09\09(slow)\0A    optipng -o7 file.png\09\09\09\09\09(very slow)\0A\00", align 1
@msg_help_examples = global i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.5, i32 0, i32 0), align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"Type \22optipng -h\22 for extended help.\0A\00", align 1
@msg_help_more = global i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), align 8
@local_options = global %struct.anon zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@operation = global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Using libpng version %s and zlib version %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %result = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 bitcast (i32 (...)* @parse_args to i32 (i32, i8**)*)(i32 noundef %0, i8** noundef %1)
  %call1 = call i32 bitcast (i32 (...)* @app_init to i32 ()*)()
  store i32 0, i32* %result, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** @msg_intro, align 8
  %call2 = call i32 bitcast (i32 (...)* @app_printf to i32 (i8*, i8*)*)(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @operation, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load i32, i32* %argc.addr, align 4
  %6 = load i8**, i8*** %argv.addr, align 8
  %call3 = call i32 bitcast (i32 (...)* @process_files to i32 (i32, i8**)*)(i32 noundef %5, i8** noundef %6)
  store i32 %call3, i32* %result, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %7 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 0), align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.bb4
  %8 = load i8*, i8** @msg_help_synopsis, align 8
  %9 = load i8*, i8** @msg_help_options, align 8
  %10 = load i8*, i8** @msg_help_examples, align 8
  %call7 = call i32 bitcast (i32 (...)* @app_printf to i32 (i8*, i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %8, i8* noundef %9, i8* noundef %10)
  br label %if.end9

if.else:                                          ; preds = %sw.bb4
  %11 = load i8*, i8** @msg_help_synopsis, align 8
  %12 = load i8*, i8** @msg_help_basic_options, align 8
  %13 = load i8*, i8** @msg_help_examples, align 8
  %14 = load i8*, i8** @msg_help_more, align 8
  %call8 = call i32 bitcast (i32 (...)* @app_printf to i32 (i8*, i8*, i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef %11, i8* noundef %12, i8* noundef %13, i8* noundef %14)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %15 = load i8*, i8** @msg_license, align 8
  %call11 = call i32 bitcast (i32 (...)* @app_printf to i32 (i8*, i8*)*)(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %15)
  %call12 = call i8* @png_get_libpng_ver(%struct.png_struct_def* noundef null)
  %call13 = call i8* @zlibVersion()
  %call14 = call i32 bitcast (i32 (...)* @app_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call12, i8* noundef %call13)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -1, i32* %result, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %if.end9, %sw.bb
  %call15 = call i32 bitcast (i32 (...)* @app_finish to i32 ()*)()
  %16 = load i32, i32* %result, align 4
  ret i32 %16
}

declare i32 @parse_args(...) #1

declare i32 @app_init(...) #1

declare i32 @app_printf(...) #1

declare i32 @process_files(...) #1

declare i8* @png_get_libpng_ver(%struct.png_struct_def* noundef) #1

declare i8* @zlibVersion() #1

declare i32 @app_finish(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
!9 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git 6fd4c483fd129052982b4c7498e7ea910578ab6c)"}
