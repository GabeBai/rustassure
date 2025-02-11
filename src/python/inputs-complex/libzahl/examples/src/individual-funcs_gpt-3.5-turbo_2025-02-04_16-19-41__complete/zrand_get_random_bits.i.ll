; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zrand_get_random_bits.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zrand_get_random_bits.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrand_get_random_bits(%struct.zahl* noundef %r, i64 noundef %bits, void (i8*, i64, i8*)* noundef %fun, i8* noundef %statep) #0 {
entry:
  %r.addr = alloca %struct.zahl*, align 8
  %bits.addr = alloca i64, align 8
  %fun.addr = alloca void (i8*, i64, i8*)*, align 8
  %statep.addr = alloca i8*, align 8
  %n = alloca i64, align 8
  %chars = alloca i64, align 8
  %mask = alloca i64, align 8
  store %struct.zahl* %r, %struct.zahl** %r.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  store void (i8*, i64, i8*)* %fun, void (i8*, i64, i8*)** %fun.addr, align 8
  store i8* %statep, i8** %statep.addr, align 8
  %0 = load i64, i64* %bits.addr, align 8
  %add = add i64 %0, 63
  %shr = lshr i64 %add, 6
  store i64 %shr, i64* %chars, align 8
  store i64 1, i64* %mask, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.zahl*, %struct.zahl** %r.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i32 0, i32 3
  %2 = load i64, i64* %alloced, align 8
  %3 = load i64, i64* %chars, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct.zahl*, %struct.zahl** %r.addr, align 8
  %5 = load i64, i64* %chars, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %4, i64 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %fun.addr, align 8
  %7 = load %struct.zahl*, %struct.zahl** %r.addr, align 8
  %chars1 = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 4
  %8 = load i64*, i64** %chars1, align 8
  %9 = bitcast i64* %8 to i8*
  %10 = load i64, i64* %chars, align 8
  %mul = mul i64 %10, 8
  %11 = load i8*, i8** %statep.addr, align 8
  call void %6(i8* noundef %9, i64 noundef %mul, i8* noundef %11)
  %12 = load i64, i64* %bits.addr, align 8
  %and = and i64 %12, 63
  store i64 %and, i64* %bits.addr, align 8
  %13 = load i64, i64* %bits.addr, align 8
  %14 = load i64, i64* %mask, align 8
  %shl = shl i64 %14, %13
  store i64 %shl, i64* %mask, align 8
  %15 = load i64, i64* %mask, align 8
  %sub = sub i64 %15, 1
  store i64 %sub, i64* %mask, align 8
  %16 = load i64, i64* %mask, align 8
  %17 = load %struct.zahl*, %struct.zahl** %r.addr, align 8
  %chars2 = getelementptr inbounds %struct.zahl, %struct.zahl* %17, i32 0, i32 4
  %18 = load i64*, i64** %chars2, align 8
  %19 = load i64, i64* %chars, align 8
  %sub3 = sub i64 %19, 1
  %arrayidx = getelementptr inbounds i64, i64* %18, i64 %sub3
  %20 = load i64, i64* %arrayidx, align 8
  %and4 = and i64 %20, %16
  store i64 %and4, i64* %arrayidx, align 8
  %21 = load i64, i64* %chars, align 8
  store i64 %21, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end12, %do.end
  %22 = load i64, i64* %n, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %n, align 8
  %tobool = icmp ne i64 %22, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.zahl*, %struct.zahl** %r.addr, align 8
  %chars5 = getelementptr inbounds %struct.zahl, %struct.zahl* %23, i32 0, i32 4
  %24 = load i64*, i64** %chars5, align 8
  %25 = load i64, i64* %n, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %24, i64 %25
  %26 = load i64, i64* %arrayidx6, align 8
  %tobool7 = icmp ne i64 %26, 0
  %lnot = xor i1 %tobool7, true
  %lnot8 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot8 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool9 = icmp ne i64 %conv, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body
  %27 = load i64, i64* %n, align 8
  %add11 = add i64 %27, 1
  %28 = load %struct.zahl*, %struct.zahl** %r.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %28, i32 0, i32 2
  store i64 %add11, i64* %used, align 8
  %29 = load %struct.zahl*, %struct.zahl** %r.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 0
  store i32 1, i32* %sign, align 8
  br label %return

if.end12:                                         ; preds = %for.body
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %30 = load %struct.zahl*, %struct.zahl** %r.addr, align 8
  %sign13 = getelementptr inbounds %struct.zahl, %struct.zahl* %30, i32 0, i32 0
  store i32 0, i32* %sign13, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then10
  ret void
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

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
