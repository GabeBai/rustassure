; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_ulratio_to_percent_string.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_ulratio_to_percent_string.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_ulratio = type { i64, i64 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_ulratio_to_percent_string(i8* noundef %buffer, i64 noundef %buffer_size, %struct.opng_ulratio* noundef %ratio) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i64, align 8
  %ratio.addr = alloca %struct.opng_ulratio*, align 8
  %num = alloca i64, align 8
  %denom = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store %struct.opng_ulratio* %ratio, %struct.opng_ulratio** %ratio.addr, align 8
  %0 = load %struct.opng_ulratio*, %struct.opng_ulratio** %ratio.addr, align 8
  %num1 = getelementptr inbounds %struct.opng_ulratio, %struct.opng_ulratio* %0, i32 0, i32 0
  %1 = load i64, i64* %num1, align 8
  store i64 %1, i64* %num, align 8
  %2 = load %struct.opng_ulratio*, %struct.opng_ulratio** %ratio.addr, align 8
  %denom2 = getelementptr inbounds %struct.opng_ulratio, %struct.opng_ulratio* %2, i32 0, i32 1
  %3 = load i64, i64* %denom2, align 8
  store i64 %3, i64* %denom, align 8
  %4 = load i8*, i8** %buffer.addr, align 8
  %5 = load i64, i64* %buffer_size.addr, align 8
  %6 = load i64, i64* %num, align 8
  %7 = load i64, i64* %denom, align 8
  %call = call i32 bitcast (i32 (...)* @opng_sprint_uratio_impl to i32 (i8*, i64, i64, i64, i32)*)(i8* noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef 1)
  ret i32 %call
}

declare i32 @opng_sprint_uratio_impl(...) #1

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
