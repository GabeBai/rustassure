; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zload.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zload.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @zload(%struct.zahl* noundef %a, i8* noundef %buffer) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %buffer.addr = alloca i8*, align 8
  %buf = alloca i8*, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  store i8* %0, i8** %buf, align 8
  %1 = load i8*, i8** %buf, align 8
  %2 = bitcast i8* %1 to i64*
  %3 = load i64, i64* %2, align 8
  %conv = trunc i64 %3 to i32
  %4 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %4, i32 0, i32 0
  store i32 %conv, i32* %sign, align 8
  %5 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 8
  store i8* %add.ptr, i8** %buf, align 8
  %6 = load i8*, i8** %buf, align 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %9, i32 0, i32 2
  store i64 %8, i64* %used, align 8
  %10 = load i8*, i8** %buf, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %10, i64 8
  store i8* %add.ptr1, i8** %buf, align 8
  %11 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign2 = getelementptr inbounds %struct.zahl, %struct.zahl* %11, i32 0, i32 0
  %12 = load i32, i32* %sign2, align 8
  %tobool = icmp ne i32 %12, 0
  %lnot = xor i1 %tobool, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv4 = sext i32 %lnot.ext to i64
  %tobool5 = icmp ne i64 %conv4, 0
  br i1 %tobool5, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %13 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %13, i32 0, i32 3
  %14 = load i64, i64* %alloced, align 8
  %15 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used6 = getelementptr inbounds %struct.zahl, %struct.zahl* %15, i32 0, i32 2
  %16 = load i64, i64* %used6, align 8
  %cmp = icmp ult i64 %14, %16
  br i1 %cmp, label %if.then8, label %if.end

if.then8:                                         ; preds = %do.body
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %18 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used9 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 2
  %19 = load i64, i64* %used9, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %17, i64 noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.then8, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %20 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %20, i32 0, i32 4
  %21 = load i64*, i64** %chars, align 8
  %22 = load i8*, i8** %buf, align 8
  %23 = bitcast i8* %22 to i64*
  %24 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used10 = getelementptr inbounds %struct.zahl, %struct.zahl* %24, i32 0, i32 2
  %25 = load i64, i64* %used10, align 8
  %call = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %21, i64* noundef %23, i64 noundef %25)
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry
  %26 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call12 = call i32 @zzero(%struct.zahl* noundef %26)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  %27 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used14 = getelementptr inbounds %struct.zahl, %struct.zahl* %27, i32 0, i32 2
  %28 = load i64, i64* %used14, align 8
  %add = add i64 %28, 3
  %and = and i64 %add, -4
  %mul = mul i64 %and, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %mul, %cond.false ]
  %add15 = add i64 16, %cond
  ret i64 %add15
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memcpy(...) #1

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
