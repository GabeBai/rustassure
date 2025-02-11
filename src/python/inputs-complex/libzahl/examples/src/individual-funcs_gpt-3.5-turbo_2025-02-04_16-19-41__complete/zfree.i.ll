; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zfree.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zfree.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_pool_n = external global [64 x i64], align 8
@libzahl_pool_alloc = external global [64 x i64], align 8
@libzahl_pool = external global [64 x i64**], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zfree(%struct.zahl* noundef %a) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %i = alloca i64, align 8
  %x = alloca i64, align 8
  %j = alloca i64, align 8
  %new = alloca i64**, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i32 0, i32 4
  %1 = load i64*, i64** %chars, align 8
  %tobool = icmp ne i64* %1, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool3 = icmp ne i64 %conv, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i32 0, i32 3
  %3 = load i64, i64* %alloced, align 8
  %4 = call i64 @llvm.ctlz.i64(i64 %3, i1 false)
  %cast = trunc i64 %4 to i32
  %conv4 = sext i32 %cast to i64
  %sub = sub i64 63, %conv4
  store i64 %sub, i64* %i, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %5
  %6 = load i64, i64* %arrayidx, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %arrayidx, align 8
  store i64 %6, i64* %j, align 8
  %7 = load i64, i64* %j, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx5 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_alloc, i64 0, i64 %8
  %9 = load i64, i64* %arrayidx5, align 8
  %cmp = icmp eq i64 %7, %9
  br i1 %cmp, label %if.then7, label %if.end29

if.then7:                                         ; preds = %if.end
  %10 = load i64, i64* %j, align 8
  %tobool8 = icmp ne i64 %10, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  %11 = load i64, i64* %j, align 8
  %mul = mul i64 %11, 3
  %shr = lshr i64 %mul, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr, %cond.true ], [ 128, %cond.false ]
  store i64 %cond, i64* %x, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx9 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %12
  %13 = load i64**, i64*** %arrayidx9, align 8
  %14 = bitcast i64** %13 to i8*
  %15 = load i64, i64* %x, align 8
  %mul10 = mul i64 %15, 8
  %call = call i8* @realloc(i8* noundef %14, i64 noundef %mul10) #4
  %16 = bitcast i8* %call to i64**
  store i64** %16, i64*** %new, align 8
  %17 = load i64**, i64*** %new, align 8
  %tobool11 = icmp ne i64** %17, null
  %lnot12 = xor i1 %tobool11, true
  %lnot14 = xor i1 %lnot12, true
  %lnot16 = xor i1 %lnot14, true
  %lnot.ext17 = zext i1 %lnot16 to i32
  %conv18 = sext i32 %lnot.ext17 to i64
  %tobool19 = icmp ne i64 %conv18, 0
  br i1 %tobool19, label %if.then20, label %if.end26

if.then20:                                        ; preds = %cond.end
  %18 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars21 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 4
  %19 = load i64*, i64** %chars21, align 8
  %20 = bitcast i64* %19 to i8*
  call void @free(i8* noundef %20)
  %21 = load i64, i64* %i, align 8
  %arrayidx22 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %21
  %22 = load i64**, i64*** %arrayidx22, align 8
  %23 = bitcast i64** %22 to i8*
  call void @free(i8* noundef %23)
  %24 = load i64, i64* %i, align 8
  %arrayidx23 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %24
  store i64 0, i64* %arrayidx23, align 8
  %25 = load i64, i64* %i, align 8
  %arrayidx24 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %25
  store i64** null, i64*** %arrayidx24, align 8
  %26 = load i64, i64* %i, align 8
  %arrayidx25 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_alloc, i64 0, i64 %26
  store i64 0, i64* %arrayidx25, align 8
  br label %return

if.end26:                                         ; preds = %cond.end
  %27 = load i64**, i64*** %new, align 8
  %28 = load i64, i64* %i, align 8
  %arrayidx27 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %28
  store i64** %27, i64*** %arrayidx27, align 8
  %29 = load i64, i64* %x, align 8
  %30 = load i64, i64* %i, align 8
  %arrayidx28 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_alloc, i64 0, i64 %30
  store i64 %29, i64* %arrayidx28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %if.end
  %31 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars30 = getelementptr inbounds %struct.zahl, %struct.zahl* %31, i32 0, i32 4
  %32 = load i64*, i64** %chars30, align 8
  %33 = load i64, i64* %i, align 8
  %arrayidx31 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %33
  %34 = load i64**, i64*** %arrayidx31, align 8
  %35 = load i64, i64* %j, align 8
  %arrayidx32 = getelementptr inbounds i64*, i64** %34, i64 %35
  store i64* %32, i64** %arrayidx32, align 8
  br label %return

return:                                           ; preds = %if.end29, %if.then20, %if.then
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: allocsize(1)
declare i8* @realloc(i8* noundef, i64 noundef) #2

declare void @free(i8* noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(1) }

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
