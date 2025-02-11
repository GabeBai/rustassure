; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memset_precise.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memset_precise.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_memset_precise(i64* noundef %a, i64 noundef %v, i64 noundef %n) #0 {
entry:
  %a.addr = alloca i64*, align 8
  %v.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %a, i64** %a.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp ule i64 %0, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp uge i64 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %2 = load i64, i64* %v.addr, align 8
  %3 = load i64*, i64** %a.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 0
  store i64 %2, i64* %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = load i64, i64* %n.addr, align 8
  %cmp3 = icmp uge i64 %4, 2
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %5 = load i64, i64* %v.addr, align 8
  %6 = load i64*, i64** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %6, i64 1
  store i64 %5, i64* %arrayidx5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %7 = load i64, i64* %n.addr, align 8
  %cmp7 = icmp uge i64 %7, 3
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %8 = load i64, i64* %v.addr, align 8
  %9 = load i64*, i64** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %9, i64 2
  store i64 %8, i64* %arrayidx9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %10 = load i64, i64* %n.addr, align 8
  %cmp11 = icmp uge i64 %10, 4
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %11 = load i64, i64* %v.addr, align 8
  %12 = load i64*, i64** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %12, i64 3
  store i64 %11, i64* %arrayidx13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  br label %if.end32

if.else:                                          ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.else
  %13 = load i64, i64* %i, align 8
  %add = add i64 %13, 4
  store i64 %add, i64* %i, align 8
  %14 = load i64, i64* %n.addr, align 8
  %cmp15 = icmp ule i64 %add, %14
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i64, i64* %v.addr, align 8
  %16 = load i64*, i64** %a.addr, align 8
  %17 = load i64, i64* %i, align 8
  %sub = sub i64 %17, 1
  %arrayidx16 = getelementptr inbounds i64, i64* %16, i64 %sub
  store i64 %15, i64* %arrayidx16, align 8
  %18 = load i64, i64* %v.addr, align 8
  %19 = load i64*, i64** %a.addr, align 8
  %20 = load i64, i64* %i, align 8
  %sub17 = sub i64 %20, 2
  %arrayidx18 = getelementptr inbounds i64, i64* %19, i64 %sub17
  store i64 %18, i64* %arrayidx18, align 8
  %21 = load i64, i64* %v.addr, align 8
  %22 = load i64*, i64** %a.addr, align 8
  %23 = load i64, i64* %i, align 8
  %sub19 = sub i64 %23, 3
  %arrayidx20 = getelementptr inbounds i64, i64* %22, i64 %sub19
  store i64 %21, i64* %arrayidx20, align 8
  %24 = load i64, i64* %v.addr, align 8
  %25 = load i64*, i64** %a.addr, align 8
  %26 = load i64, i64* %i, align 8
  %sub21 = sub i64 %26, 4
  %arrayidx22 = getelementptr inbounds i64, i64* %25, i64 %sub21
  store i64 %24, i64* %arrayidx22, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %27 = load i64, i64* %i, align 8
  %28 = load i64, i64* %n.addr, align 8
  %cmp23 = icmp ugt i64 %27, %28
  br i1 %cmp23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %for.end
  %29 = load i64, i64* %i, align 8
  %sub25 = sub i64 %29, 4
  store i64 %sub25, i64* %i, align 8
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %if.then24
  %30 = load i64, i64* %i, align 8
  %31 = load i64, i64* %n.addr, align 8
  %cmp27 = icmp ult i64 %30, %31
  br i1 %cmp27, label %for.body28, label %for.end30

for.body28:                                       ; preds = %for.cond26
  %32 = load i64, i64* %v.addr, align 8
  %33 = load i64*, i64** %a.addr, align 8
  %34 = load i64, i64* %i, align 8
  %arrayidx29 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 %32, i64* %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body28
  %35 = load i64, i64* %i, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond26, !llvm.loop !12

for.end30:                                        ; preds = %for.cond26
  br label %if.end31

if.end31:                                         ; preds = %for.end30, %for.end
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end14
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
