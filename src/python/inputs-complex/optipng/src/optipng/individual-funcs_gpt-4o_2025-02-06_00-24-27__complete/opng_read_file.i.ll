; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_read_file.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_read_file.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.exception_context = type { [48 x i32]*, i32, %struct.anon }
%struct.anon = type { i8* }
%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.opng_process_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_image_struct = type { i32, i32, i32, i32, i32, i32, i32, i8**, %struct.png_color_struct*, i32, %struct.png_color_16_struct*, %struct.png_color_16_struct, i16*, %struct.png_color_8_struct*, %struct.png_color_8_struct, i8*, i32, %struct.png_color_16_struct*, %struct.png_color_16_struct, %struct.png_unknown_chunk_t*, i32 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.dummyStruct = type { i32 }

@the_exception_context = global [1 x %struct.exception_context] zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"1.6.21\00", align 1
@read_ptr = global %struct.png_struct_def* null, align 8
@read_info_ptr = global %struct.png_info_def* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unrecognized image file format\00", align 1
@process = global %struct.opng_process_struct zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"APNG\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"APNG datastream\00", align 1
@usr_panic = global void (i8*)* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"No format name from pngxtern\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Can't get the correct file size\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@usr_printf = global void (i8*, ...)* null, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"Importing %s\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c" (multi-image or animation)\00", align 1
@options = global %struct.opng_options zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"; snipping...\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [110 x i8] c"Can't reliably reduce APNG file; disabling reductions.\0A(Did you want to -snip and optimize the first frame?)\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Reducing image to \00", align 1
@image = global %struct.opng_image_struct zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_read_file(%struct.__sFILE* noundef %infile) #0 {
entry:
  %infile.addr = alloca %struct.__sFILE*, align 8
  %fmt_name = alloca i8*, align 8
  %num_img = alloca i32, align 4
  %reductions = alloca i32, align 4
  %err_msg = alloca i8*, align 8
  %exception__prev = alloca [48 x i32]*, align 8
  %exception__env = alloca [48 x i32], align 4
  %exception__prev44 = alloca [48 x i32]*, align 8
  %exception__env45 = alloca [48 x i32], align 4
  store %struct.__sFILE* %infile, %struct.__sFILE** %infile.addr, align 8
  %0 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %0, [48 x i32]** %exception__prev, align 8
  store [48 x i32]* %exception__env, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %exception__env, i64 0, i64 0
  %call = call i32 @setjmp(i32* noundef %arraydecay) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %call1 = call noalias %struct.png_struct_def* @png_create_read_struct(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef null, void (%struct.png_struct_def*, i8*)* noundef bitcast (void (%struct.dummyStruct*, i8*)* @opng_error to void (%struct.png_struct_def*, i8*)*), void (%struct.png_struct_def*, i8*)* noundef bitcast (void (%struct.dummyStruct*, i8*)* @opng_warning to void (%struct.png_struct_def*, i8*)*))
  store %struct.png_struct_def* %call1, %struct.png_struct_def** @read_ptr, align 8
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %call2 = call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* noundef %1)
  store %struct.png_info_def* %call2, %struct.png_info_def** @read_info_ptr, align 8
  %2 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %cmp3 = icmp eq %struct.png_info_def* %2, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %do.body
  br label %for.cond

for.cond:                                         ; preds = %if.then4
  store volatile i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc

for.inc:                                          ; preds = %for.cond
  %3 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay5 = getelementptr inbounds [48 x i32], [48 x i32]* %3, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay5, i32 noundef 1) #5
  unreachable

if.end:                                           ; preds = %do.body
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  call void @png_set_keep_unknown_chunks(%struct.png_struct_def* noundef %4, i32 noundef 3, i8* noundef null, i32 noundef 0)
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  call void @png_set_user_limits(%struct.png_struct_def* noundef %5, i32 noundef 2147483647, i32 noundef 2147483647)
  %call6 = call i32 bitcast (i32 (...)* @opng_init_read_data to i32 ()*)()
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %7 = load %struct.__sFILE*, %struct.__sFILE** %infile.addr, align 8
  %8 = bitcast %struct.__sFILE* %7 to i8*
  call void @png_set_read_fn(%struct.png_struct_def* noundef %6, i8* noundef %8, void (%struct.png_struct_def*, i8*, i64)* noundef bitcast (void (%struct.dummyStruct*, i8*, i64)* @opng_read_data to void (%struct.png_struct_def*, i8*, i64)*))
  store i8* null, i8** %fmt_name, align 8
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %10 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %call7 = call i32 @pngx_read_image(%struct.png_struct_def* noundef %9, %struct.png_info_def* noundef %10, i8** noundef %fmt_name, i8** noundef null)
  store i32 %call7, i32* %num_img, align 4
  %11 = load i32, i32* %num_img, align 4
  %cmp8 = icmp sle i32 %11, 0
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  br label %for.cond10

