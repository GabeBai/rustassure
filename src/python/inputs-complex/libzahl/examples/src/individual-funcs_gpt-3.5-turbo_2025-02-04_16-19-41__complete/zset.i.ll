; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zset.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zset.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zset(%struct.zahl* noundef %a, %struct.zahl* noundef %b) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i32 0, i32 0
  %1 = load i32, i32* %sign, align 8
  %cmp = icmp eq i32 %1, 0
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign2 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i32 0, i32 0
  store i32 0, i32* %sign2, align 8
  br label %if.end13

if.else:                                          ; preds = %entry
  %3 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %sign3 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i32 0, i32 0
  %4 = load i32, i32* %sign3, align 8
  %5 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign4 = getelementptr inbounds %struct.zahl, %struct.zahl* %5, i32 0, i32 0
  store i32 %4, i32* %sign4, align 8
  %6 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %6, i32 0, i32 2
  %7 = load i64, i64* %used, align 8
  %8 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used5 = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 2
  store i64 %7, i64* %used5, align 8
  br label %do.body

do.body:                                          ; preds = %if.else
  %9 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %9, i32 0, i32 3
  %10 = load i64, i64* %alloced, align 8
  %11 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used6 = getelementptr inbounds %struct.zahl, %struct.zahl* %11, i32 0, i32 2
  %12 = load i64, i64* %used6, align 8
  %cmp7 = icmp ult i64 %10, %12
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %do.body
  %13 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %14 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used10 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 2
  %15 = load i64, i64* %used10, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %13, i64 noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then9, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %16 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 4
  %17 = load i64*, i64** %chars, align 8
  %18 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars11 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 4
  %19 = load i64*, i64** %chars11, align 8
  %20 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used12 = getelementptr inbounds %struct.zahl, %struct.zahl* %20, i32 0, i32 2
  %21 = load i64, i64* %used12, align 8
  %call = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %17, i64* noundef %19, i64 noundef %21)
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then
  ret void
}

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
