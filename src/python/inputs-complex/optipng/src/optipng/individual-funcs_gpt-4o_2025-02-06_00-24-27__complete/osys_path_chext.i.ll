; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_path_chext.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_path_chext.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @osys_path_chext(i8* noundef %buffer, i64 noundef %bufsize, i8* noundef %old_path, i8* noundef %new_extname) #0 {
entry:
  %retval = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %old_path.addr = alloca i8*, align 8
  %new_extname.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %pos = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  store i8* %old_path, i8** %old_path.addr, align 8
  store i8* %new_extname, i8** %new_extname.addr, align 8
  %0 = load i8*, i8** %new_extname.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 46
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  store i64 -1, i64* %pos, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %old_path.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %bufsize.addr, align 8
  %cmp6 = icmp uge i64 %5, %6
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  store i8* null, i8** %retval, align 8
  br label %return

if.end9:                                          ; preds = %for.body
  %7 = load i8*, i8** %old_path.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx10, align 1
  %10 = load i8*, i8** %buffer.addr, align 8
  %11 = load i64, i64* %i, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %11
  store i8 %9, i8* %arrayidx11, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 46
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end9
  %12 = load i64, i64* %i, align 8
  store i64 %12, i64* %pos, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end9
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %pos, align 8
  %cmp17 = icmp ugt i64 %14, %15
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.end
  %16 = load i64, i64* %pos, align 8
  store i64 %16, i64* %i, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %for.end
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %if.end20
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %bufsize.addr, align 8
  %cmp22 = icmp uge i64 %17, %18
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.cond21
  store i8* null, i8** %retval, align 8
  br label %return

if.end25:                                         ; preds = %for.cond21
  %19 = load i8*, i8** %new_extname.addr, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %buffer.addr, align 8
  %22 = load i64, i64* %i, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8 %20, i8* %arrayidx26, align 1
  %conv27 = sext i8 %20 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  %23 = load i8*, i8** %buffer.addr, align 8
  store i8* %23, i8** %retval, align 8
  br label %return

if.end31:                                         ; preds = %if.end25
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %24 = load i64, i64* %i, align 8
  %inc33 = add i64 %24, 1
  store i64 %inc33, i64* %i, align 8
  %25 = load i8*, i8** %new_extname.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %new_extname.addr, align 8
  br label %for.cond21

return:                                           ; preds = %if.then30, %if.then24, %if.then8, %if.then
  %26 = load i8*, i8** %retval, align 8
  ret i8* %26
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
!9 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git 6fd4c483fd129052982b4c7498e7ea910578ab6c)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
