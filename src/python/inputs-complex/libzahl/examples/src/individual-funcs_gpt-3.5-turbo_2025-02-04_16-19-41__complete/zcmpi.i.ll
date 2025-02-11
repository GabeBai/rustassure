; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zcmpi.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zcmpi.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zcmpi(%struct.zahl* noundef %a, i64 noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
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
  %call = call i32 @zsignum(%struct.zahl* noundef %1)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call4 = call i32 @zzero(%struct.zahl* noundef %2)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot6 = xor i1 %tobool5, true
  %lnot8 = xor i1 %lnot6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %tobool11 = icmp ne i64 %conv10, 0
  br i1 %tobool11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end
  %3 = load i64, i64* %b.addr, align 8
  %cmp = icmp slt i64 %3, 0
  %lnot14 = xor i1 %cmp, true
  %lnot16 = xor i1 %lnot14, true
  %lnot.ext17 = zext i1 %lnot16 to i32
  %conv18 = sext i32 %lnot.ext17 to i64
  %tobool19 = icmp ne i64 %conv18, 0
  %4 = zext i1 %tobool19 to i64
  %cond = select i1 %tobool19, i32 1, i32 -1
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end
  %5 = load i64, i64* %b.addr, align 8
  %cmp21 = icmp slt i64 %5, 0
  %lnot23 = xor i1 %cmp21, true
  %lnot25 = xor i1 %lnot23, true
  %lnot.ext26 = zext i1 %lnot25 to i32
  %conv27 = sext i32 %lnot.ext26 to i64
  %tobool28 = icmp ne i64 %conv27, 0
  br i1 %tobool28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end20
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call30 = call i32 @zsignum(%struct.zahl* noundef %6)
  %cmp31 = icmp sgt i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then29
  store i32 1, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.then29
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end34
  %7 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 4
  %8 = load i64*, i64** %chars, align 8
  %9 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %9, i32 0, i32 2
  %10 = load i64, i64* %used, align 8
  %sub = sub i64 %10, 1
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %sub
  %11 = load i64, i64* %arrayidx, align 8
  %tobool35 = icmp ne i64 %11, 0
  %lnot36 = xor i1 %tobool35, true
  br i1 %lnot36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used38 = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 2
  %13 = load i64, i64* %used38, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %used38, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %14 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used39 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 2
  %15 = load i64, i64* %used39, align 8
  %cmp40 = icmp ugt i64 %15, 1
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %while.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %while.end
  %16 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars44 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 4
  %17 = load i64*, i64** %chars44, align 8
  %arrayidx45 = getelementptr inbounds i64, i64* %17, i64 0
  %18 = load i64, i64* %arrayidx45, align 8
  %19 = load i64, i64* %b.addr, align 8
  %sub46 = sub nsw i64 0, %19
  %cmp47 = icmp ugt i64 %18, %sub46
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end43
  br label %cond.end

cond.false:                                       ; preds = %if.end43
  %20 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars49 = getelementptr inbounds %struct.zahl, %struct.zahl* %20, i32 0, i32 4
  %21 = load i64*, i64** %chars49, align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %21, i64 0
  %22 = load i64, i64* %arrayidx50, align 8
  %23 = load i64, i64* %b.addr, align 8
  %sub51 = sub nsw i64 0, %23
  %cmp52 = icmp ult i64 %22, %sub51
  %conv53 = zext i1 %cmp52 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond54 = phi i32 [ -1, %cond.true ], [ %conv53, %cond.false ]
  store i32 %cond54, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end20
  %24 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call55 = call i32 @zsignum(%struct.zahl* noundef %24)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.else
  store i32 -1, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.else
  br label %while.cond60

while.cond60:                                     ; preds = %while.body68, %if.end59
  %25 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars61 = getelementptr inbounds %struct.zahl, %struct.zahl* %25, i32 0, i32 4
  %26 = load i64*, i64** %chars61, align 8
  %27 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used62 = getelementptr inbounds %struct.zahl, %struct.zahl* %27, i32 0, i32 2
  %28 = load i64, i64* %used62, align 8
  %sub63 = sub i64 %28, 1
  %arrayidx64 = getelementptr inbounds i64, i64* %26, i64 %sub63
  %29 = load i64, i64* %arrayidx64, align 8
  %tobool65 = icmp ne i64 %29, 0
  %lnot66 = xor i1 %tobool65, true
  br i1 %lnot66, label %while.body68, label %while.end71

while.body68:                                     ; preds = %while.cond60
  %30 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used69 = getelementptr inbounds %struct.zahl, %struct.zahl* %30, i32 0, i32 2
  %31 = load i64, i64* %used69, align 8
  %dec70 = add i64 %31, -1
  store i64 %dec70, i64* %used69, align 8
  br label %while.cond60, !llvm.loop !12

while.end71:                                      ; preds = %while.cond60
  %32 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used72 = getelementptr inbounds %struct.zahl, %struct.zahl* %32, i32 0, i32 2
  %33 = load i64, i64* %used72, align 8
  %cmp73 = icmp ugt i64 %33, 1
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %while.end71
  store i32 1, i32* %retval, align 4
  br label %return

if.end76:                                         ; preds = %while.end71
  %34 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars77 = getelementptr inbounds %struct.zahl, %struct.zahl* %34, i32 0, i32 4
  %35 = load i64*, i64** %chars77, align 8
  %arrayidx78 = getelementptr inbounds i64, i64* %35, i64 0
  %36 = load i64, i64* %arrayidx78, align 8
  %37 = load i64, i64* %b.addr, align 8
  %cmp79 = icmp ult i64 %36, %37
  br i1 %cmp79, label %cond.true81, label %cond.false82

cond.true81:                                      ; preds = %if.end76
  br label %cond.end87

cond.false82:                                     ; preds = %if.end76
  %38 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars83 = getelementptr inbounds %struct.zahl, %struct.zahl* %38, i32 0, i32 4
  %39 = load i64*, i64** %chars83, align 8
  %arrayidx84 = getelementptr inbounds i64, i64* %39, i64 0
  %40 = load i64, i64* %arrayidx84, align 8
  %41 = load i64, i64* %b.addr, align 8
  %cmp85 = icmp ugt i64 %40, %41
  %conv86 = zext i1 %cmp85 to i32
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false82, %cond.true81
  %cond88 = phi i32 [ -1, %cond.true81 ], [ %conv86, %cond.false82 ]
  store i32 %cond88, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end87, %if.then75, %if.then58, %cond.end, %if.then42, %if.then33, %if.then12, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

declare i32 @zsignum(%struct.zahl* noundef) #1

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
