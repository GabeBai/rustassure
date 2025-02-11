; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_init_iterations.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_init_iterations.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_preset = type { i8*, i8*, i8*, i8* }
%struct.opng_process_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_image_struct = type { i32, i32, i32, i32, i32, i32, i32, i8**, %struct.png_color_struct*, i32, %struct.png_color_16_struct*, %struct.png_color_16_struct, i16*, %struct.png_color_8_struct*, %struct.png_color_8_struct, i8*, i32, %struct.png_color_16_struct*, %struct.png_color_16_struct, %struct.png_unknown_chunk_t*, i32 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"0-\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"0,5\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"8-9\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"1-9\00", align 1
@presets = constant [8 x %struct.opng_preset] [%struct.opng_preset { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0) }], align 8
@idat_size_max = constant i64 2147483647, align 8
@process = global %struct.opng_process_struct zeroinitializer, align 8
@options = global %struct.opng_options zeroinitializer, align 8
@usr_panic = global void (i8*)* null, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"No IDAT in input\00", align 1
@image = global %struct.opng_image_struct zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"Invalid iteration parameters\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_init_iterations() #0 {
entry:
  %compr_level_set = alloca i32, align 4
  %mem_level_set = alloca i32, align 4
  %strategy_set = alloca i32, align 4
  %filter_set = alloca i32, align 4
  %strategy_singles_set = alloca i32, align 4
  %preset_index = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %and = and i32 %0, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 5), align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 2147483647, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 8), align 8
  br label %if.end3

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.else
  %3 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %3(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  %4 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 9), align 8
  %conv = zext i32 %5 to i64
  %add = add i64 %4, %conv
  store i64 %add, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 8), align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %6 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  store i32 %6, i32* %preset_index, align 4
  %7 = load i32, i32* %preset_index, align 4
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end3
  store i32 2, i32* %preset_index, align 4
  br label %if.end12

if.else7:                                         ; preds = %if.end3
  %8 = load i32, i32* %preset_index, align 4
  %cmp8 = icmp sgt i32 %8, 7
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.else7
  store i32 7, i32* %preset_index, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.else7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then6
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 19), align 8
  %10 = load i32, i32* %preset_index, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.opng_preset], [8 x %struct.opng_preset]* @presets, i64 0, i64 %idxprom
  %compr_level = getelementptr inbounds %struct.opng_preset, %struct.opng_preset* %arrayidx, i32 0, i32 0
  %11 = load i8*, i8** %compr_level, align 8
  %call = call i32 bitcast (i32 (...)* @opng_init_iteration to i32 (i32, i32, i8*, i32*)*)(i32 noundef %9, i32 noundef 1022, i8* noundef %11, i32* noundef %compr_level_set)
  %12 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 20), align 4
  %13 = load i32, i32* %preset_index, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [8 x %struct.opng_preset], [8 x %struct.opng_preset]* @presets, i64 0, i64 %idxprom13
  %mem_level = getelementptr inbounds %struct.opng_preset, %struct.opng_preset* %arrayidx14, i32 0, i32 1
  %14 = load i8*, i8** %mem_level, align 8
  %call15 = call i32 bitcast (i32 (...)* @opng_init_iteration to i32 (i32, i32, i8*, i32*)*)(i32 noundef %12, i32 noundef 1022, i8* noundef %14, i32* noundef %mem_level_set)
  %15 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 21), align 8
  %16 = load i32, i32* %preset_index, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [8 x %struct.opng_preset], [8 x %struct.opng_preset]* @presets, i64 0, i64 %idxprom16
  %strategy = getelementptr inbounds %struct.opng_preset, %struct.opng_preset* %arrayidx17, i32 0, i32 2
  %17 = load i8*, i8** %strategy, align 8
  %call18 = call i32 bitcast (i32 (...)* @opng_init_iteration to i32 (i32, i32, i8*, i32*)*)(i32 noundef %15, i32 noundef 15, i8* noundef %17, i32* noundef %strategy_set)
  %18 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 22), align 4
  %19 = load i32, i32* %preset_index, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [8 x %struct.opng_preset], [8 x %struct.opng_preset]* @presets, i64 0, i64 %idxprom19
  %filter = getelementptr inbounds %struct.opng_preset, %struct.opng_preset* %arrayidx20, i32 0, i32 3
  %20 = load i8*, i8** %filter, align 8
  %call21 = call i32 bitcast (i32 (...)* @opng_init_iteration to i32 (i32, i32, i8*, i32*)*)(i32 noundef %18, i32 noundef 63, i8* noundef %20, i32* noundef %filter_set)
  %21 = load i32, i32* %compr_level_set, align 4
  %cmp22 = icmp eq i32 %21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end12
  %22 = load i32, i32* %compr_level_set, align 4
  %or = or i32 %22, 512
  store i32 %or, i32* %compr_level_set, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end12
  %23 = load i32, i32* %mem_level_set, align 4
  %cmp26 = icmp eq i32 %23, 0
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %24 = load i32, i32* %mem_level_set, align 4
  %or29 = or i32 %24, 256
  store i32 %or29, i32* %mem_level_set, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  %25 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 2), align 8
  %cmp31 = icmp slt i32 %25, 8
  br i1 %cmp31, label %if.then36, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end30
  %26 = load %struct.png_color_struct*, %struct.png_color_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 8), align 8
  %cmp34 = icmp ne %struct.png_color_struct* %26, null
  br i1 %cmp34, label %if.then36, label %if.else47

