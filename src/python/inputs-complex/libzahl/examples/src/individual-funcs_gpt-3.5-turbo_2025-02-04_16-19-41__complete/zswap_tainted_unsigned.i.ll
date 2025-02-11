; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zswap_tainted_unsigned.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zswap_tainted_unsigned.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zswap_tainted_unsigned(%struct.zahl* noundef %a, %struct.zahl* noundef %b) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %t = alloca [1 x %struct.zahl], align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i32 0, i32 2
  %1 = load i64, i64* %used, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %t, i64 0, i64 0
  %used1 = getelementptr inbounds %struct.zahl, %struct.zahl* %arraydecay, i32 0, i32 2
  store i64 %1, i64* %used1, align 8
  %2 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used2 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i32 0, i32 2
  %3 = load i64, i64* %used2, align 8
  %4 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used3 = getelementptr inbounds %struct.zahl, %struct.zahl* %4, i32 0, i32 2
  store i64 %3, i64* %used3, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %t, i64 0, i64 0
  %used5 = getelementptr inbounds %struct.zahl, %struct.zahl* %arraydecay4, i32 0, i32 2
  %5 = load i64, i64* %used5, align 8
  %6 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used6 = getelementptr inbounds %struct.zahl, %struct.zahl* %6, i32 0, i32 2
  store i64 %5, i64* %used6, align 8
  %7 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 4
  %8 = load i64*, i64** %chars, align 8
  %arraydecay7 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %t, i64 0, i64 0
  %chars8 = getelementptr inbounds %struct.zahl, %struct.zahl* %arraydecay7, i32 0, i32 4
  store i64* %8, i64** %chars8, align 8
  %9 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars9 = getelementptr inbounds %struct.zahl, %struct.zahl* %9, i32 0, i32 4
  %10 = load i64*, i64** %chars9, align 8
  %11 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars10 = getelementptr inbounds %struct.zahl, %struct.zahl* %11, i32 0, i32 4
  store i64* %10, i64** %chars10, align 8
  %arraydecay11 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %t, i64 0, i64 0
  %chars12 = getelementptr inbounds %struct.zahl, %struct.zahl* %arraydecay11, i32 0, i32 4
  %12 = load i64*, i64** %chars12, align 8
  %13 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars13 = getelementptr inbounds %struct.zahl, %struct.zahl* %13, i32 0, i32 4
  store i64* %12, i64** %chars13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
