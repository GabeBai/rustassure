; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zptest.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zptest.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_ptest_n1 = external global [1 x %struct.zahl], align 8
@libzahl_const_1 = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_n4 = external global [1 x %struct.zahl], align 8
@libzahl_const_4 = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_d = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_a = external global [1 x %struct.zahl], align 8
@libzahl_const_2 = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_x = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zptest(%struct.zahl* noundef %witness, %struct.zahl* noundef %n, i32 noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %witness.addr = alloca %struct.zahl*, align 8
  %n.addr = alloca %struct.zahl*, align 8
  %t.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %r = alloca i64, align 8
  store %struct.zahl* %witness, %struct.zahl** %witness.addr, align 8
  store %struct.zahl* %n, %struct.zahl** %n.addr, align 8
  store i32 %t, i32* %t.addr, align 4
  %0 = load %struct.zahl*, %struct.zahl** %n.addr, align 8
  %call = call i32 @zcmpu(%struct.zahl* noundef %0, i64 noundef 3)
  %cmp = icmp sle i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %1 = load %struct.zahl*, %struct.zahl** %n.addr, align 8
  %call2 = call i32 @zcmpu(%struct.zahl* noundef %1, i64 noundef 1)
  %cmp3 = icmp sle i32 %call2, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %2 = load %struct.zahl*, %struct.zahl** %witness.addr, align 8
  %tobool6 = icmp ne %struct.zahl* %2, null
  br i1 %tobool6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.then5
  br label %do.body

do.body:                                          ; preds = %if.then7
  %3 = load %struct.zahl*, %struct.zahl** %witness.addr, align 8
  %4 = load %struct.zahl*, %struct.zahl** %n.addr, align 8
  %cmp8 = icmp ne %struct.zahl* %3, %4
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %do.body
  %5 = load %struct.zahl*, %struct.zahl** %witness.addr, align 8
  %6 = load %struct.zahl*, %struct.zahl** %n.addr, align 8
  call void @zset(%struct.zahl* noundef %5, %struct.zahl* noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then10, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.then5
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  store i32 2, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %entry
  %7 = load %struct.zahl*, %struct.zahl** %n.addr, align 8
  %call13 = call i32 @zeven(%struct.zahl* noundef %7)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot15 = xor i1 %tobool14, true
  %lnot17 = xor i1 %lnot15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %tobool20 = icmp ne i64 %conv19, 0
  br i1 %tobool20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end12
  %8 = load %struct.zahl*, %struct.zahl** %witness.addr, align 8
  %tobool22 = icmp ne %struct.zahl* %8, null
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then21
  %9 = load %struct.zahl*, %struct.zahl** %witness.addr, align 8
  call void @zsetu(%struct.zahl* noundef %9, i64 noundef 2)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then21
  store i32 0, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end12
  %10 = load %struct.zahl*, %struct.zahl** %n.addr, align 8
  call void @zsub_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0), %struct.zahl* noundef %10, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0))
  %11 = load %struct.zahl*, %struct.zahl** %n.addr, align 8
  call void @zsub_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n4, i64 0, i64 0), %struct.zahl* noundef %11, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_4, i64 0, i64 0))
  %call26 = call i64 @zlsb(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0))
  store i64 %call26, i64* %r, align 8
  %12 = load i64, i64* %r, align 8
  call void @zrsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_d, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0), i64 noundef %12)
  br label %while.cond

while.cond:                                       ; preds = %if.end53, %if.then32, %if.end25
  %13 = load i32, i32* %t.addr, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %t.addr, align 4
  %tobool27 = icmp ne i32 %13, 0
  br i1 %tobool27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zrand(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0), i32 noundef 2, i32 noundef 1, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n4, i64 0, i64 0))
  call void @zadd_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_2, i64 0, i64 0))
  %14 = load %struct.zahl*, %struct.zahl** %n.addr, align 8
  call void @zmodpow(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_d, i64 0, i64 0), %struct.zahl* noundef %14)
  %call28 = call i32 @zcmp(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0))
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %lor.lhs.false, label %if.then32

lor.lhs.false:                                    ; preds = %while.body
  %call30 = call i32 @zcmp(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0))
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false, %while.body
  br label %while.cond, !llvm.loop !10

if.end33:                                         ; preds = %lor.lhs.false
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %r, align 8
  %cmp34 = icmp ult i64 %15, %16
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.zahl*, %struct.zahl** %n.addr, align 8
  call void @zmodsqr(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef %17)
  %call36 = call i32 @zcmp(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0))
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end42, label %if.then38

if.then38:                                        ; preds = %for.body
  %18 = load %struct.zahl*, %struct.zahl** %witness.addr, align 8
  %tobool39 = icmp ne %struct.zahl* %18, null
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then38
  %19 = load %struct.zahl*, %struct.zahl** %witness.addr, align 8
  call void @zswap(%struct.zahl* noundef %19, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0))
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then38
  store i32 0, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %for.body
  %call43 = call i32 @zcmp(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0))
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end42
  br label %for.end

if.end46:                                         ; preds = %if.end42
  br label %for.inc

for.inc:                                          ; preds = %if.end46
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %if.then45, %for.cond
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %r, align 8
  %cmp47 = icmp eq i64 %21, %22
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %for.end
  %23 = load %struct.zahl*, %struct.zahl** %witness.addr, align 8
  %tobool50 = icmp ne %struct.zahl* %23, null
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then49
  %24 = load %struct.zahl*, %struct.zahl** %witness.addr, align 8
  call void @zswap(%struct.zahl* noundef %24, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0))
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.then49
  store i32 0, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %for.end
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end52, %if.end41, %if.end24, %if.else, %if.end11
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare i32 @zcmpu(%struct.zahl* noundef, i64 noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zeven(%struct.zahl* noundef) #1

declare void @zsetu(%struct.zahl* noundef, i64 noundef) #1

declare void @zsub_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare i64 @zlsb(%struct.zahl* noundef) #1

declare void @zrsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

declare void @zrand(%struct.zahl* noundef, i32 noundef, i32 noundef, %struct.zahl* noundef) #1

declare void @zadd_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmodpow(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zcmp(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmodsqr(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zswap(%struct.zahl* noundef, %struct.zahl* noundef) #1

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
