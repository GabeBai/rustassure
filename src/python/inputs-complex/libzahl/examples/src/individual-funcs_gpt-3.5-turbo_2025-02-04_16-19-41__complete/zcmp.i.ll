; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zcmp.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zcmp.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zcmp(%struct.zahl* noundef %a, %struct.zahl* noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call = call i32 @zsignum(%struct.zahl* noundef %0)
  %1 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call1 = call i32 @zsignum(%struct.zahl* noundef %1)
  %cmp = icmp ne i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call2 = call i32 @zsignum(%struct.zahl* noundef %2)
  %3 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call3 = call i32 @zsignum(%struct.zahl* noundef %3)
  %cmp4 = icmp slt i32 %call2, %call3
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %4 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call5 = call i32 @zsignum(%struct.zahl* noundef %4)
  %5 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call6 = call i32 @zsignum(%struct.zahl* noundef %5)
  %cmp7 = icmp sgt i32 %call5, %call6
  %conv = zext i1 %cmp7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call8 = call i32 @zsignum(%struct.zahl* noundef %6)
  %7 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %8 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call9 = call i32 @zcmpmag(%struct.zahl* noundef %7, %struct.zahl* noundef %8)
  %mul = mul nsw i32 %call8, %call9
  store i32 %mul, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %cond.end
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

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
