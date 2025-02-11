; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmul.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmul.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zmul(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %b_sign = alloca i32, align 4
  %c_sign = alloca i32, align 4
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store %struct.zahl* %c, %struct.zahl** %c.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i32 0, i32 0
  %1 = load i32, i32* %sign, align 8
  store i32 %1, i32* %b_sign, align 4
  %2 = load i32, i32* %b_sign, align 4
  %3 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %sign1 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i32 0, i32 0
  %4 = load i32, i32* %sign1, align 8
  %mul = mul nsw i32 %4, %2
  store i32 %mul, i32* %sign1, align 8
  %5 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %sign2 = getelementptr inbounds %struct.zahl, %struct.zahl* %5, i32 0, i32 0
  %6 = load i32, i32* %sign2, align 8
  store i32 %6, i32* %c_sign, align 4
  %7 = load i32, i32* %c_sign, align 4
  %8 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %sign3 = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 0
  %9 = load i32, i32* %sign3, align 8
  %mul4 = mul nsw i32 %9, %7
  store i32 %mul4, i32* %sign3, align 8
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %11 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %12 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zmul_ll(%struct.zahl* noundef %10, %struct.zahl* noundef %11, %struct.zahl* noundef %12)
  %13 = load i32, i32* %c_sign, align 4
  %14 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %sign5 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 0
  store i32 %13, i32* %sign5, align 8
  %15 = load i32, i32* %b_sign, align 4
  %16 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %sign6 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 0
  store i32 %15, i32* %sign6, align 8
  %17 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call = call i32 @zsignum(%struct.zahl* noundef %17)
  %18 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call7 = call i32 @zsignum(%struct.zahl* noundef %18)
  %mul8 = mul nsw i32 %call, %call7
  %19 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign9 = getelementptr inbounds %struct.zahl, %struct.zahl* %19, i32 0, i32 0
  store i32 %mul8, i32* %sign9, align 8
  ret void
}

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

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
