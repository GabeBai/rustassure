; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zpowu.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zpowu.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_pow_b = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zpowu(%struct.zahl* noundef %a, %struct.zahl* noundef %b, i64 noundef %c) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca i64, align 8
  %neg = alloca i32, align 4
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %tobool = icmp ne i64 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool3 = icmp ne i64 %conv, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %1)
  %tobool4 = icmp ne i32 %call, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  %call12 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zsetu(%struct.zahl* noundef %2, i64 noundef 1)
  br label %if.end39

if.else:                                          ; preds = %entry
  %3 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call13 = call i32 @zzero(%struct.zahl* noundef %3)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot15 = xor i1 %tobool14, true
  %lnot17 = xor i1 %lnot15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %tobool20 = icmp ne i64 %conv19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.else
  %4 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %4, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %if.end39

if.end22:                                         ; preds = %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22
  %5 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call24 = call i32 @zsignum(%struct.zahl* noundef %5)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end23
  %6 = load i64, i64* %c.addr, align 8
  %and = and i64 %6, 1
  %tobool26 = icmp ne i64 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end23
  %7 = phi i1 [ false, %if.end23 ], [ %tobool26, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %neg, align 4
  %8 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zabs(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef %8)
  %9 = load i64, i64* %c.addr, align 8
  %and27 = and i64 %9, 1
  %tobool28 = icmp ne i64 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %land.end
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zset(%struct.zahl* noundef %10, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %if.end31

if.else30:                                        ; preds = %land.end
  %11 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zsetu(%struct.zahl* noundef %11, i64 noundef 1)
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then29
  br label %while.cond

while.cond:                                       ; preds = %if.end36, %if.end31
  %12 = load i64, i64* %c.addr, align 8
  %shr = lshr i64 %12, 1
  store i64 %shr, i64* %c.addr, align 8
  %tobool32 = icmp ne i64 %shr, 0
  br i1 %tobool32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zsqr_ll(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  %13 = load i64, i64* %c.addr, align 8
  %and33 = and i64 %13, 1
  %tobool34 = icmp ne i64 %and33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %while.body
  %14 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %15 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zmul_ll(%struct.zahl* noundef %14, %struct.zahl* noundef %15, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %while.body
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %neg, align 4
  %tobool37 = icmp ne i32 %16, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %while.end
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %18 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zneg(%struct.zahl* noundef %17, %struct.zahl* noundef %18)
  br label %if.end39

if.end39:                                         ; preds = %if.end, %if.then21, %if.then38, %while.end
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare i32 @libzahl_failure(...) #1

declare void @zsetu(%struct.zahl* noundef, i64 noundef) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zsqr_ll(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