for.cond10:                                       ; preds = %if.then9
  store volatile i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc11

for.inc11:                                        ; preds = %for.cond10
  %12 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay12 = getelementptr inbounds [48 x i32], [48 x i32]* %12, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay12, i32 noundef 1) #5
  unreachable

if.end13:                                         ; preds = %if.end
  %13 = load i32, i32* %num_img, align 4
  %cmp14 = icmp sgt i32 %13, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  %14 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or = or i32 %14, 16
  store i32 %or, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  %15 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and = and i32 %15, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end16
  %16 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and17 = and i32 %16, 16
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and20 = and i32 %17, 4
  %tobool21 = icmp ne i32 %and20, 0
  %18 = zext i1 %tobool21 to i64
  %cond = select i1 %tobool21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)
  store i8* %cond, i8** %fmt_name, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true, %if.end16
  %19 = load i8*, i8** %fmt_name, align 8
  %cmp23 = icmp ne i8* %19, null
  br i1 %cmp23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end22
  %20 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %20(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %21 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  %cmp26 = icmp eq i64 %21, 0
  br i1 %cmp26, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.end25
  %22 = load %struct.__sFILE*, %struct.__sFILE** %infile.addr, align 8
  %call28 = call i32 @osys_fgetsize(%struct.__sFILE* noundef %22, i64* noundef getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3))
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then27
  %call31 = call i32 bitcast (i32 (...)* @opng_print_warning to i32 (i8*)*)(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then27
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end25
  store volatile i8* null, i8** %err_msg, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end33
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %23 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool34 = icmp ne i32 %23, 0
  br i1 %tobool34, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  br label %if.end35

if.else:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else, %do.end
  %24 = load volatile [48 x i32]*, [48 x i32]** %exception__prev, align 8
  store [48 x i32]* %24, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %25 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool36 = icmp ne i32 %25, 0
  br i1 %tobool36, label %lor.lhs.false, label %if.then37

lor.lhs.false:                                    ; preds = %if.end35
  %26 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %26, i8** %err_msg, align 8
  br i1 false, label %if.then37, label %if.else38

if.then37:                                        ; preds = %lor.lhs.false, %if.end35
  br label %if.end43

if.else38:                                        ; preds = %lor.lhs.false
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %28 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %call39 = call i32 @opng_validate_image(%struct.png_struct_def* noundef %27, %struct.png_info_def* noundef %28)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.else38
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %30 = load volatile i8*, i8** %err_msg, align 8
  call void @png_warning(%struct.png_struct_def* noundef %29, i8* noundef %30)
  store volatile i8* null, i8** %err_msg, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.else38
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then37
  %31 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %31, [48 x i32]** %exception__prev44, align 8
  store [48 x i32]* %exception__env45, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay46 = getelementptr inbounds [48 x i32], [48 x i32]* %exception__env45, i64 0, i64 0
  %call47 = call i32 @setjmp(i32* noundef %arraydecay46) #4
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.else122

if.then49:                                        ; preds = %if.end43
  br label %do.body50

do.body50:                                        ; preds = %do.cond119, %if.then49
  %32 = load volatile i8*, i8** %err_msg, align 8
  %cmp51 = icmp ne i8* %32, null
  br i1 %cmp51, label %if.then52, label %if.end56

if.then52:                                        ; preds = %do.body50
  br label %for.cond53

for.cond53:                                       ; preds = %if.then52
  %33 = load volatile i8*, i8** %err_msg, align 8
  store volatile i8* %33, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc54

for.inc54:                                        ; preds = %for.cond53
  %34 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay55 = getelementptr inbounds [48 x i32], [48 x i32]* %34, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay55, i32 noundef 1) #5
  unreachable

