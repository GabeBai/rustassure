; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/fill.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/fill.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@char_cat = global [256 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @fill(i32 noundef %value, i8* noundef %alnum, i8* noundef %special) #0 {
entry:
  %value.addr = alloca i32, align 4
  %alnum.addr = alloca i8*, align 8
  %special.addr = alloca i8*, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %alnum, i8** %alnum.addr, align 8
  store i8* %special, i8** %special.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %alnum.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %value.addr, align 4
  %3 = load i8*, i8** %alnum.addr, align 8
  %4 = load i8, i8* %3, align 1
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @char_cat, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %or = or i32 %5, %2
  store i32 %or, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8*, i8** %alnum.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %alnum.addr, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %7 = load i8*, i8** %special.addr, align 8
  %8 = load i8, i8* %7, align 1
  %tobool2 = icmp ne i8 %8, 0
  br i1 %tobool2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  %9 = load i32, i32* %value.addr, align 4
  %10 = load i8*, i8** %special.addr, align 8
  %11 = load i8, i8* %10, align 1
  %idxprom4 = zext i8 %11 to i64
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* @char_cat, i64 0, i64 %idxprom4
  %12 = load i32, i32* %arrayidx5, align 4
  %or6 = or i32 %12, %9
  store i32 %or6, i32* %arrayidx5, align 4
  br label %for.inc7

for.inc7:                                         ; preds = %for.body3
  %13 = load i8*, i8** %special.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr8, i8** %special.addr, align 8
  br label %for.cond1, !llvm.loop !12

for.end9:                                         ; preds = %for.cond1
  ret void
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
