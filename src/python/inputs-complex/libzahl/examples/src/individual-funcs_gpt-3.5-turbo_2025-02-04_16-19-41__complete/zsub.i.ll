; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsub.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsub.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsub(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c) #0 {
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
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %2 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zneg(%struct.zahl* noundef %1, %struct.zahl* noundef %2)
  br label %if.end43

if.else:                                          ; preds = %entry
  %3 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call3 = call i32 @zzero(%struct.zahl* noundef %3)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then11
  %4 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %5 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp = icmp ne %struct.zahl* %4, %5
  br i1 %cmp, label %if.then13, label %if.end

if.then13:                                        ; preds = %do.body
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %7 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zset(%struct.zahl* noundef %6, %struct.zahl* noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then13, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end42

if.else14:                                        ; preds = %if.else
  %8 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call15 = call i32 @zsignum(%struct.zahl* noundef %8)
  %cmp16 = icmp slt i32 %call15, 0
  %lnot18 = xor i1 %cmp16, true
  %lnot20 = xor i1 %lnot18, true
  %lnot.ext21 = zext i1 %lnot20 to i32
  %conv22 = sext i32 %lnot.ext21 to i64
  %tobool23 = icmp ne i64 %conv22, 0
  br i1 %tobool23, label %if.then24, label %if.else33

if.then24:                                        ; preds = %if.else14
  %9 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call25 = call i32 @zsignum(%struct.zahl* noundef %9)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.then24
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %11 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %12 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call29 = call i32 bitcast (i32 (...)* @libzahl_zsub_unsigned to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %10, %struct.zahl* noundef %11, %struct.zahl* noundef %12)
  br label %if.end32

if.else30:                                        ; preds = %if.then24
  %13 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %14 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %15 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zadd_unsigned(%struct.zahl* noundef %13, %struct.zahl* noundef %14, %struct.zahl* noundef %15)
  %16 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call31 = call i32 @zsignum(%struct.zahl* noundef %16)
  %sub = sub nsw i32 0, %call31
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %17, i32 0, i32 0
  store i32 %sub, i32* %sign, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then28
  br label %if.end41

if.else33:                                        ; preds = %if.else14
  %18 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call34 = call i32 @zsignum(%struct.zahl* noundef %18)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else33
  %19 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %20 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %21 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zadd_unsigned(%struct.zahl* noundef %19, %struct.zahl* noundef %20, %struct.zahl* noundef %21)
  br label %if.end40

if.else38:                                        ; preds = %if.else33
  %22 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %23 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %24 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call39 = call i32 bitcast (i32 (...)* @libzahl_zsub_unsigned to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %22, %struct.zahl* noundef %23, %struct.zahl* noundef %24)
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then37
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end32
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %do.end
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zneg(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i32 @libzahl_zsub_unsigned(...) #1

declare void @zadd_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
