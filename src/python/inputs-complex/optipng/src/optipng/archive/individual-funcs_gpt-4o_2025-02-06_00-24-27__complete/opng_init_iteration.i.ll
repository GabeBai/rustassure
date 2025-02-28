; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_init_iteration.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_init_iteration.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.exception_context = type { [48 x i32]*, i32, %struct.anon }
%struct.anon = type { i8* }
%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Iteration parameter(s) out of range\00", align 1
@the_exception_context = global [1 x %struct.exception_context] zeroinitializer, align 8
@options = global %struct.opng_options zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_init_iteration(i32 noundef %cmdline_set, i32 noundef %mask_set, i8* noundef %preset, i32* noundef %output_set) #0 {
entry:
  %cmdline_set.addr = alloca i32, align 4
  %mask_set.addr = alloca i32, align 4
  %preset.addr = alloca i8*, align 8
  %output_set.addr = alloca i32*, align 8
  %preset_set = alloca i32, align 4
  store i32 %cmdline_set, i32* %cmdline_set.addr, align 4
  store i32 %mask_set, i32* %mask_set.addr, align 4
  store i8* %preset, i8** %preset.addr, align 8
  store i32* %output_set, i32** %output_set.addr, align 8
  %0 = load i32, i32* %cmdline_set.addr, align 4
  %1 = load i32, i32* %mask_set.addr, align 4
  %and = and i32 %0, %1
  %2 = load i32*, i32** %output_set.addr, align 8
  store i32 %and, i32* %2, align 4
  %3 = load i32*, i32** %output_set.addr, align 8
  %4 = load i32, i32* %3, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %cmdline_set.addr, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.cond

for.cond:                                         ; preds = %if.then
  store volatile i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %for.inc

for.inc:                                          ; preds = %for.cond
  %6 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %6, i64 0, i64 0
  call void @longjmp(i32* noundef %arraydecay, i32 noundef 1) #3
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i32*, i32** %output_set.addr, align 8
  %8 = load i32, i32* %7, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  %cmp3 = icmp sge i32 %9, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load i8*, i8** %preset.addr, align 8
  %call = call i32 @opng_rangeset_string_to_bitset(i8* noundef %10, i64* noundef null)
  store i32 %call, i32* %preset_set, align 4
  %11 = load i32, i32* %preset_set, align 4
  %12 = load i32, i32* %mask_set.addr, align 4
  %and5 = and i32 %11, %12
  %13 = load i32*, i32** %output_set.addr, align 8
  %14 = load i32, i32* %13, align 4
  %or = or i32 %14, %and5
  store i32 %or, i32* %13, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %lor.lhs.false
  ret void
}

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) #1

declare i32 @opng_rangeset_string_to_bitset(i8* noundef, i64* noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
