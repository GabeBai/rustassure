; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_print_fsize_difference.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_print_fsize_difference.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@usr_printf = global void (i8*, ...)* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"no change\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"1 byte\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%lu bytes\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" increase\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" decrease\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_print_fsize_difference(i64 noundef %init_size, i64 noundef %final_size, i32 noundef %show_ratio) #0 {
entry:
  %init_size.addr = alloca i64, align 8
  %final_size.addr = alloca i64, align 8
  %show_ratio.addr = alloca i32, align 4
  %difference = alloca i64, align 8
  %sign = alloca i32, align 4
  store i64 %init_size, i64* %init_size.addr, align 8
  store i64 %final_size, i64* %final_size.addr, align 8
  store i32 %show_ratio, i32* %show_ratio.addr, align 4
  %0 = load i64, i64* %init_size.addr, align 8
  %1 = load i64, i64* %final_size.addr, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %sign, align 4
  %2 = load i64, i64* %final_size.addr, align 8
  %3 = load i64, i64* %init_size.addr, align 8
  %sub = sub i64 %2, %3
  store i64 %sub, i64* %difference, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %sign, align 4
  %4 = load i64, i64* %init_size.addr, align 8
  %5 = load i64, i64* %final_size.addr, align 8
  %sub1 = sub i64 %4, %5
  store i64 %sub1, i64* %difference, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i64, i64* %difference, align 8
  %cmp2 = icmp eq i64 %6, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %7(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load i64, i64* %difference, align 8
  %cmp5 = icmp eq i64 %8, 1
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  %9 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %9(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  %10 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %11 = load i64, i64* %difference, align 8
  call void (i8*, ...) %10(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 noundef %11)
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then6
  %12 = load i32, i32* %show_ratio.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end8
  %13 = load i64, i64* %init_size.addr, align 8
  %cmp9 = icmp ugt i64 %13, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  %14 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %14(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i64, i64* %difference, align 8
  %16 = load i64, i64* %init_size.addr, align 8
  %call = call i32 bitcast (i32 (...)* @opng_print_fsize_ratio to i32 (i64, i64)*)(i64 noundef %15, i64 noundef %16)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %if.end8
  %17 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %18 = load i32, i32* %sign, align 4
  %cmp12 = icmp eq i32 %18, 0
  %19 = zext i1 %cmp12 to i64
  %cond = select i1 %cmp12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  call void (i8*, ...) %17(i8* noundef %cond)
  br label %return

return:                                           ; preds = %if.end11, %if.then3
  ret void
}

declare i32 @opng_print_fsize_ratio(...) #1

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
