; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zdivmod_impl.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zdivmod_impl.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_divmod_d = external global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_a = external global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_b = external global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_ds = external global [64 x [1 x %struct.zahl]], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zdivmod_impl(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c, %struct.zahl* noundef %d) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %d.addr = alloca %struct.zahl*, align 8
  %c_bits = alloca i64, align 8
  %d_bits = alloca i64, align 8
  %bit = alloca i64, align 8
  %i = alloca i64, align 8
  %tds = alloca [64 x [1 x %struct.zahl]], align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store %struct.zahl* %c, %struct.zahl** %c.addr, align 8
  store %struct.zahl* %d, %struct.zahl** %d.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call = call i64 @zbits(%struct.zahl* noundef %0)
  store i64 %call, i64* %c_bits, align 8
  %1 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  %call1 = call i64 @zbits(%struct.zahl* noundef %1)
  store i64 %call1, i64* %d_bits, align 8
  %2 = load i64, i64* %c_bits, align 8
  %3 = load i64, i64* %d_bits, align 8
  %sub = sub i64 %2, %3
  store i64 %sub, i64* %bit, align 8
  %4 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  %5 = load i64, i64* %bit, align 8
  call void @zlsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), %struct.zahl* noundef %4, i64 noundef %5)
  store i32 1, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0, i32 0), align 8
  %6 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call2 = call i32 @zcmpmag(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), %struct.zahl* noundef %6)
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @zrsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), i64 noundef 1)
  %7 = load i64, i64* %bit, align 8
  %sub3 = sub i64 %7, 1
  store i64 %sub3, i64* %bit, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0, i32 0), align 8
  %8 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zabs(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0), %struct.zahl* noundef %8)
  %9 = load i64, i64* %bit, align 8
  %cmp4 = icmp ule i64 %9, 64
  %lnot = xor i1 %cmp4, true
  %lnot5 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %if.then6
  %call7 = call i32 @zcmpmag(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0))
  %cmp8 = icmp sle i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.cond
  call void @zsub_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0))
  %10 = load i64, i64* %bit, align 8
  call void @zbset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0), i64 noundef %10, i32 noundef 1)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.cond
  %11 = load i64, i64* %bit, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %bit, align 8
  %tobool12 = icmp ne i64 %11, 0
  br i1 %tobool12, label %lor.lhs.false, label %if.then15

lor.lhs.false:                                    ; preds = %if.end11
  %call13 = call i32 @zzero(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.end11
  br label %done

if.end16:                                         ; preds = %lor.lhs.false
  call void @zrsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), i64 noundef 1)
  br label %for.cond

if.else:                                          ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.else
  %12 = load i64, i64* %i, align 8
  %cmp18 = icmp ult i64 %12, 64
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond17
  %13 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 %13
  %arraydecay = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %arrayidx, i64 0, i64 0
  %14 = load i64, i64* %i, align 8
  call void @zrsh(%struct.zahl* noundef %arraydecay, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0), i64 noundef %14)
  %15 = load i64, i64* %i, align 8
  %arrayidx20 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 %15
  %arraydecay21 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %arrayidx20, i64 0, i64 0
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %arraydecay21, i32 0, i32 2
  %16 = load i64, i64* %used, align 8
  %17 = load i64, i64* %i, align 8
  %arrayidx22 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* %tds, i64 0, i64 %17
  %arraydecay23 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %arrayidx22, i64 0, i64 0
  %used24 = getelementptr inbounds %struct.zahl, %struct.zahl* %arraydecay23, i32 0, i32 2
  store i64 %16, i64* %used24, align 8
  %18 = load i64, i64* %i, align 8
  %arrayidx25 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 %18
  %arraydecay26 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %arrayidx25, i64 0, i64 0
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %arraydecay26, i32 0, i32 0
  %19 = load i32, i32* %sign, align 8
  %20 = load i64, i64* %i, align 8
  %arrayidx27 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* %tds, i64 0, i64 %20
  %arraydecay28 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %arrayidx27, i64 0, i64 0
  %sign29 = getelementptr inbounds %struct.zahl, %struct.zahl* %arraydecay28, i32 0, i32 0
  store i32 %19, i32* %sign29, align 8
  %21 = load i64, i64* %i, align 8
  %arrayidx30 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 %21
  %arraydecay31 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %arrayidx30, i64 0, i64 0
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %arraydecay31, i32 0, i32 4
  %22 = load i64*, i64** %chars, align 8
  %23 = load i64, i64* %i, align 8
  %arrayidx32 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* %tds, i64 0, i64 %23
  %arraydecay33 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %arrayidx32, i64 0, i64 0
  %chars34 = getelementptr inbounds %struct.zahl, %struct.zahl* %arraydecay33, i32 0, i32 4
  store i64* %22, i64** %chars34, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, i64* %i, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond17, !llvm.loop !10

