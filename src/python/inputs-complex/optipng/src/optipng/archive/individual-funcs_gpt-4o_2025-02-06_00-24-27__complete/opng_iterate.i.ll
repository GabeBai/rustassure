; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_iterate.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_iterate.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_process_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@idat_size_max = constant i64 2147483647, align 8
@process = global %struct.opng_process_struct zeroinitializer, align 8
@usr_panic = global void (i8*)* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Iterations not initialized\00", align 1
@usr_printf = global void (i8*, ...)* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"\0ATrying:\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"  zc = %d  zm = %d  zs = %d  f = %d\00", align 1
@usr_progress = global void (i64, i64)* null, align 8
@options = global %struct.opng_options zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"\09\09IDAT too big\0A\00", align 1
@usr_print_cntrl = global void (i32)* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"\09\09IDAT size = %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Inconsistent iteration counter\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_iterate() #0 {
entry:
  %compr_level_set = alloca i32, align 4
  %mem_level_set = alloca i32, align 4
  %strategy_set = alloca i32, align 4
  %filter_set = alloca i32, align 4
  %saved_compr_level_set = alloca i32, align 4
  %compr_level = alloca i32, align 4
  %mem_level = alloca i32, align 4
  %strategy = alloca i32, align 4
  %filter = alloca i32, align 4
  %counter = alloca i32, align 4
  %line_reused = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %1(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and = and i32 %3, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then2, label %if.end6

if.then2:                                         ; preds = %land.lhs.true
  store i64 0, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 12), align 4
  %call = call i32 @opng_bitset_find_first(i32 noundef %4)
  store i32 %call, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 16), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 13), align 8
  %call3 = call i32 @opng_bitset_find_first(i32 noundef %5)
  store i32 %call3, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 17), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 14), align 4
  %call4 = call i32 @opng_bitset_find_first(i32 noundef %6)
  store i32 %call4, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 18), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 15), align 8
  %call5 = call i32 @opng_bitset_find_first(i32 noundef %7)
  store i32 %call5, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 19), align 8
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %8 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 12), align 4
  store i32 %8, i32* %compr_level_set, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 13), align 8
  store i32 %9, i32* %mem_level_set, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 14), align 4
  store i32 %10, i32* %strategy_set, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 15), align 8
  store i32 %11, i32* %filter_set, align 4
  store i64 2147483648, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 16), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 17), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 18), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 19), align 8
  %12 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %12(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %line_reused, align 4
  store i32 0, i32* %counter, align 4
  store i32 0, i32* %filter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc73, %if.end6
  %13 = load i32, i32* %filter, align 4
  %cmp7 = icmp sle i32 %13, 5
  br i1 %cmp7, label %for.body, label %for.end75

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %filter_set, align 4
  %15 = load i32, i32* %filter, align 4
  %shl = shl i32 1, %15
  %and8 = and i32 %14, %shl
  %cmp9 = icmp ne i32 %and8, 0
  br i1 %cmp9, label %if.then10, label %if.end72

if.then10:                                        ; preds = %for.body
  store i32 0, i32* %strategy, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc69, %if.then10
  %16 = load i32, i32* %strategy, align 4
  %cmp12 = icmp sle i32 %16, 3
  br i1 %cmp12, label %for.body13, label %for.end71

for.body13:                                       ; preds = %for.cond11
  %17 = load i32, i32* %strategy_set, align 4
  %18 = load i32, i32* %strategy, align 4
  %shl14 = shl i32 1, %18
  %and15 = and i32 %17, %shl14
  %cmp16 = icmp ne i32 %and15, 0
  br i1 %cmp16, label %if.then17, label %if.end68

if.then17:                                        ; preds = %for.body13
  %19 = load i32, i32* %compr_level_set, align 4
  store i32 %19, i32* %saved_compr_level_set, align 4
  %20 = load i32, i32* %strategy, align 4
  %cmp18 = icmp eq i32 %20, 2
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then17
  store i32 0, i32* %compr_level_set, align 4
  %21 = load i32, i32* %compr_level_set, align 4
  %or = or i32 %21, 2
  store i32 %or, i32* %compr_level_set, align 4
  br label %if.end24

if.else:                                          ; preds = %if.then17
  %22 = load i32, i32* %strategy, align 4
  %cmp20 = icmp eq i32 %22, 3
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.else
  store i32 0, i32* %compr_level_set, align 4
  %23 = load i32, i32* %compr_level_set, align 4
  %or22 = or i32 %23, 512
  store i32 %or22, i32* %compr_level_set, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then19
  store i32 9, i32* %compr_level, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc65, %if.end24
  %24 = load i32, i32* %compr_level, align 4
  %cmp26 = icmp sge i32 %24, 1
  br i1 %cmp26, label %for.body27, label %for.end67

for.body27:                                       ; preds = %for.cond25
  %25 = load i32, i32* %compr_level_set, align 4
  %26 = load i32, i32* %compr_level, align 4
  %shl28 = shl i32 1, %26
  %and29 = and i32 %25, %shl28
  %cmp30 = icmp ne i32 %and29, 0
  br i1 %cmp30, label %if.then31, label %if.end64

if.then31:                                        ; preds = %for.body27
  store i32 9, i32* %mem_level, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc, %if.then31
  %27 = load i32, i32* %mem_level, align 4
  %cmp33 = icmp sge i32 %27, 1
  br i1 %cmp33, label %for.body34, label %for.end

for.body34:                                       ; preds = %for.cond32
  %28 = load i32, i32* %mem_level_set, align 4
  %29 = load i32, i32* %mem_level, align 4
  %shl35 = shl i32 1, %29
  %and36 = and i32 %28, %shl35
  %cmp37 = icmp ne i32 %and36, 0
  br i1 %cmp37, label %if.then38, label %if.end63

if.then38:                                        ; preds = %for.body34
  %30 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %31 = load i32, i32* %compr_level, align 4
  %32 = load i32, i32* %mem_level, align 4
  %33 = load i32, i32* %strategy, align 4
  %34 = load i32, i32* %filter, align 4
  call void (i8*, ...) %30(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34)
  %35 = load void (i64, i64)*, void (i64, i64)** @usr_progress, align 8
  %36 = load i32, i32* %counter, align 4
  %conv = sext i32 %36 to i64
  %37 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %conv39 = sext i32 %37 to i64
  call void %35(i64 noundef %conv, i64 noundef %conv39)
  %38 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %counter, align 4
  %39 = load i32, i32* %compr_level, align 4
  %40 = load i32, i32* %mem_level, align 4
  %41 = load i32, i32* %strategy, align 4
  %42 = load i32, i32* %filter, align 4
  %call40 = call i32 bitcast (i32 (...)* @opng_write_file to i32 (i8*, i32, i32, i32, i32)*)(i8* noundef null, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42)
  %43 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %cmp41 = icmp ugt i64 %43, 2147483647
  br i1 %cmp41, label %if.then43, label %if.end48

if.then43:                                        ; preds = %if.then38
  %44 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 9), align 4
  %tobool44 = icmp ne i32 %44, 0
  br i1 %tobool44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.then43
  %45 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %45(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %line_reused, align 4
  br label %if.end47

if.else46:                                        ; preds = %if.then43
  %46 = load void (i32)*, void (i32)** @usr_print_cntrl, align 8
  call void %46(i32 noundef 13)
  store i32 1, i32* %line_reused, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then45
  br label %for.inc

if.end48:                                         ; preds = %if.then38
  %47 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  call void (i8*, ...) %47(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 noundef %48)
  store i32 0, i32* %line_reused, align 4
  %49 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %cmp49 = icmp ult i64 %49, %50
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  br label %for.inc

if.end52:                                         ; preds = %if.end48
  %51 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %cmp53 = icmp eq i64 %51, %52
  br i1 %cmp53, label %land.lhs.true55, label %if.end59

land.lhs.true55:                                  ; preds = %if.end52
  %53 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 18), align 4
  %cmp56 = icmp sge i32 %53, 2
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %land.lhs.true55
  br label %for.inc

