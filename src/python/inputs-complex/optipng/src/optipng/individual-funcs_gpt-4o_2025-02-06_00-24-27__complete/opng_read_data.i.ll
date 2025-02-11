; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_read_data.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_read_data.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_process_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@sig_PLTE = constant [4 x i8] c"PLTE", align 1
@sig_tRNS = constant [4 x i8] c"tRNS", align 1
@sig_IDAT = constant [4 x i8] c"IDAT", align 1
@.str = private unnamed_addr constant [52 x i8] c"Can't read the input file or unexpected end of file\00", align 1
@process = global %struct.opng_process_struct zeroinitializer, align 8
@usr_panic = global void (i8*)* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"PNG I/O must start with the first 8 bytes\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Can't get the file-position indicator in input file\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Incorrect info in png_ptr->io_state\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Reading chunk header, expecting 8 bytes\00", align 1
@read_ptr = global %struct.png_struct_def* null, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"Incorrect I/O handler setup\00", align 1
@read_info_ptr = global %struct.png_info_def* null, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"Found IDAT with no rows\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Failed allocation of image rows; unsafe libpng allocator\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Reading chunk CRC, expecting 4 bytes\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_read_data(%struct.png_struct_def* noundef %png_ptr, i8* noundef %data, i64 noundef %length) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %stream = alloca %struct.__sFILE*, align 8
  %io_state = alloca i32, align 4
  %io_state_loc = alloca i32, align 4
  %chunk_sig = alloca i8*, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %call = call i8* @png_get_io_ptr(%struct.png_struct_def* noundef %0)
  %1 = bitcast i8* %call to %struct.__sFILE*
  store %struct.__sFILE* %1, %struct.__sFILE** %stream, align 8
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %call1 = call i32 @png_get_io_state(%struct.png_struct_def* noundef %2)
  store i32 %call1, i32* %io_state, align 4
  %3 = load i32, i32* %io_state, align 4
  %and = and i32 %3, 240
  store i32 %and, i32* %io_state_loc, align 4
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i64, i64* %length.addr, align 8
  %6 = load %struct.__sFILE*, %struct.__sFILE** %stream, align 8
  %call2 = call i64 @fread(i8* noundef %4, i64 noundef 1, i64 noundef %5, %struct.__sFILE* noundef %6)
  %7 = load i64, i64* %length.addr, align 8
  %cmp = icmp ne i64 %call2, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_error(%struct.png_struct_def* noundef %8, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0)) #3
  unreachable

if.end:                                           ; preds = %entry
  %9 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  %cmp3 = icmp eq i64 %9, 0
  br i1 %cmp3, label %if.then4, label %if.end20

if.then4:                                         ; preds = %if.end
  %10 = load i64, i64* %length.addr, align 8
  %cmp5 = icmp eq i64 %10, 8
  br i1 %cmp5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then4
  %11 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %11(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  %12 = load %struct.__sFILE*, %struct.__sFILE** %stream, align 8
  %call8 = call i64 @osys_ftello(%struct.__sFILE* noundef %12)
  %sub = sub nsw i64 %call8, 8
  store i64 %sub, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 2), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or = or i32 %13, 2
  store i32 %or, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %14 = load i32, i32* %io_state_loc, align 4
  %cmp9 = icmp eq i32 %14, 16
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %15 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or11 = or i32 %15, 4
  store i32 %or11, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  %16 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 2), align 8
  %cmp13 = icmp eq i64 %16, 0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %17 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or15 = or i32 %17, 1
  store i32 %or15, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end19

if.else:                                          ; preds = %if.end12
  %18 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 2), align 8
  %cmp16 = icmp slt i64 %18, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_error(%struct.png_struct_def* noundef %19, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0)) #3
  unreachable

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then14
  %20 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 2), align 8
  store i64 %20, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  %21 = load i64, i64* %length.addr, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  %add = add i64 %22, %21
  store i64 %add, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  %23 = load i32, i32* %io_state, align 4
  %and21 = and i32 %23, 1
  %tobool = icmp ne i32 %and21, 0
  br i1 %tobool, label %land.lhs.true, label %if.then23

