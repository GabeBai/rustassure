; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_path_chdir.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_path_chdir.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"/:\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @osys_path_chdir(i8* noundef %buffer, i64 noundef %bufsize, i8* noundef %old_path, i8* noundef %new_dirname) #0 {
entry:
  %retval = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %old_path.addr = alloca i8*, align 8
  %new_dirname.addr = alloca i8*, align 8
  %path = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %dirlen = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  store i8* %old_path, i8** %old_path.addr, align 8
  store i8* %new_dirname, i8** %new_dirname.addr, align 8
  %0 = load i8*, i8** %old_path.addr, align 8
  store i8* %0, i8** %path, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load i8*, i8** %path, align 8
  %call = call i8* @strpbrk(i8* noundef %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %call, i8** %ptr, align 8
  %2 = load i8*, i8** %ptr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %3 = load i8*, i8** %ptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %add.ptr, i8** %path, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %4 = load i8*, i8** %new_dirname.addr, align 8
  %call1 = call i64 @strlen(i8* noundef %4)
  store i64 %call1, i64* %dirlen, align 8
  %5 = load i64, i64* %dirlen, align 8
  %6 = load i8*, i8** %path, align 8
  %call2 = call i64 @strlen(i8* noundef %6)
  %add = add i64 %5, %call2
  %add3 = add i64 %add, 2
  %7 = load i64, i64* %bufsize.addr, align 8
  %cmp4 = icmp uge i64 %add3, %7
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end6:                                          ; preds = %for.end
  %8 = load i64, i64* %dirlen, align 8
  %cmp7 = icmp ugt i64 %8, 0
  br i1 %cmp7, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end6
  %9 = load i8*, i8** %buffer.addr, align 8
  %10 = load i8*, i8** %new_dirname.addr, align 8
  %11 = load i8*, i8** %buffer.addr, align 8
  %12 = call i64 @llvm.objectsize.i64.p0i8(i8* %11, i1 false, i1 true, i1 false)
  %call9 = call i8* @__strcpy_chk(i8* noundef %9, i8* noundef %10, i64 noundef %12) #4
  %13 = load i8*, i8** %buffer.addr, align 8
  %14 = load i64, i64* %dirlen, align 8
  %sub = sub i64 %14, 1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %sub
  %15 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %15 to i32
  %call10 = call i8* @strchr(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %conv)
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then8
  %16 = load i8*, i8** %buffer.addr, align 8
  %17 = load i64, i64* %dirlen, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %dirlen, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8 47, i8* %arrayidx14, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end6
  %18 = load i8*, i8** %buffer.addr, align 8
  %19 = load i64, i64* %dirlen, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %18, i64 %19
  %20 = load i8*, i8** %path, align 8
  %21 = load i8*, i8** %buffer.addr, align 8
  %22 = load i64, i64* %dirlen, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %21, i64 %22
  %23 = call i64 @llvm.objectsize.i64.p0i8(i8* %add.ptr18, i1 false, i1 true, i1 false)
  %call19 = call i8* @__strcpy_chk(i8* noundef %add.ptr17, i8* noundef %20, i64 noundef %23) #4
  %24 = load i8*, i8** %buffer.addr, align 8
  store i8* %24, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then5
  %25 = load i8*, i8** %retval, align 8
  ret i8* %25
}

declare i8* @strpbrk(i8* noundef, i8* noundef) #1

declare i64 @strlen(i8* noundef) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

declare i8* @strchr(i8* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