if.end56:                                         ; preds = %do.body50
  %35 = load i8*, i8** %fmt_name, align 8
  %call57 = call i32 @strcmp(i8* noundef %35, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then59, label %if.end71

if.then59:                                        ; preds = %if.end56
  %36 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %37 = load i8*, i8** %fmt_name, align 8
  call void (i8*, ...) %36(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* noundef %37)
  %38 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and60 = and i32 %38, 16
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then62, label %if.end70

if.then62:                                        ; preds = %if.then59
  %39 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and63 = and i32 %39, 1
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.then62
  %40 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %40(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.then62
  %41 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %tobool67 = icmp ne i32 %41, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end66
  %42 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %42(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end66
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then59
  %43 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %43(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end56
  %44 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %45 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %call72 = call i32 bitcast (i32 (...)* @opng_load_image_info to i32 (%struct.png_struct_def*, %struct.png_info_def*, i32)*)(%struct.png_struct_def* noundef %44, %struct.png_info_def* noundef %45, i32 noundef 1)
  %call73 = call i32 bitcast (i32 (...)* @opng_print_image_info to i32 (i32, i32, i32, i32)*)(i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  %46 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %46(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32 1023, i32* %reductions, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 14), align 4
  %tobool74 = icmp ne i32 %47, 0
  br i1 %tobool74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end71
  %48 = load i32, i32* %reductions, align 4
  %and76 = and i32 %48, -4
  store i32 %and76, i32* %reductions, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end71
  %49 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 15), align 8
  %tobool78 = icmp ne i32 %49, 0
  br i1 %tobool78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end77
  %50 = load i32, i32* %reductions, align 4
  %and80 = and i32 %50, -253
  store i32 %and80, i32* %reductions, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end77
  %51 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 16), align 4
  %tobool82 = icmp ne i32 %51, 0
  br i1 %tobool82, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end81
  %52 = load i32, i32* %reductions, align 4
  %and84 = and i32 %52, -769
  store i32 %and84, i32* %reductions, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end81
  %53 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 17), align 8
  %tobool86 = icmp ne i32 %53, 0
  br i1 %tobool86, label %land.lhs.true87, label %if.end91

land.lhs.true87:                                  ; preds = %if.end85
  %54 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and88 = and i32 %54, 2
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %land.lhs.true87
  store i32 0, i32* %reductions, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %land.lhs.true87, %if.end85
  %55 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and92 = and i32 %55, 8
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end91
  store i32 0, i32* %reductions, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end91
  %56 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and96 = and i32 %56, 1
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %land.lhs.true98, label %if.end106

land.lhs.true98:                                  ; preds = %if.end95
  %57 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and99 = and i32 %57, 16
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %land.lhs.true101, label %if.end106

land.lhs.true101:                                 ; preds = %land.lhs.true98
  %58 = load i32, i32* %reductions, align 4
  %cmp102 = icmp ne i32 %58, 0
  br i1 %cmp102, label %land.lhs.true103, label %if.end106

land.lhs.true103:                                 ; preds = %land.lhs.true101
  %59 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %tobool104 = icmp ne i32 %59, 0
  br i1 %tobool104, label %if.end106, label %if.then105

if.then105:                                       ; preds = %land.lhs.true103
  %60 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %60(i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %reductions, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %land.lhs.true103, %land.lhs.true101, %land.lhs.true98, %if.end95
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %62 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %63 = load i32, i32* %reductions, align 4
  %call107 = call i32 @opng_reduce_image(%struct.png_struct_def* noundef %61, %struct.png_info_def* noundef %62, i32 noundef %63)
  store i32 %call107, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 11), align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 11), align 8
  %cmp108 = icmp ne i32 %64, 0
  br i1 %cmp108, label %if.then109, label %if.end112

if.then109:                                       ; preds = %if.end106
  %65 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %66 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %call110 = call i32 bitcast (i32 (...)* @opng_load_image_info to i32 (%struct.png_struct_def*, %struct.png_info_def*, i32)*)(%struct.png_struct_def* noundef %65, %struct.png_info_def* noundef %66, i32 noundef 1)
  %67 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %67(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %call111 = call i32 bitcast (i32 (...)* @opng_print_image_info to i32 (i32, i32, i32, i32)*)(i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  %68 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %68(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end106
  %69 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  %cmp113 = icmp sge i32 %69, 0
  br i1 %cmp113, label %land.lhs.true114, label %if.end118

land.lhs.true114:                                 ; preds = %if.end112
  %70 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 6), align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  %cmp115 = icmp ne i32 %70, %71
  br i1 %cmp115, label %if.then116, label %if.end118

if.then116:                                       ; preds = %land.lhs.true114
  %72 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  store i32 %72, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 6), align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or117 = or i32 %73, 8192
  store i32 %or117, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %land.lhs.true114, %if.end112
  br label %do.cond119

do.cond119:                                       ; preds = %if.end118
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %74 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool120 = icmp ne i32 %74, 0
  br i1 %tobool120, label %do.body50, label %do.end121, !llvm.loop !12

do.end121:                                        ; preds = %do.cond119
  br label %if.end123

if.else122:                                       ; preds = %if.end43
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %if.end123

if.end123:                                        ; preds = %if.else122, %do.end121
  %75 = load volatile [48 x i32]*, [48 x i32]** %exception__prev44, align 8
  store [48 x i32]* %75, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %76 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool124 = icmp ne i32 %76, 0
  br i1 %tobool124, label %lor.lhs.false125, label %if.then126

lor.lhs.false125:                                 ; preds = %if.end123
  %77 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %77, i8** %err_msg, align 8
  br i1 false, label %if.then126, label %if.else127

if.then126:                                       ; preds = %lor.lhs.false125, %if.end123
  br label %if.end131

if.else127:                                       ; preds = %lor.lhs.false125
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %79 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  call void @png_data_freer(%struct.png_struct_def* noundef %78, %struct.png_info_def* noundef %79, i32 noundef 1, i32 noundef 32767)
  call void @png_destroy_read_struct(%struct.png_struct_def** noundef @read_ptr, %struct.png_info_def** noundef @read_info_ptr, %struct.png_info_def** noundef null)
  br label %for.cond128

for.cond128:                                      ; preds = %if.else127
  %80 = load volatile i8*, i8** %err_msg, align 8
  store volatile i8* %80, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc129

for.inc129:                                       ; preds = %for.cond128
  %81 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay130 = getelementptr inbounds [48 x i32], [48 x i32]* %81, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay130, i32 noundef 1) #5
  unreachable

if.end131:                                        ; preds = %if.then126
  %82 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %83 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  call void @png_data_freer(%struct.png_struct_def* noundef %82, %struct.png_info_def* noundef %83, i32 noundef 2, i32 noundef 32767)
  call void @png_destroy_read_struct(%struct.png_struct_def** noundef @read_ptr, %struct.png_info_def** noundef @read_info_ptr, %struct.png_info_def** noundef null)
  ret void
}

