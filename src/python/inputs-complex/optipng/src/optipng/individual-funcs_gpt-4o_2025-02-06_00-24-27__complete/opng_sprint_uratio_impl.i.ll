; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_sprint_uratio_impl.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_sprint_uratio_impl.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c"??%%\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"INFTY%%\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%u.%02u%%\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%llu%02u%%\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%llu.%02ux\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%llux\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_sprint_uratio_impl(i8* noundef %buffer, i64 noundef %buffer_size, i64 noundef %num, i64 noundef %denom, i32 noundef %always_percent) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %denom.addr = alloca i64, align 8
  %always_percent.addr = alloca i32, align 4
  %integer_part = alloca i64, align 8
  %remainder = alloca i64, align 8
  %fractional_part = alloca i32, align 4
  %scale = alloca i32, align 4
  %scaled_ratio = alloca double, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i64 %num, i64* %num.addr, align 8
  store i64 %denom, i64* %denom.addr, align 8
  store i32 %always_percent, i32* %always_percent.addr, align 4
  %0 = load i64, i64* %denom.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buffer.addr, align 8
  %2 = load i64, i64* %buffer_size.addr, align 8
  %3 = load i64, i64* %num.addr, align 8
  %cmp1 = icmp eq i64 %3, 0
  %4 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %call = call i32 bitcast (i32 (...)* @opng_snprintf_impl to i32 (i8*, i64, i8*)*)(i8* noundef %1, i64 noundef %2, i8* noundef %cond)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %num.addr, align 8
  %6 = load i64, i64* %denom.addr, align 8
  %cmp2 = icmp ult i64 %5, %6
  br i1 %cmp2, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, i64* %denom.addr, align 8
  %8 = load i64, i64* %denom.addr, align 8
  %9 = load i64, i64* %num.addr, align 8
  %sub = sub i64 %8, %9
  %div = udiv i64 %7, %sub
  %cmp3 = icmp ult i64 %div, 20000
  br i1 %cmp3, label %if.then4, label %if.end16

if.then4:                                         ; preds = %land.lhs.true
  store i32 10000, i32* %scale, align 4
  %10 = load i64, i64* %num.addr, align 8
  %conv = uitofp i64 %10 to double
  %11 = load i32, i32* %scale, align 4
  %conv5 = uitofp i32 %11 to double
  %mul = fmul double %conv, %conv5
  %12 = load i64, i64* %denom.addr, align 8
  %conv6 = uitofp i64 %12 to double
  %div7 = fdiv double %mul, %conv6
  store double %div7, double* %scaled_ratio, align 8
  %13 = load double, double* %scaled_ratio, align 8
  %add = fadd double %13, 5.000000e-01
  %conv8 = fptoui double %add to i32
  store i32 %conv8, i32* %fractional_part, align 4
  %14 = load i32, i32* %fractional_part, align 4
  %15 = load i32, i32* %scale, align 4
  %cmp9 = icmp uge i32 %14, %15
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then4
  %16 = load i32, i32* %scale, align 4
  %sub12 = sub i32 %16, 1
  store i32 %sub12, i32* %fractional_part, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then4
  %17 = load i8*, i8** %buffer.addr, align 8
  %18 = load i64, i64* %buffer_size.addr, align 8
  %19 = load i32, i32* %fractional_part, align 4
  %div14 = udiv i32 %19, 100
  %20 = load i32, i32* %fractional_part, align 4
  %rem = urem i32 %20, 100
  %call15 = call i32 bitcast (i32 (...)* @opng_snprintf_impl to i32 (i8*, i64, i8*, i32, i32)*)(i8* noundef %17, i64 noundef %18, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef %div14, i32 noundef %rem)
  store i32 %call15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true, %if.end
  %21 = load i64, i64* %num.addr, align 8
  %22 = load i64, i64* %denom.addr, align 8
  %div17 = udiv i64 %21, %22
  store i64 %div17, i64* %integer_part, align 8
  %23 = load i64, i64* %num.addr, align 8
  %24 = load i64, i64* %denom.addr, align 8
  %rem18 = urem i64 %23, %24
  store i64 %rem18, i64* %remainder, align 8
  store i32 100, i32* %scale, align 4
  %25 = load i64, i64* %remainder, align 8
  %conv19 = uitofp i64 %25 to double
  %26 = load i32, i32* %scale, align 4
  %conv20 = uitofp i32 %26 to double
  %mul21 = fmul double %conv19, %conv20
  %27 = load i64, i64* %denom.addr, align 8
  %conv22 = uitofp i64 %27 to double
  %div23 = fdiv double %mul21, %conv22
  store double %div23, double* %scaled_ratio, align 8
  %28 = load double, double* %scaled_ratio, align 8
  %add24 = fadd double %28, 5.000000e-01
  %conv25 = fptoui double %add24 to i32
  store i32 %conv25, i32* %fractional_part, align 4
  %29 = load i32, i32* %fractional_part, align 4
  %30 = load i32, i32* %scale, align 4
  %cmp26 = icmp uge i32 %29, %30
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end16
  store i32 0, i32* %fractional_part, align 4
  %31 = load i64, i64* %integer_part, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %integer_part, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end16
  %32 = load i32, i32* %always_percent.addr, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end29
  %33 = load i8*, i8** %buffer.addr, align 8
  %34 = load i64, i64* %buffer_size.addr, align 8
  %35 = load i64, i64* %integer_part, align 8
  %36 = load i32, i32* %fractional_part, align 4
  %call31 = call i32 bitcast (i32 (...)* @opng_snprintf_impl to i32 (i8*, i64, i8*, i64, i32)*)(i8* noundef %33, i64 noundef %34, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 noundef %35, i32 noundef %36)
  store i32 %call31, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end29
  %37 = load i64, i64* %integer_part, align 8
  %cmp33 = icmp ult i64 %37, 100
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  %38 = load i8*, i8** %buffer.addr, align 8
  %39 = load i64, i64* %buffer_size.addr, align 8
  %40 = load i64, i64* %integer_part, align 8
  %41 = load i32, i32* %fractional_part, align 4
  %call36 = call i32 bitcast (i32 (...)* @opng_snprintf_impl to i32 (i8*, i64, i8*, i64, i32)*)(i8* noundef %38, i64 noundef %39, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 noundef %40, i32 noundef %41)
  store i32 %call36, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end32
  %42 = load i64, i64* %num.addr, align 8
  %43 = load i64, i64* %denom.addr, align 8
  %div38 = udiv i64 %42, %43
  store i64 %div38, i64* %integer_part, align 8
  %44 = load i64, i64* %remainder, align 8
  %45 = load i64, i64* %denom.addr, align 8
  %sub39 = sub i64 %45, 1
  %div40 = udiv i64 %sub39, 2
  %cmp41 = icmp ugt i64 %44, %div40
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end37
  %46 = load i64, i64* %integer_part, align 8
  %inc44 = add i64 %46, 1
  store i64 %inc44, i64* %integer_part, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end37
  %47 = load i8*, i8** %buffer.addr, align 8
  %48 = load i64, i64* %buffer_size.addr, align 8
  %49 = load i64, i64* %integer_part, align 8
  %call46 = call i32 bitcast (i32 (...)* @opng_snprintf_impl to i32 (i8*, i64, i8*, i64)*)(i8* noundef %47, i64 noundef %48, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 noundef %49)
  store i32 %call46, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then35, %if.then30, %if.end13, %if.then
  %50 = load i32, i32* %retval, align 4
  ret i32 %50
}

declare i32 @opng_snprintf_impl(...) #1

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
