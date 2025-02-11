; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbits.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbits.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @zbits(%struct.zahl* noundef %a) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca %struct.zahl*, align 8
  %rc = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
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
  store i64 1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i32 0, i32 4
  %2 = load i64*, i64** %chars, align 8
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i32 0, i32 2
  %4 = load i64, i64* %used, align 8
  %sub = sub i64 %4, 1
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %sub
  %5 = load i64, i64* %arrayidx, align 8
  %tobool3 = icmp ne i64 %5, 0
  %lnot4 = xor i1 %tobool3, true
  br i1 %lnot4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used6 = getelementptr inbounds %struct.zahl, %struct.zahl* %6, i32 0, i32 2
  %7 = load i64, i64* %used6, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %used6, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %8 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used7 = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 2
  %9 = load i64, i64* %used7, align 8
  %mul = mul i64 %9, 8
  %mul8 = mul i64 %mul, 8
  store i64 %mul8, i64* %rc, align 8
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars9 = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 4
  %11 = load i64*, i64** %chars9, align 8
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used10 = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 2
  %13 = load i64, i64* %used10, align 8
  %sub11 = sub i64 %13, 1
  %arrayidx12 = getelementptr inbounds i64, i64* %11, i64 %sub11
  %14 = load i64, i64* %arrayidx12, align 8
  %15 = call i64 @llvm.ctlz.i64(i64 %14, i1 false)
  %cast = trunc i64 %15 to i32
  %conv13 = sext i32 %cast to i64
  %16 = load i64, i64* %rc, align 8
  %sub14 = sub i64 %16, %conv13
  store i64 %sub14, i64* %rc, align 8
  %17 = load i64, i64* %rc, align 8
  store i64 %17, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %18 = load i64, i64* %retval, align 8
  ret i64 %18
}

declare i32 @zzero(%struct.zahl* noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

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
