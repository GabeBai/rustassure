; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zadd.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zadd.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zadd(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store %struct.zahl* %c, %struct.zahl** %c.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %2 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %cmp = icmp ne %struct.zahl* %1, %2
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %do.body
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %4 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zset(%struct.zahl* noundef %3, %struct.zahl* noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end55

if.else:                                          ; preds = %entry
  %5 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call5 = call i32 @zzero(%struct.zahl* noundef %5)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot7 = xor i1 %tobool6, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %tobool12 = icmp ne i64 %conv11, 0
  br i1 %tobool12, label %if.then13, label %if.else20

if.then13:                                        ; preds = %if.else
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %7 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp15 = icmp ne %struct.zahl* %6, %7
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.body14
  %8 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %9 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zset(%struct.zahl* noundef %8, %struct.zahl* noundef %9)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.body14
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  br label %if.end54

if.else20:                                        ; preds = %if.else
  %10 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call21 = call i32 @zsignum(%struct.zahl* noundef %10)
  %cmp22 = icmp slt i32 %call21, 0
  %lnot24 = xor i1 %cmp22, true
  %lnot26 = xor i1 %lnot24, true
  %lnot.ext27 = zext i1 %lnot26 to i32
  %conv28 = sext i32 %lnot.ext27 to i64
  %tobool29 = icmp ne i64 %conv28, 0
  br i1 %tobool29, label %if.then30, label %if.else39

if.then30:                                        ; preds = %if.else20
  %11 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call31 = call i32 @zsignum(%struct.zahl* noundef %11)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.else37

if.then34:                                        ; preds = %if.then30
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %13 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %14 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call35 = call i32 bitcast (i32 (...)* @libzahl_zadd_unsigned to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %12, %struct.zahl* noundef %13, %struct.zahl* noundef %14)
  %15 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call36 = call i32 @zsignum(%struct.zahl* noundef %15)
  %sub = sub nsw i32 0, %call36
  %16 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 0
  store i32 %sub, i32* %sign, align 8
  br label %if.end38

if.else37:                                        ; preds = %if.then30
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %18 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %19 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zsub_unsigned(%struct.zahl* noundef %17, %struct.zahl* noundef %18, %struct.zahl* noundef %19)
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then34
  br label %if.end53

if.else39:                                        ; preds = %if.else20
  %20 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call40 = call i32 @zsignum(%struct.zahl* noundef %20)
  %cmp41 = icmp slt i32 %call40, 0
  %lnot43 = xor i1 %cmp41, true
  %lnot45 = xor i1 %lnot43, true
  %lnot.ext46 = zext i1 %lnot45 to i32
  %conv47 = sext i32 %lnot.ext46 to i64
  %tobool48 = icmp ne i64 %conv47, 0
  br i1 %tobool48, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else39
  %21 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %22 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %23 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zsub_unsigned(%struct.zahl* noundef %21, %struct.zahl* noundef %22, %struct.zahl* noundef %23)
  br label %if.end52

if.else50:                                        ; preds = %if.else39
  %24 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %25 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %26 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call51 = call i32 bitcast (i32 (...)* @libzahl_zadd_unsigned to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %24, %struct.zahl* noundef %25, %struct.zahl* noundef %26)
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then49
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end38
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %do.end19
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %do.end
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i32 @libzahl_zadd_unsigned(...) #1

declare void @zsub_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
