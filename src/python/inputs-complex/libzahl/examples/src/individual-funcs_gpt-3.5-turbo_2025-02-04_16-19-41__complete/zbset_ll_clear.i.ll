; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbset_ll_clear.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbset_ll_clear.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zbset_ll_clear(%struct.zahl* noundef %a, i64 noundef %bit) #0 {
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
  %1 = load i64, i64* %chars, align 8
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i32 0, i32 2
  %3 = load i64, i64* %used, align 8
  %cmp = icmp uge i64 %1, %3
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %bit.addr, align 8
  %and = and i64 %4, 63
  store i64 %and, i64* %bit.addr, align 8
  %5 = load i64, i64* %bit.addr, align 8
  %6 = load i64, i64* %mask, align 8
  %shl = shl i64 %6, %5
  store i64 %shl, i64* %mask, align 8
  %7 = load i64, i64* %mask, align 8
  %neg = xor i64 %7, -1
  %8 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars2 = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 4
  %9 = load i64*, i64** %chars2, align 8
  %10 = load i64, i64* %chars, align 8
  %arrayidx = getelementptr inbounds i64, i64* %9, i64 %10
  %11 = load i64, i64* %arrayidx, align 8
  %and3 = and i64 %11, %neg
  store i64 %and3, i64* %arrayidx, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used4 = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 2
  %13 = load i64, i64* %used4, align 8
  %tobool5 = icmp ne i64 %13, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %14 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars6 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 4
  %15 = load i64*, i64** %chars6, align 8
  %16 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used7 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 2
  %17 = load i64, i64* %used7, align 8
  %sub = sub i64 %17, 1
  %arrayidx8 = getelementptr inbounds i64, i64* %15, i64 %sub
  %18 = load i64, i64* %arrayidx8, align 8
  %tobool9 = icmp ne i64 %18, 0
  %lnot10 = xor i1 %tobool9, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %lnot10, %land.rhs ]
  br i1 %19, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used12 = getelementptr inbounds %struct.zahl, %struct.zahl* %20, i32 0, i32 2
  %21 = load i64, i64* %used12, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %used12, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %land.end
  %22 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used13 = getelementptr inbounds %struct.zahl, %struct.zahl* %22, i32 0, i32 2
  %23 = load i64, i64* %used13, align 8
  %tobool14 = icmp ne i64 %23, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %for.end
  %24 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %24, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.end
  br label %do.end

do.end:                                           ; preds = %if.then, %if.end16
  ret void
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
