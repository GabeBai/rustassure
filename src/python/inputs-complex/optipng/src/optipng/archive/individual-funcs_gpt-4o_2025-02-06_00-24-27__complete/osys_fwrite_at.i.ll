; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_fwrite_at.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_fwrite_at.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @osys_fwrite_at(%struct.__sFILE* noundef %stream, i64 noundef %offset, i32 noundef %whence, i8* noundef %block, i64 noundef %blocksize) #0 {
entry:
  %retval = alloca i64, align 8
  %stream.addr = alloca %struct.__sFILE*, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %block.addr = alloca i8*, align 8
  %blocksize.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  %result = alloca i64, align 8
  store %struct.__sFILE* %stream, %struct.__sFILE** %stream.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  store i8* %block, i8** %block.addr, align 8
  store i64 %blocksize, i64* %blocksize.addr, align 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** %stream.addr, align 8
  %call = call i32 @fgetpos(%struct.__sFILE* noundef %0, i64* noundef %pos)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** %stream.addr, align 8
  %call1 = call i32 @fflush(%struct.__sFILE* noundef %1)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.__sFILE*, %struct.__sFILE** %stream.addr, align 8
  %3 = load i64, i64* %offset.addr, align 8
  %4 = load i32, i32* %whence.addr, align 4
  %call3 = call i32 @osys_fseeko(%struct.__sFILE* noundef %2, i64 noundef %3, i32 noundef %4)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %5 = load i8*, i8** %block.addr, align 8
  %6 = load i64, i64* %blocksize.addr, align 8
  %7 = load %struct.__sFILE*, %struct.__sFILE** %stream.addr, align 8
  %call6 = call i64 @"\01_fwrite"(i8* noundef %5, i64 noundef 1, i64 noundef %6, %struct.__sFILE* noundef %7)
  store i64 %call6, i64* %result, align 8
  br label %if.end7

if.else:                                          ; preds = %if.end
  store i64 0, i64* %result, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %8 = load %struct.__sFILE*, %struct.__sFILE** %stream.addr, align 8
  %call8 = call i32 @fflush(%struct.__sFILE* noundef %8)
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store i64 0, i64* %result, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7
  %9 = load %struct.__sFILE*, %struct.__sFILE** %stream.addr, align 8
  %call12 = call i32 @fsetpos(%struct.__sFILE* noundef %9, i64* noundef %pos)
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  store i64 0, i64* %result, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11
  %10 = load i64, i64* %result, align 8
  store i64 %10, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %11 = load i64, i64* %retval, align 8
  ret i64 %11
}

declare i32 @fgetpos(%struct.__sFILE* noundef, i64* noundef) #1

declare i32 @fflush(%struct.__sFILE* noundef) #1

declare i32 @osys_fseeko(%struct.__sFILE* noundef, i64 noundef, i32 noundef) #1

declare i64 @"\01_fwrite"(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #1

declare i32 @fsetpos(%struct.__sFILE* noundef, i64* noundef) #1

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
