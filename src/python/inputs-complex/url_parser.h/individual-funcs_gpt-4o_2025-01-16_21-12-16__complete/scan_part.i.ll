; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/scan_part.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/scan_part.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@char_cat = internal constant <{ [127 x i16], [129 x i16] }> <{ [127 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 216, i16 0, i16 4, i16 216, i16 208, i16 216, i16 216, i16 216, i16 216, i16 216, i16 217, i16 216, i16 211, i16 211, i16 84, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 468, i16 216, i16 0, i16 216, i16 0, i16 68, i16 84, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 4, i16 0, i16 4, i16 0, i16 210, i16 0, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 0, i16 0, i16 0, i16 210], [129 x i16] zeroinitializer }>, align 2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @scan_part(i8* noundef %start, i32 noundef %category, i8 noundef signext %delimiter1, i8 noundef signext %delimiter2) #0 {
entry:
  %retval = alloca i8*, align 8
  %start.addr = alloca i8*, align 8
  %category.addr = alloca i32, align 4
  %delimiter1.addr = alloca i8, align 1
  %delimiter2.addr = alloca i8, align 1
  %p = alloca i8*, align 8
  store i8* %start, i8** %start.addr, align 8
  store i32 %category, i32* %category.addr, align 4
  store i8 %delimiter1, i8* %delimiter1.addr, align 1
  store i8 %delimiter2, i8* %delimiter2.addr, align 1
  %0 = load i8*, i8** %start.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end13, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %5 = load i8, i8* %delimiter1.addr, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv2, %conv3
  br i1 %cmp4, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv7 = sext i8 %7 to i32
  %8 = load i8, i8* %delimiter2.addr, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv7, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %for.cond
  %9 = load i8*, i8** %p, align 8
  store i8* %9, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false6
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %idxprom = zext i8 %11 to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* bitcast (<{ [127 x i16], [129 x i16] }>* @char_cat to [256 x i16]*), i64 0, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2
  %conv11 = zext i16 %12 to i32
  %13 = load i32, i32* %category.addr, align 4
  %and = and i32 %conv11, %13
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.then12
  br label %for.cond

return:                                           ; preds = %if.else, %if.then
  %15 = load i8*, i8** %retval, align 8
  ret i8* %15
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
