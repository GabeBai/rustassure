; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zpow.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zpow.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_pow_b = external global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_c = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zpow(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %bits = alloca i64, align 8
  %x = alloca i64, align 8
  %neg = alloca i32, align 4
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store %struct.zahl* %c, %struct.zahl** %c.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call = call i32 @zsignum(%struct.zahl* noundef %0)
  %cmp = icmp sle i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.else28

if.then:                                          ; preds = %entry
  %1 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call2 = call i32 @zzero(%struct.zahl* noundef %1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %2 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call5 = call i32 @zzero(%struct.zahl* noundef %2)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot7 = xor i1 %tobool6, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %tobool12 = icmp ne i64 %conv11, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then4
  %call14 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then4
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zsetu(%struct.zahl* noundef %3, i64 noundef 1)
  br label %if.end27

if.else:                                          ; preds = %if.then
  %4 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call15 = call i32 @zzero(%struct.zahl* noundef %4)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot17 = xor i1 %tobool16, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else
  %call24 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -3)
  br label %if.end26

if.else25:                                        ; preds = %if.else
  %5 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %5, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then23
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  br label %if.end71

if.else28:                                        ; preds = %entry
  %6 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call29 = call i32 @zzero(%struct.zahl* noundef %6)
  %tobool30 = icmp ne i32 %call29, 0
  %lnot31 = xor i1 %tobool30, true
  %lnot33 = xor i1 %lnot31, true
  %lnot.ext34 = zext i1 %lnot33 to i32
  %conv35 = sext i32 %lnot.ext34 to i64
  %tobool36 = icmp ne i64 %conv35, 0
  br i1 %tobool36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.else28
  %7 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign38 = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 0
  store i32 0, i32* %sign38, align 8
  br label %if.end71

if.end39:                                         ; preds = %if.else28
  br label %if.end40

if.end40:                                         ; preds = %if.end39
  %8 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call41 = call i64 @zbits(%struct.zahl* noundef %8)
  store i64 %call41, i64* %bits, align 8
  %9 = load i64, i64* %bits, align 8
  %shr = lshr i64 %9, 6
  store i64 %shr, i64* %n, align 8
  %10 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call42 = call i32 @zsignum(%struct.zahl* noundef %10)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end40
  %11 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call45 = call i32 @zodd(%struct.zahl* noundef %11)
  %tobool46 = icmp ne i32 %call45, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end40
  %12 = phi i1 [ false, %if.end40 ], [ %tobool46, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, i32* %neg, align 4
  %13 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zabs(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef %13)
  %14 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0), %struct.zahl* noundef %14)
  %15 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zsetu(%struct.zahl* noundef %15, i64 noundef 1)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc56, %land.end
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %n, align 8
  %cmp47 = icmp ult i64 %16, %17
  br i1 %cmp47, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  %18 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 4), align 8
  %19 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %18, i64 %19
  %20 = load i64, i64* %arrayidx, align 8
  store i64 %20, i64* %x, align 8
  store i64 64, i64* %j, align 8
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc, %for.body
  %21 = load i64, i64* %j, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %j, align 8
  %tobool50 = icmp ne i64 %21, 0
  br i1 %tobool50, label %for.body51, label %for.end

for.body51:                                       ; preds = %for.cond49
  %22 = load i64, i64* %x, align 8
  %and = and i64 %22, 1
  %tobool52 = icmp ne i64 %and, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %for.body51
  %23 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %24 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zmul_ll(%struct.zahl* noundef %23, %struct.zahl* noundef %24, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %for.body51
  call void @zsqr_ll(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end54
  %25 = load i64, i64* %x, align 8
  %shr55 = lshr i64 %25, 1
  store i64 %shr55, i64* %x, align 8
  br label %for.cond49, !llvm.loop !10

for.end:                                          ; preds = %for.cond49
  br label %for.inc56

for.inc56:                                        ; preds = %for.end
  %26 = load i64, i64* %i, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end57:                                        ; preds = %for.cond
  %27 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 4), align 8
  %28 = load i64, i64* %i, align 8
  %arrayidx58 = getelementptr inbounds i64, i64* %27, i64 %28
  %29 = load i64, i64* %arrayidx58, align 8
  store i64 %29, i64* %x, align 8
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc66, %for.end57
  %30 = load i64, i64* %x, align 8
  %tobool60 = icmp ne i64 %30, 0
  br i1 %tobool60, label %for.body61, label %for.end68

for.body61:                                       ; preds = %for.cond59
  %31 = load i64, i64* %x, align 8
  %and62 = and i64 %31, 1
  %tobool63 = icmp ne i64 %and62, 0
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %for.body61
  %32 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %33 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zmul_ll(%struct.zahl* noundef %32, %struct.zahl* noundef %33, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %for.body61
  call void @zsqr_ll(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %for.inc66

for.inc66:                                        ; preds = %if.end65
  %34 = load i64, i64* %x, align 8
  %shr67 = lshr i64 %34, 1
  store i64 %shr67, i64* %x, align 8
  br label %for.cond59, !llvm.loop !13

for.end68:                                        ; preds = %for.cond59
  %35 = load i32, i32* %neg, align 4
  %tobool69 = icmp ne i32 %35, 0
  br i1 %tobool69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %for.end68
  %36 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %37 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zneg(%struct.zahl* noundef %36, %struct.zahl* noundef %37)
  br label %if.end71

if.end71:                                         ; preds = %if.end27, %if.then37, %if.then70, %for.end68
  ret void
}

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare i32 @libzahl_failure(...) #1

declare void @zsetu(%struct.zahl* noundef, i64 noundef) #1

declare i64 @zbits(%struct.zahl* noundef) #1

declare i32 @zodd(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zsqr_ll(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zneg(%struct.zahl* noundef, %struct.zahl* noundef) #1

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
