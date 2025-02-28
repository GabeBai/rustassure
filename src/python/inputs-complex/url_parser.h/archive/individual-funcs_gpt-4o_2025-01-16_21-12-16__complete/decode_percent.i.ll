; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/decode_percent.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/decode_percent.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @decode_percent(i8* noundef %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %in, align 8
  %1 = load i8*, i8** %s.addr, align 8
  store i8* %1, i8** %out, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end23, %entry
  %2 = load i8*, i8** %in, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %in, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i8*, i8** %in, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %in, align 8
  %call = call i32 bitcast (i32 (...)* @unhex to i32 (i8*)*)(i8* noundef %incdec.ptr)
  store i32 %call, i32* %high, align 4
  %7 = load i32, i32* %high, align 4
  %cmp2 = icmp slt i32 %7, 0
  br i1 %cmp2, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i8*, i8** %in, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %lor.lhs.false, %if.then
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i8*, i8** %in, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr8, i8** %in, align 8
  %call9 = call i32 bitcast (i32 (...)* @unhex to i32 (i8*)*)(i8* noundef %incdec.ptr8)
  store i32 %call9, i32* %low, align 4
  %11 = load i32, i32* %low, align 4
  %cmp10 = icmp slt i32 %11, 0
  br i1 %cmp10, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %12 = load i8*, i8** %in, align 8
  %13 = load i8, i8* %12, align 1
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false12, %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end17:                                         ; preds = %lor.lhs.false12
  %14 = load i32, i32* %high, align 4
  %mul = mul i32 %14, 16
  %15 = load i32, i32* %low, align 4
  %add = add i32 %mul, %15
  %conv18 = trunc i32 %add to i8
  %16 = load i8*, i8** %out, align 8
  store i8 %conv18, i8* %16, align 1
  %17 = load i8*, i8** %out, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %out, align 8
  %18 = load i8*, i8** %in, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr20, i8** %in, align 8
  br label %if.end23

if.else:                                          ; preds = %while.body
  %19 = load i8*, i8** %in, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr21, i8** %in, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %out, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr22, i8** %out, align 8
  store i8 %20, i8* %21, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end17
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %22 = load i8*, i8** %out, align 8
  store i8 0, i8* %22, align 1
  %23 = load i8*, i8** %s.addr, align 8
  store i8* %23, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then16, %if.then7
  %24 = load i8*, i8** %retval, align 8
  ret i8* %24
}

declare i32 @unhex(...) #1

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
!9 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git dfb083149f45185bece93228f47a1ca85d4c12a0)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