if.then36:                                        ; preds = %lor.lhs.false33, %if.end30
  %27 = load i32, i32* %strategy_set, align 4
  %cmp37 = icmp eq i32 %27, 0
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.then36
  %28 = load i32, i32* %strategy_set, align 4
  %or40 = or i32 %28, 1
  store i32 %or40, i32* %strategy_set, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then36
  %29 = load i32, i32* %filter_set, align 4
  %cmp42 = icmp eq i32 %29, 0
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end41
  %30 = load i32, i32* %filter_set, align 4
  %or45 = or i32 %30, 1
  store i32 %or45, i32* %filter_set, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end41
  br label %if.end58

if.else47:                                        ; preds = %lor.lhs.false33
  %31 = load i32, i32* %strategy_set, align 4
  %cmp48 = icmp eq i32 %31, 0
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.else47
  %32 = load i32, i32* %strategy_set, align 4
  %or51 = or i32 %32, 2
  store i32 %or51, i32* %strategy_set, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.else47
  %33 = load i32, i32* %filter_set, align 4
  %cmp53 = icmp eq i32 %33, 0
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end52
  %34 = load i32, i32* %filter_set, align 4
  %or56 = or i32 %34, 32
  store i32 %or56, i32* %filter_set, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end46
  %35 = load i32, i32* %compr_level_set, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 12), align 4
  %36 = load i32, i32* %mem_level_set, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 13), align 8
  %37 = load i32, i32* %strategy_set, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 14), align 4
  %38 = load i32, i32* %filter_set, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 15), align 8
  store i32 12, i32* %strategy_singles_set, align 4
  %39 = load i32, i32* %compr_level_set, align 4
  %call59 = call i32 @opng_bitset_count(i32 noundef %39)
  %40 = load i32, i32* %strategy_set, align 4
  %41 = load i32, i32* %strategy_singles_set, align 4
  %neg = xor i32 %41, -1
  %and60 = and i32 %40, %neg
  %call61 = call i32 @opng_bitset_count(i32 noundef %and60)
  %mul = mul i32 %call59, %call61
  store i32 %mul, i32* %t1, align 4
  %42 = load i32, i32* %strategy_set, align 4
  %43 = load i32, i32* %strategy_singles_set, align 4
  %and62 = and i32 %42, %43
  %call63 = call i32 @opng_bitset_count(i32 noundef %and62)
  store i32 %call63, i32* %t2, align 4
  %44 = load i32, i32* %t1, align 4
  %45 = load i32, i32* %t2, align 4
  %add64 = add nsw i32 %44, %45
  %46 = load i32, i32* %mem_level_set, align 4
  %call65 = call i32 @opng_bitset_count(i32 noundef %46)
  %mul66 = mul i32 %add64, %call65
  %47 = load i32, i32* %filter_set, align 4
  %call67 = call i32 @opng_bitset_count(i32 noundef %47)
  %mul68 = mul i32 %mul66, %call67
  store i32 %mul68, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %cmp69 = icmp sgt i32 %48, 0
  br i1 %cmp69, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.end58
  %49 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %49(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end58
  ret void
}

declare i32 @opng_init_iteration(...) #1

declare i32 @opng_bitset_count(i32 noundef) #1

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
