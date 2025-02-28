; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__wcwidth.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__wcwidth.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @__wcwidth(i32 noundef %_c) #0 {
entry:
  %retval = alloca i32, align 4
  %_c.addr = alloca i32, align 4
  %_x = alloca i32, align 4
  store i32 %_c, i32* %_c.addr, align 4
  %0 = load i32, i32* %_c.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %_c.addr, align 4
  %call = call i32 @__maskrune(i32 noundef %1, i64 noundef 3758358528)
  store i32 %call, i32* %_x, align 4
  %2 = load i32, i32* %_x, align 4
  %conv = zext i32 %2 to i64
  %and = and i64 %conv, 3758096384
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %_x, align 4
  %conv4 = zext i32 %3 to i64
  %and5 = and i64 %conv4, 3758096384
  %shr = ashr i64 %and5, 30
  %conv6 = trunc i64 %shr to i32
  store i32 %conv6, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %4 = load i32, i32* %_x, align 4
  %conv8 = zext i32 %4 to i64
  %and9 = and i64 %conv8, 262144
  %cmp10 = icmp ne i64 %and9, 0
  %5 = zext i1 %cmp10 to i64
  %cond = select i1 %cmp10, i32 1, i32 -1
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare i32 @__maskrune(i32 noundef, i64 noundef) #1

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
