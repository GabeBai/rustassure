; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/unhex.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/unhex.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @unhex(i8* noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv5 = sext i8 %5 to i32
  %sub = sub nsw i32 %conv5, 48
  store i32 %sub, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp sge i32 %conv6, 65
  br i1 %cmp7, label %land.lhs.true9, label %if.end16

land.lhs.true9:                                   ; preds = %if.end
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv10 = sext i8 %9 to i32
  %cmp11 = icmp sle i32 %conv10, 70
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %land.lhs.true9
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv14 = sext i8 %11 to i32
  %sub15 = sub nsw i32 %conv14, 65
  %add = add nsw i32 %sub15, 10
  store i32 %add, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true9, %if.end
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv17 = sext i8 %13 to i32
  %cmp18 = icmp sge i32 %conv17, 97
  br i1 %cmp18, label %land.lhs.true20, label %if.end28

land.lhs.true20:                                  ; preds = %if.end16
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv21 = sext i8 %15 to i32
  %cmp22 = icmp sle i32 %conv21, 102
  br i1 %cmp22, label %if.then24, label %if.end28

if.then24:                                        ; preds = %land.lhs.true20
  %16 = load i8*, i8** %s.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv25 = sext i8 %17 to i32
  %sub26 = sub nsw i32 %conv25, 97
  %add27 = add nsw i32 %sub26, 10
  store i32 %add27, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %land.lhs.true20, %if.end16
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then24, %if.then13, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
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
!9 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git dfb083149f45185bece93228f47a1ca85d4c12a0)"}
