; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/err_option_arg.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/err_option_arg.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [31 x i8] c"Missing argument for option %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid argument for option %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @err_option_arg(i8* noundef %opt, i8* noundef %opt_arg) #0 {
entry:
  %opt.addr = alloca i8*, align 8
  %opt_arg.addr = alloca i8*, align 8
  store i8* %opt, i8** %opt.addr, align 8
  store i8* %opt_arg, i8** %opt_arg.addr, align 8
  %0 = load i8*, i8** %opt_arg.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %opt_arg.addr, align 8
  %call = call i8* @opng_strltrim(i8* noundef %1)
  %2 = load i8, i8* %call, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %opt.addr, align 8
  %call3 = call i32 bitcast (i32 (...)* @error to i32 (i8*, i8*)*)(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef %3)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %opt.addr, align 8
  %5 = load i8*, i8** %opt_arg.addr, align 8
  %call4 = call i32 bitcast (i32 (...)* @error to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* noundef %4, i8* noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i8* @opng_strltrim(i8* noundef) #1

declare i32 @error(...) #1

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
