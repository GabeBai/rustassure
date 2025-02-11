; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmodpow.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmodpow.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_pow_b = external global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_c = external global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_d = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zmodpow(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c, %struct.zahl* noundef %d) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %d.addr = alloca %struct.zahl*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %bits = alloca i64, align 8
  %x = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store %struct.zahl* %c, %struct.zahl** %c.addr, align 8
  store %struct.zahl* %d, %struct.zahl** %d.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call = call i32 @zsignum(%struct.zahl* noundef %0)
  %cmp = icmp sle i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.else40

if.then:                                          ; preds = %entry
  %1 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call2 = call i32 @zzero(%struct.zahl* noundef %1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.else26

if.then4:                                         ; preds = %if.then
  %2 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call5 = call i32 @zzero(%struct.zahl* noundef %2)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot7 = xor i1 %tobool6, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %tobool12 = icmp ne i64 %conv11, 0
  br i1 %tobool12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then4
  %call14 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -1)
  br label %if.end25

if.else:                                          ; preds = %if.then4
  %3 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  %call15 = call i32 @zzero(%struct.zahl* noundef %3)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot17 = xor i1 %tobool16, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.else
  %call24 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -3)
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then13
  %4 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zsetu(%struct.zahl* noundef %4, i64 noundef 1)
  br label %if.end39

if.else26:                                        ; preds = %if.then
  %5 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %6 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  %call27 = call i32 bitcast (i32 (...)* @zzero1 to i32 (%struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %5, %struct.zahl* noundef %6)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot29 = xor i1 %tobool28, true
  %lnot31 = xor i1 %lnot29, true
  %lnot.ext32 = zext i1 %lnot31 to i32
  %conv33 = sext i32 %lnot.ext32 to i64
  %tobool34 = icmp ne i64 %conv33, 0
  br i1 %tobool34, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.else26
  %call36 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -3)
  br label %if.end38

if.else37:                                        ; preds = %if.else26
  %7 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then35
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end25
  br label %for.end87

if.else40:                                        ; preds = %entry
  %8 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  %call41 = call i32 @zzero(%struct.zahl* noundef %8)
  %tobool42 = icmp ne i32 %call41, 0
  %lnot43 = xor i1 %tobool42, true
  %lnot45 = xor i1 %lnot43, true
  %lnot.ext46 = zext i1 %lnot45 to i32
  %conv47 = sext i32 %lnot.ext46 to i64
  %tobool48 = icmp ne i64 %conv47, 0
  br i1 %tobool48, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.else40
  %call50 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -3)
  br label %if.end63

if.else51:                                        ; preds = %if.else40
  %9 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call52 = call i32 @zzero(%struct.zahl* noundef %9)
  %tobool53 = icmp ne i32 %call52, 0
  %lnot54 = xor i1 %tobool53, true
  %lnot56 = xor i1 %lnot54, true
  %lnot.ext57 = zext i1 %lnot56 to i32
  %conv58 = sext i32 %lnot.ext57 to i64
  %tobool59 = icmp ne i64 %conv58, 0
  br i1 %tobool59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.else51
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign61 = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 0
  store i32 0, i32* %sign61, align 8
  br label %for.end87

if.end62:                                         ; preds = %if.else51
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then49
  br label %if.end64

if.end64:                                         ; preds = %if.end63
  %11 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call65 = call i64 @zbits(%struct.zahl* noundef %11)
  store i64 %call65, i64* %bits, align 8
  %12 = load i64, i64* %bits, align 8
  %shr = lshr i64 %12, 6
  store i64 %shr, i64* %n, align 8
  %13 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %14 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  call void @zmod(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef %13, %struct.zahl* noundef %14)
  %15 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0), %struct.zahl* noundef %15)
  %16 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0), %struct.zahl* noundef %16)
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zsetu(%struct.zahl* noundef %17, i64 noundef 1)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc75, %if.end64
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %n, align 8
  %cmp66 = icmp ult i64 %18, %19
  br i1 %cmp66, label %for.body, label %for.end76

for.body:                                         ; preds = %for.cond
  %20 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 4), align 8
  %21 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %20, i64 %21
  %22 = load i64, i64* %arrayidx, align 8
  store i64 %22, i64* %x, align 8
  store i64 64, i64* %j, align 8
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc, %for.body
  %23 = load i64, i64* %j, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %j, align 8
  %tobool69 = icmp ne i64 %23, 0
  br i1 %tobool69, label %for.body70, label %for.end

for.body70:                                       ; preds = %for.cond68
  %24 = load i64, i64* %x, align 8
  %and = and i64 %24, 1
  %tobool71 = icmp ne i64 %and, 0
  br i1 %tobool71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %for.body70
  %25 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %26 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zmodmul(%struct.zahl* noundef %25, %struct.zahl* noundef %26, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0))
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %for.body70
  call void @zmodsqr(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end73
  %27 = load i64, i64* %x, align 8
  %shr74 = lshr i64 %27, 1
  store i64 %shr74, i64* %x, align 8
  br label %for.cond68, !llvm.loop !10

for.end:                                          ; preds = %for.cond68
  br label %for.inc75

for.inc75:                                        ; preds = %for.end
  %28 = load i64, i64* %i, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end76:                                        ; preds = %for.cond
  %29 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 4), align 8
  %30 = load i64, i64* %i, align 8
  %arrayidx77 = getelementptr inbounds i64, i64* %29, i64 %30
  %31 = load i64, i64* %arrayidx77, align 8
  store i64 %31, i64* %x, align 8
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc85, %for.end76
  %32 = load i64, i64* %x, align 8
  %tobool79 = icmp ne i64 %32, 0
  br i1 %tobool79, label %for.body80, label %for.end87

for.body80:                                       ; preds = %for.cond78
  %33 = load i64, i64* %x, align 8
  %and81 = and i64 %33, 1
  %tobool82 = icmp ne i64 %and81, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %for.body80
  %34 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %35 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zmodmul(%struct.zahl* noundef %34, %struct.zahl* noundef %35, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0))
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %for.body80
  call void @zmodsqr(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0))
  br label %for.inc85

for.inc85:                                        ; preds = %if.end84
  %36 = load i64, i64* %x, align 8
  %shr86 = lshr i64 %36, 1
  store i64 %shr86, i64* %x, align 8
  br label %for.cond78, !llvm.loop !13

for.end87:                                        ; preds = %if.end39, %if.then60, %for.cond78
  ret void
}

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare i32 @libzahl_failure(...) #1

declare void @zsetu(%struct.zahl* noundef, i64 noundef) #1

declare i32 @zzero1(...) #1

declare i64 @zbits(%struct.zahl* noundef) #1

declare void @zmod(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmodmul(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmodsqr(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
!13 = distinct !{!13, !11}
