; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/ztrunc.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/ztrunc.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ztrunc(%struct.zahl* noundef %a, %struct.zahl* noundef %b, i64 noundef %bits) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %bits.addr = alloca i64, align 8
  %chars = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
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
  br label %do.end68

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %bits.addr, align 8
  %add = add i64 %2, 63
  %shr = lshr i64 %add, 6
  store i64 %shr, i64* %chars, align 8
  %3 = load i64, i64* %chars, align 8
  %4 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %4, i32 0, i32 2
  %5 = load i64, i64* %used, align 8
  %cmp = icmp ult i64 %3, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i64, i64* %chars, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used4 = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 2
  %8 = load i64, i64* %used4, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %8, %cond.false ]
  %9 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used5 = getelementptr inbounds %struct.zahl, %struct.zahl* %9, i32 0, i32 2
  store i64 %cond, i64* %used5, align 8
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used6 = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 2
  %11 = load i64, i64* %used6, align 8
  %12 = load i64, i64* %chars, align 8
  %cmp7 = icmp ult i64 %11, %12
  %lnot9 = xor i1 %cmp7, true
  %lnot11 = xor i1 %lnot9, true
  %lnot.ext12 = zext i1 %lnot11 to i32
  %conv13 = sext i32 %lnot.ext12 to i64
  %tobool14 = icmp ne i64 %conv13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %cond.end
  store i64 0, i64* %bits.addr, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %cond.end
  %13 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %14 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp17 = icmp ne %struct.zahl* %13, %14
  %lnot19 = xor i1 %cmp17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %tobool24 = icmp ne i64 %conv23, 0
  br i1 %tobool24, label %if.then25, label %if.end38

if.then25:                                        ; preds = %if.end16
  %15 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %sign26 = getelementptr inbounds %struct.zahl, %struct.zahl* %15, i32 0, i32 0
  %16 = load i32, i32* %sign26, align 8
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign27 = getelementptr inbounds %struct.zahl, %struct.zahl* %17, i32 0, i32 0
  store i32 %16, i32* %sign27, align 8
  br label %do.body

do.body:                                          ; preds = %if.then25
  %18 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 3
  %19 = load i64, i64* %alloced, align 8
  %20 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used28 = getelementptr inbounds %struct.zahl, %struct.zahl* %20, i32 0, i32 2
  %21 = load i64, i64* %used28, align 8
  %cmp29 = icmp ult i64 %19, %21
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %do.body
  %22 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %23 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used32 = getelementptr inbounds %struct.zahl, %struct.zahl* %23, i32 0, i32 2
  %24 = load i64, i64* %used32, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %22, i64 noundef %24)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end33
  %25 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars34 = getelementptr inbounds %struct.zahl, %struct.zahl* %25, i32 0, i32 4
  %26 = load i64*, i64** %chars34, align 8
  %27 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars35 = getelementptr inbounds %struct.zahl, %struct.zahl* %27, i32 0, i32 4
  %28 = load i64*, i64** %chars35, align 8
  %29 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used36 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 2
  %30 = load i64, i64* %used36, align 8
  %call37 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %26, i64* noundef %28, i64 noundef %30)
  br label %if.end38

if.end38:                                         ; preds = %do.end, %if.end16
  %31 = load i64, i64* %bits.addr, align 8
  %and = and i64 %31, 63
  store i64 %and, i64* %bits.addr, align 8
  %32 = load i64, i64* %bits.addr, align 8
  %tobool39 = icmp ne i64 %32, 0
  %lnot40 = xor i1 %tobool39, true
  %lnot42 = xor i1 %lnot40, true
  %lnot.ext43 = zext i1 %lnot42 to i32
  %conv44 = sext i32 %lnot.ext43 to i64
  %tobool45 = icmp ne i64 %conv44, 0
  br i1 %tobool45, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.end38
  %33 = load i64, i64* %bits.addr, align 8
  %shl = shl i64 1, %33
  %sub = sub i64 %shl, 1
  %34 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars47 = getelementptr inbounds %struct.zahl, %struct.zahl* %34, i32 0, i32 4
  %35 = load i64*, i64** %chars47, align 8
  %36 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used48 = getelementptr inbounds %struct.zahl, %struct.zahl* %36, i32 0, i32 2
  %37 = load i64, i64* %used48, align 8
  %sub49 = sub i64 %37, 1
  %arrayidx = getelementptr inbounds i64, i64* %35, i64 %sub49
  %38 = load i64, i64* %arrayidx, align 8
  %and50 = and i64 %38, %sub
  store i64 %and50, i64* %arrayidx, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end38
  br label %do.body52

do.body52:                                        ; preds = %if.end51
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body52
  %39 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used53 = getelementptr inbounds %struct.zahl, %struct.zahl* %39, i32 0, i32 2
  %40 = load i64, i64* %used53, align 8
  %tobool54 = icmp ne i64 %40, 0
  br i1 %tobool54, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %41 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars55 = getelementptr inbounds %struct.zahl, %struct.zahl* %41, i32 0, i32 4
  %42 = load i64*, i64** %chars55, align 8
  %43 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used56 = getelementptr inbounds %struct.zahl, %struct.zahl* %43, i32 0, i32 2
  %44 = load i64, i64* %used56, align 8
  %sub57 = sub i64 %44, 1
  %arrayidx58 = getelementptr inbounds i64, i64* %42, i64 %sub57
  %45 = load i64, i64* %arrayidx58, align 8
  %tobool59 = icmp ne i64 %45, 0
  %lnot60 = xor i1 %tobool59, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %46 = phi i1 [ false, %for.cond ], [ %lnot60, %land.rhs ]
  br i1 %46, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used62 = getelementptr inbounds %struct.zahl, %struct.zahl* %47, i32 0, i32 2
  %48 = load i64, i64* %used62, align 8
  %dec = add i64 %48, -1
  store i64 %dec, i64* %used62, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %land.end
  %49 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used63 = getelementptr inbounds %struct.zahl, %struct.zahl* %49, i32 0, i32 2
  %50 = load i64, i64* %used63, align 8
  %tobool64 = icmp ne i64 %50, 0
  br i1 %tobool64, label %if.end67, label %if.then65

if.then65:                                        ; preds = %for.end
  %51 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign66 = getelementptr inbounds %struct.zahl, %struct.zahl* %51, i32 0, i32 0
  store i32 0, i32* %sign66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %for.end
  br label %do.end68

do.end68:                                         ; preds = %if.then, %if.end67
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memcpy(...) #1

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
