; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_str2ulong.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_str2ulong.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_str2ulong(i64* noundef %out_val, i8* noundef %in_str, i32 noundef %allow_multiplier) #0 {
entry:
  %retval = alloca i32, align 4
  %out_val.addr = alloca i64*, align 8
  %in_str.addr = alloca i8*, align 8
  %allow_multiplier.addr = alloca i32, align 4
  %begin_ptr = alloca i8*, align 8
  %end_ptr = alloca i8*, align 8
  %multiplier = alloca i64, align 8
  store i64* %out_val, i64** %out_val.addr, align 8
  store i8* %in_str, i8** %in_str.addr, align 8
  store i32 %allow_multiplier, i32* %allow_multiplier.addr, align 4
  %0 = load i8*, i8** %in_str.addr, align 8
  %call = call i8* @opng_strltrim(i8* noundef %0)
  store i8* %call, i8** %end_ptr, align 8
  store i8* %call, i8** %begin_ptr, align 8
  %1 = load i8*, i8** %begin_ptr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %begin_ptr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** %begin_ptr, align 8
  %call5 = call i64 @strtoul(i8* noundef %5, i8** noundef %end_ptr, i32 noundef 10)
  %6 = load i64*, i64** %out_val.addr, align 8
  store i64 %call5, i64* %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i8*, i8** %begin_ptr, align 8
  %8 = load i8*, i8** %end_ptr, align 8
  %cmp6 = icmp eq i8* %7, %8
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call i32* @__error()
  store i32 22, i32* %call9, align 4
  %9 = load i64*, i64** %out_val.addr, align 8
  store i64 0, i64* %9, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %10 = load i32, i32* %allow_multiplier.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then11, label %if.end44

if.then11:                                        ; preds = %if.end10
  %11 = load i8*, i8** %end_ptr, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 107
  br i1 %cmp13, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then11
  %13 = load i8*, i8** %end_ptr, align 8
  %14 = load i8, i8* %13, align 1
  %conv15 = sext i8 %14 to i32
  %cmp16 = icmp eq i32 %conv15, 75
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %lor.lhs.false, %if.then11
  %15 = load i8*, i8** %end_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %end_ptr, align 8
  store i64 1024, i64* %multiplier, align 8
  br label %if.end33

if.else:                                          ; preds = %lor.lhs.false
  %16 = load i8*, i8** %end_ptr, align 8
  %17 = load i8, i8* %16, align 1
  %conv19 = sext i8 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 77
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else
  %18 = load i8*, i8** %end_ptr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr23, i8** %end_ptr, align 8
  store i64 1048576, i64* %multiplier, align 8
  br label %if.end32

if.else24:                                        ; preds = %if.else
  %19 = load i8*, i8** %end_ptr, align 8
  %20 = load i8, i8* %19, align 1
  %conv25 = sext i8 %20 to i32
  %cmp26 = icmp eq i32 %conv25, 71
  br i1 %cmp26, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else24
  %21 = load i8*, i8** %end_ptr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr29, i8** %end_ptr, align 8
  store i64 1073741824, i64* %multiplier, align 8
  br label %if.end31

if.else30:                                        ; preds = %if.else24
  store i64 1, i64* %multiplier, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then28
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then22
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then18
  %22 = load i64, i64* %multiplier, align 8
  %cmp34 = icmp ugt i64 %22, 1
  br i1 %cmp34, label %if.then36, label %if.end43

if.then36:                                        ; preds = %if.end33
  %23 = load i64*, i64** %out_val.addr, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %multiplier, align 8
  %div = udiv i64 -1, %25
  %cmp37 = icmp ugt i64 %24, %div
  br i1 %cmp37, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.then36
  %call40 = call i32* @__error()
  store i32 34, i32* %call40, align 4
  %26 = load i64*, i64** %out_val.addr, align 8
  store i64 -1, i64* %26, align 8
  br label %if.end42

if.else41:                                        ; preds = %if.then36
  %27 = load i64, i64* %multiplier, align 8
  %28 = load i64*, i64** %out_val.addr, align 8
  %29 = load i64, i64* %28, align 8
  %mul = mul i64 %29, %27
  store i64 %mul, i64* %28, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then39
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end33
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end10
  %30 = load i8*, i8** %end_ptr, align 8
  %call45 = call i8* @opng_strltrim(i8* noundef %30)
  %31 = load i8, i8* %call45, align 1
  %conv46 = sext i8 %31 to i32
  %cmp47 = icmp ne i32 %conv46, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end44
  %call50 = call i32* @__error()
  store i32 22, i32* %call50, align 4
  store i32 -1, i32* %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.end44
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then49, %if.then8
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

declare i8* @opng_strltrim(i8* noundef) #1

declare i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) #1

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
