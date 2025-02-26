; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/__sputc.i.bc'
source_filename = "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/__sputc.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @__sputc(i32 noundef %_c, %struct.__sFILE* noundef %_p) #0 {
entry:
  %retval = alloca i32, align 4
  %_c.addr = alloca i32, align 4
  %_p.addr = alloca %struct.__sFILE*, align 8
  store i32 %_c, i32* %_c.addr, align 4
  store %struct.__sFILE* %_p, %struct.__sFILE** %_p.addr, align 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** %_p.addr, align 8
  %_w = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i32 0, i32 2
  %1 = load i32, i32* %_w, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %_w, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.__sFILE*, %struct.__sFILE** %_p.addr, align 8
  %_w1 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i32 0, i32 2
  %3 = load i32, i32* %_w1, align 4
  %4 = load %struct.__sFILE*, %struct.__sFILE** %_p.addr, align 8
  %_lbfsize = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i32 0, i32 6
  %5 = load i32, i32* %_lbfsize, align 8
  %cmp2 = icmp sge i32 %3, %5
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i32, i32* %_c.addr, align 4
  %conv = trunc i32 %6 to i8
  %conv3 = sext i8 %conv to i32
  %cmp4 = icmp ne i32 %conv3, 10
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* %_c.addr, align 4
  %conv6 = trunc i32 %7 to i8
  %8 = load %struct.__sFILE*, %struct.__sFILE** %_p.addr, align 8
  %_p7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %8, i32 0, i32 0
  %9 = load i8*, i8** %_p7, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %_p7, align 8
  store i8 %conv6, i8* %9, align 1
  %conv8 = zext i8 %conv6 to i32
  store i32 %conv8, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load i32, i32* %_c.addr, align 4
  %11 = load %struct.__sFILE*, %struct.__sFILE** %_p.addr, align 8
  %call = call i32 @__swbuf(i32 noundef %10, %struct.__sFILE* noundef %11)
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare i32 @__swbuf(i32 noundef, %struct.__sFILE* noundef) #1

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
