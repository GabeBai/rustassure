; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmodsqr.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmodsqr.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_modsqr = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zmodsqr(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store %struct.zahl* %c, %struct.zahl** %c.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %1 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %cmp = icmp eq %struct.zahl* %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modsqr, i64 0, i64 0), %struct.zahl* noundef %2)
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %4 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zsqr(%struct.zahl* noundef %3, %struct.zahl* noundef %4)
  %5 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zmod(%struct.zahl* noundef %5, %struct.zahl* noundef %6, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modsqr, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %8 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zsqr(%struct.zahl* noundef %7, %struct.zahl* noundef %8)
  %9 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %11 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zmod(%struct.zahl* noundef %9, %struct.zahl* noundef %10, %struct.zahl* noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zsqr(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmod(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
