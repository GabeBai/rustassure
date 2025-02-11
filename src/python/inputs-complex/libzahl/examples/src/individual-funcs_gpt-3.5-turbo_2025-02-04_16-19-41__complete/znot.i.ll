; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/znot.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/znot.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @znot(%struct.zahl* noundef %a, %struct.zahl* noundef %b) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %bits = alloca i64, align 8
  %a__ = alloca i64*, align 8
  %b__ = alloca i64*, align 8
  %i__ = alloca i64, align 8
  %n__ = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %do.end57

if.end:                                           ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call3 = call i64 @zbits(%struct.zahl* noundef %2)
  store i64 %call3, i64* %bits, align 8
  %3 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i32 0, i32 2
  %4 = load i64, i64* %used, align 8
  %5 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used4 = getelementptr inbounds %struct.zahl, %struct.zahl* %5, i32 0, i32 2
  store i64 %4, i64* %used4, align 8
  %6 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call5 = call i32 @zsignum(%struct.zahl* noundef %6)
  %sub = sub nsw i32 0, %call5
  %7 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign6 = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 0
  store i32 %sub, i32* %sign6, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 4
  %9 = load i64*, i64** %chars, align 8
  store i64* %9, i64** %a__, align 8
  %10 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars7 = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 4
  %11 = load i64*, i64** %chars7, align 8
  store i64* %11, i64** %b__, align 8
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used8 = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 2
  %13 = load i64, i64* %used8, align 8
  store i64 %13, i64* %n__, align 8
  store i64 0, i64* %i__, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %14 = load i64, i64* %i__, align 8
  %15 = load i64, i64* %n__, align 8
  %cmp = icmp ult i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64*, i64** %b__, align 8
  %17 = load i64, i64* %i__, align 8
  %add = add i64 %17, 0
  %arrayidx = getelementptr inbounds i64, i64* %16, i64 %add
  %18 = load i64, i64* %arrayidx, align 8
  %neg = xor i64 %18, -1
  %19 = load i64*, i64** %a__, align 8
  %20 = load i64, i64* %i__, align 8
  %add10 = add i64 %20, 0
  %arrayidx11 = getelementptr inbounds i64, i64* %19, i64 %add10
  store i64 %neg, i64* %arrayidx11, align 8
  %21 = load i64*, i64** %b__, align 8
  %22 = load i64, i64* %i__, align 8
  %add12 = add i64 %22, 1
  %arrayidx13 = getelementptr inbounds i64, i64* %21, i64 %add12
  %23 = load i64, i64* %arrayidx13, align 8
  %neg14 = xor i64 %23, -1
  %24 = load i64*, i64** %a__, align 8
  %25 = load i64, i64* %i__, align 8
  %add15 = add i64 %25, 1
  %arrayidx16 = getelementptr inbounds i64, i64* %24, i64 %add15
  store i64 %neg14, i64* %arrayidx16, align 8
  %26 = load i64*, i64** %b__, align 8
  %27 = load i64, i64* %i__, align 8
  %add17 = add i64 %27, 2
  %arrayidx18 = getelementptr inbounds i64, i64* %26, i64 %add17
  %28 = load i64, i64* %arrayidx18, align 8
  %neg19 = xor i64 %28, -1
  %29 = load i64*, i64** %a__, align 8
  %30 = load i64, i64* %i__, align 8
  %add20 = add i64 %30, 2
  %arrayidx21 = getelementptr inbounds i64, i64* %29, i64 %add20
  store i64 %neg19, i64* %arrayidx21, align 8
  %31 = load i64*, i64** %b__, align 8
  %32 = load i64, i64* %i__, align 8
  %add22 = add i64 %32, 3
  %arrayidx23 = getelementptr inbounds i64, i64* %31, i64 %add22
  %33 = load i64, i64* %arrayidx23, align 8
  %neg24 = xor i64 %33, -1
  %34 = load i64*, i64** %a__, align 8
  %35 = load i64, i64* %i__, align 8
  %add25 = add i64 %35, 3
  %arrayidx26 = getelementptr inbounds i64, i64* %34, i64 %add25
  store i64 %neg24, i64* %arrayidx26, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i64, i64* %i__, align 8
  %add27 = add i64 %36, 4
  store i64 %add27, i64* %i__, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end
  %37 = load i64, i64* %bits, align 8
  %and = and i64 %37, 63
  store i64 %and, i64* %bits, align 8
  %38 = load i64, i64* %bits, align 8
  %tobool28 = icmp ne i64 %38, 0
  br i1 %tobool28, label %if.then29, label %if.end36

