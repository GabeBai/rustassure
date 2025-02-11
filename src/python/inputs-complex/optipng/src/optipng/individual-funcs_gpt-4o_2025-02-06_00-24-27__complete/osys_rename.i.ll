; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_rename.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_rename.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @osys_rename(i8* noundef %src_path, i8* noundef %dest_path, i32 noundef %clobber) #0 {
entry:
  %retval = alloca i32, align 4
  %src_path.addr = alloca i8*, align 8
  %dest_path.addr = alloca i8*, align 8
  %clobber.addr = alloca i32, align 4
  store i8* %src_path, i8** %src_path.addr, align 8
  store i8* %dest_path, i8** %dest_path.addr, align 8
  store i32 %clobber, i32* %clobber.addr, align 4
  %0 = load i32, i32* %clobber.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dest_path.addr, align 8
  %call = call i32 @access(i8* noundef %1, i32 noundef 0)
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %2 = load i8*, i8** %src_path.addr, align 8
  %3 = load i8*, i8** %dest_path.addr, align 8
  %call3 = call i32 @rename(i8* noundef %2, i8* noundef %3)
  store i32 %call3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.then1
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

declare i32 @access(i8* noundef, i32 noundef) #1

declare i32 @rename(i8* noundef, i8* noundef) #1

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
