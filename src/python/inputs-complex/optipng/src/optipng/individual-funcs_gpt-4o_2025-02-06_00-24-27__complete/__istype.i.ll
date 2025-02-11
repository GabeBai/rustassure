; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__istype.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__istype.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @__istype(i32 noundef %_c, i64 noundef %_f) #0 {
entry:
  %_c.addr = alloca i32, align 4
  %_f.addr = alloca i64, align 8
  store i32 %_c, i32* %_c.addr, align 4
  store i64 %_f, i64* %_f.addr, align 8
  %0 = load i32, i32* %_c.addr, align 4
  %call = call i32 bitcast (i32 (...)* @isascii to i32 (i32)*)(i32 noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %_c.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %conv = zext i32 %2 to i64
  %3 = load i64, i64* %_f.addr, align 8
  %and = and i64 %conv, %3
  %tobool1 = icmp ne i64 %and, 0
  %lnot = xor i1 %tobool1, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %_c.addr, align 4
  %5 = load i64, i64* %_f.addr, align 8
  %call3 = call i32 @__maskrune(i32 noundef %4, i64 noundef %5)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %lnot.ext, %cond.true ], [ %lnot.ext8, %cond.false ]
  ret i32 %cond
}

declare i32 @isascii(...) #1

declare i32 @__maskrune(i32 noundef, i64 noundef) #1

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
