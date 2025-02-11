; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_copy_file.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_copy_file.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type opaque
%struct.exception_context = type { [48 x i32]*, i32, %struct.anon }
%struct.anon = type { i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.png_info_def = type opaque
%struct.dummyStruct = type { i32 }

@sig_IEND = constant [4 x i8] c"IEND", align 1
@.str = private unnamed_addr constant [7 x i8] c"1.6.21\00", align 1
@write_ptr = global %struct.png_struct_def* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@the_exception_context = global [1 x %struct.exception_context] zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Data error\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_copy_file(%struct.__sFILE* noundef %infile, %struct.__sFILE* noundef %outfile) #0 {
entry:
  %infile.addr = alloca %struct.__sFILE*, align 8
  %outfile.addr = alloca %struct.__sFILE*, align 8
  %buf = alloca i8*, align 8
  %buf_size_incr = alloca i32, align 4
  %buf_size = alloca i32, align 4
  %length = alloca i32, align 4
  %chunk_hdr = alloca [8 x i8], align 1
  %err_msg = alloca i8*, align 8
  %exception__prev = alloca [48 x i32]*, align 8
  %exception__env = alloca [48 x i32], align 4
  store %struct.__sFILE* %infile, %struct.__sFILE** %infile.addr, align 8
  store %struct.__sFILE* %outfile, %struct.__sFILE** %outfile.addr, align 8
  store i32 4096, i32* %buf_size_incr, align 4
  %call = call noalias %struct.png_struct_def* @png_create_write_struct(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef null, void (%struct.png_struct_def*, i8*)* noundef bitcast (void (%struct.dummyStruct*, i8*)* @opng_error to void (%struct.png_struct_def*, i8*)*), void (%struct.png_struct_def*, i8*)* noundef bitcast (void (%struct.dummyStruct*, i8*)* @opng_warning to void (%struct.png_struct_def*, i8*)*))
  store %struct.png_struct_def* %call, %struct.png_struct_def** @write_ptr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.then
  store volatile i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc

for.inc:                                          ; preds = %for.cond
  %1 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %1, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay, i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 bitcast (i32 (...)* @opng_init_write_data to i32 ()*)()
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %3 = load %struct.__sFILE*, %struct.__sFILE** %outfile.addr, align 8
  %4 = bitcast %struct.__sFILE* %3 to i8*
  call void @png_set_write_fn(%struct.png_struct_def* noundef %2, i8* noundef %4, void (%struct.png_struct_def*, i8*, i64)* noundef bitcast (void (%struct.dummyStruct*, i8*, i64)* @opng_write_data to void (%struct.png_struct_def*, i8*, i64)*), void (%struct.png_struct_def*)* noundef null)
  %5 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %5, [48 x i32]** %exception__prev, align 8
  store [48 x i32]* %exception__env, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay2 = getelementptr inbounds [48 x i32], [48 x i32]* %exception__env, i64 0, i64 0
  %call3 = call i32 @setjmp(i32* noundef %arraydecay2) #5
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond69, %if.then5
  store volatile i8* null, i8** %buf, align 8
  store i32 0, i32* %buf_size, align 4
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  call void @png_write_sig(%struct.png_struct_def* noundef %6)
  br label %do.body6

do.body6:                                         ; preds = %do.cond, %do.body
  %arraydecay7 = getelementptr inbounds [8 x i8], [8 x i8]* %chunk_hdr, i64 0, i64 0
  %7 = load %struct.__sFILE*, %struct.__sFILE** %infile.addr, align 8
  %call8 = call i64 @fread(i8* noundef %arraydecay7, i64 noundef 8, i64 noundef 1, %struct.__sFILE* noundef %7)
  %cmp9 = icmp ne i64 %call8, 1
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %do.body6
  br label %for.cond11

for.cond11:                                       ; preds = %if.then10
  store volatile i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.cond11
  %8 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay13 = getelementptr inbounds [48 x i32], [48 x i32]* %8, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay13, i32 noundef 1) #4
  unreachable

