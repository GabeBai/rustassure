; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_snprintf_impl.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_snprintf_impl.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_snprintf_impl(i8* noundef %buffer, i64 noundef %buffer_size, i8* noundef %format, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %arg_ptr = alloca i8*, align 8
  %result = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arg_ptr1 = bitcast i8** %arg_ptr to i8*
  call void @llvm.va_start(i8* %arg_ptr1)
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load i64, i64* %buffer_size.addr, align 8
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = call i64 @llvm.objectsize.i64.p0i8(i8* %2, i1 false, i1 true, i1 false)
  %4 = load i8*, i8** %format.addr, align 8
  %5 = load i8*, i8** %arg_ptr, align 8
  %call = call i32 @__vsnprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 0, i64 noundef %3, i8* noundef %4, i8* noundef %5)
  store i32 %call, i32* %result, align 4
  %arg_ptr2 = bitcast i8** %arg_ptr to i8*
  call void @llvm.va_end(i8* %arg_ptr2)
  %6 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %result, align 4
  %conv = sext i32 %7 to i64
  %8 = load i64, i64* %buffer_size.addr, align 8
  %cmp3 = icmp uge i64 %conv, %8
  br i1 %cmp3, label %if.then, label %if.end8

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i64, i64* %buffer_size.addr, align 8
  %cmp5 = icmp ugt i64 %9, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %10 = load i8*, i8** %buffer.addr, align 8
  %11 = load i64, i64* %buffer_size.addr, align 8
  %sub = sub i64 %11, 1
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  store i32 -1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %12 = load i32, i32* %result, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.end
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare i32 @__vsnprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

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
