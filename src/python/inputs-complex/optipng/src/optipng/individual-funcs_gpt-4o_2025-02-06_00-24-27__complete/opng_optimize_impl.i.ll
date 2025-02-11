; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize_impl.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize_impl.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_process_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.exception_context = type { [48 x i32]*, i32, %struct.anon }
%struct.anon = type { i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@process = global %struct.opng_process_struct zeroinitializer, align 8
@options = global %struct.opng_options zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't open the input file\00", align 1
@the_exception_context = global [1 x %struct.exception_context] zeroinitializer, align 8
@usr_panic = global void (i8*)* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Mysterious error in opng_read_file\00", align 1
@usr_printf = global void (i8*, ...)* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Recoverable errors found in input.\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" Fixing...\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c" Rerun OptiPNG with -fix enabled.\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Previous error(s) not fixed\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"IDAT recoding is necessary, but is disabled by the user.\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Can't continue\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Digital signature found in input.\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c" Erasing...\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c" Rerun OptiPNG with -force enabled.\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Can't optimize digitally-signed files\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"Conversion to PNG requires snipping. Rerun OptiPNG with -snip enabled.\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Incompatible input format\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Stripping metadata...\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"Can't create the output file (name too long)\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Can't create backup file (name too long)\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"The output file exists. Rerun OptiPNG with -backup enabled.\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Can't overwrite the output file\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"fw\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Can't back up the existing output file\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Input IDAT size = %lu bytes\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"Input file size = %lu bytes\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"\0A%s is already optimized.\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"\0ANo output: simulation mode.\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"\0AOutput file: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Can't back up the output file\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Can't back up the input file\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Can't open the output file\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Can't reopen the input file\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"Can't reposition the input file\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"Mysterious error in opng_copy_file\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"Can't recover the original file from backup\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"Overwrote input with no temporary backup\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"Can't remove the broken output file\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"Can't remove the backup file\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"\0AOutput IDAT size = %lu bytes\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"\0AOutput file size = %lu bytes (\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_optimize_impl(i8* noundef %infile_name) #0 {
entry:
  %infile_name.addr = alloca i8*, align 8
  %infile = alloca %struct.__sFILE*, align 8
  %outfile = alloca %struct.__sFILE*, align 8
  %infile_name_local = alloca i8*, align 8
  %outfile_name = alloca i8*, align 8
  %bakfile_name = alloca i8*, align 8
  %new_outfile = alloca i32, align 4
  %has_backup = alloca i32, align 4
  %name_buf = alloca [1024 x i8], align 1
  %tmp_buf = alloca [1024 x i8], align 1
  %err_msg = alloca i8*, align 8
  %exception__prev = alloca [48 x i32]*, align 8
  %exception__env = alloca [48 x i32], align 4
  %tmp_name = alloca i8*, align 8
  %test_eq = alloca i32, align 4
  %exception__prev258 = alloca [48 x i32]*, align 8
  %exception__env259 = alloca [48 x i32], align 4
  %exception__prev287 = alloca [48 x i32]*, align 8
  %exception__env288 = alloca [48 x i32], align 4
  store i8* %infile_name, i8** %infile_name.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.opng_process_struct* @process to i8*), i8 0, i64 112, i1 false)
  %0 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 4), align 8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or = or i32 %1, 8192
  store i32 %or, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store volatile i8* null, i8** %err_msg, align 8
  %2 = load i8*, i8** %infile_name.addr, align 8
  store i8* %2, i8** %infile_name_local, align 8
  %3 = load i8*, i8** %infile_name_local, align 8
  %call = call %struct.__sFILE* @"\01_fopen"(i8* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.__sFILE* %call, %struct.__sFILE** %infile, align 8
  %cmp = icmp eq %struct.__sFILE* %call, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.then1
  store volatile i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc

for.inc:                                          ; preds = %for.cond
  %4 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %4, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay, i32 noundef 1) #6
  unreachable

if.end2:                                          ; preds = %if.end
  %5 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %5, [48 x i32]** %exception__prev, align 8
  store [48 x i32]* %exception__env, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay3 = getelementptr inbounds [48 x i32], [48 x i32]* %exception__env, i64 0, i64 0
  %call4 = call i32 @setjmp(i32* noundef %arraydecay3) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then6
  %6 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8
  %call7 = call i32 bitcast (i32 (...)* @opng_read_file to i32 (%struct.__sFILE*)*)(%struct.__sFILE* noundef %6)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %7 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  br label %if.end9

if.else:                                          ; preds = %if.end2
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %do.end
  %8 = load volatile [48 x i32]*, [48 x i32]** %exception__prev, align 8
  store [48 x i32]* %8, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %9 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %if.end9
  %10 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %10, i8** %err_msg, align 8
  br i1 false, label %if.then11, label %if.else12

if.then11:                                        ; preds = %lor.lhs.false, %if.end9
  br label %if.end16

