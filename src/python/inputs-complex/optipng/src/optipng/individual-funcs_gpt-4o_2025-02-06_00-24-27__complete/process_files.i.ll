; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/process_files.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/process_files.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_ui = type { void (i8*, ...)*, void (i32)*, void (i64, i64)*, void (i8*)* }

@options = global %struct.opng_options zeroinitializer, align 8
@.str = private unnamed_addr constant [37 x i8] c"Can't initialize optimization engine\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't finalize optimization engine\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @process_files(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %result = alloca i32, align 4
  %ui = alloca %struct.opng_ui, align 8
  %i = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %printf_fn = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %ui, i32 0, i32 0
  store void (i8*, ...)* @app_printf, void (i8*, ...)** %printf_fn, align 8
  %print_cntrl_fn = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %ui, i32 0, i32 1
  store void (i32)* @app_print_cntrl, void (i32)** %print_cntrl_fn, align 8
  %progress_fn = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %ui, i32 0, i32 2
  store void (i64, i64)* @app_progress, void (i64, i64)** %progress_fn, align 8
  %panic_fn = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %ui, i32 0, i32 3
  store void (i8*)* @panic, void (i8*)** %panic_fn, align 8
  %call = call i32 @opng_initialize(%struct.opng_options* noundef @options, %struct.opng_ui* noundef %ui)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @panic(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %result, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %0, %1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %argv.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp eq i8* %4, null
  br i1 %cmp2, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8**, i8*** %argv.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds i8*, i8** %5, i64 %idxprom3
  %7 = load i8*, i8** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end9:                                          ; preds = %lor.lhs.false
  %9 = load i8**, i8*** %argv.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds i8*, i8** %9, i64 %idxprom10
  %11 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i32 @opng_optimize(i8* noundef %11)
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end9
  store i32 1, i32* %result, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end9
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %if.then8
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %call17 = call i32 @opng_finalize()
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.end
  call void @panic(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %for.end
  %13 = load i32, i32* %result, align 4
  ret i32 %13
}

declare void @app_printf(i8* noundef, ...) #1

declare void @app_print_cntrl(i32 noundef) #1

declare void @app_progress(i64 noundef, i64 noundef) #1

declare void @panic(i8* noundef) #1

declare i32 @opng_initialize(%struct.opng_options* noundef, %struct.opng_ui* noundef) #1

declare i32 @opng_optimize(i8* noundef) #1

declare i32 @opng_finalize() #1

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
