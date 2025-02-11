; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_strcasecmp.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_strcasecmp.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_strcasecmp(i8* noundef %str1, i8* noundef %str2) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %ch1 = alloca i32, align 4
  %ch2 = alloca i32, align 4
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end8, %entry
  %0 = load i8*, i8** %str1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %str1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 @tolower(i32 noundef %conv) #2
  store i32 %call, i32* %ch1, align 4
  %2 = load i8*, i8** %str2.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %str2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %call3 = call i32 @tolower(i32 noundef %conv2) #2
  store i32 %call3, i32* %ch2, align 4
  %4 = load i32, i32* %ch1, align 4
  %5 = load i32, i32* %ch2, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %6 = load i32, i32* %ch1, align 4
  %7 = load i32, i32* %ch2, align 4
  %sub = sub nsw i32 %6, %7
  store i32 %sub, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.cond
  %8 = load i32, i32* %ch1, align 4
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  br label %for.cond

return:                                           ; preds = %if.then7, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind readonly willreturn
declare i32 @tolower(i32 noundef) #1

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
