; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_write_file.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_write_file.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.exception_context = type { [48 x i32]*, i32, %struct.anon }
%struct.anon = type { i8* }
%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_process_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.dummyStruct = type { i32 }

@filter_table = constant [6 x i32] [i32 8, i32 16, i32 32, i32 64, i32 128, i32 248], align 4
@idat_size_max = constant i64 2147483647, align 8
@usr_panic = global void (i8*)* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid encoding parameters\00", align 1
@the_exception_context = global [1 x %struct.exception_context] zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"1.6.21\00", align 1
@write_ptr = global %struct.png_struct_def* null, align 8
@write_info_ptr = global %struct.png_info_def* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@options = global %struct.opng_options zeroinitializer, align 8
@process = global %struct.opng_process_struct zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_write_file(%struct.__sFILE* noundef %outfile, i32 noundef %compression_level, i32 noundef %memory_level, i32 noundef %compression_strategy, i32 noundef %filter) #0 {
entry:
  %outfile.addr = alloca %struct.__sFILE*, align 8
  %compression_level.addr = alloca i32, align 4
  %memory_level.addr = alloca i32, align 4
  %compression_strategy.addr = alloca i32, align 4
  %filter.addr = alloca i32, align 4
  %err_msg = alloca i8*, align 8
  %exception__prev = alloca [48 x i32]*, align 8
  %exception__env = alloca [48 x i32], align 4
  store %struct.__sFILE* %outfile, %struct.__sFILE** %outfile.addr, align 8
  store i32 %compression_level, i32* %compression_level.addr, align 4
  store i32 %memory_level, i32* %memory_level.addr, align 4
  store i32 %compression_strategy, i32* %compression_strategy.addr, align 4
  store i32 %filter, i32* %filter.addr, align 4
  %0 = load i32, i32* %compression_level.addr, align 4
  %cmp = icmp sge i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %compression_level.addr, align 4
  %cmp1 = icmp sle i32 %1, 9
  br i1 %cmp1, label %land.lhs.true2, label %if.then

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %memory_level.addr, align 4
  %cmp3 = icmp sge i32 %2, 1
  br i1 %cmp3, label %land.lhs.true4, label %if.then

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, i32* %memory_level.addr, align 4
  %cmp5 = icmp sle i32 %3, 9
  br i1 %cmp5, label %land.lhs.true6, label %if.then

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load i32, i32* %compression_strategy.addr, align 4
  %cmp7 = icmp sge i32 %4, 0
  br i1 %cmp7, label %land.lhs.true8, label %if.then

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %5 = load i32, i32* %compression_strategy.addr, align 4
  %cmp9 = icmp sle i32 %5, 3
  br i1 %cmp9, label %land.lhs.true10, label %if.then

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %6 = load i32, i32* %filter.addr, align 4
  %cmp11 = icmp sge i32 %6, 0
  br i1 %cmp11, label %land.lhs.true12, label %if.then

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %7 = load i32, i32* %filter.addr, align 4
  %cmp13 = icmp sle i32 %7, 5
  br i1 %cmp13, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true12, %land.lhs.true10, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %8 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %8(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true12
  %9 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %9, [48 x i32]** %exception__prev, align 8
  store [48 x i32]* %exception__env, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %exception__env, i64 0, i64 0
  %call = call i32 @setjmp(i32* noundef %arraydecay) #4
  %cmp14 = icmp eq i32 %call, 0
  br i1 %cmp14, label %if.then15, label %if.else33

if.then15:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then15
  %call16 = call noalias %struct.png_struct_def* @png_create_write_struct(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, void (%struct.png_struct_def*, i8*)* noundef bitcast (void (%struct.dummyStruct*, i8*)* @opng_error to void (%struct.png_struct_def*, i8*)*), void (%struct.png_struct_def*, i8*)* noundef bitcast (void (%struct.dummyStruct*, i8*)* @opng_warning to void (%struct.png_struct_def*, i8*)*))
  store %struct.png_struct_def* %call16, %struct.png_struct_def** @write_ptr, align 8
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %call17 = call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* noundef %10)
  store %struct.png_info_def* %call17, %struct.png_info_def** @write_info_ptr, align 8
  %11 = load %struct.png_info_def*, %struct.png_info_def** @write_info_ptr, align 8
  %cmp18 = icmp eq %struct.png_info_def* %11, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.body
  br label %for.cond

for.cond:                                         ; preds = %if.then19
  store volatile i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc

for.inc:                                          ; preds = %for.cond
  %12 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay20 = getelementptr inbounds [48 x i32], [48 x i32]* %12, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay20, i32 noundef 1) #5
  unreachable

if.end21:                                         ; preds = %do.body
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %14 = load i32, i32* %compression_level.addr, align 4
  call void @png_set_compression_level(%struct.png_struct_def* noundef %13, i32 noundef %14)
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %16 = load i32, i32* %memory_level.addr, align 4
  call void @png_set_compression_mem_level(%struct.png_struct_def* noundef %15, i32 noundef %16)
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %18 = load i32, i32* %compression_strategy.addr, align 4
  call void @png_set_compression_strategy(%struct.png_struct_def* noundef %17, i32 noundef %18)
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %20 = load i32, i32* %filter.addr, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @filter_table, i64 0, i64 %idxprom
  %21 = load i32, i32* %arrayidx, align 4
  call void @png_set_filter(%struct.png_struct_def* noundef %19, i32 noundef 0, i32 noundef %21)
  %22 = load i32, i32* %compression_strategy.addr, align 4
  %cmp22 = icmp ne i32 %22, 2
  br i1 %cmp22, label %land.lhs.true23, label %if.else

