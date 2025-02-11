; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsplit(%struct.zahl* noundef %high, %struct.zahl* noundef %low, %struct.zahl* noundef %a, i64 noundef %delim) #0 {
entry:
  %high.addr = alloca %struct.zahl*, align 8
  %low.addr = alloca %struct.zahl*, align 8
  %a.addr = alloca %struct.zahl*, align 8
  %delim.addr = alloca i64, align 8
  store %struct.zahl* %high, %struct.zahl** %high.addr, align 8
  store %struct.zahl* %low, %struct.zahl** %low.addr, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i64 %delim, i64* %delim.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %cmp = icmp eq %struct.zahl* %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %4 = load i64, i64* %delim.addr, align 8
  call void @ztrunc(%struct.zahl* noundef %2, %struct.zahl* noundef %3, i64 noundef %4)
  %5 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %7 = load i64, i64* %delim.addr, align 8
  call void @zrsh(%struct.zahl* noundef %5, %struct.zahl* noundef %6, i64 noundef %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.zahl*, %struct.zahl** %high.addr, align 8
  %9 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %10 = load i64, i64* %delim.addr, align 8
  call void @zrsh(%struct.zahl* noundef %8, %struct.zahl* noundef %9, i64 noundef %10)
  %11 = load %struct.zahl*, %struct.zahl** %low.addr, align 8
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %13 = load i64, i64* %delim.addr, align 8
  call void @ztrunc(%struct.zahl* noundef %11, %struct.zahl* noundef %12, i64 noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @ztrunc(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

declare void @zrsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

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
