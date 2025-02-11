; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zadd_impl_4.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zadd_impl_4.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zadd_impl_4(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c, i64 noundef %n) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %n.addr = alloca i64, align 8
  %carry = alloca i64, align 8
  %tcarry = alloca i64, align 8
  %ac = alloca i64*, align 8
  %bc = alloca i64*, align 8
  %cc = alloca i64*, align 8
  %i = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store %struct.zahl* %c, %struct.zahl** %c.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %carry, align 8
  %0 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i32 0, i32 4
  %1 = load i64*, i64** %chars, align 8
  store i64* %1, i64** %ac, align 8
  %2 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars1 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i32 0, i32 4
  %3 = load i64*, i64** %chars1, align 8
  store i64* %3, i64** %bc, align 8
  %4 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars2 = getelementptr inbounds %struct.zahl, %struct.zahl* %4, i32 0, i32 4
  %5 = load i64*, i64** %chars2, align 8
  store i64* %5, i64** %cc, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64*, i64** %bc, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %9
  %10 = load i64, i64* %arrayidx, align 8
  %11 = load i64*, i64** %cc, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %11, i64 %12
  %13 = load i64, i64* %arrayidx3, align 8
  %14 = load i64*, i64** %ac, align 8
  %15 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i64, i64* %14, i64 %15
  %16 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %10, i64 %13)
  %17 = extractvalue { i64, i1 } %16, 1
  %18 = extractvalue { i64, i1 } %16, 0
  store i64 %18, i64* %add.ptr, align 8
  %conv = zext i1 %17 to i64
  store i64 %conv, i64* %tcarry, align 8
  %19 = load i64, i64* %tcarry, align 8
  %20 = load i64*, i64** %ac, align 8
  %21 = load i64, i64* %i, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %20, i64 %21
  %22 = load i64, i64* %arrayidx4, align 8
  %23 = load i64, i64* %carry, align 8
  %24 = load i64*, i64** %ac, align 8
  %25 = load i64, i64* %i, align 8
  %add.ptr5 = getelementptr inbounds i64, i64* %24, i64 %25
  %26 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 %23)
  %27 = extractvalue { i64, i1 } %26, 1
  %28 = extractvalue { i64, i1 } %26, 0
  store i64 %28, i64* %add.ptr5, align 8
  %conv6 = zext i1 %27 to i64
  %or = or i64 %19, %conv6
  store i64 %or, i64* %carry, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i64, i64* %i, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %30 = load i64, i64* %carry, align 8
  %tobool = icmp ne i64 %30, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i64*, i64** %ac, align 8
  %32 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %31, i64 %32
  %33 = load i64, i64* %arrayidx7, align 8
  %34 = load i64*, i64** %ac, align 8
  %35 = load i64, i64* %i, align 8
  %add.ptr8 = getelementptr inbounds i64, i64* %34, i64 %35
  %36 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 1)
  %37 = extractvalue { i64, i1 } %36, 1
  %38 = extractvalue { i64, i1 } %36, 0
  store i64 %38, i64* %add.ptr8, align 8
  %conv9 = zext i1 %37 to i64
  store i64 %conv9, i64* %carry, align 8
  %39 = load i64, i64* %i, align 8
  %inc10 = add i64 %39, 1
  store i64 %inc10, i64* %i, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %40 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %40, i32 0, i32 2
  %41 = load i64, i64* %used, align 8
  %42 = load i64, i64* %i, align 8
  %cmp11 = icmp ult i64 %41, %42
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %43 = load i64, i64* %i, align 8
  %44 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used13 = getelementptr inbounds %struct.zahl, %struct.zahl* %44, i32 0, i32 2
  store i64 %43, i64* %used13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
