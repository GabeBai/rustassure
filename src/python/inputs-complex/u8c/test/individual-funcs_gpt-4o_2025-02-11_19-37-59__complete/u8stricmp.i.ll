; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8stricmp.i.bc'
source_filename = "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8stricmp.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @u8stricmp(i8* noundef %s, i8* noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  %ls = alloca i32, align 4
  %lt = alloca i32, align 4
  %cs = alloca i32, align 4
  %ct = alloca i32, align 4
  %chk = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  store i32 0, i32* %cs, align 4
  store i32 0, i32* %ct, align 4
  store i32 0, i32* %chk, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %chk, align 4
  %cmp = icmp slt i32 %0, 1048576
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i32 @u8next_(i8* noundef %1, i32* noundef %cs)
  store i32 %call, i32* %ls, align 4
  %2 = load i8*, i8** %t.addr, align 8
  %call1 = call i32 @u8next_(i8* noundef %2, i32* noundef %ct)
  store i32 %call1, i32* %lt, align 4
  %3 = load i32, i32* %cs, align 4
  %call2 = call i32 @u8fold(i32 noundef %3)
  store i32 %call2, i32* %cs, align 4
  %4 = load i32, i32* %ct, align 4
  %call3 = call i32 @u8fold(i32 noundef %4)
  store i32 %call3, i32* %ct, align 4
  %5 = load i32, i32* %cs, align 4
  %6 = load i32, i32* %ct, align 4
  %cmp4 = icmp ne i32 %5, %6
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %cs, align 4
  %8 = load i32, i32* %ct, align 4
  %sub = sub nsw i32 %7, %8
  store i32 %sub, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* %ls, align 4
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %10 = load i32, i32* %ls, align 4
  %cmp8 = icmp slt i32 %10, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %11 = load i32, i32* %ls, align 4
  %sub10 = sub nsw i32 0, %11
  store i32 %sub10, i32* %ls, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %12 = load i32, i32* %lt, align 4
  %cmp12 = icmp slt i32 %12, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %13 = load i32, i32* %ls, align 4
  %sub14 = sub nsw i32 0, %13
  store i32 %sub14, i32* %lt, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %14 = load i32, i32* %ls, align 4
  %15 = load i8*, i8** %s.addr, align 8
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  %16 = load i32, i32* %lt, align 4
  %17 = load i8*, i8** %t.addr, align 8
  %idx.ext16 = sext i32 %16 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %17, i64 %idx.ext16
  store i8* %add.ptr17, i8** %t.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %18 = load i32, i32* %chk, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %chk, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then6, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

declare i32 @u8next_(i8* noundef, i32* noundef) #1

declare i32 @u8fold(i32 noundef) #1

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
