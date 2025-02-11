; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmodpowu.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmodpowu.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_pow_b = external global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_d = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zmodpowu(%struct.zahl* noundef %a, %struct.zahl* noundef %b, i64 noundef %c, %struct.zahl* noundef %d) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca i64, align 8
  %d.addr = alloca %struct.zahl*, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store %struct.zahl* %d, %struct.zahl** %d.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %tobool = icmp ne i64 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool3 = icmp ne i64 %conv, 0
  br i1 %tobool3, label %if.then, label %if.else25

if.then:                                          ; preds = %entry
  %1 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %1)
  %tobool4 = icmp ne i32 %call, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then
  %call12 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -1)
  br label %if.end24

if.else:                                          ; preds = %if.then
  %2 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  %call13 = call i32 @zzero(%struct.zahl* noundef %2)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot15 = xor i1 %tobool14, true
  %lnot17 = xor i1 %lnot15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %tobool20 = icmp ne i64 %conv19, 0
  br i1 %tobool20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.else
  %call22 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -3)
  br label %if.end

if.else23:                                        ; preds = %if.else
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zsetu(%struct.zahl* noundef %3, i64 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.else23, %if.then21
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then11
  br label %while.end

if.else25:                                        ; preds = %entry
  %4 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  %call26 = call i32 @zzero(%struct.zahl* noundef %4)
  %tobool27 = icmp ne i32 %call26, 0
  %lnot28 = xor i1 %tobool27, true
  %lnot30 = xor i1 %lnot28, true
  %lnot.ext31 = zext i1 %lnot30 to i32
  %conv32 = sext i32 %lnot.ext31 to i64
  %tobool33 = icmp ne i64 %conv32, 0
  br i1 %tobool33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else25
  %call35 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -3)
  br label %if.end47

if.else36:                                        ; preds = %if.else25
  %5 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call37 = call i32 @zzero(%struct.zahl* noundef %5)
  %tobool38 = icmp ne i32 %call37, 0
  %lnot39 = xor i1 %tobool38, true
  %lnot41 = xor i1 %lnot39, true
  %lnot.ext42 = zext i1 %lnot41 to i32
  %conv43 = sext i32 %lnot.ext42 to i64
  %tobool44 = icmp ne i64 %conv43, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.else36
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %6, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %while.end

if.end46:                                         ; preds = %if.else36
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then34
  br label %if.end48

if.end48:                                         ; preds = %if.end47
  %7 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %8 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  call void @zmod(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef %7, %struct.zahl* noundef %8)
  %9 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0), %struct.zahl* noundef %9)
  %10 = load i64, i64* %c.addr, align 8
  %and = and i64 %10, 1
  %tobool49 = icmp ne i64 %and, 0
  br i1 %tobool49, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.end48
  %11 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zset(%struct.zahl* noundef %11, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %if.end52

if.else51:                                        ; preds = %if.end48
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zsetu(%struct.zahl* noundef %12, i64 noundef 1)
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then50
  br label %while.cond

while.cond:                                       ; preds = %if.end57, %if.end52
  %13 = load i64, i64* %c.addr, align 8
  %shr = lshr i64 %13, 1
  store i64 %shr, i64* %c.addr, align 8
  %tobool53 = icmp ne i64 %shr, 0
  br i1 %tobool53, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zmodsqr(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0))
  %14 = load i64, i64* %c.addr, align 8
  %and54 = and i64 %14, 1
  %tobool55 = icmp ne i64 %and54, 0
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %while.body
  %15 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %16 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zmodmul(%struct.zahl* noundef %15, %struct.zahl* noundef %16, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0))
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %while.body
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %if.end24, %if.then45, %while.cond
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare i32 @libzahl_failure(...) #1

declare void @zsetu(%struct.zahl* noundef, i64 noundef) #1

declare void @zmod(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmodsqr(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmodmul(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
