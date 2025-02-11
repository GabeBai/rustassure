; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/check_power2_option.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/check_power2_option.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @check_power2_option(i8* noundef %opt, i8* noundef %opt_arg, i32 noundef %lowest, i32 noundef %highest) #0 {
entry:
  %retval = alloca i32, align 4
  %opt.addr = alloca i8*, align 8
  %opt_arg.addr = alloca i8*, align 8
  %lowest.addr = alloca i32, align 4
  %highest.addr = alloca i32, align 4
  %value = alloca i64, align 8
  %result = alloca i32, align 4
  store i8* %opt, i8** %opt.addr, align 8
  store i8* %opt_arg, i8** %opt_arg.addr, align 8
  store i32 %lowest, i32* %lowest.addr, align 4
  store i32 %highest, i32* %highest.addr, align 4
  %0 = load i8*, i8** %opt_arg.addr, align 8
  %call = call i32 bitcast (i32 (...)* @opng_str2ulong to i32 (i64*, i8*, i32)*)(i64* noundef %value, i8* noundef %0, i32 noundef 1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %lowest.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %lowest.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %2 = load i32, i32* %highest.addr, align 4
  %cmp3 = icmp sgt i32 %2, 62
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 62, i32* %highest.addr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %3 = load i32, i32* %lowest.addr, align 4
  store i32 %3, i32* %result, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %4 = load i32, i32* %result, align 4
  %5 = load i32, i32* %highest.addr, align 4
  %cmp6 = icmp sle i32 %4, %5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %result, align 4
  %sh_prom = zext i32 %6 to i64
  %shl = shl i64 1, %sh_prom
  %7 = load i64, i64* %value, align 8
  %cmp7 = icmp eq i64 %shl, %7
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  %8 = load i32, i32* %result, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %9 = load i32, i32* %result, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %result, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry
  %10 = load i8*, i8** %opt.addr, align 8
  %11 = load i8*, i8** %opt_arg.addr, align 8
  %call11 = call i32 bitcast (i32 (...)* @err_option_arg to i32 (i8*, i8*)*)(i8* noundef %10, i8* noundef %11)
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then8
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare i32 @opng_str2ulong(...) #1

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
