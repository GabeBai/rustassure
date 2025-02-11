; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_unsigned_fast_small_auto.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_unsigned_fast_small_auto.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsplit_unsigned_fast_small_auto(%struct.zahl* noundef %high, %struct.zahl* noundef %low, %struct.zahl* noundef %a, i64 noundef %n) #0 {
entry:
  %high.addr = alloca %struct.zahl*, align 8
  %low.addr = alloca %struct.zahl*, align 8
  %a.addr = alloca %struct.zahl*, align 8
  %n.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store %struct.zahl* %high, %struct.zahl** %high.addr, align 8
  store %struct.zahl* %low, %struct.zahl** %low.addr, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 1, i64* %mask, align 8
  %0 = load i64, i64* %mask, align 8
  %1 = load i64, i64* %n.addr, align 8
  %shl = shl i64 %0, %1
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %mask, align 8
  %2 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i32 0, i32 0
  store i32 1, i32* %sign, align 8
  %3 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i32 0, i32 2
  store i64 1, i64* %used, align 8
  %4 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %4, i32 0, i32 4
  %5 = load i64*, i64** %chars, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load i64, i64* %n.addr, align 8
  %shr = lshr i64 %6, %7
  %8 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %chars1 = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 4
  %9 = load i64*, i64** %chars1, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 %shr, i64* %arrayidx2, align 8
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used3 = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 2
  %11 = load i64, i64* %used3, align 8
  %cmp = icmp eq i64 %11, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars4 = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 4
  %13 = load i64*, i64** %chars4, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %13, i64 1
  %14 = load i64, i64* %arrayidx5, align 8
  %15 = load i64, i64* %n.addr, align 8
  %shr6 = lshr i64 %14, %15
  %16 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %chars7 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 4
  %17 = load i64*, i64** %chars7, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %17, i64 1
  store i64 %shr6, i64* %arrayidx8, align 8
  %18 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %chars9 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 4
  %19 = load i64*, i64** %chars9, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %19, i64 1
  %20 = load i64, i64* %arrayidx10, align 8
  %tobool = icmp ne i64 %20, 0
  %lnot = xor i1 %tobool, true
  %lnot11 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot11 to i32
  %conv = sext i32 %lnot.ext to i64
  %21 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %used12 = getelementptr inbounds %struct.zahl, %struct.zahl* %21, i32 0, i32 2
  %22 = load i64, i64* %used12, align 8
  %add = add i64 %22, %conv
  store i64 %add, i64* %used12, align 8
  %23 = load i64, i64* %n.addr, align 8
  %sub13 = sub i64 64, %23
  store i64 %sub13, i64* %n.addr, align 8
  %24 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars14 = getelementptr inbounds %struct.zahl, %struct.zahl* %24, i32 0, i32 4
  %25 = load i64*, i64** %chars14, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %25, i64 1
  %26 = load i64, i64* %arrayidx15, align 8
  %27 = load i64, i64* %mask, align 8
  %and = and i64 %26, %27
  %28 = load i64, i64* %n.addr, align 8
  %shl16 = shl i64 %and, %28
  %29 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %chars17 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 4
  %30 = load i64*, i64** %chars17, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %30, i64 0
  %31 = load i64, i64* %arrayidx18, align 8
  %or = or i64 %31, %shl16
  store i64 %or, i64* %arrayidx18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %32 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %sign19 = getelementptr inbounds %struct.zahl, %struct.zahl* %32, i32 0, i32 0
  store i32 1, i32* %sign19, align 8
  %33 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %used20 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 2
  store i64 1, i64* %used20, align 8
  %34 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars21 = getelementptr inbounds %struct.zahl, %struct.zahl* %34, i32 0, i32 4
  %35 = load i64*, i64** %chars21, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %35, i64 0
  %36 = load i64, i64* %arrayidx22, align 8
  %37 = load i64, i64* %mask, align 8
  %and23 = and i64 %36, %37
  %38 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %chars24 = getelementptr inbounds %struct.zahl, %struct.zahl* %38, i32 0, i32 4
  %39 = load i64*, i64** %chars24, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 %and23, i64* %arrayidx25, align 8
  %40 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %chars26 = getelementptr inbounds %struct.zahl, %struct.zahl* %40, i32 0, i32 4
  %41 = load i64*, i64** %chars26, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %41, i64 0
  %42 = load i64, i64* %arrayidx27, align 8
  %tobool28 = icmp ne i64 %42, 0
  %lnot29 = xor i1 %tobool28, true
  %lnot31 = xor i1 %lnot29, true
  %lnot33 = xor i1 %lnot31, true
  %lnot.ext34 = zext i1 %lnot33 to i32
  %conv35 = sext i32 %lnot.ext34 to i64
  %tobool36 = icmp ne i64 %conv35, 0
  br i1 %tobool36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end
  %43 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %sign38 = getelementptr inbounds %struct.zahl, %struct.zahl* %43, i32 0, i32 0
  store i32 0, i32* %sign38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end
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
