; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8next_FAST.i.bc'
source_filename = "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8next_FAST.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @u8next_FAST(i8* noundef %txt, i32* noundef %ch) #0 {
entry:
  %txt.addr = alloca i8*, align 8
  %ch.addr = alloca i32*, align 8
  %len = alloca i32, align 4
  %s = alloca i8*, align 8
  %first = alloca i8, align 1
  %val = alloca i32, align 4
  store i8* %txt, i8** %txt.addr, align 8
  store i32* %ch, i32** %ch.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load i8*, i8** %txt.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  store i8 %2, i8* %first, align 1
  store i32 0, i32* %val, align 4
  %3 = load i8, i8* %first, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end43

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %first, align 1
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %val, align 4
  %5 = load i8, i8* %first, align 1
  %conv1 = zext i8 %5 to i32
  %cmp = icmp sgt i32 %conv1, 127
  br i1 %cmp, label %if.then3, label %if.end41

if.then3:                                         ; preds = %if.then
  %6 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %7 = load i8, i8* %incdec.ptr, align 1
  %conv4 = zext i8 %7 to i32
  %and = and i32 %conv4, 63
  store i32 %and, i32* %val, align 4
  %8 = load i8, i8* %first, align 1
  %conv5 = zext i8 %8 to i32
  %and6 = and i32 %conv5, 248
  %cmp7 = icmp eq i32 %and6, 240
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then3
  %9 = load i8, i8* %first, align 1
  %conv10 = zext i8 %9 to i32
  %and11 = and i32 %conv10, 7
  %shl = shl i32 %and11, 6
  %10 = load i32, i32* %val, align 4
  %or = or i32 %10, %shl
  store i32 %or, i32* %val, align 4
  br label %L4

if.else:                                          ; preds = %if.then3
  %11 = load i8, i8* %first, align 1
  %conv12 = zext i8 %11 to i32
  %and13 = and i32 %conv12, 240
  %cmp14 = icmp eq i32 %and13, 224
  br i1 %cmp14, label %if.then16, label %if.else21

if.then16:                                        ; preds = %if.else
  %12 = load i8, i8* %first, align 1
  %conv17 = zext i8 %12 to i32
  %and18 = and i32 %conv17, 15
  %shl19 = shl i32 %and18, 6
  %13 = load i32, i32* %val, align 4
  %or20 = or i32 %13, %shl19
  store i32 %or20, i32* %val, align 4
  br label %L3

if.else21:                                        ; preds = %if.else
  %14 = load i8, i8* %first, align 1
  %conv22 = zext i8 %14 to i32
  %and23 = and i32 %conv22, 31
  %shl24 = shl i32 %and23, 6
  %15 = load i32, i32* %val, align 4
  %or25 = or i32 %15, %shl24
  store i32 %or25, i32* %val, align 4
  br label %L2

L4:                                               ; preds = %if.then9
  %16 = load i32, i32* %val, align 4
  %shl26 = shl i32 %16, 6
  store i32 %shl26, i32* %val, align 4
  %17 = load i8*, i8** %s, align 8
  %18 = load i8, i8* %17, align 1
  %tobool27 = icmp ne i8 %18, 0
  br i1 %tobool27, label %if.then28, label %if.end

if.then28:                                        ; preds = %L4
  %19 = load i8*, i8** %s, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr29, i8** %s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then28, %L4
  %20 = load i8*, i8** %s, align 8
  %21 = load i8, i8* %20, align 1
  %conv30 = zext i8 %21 to i32
  %and31 = and i32 %conv30, 63
  %22 = load i32, i32* %val, align 4
  %or32 = or i32 %22, %and31
  store i32 %or32, i32* %val, align 4
  br label %L3

L3:                                               ; preds = %if.end, %if.then16
  %23 = load i32, i32* %val, align 4
  %shl33 = shl i32 %23, 6
  store i32 %shl33, i32* %val, align 4
  %24 = load i8*, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %tobool34 = icmp ne i8 %25, 0
  br i1 %tobool34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %L3
  %26 = load i8*, i8** %s, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr36, i8** %s, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %L3
  %27 = load i8*, i8** %s, align 8
  %28 = load i8, i8* %27, align 1
  %conv38 = zext i8 %28 to i32
  %and39 = and i32 %conv38, 63
  %29 = load i32, i32* %val, align 4
  %or40 = or i32 %29, %and39
  store i32 %or40, i32* %val, align 4
  br label %L2

L2:                                               ; preds = %if.end37, %if.else21
  br label %if.end41

if.end41:                                         ; preds = %L2, %if.then
  %30 = load i8*, i8** %s, align 8
  %31 = load i8*, i8** %txt.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 1, %sub.ptr.sub
  %conv42 = trunc i64 %add to i32
  store i32 %conv42, i32* %len, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %entry
  %32 = load i32*, i32** %ch.addr, align 8
  %tobool44 = icmp ne i32* %32, null
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end43
  %33 = load i32, i32* %val, align 4
  %34 = load i32*, i32** %ch.addr, align 8
  store i32 %33, i32* %34, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43
  %35 = load i32, i32* %len, align 4
  ret i32 %35
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
