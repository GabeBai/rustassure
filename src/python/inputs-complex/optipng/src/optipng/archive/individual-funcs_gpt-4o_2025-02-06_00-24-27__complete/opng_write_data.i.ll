; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_write_data.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_write_data.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_process_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.exception_context = type { [48 x i32]*, i32, %struct.anon }
%struct.anon = type { i8* }
%struct.png_struct_def = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@sig_PLTE = constant [4 x i8] c"PLTE", align 1
@sig_tRNS = constant [4 x i8] c"tRNS", align 1
@sig_IDAT = constant [4 x i8] c"IDAT", align 1
@usr_panic = global void (i8*)* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Incorrect info in png_ptr->io_state\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Writing chunk header, expecting 8 bytes\00", align 1
@process = global %struct.opng_process_struct zeroinitializer, align 8
@the_exception_context = global [1 x %struct.exception_context] zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Writing chunk CRC, expecting 4 bytes\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Wrong guess of the output IDAT size\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Can't finalize IDAT\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Can't write the output file\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_write_data(%struct.png_struct_def* noundef %png_ptr, i8* noundef %data, i64 noundef %length) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %allow_crt_chunk = alloca i32, align 4
  %crt_chunk_is_idat = alloca i32, align 4
  %crt_idat_offset = alloca i64, align 8
  %crt_idat_size = alloca i64, align 8
  %crt_idat_crc = alloca i32, align 4
  %stream = alloca %struct.__sFILE*, align 8
  %io_state = alloca i32, align 4
  %io_state_loc = alloca i32, align 4
  %chunk_sig = alloca i8*, align 8
  %buf = alloca [4 x i8], align 1
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
  %4 = load i32, i32* %io_state, align 4
  %and2 = and i32 %4, 2
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %io_state_loc, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %6 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %6(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %7 = load i32, i32* %io_state_loc, align 4
  %cmp3 = icmp eq i32 %7, 32
  br i1 %cmp3, label %if.then4, label %if.else56

if.then4:                                         ; preds = %if.end
  %8 = load i64, i64* %length.addr, align 8
  %cmp5 = icmp eq i64 %8, 8
  br i1 %cmp5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then4
  %9 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %9(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  %10 = load i8*, i8** %data.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 4
  store i8* %add.ptr, i8** %chunk_sig, align 8
  %11 = load i8*, i8** %chunk_sig, align 8
  %call8 = call i32 bitcast (i32 (...)* @opng_allow_chunk to i32 (i8*)*)(i8* noundef %11)
  store i32 %call8, i32* %allow_crt_chunk, align 4
  %12 = load i8*, i8** %chunk_sig, align 8
  %call9 = call i32 @memcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_IDAT, i64 0, i64 0), i64 noundef 4)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  store i32 1, i32* %crt_chunk_is_idat, align 4
  %13 = load i8*, i8** %data.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv = zext i8 %14 to i32
  %shl = shl i32 %conv, 24
  %15 = load i8*, i8** %data.addr, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %add.ptr12, align 1
  %conv13 = zext i8 %16 to i32
  %shl14 = shl i32 %conv13, 16
  %add = add i32 %shl, %shl14
  %17 = load i8*, i8** %data.addr, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %add.ptr15, align 1
  %conv16 = zext i8 %18 to i32
  %shl17 = shl i32 %conv16, 8
  %add18 = add i32 %add, %shl17
  %19 = load i8*, i8** %data.addr, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %19, i64 3
  %20 = load i8, i8* %add.ptr19, align 1
  %conv20 = zext i8 %20 to i32
  %add21 = add i32 %add18, %conv20
  %conv22 = zext i32 %add21 to i64
  %21 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %add23 = add i64 %21, %conv22
  store i64 %add23, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %22 = load %struct.__sFILE*, %struct.__sFILE** %stream, align 8
  %cmp24 = icmp eq %struct.__sFILE* %22, null
  br i1 %cmp24, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.then11
  %23 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 8), align 8
  %cmp27 = icmp ugt i64 %23, %24
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then26
  br label %for.cond

for.cond:                                         ; preds = %if.then29
  store volatile i8* null, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc

for.inc:                                          ; preds = %for.cond
  %25 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %25, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay, i32 noundef 1) #3
  unreachable

if.end30:                                         ; preds = %if.then26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then11
  br label %if.end55

if.else:                                          ; preds = %if.end7
  store i32 0, i32* %crt_chunk_is_idat, align 4
  %26 = load i8*, i8** %chunk_sig, align 8
  %call32 = call i32 @memcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_PLTE, i64 0, i64 0), i64 noundef 4)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %27 = load i8*, i8** %chunk_sig, align 8
  %call35 = call i32 @memcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_tRNS, i64 0, i64 0), i64 noundef 4)
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end54

