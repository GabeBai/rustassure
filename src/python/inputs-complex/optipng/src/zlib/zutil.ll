; ModuleID = 'zutil.c'
source_filename = "zutil.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [16 x i8] c"need dictionary\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"stream end\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"file error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"stream error\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"data error\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"insufficient memory\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"buffer error\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"incompatible version\00", align 1
@z_errmsg = constant [10 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)], align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"1.2.8-optipng\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @zlibVersion() #0 {
  ret i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @zlibCompileFlags() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = add i64 %2, 1
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = add i64 %6, 32
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = add i64 %8, 128
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = add i64 %10, 65536
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = add i64 %12, 131072
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  ret i64 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @zError(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub nsw i32 2, %3
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [10 x i8*], [10 x i8*]* @z_errmsg, i64 0, i64 %5
  %7 = load i8*, i8** %6, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define hidden i8* @zcalloc(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub i32 %10, %11
  %13 = load i32, i32* %5, align 4
  %14 = add i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %9, %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @malloc(i64 noundef %19) #3
  ret i8* %20
}

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define hidden void @zcfree(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %5)
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

declare void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
