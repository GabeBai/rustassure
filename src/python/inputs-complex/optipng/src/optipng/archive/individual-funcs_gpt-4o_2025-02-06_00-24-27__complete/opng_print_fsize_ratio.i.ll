; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_print_fsize_ratio.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_print_fsize_ratio.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_ulratio = type { i64, i64 }

@usr_printf = global void (i8*, ...)* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_print_fsize_ratio(i64 noundef %num, i64 noundef %denom) #0 {
entry:
  %num.addr = alloca i64, align 8
  %denom.addr = alloca i64, align 8
  %buffer = alloca [32 x i8], align 1
  %ratio = alloca %struct.opng_ulratio, align 8
  %result = alloca i32, align 4
  store i64 %num, i64* %num.addr, align 8
  store i64 %denom, i64* %denom.addr, align 8
  %0 = load i64, i64* %num.addr, align 8
  %num1 = getelementptr inbounds %struct.opng_ulratio, %struct.opng_ulratio* %ratio, i32 0, i32 0
  store i64 %0, i64* %num1, align 8
  %1 = load i64, i64* %denom.addr, align 8
  %denom2 = getelementptr inbounds %struct.opng_ulratio, %struct.opng_ulratio* %ratio, i32 0, i32 1
  store i64 %1, i64* %denom2, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buffer, i64 0, i64 0
  %call = call i32 @opng_ulratio_to_factor_string(i8* noundef %arraydecay, i64 noundef 32, %struct.opng_ulratio* noundef %ratio)
  store i32 %call, i32* %result, align 4
  %2 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %arraydecay3 = getelementptr inbounds [32 x i8], [32 x i8]* %buffer, i64 0, i64 0
  %3 = load i32, i32* %result, align 4
  %cmp = icmp sgt i32 %3, 0
  %4 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  call void (i8*, ...) %2(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %arraydecay3, i8* noundef %cond)
  ret void
}

declare i32 @opng_ulratio_to_factor_string(i8* noundef, i64 noundef, %struct.opng_ulratio* noundef) #1

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