if.then29:                                        ; preds = %do.end
  %39 = load i64, i64* %bits, align 8
  %shl = shl i64 1, %39
  %sub30 = sub i64 %shl, 1
  %40 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars31 = getelementptr inbounds %struct.zahl, %struct.zahl* %40, i32 0, i32 4
  %41 = load i64*, i64** %chars31, align 8
  %42 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used32 = getelementptr inbounds %struct.zahl, %struct.zahl* %42, i32 0, i32 2
  %43 = load i64, i64* %used32, align 8
  %sub33 = sub i64 %43, 1
  %arrayidx34 = getelementptr inbounds i64, i64* %41, i64 %sub33
  %44 = load i64, i64* %arrayidx34, align 8
  %and35 = and i64 %44, %sub30
  store i64 %and35, i64* %arrayidx34, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %do.end
  br label %do.body37

do.body37:                                        ; preds = %if.end36
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc49, %do.body37
  %45 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used39 = getelementptr inbounds %struct.zahl, %struct.zahl* %45, i32 0, i32 2
  %46 = load i64, i64* %used39, align 8
  %tobool40 = icmp ne i64 %46, 0
  br i1 %tobool40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond38
  %47 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars41 = getelementptr inbounds %struct.zahl, %struct.zahl* %47, i32 0, i32 4
  %48 = load i64*, i64** %chars41, align 8
  %49 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used42 = getelementptr inbounds %struct.zahl, %struct.zahl* %49, i32 0, i32 2
  %50 = load i64, i64* %used42, align 8
  %sub43 = sub i64 %50, 1
  %arrayidx44 = getelementptr inbounds i64, i64* %48, i64 %sub43
  %51 = load i64, i64* %arrayidx44, align 8
  %tobool45 = icmp ne i64 %51, 0
  %lnot46 = xor i1 %tobool45, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond38
  %52 = phi i1 [ false, %for.cond38 ], [ %lnot46, %land.rhs ]
  br i1 %52, label %for.body48, label %for.end51

for.body48:                                       ; preds = %land.end
  br label %for.inc49

for.inc49:                                        ; preds = %for.body48
  %53 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used50 = getelementptr inbounds %struct.zahl, %struct.zahl* %53, i32 0, i32 2
  %54 = load i64, i64* %used50, align 8
  %dec = add i64 %54, -1
  store i64 %dec, i64* %used50, align 8
  br label %for.cond38, !llvm.loop !12

for.end51:                                        ; preds = %land.end
  %55 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used52 = getelementptr inbounds %struct.zahl, %struct.zahl* %55, i32 0, i32 2
  %56 = load i64, i64* %used52, align 8
  %tobool53 = icmp ne i64 %56, 0
  br i1 %tobool53, label %if.end56, label %if.then54

if.then54:                                        ; preds = %for.end51
  %57 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign55 = getelementptr inbounds %struct.zahl, %struct.zahl* %57, i32 0, i32 0
  store i32 0, i32* %sign55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %for.end51
  br label %do.end57

do.end57:                                         ; preds = %if.then, %if.end56
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare i64 @zbits(%struct.zahl* noundef) #1

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
!12 = distinct !{!12, !11}
