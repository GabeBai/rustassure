; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsqr_ll.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsqr_ll.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsqr_ll(%struct.zahl* noundef %a, %struct.zahl* noundef %b) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %z0 = alloca [1 x %struct.zahl], align 8
  %z1 = alloca [1 x %struct.zahl], align 8
  %high = alloca [1 x %struct.zahl], align 8
  %low = alloca [1 x %struct.zahl], align 8
  %auxchars = alloca [12 x i64], align 8
  %bits = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call = call i64 @zbits(%struct.zahl* noundef %0)
  store i64 %call, i64* %bits, align 8
  %1 = load i64, i64* %bits, align 8
  %cmp = icmp ule i64 %1, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %3 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call1 = call i32 bitcast (i32 (...)* @zsqr_ll_single_char to i32 (%struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %2, %struct.zahl* noundef %3)
  br label %if.end41

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %bits, align 8
  %shr = lshr i64 %4, 1
  store i64 %shr, i64* %bits, align 8
  %5 = load i64, i64* %bits, align 8
  %cmp2 = icmp ult i64 %5, 64
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %auxchars, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %low, i64 0, i64 0
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %arraydecay4, i32 0, i32 4
  store i64* %arraydecay, i64** %chars, align 8
  %arraydecay5 = getelementptr inbounds [12 x i64], [12 x i64]* %auxchars, i64 0, i64 0
  %add.ptr = getelementptr inbounds i64, i64* %arraydecay5, i64 4
  %arraydecay6 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %high, i64 0, i64 0
  %chars7 = getelementptr inbounds %struct.zahl, %struct.zahl* %arraydecay6, i32 0, i32 4
  store i64* %add.ptr, i64** %chars7, align 8
  %arraydecay8 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %high, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %low, i64 0, i64 0
  %6 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %7 = load i64, i64* %bits, align 8
  %call10 = call i32 bitcast (i32 (...)* @zsplit_unsigned_fast_small_auto to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %arraydecay8, %struct.zahl* noundef %arraydecay9, %struct.zahl* noundef %6, i64 noundef %7)
  br label %if.end14

if.else:                                          ; preds = %if.end
  %8 = load i64, i64* %bits, align 8
  %and = and i64 %8, -64
  store i64 %and, i64* %bits, align 8
  %arraydecay11 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %high, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %low, i64 0, i64 0
  %9 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %10 = load i64, i64* %bits, align 8
  %call13 = call i32 bitcast (i32 (...)* @zsplit_unsigned_fast_large_taint to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %arraydecay11, %struct.zahl* noundef %arraydecay12, %struct.zahl* noundef %9, i64 noundef %10)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then3
  %arraydecay15 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %low, i64 0, i64 0
  %call16 = call i32 @zzero(%struct.zahl* noundef %arraydecay15)
  %tobool = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool, true
  %lnot17 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot17 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool18 = icmp ne i64 %conv, 0
  br i1 %tobool18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.end14
  %11 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %arraydecay20 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %high, i64 0, i64 0
  call void @zsqr_ll(%struct.zahl* noundef %11, %struct.zahl* noundef %arraydecay20)
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %13 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %14 = load i64, i64* %bits, align 8
  %shl = shl i64 %14, 1
  call void @zlsh(%struct.zahl* noundef %12, %struct.zahl* noundef %13, i64 noundef %shl)
  br label %if.end41

if.else21:                                        ; preds = %if.end14
  %arraydecay22 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %z0, i64 0, i64 0
  %call23 = call i32 bitcast (i32 (...)* @zinit_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %arraydecay22)
  %arraydecay24 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %z1, i64 0, i64 0
  %call25 = call i32 bitcast (i32 (...)* @zinit_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %arraydecay24)
  %arraydecay26 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %z0, i64 0, i64 0
  %arraydecay27 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %low, i64 0, i64 0
  call void @zsqr_ll(%struct.zahl* noundef %arraydecay26, %struct.zahl* noundef %arraydecay27)
  %arraydecay28 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %z1, i64 0, i64 0
  %arraydecay29 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %low, i64 0, i64 0
  %arraydecay30 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %high, i64 0, i64 0
  call void @zmul_ll(%struct.zahl* noundef %arraydecay28, %struct.zahl* noundef %arraydecay29, %struct.zahl* noundef %arraydecay30)
  %arraydecay31 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %z1, i64 0, i64 0
  %arraydecay32 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %z1, i64 0, i64 0
  %15 = load i64, i64* %bits, align 8
  %add = add i64 %15, 1
  call void @zlsh(%struct.zahl* noundef %arraydecay31, %struct.zahl* noundef %arraydecay32, i64 noundef %add)
  %16 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %arraydecay33 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %high, i64 0, i64 0
  call void @zsqr_ll(%struct.zahl* noundef %16, %struct.zahl* noundef %arraydecay33)
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %18 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %19 = load i64, i64* %bits, align 8
  %shl34 = shl i64 %19, 1
  call void @zlsh(%struct.zahl* noundef %17, %struct.zahl* noundef %18, i64 noundef %shl34)
  %20 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %arraydecay35 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %z1, i64 0, i64 0
  call void @zadd_unsigned_assign(%struct.zahl* noundef %20, %struct.zahl* noundef %arraydecay35)
  %21 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %arraydecay36 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %z0, i64 0, i64 0
  call void @zadd_unsigned_assign(%struct.zahl* noundef %21, %struct.zahl* noundef %arraydecay36)
  %arraydecay37 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %z1, i64 0, i64 0
  %call38 = call i32 bitcast (i32 (...)* @zfree_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %arraydecay37)
  %arraydecay39 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %z0, i64 0, i64 0
  %call40 = call i32 bitcast (i32 (...)* @zfree_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %arraydecay39)
  br label %if.end41

if.end41:                                         ; preds = %if.then, %if.else21, %if.then19
  ret void
}

declare i64 @zbits(%struct.zahl* noundef) #1

declare i32 @zsqr_ll_single_char(...) #1

declare i32 @zsplit_unsigned_fast_small_auto(...) #1

declare i32 @zsplit_unsigned_fast_large_taint(...) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zlsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

declare i32 @zinit_temp(...) #1

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zadd_unsigned_assign(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zfree_temp(...) #1

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
