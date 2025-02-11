; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_print_image_info.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_print_image_info.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_image_struct = type { i32, i32, i32, i32, i32, i32, i32, i8**, %struct.png_color_struct*, i32, %struct.png_color_16_struct*, %struct.png_color_16_struct, i16*, %struct.png_color_8_struct*, %struct.png_color_8_struct, i8*, i32, %struct.png_color_16_struct*, %struct.png_color_16_struct, %struct.png_unknown_chunk_t*, i32 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }

@__const.opng_print_image_info.type_channels = private unnamed_addr constant [8 x i32] [i32 1, i32 0, i32 3, i32 1, i32 2, i32 0, i32 4, i32 0], align 4
@usr_printf = global void (i8*, ...)* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"%lux%lu pixels\00", align 1
@image = global %struct.opng_image_struct zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%dx%d bits/pixel\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%d bits/pixel\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"1 bit/pixel\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"1 color\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%d colors\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c" (%d transparent)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" in palette\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"+alpha\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"+transparency\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_print_image_info(i32 noundef %show_dim, i32 noundef %show_depth, i32 noundef %show_type, i32 noundef %show_interlaced) #0 {
entry:
  %show_dim.addr = alloca i32, align 4
  %show_depth.addr = alloca i32, align 4
  %show_type.addr = alloca i32, align 4
  %show_interlaced.addr = alloca i32, align 4
  %type_channels = alloca [8 x i32], align 4
  %channels = alloca i32, align 4
  %printed = alloca i32, align 4
  store i32 %show_dim, i32* %show_dim.addr, align 4
  store i32 %show_depth, i32* %show_depth.addr, align 4
  store i32 %show_type, i32* %show_type.addr, align 4
  store i32 %show_interlaced, i32* %show_interlaced.addr, align 4
  %0 = bitcast [8 x i32]* %type_channels to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([8 x i32]* @__const.opng_print_image_info.type_channels to i8*), i64 32, i1 false)
  store i32 0, i32* %printed, align 4
  %1 = load i32, i32* %show_dim.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %printed, align 4
  %2 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 0), align 8
  %conv = zext i32 %3 to i64
  %4 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 1), align 4
  %conv1 = zext i32 %4 to i64
  call void (i8*, ...) %2(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 noundef %conv, i64 noundef %conv1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %show_depth.addr, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %printed, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  %7 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %7(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3
  store i32 1, i32* %printed, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 3), align 4
  %and = and i32 %8, 7
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %type_channels, i64 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  store i32 %9, i32* %channels, align 4
  %10 = load i32, i32* %channels, align 4
  %cmp = icmp ne i32 %10, 1
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %11 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %12 = load i32, i32* %channels, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 2), align 8
  call void (i8*, ...) %11(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 noundef %12, i32 noundef %13)
  br label %if.end14

if.else:                                          ; preds = %if.end6
  %14 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 2), align 8
  %cmp9 = icmp ne i32 %14, 1
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else
  %15 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 2), align 8
  call void (i8*, ...) %15(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 noundef %16)
  br label %if.end13

if.else12:                                        ; preds = %if.else
  %17 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %17(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %18 = load i32, i32* %show_type.addr, align 4
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %if.then17, label %if.end46

if.then17:                                        ; preds = %if.end15
  %19 = load i32, i32* %printed, align 4
  %tobool18 = icmp ne i32 %19, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  %20 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %20(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  store i32 1, i32* %printed, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 3), align 4
  %and21 = and i32 %21, 1
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.else33

if.then23:                                        ; preds = %if.end20
  %22 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 9), align 8
  %cmp24 = icmp eq i32 %22, 1
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.then23
  %23 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %23(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end28

if.else27:                                        ; preds = %if.then23
  %24 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 9), align 8
  call void (i8*, ...) %24(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 noundef %25)
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  %26 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 16), align 8
  %cmp29 = icmp sgt i32 %26, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  %27 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 16), align 8
  call void (i8*, ...) %27(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef %28)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28
  %29 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %29(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end45

if.else33:                                        ; preds = %if.end20
  %30 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 3), align 4
  %and34 = and i32 %31, 2
  %tobool35 = icmp ne i32 %and34, 0
  %32 = zext i1 %tobool35 to i64
  %cond = select i1 %tobool35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)
  call void (i8*, ...) %30(i8* noundef %cond)
  %33 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 3), align 4
  %and36 = and i32 %33, 4
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else33
  %34 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %34(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %if.end44

if.else39:                                        ; preds = %if.else33
  %35 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17), align 8
  %cmp40 = icmp ne %struct.png_color_16_struct* %35, null
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.else39
  %36 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %36(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.else39
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then38
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end32
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end15
  %37 = load i32, i32* %show_interlaced.addr, align 4
  %tobool47 = icmp ne i32 %37, 0
  br i1 %tobool47, label %if.then48, label %if.end56

if.then48:                                        ; preds = %if.end46
  %38 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 6), align 8
  %cmp49 = icmp ne i32 %38, 0
  br i1 %cmp49, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.then48
  %39 = load i32, i32* %printed, align 4
  %tobool52 = icmp ne i32 %39, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.then51
  %40 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %40(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.then51
  %41 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %41(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then48
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end46
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn }

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