if.then38:                                        ; preds = %lor.lhs.false, %if.else
  %28 = load i8*, i8** %data.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv39 = zext i8 %29 to i32
  %shl40 = shl i32 %conv39, 24
  %30 = load i8*, i8** %data.addr, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %add.ptr41, align 1
  %conv42 = zext i8 %31 to i32
  %shl43 = shl i32 %conv42, 16
  %add44 = add i32 %shl40, %shl43
  %32 = load i8*, i8** %data.addr, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %add.ptr45, align 1
  %conv46 = zext i8 %33 to i32
  %shl47 = shl i32 %conv46, 8
  %add48 = add i32 %add44, %shl47
  %34 = load i8*, i8** %data.addr, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %34, i64 3
  %35 = load i8, i8* %add.ptr49, align 1
  %conv50 = zext i8 %35 to i32
  %add51 = add i32 %add48, %conv50
  %add52 = add i32 %add51, 12
  %36 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 10), align 4
  %add53 = add i32 %36, %add52
  store i32 %add53, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 10), align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then38, %lor.lhs.false
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end31
  br label %if.end65

if.else56:                                        ; preds = %if.end
  %37 = load i32, i32* %io_state_loc, align 4
  %cmp57 = icmp eq i32 %37, 128
  br i1 %cmp57, label %if.then59, label %if.end64

if.then59:                                        ; preds = %if.else56
  %38 = load i64, i64* %length.addr, align 8
  %cmp60 = icmp eq i64 %38, 4
  br i1 %cmp60, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.then59
  %39 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %39(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then59
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.else56
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end55
  %40 = load %struct.__sFILE*, %struct.__sFILE** %stream, align 8
  %cmp66 = icmp eq %struct.__sFILE* %40, null
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end65
  br label %return

if.end69:                                         ; preds = %if.end65
  %41 = load i32, i32* %io_state_loc, align 4
  %cmp70 = icmp ne i32 %41, 16
  br i1 %cmp70, label %land.lhs.true72, label %if.end75

land.lhs.true72:                                  ; preds = %if.end69
  %42 = load i32, i32* %allow_crt_chunk, align 4
  %tobool73 = icmp ne i32 %42, 0
  br i1 %tobool73, label %if.end75, label %if.then74

if.then74:                                        ; preds = %land.lhs.true72
  br label %return

if.end75:                                         ; preds = %land.lhs.true72, %if.end69
  %43 = load i32, i32* %io_state_loc, align 4
  switch i32 %43, label %sw.epilog [
    i32 32, label %sw.bb
    i32 64, label %sw.bb127
    i32 128, label %sw.bb135
  ]

sw.bb:                                            ; preds = %if.end75
  %44 = load i32, i32* %crt_chunk_is_idat, align 4
  %tobool76 = icmp ne i32 %44, 0
  br i1 %tobool76, label %if.then77, label %if.else92

if.then77:                                        ; preds = %sw.bb
  %45 = load i64, i64* %crt_idat_offset, align 8
  %cmp78 = icmp eq i64 %45, 0
  br i1 %cmp78, label %if.then80, label %if.else90

if.then80:                                        ; preds = %if.then77
  %46 = load %struct.__sFILE*, %struct.__sFILE** %stream, align 8
  %call81 = call i64 @osys_ftello(%struct.__sFILE* noundef %46)
  store i64 %call81, i64* %crt_idat_offset, align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %cmp82 = icmp ugt i64 %47, 0
  br i1 %cmp82, label %if.then84, label %if.else85

if.then84:                                        ; preds = %if.then80
  %48 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  store i64 %48, i64* %crt_idat_size, align 8
  br label %if.end86

if.else85:                                        ; preds = %if.then80
  %49 = load i64, i64* %length.addr, align 8
  store i64 %49, i64* %crt_idat_size, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.else85, %if.then84
  %50 = load i8*, i8** %data.addr, align 8
  %51 = load i64, i64* %crt_idat_size, align 8
  %conv87 = trunc i64 %51 to i32
  call void @png_save_uint_32(i8* noundef %50, i32 noundef %conv87)
  %call88 = call i64 @crc32(i64 noundef 0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_IDAT, i64 0, i64 0), i32 noundef 4)
  %conv89 = trunc i64 %call88 to i32
  store i32 %conv89, i32* %crt_idat_crc, align 4
  br label %if.end91

if.else90:                                        ; preds = %if.then77
  br label %return

if.end91:                                         ; preds = %if.end86
  br label %if.end126

if.else92:                                        ; preds = %sw.bb
  %52 = load i64, i64* %crt_idat_offset, align 8
  %cmp93 = icmp ne i64 %52, 0
  br i1 %cmp93, label %if.then95, label %if.end125

