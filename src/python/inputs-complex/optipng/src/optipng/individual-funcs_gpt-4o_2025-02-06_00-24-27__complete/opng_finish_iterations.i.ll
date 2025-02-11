; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_finish_iterations.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_finish_iterations.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_process_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@idat_size_max = constant i64 2147483647, align 8
@.str = private unnamed_addr constant [4 x i8] c"2GB\00", align 1
@idat_size_max_string = global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@process = global %struct.opng_process_struct zeroinitializer, align 8
@usr_printf = global void (i8*, ...)* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"\0ASelecting parameters:\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"  zc = %d  zm = %d  zs = %d  f = %d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09\09IDAT size = %lu\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"  zc = *  zm = *  zs = *  f = *\09\09IDAT size > %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_finish_iterations() #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 10), align 4
  %conv = zext i32 %1 to i64
  %add = add i64 %0, %conv
  %2 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 9), align 8
  %conv1 = zext i32 %3 to i64
  %add2 = add i64 %2, %conv1
  %cmp = icmp ult i64 %add, %add2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or = or i32 %4, 8192
  store i32 %or, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and = and i32 %5, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then4, label %if.end13

if.then4:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %cmp5 = icmp ule i64 %6, 2147483647
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  %7 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %7(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %8 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 16), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 17), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 18), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 19), align 8
  call void (i8*, ...) %8(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12)
  %13 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %cmp8 = icmp ugt i64 %13, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  %14 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  call void (i8*, ...) %14(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 noundef %15)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then7
  %16 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %16(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end12

if.else:                                          ; preds = %if.then4
  %17 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %18 = load i8*, i8** @idat_size_max_string, align 8
  call void (i8*, ...) %17(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* noundef %18)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end11
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
