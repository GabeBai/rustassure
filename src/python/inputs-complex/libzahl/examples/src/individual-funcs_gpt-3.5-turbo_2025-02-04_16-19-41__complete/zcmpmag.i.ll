; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zcmpmag.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zcmpmag.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zcmpmag(%struct.zahl* noundef %a, %struct.zahl* noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call3 = call i32 @zzero(%struct.zahl* noundef %1)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot.ext6 = zext i1 %lnot5 to i32
  %sub = sub nsw i32 0, %lnot.ext6
  store i32 %sub, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call7 = call i32 @zzero(%struct.zahl* noundef %2)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot9 = xor i1 %tobool8, true
  %lnot11 = xor i1 %lnot9, true
  %lnot.ext12 = zext i1 %lnot11 to i32
  %conv13 = sext i32 %lnot.ext12 to i64
  %tobool14 = icmp ne i64 %conv13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i32 0, i32 2
  %4 = load i64, i64* %used, align 8
  %sub17 = sub i64 %4, 1
  store i64 %sub17, i64* %i, align 8
  %5 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used18 = getelementptr inbounds %struct.zahl, %struct.zahl* %5, i32 0, i32 2
  %6 = load i64, i64* %used18, align 8
  %sub19 = sub i64 %6, 1
  store i64 %sub19, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %j, align 8
  %cmp = icmp ugt i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %9, i32 0, i32 4
  %10 = load i64*, i64** %chars, align 8
  %11 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %10, i64 %11
  %12 = load i64, i64* %arrayidx, align 8
  %tobool21 = icmp ne i64 %12, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %for.body
  %13 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used24 = getelementptr inbounds %struct.zahl, %struct.zahl* %13, i32 0, i32 2
  %14 = load i64, i64* %used24, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %used24, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %15 = load i64, i64* %i, align 8
  %dec25 = add i64 %15, -1
  store i64 %dec25, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc37, %for.end
  %16 = load i64, i64* %j, align 8
  %17 = load i64, i64* %i, align 8
  %cmp27 = icmp ugt i64 %16, %17
  br i1 %cmp27, label %for.body29, label %for.end39

for.body29:                                       ; preds = %for.cond26
  %18 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars30 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 4
  %19 = load i64*, i64** %chars30, align 8
  %20 = load i64, i64* %j, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %19, i64 %20
  %21 = load i64, i64* %arrayidx31, align 8
  %tobool32 = icmp ne i64 %21, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.body29
  store i32 -1, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %for.body29
  %22 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used35 = getelementptr inbounds %struct.zahl, %struct.zahl* %22, i32 0, i32 2
  %23 = load i64, i64* %used35, align 8
  %dec36 = add i64 %23, -1
  store i64 %dec36, i64* %used35, align 8
  br label %for.inc37

for.inc37:                                        ; preds = %if.end34
  %24 = load i64, i64* %j, align 8
  %dec38 = add i64 %24, -1
  store i64 %dec38, i64* %j, align 8
  br label %for.cond26, !llvm.loop !12

for.end39:                                        ; preds = %for.cond26
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc49, %for.end39
  %25 = load i64, i64* %i, align 8
  %tobool41 = icmp ne i64 %25, 0
  br i1 %tobool41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond40
  %26 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars42 = getelementptr inbounds %struct.zahl, %struct.zahl* %26, i32 0, i32 4
  %27 = load i64*, i64** %chars42, align 8
  %28 = load i64, i64* %i, align 8
  %arrayidx43 = getelementptr inbounds i64, i64* %27, i64 %28
  %29 = load i64, i64* %arrayidx43, align 8
  %30 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars44 = getelementptr inbounds %struct.zahl, %struct.zahl* %30, i32 0, i32 4
  %31 = load i64*, i64** %chars44, align 8
  %32 = load i64, i64* %i, align 8
  %arrayidx45 = getelementptr inbounds i64, i64* %31, i64 %32
  %33 = load i64, i64* %arrayidx45, align 8
  %cmp46 = icmp eq i64 %29, %33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond40
  %34 = phi i1 [ false, %for.cond40 ], [ %cmp46, %land.rhs ]
  br i1 %34, label %for.body48, label %for.end51

for.body48:                                       ; preds = %land.end
  br label %for.inc49

for.inc49:                                        ; preds = %for.body48
  %35 = load i64, i64* %i, align 8
  %dec50 = add i64 %35, -1
  store i64 %dec50, i64* %i, align 8
  br label %for.cond40, !llvm.loop !13

for.end51:                                        ; preds = %land.end
  %36 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars52 = getelementptr inbounds %struct.zahl, %struct.zahl* %36, i32 0, i32 4
  %37 = load i64*, i64** %chars52, align 8
  %38 = load i64, i64* %i, align 8
  %arrayidx53 = getelementptr inbounds i64, i64* %37, i64 %38
  %39 = load i64, i64* %arrayidx53, align 8
  %40 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars54 = getelementptr inbounds %struct.zahl, %struct.zahl* %40, i32 0, i32 4
  %41 = load i64*, i64** %chars54, align 8
  %42 = load i64, i64* %i, align 8
  %arrayidx55 = getelementptr inbounds i64, i64* %41, i64 %42
  %43 = load i64, i64* %arrayidx55, align 8
  %cmp56 = icmp ult i64 %39, %43
  br i1 %cmp56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end51
  br label %cond.end

cond.false:                                       ; preds = %for.end51
  %44 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars58 = getelementptr inbounds %struct.zahl, %struct.zahl* %44, i32 0, i32 4
  %45 = load i64*, i64** %chars58, align 8
  %46 = load i64, i64* %i, align 8
  %arrayidx59 = getelementptr inbounds i64, i64* %45, i64 %46
  %47 = load i64, i64* %arrayidx59, align 8
  %48 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars60 = getelementptr inbounds %struct.zahl, %struct.zahl* %48, i32 0, i32 4
  %49 = load i64*, i64** %chars60, align 8
  %50 = load i64, i64* %i, align 8
  %arrayidx61 = getelementptr inbounds i64, i64* %49, i64 %50
  %51 = load i64, i64* %arrayidx61, align 8
  %cmp62 = icmp ugt i64 %47, %51
  %conv63 = zext i1 %cmp62 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv63, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then33, %if.then22, %if.then15, %if.then
  %52 = load i32, i32* %retval, align 4
  ret i32 %52
}

declare i32 @zzero(%struct.zahl* noundef) #1

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
!13 = distinct !{!13, !11}