land.lhs.true23:                                  ; preds = %if.end21
  %23 = load i32, i32* %compression_strategy.addr, align 4
  %cmp24 = icmp ne i32 %23, 3
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %land.lhs.true23
  %24 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  %cmp26 = icmp sgt i32 %24, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then25
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  call void @png_set_compression_window_bits(%struct.png_struct_def* noundef %25, i32 noundef %26)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true23, %if.end21
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  call void @png_set_compression_window_bits(%struct.png_struct_def* noundef %27, i32 noundef 9)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end28
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  call void @png_set_keep_unknown_chunks(%struct.png_struct_def* noundef %28, i32 noundef 3, i8* noundef null, i32 noundef 0)
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  call void @png_set_user_limits(%struct.png_struct_def* noundef %29, i32 noundef 2147483647, i32 noundef 2147483647)
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %31 = load %struct.png_info_def*, %struct.png_info_def** @write_info_ptr, align 8
  %32 = load %struct.__sFILE*, %struct.__sFILE** %outfile.addr, align 8
  %cmp30 = icmp ne %struct.__sFILE* %32, null
  %conv = zext i1 %cmp30 to i32
  %call31 = call i32 bitcast (i32 (...)* @opng_store_image_info to i32 (%struct.png_struct_def*, %struct.png_info_def*, i32)*)(%struct.png_struct_def* noundef %30, %struct.png_info_def* noundef %31, i32 noundef %conv)
  %call32 = call i32 bitcast (i32 (...)* @opng_init_write_data to i32 ()*)()
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %34 = load %struct.__sFILE*, %struct.__sFILE** %outfile.addr, align 8
  %35 = bitcast %struct.__sFILE* %34 to i8*
  call void @png_set_write_fn(%struct.png_struct_def* noundef %33, i8* noundef %35, void (%struct.png_struct_def*, i8*, i64)* noundef bitcast (void (%struct.dummyStruct*, i8*, i64)* @opng_write_data to void (%struct.png_struct_def*, i8*, i64)*), void (%struct.png_struct_def*)* noundef null)
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %37 = load %struct.png_info_def*, %struct.png_info_def** @write_info_ptr, align 8
  call void @png_write_png(%struct.png_struct_def* noundef %36, %struct.png_info_def* noundef %37, i32 noundef 0, i8* noundef null)
  store volatile i8* null, i8** %err_msg, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end29
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %38 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  br label %if.end34

if.else33:                                        ; preds = %if.end
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %do.end
  %39 = load volatile [48 x i32]*, [48 x i32]** %exception__prev, align 8
  store [48 x i32]* %39, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %40 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool35 = icmp ne i32 %40, 0
  br i1 %tobool35, label %lor.lhs.false, label %if.then36

lor.lhs.false:                                    ; preds = %if.end34
  %41 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %41, i8** %err_msg, align 8
  br i1 false, label %if.then36, label %if.else37

if.then36:                                        ; preds = %lor.lhs.false, %if.end34
  br label %if.end38

if.else37:                                        ; preds = %lor.lhs.false
  store i64 2147483648, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then36
  call void @png_destroy_write_struct(%struct.png_struct_def** noundef @write_ptr, %struct.png_info_def** noundef @write_info_ptr)
  %42 = load volatile i8*, i8** %err_msg, align 8
  %cmp39 = icmp ne i8* %42, null
  br i1 %cmp39, label %if.then41, label %if.end45

if.then41:                                        ; preds = %if.end38
  br label %for.cond42

for.cond42:                                       ; preds = %if.then41
  %43 = load volatile i8*, i8** %err_msg, align 8
  store volatile i8* %43, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc43

for.inc43:                                        ; preds = %for.cond42
  %44 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay44 = getelementptr inbounds [48 x i32], [48 x i32]* %44, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay44, i32 noundef 1) #5
  unreachable

if.end45:                                         ; preds = %if.end38
  ret void
}

; Function Attrs: returns_twice
declare i32 @setjmp(i32* noundef) #1

declare noalias %struct.png_struct_def* @png_create_write_struct(i8* noundef, i8* noundef, void (%struct.png_struct_def*, i8*)* noundef, void (%struct.png_struct_def*, i8*)* noundef) #2

declare void @opng_error(%struct.dummyStruct* noundef, i8* noundef) #2

declare void @opng_warning(%struct.dummyStruct* noundef, i8* noundef) #2

declare noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* noundef) #2

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) #3

declare void @png_set_compression_level(%struct.png_struct_def* noundef, i32 noundef) #2

declare void @png_set_compression_mem_level(%struct.png_struct_def* noundef, i32 noundef) #2

declare void @png_set_compression_strategy(%struct.png_struct_def* noundef, i32 noundef) #2

declare void @png_set_filter(%struct.png_struct_def* noundef, i32 noundef, i32 noundef) #2

declare void @png_set_compression_window_bits(%struct.png_struct_def* noundef, i32 noundef) #2

declare void @png_set_keep_unknown_chunks(%struct.png_struct_def* noundef, i32 noundef, i8* noundef, i32 noundef) #2

declare void @png_set_user_limits(%struct.png_struct_def* noundef, i32 noundef, i32 noundef) #2

declare i32 @opng_store_image_info(...) #2

declare i32 @opng_init_write_data(...) #2

declare void @png_set_write_fn(%struct.png_struct_def* noundef, i8* noundef, void (%struct.png_struct_def*, i8*, i64)* noundef, void (%struct.png_struct_def*)* noundef) #2

declare void @opng_write_data(%struct.dummyStruct* noundef, i8* noundef, i64 noundef) #2

declare void @png_write_png(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i8* noundef) #2

declare void @png_destroy_write_struct(%struct.png_struct_def** noundef, %struct.png_info_def** noundef) #2

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