if.else12:                                        ; preds = %lor.lhs.false
  %11 = load volatile i8*, i8** %err_msg, align 8
  %cmp13 = icmp ne i8* %11, null
  br i1 %cmp13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.else12
  %12 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %12(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.else12
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then11
  %13 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8
  %call17 = call i32 @fclose(%struct.__sFILE* noundef %13)
  %14 = load volatile i8*, i8** %err_msg, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end16
  br label %for.cond20

for.cond20:                                       ; preds = %if.then19
  %15 = load volatile i8*, i8** %err_msg, align 8
  store volatile i8* %15, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc21

for.inc21:                                        ; preds = %for.cond20
  %16 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay22 = getelementptr inbounds [48 x i32], [48 x i32]* %16, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay22, i32 noundef 1) #6
  unreachable

if.end23:                                         ; preds = %if.end16
  %17 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and = and i32 %17, 256
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then25, label %if.end34

if.then25:                                        ; preds = %if.end23
  %18 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %18(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 3), align 4
  %tobool26 = icmp ne i32 %19, 0
  br i1 %tobool26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.then25
  %20 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %20(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %21 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or28 = or i32 %21, 4096
  store i32 %or28, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end33

if.else29:                                        ; preds = %if.then25
  %22 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %22(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %for.cond30

for.cond30:                                       ; preds = %if.else29
  store volatile i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc31

for.inc31:                                        ; preds = %for.cond30
  %23 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay32 = getelementptr inbounds [48 x i32], [48 x i32]* %23, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay32, i32 noundef 1) #6
  unreachable

if.end33:                                         ; preds = %if.then27
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end23
  %24 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and35 = and i32 %24, 128
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  %25 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or38 = or i32 %25, 4096
  store i32 %or38, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34
  %26 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and40 = and i32 %26, 4
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.end39
  %27 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or43 = or i32 %27, 4096
  store i32 %or43, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39
  %28 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and45 = and i32 %28, 2
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.else56

if.then47:                                        ; preds = %if.end44
  %29 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 17), align 8
  %tobool48 = icmp ne i32 %29, 0
  br i1 %tobool48, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %if.then47
  %30 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and49 = and i32 %30, 8192
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then51, label %if.end55

if.then51:                                        ; preds = %land.lhs.true
  %31 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %31(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  br label %for.cond52

for.cond52:                                       ; preds = %if.then51
  store volatile i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc53

for.inc53:                                        ; preds = %for.cond52
  %32 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay54 = getelementptr inbounds [48 x i32], [48 x i32]* %32, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay54, i32 noundef 1) #6
  unreachable

if.end55:                                         ; preds = %land.lhs.true, %if.then47
  br label %if.end58

if.else56:                                        ; preds = %if.end44
  %33 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or57 = or i32 %33, 8192
  store i32 %or57, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.end55
  %34 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and59 = and i32 %34, 8
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then61, label %if.end70

if.then61:                                        ; preds = %if.end58
  %35 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %35(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %36 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 4), align 8
  %tobool62 = icmp ne i32 %36, 0
  br i1 %tobool62, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.then61
  %37 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %37(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %38 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or64 = or i32 %38, 4096
  store i32 %or64, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end69

if.else65:                                        ; preds = %if.then61
  %39 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %39(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  br label %for.cond66

for.cond66:                                       ; preds = %if.else65
  store volatile i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc67

for.inc67:                                        ; preds = %for.cond66
  %40 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay68 = getelementptr inbounds [48 x i32], [48 x i32]* %40, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay68, i32 noundef 1) #6
  unreachable

if.end69:                                         ; preds = %if.then63
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end58
  %41 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and71 = and i32 %41, 16
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then73, label %if.end83

if.then73:                                        ; preds = %if.end70
  %42 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %tobool74 = icmp ne i32 %42, 0
  br i1 %tobool74, label %if.end82, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %if.then73
  %43 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and76 = and i32 %43, 1
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.end82, label %if.then78

if.then78:                                        ; preds = %land.lhs.true75
  %44 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %44(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i64 0, i64 0))
  br label %for.cond79

for.cond79:                                       ; preds = %if.then78
  store volatile i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc80

for.inc80:                                        ; preds = %for.cond79
  %45 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay81 = getelementptr inbounds [48 x i32], [48 x i32]* %45, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay81, i32 noundef 1) #6
  unreachable

if.end82:                                         ; preds = %land.lhs.true75, %if.then73
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end70
  %46 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and84 = and i32 %46, 32
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %land.lhs.true86, label %if.end90

