; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zinit_temp.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zinit_temp.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_temp_stack_head = external global %struct.zahl**, align 8
@libzahl_temp_stack_end = external global %struct.zahl**, align 8
@libzahl_temp_stack = external global %struct.zahl**, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zinit_temp(%struct.zahl* noundef %a) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %n = alloca i64, align 8
  %old = alloca i8*, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zinit(%struct.zahl* noundef %0)
  %1 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %2 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_end, align 8
  %cmp = icmp eq %struct.zahl** %1, %2
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %3 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_end, align 8
  %4 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.zahl** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.zahl** %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %n, align 8
  %5 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8
  %6 = bitcast %struct.zahl** %5 to i8*
  store i8* %6, i8** %old, align 8
  %7 = load i8*, i8** %old, align 8
  %8 = load i64, i64* %n, align 8
  %mul = mul i64 2, %8
  %mul2 = mul i64 %mul, 8
  %call = call i8* @realloc(i8* noundef %7, i64 noundef %mul2) #3
  %9 = bitcast i8* %call to %struct.zahl**
  store %struct.zahl** %9, %struct.zahl*** @libzahl_temp_stack, align 8
  %10 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8
  %tobool3 = icmp ne %struct.zahl** %10, null
  %lnot4 = xor i1 %tobool3, true
  %lnot6 = xor i1 %lnot4, true
  %lnot8 = xor i1 %lnot6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %tobool11 = icmp ne i64 %conv10, 0
  br i1 %tobool11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then
  %11 = load i8*, i8** %old, align 8
  %12 = bitcast i8* %11 to %struct.zahl**
  store %struct.zahl** %12, %struct.zahl*** @libzahl_temp_stack, align 8
  %call13 = call i32 bitcast (i32 (...)* @libzahl_memfailure to i32 ()*)()
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then
  %13 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8
  %14 = load i64, i64* %n, align 8
  %add.ptr = getelementptr inbounds %struct.zahl*, %struct.zahl** %13, i64 %14
  store %struct.zahl** %add.ptr, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %15 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %16 = load i64, i64* %n, align 8
  %add.ptr14 = getelementptr inbounds %struct.zahl*, %struct.zahl** %15, i64 %16
  store %struct.zahl** %add.ptr14, %struct.zahl*** @libzahl_temp_stack_end, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %18 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %incdec.ptr = getelementptr inbounds %struct.zahl*, %struct.zahl** %18, i32 1
  store %struct.zahl** %incdec.ptr, %struct.zahl*** @libzahl_temp_stack_head, align 8
  store %struct.zahl* %17, %struct.zahl** %18, align 8
  ret void
}

declare void @zinit(%struct.zahl* noundef) #1

; Function Attrs: allocsize(1)
declare i8* @realloc(i8* noundef, i64 noundef) #2

declare i32 @libzahl_memfailure(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(1) }

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
