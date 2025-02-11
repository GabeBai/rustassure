; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbtest.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbtest.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zbtest(%struct.zahl* noundef %a, i64 noundef %bit) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.zahl*, align 8
  %bit.addr = alloca i64, align 8
  %chars = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i64 %bit, i64* %bit.addr, align 8
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
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %bit.addr, align 8
  %shr = lshr i64 %1, 6
  store i64 %shr, i64* %chars, align 8
  %2 = load i64, i64* %chars, align 8
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i32 0, i32 2
  %4 = load i64, i64* %used, align 8
  %cmp = icmp uge i64 %2, %4
  %lnot4 = xor i1 %cmp, true
  %lnot6 = xor i1 %lnot4, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  %conv8 = sext i32 %lnot.ext7 to i64
  %tobool9 = icmp ne i64 %conv8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %5 = load i64, i64* %bit.addr, align 8
  %and = and i64 %5, 63
  %6 = load i64, i64* %bit.addr, align 8
  %and12 = and i64 %6, %and
  store i64 %and12, i64* %bit.addr, align 8
  %7 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars13 = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 4
  %8 = load i64*, i64** %chars13, align 8
  %9 = load i64, i64* %chars, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %9
  %10 = load i64, i64* %arrayidx, align 8
  %11 = load i64, i64* %bit.addr, align 8
  %shr14 = lshr i64 %10, %11
  %and15 = and i64 %shr14, 1
  %conv16 = trunc i64 %and15 to i32
  store i32 %conv16, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare i32 @zzero(%struct.zahl* noundef) #1

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
