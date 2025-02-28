; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/check_obj_option.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/check_obj_option.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Manipulation of individual chunks is not implemented\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @check_obj_option(i8* noundef %opt, i8* noundef %opt_arg) #0 {
entry:
  %opt.addr = alloca i8*, align 8
  %opt_arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %opt, i8** %opt.addr, align 8
  store i8* %opt_arg, i8** %opt_arg.addr, align 8
  %0 = load i8*, i8** %opt_arg.addr, align 8
  %call = call i32 @strcmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %0)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end33

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp ult i32 %1, 4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %opt_arg.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp sge i32 %conv, 65
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %5 = load i8*, i8** %opt_arg.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp sle i32 %conv6, 90
  br i1 %cmp7, label %if.end21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %8 = load i8*, i8** %opt_arg.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 %idxprom9
  %10 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %10 to i32
  %cmp12 = icmp sge i32 %conv11, 97
  br i1 %cmp12, label %land.lhs.true14, label %if.then20

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %11 = load i8*, i8** %opt_arg.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %11, i64 %idxprom15
  %13 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %13 to i32
  %cmp18 = icmp sle i32 %conv17, 122
  br i1 %cmp18, label %if.end21, label %if.then20

if.then20:                                        ; preds = %land.lhs.true14, %lor.lhs.false
  br label %for.end

if.end21:                                         ; preds = %land.lhs.true14, %land.lhs.true
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then20, %for.cond
  %15 = load i32, i32* %i, align 4
  %cmp22 = icmp eq i32 %15, 4
  br i1 %cmp22, label %land.lhs.true24, label %if.else

land.lhs.true24:                                  ; preds = %for.end
  %16 = load i8*, i8** %opt_arg.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom25 = zext i32 %17 to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %16, i64 %idxprom25
  %18 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %18 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %land.lhs.true24
  %call31 = call i32 bitcast (i32 (...)* @error to i32 (i8*)*)(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end33

if.else:                                          ; preds = %land.lhs.true24, %for.end
  %19 = load i8*, i8** %opt.addr, align 8
  %20 = load i8*, i8** %opt_arg.addr, align 8
  %call32 = call i32 bitcast (i32 (...)* @err_option_arg to i32 (i8*, i8*)*)(i8* noundef %19, i8* noundef %20)
  br label %if.end33

if.end33:                                         ; preds = %if.then, %if.else, %if.then30
  ret void
}

declare i32 @strcmp(i8* noundef, i8* noundef) #1

declare i32 @error(...) #1

declare i32 @err_option_arg(...) #1

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