for.end:                                          ; preds = %for.cond17
  br label %for.cond35

for.cond35:                                       ; preds = %for.end68, %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.cond35
  %25 = load i64, i64* %i, align 8
  %cmp37 = icmp ult i64 %25, 64
  br i1 %cmp37, label %for.body39, label %for.end58

for.body39:                                       ; preds = %for.cond36
  %26 = load i64, i64* %i, align 8
  %arrayidx40 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* %tds, i64 0, i64 %26
  %arraydecay41 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %arrayidx40, i64 0, i64 0
  %call42 = call i32 @zcmpmag(%struct.zahl* noundef %arraydecay41, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0))
  %cmp43 = icmp sle i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %for.body39
  %27 = load i64, i64* %i, align 8
  %arrayidx46 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* %tds, i64 0, i64 %27
  %arraydecay47 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %arrayidx46, i64 0, i64 0
  call void @zsub_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0), %struct.zahl* noundef %arraydecay47)
  %28 = load i64, i64* %bit, align 8
  call void @zbset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0), i64 noundef %28, i32 noundef 1)
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %for.body39
  %29 = load i64, i64* %bit, align 8
  %dec49 = add i64 %29, -1
  store i64 %dec49, i64* %bit, align 8
  %tobool50 = icmp ne i64 %29, 0
  br i1 %tobool50, label %lor.lhs.false51, label %if.then54

lor.lhs.false51:                                  ; preds = %if.end48
  %call52 = call i32 @zzero(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0))
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %lor.lhs.false51, %if.end48
  br label %done

if.end55:                                         ; preds = %lor.lhs.false51
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %30 = load i64, i64* %i, align 8
  %inc57 = add i64 %30, 1
  store i64 %inc57, i64* %i, align 8
  br label %for.cond36, !llvm.loop !12

for.end58:                                        ; preds = %for.cond36
  %31 = load i64, i64* %bit, align 8
  %cmp59 = icmp ult i64 %31, 63
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end58
  %32 = load i64, i64* %bit, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end58
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %32, %cond.true ], [ 63, %cond.false ]
  %add = add i64 %cond, 1
  store i64 %add, i64* %i, align 8
  br label %for.cond61

for.cond61:                                       ; preds = %for.body64, %cond.end
  %33 = load i64, i64* %i, align 8
  %dec62 = add i64 %33, -1
  store i64 %dec62, i64* %i, align 8
  %tobool63 = icmp ne i64 %33, 0
  br i1 %tobool63, label %for.body64, label %for.end68

for.body64:                                       ; preds = %for.cond61
  %34 = load i64, i64* %i, align 8
  %arrayidx65 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* %tds, i64 0, i64 %34
  %arraydecay66 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %arrayidx65, i64 0, i64 0
  %call67 = call i32 bitcast (i32 (...)* @zrsh_taint to i32 (%struct.zahl*, i32)*)(%struct.zahl* noundef %arraydecay66, i32 noundef 64)
  br label %for.cond61, !llvm.loop !13

for.end68:                                        ; preds = %for.cond61
  br label %for.cond35

done:                                             ; preds = %if.then54, %if.then15
  %35 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zswap(%struct.zahl* noundef %35, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0))
  %36 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zswap(%struct.zahl* noundef %36, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0))
  ret void
}

declare i64 @zbits(%struct.zahl* noundef) #1

declare void @zlsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zrsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zsub_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zbset(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef, i32 noundef) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare i32 @zrsh_taint(...) #1

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
!13 = distinct !{!13, !11}
