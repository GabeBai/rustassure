; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zgcd.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zgcd.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_gcd_u = external global [1 x %struct.zahl], align 8
@libzahl_tmp_gcd_v = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zgcd(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %shifts = alloca i64, align 8
  %u_orig = alloca i64*, align 8
  %v_orig = alloca i64*, align 8
  %u_lsb = alloca i64, align 8
  %v_lsb = alloca i64, align 8
  %neg = alloca i32, align 4
  %cmpmag = alloca i32, align 4
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
  br i1 %tobool2, label %if.then, label %if.end5

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
  br label %return

if.end5:                                          ; preds = %entry
  %5 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call6 = call i32 @zzero(%struct.zahl* noundef %5)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot8 = xor i1 %tobool7, true
  %lnot10 = xor i1 %lnot8, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  %conv12 = sext i32 %lnot.ext11 to i64
  %tobool13 = icmp ne i64 %conv12, 0
  br i1 %tobool13, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end5
  br label %do.body15

do.body15:                                        ; preds = %if.then14
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %7 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp16 = icmp ne %struct.zahl* %6, %7
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body15
  %8 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %9 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zset(%struct.zahl* noundef %8, %struct.zahl* noundef %9)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.body15
  br label %do.end20

do.end20:                                         ; preds = %if.end19
  br label %return

if.end21:                                         ; preds = %if.end5
  %10 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call22 = call i32 @zsignum(%struct.zahl* noundef %10)
  %11 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call23 = call i32 @zsignum(%struct.zahl* noundef %11)
  %and = and i32 %call22, %call23
  %cmp24 = icmp slt i32 %and, 0
  %conv25 = zext i1 %cmp24 to i32
  store i32 %conv25, i32* %neg, align 4
  %12 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call26 = call i64 @zlsb(%struct.zahl* noundef %12)
  store i64 %call26, i64* %u_lsb, align 8
  %13 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call27 = call i64 @zlsb(%struct.zahl* noundef %13)
  store i64 %call27, i64* %v_lsb, align 8
  %14 = load i64, i64* %u_lsb, align 8
  %15 = load i64, i64* %v_lsb, align 8
  %cmp28 = icmp ult i64 %14, %15
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end21
  %16 = load i64, i64* %u_lsb, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end21
  %17 = load i64, i64* %v_lsb, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ]
  store i64 %cond, i64* %shifts, align 8
  %18 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %19 = load i64, i64* %u_lsb, align 8
  call void @zrsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0), %struct.zahl* noundef %18, i64 noundef %19)
  %20 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %21 = load i64, i64* %v_lsb, align 8
  call void @zrsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0), %struct.zahl* noundef %20, i64 noundef %21)
  %22 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 4), align 8
  store i64* %22, i64** %u_orig, align 8
  %23 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 4), align 8
  store i64* %23, i64** %v_orig, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end51, %cond.end
  %call30 = call i32 @zcmpmag(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0))
  store i32 %call30, i32* %cmpmag, align 4
  %cmp31 = icmp sge i32 %call30, 0
  %lnot33 = xor i1 %cmp31, true
  %lnot35 = xor i1 %lnot33, true
  %lnot.ext36 = zext i1 %lnot35 to i32
  %conv37 = sext i32 %lnot.ext36 to i64
  %tobool38 = icmp ne i64 %conv37, 0
  br i1 %tobool38, label %if.then39, label %if.end51

if.then39:                                        ; preds = %for.cond
  %24 = load i32, i32* %cmpmag, align 4
  %cmp40 = icmp eq i32 %24, 0
  %lnot42 = xor i1 %cmp40, true
  %lnot44 = xor i1 %lnot42, true
  %lnot.ext45 = zext i1 %lnot44 to i32
  %conv46 = sext i32 %lnot.ext45 to i64
  %tobool47 = icmp ne i64 %conv46, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then39
  br label %for.end

if.end49:                                         ; preds = %if.then39
  %call50 = call i32 bitcast (i32 (...)* @zswap_tainted_unsigned to i32 (%struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0))
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %for.cond
  call void @zsub_positive_assign(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0))
  %call52 = call i64 @zlsb(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0))
  %call53 = call i32 bitcast (i32 (...)* @zrsh_taint to i32 (%struct.zahl*, i64)*)(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0), i64 noundef %call52)
  br label %for.cond

for.end:                                          ; preds = %if.then48
  %25 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %26 = load i64, i64* %shifts, align 8
  call void @zlsh(%struct.zahl* noundef %25, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0), i64 noundef %26)
  %27 = load i32, i32* %neg, align 4
  %tobool54 = icmp ne i32 %27, 0
  %28 = zext i1 %tobool54 to i64
  %cond55 = select i1 %tobool54, i32 -1, i32 1
  %29 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 0
  store i32 %cond55, i32* %sign, align 8
  %30 = load i64*, i64** %u_orig, align 8
  store i64* %30, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 4), align 8
  %31 = load i64*, i64** %v_orig, align 8
  store i64* %31, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 4), align 8
  br label %return

return:                                           ; preds = %for.end, %do.end20, %do.end
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i64 @zlsb(%struct.zahl* noundef) #1

declare void @zrsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zswap_tainted_unsigned(...) #1

declare void @zsub_positive_assign(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zrsh_taint(...) #1

declare void @zlsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

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
