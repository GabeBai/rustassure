; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zstr_length.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zstr_length.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_str_num = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_mag = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_div = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @zstr_length(%struct.zahl* noundef %a, i64 noundef %radix) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %radix.addr = alloca i64, align 8
  %size_total = alloca i64, align 8
  %size_temp = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i64 %radix, i64* %radix.addr, align 8
  store i64 1, i64* %size_total, align 8
  %0 = load i64, i64* %radix.addr, align 8
  %cmp = icmp ult i64 %0, 2
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef %1)
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %call2 = call i32 @zzero(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0))
  %tobool3 = icmp ne i32 %call2, 0
  %lnot4 = xor i1 %tobool3, true
  br i1 %lnot4, label %while.body, label %while.end11

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %radix.addr, align 8
  call void @zsetu(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0), i64 noundef %2)
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0))
  store i64 1, i64* %size_temp, align 8
  br label %while.cond6

while.cond6:                                      ; preds = %while.body10, %while.body
  %call7 = call i32 @zcmpmag(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0))
  %cmp8 = icmp sle i32 %call7, 0
  br i1 %cmp8, label %while.body10, label %while.end

while.body10:                                     ; preds = %while.cond6
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0))
  call void @zsqr(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0))
  %3 = load i64, i64* %size_temp, align 8
  %shl = shl i64 %3, 1
  store i64 %shl, i64* %size_temp, align 8
  br label %while.cond6, !llvm.loop !10

while.end:                                        ; preds = %while.cond6
  %4 = load i64, i64* %size_temp, align 8
  %shr = lshr i64 %4, 1
  store i64 %shr, i64* %size_temp, align 8
  %5 = load i64, i64* %size_temp, align 8
  %6 = load i64, i64* %size_total, align 8
  %add = add i64 %6, %5
  store i64 %add, i64* %size_total, align 8
  call void @zdiv(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0))
  br label %while.cond, !llvm.loop !12

while.end11:                                      ; preds = %while.cond
  %7 = load i64, i64* %size_total, align 8
  %8 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call12 = call i32 @zsignum(%struct.zahl* noundef %8)
  %cmp13 = icmp slt i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %conv15 = sext i32 %conv14 to i64
  %add16 = add i64 %7, %conv15
  ret i64 %add16
}

declare i32 @libzahl_failure(...) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zsetu(%struct.zahl* noundef, i64 noundef) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zsqr(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zdiv(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

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
