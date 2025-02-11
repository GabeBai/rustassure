; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsetu.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsetu.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsetu(%struct.zahl* noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %b.addr, align 8
  %tobool = icmp ne i64 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool3 = icmp ne i64 %conv, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i32 0, i32 3
  %3 = load i64, i64* %alloced, align 8
  %cmp = icmp ult i64 %3, 1
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.body
  %4 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %4, i64 noundef 1)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end6
  %5 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign7 = getelementptr inbounds %struct.zahl, %struct.zahl* %5, i32 0, i32 0
  store i32 1, i32* %sign7, align 8
  %6 = load i64, i64* %b.addr, align 8
  %7 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 4
  %8 = load i64*, i64** %chars, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 0
  store i64 %6, i64* %arrayidx, align 8
  %9 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %9, i32 0, i32 2
  store i64 1, i64* %used, align 8
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

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
