; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbset_ll_flip.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbset_ll_flip.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zbset_ll_flip(%struct.zahl* noundef %a, i64 noundef %bit) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %bit.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  %chars = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i64 %bit, i64* %bit.addr, align 8
  store i64 1, i64* %mask, align 8
  %0 = load i64, i64* %bit.addr, align 8
  %shr = lshr i64 %0, 6
  store i64 %shr, i64* %chars, align 8
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i32 0, i32 2
  store i64 0, i64* %used, align 8
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i32 0, i32 0
  store i32 1, i32* %sign, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %chars, align 8
  %5 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used1 = getelementptr inbounds %struct.zahl, %struct.zahl* %5, i32 0, i32 2
  %6 = load i64, i64* %used1, align 8
  %cmp = icmp uge i64 %4, %6
  %lnot = xor i1 %cmp, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool3 = icmp ne i64 %conv, 0
  br i1 %tobool3, label %if.then4, label %if.end17

if.then4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then4
  %7 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 3
  %8 = load i64, i64* %alloced, align 8
  %9 = load i64, i64* %chars, align 8
  %add = add i64 %9, 1
  %cmp5 = icmp ult i64 %8, %add
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.body
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %11 = load i64, i64* %chars, align 8
  %add8 = add i64 %11, 1
  call void @libzahl_realloc(%struct.zahl* noundef %10, i64 noundef %add8)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end9
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars10 = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 4
  %13 = load i64*, i64** %chars10, align 8
  %14 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used11 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 2
  %15 = load i64, i64* %used11, align 8
  %add.ptr = getelementptr inbounds i64, i64* %13, i64 %15
  %16 = load i64, i64* %chars, align 8
  %add12 = add i64 %16, 1
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used13 = getelementptr inbounds %struct.zahl, %struct.zahl* %17, i32 0, i32 2
  %18 = load i64, i64* %used13, align 8
  %sub = sub i64 %add12, %18
  %call14 = call i32 bitcast (i32 (...)* @libzahl_memset to i32 (i64*, i32, i64)*)(i64* noundef %add.ptr, i32 noundef 0, i64 noundef %sub)
  %19 = load i64, i64* %chars, align 8
  %add15 = add i64 %19, 1
  %20 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used16 = getelementptr inbounds %struct.zahl, %struct.zahl* %20, i32 0, i32 2
  store i64 %add15, i64* %used16, align 8
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end
  %21 = load i64, i64* %bit.addr, align 8
  %and = and i64 %21, 63
  store i64 %and, i64* %bit.addr, align 8
  %22 = load i64, i64* %bit.addr, align 8
  %23 = load i64, i64* %mask, align 8
  %shl = shl i64 %23, %22
  store i64 %shl, i64* %mask, align 8
  %24 = load i64, i64* %mask, align 8
  %25 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars18 = getelementptr inbounds %struct.zahl, %struct.zahl* %25, i32 0, i32 4
  %26 = load i64*, i64** %chars18, align 8
  %27 = load i64, i64* %chars, align 8
  %arrayidx = getelementptr inbounds i64, i64* %26, i64 %27
  %28 = load i64, i64* %arrayidx, align 8
  %xor = xor i64 %28, %24
  store i64 %xor, i64* %arrayidx, align 8
  br label %do.body19

do.body19:                                        ; preds = %if.end17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body19
  %29 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used20 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 2
  %30 = load i64, i64* %used20, align 8
  %tobool21 = icmp ne i64 %30, 0
  br i1 %tobool21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %31 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars22 = getelementptr inbounds %struct.zahl, %struct.zahl* %31, i32 0, i32 4
  %32 = load i64*, i64** %chars22, align 8
  %33 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used23 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 2
  %34 = load i64, i64* %used23, align 8
  %sub24 = sub i64 %34, 1
  %arrayidx25 = getelementptr inbounds i64, i64* %32, i64 %sub24
  %35 = load i64, i64* %arrayidx25, align 8
  %tobool26 = icmp ne i64 %35, 0
  %lnot27 = xor i1 %tobool26, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %36 = phi i1 [ false, %for.cond ], [ %lnot27, %land.rhs ]
  br i1 %36, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used29 = getelementptr inbounds %struct.zahl, %struct.zahl* %37, i32 0, i32 2
  %38 = load i64, i64* %used29, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %used29, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %land.end
  %39 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used30 = getelementptr inbounds %struct.zahl, %struct.zahl* %39, i32 0, i32 2
  %40 = load i64, i64* %used30, align 8
  %tobool31 = icmp ne i64 %40, 0
  br i1 %tobool31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %for.end
  %41 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign33 = getelementptr inbounds %struct.zahl, %struct.zahl* %41, i32 0, i32 0
  store i32 0, i32* %sign33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %for.end
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memset(...) #1

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
