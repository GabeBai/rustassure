; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_rangeset2bitset.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_rangeset2bitset.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_rangeset2bitset(i32* noundef %out_val, i8* noundef %in_str) #0 {
entry:
  %retval = alloca i32, align 4
  %out_val.addr = alloca i32*, align 8
  %in_str.addr = alloca i8*, align 8
  %end_idx = alloca i64, align 8
  store i32* %out_val, i32** %out_val.addr, align 8
  store i8* %in_str, i8** %in_str.addr, align 8
  %0 = load i8*, i8** %in_str.addr, align 8
  %call = call i32 @opng_rangeset_string_to_bitset(i8* noundef %0, i64* noundef %end_idx)
  %1 = load i32*, i32** %out_val.addr, align 8
  store i32 %call, i32* %1, align 4
  %2 = load i64, i64* %end_idx, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %in_str.addr, align 8
  %4 = load i64, i64* %end_idx, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4
  %call1 = call i8* @opng_strltrim(i8* noundef %add.ptr)
  %5 = load i8, i8* %call1, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = call i32* @__error()
  store i32 22, i32* %call4, align 4
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare i32 @opng_rangeset_string_to_bitset(i8* noundef, i64* noundef) #1

declare i8* @opng_strltrim(i8* noundef) #1

declare i32* @__error() #1

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
