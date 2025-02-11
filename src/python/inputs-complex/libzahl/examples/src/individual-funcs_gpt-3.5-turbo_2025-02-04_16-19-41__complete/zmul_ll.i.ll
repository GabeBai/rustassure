; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmul_ll.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmul_ll.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zmul_ll(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %m = alloca i64, align 8
  %m2 = alloca i64, align 8
  %b_high = alloca [1 x %struct.zahl], align 8
  %b_low = alloca [1 x %struct.zahl], align 8
  %c_high = alloca [1 x %struct.zahl], align 8
  %c_low = alloca [1 x %struct.zahl], align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store %struct.zahl* %c, %struct.zahl** %c.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %1 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call = call i32 bitcast (i32 (...)* @zzero1 to i32 (%struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %0, %struct.zahl* noundef %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call3 = call i64 @zbits(%struct.zahl* noundef %3)
  store i64 %call3, i64* %m, align 8
  %4 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %5 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %cmp = icmp eq %struct.zahl* %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i64, i64* %m, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call5 = call i64 @zbits(%struct.zahl* noundef %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %call5, %cond.false ]
  store i64 %cond, i64* %m2, align 8
  %8 = load i64, i64* %m, align 8
  %9 = load i64, i64* %m2, align 8
  %add = add i64 %8, %9
  %cmp6 = icmp ule i64 %add, 64
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %cond.end
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %11 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %12 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call9 = call i32 bitcast (i32 (...)* @zmul_ll_single_char to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*)*)(%struct.zahl* noundef %10, %struct.zahl* noundef %11, %struct.zahl* noundef %12)
  br label %return

if.end10:                                         ; preds = %cond.end
  %13 = load i64, i64* %m, align 8
  %14 = load i64, i64* %m2, align 8
  %cmp11 = icmp ugt i64 %13, %14
  br i1 %cmp11, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %if.end10
  %15 = load i64, i64* %m, align 8
  br label %cond.end15

cond.false14:                                     ; preds = %if.end10
  %16 = load i64, i64* %m2, align 8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %cond16 = phi i64 [ %15, %cond.true13 ], [ %16, %cond.false14 ]
  store i64 %cond16, i64* %m, align 8
  %17 = load i64, i64* %m, align 8
  %shr = lshr i64 %17, 1
  store i64 %shr, i64* %m2, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_high, i64 0, i64 0
  %call17 = call i32 bitcast (i32 (...)* @zinit_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %arraydecay)
  %arraydecay18 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_low, i64 0, i64 0
  %call19 = call i32 bitcast (i32 (...)* @zinit_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %arraydecay18)
  %arraydecay20 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_high, i64 0, i64 0
  %call21 = call i32 bitcast (i32 (...)* @zinit_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %arraydecay20)
  %arraydecay22 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_low, i64 0, i64 0
  %call23 = call i32 bitcast (i32 (...)* @zinit_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %arraydecay22)
  %arraydecay24 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_high, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_low, i64 0, i64 0
  %18 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %19 = load i64, i64* %m2, align 8
  %call26 = call i32 bitcast (i32 (...)* @zsplit_pz to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %arraydecay24, %struct.zahl* noundef %arraydecay25, %struct.zahl* noundef %18, i64 noundef %19)
  %arraydecay27 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_high, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_low, i64 0, i64 0
  %20 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %21 = load i64, i64* %m2, align 8
  %call29 = call i32 bitcast (i32 (...)* @zsplit_pz to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %arraydecay27, %struct.zahl* noundef %arraydecay28, %struct.zahl* noundef %20, i64 noundef %21)
  %22 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %arraydecay30 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_low, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_low, i64 0, i64 0
  call void @zmul_ll(%struct.zahl* noundef %22, %struct.zahl* noundef %arraydecay30, %struct.zahl* noundef %arraydecay31)
  %arraydecay32 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_low, i64 0, i64 0
  %arraydecay33 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_high, i64 0, i64 0
  call void @zadd_unsigned_assign(%struct.zahl* noundef %arraydecay32, %struct.zahl* noundef %arraydecay33)
  %arraydecay34 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_low, i64 0, i64 0
  %arraydecay35 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_high, i64 0, i64 0
  call void @zadd_unsigned_assign(%struct.zahl* noundef %arraydecay34, %struct.zahl* noundef %arraydecay35)
  %arraydecay36 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_low, i64 0, i64 0
  %arraydecay37 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_low, i64 0, i64 0
  %arraydecay38 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_low, i64 0, i64 0
  call void @zmul_ll(%struct.zahl* noundef %arraydecay36, %struct.zahl* noundef %arraydecay37, %struct.zahl* noundef %arraydecay38)
  %arraydecay39 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_low, i64 0, i64 0
  %arraydecay40 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_high, i64 0, i64 0
  %arraydecay41 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_high, i64 0, i64 0
  call void @zmul_ll(%struct.zahl* noundef %arraydecay39, %struct.zahl* noundef %arraydecay40, %struct.zahl* noundef %arraydecay41)
  %arraydecay42 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_low, i64 0, i64 0
  %23 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zsub_nonnegative_assign(%struct.zahl* noundef %arraydecay42, %struct.zahl* noundef %23)
  %arraydecay43 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_low, i64 0, i64 0
  %arraydecay44 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_low, i64 0, i64 0
  call void @zsub_nonnegative_assign(%struct.zahl* noundef %arraydecay43, %struct.zahl* noundef %arraydecay44)
  %arraydecay45 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_low, i64 0, i64 0
  %arraydecay46 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_low, i64 0, i64 0
  %24 = load i64, i64* %m2, align 8
  call void @zlsh(%struct.zahl* noundef %arraydecay45, %struct.zahl* noundef %arraydecay46, i64 noundef %24)
  %25 = load i64, i64* %m2, align 8
  %shl = shl i64 %25, 1
  store i64 %shl, i64* %m2, align 8
  %arraydecay47 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_low, i64 0, i64 0
  %arraydecay48 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_low, i64 0, i64 0
  %26 = load i64, i64* %m2, align 8
  call void @zlsh(%struct.zahl* noundef %arraydecay47, %struct.zahl* noundef %arraydecay48, i64 noundef %26)
  %27 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %arraydecay49 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_low, i64 0, i64 0
  call void @zadd_unsigned_assign(%struct.zahl* noundef %27, %struct.zahl* noundef %arraydecay49)
  %28 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %arraydecay50 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_low, i64 0, i64 0
  call void @zadd_unsigned_assign(%struct.zahl* noundef %28, %struct.zahl* noundef %arraydecay50)
  %arraydecay51 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_low, i64 0, i64 0
  %call52 = call i32 bitcast (i32 (...)* @zfree_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %arraydecay51)
  %arraydecay53 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %c_high, i64 0, i64 0
  %call54 = call i32 bitcast (i32 (...)* @zfree_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %arraydecay53)
  %arraydecay55 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_low, i64 0, i64 0
  %call56 = call i32 bitcast (i32 (...)* @zfree_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %arraydecay55)
  %arraydecay57 = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %b_high, i64 0, i64 0
  %call58 = call i32 bitcast (i32 (...)* @zfree_temp to i32 (%struct.zahl*)*)(%struct.zahl* noundef %arraydecay57)
  br label %return

return:                                           ; preds = %cond.end15, %if.then8, %if.then
  ret void
}

declare i32 @zzero1(...) #1

declare i64 @zbits(%struct.zahl* noundef) #1

declare i32 @zmul_ll_single_char(...) #1

declare i32 @zinit_temp(...) #1

declare i32 @zsplit_pz(...) #1

declare void @zadd_unsigned_assign(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zsub_nonnegative_assign(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zlsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

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