if.then95:                                        ; preds = %if.else92
  %arraydecay96 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  %53 = load i32, i32* %crt_idat_crc, align 4
  call void @png_save_uint_32(i8* noundef %arraydecay96, i32 noundef %53)
  %arraydecay97 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  %54 = load %struct.__sFILE*, %struct.__sFILE** %stream, align 8
  %call98 = call i64 @"\01_fwrite"(i8* noundef %arraydecay97, i64 noundef 1, i64 noundef 4, %struct.__sFILE* noundef %54)
  %cmp99 = icmp ne i64 %call98, 4
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.then95
  store i32 0, i32* %io_state, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.then95
  %55 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  %add103 = add i64 %55, 4
  store i64 %add103, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %57 = load i64, i64* %crt_idat_size, align 8
  %cmp104 = icmp ne i64 %56, %57
  br i1 %cmp104, label %if.then106, label %if.end120

if.then106:                                       ; preds = %if.end102
  %58 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %cmp107 = icmp eq i64 %58, 0
  br i1 %cmp107, label %if.end110, label %if.then109

if.then109:                                       ; preds = %if.then106
  %59 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %59(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.then106
  %60 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %call111 = call i32 bitcast (i32 (...)* @opng_check_idat_size to i32 (i64)*)(i64 noundef %60)
  %arraydecay112 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  %61 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %conv113 = trunc i64 %61 to i32
  call void @png_save_uint_32(i8* noundef %arraydecay112, i32 noundef %conv113)
  %62 = load %struct.__sFILE*, %struct.__sFILE** %stream, align 8
  %63 = load i64, i64* %crt_idat_offset, align 8
  %arraydecay114 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  %call115 = call i64 @osys_fwrite_at(%struct.__sFILE* noundef %62, i64 noundef %63, i32 noundef 0, i8* noundef %arraydecay114, i64 noundef 4)
  %cmp116 = icmp ne i64 %call115, 4
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end110
  store i32 0, i32* %io_state, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end110
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.end102
  %64 = load i32, i32* %io_state, align 4
  %cmp121 = icmp eq i32 %64, 0
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end120
  %65 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_error(%struct.png_struct_def* noundef %65, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)) #3
  unreachable

if.end124:                                        ; preds = %if.end120
  store i64 0, i64* %crt_idat_offset, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.else92
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.end91
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end75
  %66 = load i32, i32* %crt_chunk_is_idat, align 4
  %tobool128 = icmp ne i32 %66, 0
  br i1 %tobool128, label %if.then129, label %if.end134

if.then129:                                       ; preds = %sw.bb127
  %67 = load i32, i32* %crt_idat_crc, align 4
  %conv130 = zext i32 %67 to i64
  %68 = load i8*, i8** %data.addr, align 8
  %69 = load i64, i64* %length.addr, align 8
  %conv131 = trunc i64 %69 to i32
  %call132 = call i64 @crc32(i64 noundef %conv130, i8* noundef %68, i32 noundef %conv131)
  %conv133 = trunc i64 %call132 to i32
  store i32 %conv133, i32* %crt_idat_crc, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then129, %sw.bb127
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.end75
  %70 = load i32, i32* %crt_chunk_is_idat, align 4
  %tobool136 = icmp ne i32 %70, 0
  br i1 %tobool136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %sw.bb135
  br label %return

if.end138:                                        ; preds = %sw.bb135
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end75, %if.end138, %if.end134, %if.end126
  %71 = load i8*, i8** %data.addr, align 8
  %72 = load i64, i64* %length.addr, align 8
  %73 = load %struct.__sFILE*, %struct.__sFILE** %stream, align 8
  %call139 = call i64 @"\01_fwrite"(i8* noundef %71, i64 noundef 1, i64 noundef %72, %struct.__sFILE* noundef %73)
  %74 = load i64, i64* %length.addr, align 8
  %cmp140 = icmp ne i64 %call139, %74
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %sw.epilog
  %75 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_error(%struct.png_struct_def* noundef %75, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0)) #3
  unreachable

if.end143:                                        ; preds = %sw.epilog
  %76 = load i64, i64* %length.addr, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  %add144 = add i64 %77, %76
  store i64 %add144, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  br label %return

return:                                           ; preds = %if.end143, %if.then137, %if.else90, %if.then74, %if.then68
  ret void
}

declare i8* @png_get_io_ptr(%struct.png_struct_def* noundef) #1

declare i32 @png_get_io_state(%struct.png_struct_def* noundef) #1

declare i32 @opng_allow_chunk(...) #1

declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) #2

declare i64 @osys_ftello(%struct.__sFILE* noundef) #1

declare void @png_save_uint_32(i8* noundef, i32 noundef) #1

declare i64 @crc32(i64 noundef, i8* noundef, i32 noundef) #1

declare i64 @"\01_fwrite"(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #1

declare i32 @opng_check_idat_size(...) #1

declare i64 @osys_fwrite_at(%struct.__sFILE* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #2

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
