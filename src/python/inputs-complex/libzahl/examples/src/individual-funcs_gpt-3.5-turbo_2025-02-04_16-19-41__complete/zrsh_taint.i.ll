; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zrsh_taint.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zrsh_taint.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrsh_taint(%struct.zahl* noundef %a, i64 noundef %bits) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %bits.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %chars = alloca i64, align 8
  %cbits = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  %0 = load i64, i64* %bits.addr, align 8
  %tobool = icmp ne i64 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool3 = icmp ne i64 %conv, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end70

if.end:                                           ; preds = %entry
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %1)
  %tobool4 = icmp ne i32 %call, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  br label %if.end70

if.end12:                                         ; preds = %if.end
  %2 = load i64, i64* %bits.addr, align 8
  %shr = lshr i64 %2, 6
  store i64 %shr, i64* %chars, align 8
  %3 = load i64, i64* %chars, align 8
  %4 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %4, i32 0, i32 2
  %5 = load i64, i64* %used, align 8
  %cmp = icmp uge i64 %3, %5
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end12
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call14 = call i64 @zbits(%struct.zahl* noundef %6)
  %7 = load i64, i64* %bits.addr, align 8
  %cmp15 = icmp ule i64 %call14, %7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end12
  %8 = phi i1 [ true, %if.end12 ], [ %cmp15, %lor.rhs ]
  %lnot17 = xor i1 %8, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.end
  %9 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %9, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %if.end70

if.end24:                                         ; preds = %lor.end
  %10 = load i64, i64* %bits.addr, align 8
  %and = and i64 %10, 63
  store i64 %and, i64* %bits.addr, align 8
  %11 = load i64, i64* %bits.addr, align 8
  %sub = sub i64 64, %11
  store i64 %sub, i64* %cbits, align 8
  %12 = load i64, i64* %chars, align 8
  %tobool25 = icmp ne i64 %12, 0
  %lnot26 = xor i1 %tobool25, true
  %lnot28 = xor i1 %lnot26, true
  %lnot.ext29 = zext i1 %lnot28 to i32
  %conv30 = sext i32 %lnot.ext29 to i64
  %tobool31 = icmp ne i64 %conv30, 0
  br i1 %tobool31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end24
  %13 = load i64, i64* %chars, align 8
  %14 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used33 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 2
  %15 = load i64, i64* %used33, align 8
  %sub34 = sub i64 %15, %13
  store i64 %sub34, i64* %used33, align 8
  %16 = load i64, i64* %chars, align 8
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars35 = getelementptr inbounds %struct.zahl, %struct.zahl* %17, i32 0, i32 4
  %18 = load i64*, i64** %chars35, align 8
  %add.ptr = getelementptr inbounds i64, i64* %18, i64 %16
  store i64* %add.ptr, i64** %chars35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end24
  %19 = load i64, i64* %bits.addr, align 8
  %tobool37 = icmp ne i64 %19, 0
  %lnot38 = xor i1 %tobool37, true
  %lnot40 = xor i1 %lnot38, true
  %lnot.ext41 = zext i1 %lnot40 to i32
  %conv42 = sext i32 %lnot.ext41 to i64
  %tobool43 = icmp ne i64 %conv42, 0
  br i1 %tobool43, label %if.then44, label %if.end70

if.then44:                                        ; preds = %if.end36
  %20 = load i64, i64* %bits.addr, align 8
  %21 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars45 = getelementptr inbounds %struct.zahl, %struct.zahl* %21, i32 0, i32 4
  %22 = load i64*, i64** %chars45, align 8
  %arrayidx = getelementptr inbounds i64, i64* %22, i64 0
  %23 = load i64, i64* %arrayidx, align 8
  %shr46 = lshr i64 %23, %20
  store i64 %shr46, i64* %arrayidx, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then44
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used47 = getelementptr inbounds %struct.zahl, %struct.zahl* %25, i32 0, i32 2
  %26 = load i64, i64* %used47, align 8
  %cmp48 = icmp ult i64 %24, %26
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars50 = getelementptr inbounds %struct.zahl, %struct.zahl* %27, i32 0, i32 4
  %28 = load i64*, i64** %chars50, align 8
  %29 = load i64, i64* %i, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %28, i64 %29
  %30 = load i64, i64* %arrayidx51, align 8
  %31 = load i64, i64* %cbits, align 8
  %shl = shl i64 %30, %31
  %32 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars52 = getelementptr inbounds %struct.zahl, %struct.zahl* %32, i32 0, i32 4
  %33 = load i64*, i64** %chars52, align 8
  %34 = load i64, i64* %i, align 8
  %sub53 = sub i64 %34, 1
  %arrayidx54 = getelementptr inbounds i64, i64* %33, i64 %sub53
  %35 = load i64, i64* %arrayidx54, align 8
  %or = or i64 %35, %shl
  store i64 %or, i64* %arrayidx54, align 8
  %36 = load i64, i64* %bits.addr, align 8
  %37 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars55 = getelementptr inbounds %struct.zahl, %struct.zahl* %37, i32 0, i32 4
  %38 = load i64*, i64** %chars55, align 8
  %39 = load i64, i64* %i, align 8
  %arrayidx56 = getelementptr inbounds i64, i64* %38, i64 %39
  %40 = load i64, i64* %arrayidx56, align 8
  %shr57 = lshr i64 %40, %36
  store i64 %shr57, i64* %arrayidx56, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i64, i64* %i, align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc67, %for.end
  %42 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars59 = getelementptr inbounds %struct.zahl, %struct.zahl* %42, i32 0, i32 4
  %43 = load i64*, i64** %chars59, align 8
  %44 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used60 = getelementptr inbounds %struct.zahl, %struct.zahl* %44, i32 0, i32 2
  %45 = load i64, i64* %used60, align 8
  %sub61 = sub i64 %45, 1
  %arrayidx62 = getelementptr inbounds i64, i64* %43, i64 %sub61
  %46 = load i64, i64* %arrayidx62, align 8
  %tobool63 = icmp ne i64 %46, 0
  %lnot64 = xor i1 %tobool63, true
  br i1 %lnot64, label %for.body66, label %for.end69

for.body66:                                       ; preds = %for.cond58
  br label %for.inc67

for.inc67:                                        ; preds = %for.body66
  %47 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used68 = getelementptr inbounds %struct.zahl, %struct.zahl* %47, i32 0, i32 2
  %48 = load i64, i64* %used68, align 8
  %dec = add i64 %48, -1
  store i64 %dec, i64* %used68, align 8
  br label %for.cond58, !llvm.loop !12

for.end69:                                        ; preds = %for.cond58
  br label %if.end70

if.end70:                                         ; preds = %if.then, %if.then11, %if.then23, %for.end69, %if.end36
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare i64 @zbits(%struct.zahl* noundef) #1

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
