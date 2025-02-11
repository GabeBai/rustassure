; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_check_fd_set.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_check_fd_set.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @__darwin_check_fd_set(i32 noundef %_a, i8* noundef %_b) #0 {
entry:
  %retval = alloca i32, align 4
  %_a.addr = alloca i32, align 4
  %_b.addr = alloca i8*, align 8
  store i32 %_a, i32* %_a.addr, align 4
  store i8* %_b, i8** %_b.addr, align 8
  br i1 icmp ne (i64 ptrtoint (i32 (i32, i8*, i32)* @__darwin_check_fd_set_overflow to i64), i64 0), label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %_a.addr, align 4
  %1 = load i8*, i8** %_b.addr, align 8
  %call = call i32 @__darwin_check_fd_set_overflow(i32 noundef %0, i8* noundef %1, i32 noundef 0)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

declare i32 @__darwin_check_fd_set_overflow(i32 noundef, i8* noundef, i32 noundef) #1

attributes #0 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
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
