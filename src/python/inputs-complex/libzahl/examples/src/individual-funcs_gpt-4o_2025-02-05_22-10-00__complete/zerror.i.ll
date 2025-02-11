; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zerror.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zerror.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@libzahl_error = external global i32, align 4
@.str = private unnamed_addr constant [36 x i8] c"indeterminate form: 0:th power of 0\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"indeterminate form: 0 divided by 0\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"undefined result: division by 0\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"argument must be non-negative\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zerror(i8** noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  %4 = load i32, i32* @libzahl_error, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i8**, i8*** %3, align 8
  %8 = icmp ne i8** %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, i32* @libzahl_error, align 4
  %11 = call i8* @"\01_strerror"(i32 noundef %10)
  %12 = load i8**, i8*** %3, align 8
  store i8* %11, i8** %12, align 8
  br label %13

13:                                               ; preds = %9, %6
  %14 = load i32, i32* @libzahl_error, align 4
  %15 = call i32* @__error()
  store i32 %14, i32* %15, align 4
  store i32 0, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load i8**, i8*** %3, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* @libzahl_error, align 4
  %21 = sub nsw i32 0, %20
  switch i32 %21, label %30 [
    i32 1, label %22
    i32 2, label %24
    i32 3, label %26
    i32 4, label %28
  ]

22:                                               ; preds = %19
  %23 = load i8**, i8*** %3, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  br label %31

24:                                               ; preds = %19
  %25 = load i8**, i8*** %3, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  br label %31

26:                                               ; preds = %19
  %27 = load i8**, i8*** %3, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8** %27, align 8
  br label %31

28:                                               ; preds = %19
  %29 = load i8**, i8*** %3, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %29, align 8
  br label %31

30:                                               ; preds = %19
  call void @abort() #3
  unreachable

31:                                               ; preds = %28, %26, %24, %22
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, i32* @libzahl_error, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare i8* @"\01_strerror"(i32 noundef) #1

declare i32* @__error() #1

; Function Attrs: cold noreturn
declare void @abort() #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn }

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
!9 = !{!"clang version 14.0.0"}
