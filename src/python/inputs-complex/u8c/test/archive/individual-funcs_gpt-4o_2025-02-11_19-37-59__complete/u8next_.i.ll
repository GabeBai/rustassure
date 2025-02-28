; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8next_.i.bc'
source_filename = "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8next_.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @u8next_(i8* noundef %txt, i32* noundef %ch) #0 {
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
  br i1 %tobool, label %if.then, label %if.end146

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %first, align 1
  %conv = sext i8 %4 to i32
  store i32 %conv, i32* %val, align 4
  br label %fsm_state_START

fsm_state_START:                                  ; preds = %if.then
  %5 = load i8*, i8** %s, align 8
  %6 = load i8, i8* %5, align 1
  %conv1 = zext i8 %6 to i32
  %cmp = icmp slt i32 %conv1, 128
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %fsm_state_START
  store i32 1, i32* %len, align 4
  br label %fsm_state_end

if.end:                                           ; preds = %fsm_state_START
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = zext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 192
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 2, i32* %len, align 4
  br label %fsm_state_null

if.end8:                                          ; preds = %if.end
  %9 = load i8*, i8** %s, align 8
  %10 = load i8, i8* %9, align 1
  %conv9 = zext i8 %10 to i32
  %cmp10 = icmp sle i32 %conv9, 193
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  br label %fsm_state_invalid

if.end13:                                         ; preds = %if.end8
  %11 = load i8*, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  %conv14 = zext i8 %12 to i32
  %cmp15 = icmp sle i32 %conv14, 223
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  %13 = load i32, i32* %val, align 4
  %and = and i32 %13, 31
  store i32 %and, i32* %val, align 4
  store i32 2, i32* %len, align 4
  br label %fsm_state_len2_0

if.end18:                                         ; preds = %if.end13
  %14 = load i8*, i8** %s, align 8
  %15 = load i8, i8* %14, align 1
  %conv19 = zext i8 %15 to i32
  %cmp20 = icmp eq i32 %conv19, 224
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  %16 = load i32, i32* %val, align 4
  %and23 = and i32 %16, 15
  store i32 %and23, i32* %val, align 4
  store i32 3, i32* %len, align 4
  br label %fsm_state_len3_0

if.end24:                                         ; preds = %if.end18
  %17 = load i8*, i8** %s, align 8
  %18 = load i8, i8* %17, align 1
  %conv25 = zext i8 %18 to i32
  %cmp26 = icmp sle i32 %conv25, 236
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  %19 = load i32, i32* %val, align 4
  %and29 = and i32 %19, 15
  store i32 %and29, i32* %val, align 4
  store i32 3, i32* %len, align 4
  br label %fsm_state_len3_1

if.end30:                                         ; preds = %if.end24
  %20 = load i8*, i8** %s, align 8
  %21 = load i8, i8* %20, align 1
  %conv31 = zext i8 %21 to i32
  %cmp32 = icmp eq i32 %conv31, 237
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end30
  %22 = load i32, i32* %val, align 4
  %and35 = and i32 %22, 15
  store i32 %and35, i32* %val, align 4
  store i32 3, i32* %len, align 4
  br label %fsm_state_len3_2

if.end36:                                         ; preds = %if.end30
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %conv37 = zext i8 %24 to i32
  %cmp38 = icmp sle i32 %conv37, 239
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end36
  %25 = load i32, i32* %val, align 4
  %and41 = and i32 %25, 15
  store i32 %and41, i32* %val, align 4
  store i32 3, i32* %len, align 4
  br label %fsm_state_len3_1

if.end42:                                         ; preds = %if.end36
  %26 = load i8*, i8** %s, align 8
  %27 = load i8, i8* %26, align 1
  %conv43 = zext i8 %27 to i32
  %cmp44 = icmp eq i32 %conv43, 240
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end42
  %28 = load i32, i32* %val, align 4
  %and47 = and i32 %28, 7
  store i32 %and47, i32* %val, align 4
  store i32 4, i32* %len, align 4
  br label %fsm_state_len4_0

if.end48:                                         ; preds = %if.end42
  %29 = load i8*, i8** %s, align 8
  %30 = load i8, i8* %29, align 1
  %conv49 = zext i8 %30 to i32
  %cmp50 = icmp sle i32 %conv49, 243
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end48
  %31 = load i32, i32* %val, align 4
  %and53 = and i32 %31, 7
  store i32 %and53, i32* %val, align 4
  store i32 4, i32* %len, align 4
  br label %fsm_state_len4_1

