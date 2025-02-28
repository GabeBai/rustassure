; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/scan_option.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/scan_option.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @scan_option(i8* noundef %str, i8* noundef %opt_buf, i64 noundef %opt_buf_size, i8** noundef %opt_arg_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %opt_buf.addr = alloca i8*, align 8
  %opt_buf_size.addr = alloca i64, align 8
  %opt_arg_ptr.addr = alloca i8**, align 8
  %ptr = alloca i8*, align 8
  %opt_len = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i8* %opt_buf, i8** %opt_buf.addr, align 8
  store i64 %opt_buf_size, i64* %opt_buf_size.addr, align 8
  store i8** %opt_arg_ptr, i8*** %opt_arg_ptr.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 45
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %opt_len, align 4
  %4 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  store i8* %add.ptr, i8** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i8*, i8** %ptr, align 8
  %6 = load i8, i8* %5, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 45
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %8 = load i8*, i8** %ptr, align 8
  %9 = load i8, i8* %8, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %while.end
  %10 = load i8*, i8** %ptr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr13, i8** %ptr, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %while.end
  br label %for.cond

for.cond:                                         ; preds = %if.end47, %if.end14
  %11 = load i32, i32* %opt_len, align 4
  %conv15 = zext i32 %11 to i64
  %12 = load i64, i64* %opt_buf_size.addr, align 8
  %cmp16 = icmp ult i64 %conv15, %12
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %for.cond
  %13 = load i8*, i8** %ptr, align 8
  %14 = load i8, i8* %13, align 1
  %conv19 = sext i8 %14 to i32
  %call = call i32 @tolower(i32 noundef %conv19) #2
  %conv20 = trunc i32 %call to i8
  %15 = load i8*, i8** %opt_buf.addr, align 8
  %16 = load i32, i32* %opt_len, align 4
  %idxprom = zext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8 %conv20, i8* %arrayidx21, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %for.cond
  %17 = load i32, i32* %opt_len, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %opt_len, align 4
  %18 = load i8*, i8** %ptr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr23, i8** %ptr, align 8
  %19 = load i8*, i8** %ptr, align 8
  %20 = load i8, i8* %19, align 1
  %conv24 = sext i8 %20 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.end22
  %21 = load i8*, i8** %ptr, align 8
  %22 = load i8, i8* %21, align 1
  %conv28 = sext i8 %22 to i32
  %call29 = call i32 @isspace(i32 noundef %conv28) #2
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.then30, label %if.end41

if.then30:                                        ; preds = %lor.lhs.false27, %if.end22
  br label %while.cond31

while.cond31:                                     ; preds = %while.body35, %if.then30
  %23 = load i8*, i8** %ptr, align 8
  %24 = load i8, i8* %23, align 1
  %conv32 = sext i8 %24 to i32
  %call33 = call i32 @isspace(i32 noundef %conv32) #2
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %while.body35, label %while.end37

while.body35:                                     ; preds = %while.cond31
  %25 = load i8*, i8** %ptr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr36, i8** %ptr, align 8
  br label %while.cond31, !llvm.loop !12

while.end37:                                      ; preds = %while.cond31
  %26 = load i8*, i8** %ptr, align 8
  %27 = load i8, i8* %26, align 1
  %conv38 = sext i8 %27 to i32
  %cmp39 = icmp ne i32 %conv38, 0
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end37
  %28 = load i8*, i8** %ptr, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.end37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %28, %cond.true ], [ null, %cond.false ]
  %29 = load i8**, i8*** %opt_arg_ptr.addr, align 8
  store i8* %cond, i8** %29, align 8
  br label %for.end

if.end41:                                         ; preds = %lor.lhs.false27
  %30 = load i8*, i8** %ptr, align 8
  %31 = load i8, i8* %30, align 1
  %conv42 = sext i8 %31 to i32
  %cmp43 = icmp eq i32 %conv42, 61
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end41
  %32 = load i8*, i8** %ptr, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr46, i8** %ptr, align 8
  %33 = load i8*, i8** %ptr, align 8
  %34 = load i8**, i8*** %opt_arg_ptr.addr, align 8
  store i8* %33, i8** %34, align 8
  br label %for.end

if.end47:                                         ; preds = %if.end41
  br label %for.cond

for.end:                                          ; preds = %if.then45, %cond.end
  %35 = load i64, i64* %opt_buf_size.addr, align 8
  %cmp48 = icmp ugt i64 %35, 0
  br i1 %cmp48, label %if.then50, label %if.end59

if.then50:                                        ; preds = %for.end
  %36 = load i32, i32* %opt_len, align 4
  %conv51 = zext i32 %36 to i64
  %37 = load i64, i64* %opt_buf_size.addr, align 8
  %cmp52 = icmp ult i64 %conv51, %37
  br i1 %cmp52, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.then50
  %38 = load i8*, i8** %opt_buf.addr, align 8
  %39 = load i32, i32* %opt_len, align 4
  %idxprom55 = zext i32 %39 to i64
  %arrayidx56 = getelementptr inbounds i8, i8* %38, i64 %idxprom55
  store i8 0, i8* %arrayidx56, align 1
  br label %if.end58

if.else:                                          ; preds = %if.then50
  %40 = load i8*, i8** %opt_buf.addr, align 8
  %41 = load i64, i64* %opt_buf_size.addr, align 8
  %sub = sub i64 %41, 1
  %arrayidx57 = getelementptr inbounds i8, i8* %40, i64 %sub
  store i8 0, i8* %arrayidx57, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then54
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %for.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind readonly willreturn
declare i32 @tolower(i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind readonly willreturn }

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
!12 = distinct !{!12, !11}