land.lhs.true86:                                  ; preds = %if.end83
  %47 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %tobool87 = icmp ne i32 %47, 0
  br i1 %tobool87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %land.lhs.true86
  %48 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or89 = or i32 %48, 4096
  store i32 %or89, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %land.lhs.true86, %if.end83
  %49 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and91 = and i32 %49, 64
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end90
  %50 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %50(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end90
  store i8* null, i8** %outfile_name, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and95 = and i32 %51, 1
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.end107, label %if.then97

if.then97:                                        ; preds = %if.end94
  %arraydecay98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %name_buf, i64 0, i64 0
  %52 = load i8*, i8** %infile_name_local, align 8
  %call99 = call i8* @osys_path_chext(i8* noundef %arraydecay98, i64 noundef 1024, i8* noundef %52, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %cmp100 = icmp eq i8* %call99, null
  br i1 %cmp100, label %if.then101, label %if.end105

if.then101:                                       ; preds = %if.then97
  br label %for.cond102

for.cond102:                                      ; preds = %if.then101
  store volatile i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc103

for.inc103:                                       ; preds = %for.cond102
  %53 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay104 = getelementptr inbounds [48 x i32], [48 x i32]* %53, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay104, i32 noundef 1) #6
  unreachable

if.end105:                                        ; preds = %if.then97
  %arraydecay106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %name_buf, i64 0, i64 0
  store i8* %arraydecay106, i8** %outfile_name, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.end105, %if.end94
  %54 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  %cmp108 = icmp ne i8* %54, null
  br i1 %cmp108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end107
  %55 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  store i8* %55, i8** %outfile_name, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.end107
  %56 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %cmp111 = icmp ne i8* %56, null
  br i1 %cmp111, label %if.then112, label %if.end129

if.then112:                                       ; preds = %if.end110
  %57 = load i8*, i8** %outfile_name, align 8
  %cmp113 = icmp ne i8* %57, null
  br i1 %cmp113, label %if.then114, label %if.else118

if.then114:                                       ; preds = %if.then112
  %arraydecay115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp_buf, i64 0, i64 0
  %58 = load i8*, i8** %outfile_name, align 8
  %call116 = call i8* @__strcpy_chk(i8* noundef %arraydecay115, i8* noundef %58, i64 noundef 1024) #8
  %arraydecay117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp_buf, i64 0, i64 0
  store i8* %arraydecay117, i8** %tmp_name, align 8
  br label %if.end119

if.else118:                                       ; preds = %if.then112
  %59 = load i8*, i8** %infile_name_local, align 8
  store i8* %59, i8** %tmp_name, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.else118, %if.then114
  %arraydecay120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %name_buf, i64 0, i64 0
  %60 = load i8*, i8** %tmp_name, align 8
  %61 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %call121 = call i8* @osys_path_chdir(i8* noundef %arraydecay120, i64 noundef 1024, i8* noundef %60, i8* noundef %61)
  %cmp122 = icmp eq i8* %call121, null
  br i1 %cmp122, label %if.then123, label %if.end127

if.then123:                                       ; preds = %if.end119
  br label %for.cond124

for.cond124:                                      ; preds = %if.then123
  store volatile i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc125

for.inc125:                                       ; preds = %for.cond124
  %62 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay126 = getelementptr inbounds [48 x i32], [48 x i32]* %62, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay126, i32 noundef 1) #6
  unreachable

if.end127:                                        ; preds = %if.end119
  %arraydecay128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %name_buf, i64 0, i64 0
  store i8* %arraydecay128, i8** %outfile_name, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.end127, %if.end110
  %63 = load i8*, i8** %outfile_name, align 8
  %cmp130 = icmp eq i8* %63, null
  br i1 %cmp130, label %if.then131, label %if.else132

if.then131:                                       ; preds = %if.end129
  %64 = load i8*, i8** %infile_name_local, align 8
  store i8* %64, i8** %outfile_name, align 8
  store i32 0, i32* %new_outfile, align 4
  br label %if.end142

if.else132:                                       ; preds = %if.end129
  %65 = load i8*, i8** %infile_name_local, align 8
  %66 = load i8*, i8** %outfile_name, align 8
  %call133 = call i32 @osys_test_eq(i8* noundef %65, i8* noundef %66)
  store i32 %call133, i32* %test_eq, align 4
  %67 = load i32, i32* %test_eq, align 4
  %cmp134 = icmp sge i32 %67, 0
  br i1 %cmp134, label %if.then135, label %if.else137

if.then135:                                       ; preds = %if.else132
  %68 = load i32, i32* %test_eq, align 4
  %cmp136 = icmp eq i32 %68, 0
  %conv = zext i1 %cmp136 to i32
  store i32 %conv, i32* %new_outfile, align 4
  br label %if.end141

if.else137:                                       ; preds = %if.else132
  %69 = load i8*, i8** %infile_name_local, align 8
  %70 = load i8*, i8** %outfile_name, align 8
  %call138 = call i32 @strcmp(i8* noundef %69, i8* noundef %70)
  %cmp139 = icmp ne i32 %call138, 0
  %conv140 = zext i1 %cmp139 to i32
  store i32 %conv140, i32* %new_outfile, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.else137, %if.then135
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.then131
  %arraydecay143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp_buf, i64 0, i64 0
  store i8* %arraydecay143, i8** %bakfile_name, align 8
  %71 = load i32, i32* %new_outfile, align 4
  %tobool144 = icmp ne i32 %71, 0
  br i1 %tobool144, label %if.then145, label %if.else152

if.then145:                                       ; preds = %if.end142
  %arraydecay146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp_buf, i64 0, i64 0
  %72 = load i8*, i8** %outfile_name, align 8
  %call147 = call i8* @osys_path_mkbak(i8* noundef %arraydecay146, i64 noundef 1024, i8* noundef %72)
  %cmp148 = icmp eq i8* %call147, null
  br i1 %cmp148, label %if.then150, label %if.end151

if.then150:                                       ; preds = %if.then145
  store i8* null, i8** %bakfile_name, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then150, %if.then145
  br label %if.end159

