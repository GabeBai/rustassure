; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zdivmod.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zdivmod.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zdivmod(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c, %struct.zahl* noundef %d) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %d.addr = alloca %struct.zahl*, align 8
  %c_sign = alloca i32, align 4
  %sign = alloca i32, align 4
  %cmpmag = alloca i32, align 4
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store %struct.zahl* %c, %struct.zahl** %c.addr, align 8
  store %struct.zahl* %d, %struct.zahl** %d.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call = call i32 @zsignum(%struct.zahl* noundef %0)
  store i32 %call, i32* %c_sign, align 4
  %1 = load i32, i32* %c_sign, align 4
  %2 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  %call1 = call i32 @zsignum(%struct.zahl* noundef %2)
  %mul = mul nsw i32 %1, %call1
  store i32 %mul, i32* %sign, align 4
  %3 = load i32, i32* %sign, align 4
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool4 = icmp ne i64 %conv, 0
  br i1 %tobool4, label %if.then, label %if.else31

if.then:                                          ; preds = %entry
  %4 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call5 = call i32 @zzero(%struct.zahl* noundef %4)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot7 = xor i1 %tobool6, true
  %lnot9 = xor i1 %lnot7, true
  %lnot11 = xor i1 %lnot9, true
  %lnot.ext12 = zext i1 %lnot11 to i32
  %conv13 = sext i32 %lnot.ext12 to i64
  %tobool14 = icmp ne i64 %conv13, 0
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then
  %call16 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -3)
  br label %if.end30

if.else:                                          ; preds = %if.then
  %5 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  %call17 = call i32 @zzero(%struct.zahl* noundef %5)
  %tobool18 = icmp ne i32 %call17, 0
  %lnot19 = xor i1 %tobool18, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %tobool24 = icmp ne i64 %conv23, 0
  br i1 %tobool24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else
  %call26 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -2)
  br label %if.end

if.else27:                                        ; preds = %if.else
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign28 = getelementptr inbounds %struct.zahl, %struct.zahl* %6, i32 0, i32 0
  store i32 0, i32* %sign28, align 8
  %7 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %sign29 = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 0
  store i32 0, i32* %sign29, align 8
  br label %if.end

if.end:                                           ; preds = %if.else27, %if.then25
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then15
  br label %if.end68

if.else31:                                        ; preds = %entry
  %8 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %9 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  %call32 = call i32 @zcmpmag(%struct.zahl* noundef %8, %struct.zahl* noundef %9)
  store i32 %call32, i32* %cmpmag, align 4
  %10 = load i32, i32* %cmpmag, align 4
  %cmp = icmp sle i32 %10, 0
  %lnot34 = xor i1 %cmp, true
  %lnot36 = xor i1 %lnot34, true
  %lnot.ext37 = zext i1 %lnot36 to i32
  %conv38 = sext i32 %lnot.ext37 to i64
  %tobool39 = icmp ne i64 %conv38, 0
  br i1 %tobool39, label %if.then40, label %if.end59

if.then40:                                        ; preds = %if.else31
  %11 = load i32, i32* %cmpmag, align 4
  %cmp41 = icmp eq i32 %11, 0
  %lnot43 = xor i1 %cmp41, true
  %lnot45 = xor i1 %lnot43, true
  %lnot.ext46 = zext i1 %lnot45 to i32
  %conv47 = sext i32 %lnot.ext46 to i64
  %tobool48 = icmp ne i64 %conv47, 0
  br i1 %tobool48, label %if.then49, label %if.else52

if.then49:                                        ; preds = %if.then40
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %13 = load i32, i32* %sign, align 4
  %conv50 = sext i32 %13 to i64
  call void @zseti(%struct.zahl* noundef %12, i64 noundef %conv50)
  %14 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %sign51 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 0
  store i32 0, i32* %sign51, align 8
  br label %if.end58

if.else52:                                        ; preds = %if.then40
  br label %do.body

do.body:                                          ; preds = %if.else52
  %15 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %16 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %cmp53 = icmp ne %struct.zahl* %15, %16
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %do.body
  %17 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %18 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zset(%struct.zahl* noundef %17, %struct.zahl* noundef %18)
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end56
  %19 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign57 = getelementptr inbounds %struct.zahl, %struct.zahl* %19, i32 0, i32 0
  store i32 0, i32* %sign57, align 8
  br label %if.end58

if.end58:                                         ; preds = %do.end, %if.then49
  br label %if.end68

if.end59:                                         ; preds = %if.else31
  br label %if.end60

if.end60:                                         ; preds = %if.end59
  %20 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %21 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %22 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %23 = load %struct.zahl*, %struct.zahl** %d.addr, align 8
  %call61 = call i32 bitcast (i32 (...)* @zdivmod_impl to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %20, %struct.zahl* noundef %21, %struct.zahl* noundef %22, %struct.zahl* noundef %23)
  %24 = load i32, i32* %sign, align 4
  %25 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign62 = getelementptr inbounds %struct.zahl, %struct.zahl* %25, i32 0, i32 0
  store i32 %24, i32* %sign62, align 8
  %26 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call63 = call i32 @zsignum(%struct.zahl* noundef %26)
  %cmp64 = icmp sgt i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end60
  %27 = load i32, i32* %c_sign, align 4
  %28 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %sign67 = getelementptr inbounds %struct.zahl, %struct.zahl* %28, i32 0, i32 0
  store i32 %27, i32* %sign67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.end30, %if.end58, %if.then66, %if.end60
  ret void
}

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare i32 @libzahl_failure(...) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zseti(%struct.zahl* noundef, i64 noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zdivmod_impl(...) #1

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