land.lhs.true:                                    ; preds = %if.end20
  %24 = load i32, i32* %io_state_loc, align 4
  %cmp22 = icmp ne i32 %24, 0
  br i1 %cmp22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %land.lhs.true, %if.end20
  %25 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %25(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true
  %26 = load i32, i32* %io_state_loc, align 4
  %cmp25 = icmp eq i32 %26, 32
  br i1 %cmp25, label %if.then26, label %if.else93

if.then26:                                        ; preds = %if.end24
  %27 = load i64, i64* %length.addr, align 8
  %cmp27 = icmp eq i64 %27, 8
  br i1 %cmp27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.then26
  %28 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %28(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then26
  %29 = load i8*, i8** %data.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 4
  store i8* %add.ptr, i8** %chunk_sig, align 8
  %30 = load i8*, i8** %chunk_sig, align 8
  %call30 = call i32 @memcmp(i8* noundef %30, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_IDAT, i64 0, i64 0), i64 noundef 4)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.else66

if.then32:                                        ; preds = %if.end29
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %cmp33 = icmp eq %struct.png_struct_def* %31, %32
  br i1 %cmp33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.then32
  %33 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %33(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then32
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %35 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %call36 = call i8** @png_get_rows(%struct.png_struct_def* noundef %34, %struct.png_info_def* noundef %35)
  %cmp37 = icmp eq i8** %call36, null
  br i1 %cmp37, label %if.then38, label %if.else50

if.then38:                                        ; preds = %if.end35
  %36 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  %cmp39 = icmp eq i64 %36, 0
  br i1 %cmp39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.then38
  %37 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %37(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then38
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %39 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %call42 = call i32 @png_get_image_height(%struct.png_struct_def* noundef %38, %struct.png_info_def* noundef %39)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  br label %if.end102

if.end45:                                         ; preds = %if.end41
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %41 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %call46 = call i8** @pngx_malloc_rows(%struct.png_struct_def* noundef %40, %struct.png_info_def* noundef %41, i32 noundef 0)
  %cmp47 = icmp ne i8** %call46, null
  br i1 %cmp47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end45
  %42 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %42(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %44 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  call void @png_data_freer(%struct.png_struct_def* noundef %43, %struct.png_info_def* noundef %44, i32 noundef 2, i32 noundef 64)
  br label %if.end52

if.else50:                                        ; preds = %if.end35
  %45 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or51 = or i32 %45, 128
  store i32 %or51, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.end49
  %46 = load i8*, i8** %data.addr, align 8
  %47 = load i8, i8* %46, align 1
  %conv = zext i8 %47 to i32
  %shl = shl i32 %conv, 24
  %48 = load i8*, i8** %data.addr, align 8
  %add.ptr53 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %add.ptr53, align 1
  %conv54 = zext i8 %49 to i32
  %shl55 = shl i32 %conv54, 16
  %add56 = add i32 %shl, %shl55
  %50 = load i8*, i8** %data.addr, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %50, i64 2
  %51 = load i8, i8* %add.ptr57, align 1
  %conv58 = zext i8 %51 to i32
  %shl59 = shl i32 %conv58, 8
  %add60 = add i32 %add56, %shl59
  %52 = load i8*, i8** %data.addr, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %52, i64 3
  %53 = load i8, i8* %add.ptr61, align 1
  %conv62 = zext i8 %53 to i32
  %add63 = add i32 %add60, %conv62
  %conv64 = zext i32 %add63 to i64
  %54 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  %add65 = add i64 %54, %conv64
  store i64 %add65, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  br label %if.end92

if.else66:                                        ; preds = %if.end29
  %55 = load i8*, i8** %chunk_sig, align 8
  %call67 = call i32 @memcmp(i8* noundef %55, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_PLTE, i64 0, i64 0), i64 noundef 4)
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else66
  %56 = load i8*, i8** %chunk_sig, align 8
  %call70 = call i32 @memcmp(i8* noundef %56, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_tRNS, i64 0, i64 0), i64 noundef 4)
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.else89

if.then73:                                        ; preds = %lor.lhs.false, %if.else66
  %57 = load i8*, i8** %data.addr, align 8
  %58 = load i8, i8* %57, align 1
  %conv74 = zext i8 %58 to i32
  %shl75 = shl i32 %conv74, 24
  %59 = load i8*, i8** %data.addr, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %59, i64 1
  %60 = load i8, i8* %add.ptr76, align 1
  %conv77 = zext i8 %60 to i32
  %shl78 = shl i32 %conv77, 16
  %add79 = add i32 %shl75, %shl78
  %61 = load i8*, i8** %data.addr, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %61, i64 2
  %62 = load i8, i8* %add.ptr80, align 1
  %conv81 = zext i8 %62 to i32
  %shl82 = shl i32 %conv81, 8
  %add83 = add i32 %add79, %shl82
  %63 = load i8*, i8** %data.addr, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %63, i64 3
  %64 = load i8, i8* %add.ptr84, align 1
  %conv85 = zext i8 %64 to i32
  %add86 = add i32 %add83, %conv85
  %add87 = add i32 %add86, 12
  %65 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 9), align 8
  %add88 = add i32 %65, %add87
  store i32 %add88, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 9), align 8
  br label %if.end91

if.else89:                                        ; preds = %lor.lhs.false
  %66 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %67 = load i8*, i8** %chunk_sig, align 8
  %call90 = call i32 bitcast (i32 (...)* @opng_handle_chunk to i32 (%struct.png_struct_def*, i8*)*)(%struct.png_struct_def* noundef %66, i8* noundef %67)
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %if.then73
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end52
  br label %if.end102

if.else93:                                        ; preds = %if.end24
  %68 = load i32, i32* %io_state_loc, align 4
  %cmp94 = icmp eq i32 %68, 128
  br i1 %cmp94, label %if.then96, label %if.end101

if.then96:                                        ; preds = %if.else93
  %69 = load i64, i64* %length.addr, align 8
  %cmp97 = icmp eq i64 %69, 4
  br i1 %cmp97, label %if.end100, label %if.then99

if.then99:                                        ; preds = %if.then96
  %70 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %70(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.then96
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.else93
  br label %if.end102

if.end102:                                        ; preds = %if.then44, %if.end101, %if.end92
  ret void
}

declare i8* @png_get_io_ptr(%struct.png_struct_def* noundef) #1

declare i32 @png_get_io_state(%struct.png_struct_def* noundef) #1

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #1

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #2

declare i64 @osys_ftello(%struct.__sFILE* noundef) #1

declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

declare i8** @png_get_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare i32 @png_get_image_height(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #1

declare i8** @pngx_malloc_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #1

declare void @png_data_freer(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) #1

declare i32 @opng_handle_chunk(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
