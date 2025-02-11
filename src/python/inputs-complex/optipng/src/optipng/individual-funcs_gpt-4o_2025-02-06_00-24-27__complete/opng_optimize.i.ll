; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_optimize.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_engine_struct = type { i32 }
%struct.opng_summary_struct = type { i32, i32, i32, i32 }
%struct.exception_context = type { [48 x i32]*, i32, %struct.anon }
%struct.anon = type { i8* }
%struct.opng_process_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@engine = global %struct.opng_engine_struct zeroinitializer, align 4
@usr_panic = global void (i8*)* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"The OptiPNG engine is not running\00", align 1
@usr_printf = global void (i8*, ...)* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"** Processing: %s\0A\00", align 1
@summary = global %struct.opng_summary_struct zeroinitializer, align 4
@the_exception_context = global [1 x %struct.exception_context] zeroinitializer, align 8
@process = global %struct.opng_process_struct zeroinitializer, align 8
@options = global %struct.opng_options zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_optimize(i8* noundef %infile_name) #0 {
entry:
  %infile_name.addr = alloca i8*, align 8
  %err_msg = alloca i8*, align 8
  %result = alloca i32, align 4
  %exception__prev = alloca [48 x i32]*, align 8
  %exception__env = alloca [48 x i32], align 4
  store i8* %infile_name, i8** %infile_name.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.opng_engine_struct, %struct.opng_engine_struct* @engine, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %1(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %3 = load i8*, i8** %infile_name.addr, align 8
  call void (i8*, ...) %2(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef %3)
  %4 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 0), align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 0), align 4
  %call = call i32 bitcast (i32 (...)* @opng_clear_image_info to i32 ()*)()
  %5 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %5, [48 x i32]** %exception__prev, align 8
  store [48 x i32]* %exception__env, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %exception__env, i64 0, i64 0
  %call1 = call i32 @setjmp(i32* noundef %arraydecay) #3
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then2
  %6 = load i8*, i8** %infile_name.addr, align 8
  %call3 = call i32 bitcast (i32 (...)* @opng_optimize_impl to i32 (i8*)*)(i8* noundef %6)
  %7 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and = and i32 %7, 256
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %do.body
  %8 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  %inc6 = add i32 %8, 1
  store i32 %inc6, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 2), align 4
  %inc7 = add i32 %9, 1
  store i32 %inc7, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 2), align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.body
  %10 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and9 = and i32 %10, 16
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end8
  %11 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %tobool12 = icmp ne i32 %11, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then11
  %12 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 3), align 4
  %inc14 = add i32 %12, 1
  store i32 %inc14, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 3), align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end8
  store volatile i32 0, i32* %result, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end16
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %13 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  br label %if.end18

if.else:                                          ; preds = %if.end
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %do.end
  %14 = load volatile [48 x i32]*, [48 x i32]** %exception__prev, align 8
  store [48 x i32]* %14, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %15 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %tobool19 = icmp ne i32 %15, 0
  br i1 %tobool19, label %lor.lhs.false, label %if.then20

lor.lhs.false:                                    ; preds = %if.end18
  %16 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store i8* %16, i8** %err_msg, align 8
  br i1 false, label %if.then20, label %if.else21

if.then20:                                        ; preds = %lor.lhs.false, %if.end18
  br label %if.end24

if.else21:                                        ; preds = %lor.lhs.false
  %17 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  %inc22 = add i32 %17, 1
  store i32 %inc22, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  %18 = load i8*, i8** %err_msg, align 8
  %call23 = call i32 bitcast (i32 (...)* @opng_print_error to i32 (i8*)*)(i8* noundef %18)
  store volatile i32 -1, i32* %result, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then20
  %call25 = call i32 bitcast (i32 (...)* @opng_destroy_image_info to i32 ()*)()
  %19 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %19(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %20 = load volatile i32, i32* %result, align 4
  ret i32 %20
}

declare i32 @opng_clear_image_info(...) #1

; Function Attrs: returns_twice
declare i32 @setjmp(i32* noundef) #2

declare i32 @opng_optimize_impl(...) #1

declare i32 @opng_print_error(...) #1

declare i32 @opng_destroy_image_info(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { returns_twice "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { returns_twice }

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