if.else152:                                       ; preds = %if.end142
  %arraydecay153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp_buf, i64 0, i64 0
  %73 = load i8*, i8** %infile_name_local, align 8
  %call154 = call i8* @osys_path_mkbak(i8* noundef %arraydecay153, i64 noundef 1024, i8* noundef %73)
  %cmp155 = icmp eq i8* %call154, null
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.else152
  store i8* null, i8** %bakfile_name, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %if.else152
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.end151
  %74 = load i8*, i8** %bakfile_name, align 8
  %cmp160 = icmp eq i8* %74, null
  br i1 %cmp160, label %if.then162, label %if.end166

if.then162:                                       ; preds = %if.end159
  br label %for.cond163

for.cond163:                                      ; preds = %if.then162
  store volatile i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc164

for.inc164:                                       ; preds = %for.cond163
  %75 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay165 = getelementptr inbounds [48 x i32], [48 x i32]* %75, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay165, i32 noundef 1) #6
  unreachable

if.end166:                                        ; preds = %if.end159
  %76 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 8), align 8
  %tobool167 = icmp ne i32 %76, 0
  br i1 %tobool167, label %if.end197, label %land.lhs.true168

land.lhs.true168:                                 ; preds = %if.end166
  %77 = load i8*, i8** %outfile_name, align 8
  %call169 = call i32 @osys_test(i8* noundef %77, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.then172, label %if.end197

if.then172:                                       ; preds = %land.lhs.true168
  %78 = load i32, i32* %new_outfile, align 4
  %tobool173 = icmp ne i32 %78, 0
  br i1 %tobool173, label %land.lhs.true174, label %if.end182

land.lhs.true174:                                 ; preds = %if.then172
  %79 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 0), align 8
  %tobool175 = icmp ne i32 %79, 0
  br i1 %tobool175, label %if.end182, label %land.lhs.true176

land.lhs.true176:                                 ; preds = %land.lhs.true174
  %80 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 1), align 4
  %tobool177 = icmp ne i32 %80, 0
  br i1 %tobool177, label %if.end182, label %if.then178

if.then178:                                       ; preds = %land.lhs.true176
  %81 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %81(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.20, i64 0, i64 0))
  br label %for.cond179

for.cond179:                                      ; preds = %if.then178
  store volatile i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc180

for.inc180:                                       ; preds = %for.cond179
  %82 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay181 = getelementptr inbounds [48 x i32], [48 x i32]* %82, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay181, i32 noundef 1) #6
  unreachable

if.end182:                                        ; preds = %land.lhs.true176, %land.lhs.true174, %if.then172
  %83 = load i8*, i8** %outfile_name, align 8
  %call183 = call i32 @osys_test(i8* noundef %83, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %cmp184 = icmp ne i32 %call183, 0
  br i1 %cmp184, label %if.then192, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %if.end182
  %84 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 1), align 4
  %tobool187 = icmp ne i32 %84, 0
  br i1 %tobool187, label %if.end196, label %land.lhs.true188

land.lhs.true188:                                 ; preds = %lor.lhs.false186
  %85 = load i8*, i8** %bakfile_name, align 8
  %call189 = call i32 @osys_test(i8* noundef %85, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %cmp190 = icmp eq i32 %call189, 0
  br i1 %cmp190, label %if.then192, label %if.end196

if.then192:                                       ; preds = %land.lhs.true188, %if.end182
  br label %for.cond193

for.cond193:                                      ; preds = %if.then192
  store volatile i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc194

for.inc194:                                       ; preds = %for.cond193
  %86 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay195 = getelementptr inbounds [48 x i32], [48 x i32]* %86, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay195, i32 noundef 1) #6
  unreachable

if.end196:                                        ; preds = %land.lhs.true188, %lor.lhs.false186
  br label %if.end197

if.end197:                                        ; preds = %if.end196, %land.lhs.true168, %if.end166
  %87 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and198 = and i32 %87, 2
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.then200, label %if.end201

if.then200:                                       ; preds = %if.end197
  %88 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  call void (i8*, ...) %88(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i64 noundef %89)
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %if.end197
  %90 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %91 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  call void (i8*, ...) %90(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i64 noundef %91)
  %92 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 17), align 8
  %tobool202 = icmp ne i32 %92, 0
  br i1 %tobool202, label %lor.lhs.false203, label %if.then206

lor.lhs.false203:                                 ; preds = %if.end201
  %93 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and204 = and i32 %93, 8192
  %tobool205 = icmp ne i32 %and204, 0
  br i1 %tobool205, label %if.then206, label %if.end210

if.then206:                                       ; preds = %lor.lhs.false203, %if.end201
  %call207 = call i32 bitcast (i32 (...)* @opng_init_iterations to i32 ()*)()
  %call208 = call i32 bitcast (i32 (...)* @opng_iterate to i32 ()*)()
  %call209 = call i32 bitcast (i32 (...)* @opng_finish_iterations to i32 ()*)()
  br label %if.end210

if.end210:                                        ; preds = %if.then206, %lor.lhs.false203
  %94 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and211 = and i32 %94, 8192
  %tobool212 = icmp ne i32 %and211, 0
  br i1 %tobool212, label %if.then213, label %if.end216

