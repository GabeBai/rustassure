; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/main.i.bc'
source_filename = "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/main.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"Aa\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\C3\A8a\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\E4\BC\9A\E5\93\A1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\F0\A7\80\80\F0\A7\80\8D\00", align 1
@__const.main.s = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 8
@__stdoutp = external global %struct.__sFILE*, align 8
@__stderrp = external global %struct.__sFILE*, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: (%s) \09%s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"l == k+1\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"test4.c\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"    : Expected length: %d, got %d\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"l == l2\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"    : Length should be %d, got %d\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"strncmp(s1,buf,l) == 0\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"    : Encoding error\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"    : len=%d [S %02X %02X %02X %02X] [E %02X %02X %02X %02X]\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" \09%s:%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"buf[l]=='\\0'\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"    : Encoding not 0 terminated!\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %l = alloca i32, align 4
  %l2 = alloca i32, align 4
  %c = alloca i32, align 4
  %buf = alloca [8 x i8], align 1
  %s1 = alloca i8*, align 8
  %s = alloca [4 x i8*], align 8
  %k = alloca i32, align 4
  %e_ = alloca i32, align 4
  %e_15 = alloca i32, align 4
  %e_34 = alloca i32, align 4
  %e_83 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [4 x i8*]* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ([4 x i8*]* @__const.main.s to i8*), i64 32, i1 false)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %s, i64 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %s1, align 8
  %4 = load i8*, i8** %s1, align 8
  %call = call i32 @u8next_(i8* noundef %4, i32* noundef %c)
  store i32 %call, i32* %l, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i32, i32* %l, align 4
  %6 = load i32, i32* %k, align 4
  %add = add nsw i32 %6, 1
  %cmp2 = icmp eq i32 %5, %add
  %lnot = xor i1 %cmp2, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %e_, align 4
  %call4 = call i32* @__error()
  store i32 0, i32* %call4, align 4
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call5 = call i32 @fflush(%struct.__sFILE* noundef %7)
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %9 = load i32, i32* %e_, align 4
  %tobool = icmp ne i32 %9, 0
  %10 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %call6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %8, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %cond, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 19)
  %11 = load i32, i32* %e_, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %13 = load i32, i32* %k, align 4
  %add8 = add nsw i32 %13, 1
  %14 = load i32, i32* %l, align 4
  %call9 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %12, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 noundef %add8, i32 noundef %14)
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call10 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %16 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call11 = call i32 @fflush(%struct.__sFILE* noundef %16)
  %17 = load i32, i32* %e_, align 4
  %call12 = call i32* @__error()
  store i32 %17, i32* %call12, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %18 = load i32, i32* %c, align 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %call13 = call i32 @u8encode_(i32 noundef %18, i8* noundef %arraydecay)
  store i32 %call13, i32* %l2, align 4
  br label %do.body14

do.body14:                                        ; preds = %do.end
  %19 = load i32, i32* %l, align 4
  %20 = load i32, i32* %l2, align 4
  %cmp16 = icmp eq i32 %19, %20
  %lnot18 = xor i1 %cmp16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  store i32 %lnot.ext19, i32* %e_15, align 4
  %call20 = call i32* @__error()
  store i32 0, i32* %call20, align 4
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call21 = call i32 @fflush(%struct.__sFILE* noundef %21)
  %22 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %23 = load i32, i32* %e_15, align 4
  %tobool22 = icmp ne i32 %23, 0
  %24 = zext i1 %tobool22 to i64
  %cond23 = select i1 %tobool22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %call24 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %22, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %cond23, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 21)
  %25 = load i32, i32* %e_15, align 4
  %tobool25 = icmp ne i32 %25, 0
  br i1 %tobool25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %do.body14
  %26 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %27 = load i32, i32* %l, align 4
  %28 = load i32, i32* %l2, align 4
  %call27 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %26, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 noundef %27, i32 noundef %28)
  %29 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call28 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %29)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %do.body14
  %30 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call30 = call i32 @fflush(%struct.__sFILE* noundef %30)
  %31 = load i32, i32* %e_15, align 4
  %call31 = call i32* @__error()
  store i32 %31, i32* %call31, align 4
  br label %do.end32

do.end32:                                         ; preds = %if.end29
  br label %do.body33

