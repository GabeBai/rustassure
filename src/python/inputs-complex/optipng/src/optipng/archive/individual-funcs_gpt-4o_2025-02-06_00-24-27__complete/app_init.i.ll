; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_init.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_init.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@start_of_line = global i32 0, align 4
@operation = global i32 0, align 4
@__stdoutp = external global %struct.__sFILE*, align 8
@con_file = global %struct.__sFILE* null, align 8
@options = global %struct.opng_options zeroinitializer, align 8
@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@log_file = global %struct.__sFILE* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't open log file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"** Warning: %s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"The option -log is deprecated; use shell redirection\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @app_init() #0 {
entry:
  store i32 1, i32* @start_of_line, align 4
  %0 = load i32, i32* @operation, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @operation, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  store %struct.__sFILE* %2, %struct.__sFILE** @con_file, align 8
  br label %if.end4

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 7), align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.else3, label %if.then2

if.then2:                                         ; preds = %if.else
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %4, %struct.__sFILE** @con_file, align 8
  br label %if.end

if.else3:                                         ; preds = %if.else
  store %struct.__sFILE* null, %struct.__sFILE** @con_file, align 8
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %5 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %cmp5 = icmp ne i8* %5, null
  br i1 %cmp5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.end4
  %6 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %call = call %struct.__sFILE* @"\01_fopen"(i8* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.__sFILE* %call, %struct.__sFILE** @log_file, align 8
  %cmp7 = icmp eq %struct.__sFILE* %call, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then6
  %7 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %call9 = call i32 bitcast (i32 (...)* @error to i32 (i8*, i8*)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef %7)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then6
  %8 = load %struct.__sFILE*, %struct.__sFILE** @log_file, align 8
  %call11 = call i32 @setvbuf(%struct.__sFILE* noundef %8, i8* noundef null, i32 noundef 1, i64 noundef 1024)
  %call12 = call i32 bitcast (i32 (...)* @app_printf to i32 (i8*, i8*)*)(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %if.end4
  ret void
}

declare %struct.__sFILE* @"\01_fopen"(i8* noundef, i8* noundef) #1

declare i32 @error(...) #1

declare i32 @setvbuf(%struct.__sFILE* noundef, i8* noundef, i32 noundef, i64 noundef) #1

declare i32 @app_printf(...) #1

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
