; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_realloc.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_realloc.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_pool_n = external global [64 x i64], align 8
@libzahl_pool = external global [64 x i64**], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_realloc(%struct.zahl* noundef %a, i64 noundef %need) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %need.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %new_size = alloca i64, align 8
  %new = alloca i64*, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i64 %need, i64* %need.addr, align 8
  store i64 1, i64* %new_size, align 8
  %0 = load i64, i64* %need.addr, align 8
  %1 = call i64 @llvm.ctlz.i64(i64 %0, i1 false)
  %cast = trunc i64 %1 to i32
  %conv = sext i32 %cast to i64
  %sub = sub i64 63, %conv
  store i64 %sub, i64* %i, align 8
  %2 = load i64, i64* %new_size, align 8
  %shl = shl i64 %2, %sub
  store i64 %shl, i64* %new_size, align 8
  %3 = load i64, i64* %new_size, align 8
  %4 = load i64, i64* %need.addr, align 8
  %cmp = icmp ne i64 %3, %4
  %lnot = xor i1 %cmp, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv3 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %i, align 8
  %add = add i64 %5, 1
  store i64 %add, i64* %i, align 8
  %6 = load i64, i64* %new_size, align 8
  %shl4 = shl i64 %6, 1
  store i64 %shl4, i64* %new_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %7
  %8 = load i64, i64* %arrayidx, align 8
  %tobool5 = icmp ne i64 %8, 0
  %lnot6 = xor i1 %tobool5, true
  %lnot8 = xor i1 %lnot6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %tobool11 = icmp ne i64 %conv10, 0
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %9 = load i64, i64* %i, align 8
  %arrayidx13 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %9
  %10 = load i64, i64* %arrayidx13, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %arrayidx13, align 8
  %11 = load i64, i64* %i, align 8
  %arrayidx14 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %11
  %12 = load i64**, i64*** %arrayidx14, align 8
  %13 = load i64, i64* %i, align 8
  %arrayidx15 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %13
  %14 = load i64, i64* %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i64*, i64** %12, i64 %14
  %15 = load i64*, i64** %arrayidx16, align 8
  store i64* %15, i64** %new, align 8
  %16 = load i64*, i64** %new, align 8
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %17, i32 0, i32 4
  %18 = load i64*, i64** %chars, align 8
  %19 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %19, i32 0, i32 3
  %20 = load i64, i64* %alloced, align 8
  %call = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %16, i64* noundef %18, i64 noundef %20)
  %21 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zfree(%struct.zahl* noundef %21)
  %22 = load i64*, i64** %new, align 8
  %23 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars17 = getelementptr inbounds %struct.zahl, %struct.zahl* %23, i32 0, i32 4
  store i64* %22, i64** %chars17, align 8
  br label %if.end35

if.else:                                          ; preds = %if.end
  %24 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars18 = getelementptr inbounds %struct.zahl, %struct.zahl* %24, i32 0, i32 4
  %25 = load i64*, i64** %chars18, align 8
  %26 = bitcast i64* %25 to i8*
  %27 = load i64, i64* %new_size, align 8
  %add19 = add i64 %27, 4
  %mul = mul i64 %add19, 8
  %call20 = call i8* @realloc(i8* noundef %26, i64 noundef %mul) #4
  %28 = bitcast i8* %call20 to i64*
  %29 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars21 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 4
  store i64* %28, i64** %chars21, align 8
  %30 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars22 = getelementptr inbounds %struct.zahl, %struct.zahl* %30, i32 0, i32 4
  %31 = load i64*, i64** %chars22, align 8
  %tobool23 = icmp ne i64* %31, null
  %lnot24 = xor i1 %tobool23, true
  %lnot26 = xor i1 %lnot24, true
  %lnot28 = xor i1 %lnot26, true
  %lnot.ext29 = zext i1 %lnot28 to i32
  %conv30 = sext i32 %lnot.ext29 to i64
  %tobool31 = icmp ne i64 %conv30, 0
  br i1 %tobool31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.else
  %call33 = call i32 bitcast (i32 (...)* @libzahl_memfailure to i32 ()*)()
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then12
  %32 = load i64, i64* %new_size, align 8
  %33 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced36 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 3
  store i64 %32, i64* %alloced36, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

declare i32 @libzahl_memcpy(...) #2

declare void @zfree(%struct.zahl* noundef) #2

; Function Attrs: allocsize(1)
declare i8* @realloc(i8* noundef, i64 noundef) #3

declare i32 @libzahl_memfailure(...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
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
