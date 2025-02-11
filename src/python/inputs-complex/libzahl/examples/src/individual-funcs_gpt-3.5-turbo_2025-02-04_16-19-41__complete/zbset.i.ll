; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbset.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbset.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zbset(%struct.zahl* noundef %a, %struct.zahl* noundef %b, i64 noundef %bit, i32 noundef %action) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %bit.addr = alloca i64, align 8
  %action.addr = alloca i32, align 4
  %mask = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store i64 %bit, i64* %bit.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  %0 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %1 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp = icmp ne %struct.zahl* %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %3 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zset(%struct.zahl* noundef %2, %struct.zahl* noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %action.addr, align 4
  %5 = call i1 @llvm.is.constant.i32(i32 %4)
  br i1 %5, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.end
  %6 = load i64, i64* %bit.addr, align 8
  %7 = call i1 @llvm.is.constant.i64(i64 %6)
  br i1 %7, label %if.then2, label %if.end41

if.then2:                                         ; preds = %land.lhs.true
  store i64 1, i64* %mask, align 8
  %8 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %8)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %9 = load i64, i64* %bit.addr, align 8
  %shr = lshr i64 %9, 6
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 2
  %11 = load i64, i64* %used, align 8
  %cmp4 = icmp uge i64 %shr, %11
  br i1 %cmp4, label %if.then6, label %if.end10

if.then6:                                         ; preds = %lor.lhs.false, %if.then2
  %12 = load i32, i32* %action.addr, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then6
  br label %if.end51

if.end9:                                          ; preds = %if.then6
  br label %fallback

if.end10:                                         ; preds = %lor.lhs.false
  %13 = load i64, i64* %bit.addr, align 8
  %and = and i64 %13, 63
  %14 = load i64, i64* %mask, align 8
  %shl = shl i64 %14, %and
  store i64 %shl, i64* %mask, align 8
  %15 = load i32, i32* %action.addr, align 4
  %cmp11 = icmp sgt i32 %15, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %16 = load i64, i64* %mask, align 8
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %17, i32 0, i32 4
  %18 = load i64*, i64** %chars, align 8
  %19 = load i64, i64* %bit.addr, align 8
  %shr14 = lshr i64 %19, 6
  %arrayidx = getelementptr inbounds i64, i64* %18, i64 %shr14
  %20 = load i64, i64* %arrayidx, align 8
  %or = or i64 %20, %16
  store i64 %or, i64* %arrayidx, align 8
  br label %if.end51

if.else:                                          ; preds = %if.end10
  %21 = load i32, i32* %action.addr, align 4
  %cmp15 = icmp slt i32 %21, 0
  br i1 %cmp15, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.else
  %22 = load i64, i64* %mask, align 8
  %23 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars18 = getelementptr inbounds %struct.zahl, %struct.zahl* %23, i32 0, i32 4
  %24 = load i64*, i64** %chars18, align 8
  %25 = load i64, i64* %bit.addr, align 8
  %shr19 = lshr i64 %25, 6
  %arrayidx20 = getelementptr inbounds i64, i64* %24, i64 %shr19
  %26 = load i64, i64* %arrayidx20, align 8
  %xor = xor i64 %26, %22
  store i64 %xor, i64* %arrayidx20, align 8
  br label %if.end26

if.else21:                                        ; preds = %if.else
  %27 = load i64, i64* %mask, align 8
  %neg = xor i64 %27, -1
  %28 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars22 = getelementptr inbounds %struct.zahl, %struct.zahl* %28, i32 0, i32 4
  %29 = load i64*, i64** %chars22, align 8
  %30 = load i64, i64* %bit.addr, align 8
  %shr23 = lshr i64 %30, 6
  %arrayidx24 = getelementptr inbounds i64, i64* %29, i64 %shr23
  %31 = load i64, i64* %arrayidx24, align 8
  %and25 = and i64 %31, %neg
  store i64 %and25, i64* %arrayidx24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else21, %if.then17
  br label %if.end27

if.end27:                                         ; preds = %if.end26
  br label %do.body

do.body:                                          ; preds = %if.end27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %32 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used28 = getelementptr inbounds %struct.zahl, %struct.zahl* %32, i32 0, i32 2
  %33 = load i64, i64* %used28, align 8
  %tobool29 = icmp ne i64 %33, 0
  br i1 %tobool29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %34 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars30 = getelementptr inbounds %struct.zahl, %struct.zahl* %34, i32 0, i32 4
  %35 = load i64*, i64** %chars30, align 8
  %36 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used31 = getelementptr inbounds %struct.zahl, %struct.zahl* %36, i32 0, i32 2
  %37 = load i64, i64* %used31, align 8
  %sub = sub i64 %37, 1
  %arrayidx32 = getelementptr inbounds i64, i64* %35, i64 %sub
  %38 = load i64, i64* %arrayidx32, align 8
  %tobool33 = icmp ne i64 %38, 0
  %lnot34 = xor i1 %tobool33, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %39 = phi i1 [ false, %for.cond ], [ %lnot34, %land.rhs ]
  br i1 %39, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used36 = getelementptr inbounds %struct.zahl, %struct.zahl* %40, i32 0, i32 2
  %41 = load i64, i64* %used36, align 8
  %dec = add i64 %41, -1
  store i64 %dec, i64* %used36, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %land.end
  %42 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used37 = getelementptr inbounds %struct.zahl, %struct.zahl* %42, i32 0, i32 2
  %43 = load i64, i64* %used37, align 8
  %tobool38 = icmp ne i64 %43, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %for.end
  %44 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %44, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end40
  br label %if.end51

if.end41:                                         ; preds = %land.lhs.true, %if.end
  br label %fallback

fallback:                                         ; preds = %if.end41, %if.end9
  %45 = load i32, i32* %action.addr, align 4
  %cmp42 = icmp sgt i32 %45, 0
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %fallback
  %46 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %47 = load i64, i64* %bit.addr, align 8
  call void @zbset_ll_set(%struct.zahl* noundef %46, i64 noundef %47)
  br label %if.end51

if.else45:                                        ; preds = %fallback
  %48 = load i32, i32* %action.addr, align 4
  %cmp46 = icmp slt i32 %48, 0
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else45
  %49 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %50 = load i64, i64* %bit.addr, align 8
  call void @zbset_ll_flip(%struct.zahl* noundef %49, i64 noundef %50)
  br label %if.end50

if.else49:                                        ; preds = %if.else45
  %51 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %52 = load i64, i64* %bit.addr, align 8
  call void @zbset_ll_clear(%struct.zahl* noundef %51, i64 noundef %52)
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then48
  br label %if.end51

if.end51:                                         ; preds = %if.then8, %if.then13, %do.end, %if.end50, %if.then44
  ret void
}

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

; Function Attrs: convergent nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #2

; Function Attrs: convergent nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #2

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zbset_ll_set(%struct.zahl* noundef, i64 noundef) #1

declare void @zbset_ll_flip(%struct.zahl* noundef, i64 noundef) #1

declare void @zbset_ll_clear(%struct.zahl* noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { convergent nofree nosync nounwind readnone willreturn }

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
