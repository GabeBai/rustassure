; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zadd_unsigned_assign.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zadd_unsigned_assign.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zadd_unsigned_assign(%struct.zahl* noundef %a, %struct.zahl* noundef %b) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %size = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
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
  %2 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zabs(%struct.zahl* noundef %1, %struct.zahl* noundef %2)
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call3 = call i32 @zzero(%struct.zahl* noundef %3)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end
  %4 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %4, i32 0, i32 2
  %5 = load i64, i64* %used, align 8
  %6 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used13 = getelementptr inbounds %struct.zahl, %struct.zahl* %6, i32 0, i32 2
  %7 = load i64, i64* %used13, align 8
  %cmp = icmp ugt i64 %5, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end12
  %8 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used15 = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 2
  %9 = load i64, i64* %used15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  %10 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used16 = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 2
  %11 = load i64, i64* %used16, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %11, %cond.false ]
  store i64 %cond, i64* %size, align 8
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used17 = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 2
  %13 = load i64, i64* %used17, align 8
  %14 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used18 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 2
  %15 = load i64, i64* %used18, align 8
  %add = add i64 %13, %15
  %16 = load i64, i64* %size, align 8
  %sub = sub i64 %add, %16
  store i64 %sub, i64* %n, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %17, i32 0, i32 3
  %18 = load i64, i64* %alloced, align 8
  %19 = load i64, i64* %size, align 8
  %add19 = add i64 %19, 1
  %cmp20 = icmp ult i64 %18, %add19
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %do.body
  %20 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %21 = load i64, i64* %size, align 8
  %add23 = add i64 %21, 1
  call void @libzahl_realloc(%struct.zahl* noundef %20, i64 noundef %add23)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end24
  %22 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %22, i32 0, i32 4
  %23 = load i64*, i64** %chars, align 8
  %24 = load i64, i64* %size, align 8
  %arrayidx = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 0, i64* %arrayidx, align 8
  %25 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used25 = getelementptr inbounds %struct.zahl, %struct.zahl* %25, i32 0, i32 2
  %26 = load i64, i64* %used25, align 8
  %27 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used26 = getelementptr inbounds %struct.zahl, %struct.zahl* %27, i32 0, i32 2
  %28 = load i64, i64* %used26, align 8
  %cmp27 = icmp ult i64 %26, %28
  br i1 %cmp27, label %if.then29, label %if.end36

if.then29:                                        ; preds = %do.end
  %29 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used30 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 2
  %30 = load i64, i64* %used30, align 8
  store i64 %30, i64* %n, align 8
  %31 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars31 = getelementptr inbounds %struct.zahl, %struct.zahl* %31, i32 0, i32 4
  %32 = load i64*, i64** %chars31, align 8
  %33 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used32 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 2
  %34 = load i64, i64* %used32, align 8
  %add.ptr = getelementptr inbounds i64, i64* %32, i64 %34
  %35 = load i64, i64* %n, align 8
  %36 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used33 = getelementptr inbounds %struct.zahl, %struct.zahl* %36, i32 0, i32 2
  %37 = load i64, i64* %used33, align 8
  %sub34 = sub i64 %35, %37
  %call35 = call i32 bitcast (i32 (...)* @libzahl_memset to i32 (i64*, i32, i64)*)(i64* noundef %add.ptr, i32 noundef 0, i64 noundef %sub34)
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %do.end
  %38 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %39 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %40 = load i64, i64* %n, align 8
  %call37 = call i32 bitcast (i32 (...)* @zadd_impl_3 to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %38, %struct.zahl* noundef %39, i64 noundef %40)
  %41 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %41, i32 0, i32 0
  store i32 1, i32* %sign, align 8
  br label %return

return:                                           ; preds = %if.end36, %if.then11, %if.then
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memset(...) #1

declare i32 @zadd_impl_3(...) #1

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
