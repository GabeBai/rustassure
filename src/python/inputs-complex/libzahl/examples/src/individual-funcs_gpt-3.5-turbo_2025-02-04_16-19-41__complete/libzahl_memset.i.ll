; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memset.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memset.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_memset(i64* noundef %a, i64 noundef %v, i64 noundef %n) #0 {
entry:
  %a.addr = alloca i64*, align 8
  %v.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %a, i64** %a.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %v.addr, align 8
  %3 = load i64*, i64** %a.addr, align 8
  %4 = load i64, i64* %i, align 8
  %add = add i64 %4, 0
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %add
  store i64 %2, i64* %arrayidx, align 8
  %5 = load i64, i64* %v.addr, align 8
  %6 = load i64*, i64** %a.addr, align 8
  %7 = load i64, i64* %i, align 8
  %add1 = add i64 %7, 1
  %arrayidx2 = getelementptr inbounds i64, i64* %6, i64 %add1
  store i64 %5, i64* %arrayidx2, align 8
  %8 = load i64, i64* %v.addr, align 8
  %9 = load i64*, i64** %a.addr, align 8
  %10 = load i64, i64* %i, align 8
  %add3 = add i64 %10, 2
  %arrayidx4 = getelementptr inbounds i64, i64* %9, i64 %add3
  store i64 %8, i64* %arrayidx4, align 8
  %11 = load i64, i64* %v.addr, align 8
  %12 = load i64*, i64** %a.addr, align 8
  %13 = load i64, i64* %i, align 8
  %add5 = add i64 %13, 3
  %arrayidx6 = getelementptr inbounds i64, i64* %12, i64 %add5
  store i64 %11, i64* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %i, align 8
  %add7 = add i64 %14, 4
  store i64 %add7, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
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