if.then213:                                       ; preds = %if.end210
  %95 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or214 = or i32 %95, 4096
  store i32 %or214, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %96 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %call215 = call i32 bitcast (i32 (...)* @opng_check_idat_size to i32 (i64)*)(i64 noundef %96)
  br label %if.end216

if.end216:                                        ; preds = %if.then213, %if.end210
  %97 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and217 = and i32 %97, 4096
  %tobool218 = icmp ne i32 %and217, 0
  br i1 %tobool218, label %if.end223, label %if.then219

if.then219:                                       ; preds = %if.end216
  %98 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %99 = load i8*, i8** %infile_name_local, align 8
  call void (i8*, ...) %98(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i8* noundef %99)
  %100 = load i32, i32* %new_outfile, align 4
  %tobool220 = icmp ne i32 %100, 0
  br i1 %tobool220, label %if.end222, label %if.then221

if.then221:                                       ; preds = %if.then219
  br label %return

if.end222:                                        ; preds = %if.then219
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %if.end216
  %101 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 8), align 8
  %tobool224 = icmp ne i32 %101, 0
  br i1 %tobool224, label %if.then225, label %if.end226

if.then225:                                       ; preds = %if.end223
  %102 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %102(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0))
  br label %return

if.end226:                                        ; preds = %if.end223
  %103 = load i32, i32* %new_outfile, align 4
  %tobool227 = icmp ne i32 %103, 0
  br i1 %tobool227, label %if.then228, label %if.else247

if.then228:                                       ; preds = %if.end226
  %104 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %105 = load i8*, i8** %outfile_name, align 8
  call void (i8*, ...) %104(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i8* noundef %105)
  %106 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %cmp229 = icmp ne i8* %106, null
  br i1 %cmp229, label %if.then231, label %if.end233

if.then231:                                       ; preds = %if.then228
  %107 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %call232 = call i32 @osys_create_dir(i8* noundef %107)
  br label %if.end233

if.end233:                                        ; preds = %if.then231, %if.then228
  store i32 0, i32* %has_backup, align 4
  %108 = load i8*, i8** %outfile_name, align 8
  %call234 = call i32 @osys_test(i8* noundef %108, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %cmp235 = icmp eq i32 %call234, 0
  br i1 %cmp235, label %if.then237, label %if.end246

if.then237:                                       ; preds = %if.end233
  %109 = load i8*, i8** %outfile_name, align 8
  %110 = load i8*, i8** %bakfile_name, align 8
  %111 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 1), align 4
  %call238 = call i32 @osys_rename(i8* noundef %109, i8* noundef %110, i32 noundef %111)
  %cmp239 = icmp ne i32 %call238, 0
  br i1 %cmp239, label %if.then241, label %if.end245

if.then241:                                       ; preds = %if.then237
  br label %for.cond242

for.cond242:                                      ; preds = %if.then241
  store volatile i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc243

for.inc243:                                       ; preds = %for.cond242
  %112 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay244 = getelementptr inbounds [48 x i32], [48 x i32]* %112, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay244, i32 noundef 1) #6
  unreachable

if.end245:                                        ; preds = %if.then237
  store i32 1, i32* %has_backup, align 4
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %if.end233
  br label %if.end256

if.else247:                                       ; preds = %if.end226
  %113 = load i8*, i8** %infile_name_local, align 8
  %114 = load i8*, i8** %bakfile_name, align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 1), align 4
  %call248 = call i32 @osys_rename(i8* noundef %113, i8* noundef %114, i32 noundef %115)
  %cmp249 = icmp ne i32 %call248, 0
  br i1 %cmp249, label %if.then251, label %if.end255

if.then251:                                       ; preds = %if.else247
  br label %for.cond252

for.cond252:                                      ; preds = %if.then251
  store volatile i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc253

for.inc253:                                       ; preds = %for.cond252
  %116 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay254 = getelementptr inbounds [48 x i32], [48 x i32]* %116, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay254, i32 noundef 1) #6
  unreachable

if.end255:                                        ; preds = %if.else247
  store i32 1, i32* %has_backup, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.end255, %if.end246
  %117 = load i8*, i8** %outfile_name, align 8
  %call257 = call %struct.__sFILE* @"\01_fopen"(i8* noundef %117, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  store %struct.__sFILE* %call257, %struct.__sFILE** %outfile, align 8
  %118 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %118, [48 x i32]** %exception__prev258, align 8
  store [48 x i32]* %exception__env259, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay260 = getelementptr inbounds [48 x i32], [48 x i32]* %exception__env259, i64 0, i64 0
  %call261 = call i32 @setjmp(i32* noundef %arraydecay260) #7
  %cmp262 = icmp eq i32 %call261, 0
  br i1 %cmp262, label %if.then264, label %if.else333

if.then264:                                       ; preds = %if.end256
  br label %do.body265

do.body265:                                       ; preds = %do.cond330, %if.then264
  %119 = load %struct.__sFILE*, %struct.__sFILE** %outfile, align 8
  %cmp266 = icmp eq %struct.__sFILE* %119, null
  br i1 %cmp266, label %if.then268, label %if.end272

if.then268:                                       ; preds = %do.body265
  br label %for.cond269

for.cond269:                                      ; preds = %if.then268
  store volatile i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc270

for.inc270:                                       ; preds = %for.cond269
  %120 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay271 = getelementptr inbounds [48 x i32], [48 x i32]* %120, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay271, i32 noundef 1) #6
  unreachable