if.end54:                                         ; preds = %if.end48
  %32 = load i8*, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %conv55 = zext i8 %33 to i32
  %cmp56 = icmp eq i32 %conv55, 244
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end54
  %34 = load i32, i32* %val, align 4
  %and59 = and i32 %34, 7
  store i32 %and59, i32* %val, align 4
  store i32 4, i32* %len, align 4
  br label %fsm_state_len4_2

if.end60:                                         ; preds = %if.end54
  br label %fsm_state_invalid

fsm_state_null:                                   ; preds = %if.then7
  store i32 0, i32* %val, align 4
  %35 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %36 = load i8*, i8** %s, align 8
  %37 = load i8, i8* %36, align 1
  %conv61 = zext i8 %37 to i32
  %cmp62 = icmp ne i32 %conv61, 128
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %fsm_state_null
  br label %fsm_state_invalid

if.end65:                                         ; preds = %fsm_state_null
  br label %fsm_state_end

fsm_state_len4_0:                                 ; preds = %if.then46
  %38 = load i8*, i8** %s, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr66, i8** %s, align 8
  %39 = load i8*, i8** %s, align 8
  %40 = load i8, i8* %39, align 1
  %conv67 = zext i8 %40 to i32
  %cmp68 = icmp slt i32 %conv67, 144
  br i1 %cmp68, label %if.then73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %fsm_state_len4_0
  %41 = load i8*, i8** %s, align 8
  %42 = load i8, i8* %41, align 1
  %conv70 = zext i8 %42 to i32
  %cmp71 = icmp slt i32 191, %conv70
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %lor.lhs.false, %fsm_state_len4_0
  br label %fsm_state_invalid

if.end74:                                         ; preds = %lor.lhs.false
  br label %fsm_state_len4

fsm_state_len4_1:                                 ; preds = %if.then52
  %43 = load i8*, i8** %s, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr75, i8** %s, align 8
  %44 = load i8*, i8** %s, align 8
  %45 = load i8, i8* %44, align 1
  %conv76 = zext i8 %45 to i32
  %cmp77 = icmp slt i32 %conv76, 128
  br i1 %cmp77, label %if.then83, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %fsm_state_len4_1
  %46 = load i8*, i8** %s, align 8
  %47 = load i8, i8* %46, align 1
  %conv80 = zext i8 %47 to i32
  %cmp81 = icmp slt i32 191, %conv80
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %lor.lhs.false79, %fsm_state_len4_1
  br label %fsm_state_invalid

if.end84:                                         ; preds = %lor.lhs.false79
  br label %fsm_state_len4

fsm_state_len4_2:                                 ; preds = %if.then58
  %48 = load i8*, i8** %s, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr85, i8** %s, align 8
  %49 = load i8*, i8** %s, align 8
  %50 = load i8, i8* %49, align 1
  %conv86 = zext i8 %50 to i32
  %cmp87 = icmp slt i32 %conv86, 128
  br i1 %cmp87, label %if.then93, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %fsm_state_len4_2
  %51 = load i8*, i8** %s, align 8
  %52 = load i8, i8* %51, align 1
  %conv90 = zext i8 %52 to i32
  %cmp91 = icmp slt i32 143, %conv90
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %lor.lhs.false89, %fsm_state_len4_2
  br label %fsm_state_invalid

if.end94:                                         ; preds = %lor.lhs.false89
  br label %fsm_state_len4

fsm_state_len4:                                   ; preds = %if.end94, %if.end84, %if.end74
  %53 = load i32, i32* %val, align 4
  %shl = shl i32 %53, 6
  %54 = load i8*, i8** %s, align 8
  %55 = load i8, i8* %54, align 1
  %conv95 = zext i8 %55 to i32
  %and96 = and i32 %conv95, 63
  %or = or i32 %shl, %and96
  store i32 %or, i32* %val, align 4
  br label %fsm_state_len3_1

fsm_state_len3_0:                                 ; preds = %if.then22
  %56 = load i8*, i8** %s, align 8
  %incdec.ptr97 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr97, i8** %s, align 8
  %57 = load i8*, i8** %s, align 8
  %58 = load i8, i8* %57, align 1
  %conv98 = zext i8 %58 to i32
  %cmp99 = icmp slt i32 %conv98, 160
  br i1 %cmp99, label %if.then105, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %fsm_state_len3_0
  %59 = load i8*, i8** %s, align 8
  %60 = load i8, i8* %59, align 1
  %conv102 = zext i8 %60 to i32
  %cmp103 = icmp slt i32 191, %conv102
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %lor.lhs.false101, %fsm_state_len3_0
  br label %fsm_state_invalid

