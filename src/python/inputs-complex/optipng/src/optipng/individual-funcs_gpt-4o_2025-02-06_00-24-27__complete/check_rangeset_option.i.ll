; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/check_rangeset_option.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/check_rangeset_option.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @check_rangeset_option(i8* noundef %opt, i8* noundef %opt_arg, i32 noundef %result_mask) #0 {
entry:
  %opt.addr = alloca i8*, align 8
  %opt_arg.addr = alloca i8*, align 8
  %result_mask.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i8* %opt, i8** %opt.addr, align 8
  store i8* %opt_arg, i8** %opt_arg.addr, align 8
  store i32 %result_mask, i32* %result_mask.addr, align 4
  %0 = load i8*, i8** %opt_arg.addr, align 8
  %call = call i32 bitcast (i32 (...)* @opng_rangeset2bitset to i32 (i32*, i8*)*)(i32* noundef %result, i8* noundef %0)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %result_mask.addr, align 4
  %2 = load i32, i32* %result, align 4
  %and = and i32 %2, %1
  store i32 %and, i32* %result, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %result, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %opt.addr, align 8
  %5 = load i8*, i8** %opt_arg.addr, align 8
  %call3 = call i32 bitcast (i32 (...)* @err_option_arg to i32 (i8*, i8*)*)(i8* noundef %4, i8* noundef %5)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %6 = load i32, i32* %result, align 4
  ret i32 %6
}

declare i32 @opng_rangeset2bitset(...) #1

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
