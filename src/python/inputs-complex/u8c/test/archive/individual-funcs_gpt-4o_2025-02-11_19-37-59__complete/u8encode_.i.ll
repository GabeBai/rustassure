; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8encode_.i.bc'
source_filename = "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8encode_.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @u8encode_(i32 noundef %ch, i8* noundef %s) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %t = alloca [8 x i8], align 1
  store i32 %ch, i32* %ch.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 -1, i32* %len, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %t, i64 0, i64 0
  store i8* %arraydecay, i8** %s.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %ch.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store i32 2, i32* %len, align 4
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  store i8 -64, i8* %2, align 1
  %3 = load i8*, i8** %s.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr3, i8** %s.addr, align 8
  store i8 -128, i8* %3, align 1
  br label %if.end59

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* %ch.addr, align 4
  %cmp4 = icmp slt i32 %4, 128
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  store i32 1, i32* %len, align 4
  %5 = load i32, i32* %ch.addr, align 4
  %conv = trunc i32 %5 to i8
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr6, i8** %s.addr, align 8
  store i8 %conv, i8* %6, align 1
  br label %if.end58

if.else7:                                         ; preds = %if.else
  %7 = load i32, i32* %ch.addr, align 4
  %cmp8 = icmp slt i32 %7, 2048
  br i1 %cmp8, label %if.then10, label %if.else16

if.then10:                                        ; preds = %if.else7
  store i32 2, i32* %len, align 4
  %8 = load i32, i32* %ch.addr, align 4
  %shr = ashr i32 %8, 6
  %or = or i32 192, %shr
  %conv11 = trunc i32 %or to i8
  %9 = load i8*, i8** %s.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr12, i8** %s.addr, align 8
  store i8 %conv11, i8* %9, align 1
  %10 = load i32, i32* %ch.addr, align 4
  %and = and i32 %10, 63
  %or13 = or i32 128, %and
  %conv14 = trunc i32 %or13 to i8
  %11 = load i8*, i8** %s.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr15, i8** %s.addr, align 8
  store i8 %conv14, i8* %11, align 1
  br label %if.end57

if.else16:                                        ; preds = %if.else7
  %12 = load i32, i32* %ch.addr, align 4
  %cmp17 = icmp slt i32 %12, 65536
  br i1 %cmp17, label %if.then19, label %if.else33

if.then19:                                        ; preds = %if.else16
  store i32 3, i32* %len, align 4
  %13 = load i32, i32* %ch.addr, align 4
  %shr20 = ashr i32 %13, 12
  %or21 = or i32 224, %shr20
  %conv22 = trunc i32 %or21 to i8
  %14 = load i8*, i8** %s.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr23, i8** %s.addr, align 8
  store i8 %conv22, i8* %14, align 1
  %15 = load i32, i32* %ch.addr, align 4
  %shr24 = ashr i32 %15, 6
  %and25 = and i32 %shr24, 63
  %or26 = or i32 128, %and25
  %conv27 = trunc i32 %or26 to i8
  %16 = load i8*, i8** %s.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr28, i8** %s.addr, align 8
  store i8 %conv27, i8* %16, align 1
  %17 = load i32, i32* %ch.addr, align 4
  %and29 = and i32 %17, 63
  %or30 = or i32 128, %and29
  %conv31 = trunc i32 %or30 to i8
  %18 = load i8*, i8** %s.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr32, i8** %s.addr, align 8
  store i8 %conv31, i8* %18, align 1
  br label %if.end56

if.else33:                                        ; preds = %if.else16
  %19 = load i32, i32* %ch.addr, align 4
  %cmp34 = icmp slt i32 %19, 1114112
  br i1 %cmp34, label %if.then36, label %if.end55

if.then36:                                        ; preds = %if.else33
  store i32 4, i32* %len, align 4
  %20 = load i32, i32* %ch.addr, align 4
  %shr37 = ashr i32 %20, 18
  %or38 = or i32 240, %shr37
  %conv39 = trunc i32 %or38 to i8
  %21 = load i8*, i8** %s.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr40, i8** %s.addr, align 8
  store i8 %conv39, i8* %21, align 1
  %22 = load i32, i32* %ch.addr, align 4
  %shr41 = ashr i32 %22, 12
  %and42 = and i32 %shr41, 63
  %or43 = or i32 128, %and42
  %conv44 = trunc i32 %or43 to i8
  %23 = load i8*, i8** %s.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr45, i8** %s.addr, align 8
  store i8 %conv44, i8* %23, align 1
  %24 = load i32, i32* %ch.addr, align 4
  %shr46 = ashr i32 %24, 6
  %and47 = and i32 %shr46, 63
  %or48 = or i32 128, %and47
  %conv49 = trunc i32 %or48 to i8
  %25 = load i8*, i8** %s.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr50, i8** %s.addr, align 8
  store i8 %conv49, i8* %25, align 1
  %26 = load i32, i32* %ch.addr, align 4
  %and51 = and i32 %26, 63
  %or52 = or i32 128, %and51
  %conv53 = trunc i32 %or52 to i8
  %27 = load i8*, i8** %s.addr, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr54, i8** %s.addr, align 8
  store i8 %conv53, i8* %27, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then36, %if.else33
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then19
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then10
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then5
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then2
  %28 = load i8*, i8** %s.addr, align 8
  store i8 0, i8* %28, align 1
  %29 = load i32, i32* %len, align 4
  ret i32 %29
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
