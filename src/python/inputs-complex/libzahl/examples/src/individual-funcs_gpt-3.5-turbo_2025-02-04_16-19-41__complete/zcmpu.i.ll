; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zcmpu.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zcmpu.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zcmpu(%struct.zahl* noundef %a, i64 noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %b.addr, align 8
  %tobool = icmp ne i64 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool3 = icmp ne i64 %conv, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call = call i32 @zsignum(%struct.zahl* noundef %1)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call4 = call i32 @zsignum(%struct.zahl* noundef %2)
  %cmp = icmp sle i32 %call4, 0
  %lnot6 = xor i1 %cmp, true
  %lnot8 = xor i1 %lnot6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %tobool11 = icmp ne i64 %conv10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end13
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i32 0, i32 4
  %4 = load i64*, i64** %chars, align 8
  %5 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %5, i32 0, i32 2
  %6 = load i64, i64* %used, align 8
  %sub = sub i64 %6, 1
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %sub
  %7 = load i64, i64* %arrayidx, align 8
  %tobool14 = icmp ne i64 %7, 0
  %lnot15 = xor i1 %tobool14, true
  br i1 %lnot15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used17 = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 2
  %9 = load i64, i64* %used17, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %used17, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used18 = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 2
  %11 = load i64, i64* %used18, align 8
  %cmp19 = icmp ugt i64 %11, 1
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %while.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %while.end
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars23 = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 4
  %13 = load i64*, i64** %chars23, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %13, i64 0
  %14 = load i64, i64* %arrayidx24, align 8
  %15 = load i64, i64* %b.addr, align 8
  %cmp25 = icmp ult i64 %14, %15
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end22
  br label %cond.end

cond.false:                                       ; preds = %if.end22
  %16 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars27 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 4
  %17 = load i64*, i64** %chars27, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %17, i64 0
  %18 = load i64, i64* %arrayidx28, align 8
  %19 = load i64, i64* %b.addr, align 8
  %cmp29 = icmp ugt i64 %18, %19
  %conv30 = zext i1 %cmp29 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv30, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then21, %if.then12, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

declare i32 @zsignum(%struct.zahl* noundef) #1

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
