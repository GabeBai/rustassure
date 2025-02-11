; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_rangeset_string_to_bitset.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_rangeset_string_to_bitset.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_rangeset_string_to_bitset(i8* noundef %str, i64* noundef %end_idx) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %end_idx.addr = alloca i64*, align 8
  %result = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %state = alloca i32, align 4
  %num = alloca i32, align 4
  %num1 = alloca i32, align 4
  %num2 = alloca i32, align 4
  %out_of_range = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64* %end_idx, i64** %end_idx.addr, align 8
  store i32 0, i32* %result, align 4
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %ptr, align 8
  store i32 0, i32* %state, align 4
  store i32 0, i32* %out_of_range, align 4
  store i32 -1, i32* %num2, align 4
  store i32 -1, i32* %num1, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.then54, %if.then26, %if.end20, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %1 = load i8*, i8** %ptr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %call = call i32 @isspace(i32 noundef %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %state, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb22
  ]

sw.bb:                                            ; preds = %while.end, %while.end
  %5 = load i8*, i8** %ptr, align 8
  %6 = load i8, i8* %5, align 1
  %conv1 = sext i8 %6 to i32
  %cmp = icmp sge i32 %conv1, 48
  br i1 %cmp, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %sw.bb
  %7 = load i8*, i8** %ptr, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp sle i32 %conv3, 57
  br i1 %cmp4, label %if.then, label %if.end21

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %num, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %9 = load i32, i32* %num, align 4
  %mul = mul nsw i32 10, %9
  %10 = load i8*, i8** %ptr, align 8
  %11 = load i8, i8* %10, align 1
  %conv6 = sext i8 %11 to i32
  %sub = sub nsw i32 %conv6, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %num, align 4
  %12 = load i32, i32* %num, align 4
  %cmp7 = icmp sgt i32 %12, 31
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %do.body
  store i32 1, i32* %out_of_range, align 4
  store i32 31, i32* %num, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %do.body
  %13 = load i8*, i8** %ptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr10, i8** %ptr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %14 = load i8*, i8** %ptr, align 8
  %15 = load i8, i8* %14, align 1
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp sge i32 %conv11, 48
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %16 = load i8*, i8** %ptr, align 8
  %17 = load i8, i8* %16, align 1
  %conv14 = sext i8 %17 to i32
  %cmp15 = icmp sle i32 %conv14, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %18 = phi i1 [ false, %do.cond ], [ %cmp15, %land.rhs ]
  br i1 %18, label %do.body, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %land.end
  %19 = load i32, i32* %state, align 4
  %cmp17 = icmp eq i32 %19, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.end
  %20 = load i32, i32* %num, align 4
  store i32 %20, i32* %num1, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.end
  %21 = load i32, i32* %num, align 4
  store i32 %21, i32* %num2, align 4
  %22 = load i32, i32* %state, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %state, align 4
  br label %for.cond

if.end21:                                         ; preds = %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.end
  %23 = load i8*, i8** %ptr, align 8
  %24 = load i8, i8* %23, align 1
  %conv23 = sext i8 %24 to i32
  %cmp24 = icmp eq i32 %conv23, 45
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %sw.bb22
  %25 = load i8*, i8** %ptr, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr27, i8** %ptr, align 8
  store i32 31, i32* %num2, align 4
  %26 = load i32, i32* %state, align 4
  %inc28 = add nsw i32 %26, 1
  store i32 %inc28, i32* %state, align 4
  br label %for.cond

if.end29:                                         ; preds = %sw.bb22
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %if.end29, %if.end21
  %27 = load i32, i32* %state, align 4
  %cmp30 = icmp sgt i32 %27, 0
  br i1 %cmp30, label %if.then32, label %if.end47

if.then32:                                        ; preds = %sw.epilog
  store i32 0, i32* %state, align 4
  %28 = load i32, i32* %num2, align 4
  %cmp33 = icmp sgt i32 %28, 31
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then32
  store i32 1, i32* %out_of_range, align 4
  store i32 31, i32* %num2, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then32
  %29 = load i32, i32* %num1, align 4
  %30 = load i32, i32* %num2, align 4
  %cmp37 = icmp sle i32 %29, %30
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end36
  %31 = load i32, i32* %num1, align 4
  %32 = load i32, i32* %num2, align 4
  %cmp40 = icmp sle i32 %31, %32
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then39
  %33 = load i32, i32* %num2, align 4
  %34 = load i32, i32* %num1, align 4
  %sub42 = sub nsw i32 %33, %34
  %shl = shl i32 1, %sub42
  %shl43 = shl i32 %shl, 1
  %sub44 = sub i32 %shl43, 1
  %35 = load i32, i32* %num1, align 4
  %shl45 = shl i32 %sub44, %35
  br label %cond.end

cond.false:                                       ; preds = %if.then39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl45, %cond.true ], [ 0, %cond.false ]
  %36 = load i32, i32* %result, align 4
  %or = or i32 %36, %cond
  store i32 %or, i32* %result, align 4
  br label %if.end46

if.else:                                          ; preds = %if.end36
  store i32 1, i32* %out_of_range, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else, %cond.end
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %sw.epilog
  %37 = load i8*, i8** %ptr, align 8
  %38 = load i8, i8* %37, align 1
  %conv48 = sext i8 %38 to i32
  %cmp49 = icmp eq i32 %conv48, 44
  br i1 %cmp49, label %if.then54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end47
  %39 = load i8*, i8** %ptr, align 8
  %40 = load i8, i8* %39, align 1
  %conv51 = sext i8 %40 to i32
  %cmp52 = icmp eq i32 %conv51, 59
  br i1 %cmp52, label %if.then54, label %if.else56

if.then54:                                        ; preds = %lor.lhs.false, %if.end47
  %41 = load i8*, i8** %ptr, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr55, i8** %ptr, align 8
  br label %for.cond

if.else56:                                        ; preds = %lor.lhs.false
  br label %for.end

for.end:                                          ; preds = %if.else56
  %42 = load i32, i32* %num1, align 4
  %cmp57 = icmp eq i32 %42, -1
  br i1 %cmp57, label %if.then59, label %if.end64

if.then59:                                        ; preds = %for.end
  %43 = load i64*, i64** %end_idx.addr, align 8
  %cmp60 = icmp ne i64* %43, null
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then59
  %44 = load i64*, i64** %end_idx.addr, align 8
  store i64 0, i64* %44, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then59
  store i32 0, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %for.end
  %45 = load i64*, i64** %end_idx.addr, align 8
  %cmp65 = icmp ne i64* %45, null
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end64
  %46 = load i8*, i8** %ptr, align 8
  %47 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %48 = load i64*, i64** %end_idx.addr, align 8
  store i64 %sub.ptr.sub, i64* %48, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end64
  %49 = load i32, i32* %out_of_range, align 4
  %tobool69 = icmp ne i32 %49, 0
  br i1 %tobool69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end68
  %call71 = call i32* @__error()
  store i32 34, i32* %call71, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end68
  %50 = load i32, i32* %result, align 4
  store i32 %50, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end72, %if.end63
  %51 = load i32, i32* %retval, align 4
  ret i32 %51
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #1

declare i32* @__error() #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn }

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