; Function Attrs: returns_twice
declare i32 @setjmp(i32* noundef) #1

declare noalias %struct.png_struct_def* @png_create_read_struct(i8* noundef, i8* noundef, void (%struct.png_struct_def*, i8*)* noundef, void (%struct.png_struct_def*, i8*)* noundef) #2

declare void @opng_error(%struct.dummyStruct* noundef, i8* noundef) #2

declare void @opng_warning(%struct.dummyStruct* noundef, i8* noundef) #2

declare noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* noundef) #2

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) #3

declare void @png_set_keep_unknown_chunks(%struct.png_struct_def* noundef, i32 noundef, i8* noundef, i32 noundef) #2

declare void @png_set_user_limits(%struct.png_struct_def* noundef, i32 noundef, i32 noundef) #2

declare i32 @opng_init_read_data(...) #2

declare void @png_set_read_fn(%struct.png_struct_def* noundef, i8* noundef, void (%struct.png_struct_def*, i8*, i64)* noundef) #2

declare void @opng_read_data(%struct.dummyStruct* noundef, i8* noundef, i64 noundef) #2

declare i32 @pngx_read_image(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8** noundef, i8** noundef) #2

declare i32 @osys_fgetsize(%struct.__sFILE* noundef, i64* noundef) #2

declare i32 @opng_print_warning(...) #2

declare i32 @opng_validate_image(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #2

declare void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #2

declare i32 @strcmp(i8* noundef, i8* noundef) #2

declare i32 @opng_load_image_info(...) #2

declare i32 @opng_print_image_info(...) #2

declare i32 @opng_reduce_image(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #2

declare void @png_data_freer(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) #2

declare void @png_destroy_read_struct(%struct.png_struct_def** noundef, %struct.png_info_def** noundef, %struct.png_info_def** noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { returns_twice "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

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