do.body33:                                        ; preds = %do.end32
  %32 = load i8*, i8** %s1, align 8
  %arraydecay35 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %33 = load i32, i32* %l, align 4
  %conv36 = sext i32 %33 to i64
  %call37 = call i32 @strncmp(i8* noundef %32, i8* noundef %arraydecay35, i64 noundef %conv36)
  %cmp38 = icmp eq i32 %call37, 0
  %lnot40 = xor i1 %cmp38, true
  %lnot.ext41 = zext i1 %lnot40 to i32
  store i32 %lnot.ext41, i32* %e_34, align 4
  %call42 = call i32* @__error()
  store i32 0, i32* %call42, align 4
  %34 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call43 = call i32 @fflush(%struct.__sFILE* noundef %34)
  %35 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %36 = load i32, i32* %e_34, align 4
  %tobool44 = icmp ne i32 %36, 0
  %37 = zext i1 %tobool44 to i64
  %cond45 = select i1 %tobool44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %call46 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %35, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %cond45, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 22)
  %38 = load i32, i32* %e_34, align 4
  %tobool47 = icmp ne i32 %38, 0
  br i1 %tobool47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %do.body33
  %39 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call49 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %39, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %40 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call50 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %40)
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %do.body33
  %41 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call52 = call i32 @fflush(%struct.__sFILE* noundef %41)
  %42 = load i32, i32* %e_34, align 4
  %call53 = call i32* @__error()
  store i32 %42, i32* %call53, align 4
  br label %do.end54

do.end54:                                         ; preds = %if.end51
  br label %do.body55

do.body55:                                        ; preds = %do.end54
  %call56 = call i32* @__error()
  %43 = load i32, i32* %call56, align 4
  %tobool57 = icmp ne i32 %43, 0
  br i1 %tobool57, label %if.then58, label %if.end79

if.then58:                                        ; preds = %do.body55
  %44 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call59 = call i32 @fflush(%struct.__sFILE* noundef %44)
  %45 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %46 = load i32, i32* %l2, align 4
  %47 = load i8*, i8** %s1, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %48 to i32
  %49 = load i8*, i8** %s1, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %50 to i32
  %51 = load i8*, i8** %s1, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %51, i64 2
  %52 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %52 to i32
  %53 = load i8*, i8** %s1, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %53, i64 3
  %54 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %54 to i32
  %arrayidx68 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %55 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %55 to i32
  %arrayidx70 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 1
  %56 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %56 to i32
  %arrayidx72 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 2
  %57 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %57 to i32
  %arrayidx74 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 3
  %58 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %58 to i32
  %call76 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %45, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), i32 noundef %46, i32 noundef %conv61, i32 noundef %conv63, i32 noundef %conv65, i32 noundef %conv67, i32 noundef %conv69, i32 noundef %conv71, i32 noundef %conv73, i32 noundef %conv75)
  %59 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call77 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %59, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 25)
  %60 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call78 = call i32 @fflush(%struct.__sFILE* noundef %60)
  br label %if.end79

if.end79:                                         ; preds = %if.then58, %do.body55
  %call80 = call i32* @__error()
  store i32 0, i32* %call80, align 4
  br label %do.end81

do.end81:                                         ; preds = %if.end79
  br label %do.body82

do.body82:                                        ; preds = %do.end81
  %61 = load i32, i32* %l, align 4
  %idxprom84 = sext i32 %61 to i64
  %arrayidx85 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 %idxprom84
  %62 = load i8, i8* %arrayidx85, align 1
  %conv86 = sext i8 %62 to i32
  %cmp87 = icmp eq i32 %conv86, 0
  %lnot89 = xor i1 %cmp87, true
  %lnot.ext90 = zext i1 %lnot89 to i32
  store i32 %lnot.ext90, i32* %e_83, align 4
  %call91 = call i32* @__error()
  store i32 0, i32* %call91, align 4
  %63 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call92 = call i32 @fflush(%struct.__sFILE* noundef %63)
  %64 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %65 = load i32, i32* %e_83, align 4
  %tobool93 = icmp ne i32 %65, 0
  %66 = zext i1 %tobool93 to i64
  %cond94 = select i1 %tobool93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %call95 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %64, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %cond94, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 28)
  %67 = load i32, i32* %e_83, align 4
  %tobool96 = icmp ne i32 %67, 0
  br i1 %tobool96, label %if.then97, label %if.end100

if.then97:                                        ; preds = %do.body82
  %68 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call98 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %68, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  %69 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call99 = call i32 @fputc(i32 noundef 10, %struct.__sFILE* noundef %69)
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %do.body82
  %70 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call101 = call i32 @fflush(%struct.__sFILE* noundef %70)
  %71 = load i32, i32* %e_83, align 4
  %call102 = call i32* @__error()
  store i32 %71, i32* %call102, align 4
  br label %do.end103

do.end103:                                        ; preds = %if.end100
  br label %for.inc

for.inc:                                          ; preds = %do.end103
  %72 = load i32, i32* %k, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %73 = load i32, i32* %retval, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @u8next_(i8* noundef, i32* noundef) #2

declare i32* @__error() #2

declare i32 @fflush(%struct.__sFILE* noundef) #2

declare i32 @fprintf(%struct.__sFILE* noundef, i8* noundef, ...) #2

declare i32 @fputc(i32 noundef, %struct.__sFILE* noundef) #2

declare i32 @u8encode_(i32 noundef, i8* noundef) #2

declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