if.end272:                                        ; preds = %do.body265
  %121 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and273 = and i32 %121, 8192
  %tobool274 = icmp ne i32 %and273, 0
  br i1 %tobool274, label %if.then275, label %if.else277

if.then275:                                       ; preds = %if.end272
  %122 = load %struct.__sFILE*, %struct.__sFILE** %outfile, align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 16), align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 17), align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 18), align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 19), align 8
  %call276 = call i32 bitcast (i32 (...)* @opng_write_file to i32 (%struct.__sFILE*, i32, i32, i32, i32)*)(%struct.__sFILE* noundef %122, i32 noundef %123, i32 noundef %124, i32 noundef %125, i32 noundef %126)
  br label %if.end329

if.else277:                                       ; preds = %if.end272
  %127 = load i32, i32* %new_outfile, align 4
  %tobool278 = icmp ne i32 %127, 0
  br i1 %tobool278, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else277
  %128 = load i8*, i8** %infile_name_local, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else277
  %129 = load i8*, i8** %bakfile_name, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %128, %cond.true ], [ %129, %cond.false ]
  %call279 = call %struct.__sFILE* @"\01_fopen"(i8* noundef %cond, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.__sFILE* %call279, %struct.__sFILE** %infile, align 8
  %130 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8
  %cmp280 = icmp eq %struct.__sFILE* %130, null
  br i1 %cmp280, label %if.then282, label %if.end286

if.then282:                                       ; preds = %cond.end
  br label %for.cond283

for.cond283:                                      ; preds = %if.then282
  store volatile i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc284

for.inc284:                                       ; preds = %for.cond283
  %131 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay285 = getelementptr inbounds [48 x i32], [48 x i32]* %131, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay285, i32 noundef 1) #6
  unreachable

if.end286:                                        ; preds = %cond.end
  %132 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %132, [48 x i32]** %exception__prev287, align 8
  store [48 x i32]* %exception__env288, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay289 = getelementptr inbounds [48 x i32], [48 x i32]* %exception__env288, i64 0, i64 0
  %call290 = call i32 @setjmp(i32* noundef %arraydecay289) #7
  %cmp291 = icmp eq i32 %call290, 0
  br i1 %cmp291, label %if.then293, label %if.else310

if.then293:                                       ; preds = %if.end286
  br label %do.body294

do.body294:                                       ; preds = %do.cond307, %if.then293
  %133 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 2), align 8
  %cmp295 = icmp sgt i64 %133, 0
  br i1 %cmp295, label %land.lhs.true297, label %if.end305

land.lhs.true297:                                 ; preds = %do.body294
  %134 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8
  %135 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 2), align 8
  %call298 = call i32 @osys_fseeko(%struct.__sFILE* noundef %134, i64 noundef %135, i32 noundef 0)
  %cmp299 = icmp ne i32 %call298, 0
  br i1 %cmp299, label %if.then301, label %if.end305

if.then301:                                       ; preds = %land.lhs.true297
  br label %for.cond302

for.cond302:                                      ; preds = %if.then301
  store volatile i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc303

for.inc303:                                       ; preds = %for.cond302
  %136 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay304 = getelementptr inbounds [48 x i32], [48 x i32]* %136, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay304, i32 noundef 1) #6
  unreachable

if.end305:                                        ; preds = %land.lhs.true297, %do.body294
  %137 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  store i64 %137, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %138 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8
  %139 = load %struct.__sFILE*, %struct.__sFILE** %outfile, align 8
  %call306 = call i32 bitcast (i32 (...)* @opng_copy_file to i32 (%struct.__sFILE*, %struct.__sFILE*)*)(%struct.__sFILE* noundef %138, %struct.__sFILE* noundef %139)
  br label %do.cond307

do.cond307:                                       ; preds = %if.end305
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %140 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool308 = icmp ne i32 %140, 0
  br i1 %tobool308, label %do.body294, label %do.end309, !llvm.loop !12

do.end309:                                        ; preds = %do.cond307
  br label %if.end311

if.else310:                                       ; preds = %if.end286
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %if.end311

if.end311:                                        ; preds = %if.else310, %do.end309
  %141 = load volatile [48 x i32]*, [48 x i32]** %exception__prev287, align 8
  store [48 x i32]* %141, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %142 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool312 = icmp ne i32 %142, 0
  br i1 %tobool312, label %lor.lhs.false313, label %if.then314

lor.lhs.false313:                                 ; preds = %if.end311
  %143 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %143, i8** %err_msg, align 8
  br i1 false, label %if.then314, label %if.else315

if.then314:                                       ; preds = %lor.lhs.false313, %if.end311
  br label %if.end320

if.else315:                                       ; preds = %lor.lhs.false313
  %144 = load volatile i8*, i8** %err_msg, align 8
  %cmp316 = icmp ne i8* %144, null
  br i1 %cmp316, label %if.end319, label %if.then318

if.then318:                                       ; preds = %if.else315
  %145 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %145(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i64 0, i64 0))
  br label %if.end319