if.end106:                                        ; preds = %lor.lhs.false101
  br label %fsm_state_len3

fsm_state_len3_1:                                 ; preds = %fsm_state_len4, %if.then40, %if.then28
  %61 = load i8*, i8** %s, align 8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr107, i8** %s, align 8
  %62 = load i8*, i8** %s, align 8
  %63 = load i8, i8* %62, align 1
  %conv108 = zext i8 %63 to i32
  %cmp109 = icmp slt i32 %conv108, 128
  br i1 %cmp109, label %if.then115, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %fsm_state_len3_1
  %64 = load i8*, i8** %s, align 8
  %65 = load i8, i8* %64, align 1
  %conv112 = zext i8 %65 to i32
  %cmp113 = icmp slt i32 191, %conv112
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %lor.lhs.false111, %fsm_state_len3_1
  br label %fsm_state_invalid

if.end116:                                        ; preds = %lor.lhs.false111
  br label %fsm_state_len3

fsm_state_len3_2:                                 ; preds = %if.then34
  %66 = load i8*, i8** %s, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr117, i8** %s, align 8
  %67 = load i8*, i8** %s, align 8
  %68 = load i8, i8* %67, align 1
  %conv118 = zext i8 %68 to i32
  %cmp119 = icmp slt i32 %conv118, 128
  br i1 %cmp119, label %if.then125, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %fsm_state_len3_2
  %69 = load i8*, i8** %s, align 8
  %70 = load i8, i8* %69, align 1
  %conv122 = zext i8 %70 to i32
  %cmp123 = icmp slt i32 159, %conv122
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %lor.lhs.false121, %fsm_state_len3_2
  br label %fsm_state_invalid

if.end126:                                        ; preds = %lor.lhs.false121
  br label %fsm_state_len3

fsm_state_len3:                                   ; preds = %if.end126, %if.end116, %if.end106
  %71 = load i32, i32* %val, align 4
  %shl127 = shl i32 %71, 6
  %72 = load i8*, i8** %s, align 8
  %73 = load i8, i8* %72, align 1
  %conv128 = zext i8 %73 to i32
  %and129 = and i32 %conv128, 63
  %or130 = or i32 %shl127, %and129
  store i32 %or130, i32* %val, align 4
  br label %fsm_state_len2_0

fsm_state_len2_0:                                 ; preds = %fsm_state_len3, %if.then17
  %74 = load i8*, i8** %s, align 8
  %incdec.ptr131 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr131, i8** %s, align 8
  %75 = load i8*, i8** %s, align 8
  %76 = load i8, i8* %75, align 1
  %conv132 = zext i8 %76 to i32
  %cmp133 = icmp slt i32 %conv132, 128
  br i1 %cmp133, label %if.then139, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %fsm_state_len2_0
  %77 = load i8*, i8** %s, align 8
  %78 = load i8, i8* %77, align 1
  %conv136 = zext i8 %78 to i32
  %cmp137 = icmp slt i32 191, %conv136
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %lor.lhs.false135, %fsm_state_len2_0
  br label %fsm_state_invalid

if.end140:                                        ; preds = %lor.lhs.false135
  %79 = load i32, i32* %val, align 4
  %shl141 = shl i32 %79, 6
  %80 = load i8*, i8** %s, align 8
  %81 = load i8, i8* %80, align 1
  %conv142 = zext i8 %81 to i32
  %and143 = and i32 %conv142, 63
  %or144 = or i32 %shl141, %and143
  store i32 %or144, i32* %val, align 4
  br label %fsm_state_end

fsm_state_invalid:                                ; preds = %if.then139, %if.then125, %if.then115, %if.then105, %if.then93, %if.then83, %if.then73, %if.then64, %if.end60, %if.then12
  %82 = load i8, i8* %first, align 1
  %conv145 = sext i8 %82 to i32
  store i32 %conv145, i32* %val, align 4
  store i32 -1, i32* %len, align 4
  br label %fsm_state_end

fsm_state_end:                                    ; preds = %fsm_state_invalid, %if.end140, %if.end65, %if.then3
  br label %if.end146

if.end146:                                        ; preds = %fsm_state_end, %entry
  %83 = load i32*, i32** %ch.addr, align 8
  %tobool147 = icmp ne i32* %83, null
  br i1 %tobool147, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.end146
  %84 = load i32, i32* %val, align 4
  %85 = load i32*, i32** %ch.addr, align 8
  store i32 %84, i32* %85, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %if.end146
  %86 = load i32, i32* %len, align 4
  ret i32 %86
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
