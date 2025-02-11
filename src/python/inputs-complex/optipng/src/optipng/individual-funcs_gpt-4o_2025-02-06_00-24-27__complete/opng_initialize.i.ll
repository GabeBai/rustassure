; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_initialize.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_initialize.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_summary_struct = type { i32, i32, i32, i32 }
%struct.opng_engine_struct = type { i32 }
%struct.opng_ui = type { void (i8*, ...)*, void (i32)*, void (i64, i64)*, void (i8*)* }

@usr_printf = global void (i8*, ...)* null, align 8
@usr_print_cntrl = global void (i32)* null, align 8
@usr_progress = global void (i64, i64)* null, align 8
@usr_panic = global void (i8*)* null, align 8
@options = global %struct.opng_options zeroinitializer, align 8
@summary = global %struct.opng_summary_struct zeroinitializer, align 4
@engine = global %struct.opng_engine_struct zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_initialize(%struct.opng_options* noundef %init_options, %struct.opng_ui* noundef %init_ui) #0 {
entry:
  %retval = alloca i32, align 4
  %init_options.addr = alloca %struct.opng_options*, align 8
  %init_ui.addr = alloca %struct.opng_ui*, align 8
  store %struct.opng_options* %init_options, %struct.opng_options** %init_options.addr, align 8
  store %struct.opng_ui* %init_ui, %struct.opng_ui** %init_ui.addr, align 8
  %0 = load %struct.opng_ui*, %struct.opng_ui** %init_ui.addr, align 8
  %printf_fn = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %0, i32 0, i32 0
  %1 = load void (i8*, ...)*, void (i8*, ...)** %printf_fn, align 8
  store void (i8*, ...)* %1, void (i8*, ...)** @usr_printf, align 8
  %2 = load %struct.opng_ui*, %struct.opng_ui** %init_ui.addr, align 8
  %print_cntrl_fn = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %2, i32 0, i32 1
  %3 = load void (i32)*, void (i32)** %print_cntrl_fn, align 8
  store void (i32)* %3, void (i32)** @usr_print_cntrl, align 8
  %4 = load %struct.opng_ui*, %struct.opng_ui** %init_ui.addr, align 8
  %progress_fn = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %4, i32 0, i32 2
  %5 = load void (i64, i64)*, void (i64, i64)** %progress_fn, align 8
  store void (i64, i64)* %5, void (i64, i64)** @usr_progress, align 8
  %6 = load %struct.opng_ui*, %struct.opng_ui** %init_ui.addr, align 8
  %panic_fn = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %6, i32 0, i32 3
  %7 = load void (i8*)*, void (i8*)** %panic_fn, align 8
  store void (i8*)* %7, void (i8*)** @usr_panic, align 8
  %8 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %cmp = icmp eq void (i8*, ...)* %8, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load void (i32)*, void (i32)** @usr_print_cntrl, align 8
  %cmp1 = icmp eq void (i32)* %9, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %10 = load void (i64, i64)*, void (i64, i64)** @usr_progress, align 8
  %cmp3 = icmp eq void (i64, i64)* %10, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %11 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  %cmp5 = icmp eq void (i8*)* %11, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %12 = load %struct.opng_options*, %struct.opng_options** %init_options.addr, align 8
  %13 = bitcast %struct.opng_options* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.opng_options* @options to i8*), i8* align 8 %13, i64 120, i1 false)
  %14 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 16), align 4
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 15), align 8
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 14), align 4
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 17), align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (%struct.opng_summary_struct* @summary to i8*), i8 0, i64 16, i1 false)
  store i32 1, i32* getelementptr inbounds (%struct.opng_engine_struct, %struct.opng_engine_struct* @engine, i32 0, i32 0), align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

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