if.end14:                                         ; preds = %do.body6
  %arraydecay15 = getelementptr inbounds [8 x i8], [8 x i8]* %chunk_hdr, i64 0, i64 0
  %9 = load i8, i8* %arraydecay15, align 1
  %conv = zext i8 %9 to i32
  %shl = shl i32 %conv, 24
  %arraydecay16 = getelementptr inbounds [8 x i8], [8 x i8]* %chunk_hdr, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay16, i64 1
  %10 = load i8, i8* %add.ptr, align 1
  %conv17 = zext i8 %10 to i32
  %shl18 = shl i32 %conv17, 16
  %add = add i32 %shl, %shl18
  %arraydecay19 = getelementptr inbounds [8 x i8], [8 x i8]* %chunk_hdr, i64 0, i64 0
  %add.ptr20 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  %11 = load i8, i8* %add.ptr20, align 1
  %conv21 = zext i8 %11 to i32
  %shl22 = shl i32 %conv21, 8
  %add23 = add i32 %add, %shl22
  %arraydecay24 = getelementptr inbounds [8 x i8], [8 x i8]* %chunk_hdr, i64 0, i64 0
  %add.ptr25 = getelementptr inbounds i8, i8* %arraydecay24, i64 3
  %12 = load i8, i8* %add.ptr25, align 1
  %conv26 = zext i8 %12 to i32
  %add27 = add i32 %add23, %conv26
  store i32 %add27, i32* %length, align 4
  %13 = load i32, i32* %length, align 4
  %cmp28 = icmp ugt i32 %13, 2147483647
  br i1 %cmp28, label %if.then30, label %if.end41

if.then30:                                        ; preds = %if.end14
  %14 = load volatile i8*, i8** %buf, align 8
  %cmp31 = icmp eq i8* %14, null
  br i1 %cmp31, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.then30
  %15 = load i32, i32* %length, align 4
  %conv33 = zext i32 %15 to i64
  %cmp34 = icmp eq i64 %conv33, 2303741511
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %land.lhs.true
  br label %do.cond

if.end37:                                         ; preds = %land.lhs.true, %if.then30
  br label %for.cond38

for.cond38:                                       ; preds = %if.end37
  store volatile i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc39

for.inc39:                                        ; preds = %for.cond38
  %16 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay40 = getelementptr inbounds [48 x i32], [48 x i32]* %16, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay40, i32 noundef 1) #4
  unreachable

if.end41:                                         ; preds = %if.end14
  %17 = load i32, i32* %length, align 4
  %add42 = add i32 %17, 4
  %18 = load i32, i32* %buf_size, align 4
  %cmp43 = icmp ugt i32 %add42, %18
  br i1 %cmp43, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.end41
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %20 = load volatile i8*, i8** %buf, align 8
  call void @png_free(%struct.png_struct_def* noundef %19, i8* noundef %20)
  %21 = load i32, i32* %length, align 4
  %add46 = add i32 %21, 4
  %add47 = add i32 %add46, 4095
  %div = udiv i32 %add47, 4096
  %mul = mul i32 %div, 4096
  store i32 %mul, i32* %buf_size, align 4
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %23 = load i32, i32* %buf_size, align 4
  %conv48 = zext i32 %23 to i64
  %call49 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %22, i64 noundef %conv48)
  store volatile i8* %call49, i8** %buf, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end41
  %24 = load volatile i8*, i8** %buf, align 8
  %25 = load i32, i32* %length, align 4
  %add51 = add i32 %25, 4
  %conv52 = zext i32 %add51 to i64
  %26 = load %struct.__sFILE*, %struct.__sFILE** %infile.addr, align 8
  %call53 = call i64 @fread(i8* noundef %24, i64 noundef %conv52, i64 noundef 1, %struct.__sFILE* noundef %26)
  %cmp54 = icmp ne i64 %call53, 1
  br i1 %cmp54, label %if.then56, label %if.end60

if.then56:                                        ; preds = %if.end50
  br label %for.cond57

for.cond57:                                       ; preds = %if.then56
  store volatile i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc58

for.inc58:                                        ; preds = %for.cond57
  %27 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay59 = getelementptr inbounds [48 x i32], [48 x i32]* %27, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay59, i32 noundef 1) #4
  unreachable