if.end319:                                        ; preds = %if.then318, %if.else315
  br label %if.end320

if.end320:                                        ; preds = %if.end319, %if.then314
  %146 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8
  %call321 = call i32 @fclose(%struct.__sFILE* noundef %146)
  %147 = load volatile i8*, i8** %err_msg, align 8
  %cmp322 = icmp ne i8* %147, null
  br i1 %cmp322, label %if.then324, label %if.end328

if.then324:                                       ; preds = %if.end320
  br label %for.cond325

for.cond325:                                      ; preds = %if.then324
  %148 = load volatile i8*, i8** %err_msg, align 8
  store volatile i8* %148, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc326

for.inc326:                                       ; preds = %for.cond325
  %149 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay327 = getelementptr inbounds [48 x i32], [48 x i32]* %149, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay327, i32 noundef 1) #6
  unreachable

if.end328:                                        ; preds = %if.end320
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %if.then275
  br label %do.cond330

do.cond330:                                       ; preds = %if.end329
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %150 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool331 = icmp ne i32 %150, 0
  br i1 %tobool331, label %do.body265, label %do.end332, !llvm.loop !13

do.end332:                                        ; preds = %do.cond330
  br label %if.end334

if.else333:                                       ; preds = %if.end256
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %if.end334

if.end334:                                        ; preds = %if.else333, %do.end332
  %151 = load volatile [48 x i32]*, [48 x i32]** %exception__prev258, align 8
  store [48 x i32]* %151, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %152 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool335 = icmp ne i32 %152, 0
  br i1 %tobool335, label %lor.lhs.false336, label %if.then337

lor.lhs.false336:                                 ; preds = %if.end334
  %153 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %153, i8** %err_msg, align 8
  br i1 false, label %if.then337, label %if.else338

if.then337:                                       ; preds = %lor.lhs.false336, %if.end334
  br label %if.end371

if.else338:                                       ; preds = %lor.lhs.false336
  %154 = load %struct.__sFILE*, %struct.__sFILE** %outfile, align 8
  %cmp339 = icmp ne %struct.__sFILE* %154, null
  br i1 %cmp339, label %if.then341, label %if.end343

if.then341:                                       ; preds = %if.else338
  %155 = load %struct.__sFILE*, %struct.__sFILE** %outfile, align 8
  %call342 = call i32 @fclose(%struct.__sFILE* noundef %155)
  br label %if.end343

if.end343:                                        ; preds = %if.then341, %if.else338
  %156 = load i32, i32* %has_backup, align 4
  %tobool344 = icmp ne i32 %156, 0
  br i1 %tobool344, label %if.then345, label %if.else357

if.then345:                                       ; preds = %if.end343
  %157 = load i8*, i8** %bakfile_name, align 8
  %158 = load i32, i32* %new_outfile, align 4
  %tobool346 = icmp ne i32 %158, 0
  br i1 %tobool346, label %cond.true347, label %cond.false348

cond.true347:                                     ; preds = %if.then345
  %159 = load i8*, i8** %outfile_name, align 8
  br label %cond.end349

cond.false348:                                    ; preds = %if.then345
  %160 = load i8*, i8** %infile_name_local, align 8
  br label %cond.end349

cond.end349:                                      ; preds = %cond.false348, %cond.true347
  %cond350 = phi i8* [ %159, %cond.true347 ], [ %160, %cond.false348 ]
  %call351 = call i32 @osys_rename(i8* noundef %157, i8* noundef %cond350, i32 noundef 1)
  %cmp352 = icmp ne i32 %call351, 0
  br i1 %cmp352, label %if.then354, label %if.end356

if.then354:                                       ; preds = %cond.end349
  %call355 = call i32 bitcast (i32 (...)* @opng_print_warning to i32 (i8*)*)(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i64 0, i64 0))
  br label %if.end356

if.end356:                                        ; preds = %if.then354, %cond.end349
  br label %if.end367

if.else357:                                       ; preds = %if.end343
  %161 = load i32, i32* %new_outfile, align 4
  %tobool358 = icmp ne i32 %161, 0
  br i1 %tobool358, label %if.end360, label %if.then359

if.then359:                                       ; preds = %if.else357
  %162 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %162(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i64 0, i64 0))
  br label %if.end360

if.end360:                                        ; preds = %if.then359, %if.else357
  %163 = load i8*, i8** %outfile_name, align 8
  %call361 = call i32 @osys_unlink(i8* noundef %163)
  %cmp362 = icmp ne i32 %call361, 0
  br i1 %cmp362, label %if.then364, label %if.end366

if.then364:                                       ; preds = %if.end360
  %call365 = call i32 bitcast (i32 (...)* @opng_print_warning to i32 (i8*)*)(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i64 0, i64 0))
  br label %if.end366

if.end366:                                        ; preds = %if.then364, %if.end360
  br label %if.end367

if.end367:                                        ; preds = %if.end366, %if.end356
  br label %for.cond368

for.cond368:                                      ; preds = %if.end367
  %164 = load volatile i8*, i8** %err_msg, align 8
  store volatile i8* %164, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc369

for.inc369:                                       ; preds = %for.cond368
  %165 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay370 = getelementptr inbounds [48 x i32], [48 x i32]* %165, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay370, i32 noundef 1) #6
  unreachable

