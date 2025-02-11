; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zlsh.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zlsh.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zlsh(%struct.zahl* noundef %a, %struct.zahl* noundef %b, i64 noundef %bits) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %bits.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %chars = alloca i64, align 8
  %cbits = alloca i64, align 8
  %carry = alloca i64, align 8
  %tcarry = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  store i64 0, i64* %carry, align 8
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
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %bits.addr, align 8
  %shr = lshr i64 %2, 6
  store i64 %shr, i64* %chars, align 8
  %3 = load i64, i64* %bits.addr, align 8
  %and = and i64 %3, 63
  store i64 %and, i64* %bits.addr, align 8
  %4 = load i64, i64* %bits.addr, align 8
  %sub = sub i64 64, %4
  store i64 %sub, i64* %cbits, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %5, i32 0, i32 3
  %6 = load i64, i64* %alloced, align 8
  %7 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 2
  %8 = load i64, i64* %used, align 8
  %9 = load i64, i64* %chars, align 8
  %add = add i64 %8, %9
  %add3 = add i64 %add, 1
  %cmp = icmp ult i64 %6, %add3
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %do.body
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %11 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used6 = getelementptr inbounds %struct.zahl, %struct.zahl* %11, i32 0, i32 2
  %12 = load i64, i64* %used6, align 8
  %13 = load i64, i64* %chars, align 8
  %add7 = add i64 %12, %13
  %add8 = add i64 %add7, 1
  call void @libzahl_realloc(%struct.zahl* noundef %10, i64 noundef %add8)
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end9
  %14 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %15 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp10 = icmp eq %struct.zahl* %14, %15
  %lnot12 = xor i1 %cmp10, true
  %lnot14 = xor i1 %lnot12, true
  %lnot.ext15 = zext i1 %lnot14 to i32
  %conv16 = sext i32 %lnot.ext15 to i64
  %tobool17 = icmp ne i64 %conv16, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %do.end
  %16 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars19 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 4
  %17 = load i64*, i64** %chars19, align 8
  %18 = load i64, i64* %chars, align 8
  %add.ptr = getelementptr inbounds i64, i64* %17, i64 %18
  %19 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars20 = getelementptr inbounds %struct.zahl, %struct.zahl* %19, i32 0, i32 4
  %20 = load i64*, i64** %chars20, align 8
  %21 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used21 = getelementptr inbounds %struct.zahl, %struct.zahl* %21, i32 0, i32 2
  %22 = load i64, i64* %used21, align 8
  %call22 = call i32 bitcast (i32 (...)* @libzahl_memmoveb to i32 (i64*, i64*, i64)*)(i64* noundef %add.ptr, i64* noundef %20, i64 noundef %22)
  br label %if.end28

if.else:                                          ; preds = %do.end
  %23 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars23 = getelementptr inbounds %struct.zahl, %struct.zahl* %23, i32 0, i32 4
  %24 = load i64*, i64** %chars23, align 8
  %25 = load i64, i64* %chars, align 8
  %add.ptr24 = getelementptr inbounds i64, i64* %24, i64 %25
  %26 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars25 = getelementptr inbounds %struct.zahl, %struct.zahl* %26, i32 0, i32 4
  %27 = load i64*, i64** %chars25, align 8
  %28 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used26 = getelementptr inbounds %struct.zahl, %struct.zahl* %28, i32 0, i32 2
  %29 = load i64, i64* %used26, align 8
  %call27 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %add.ptr24, i64* noundef %27, i64 noundef %29)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then18
  %30 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars29 = getelementptr inbounds %struct.zahl, %struct.zahl* %30, i32 0, i32 4
  %31 = load i64*, i64** %chars29, align 8
  %32 = load i64, i64* %chars, align 8
  %call30 = call i32 bitcast (i32 (...)* @libzahl_memset_precise to i32 (i64*, i32, i64)*)(i64* noundef %31, i32 noundef 0, i64 noundef %32)
  %33 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used31 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 2
  %34 = load i64, i64* %used31, align 8
  %35 = load i64, i64* %chars, align 8
  %add32 = add i64 %34, %35
  %36 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used33 = getelementptr inbounds %struct.zahl, %struct.zahl* %36, i32 0, i32 2
  store i64 %add32, i64* %used33, align 8
  %37 = load i64, i64* %bits.addr, align 8
  %tobool34 = icmp ne i64 %37, 0
  %lnot35 = xor i1 %tobool34, true
  %lnot37 = xor i1 %lnot35, true
  %lnot.ext38 = zext i1 %lnot37 to i32
  %conv39 = sext i32 %lnot.ext38 to i64
  %tobool40 = icmp ne i64 %conv39, 0
  br i1 %tobool40, label %if.then41, label %if.end58