if.end60:                                         ; preds = %if.end50
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %arraydecay61 = getelementptr inbounds [8 x i8], [8 x i8]* %chunk_hdr, i64 0, i64 0
  %add.ptr62 = getelementptr inbounds i8, i8* %arraydecay61, i64 4
  %29 = load volatile i8*, i8** %buf, align 8
  %30 = load i32, i32* %length, align 4
  %conv63 = zext i32 %30 to i64
  call void @png_write_chunk(%struct.png_struct_def* noundef %28, i8* noundef %add.ptr62, i8* noundef %29, i64 noundef %conv63)
  br label %do.cond

do.cond:                                          ; preds = %if.end60, %if.then36
  %arraydecay64 = getelementptr inbounds [8 x i8], [8 x i8]* %chunk_hdr, i64 0, i64 0
  %add.ptr65 = getelementptr inbounds i8, i8* %arraydecay64, i64 4
  %call66 = call i32 @memcmp(i8* noundef %add.ptr65, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_IEND, i64 0, i64 0), i64 noundef 4)
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %do.body6, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  store volatile i8* null, i8** %err_msg, align 8
  br label %do.cond69

do.cond69:                                        ; preds = %do.end
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %31 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %do.body, label %do.end70, !llvm.loop !12

do.end70:                                         ; preds = %do.cond69
  br label %if.end71

if.else:                                          ; preds = %if.end
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %if.end71

if.end71:                                         ; preds = %if.else, %do.end70
  %32 = load volatile [48 x i32]*, [48 x i32]** %exception__prev, align 8
  store [48 x i32]* %32, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %33 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool72 = icmp ne i32 %33, 0
  br i1 %tobool72, label %lor.lhs.false, label %if.then73

lor.lhs.false:                                    ; preds = %if.end71
  %34 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %34, i8** %err_msg, align 8
  br i1 false, label %if.then73, label %if.else74

if.then73:                                        ; preds = %lor.lhs.false, %if.end71
  br label %if.end75

if.else74:                                        ; preds = %lor.lhs.false
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %if.then73
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %36 = load volatile i8*, i8** %buf, align 8
  call void @png_free(%struct.png_struct_def* noundef %35, i8* noundef %36)
  call void @png_destroy_write_struct(%struct.png_struct_def** noundef @write_ptr, %struct.png_info_def** noundef null)
  %37 = load volatile i8*, i8** %err_msg, align 8
  %cmp76 = icmp ne i8* %37, null
  br i1 %cmp76, label %if.then78, label %if.end82

if.then78:                                        ; preds = %if.end75
  br label %for.cond79

for.cond79:                                       ; preds = %if.then78
  %38 = load volatile i8*, i8** %err_msg, align 8
  store volatile i8* %38, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc80

for.inc80:                                        ; preds = %for.cond79
  %39 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay81 = getelementptr inbounds [48 x i32], [48 x i32]* %39, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay81, i32 noundef 1) #4
  unreachable

if.end82:                                         ; preds = %if.end75
  ret void
}

declare noalias %struct.png_struct_def* @png_create_write_struct(i8* noundef, i8* noundef, void (%struct.png_struct_def*, i8*)* noundef, void (%struct.png_struct_def*, i8*)* noundef) #1

declare void @opng_error(%struct.dummyStruct* noundef, i8* noundef) #1

declare void @opng_warning(%struct.dummyStruct* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) #2

declare i32 @opng_init_write_data(...) #1

declare void @png_set_write_fn(%struct.png_struct_def* noundef, i8* noundef, void (%struct.png_struct_def*, i8*, i64)* noundef, void (%struct.png_struct_def*)* noundef) #1

declare void @opng_write_data(%struct.dummyStruct* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: returns_twice
declare i32 @setjmp(i32* noundef) #3

declare void @png_write_sig(%struct.png_struct_def* noundef) #1

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #1

declare void @png_free(%struct.png_struct_def* noundef, i8* noundef) #1

declare noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) #1

declare void @png_write_chunk(%struct.png_struct_def* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

declare void @png_destroy_write_struct(%struct.png_struct_def** noundef, %struct.png_info_def** noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { returns_twice "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn }
attributes #5 = { returns_twice }

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
