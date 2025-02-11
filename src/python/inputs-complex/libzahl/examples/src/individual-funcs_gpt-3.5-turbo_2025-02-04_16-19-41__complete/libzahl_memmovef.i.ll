; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memmovef.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memmovef.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_memmovef(i64* noundef %d, i64* noundef %s, i64 noundef %n) #0 {
entry:
  %d.addr = alloca i64*, align 8
  %s.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %d, i64** %d.addr, align 8
  store i64* %s, i64** %s.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %1, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64*, i64** %s.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx, align 8
  %4 = load i64*, i64** %d.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %4, i64 0
  store i64 %3, i64* %arrayidx1, align 8
  %5 = load i64*, i64** %s.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 1
  %6 = load i64, i64* %arrayidx2, align 8
  %7 = load i64*, i64** %d.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 1
  store i64 %6, i64* %arrayidx3, align 8
  %8 = load i64*, i64** %s.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %8, i64 2
  %9 = load i64, i64* %arrayidx4, align 8
  %10 = load i64*, i64** %d.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %10, i64 2
  store i64 %9, i64* %arrayidx5, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %n.addr, align 8
  %cmp6 = icmp ult i64 %11, %12
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64*, i64** %s.addr, align 8
  %14 = load i64, i64* %i, align 8
  %add = add i64 %14, 0
  %arrayidx7 = getelementptr inbounds i64, i64* %13, i64 %add
  %15 = load i64, i64* %arrayidx7, align 8
  %16 = load i64*, i64** %d.addr, align 8
  %17 = load i64, i64* %i, align 8
  %add8 = add i64 %17, 0
  %arrayidx9 = getelementptr inbounds i64, i64* %16, i64 %add8
  store i64 %15, i64* %arrayidx9, align 8
  %18 = load i64*, i64** %s.addr, align 8
  %19 = load i64, i64* %i, align 8
  %add10 = add i64 %19, 1
  %arrayidx11 = getelementptr inbounds i64, i64* %18, i64 %add10
  %20 = load i64, i64* %arrayidx11, align 8
  %21 = load i64*, i64** %d.addr, align 8
  %22 = load i64, i64* %i, align 8
  %add12 = add i64 %22, 1
  %arrayidx13 = getelementptr inbounds i64, i64* %21, i64 %add12
  store i64 %20, i64* %arrayidx13, align 8
  %23 = load i64*, i64** %s.addr, align 8
  %24 = load i64, i64* %i, align 8
  %add14 = add i64 %24, 2
  %arrayidx15 = getelementptr inbounds i64, i64* %23, i64 %add14
  %25 = load i64, i64* %arrayidx15, align 8
  %26 = load i64*, i64** %d.addr, align 8
  %27 = load i64, i64* %i, align 8
  %add16 = add i64 %27, 2
  %arrayidx17 = getelementptr inbounds i64, i64* %26, i64 %add16
  store i64 %25, i64* %arrayidx17, align 8
  %28 = load i64*, i64** %s.addr, align 8
  %29 = load i64, i64* %i, align 8
  %add18 = add i64 %29, 3
  %arrayidx19 = getelementptr inbounds i64, i64* %28, i64 %add18
  %30 = load i64, i64* %arrayidx19, align 8
  %31 = load i64*, i64** %d.addr, align 8
  %32 = load i64, i64* %i, align 8
  %add20 = add i64 %32, 3
  %arrayidx21 = getelementptr inbounds i64, i64* %31, i64 %add20
  store i64 %30, i64* %arrayidx21, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, i64* %i, align 8
  %add22 = add i64 %33, 4
  store i64 %add22, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
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