if.then41:                                        ; preds = %if.end28
  %38 = load i64, i64* %chars, align 8
  store i64 %38, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then41
  %39 = load i64, i64* %i, align 8
  %40 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used42 = getelementptr inbounds %struct.zahl, %struct.zahl* %40, i32 0, i32 2
  %41 = load i64, i64* %used42, align 8
  %cmp43 = icmp ult i64 %39, %41
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars45 = getelementptr inbounds %struct.zahl, %struct.zahl* %42, i32 0, i32 4
  %43 = load i64*, i64** %chars45, align 8
  %44 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %43, i64 %44
  %45 = load i64, i64* %arrayidx, align 8
  %46 = load i64, i64* %cbits, align 8
  %shr46 = lshr i64 %45, %46
  store i64 %shr46, i64* %tcarry, align 8
  %47 = load i64, i64* %bits.addr, align 8
  %48 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars47 = getelementptr inbounds %struct.zahl, %struct.zahl* %48, i32 0, i32 4
  %49 = load i64*, i64** %chars47, align 8
  %50 = load i64, i64* %i, align 8
  %arrayidx48 = getelementptr inbounds i64, i64* %49, i64 %50
  %51 = load i64, i64* %arrayidx48, align 8
  %shl = shl i64 %51, %47
  store i64 %shl, i64* %arrayidx48, align 8
  %52 = load i64, i64* %carry, align 8
  %53 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars49 = getelementptr inbounds %struct.zahl, %struct.zahl* %53, i32 0, i32 4
  %54 = load i64*, i64** %chars49, align 8
  %55 = load i64, i64* %i, align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %54, i64 %55
  %56 = load i64, i64* %arrayidx50, align 8
  %or = or i64 %56, %52
  store i64 %or, i64* %arrayidx50, align 8
  %57 = load i64, i64* %tcarry, align 8
  store i64 %57, i64* %carry, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i64, i64* %i, align 8
  %inc = add i64 %58, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %59 = load i64, i64* %carry, align 8
  %tobool51 = icmp ne i64 %59, 0
  br i1 %tobool51, label %if.then52, label %if.end57

if.then52:                                        ; preds = %for.end
  %60 = load i64, i64* %carry, align 8
  %61 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars53 = getelementptr inbounds %struct.zahl, %struct.zahl* %61, i32 0, i32 4
  %62 = load i64*, i64** %chars53, align 8
  %63 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used54 = getelementptr inbounds %struct.zahl, %struct.zahl* %63, i32 0, i32 2
  %64 = load i64, i64* %used54, align 8
  %inc55 = add i64 %64, 1
  store i64 %inc55, i64* %used54, align 8
  %arrayidx56 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %60, i64* %arrayidx56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %for.end
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end28
  %65 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call59 = call i32 @zsignum(%struct.zahl* noundef %65)
  %66 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign60 = getelementptr inbounds %struct.zahl, %struct.zahl* %66, i32 0, i32 0
  store i32 %call59, i32* %sign60, align 8
  br label %return

return:                                           ; preds = %if.end58, %if.then
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memmoveb(...) #1

declare i32 @libzahl_memcpy(...) #1

declare i32 @libzahl_memset_precise(...) #1

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
