; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsub_nonnegative_assign.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsub_nonnegative_assign.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsub_nonnegative_assign(%struct.zahl* noundef %a, %struct.zahl* noundef %b) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zabs(%struct.zahl* noundef %1, %struct.zahl* noundef %2)
  br label %if.end16

if.else:                                          ; preds = %entry
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %4 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call3 = call i32 @zcmpmag(%struct.zahl* noundef %3, %struct.zahl* noundef %4)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %tobool12 = icmp ne i64 %conv11, 0
  br i1 %tobool12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else
  %5 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %5, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %if.end

if.else14:                                        ; preds = %if.else
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %7 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %8 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 2
  %9 = load i64, i64* %used, align 8
  %call15 = call i32 bitcast (i32 (...)* @zsub_impl to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %6, %struct.zahl* noundef %7, i64 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then13
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsub_impl(...) #1

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
