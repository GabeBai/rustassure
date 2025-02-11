; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_finalize.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_finalize.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_summary_struct = type { i32, i32, i32, i32 }
%struct.opng_engine_struct = type { i32 }

@options = global %struct.opng_options zeroinitializer, align 8
@summary = global %struct.opng_summary_struct zeroinitializer, align 4
@usr_printf = global void (i8*, ...)* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"** Status report\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%u file(s) have been processed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%u multi-image file(s) have been snipped.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%u error(s) have been encountered.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%u erroneous file(s) have been fixed.\0A\00", align 1
@engine = global %struct.opng_engine_struct zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_finalize() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 9), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 3), align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  %cmp2 = icmp ugt i32 %2, 0
  br i1 %cmp2, label %if.then, label %if.end11

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %3 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %3(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %4 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 0), align 4
  call void (i8*, ...) %4(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef %5)
  %6 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 3), align 4
  %cmp3 = icmp ugt i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %7 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 3), align 4
  call void (i8*, ...) %7(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  %cmp5 = icmp ugt i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  %10 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  call void (i8*, ...) %10(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 noundef %11)
  %12 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 2), align 4
  %cmp7 = icmp ugt i32 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then6
  %13 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 2), align 4
  call void (i8*, ...) %13(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 noundef %14)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %lor.lhs.false1
  store i32 0, i32* getelementptr inbounds (%struct.opng_engine_struct, %struct.opng_engine_struct* @engine, i32 0, i32 0), align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