if.end371:                                        ; preds = %if.then337
  %166 = load %struct.__sFILE*, %struct.__sFILE** %outfile, align 8
  %call372 = call i32 @fclose(%struct.__sFILE* noundef %166)
  %167 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 6), align 8
  %tobool373 = icmp ne i32 %167, 0
  br i1 %tobool373, label %if.then374, label %if.end381

if.then374:                                       ; preds = %if.end371
  %168 = load i32, i32* %new_outfile, align 4
  %tobool375 = icmp ne i32 %168, 0
  br i1 %tobool375, label %cond.true376, label %cond.false377

cond.true376:                                     ; preds = %if.then374
  %169 = load i8*, i8** %infile_name_local, align 8
  br label %cond.end378

cond.false377:                                    ; preds = %if.then374
  %170 = load i8*, i8** %bakfile_name, align 8
  br label %cond.end378

cond.end378:                                      ; preds = %cond.false377, %cond.true376
  %cond379 = phi i8* [ %169, %cond.true376 ], [ %170, %cond.false377 ]
  %171 = load i8*, i8** %outfile_name, align 8
  %call380 = call i32 @osys_copy_attr(i8* noundef %cond379, i8* noundef %171)
  br label %if.end381

if.end381:                                        ; preds = %cond.end378, %if.end371
  %172 = load i32, i32* %new_outfile, align 4
  %tobool382 = icmp ne i32 %172, 0
  br i1 %tobool382, label %if.end392, label %land.lhs.true383

land.lhs.true383:                                 ; preds = %if.end381
  %173 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 0), align 8
  %tobool384 = icmp ne i32 %173, 0
  br i1 %tobool384, label %if.end392, label %if.then385

if.then385:                                       ; preds = %land.lhs.true383
  %174 = load i8*, i8** %bakfile_name, align 8
  %call386 = call i32 @osys_unlink(i8* noundef %174)
  %cmp387 = icmp ne i32 %call386, 0
  br i1 %cmp387, label %if.then389, label %if.end391

if.then389:                                       ; preds = %if.then385
  %call390 = call i32 bitcast (i32 (...)* @opng_print_warning to i32 (i8*)*)(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i64 0, i64 0))
  br label %if.end391

if.end391:                                        ; preds = %if.then389, %if.then385
  br label %if.end392

if.end392:                                        ; preds = %if.end391, %land.lhs.true383, %if.end381
  %175 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %176 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  call void (i8*, ...) %175(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0), i64 noundef %176)
  %177 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and393 = and i32 %177, 2
  %tobool394 = icmp ne i32 %and393, 0
  br i1 %tobool394, label %if.then395, label %if.end397

if.then395:                                       ; preds = %if.end392
  %178 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %178(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0))
  %179 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  %180 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %call396 = call i32 bitcast (i32 (...)* @opng_print_fsize_difference to i32 (i64, i64, i32)*)(i64 noundef %179, i64 noundef %180, i32 noundef 0)
  %181 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %181(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  br label %if.end397

if.end397:                                        ; preds = %if.then395, %if.end392
  %182 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %183 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  call void (i8*, ...) %182(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i64 0, i64 0), i64 noundef %183)
  %184 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  %185 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  %call398 = call i32 bitcast (i32 (...)* @opng_print_fsize_difference to i32 (i64, i64, i32)*)(i64 noundef %184, i64 noundef %185, i32 noundef 1)
  %186 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %186(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0))
  br label %return

return:                                           ; preds = %if.end397, %if.then225, %if.then221
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare %struct.__sFILE* @"\01_fopen"(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) #3

; Function Attrs: returns_twice
declare i32 @setjmp(i32* noundef) #4

declare i32 @opng_read_file(...) #2

declare i32 @fclose(%struct.__sFILE* noundef) #2

declare i8* @osys_path_chext(i8* noundef, i64 noundef, i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #5

declare i8* @osys_path_chdir(i8* noundef, i64 noundef, i8* noundef, i8* noundef) #2

declare i32 @osys_test_eq(i8* noundef, i8* noundef) #2

declare i32 @strcmp(i8* noundef, i8* noundef) #2

declare i8* @osys_path_mkbak(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @osys_test(i8* noundef, i8* noundef) #2

declare i32 @opng_init_iterations(...) #2

declare i32 @opng_iterate(...) #2

declare i32 @opng_finish_iterations(...) #2

declare i32 @opng_check_idat_size(...) #2

declare i32 @osys_create_dir(i8* noundef) #2

declare i32 @osys_rename(i8* noundef, i8* noundef, i32 noundef) #2

declare i32 @opng_write_file(...) #2

declare i32 @osys_fseeko(%struct.__sFILE* noundef, i64 noundef, i32 noundef) #2

declare i32 @opng_copy_file(...) #2

declare i32 @opng_print_warning(...) #2

declare i32 @osys_unlink(i8* noundef) #2

declare i32 @osys_copy_attr(i8* noundef, i8* noundef) #2

declare i32 @opng_print_fsize_difference(...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { returns_twice "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { noreturn }
attributes #7 = { returns_twice }
attributes #8 = { nounwind }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
