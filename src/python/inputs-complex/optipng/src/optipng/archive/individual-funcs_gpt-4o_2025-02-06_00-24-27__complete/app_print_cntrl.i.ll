; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_print_cntrl.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_print_cntrl.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@start_of_line = global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@con_file = global %struct.__sFILE* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"<?>\00", align 1
@log_file = global %struct.__sFILE* null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @app_print_cntrl(i32 noundef %cntrl_code) #0 {
entry:
  %cntrl_code.addr = alloca i32, align 4
  %con_str = alloca i8*, align 8
  %log_str = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %cntrl_code, i32* %cntrl_code.addr, align 4
  %0 = load i32, i32* %cntrl_code.addr, align 4
  %cmp = icmp eq i32 %0, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %con_str, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %log_str, align 8
  store i32 1, i32* @start_of_line, align 4
  br label %if.end18

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %cntrl_code.addr, align 4
  %cmp1 = icmp eq i32 %1, 11
  br i1 %cmp1, label %if.then2, label %if.else5

if.then2:                                         ; preds = %if.else
  %2 = load i32, i32* @start_of_line, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.then2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %log_str, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %con_str, align 8
  store i32 1, i32* @start_of_line, align 4
  br label %if.end

if.else4:                                         ; preds = %if.then2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %log_str, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %con_str, align 8
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  br label %if.end17

if.else5:                                         ; preds = %if.else
  %3 = load i32, i32* %cntrl_code.addr, align 4
  %cmp6 = icmp slt i32 %3, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %if.else5
  %4 = load i32, i32* %cntrl_code.addr, align 4
  %cmp7 = icmp sgt i32 %4, -80
  br i1 %cmp7, label %land.lhs.true8, label %if.else15

land.lhs.true8:                                   ; preds = %land.lhs.true
  %5 = load i32, i32* @start_of_line, align 4
  %tobool9 = icmp ne i32 %5, 0
  br i1 %tobool9, label %if.then10, label %if.else15

if.then10:                                        ; preds = %land.lhs.true8
  %6 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %cmp11 = icmp ne %struct.__sFILE* %6, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then12
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %cntrl_code.addr, align 4
  %cmp13 = icmp sgt i32 %7, %8
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %call = call i32 @fputc(i32 noundef 32, %struct.__sFILE* noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %if.end14

if.end14:                                         ; preds = %for.end, %if.then10
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %con_str, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %log_str, align 8
  br label %if.end16

if.else15:                                        ; preds = %land.lhs.true8, %land.lhs.true, %if.else5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %log_str, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %con_str, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.end14
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  %11 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %cmp19 = icmp ne %struct.__sFILE* %11, null
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %12 = load i8*, i8** %con_str, align 8
  %13 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %call21 = call i32 @"\01_fputs"(i8* noundef %12, %struct.__sFILE* noundef %13)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18
  %14 = load %struct.__sFILE*, %struct.__sFILE** @log_file, align 8
  %cmp23 = icmp ne %struct.__sFILE* %14, null
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end22
  %15 = load i8*, i8** %log_str, align 8
  %16 = load %struct.__sFILE*, %struct.__sFILE** @log_file, align 8
  %call25 = call i32 @"\01_fputs"(i8* noundef %15, %struct.__sFILE* noundef %16)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22
  ret void
}

declare i32 @fputc(i32 noundef, %struct.__sFILE* noundef) #1

declare i32 @"\01_fputs"(i8* noundef, %struct.__sFILE* noundef) #1

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