if.end59:                                         ; preds = %land.lhs.true55, %if.end52
  %54 = load i32, i32* %compr_level, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 16), align 4
  %55 = load i32, i32* %mem_level, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 17), align 8
  %56 = load i32, i32* %strategy, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 18), align 4
  %57 = load i32, i32* %filter, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 19), align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  store i64 %58, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 5), align 4
  %tobool60 = icmp ne i32 %59, 0
  br i1 %tobool60, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end59
  %60 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  store i64 %60, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 8), align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end59
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %for.body34
  br label %for.inc

for.inc:                                          ; preds = %if.end63, %if.then58, %if.then51, %if.end47
  %61 = load i32, i32* %mem_level, align 4
  %dec = add nsw i32 %61, -1
  store i32 %dec, i32* %mem_level, align 4
  br label %for.cond32, !llvm.loop !10

for.end:                                          ; preds = %for.cond32
  br label %if.end64

if.end64:                                         ; preds = %for.end, %for.body27
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %62 = load i32, i32* %compr_level, align 4
  %dec66 = add nsw i32 %62, -1
  store i32 %dec66, i32* %compr_level, align 4
  br label %for.cond25, !llvm.loop !12

for.end67:                                        ; preds = %for.cond25
  %63 = load i32, i32* %saved_compr_level_set, align 4
  store i32 %63, i32* %compr_level_set, align 4
  br label %if.end68

if.end68:                                         ; preds = %for.end67, %for.body13
  br label %for.inc69

for.inc69:                                        ; preds = %if.end68
  %64 = load i32, i32* %strategy, align 4
  %inc70 = add nsw i32 %64, 1
  store i32 %inc70, i32* %strategy, align 4
  br label %for.cond11, !llvm.loop !13

for.end71:                                        ; preds = %for.cond11
  br label %if.end72

if.end72:                                         ; preds = %for.end71, %for.body
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72
  %65 = load i32, i32* %filter, align 4
  %inc74 = add nsw i32 %65, 1
  store i32 %inc74, i32* %filter, align 4
  br label %for.cond, !llvm.loop !14

for.end75:                                        ; preds = %for.cond
  %66 = load i32, i32* %line_reused, align 4
  %tobool76 = icmp ne i32 %66, 0
  br i1 %tobool76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %for.end75
  %67 = load void (i32)*, void (i32)** @usr_print_cntrl, align 8
  call void %67(i32 noundef -31)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %for.end75
  %68 = load i32, i32* %counter, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %cmp79 = icmp eq i32 %68, %69
  br i1 %cmp79, label %if.end82, label %if.then81

if.then81:                                        ; preds = %if.end78
  %70 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %70(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end78
  %71 = load void (i64, i64)*, void (i64, i64)** @usr_progress, align 8
  %72 = load i32, i32* %counter, align 4
  %conv83 = sext i32 %72 to i64
  %73 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %conv84 = sext i32 %73 to i64
  call void %71(i64 noundef %conv83, i64 noundef %conv84)
  br label %return

return:                                           ; preds = %if.end82, %if.then2
  ret void
}

declare i32 @opng_bitset_find_first(i32 noundef) #1

declare i32 @opng_write_file(...) #1

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
