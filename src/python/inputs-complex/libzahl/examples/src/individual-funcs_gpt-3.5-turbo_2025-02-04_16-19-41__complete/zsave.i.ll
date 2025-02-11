; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsave.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsave.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @zsave(%struct.zahl* noundef %a, i8* noundef %buffer) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %buffer.addr = alloca i8*, align 8
  %buf = alloca i8*, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %tobool = icmp ne i8* %0, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end27

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buffer.addr, align 8
  store i8* %1, i8** %buf, align 8
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i32 0, i32 0
  %3 = load i32, i32* %sign, align 8
  %conv3 = sext i32 %3 to i64
  %4 = load i8*, i8** %buf, align 8
  %5 = bitcast i8* %4 to i64*
  store i64 %conv3, i64* %5, align 8
  %6 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  store i8* %add.ptr, i8** %buf, align 8
  %7 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %7, i32 0, i32 2
  %8 = load i64, i64* %used, align 8
  %9 = load i8*, i8** %buf, align 8
  %10 = bitcast i8* %9 to i64*
  store i64 %8, i64* %10, align 8
  %11 = load i8*, i8** %buf, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %11, i64 8
  store i8* %add.ptr4, i8** %buf, align 8
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %12)
  %tobool5 = icmp ne i32 %call, 0
  %lnot6 = xor i1 %tobool5, true
  %lnot8 = xor i1 %lnot6, true
  %lnot10 = xor i1 %lnot8, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  %conv12 = sext i32 %lnot.ext11 to i64
  %tobool13 = icmp ne i64 %conv12, 0
  br i1 %tobool13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then
  %13 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %13, i32 0, i32 4
  %14 = load i64*, i64** %chars, align 8
  %15 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used15 = getelementptr inbounds %struct.zahl, %struct.zahl* %15, i32 0, i32 2
  %16 = load i64, i64* %used15, align 8
  %add = add i64 %16, 2
  %arrayidx = getelementptr inbounds i64, i64* %14, i64 %add
  store i64 0, i64* %arrayidx, align 8
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars16 = getelementptr inbounds %struct.zahl, %struct.zahl* %17, i32 0, i32 4
  %18 = load i64*, i64** %chars16, align 8
  %19 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used17 = getelementptr inbounds %struct.zahl, %struct.zahl* %19, i32 0, i32 2
  %20 = load i64, i64* %used17, align 8
  %add18 = add i64 %20, 1
  %arrayidx19 = getelementptr inbounds i64, i64* %18, i64 %add18
  store i64 0, i64* %arrayidx19, align 8
  %21 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars20 = getelementptr inbounds %struct.zahl, %struct.zahl* %21, i32 0, i32 4
  %22 = load i64*, i64** %chars20, align 8
  %23 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used21 = getelementptr inbounds %struct.zahl, %struct.zahl* %23, i32 0, i32 2
  %24 = load i64, i64* %used21, align 8
  %add22 = add i64 %24, 0
  %arrayidx23 = getelementptr inbounds i64, i64* %22, i64 %add22
  store i64 0, i64* %arrayidx23, align 8
  %25 = load i8*, i8** %buf, align 8
  %26 = bitcast i8* %25 to i64*
  %27 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars24 = getelementptr inbounds %struct.zahl, %struct.zahl* %27, i32 0, i32 4
  %28 = load i64*, i64** %chars24, align 8
  %29 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used25 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 2
  %30 = load i64, i64* %used25, align 8
  %call26 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %26, i64* noundef %28, i64 noundef %30)
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then
  br label %if.end27

if.end27:                                         ; preds = %if.end, %entry
  %31 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call28 = call i32 @zzero(%struct.zahl* noundef %31)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end27
  br label %cond.end

cond.false:                                       ; preds = %if.end27
  %32 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used30 = getelementptr inbounds %struct.zahl, %struct.zahl* %32, i32 0, i32 2
  %33 = load i64, i64* %used30, align 8
  %add31 = add i64 %33, 3
  %and = and i64 %add31, -4
  %mul = mul i64 %and, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %mul, %cond.false ]
  %add32 = add i64 16, %cond
  ret i64 %add32
}

declare i32 @zzero(%struct.zahl* noundef) #1

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
