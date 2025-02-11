; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_unsigned_fast_large_taint.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_unsigned_fast_large_taint.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsplit_unsigned_fast_large_taint(%struct.zahl* noundef %high, %struct.zahl* noundef %low, %struct.zahl* noundef %a, i64 noundef %n) #0 {
entry:
  %high.addr = alloca %struct.zahl*, align 8
  %low.addr = alloca %struct.zahl*, align 8
  %a.addr = alloca %struct.zahl*, align 8
  %n.addr = alloca i64, align 8
  store %struct.zahl* %high, %struct.zahl** %high.addr, align 8
  store %struct.zahl* %low, %struct.zahl** %low.addr, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %shr = lshr i64 %0, 6
  store i64 %shr, i64* %n.addr, align 8
  %1 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i32 0, i32 0
  store i32 1, i32* %sign, align 8
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i32 0, i32 2
  %3 = load i64, i64* %used, align 8
  %4 = load i64, i64* %n.addr, align 8
  %sub = sub i64 %3, %4
  %5 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %used1 = getelementptr inbounds %struct.zahl, %struct.zahl* %5, i32 0, i32 2
  store i64 %sub, i64* %used1, align 8
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %6, i32 0, i32 4
  %7 = load i64*, i64** %chars, align 8
  %8 = load i64, i64* %n.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %7, i64 %8
  %9 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %chars2 = getelementptr inbounds %struct.zahl, %struct.zahl* %9, i32 0, i32 4
  store i64* %add.ptr, i64** %chars2, align 8
  %10 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %sign3 = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 0
  store i32 1, i32* %sign3, align 8
  %11 = load i64, i64* %n.addr, align 8
  %12 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %used4 = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 2
  store i64 %11, i64* %used4, align 8
  %13 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars5 = getelementptr inbounds %struct.zahl, %struct.zahl* %13, i32 0, i32 4
  %14 = load i64*, i64** %chars5, align 8
  %15 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %chars6 = getelementptr inbounds %struct.zahl, %struct.zahl* %15, i32 0, i32 4
  store i64* %14, i64** %chars6, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %16 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %used7 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 2
  %17 = load i64, i64* %used7, align 8
  %tobool = icmp ne i64 %17, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %18 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %chars8 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 4
  %19 = load i64*, i64** %chars8, align 8
  %20 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %used9 = getelementptr inbounds %struct.zahl, %struct.zahl* %20, i32 0, i32 2
  %21 = load i64, i64* %used9, align 8
  %sub10 = sub i64 %21, 1
  %arrayidx = getelementptr inbounds i64, i64* %19, i64 %sub10
  %22 = load i64, i64* %arrayidx, align 8
  %tobool11 = icmp ne i64 %22, 0
  %lnot = xor i1 %tobool11, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %used12 = getelementptr inbounds %struct.zahl, %struct.zahl* %24, i32 0, i32 2
  %25 = load i64, i64* %used12, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %used12, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %land.end
  %26 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %used13 = getelementptr inbounds %struct.zahl, %struct.zahl* %26, i32 0, i32 2
  %27 = load i64, i64* %used13, align 8
  %tobool14 = icmp ne i64 %27, 0
  br i1 %tobool14, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %28 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %sign15 = getelementptr inbounds %struct.zahl, %struct.zahl* %28, i32 0, i32 0
  store i32 0, i32* %sign15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end
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
