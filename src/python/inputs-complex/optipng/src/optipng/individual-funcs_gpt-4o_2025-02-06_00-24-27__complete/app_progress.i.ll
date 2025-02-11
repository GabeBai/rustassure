; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_progress.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_progress.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@con_file = global %struct.__sFILE* null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @app_progress(i64 noundef %current_step, i64 noundef %total_steps) #0 {
entry:
  %current_step.addr = alloca i64, align 8
  %total_steps.addr = alloca i64, align 8
  store i64 %current_step, i64* %current_step.addr, align 8
  store i64 %total_steps, i64* %total_steps.addr, align 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %cmp = icmp ne %struct.__sFILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %call = call i32 @fflush(%struct.__sFILE* noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %current_step.addr, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %3 = load i64, i64* %total_steps.addr, align 8
  %tobool1 = icmp ne i64 %3, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  ret void
}

declare i32 @fflush(%struct.__sFILE* noundef) #1

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
