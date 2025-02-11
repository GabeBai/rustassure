; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsub_impl.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsub_impl.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsub_impl(%struct.zahl* noundef %a, %struct.zahl* noundef %b, i64 noundef %n) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %n.addr = alloca i64, align 8
  %carry = alloca i64, align 8
  %tcarry = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %carry, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %carry, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i32 0, i32 4
  %4 = load i64*, i64** %chars, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %5
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars1 = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 4
  %8 = load i64*, i64** %chars1, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %8, i64 %9
  %10 = load i64, i64* %arrayidx2, align 8
  %cmp3 = icmp ule i64 %6, %10
  %conv = zext i1 %cmp3 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars4 = getelementptr inbounds %struct.zahl, %struct.zahl* %11, i32 0, i32 4
  %12 = load i64*, i64** %chars4, align 8
  %13 = load i64, i64* %i, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %12, i64 %13
  %14 = load i64, i64* %arrayidx5, align 8
  %15 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars6 = getelementptr inbounds %struct.zahl, %struct.zahl* %15, i32 0, i32 4
  %16 = load i64*, i64** %chars6, align 8
  %17 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %16, i64 %17
  %18 = load i64, i64* %arrayidx7, align 8
  %cmp8 = icmp ult i64 %14, %18
  %conv9 = zext i1 %cmp8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv9, %cond.false ]
  %conv10 = sext i32 %cond to i64
  store i64 %conv10, i64* %tcarry, align 8
  %19 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars11 = getelementptr inbounds %struct.zahl, %struct.zahl* %19, i32 0, i32 4
  %20 = load i64*, i64** %chars11, align 8
  %21 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %20, i64 %21
  %22 = load i64, i64* %arrayidx12, align 8
  %23 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars13 = getelementptr inbounds %struct.zahl, %struct.zahl* %23, i32 0, i32 4
  %24 = load i64*, i64** %chars13, align 8
  %25 = load i64, i64* %i, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %24, i64 %25
  %26 = load i64, i64* %arrayidx14, align 8
  %sub = sub i64 %26, %22
  store i64 %sub, i64* %arrayidx14, align 8
  %27 = load i64, i64* %carry, align 8
  %28 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars15 = getelementptr inbounds %struct.zahl, %struct.zahl* %28, i32 0, i32 4
  %29 = load i64*, i64** %chars15, align 8
  %30 = load i64, i64* %i, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %29, i64 %30
  %31 = load i64, i64* %arrayidx16, align 8
  %sub17 = sub i64 %31, %27
  store i64 %sub17, i64* %arrayidx16, align 8
  %32 = load i64, i64* %tcarry, align 8
  store i64 %32, i64* %carry, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %33 = load i64, i64* %i, align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %34 = load i64, i64* %carry, align 8
  %tobool18 = icmp ne i64 %34, 0
  br i1 %tobool18, label %if.then, label %if.end33

if.then:                                          ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %35 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars19 = getelementptr inbounds %struct.zahl, %struct.zahl* %35, i32 0, i32 4
  %36 = load i64*, i64** %chars19, align 8
  %37 = load i64, i64* %i, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %36, i64 %37
  %38 = load i64, i64* %arrayidx20, align 8
  %tobool21 = icmp ne i64 %38, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars22 = getelementptr inbounds %struct.zahl, %struct.zahl* %39, i32 0, i32 4
  %40 = load i64*, i64** %chars22, align 8
  %41 = load i64, i64* %i, align 8
  %inc23 = add i64 %41, 1
  store i64 %inc23, i64* %i, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 -1, i64* %arrayidx24, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %42 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars25 = getelementptr inbounds %struct.zahl, %struct.zahl* %42, i32 0, i32 4
  %43 = load i64*, i64** %chars25, align 8
  %44 = load i64, i64* %i, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %43, i64 %44
  %45 = load i64, i64* %arrayidx26, align 8
  %cmp27 = icmp eq i64 %45, 1
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %while.end
  %46 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %46, i32 0, i32 2
  %47 = load i64, i64* %used, align 8
  %dec = add i64 %47, -1
  store i64 %dec, i64* %used, align 8
  br label %if.end

if.else:                                          ; preds = %while.end
  %48 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars30 = getelementptr inbounds %struct.zahl, %struct.zahl* %48, i32 0, i32 4
  %49 = load i64*, i64** %chars30, align 8
  %50 = load i64, i64* %i, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %49, i64 %50
  %51 = load i64, i64* %arrayidx31, align 8
  %sub32 = sub i64 %51, 1
  store i64 %sub32, i64* %arrayidx31, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then29
  br label %if.end33

if.end33:                                         ; preds = %if.end, %for.end
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
!12 = distinct !{!12, !11}
