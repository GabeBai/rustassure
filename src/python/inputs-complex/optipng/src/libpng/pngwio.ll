; ModuleID = 'pngwio.c'
source_filename = "pngwio.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type { void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*, i8*, void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)*, i8*, i32, i32, i32, i32, %struct.z_stream_s, %struct.png_compression_buffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i64, i32, i32, %struct.png_color_struct*, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.png_color_16_struct, void (%struct.png_struct_def*)*, i32, i32, %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)*, i32, i32, i32, i8*, i8*, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, i8*, i64, i32, i32, i8*, [4 x void (%struct.png_row_info_struct*, i8*, i8*)*] }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }
%struct.png_compression_buffer = type { %struct.png_compression_buffer*, [1 x i8] }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Call to NULL write function\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Write Error\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Can't set both read_data_fn and write_data_fn in the same structure\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_write_data(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 3
  %9 = load void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)** %8, align 8
  %10 = icmp ne void (%struct.png_struct_def*, i8*, i64)* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 3
  %14 = load void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)** %13, align 8
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  call void %14(%struct.png_struct_def* noundef %15, i8* noundef %16, i64 noundef %17)
  br label %20

18:                                               ; preds = %3
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %19, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #3
  unreachable

20:                                               ; preds = %11
  ret void
}

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_default_write_data(%struct.png_struct_def* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %9 = icmp eq %struct.png_struct_def* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %24

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 5
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.__sFILE*
  %18 = call i64 @"\01_fwrite"(i8* noundef %12, i64 noundef 1, i64 noundef %13, %struct.__sFILE* noundef %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %23, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #3
  unreachable

24:                                               ; preds = %10, %11
  ret void
}

declare i64 @"\01_fwrite"(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_flush(%struct.png_struct_def* noalias noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i32 0, i32 59
  %5 = load void (%struct.png_struct_def*)*, void (%struct.png_struct_def*)** %4, align 8
  %6 = icmp ne void (%struct.png_struct_def*)* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 59
  %10 = load void (%struct.png_struct_def*)*, void (%struct.png_struct_def*)** %9, align 8
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  call void %10(%struct.png_struct_def* noundef %11)
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_default_flush(%struct.png_struct_def* noundef %0) #0 {
  %2 = alloca %struct.png_struct_def*, align 8
  %3 = alloca %struct.__sFILE*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %2, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %5 = icmp eq %struct.png_struct_def* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %2, align 8
  %9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 5
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.__sFILE*
  store %struct.__sFILE* %11, %struct.__sFILE** %3, align 8
  %12 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8
  %13 = call i32 @fflush(%struct.__sFILE* noundef %12)
  br label %14

14:                                               ; preds = %7, %6
  ret void
}

declare i32 @fflush(%struct.__sFILE* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_write_fn(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, void (%struct.png_struct_def*, i8*, i64)* noundef %2, void (%struct.png_struct_def*)* noundef %3) #0 {
  %5 = alloca %struct.png_struct_def*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (%struct.png_struct_def*, i8*, i64)*, align 8
  %8 = alloca void (%struct.png_struct_def*)*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %5, align 8
  store i8* %1, i8** %6, align 8
  store void (%struct.png_struct_def*, i8*, i64)* %2, void (%struct.png_struct_def*, i8*, i64)** %7, align 8
  store void (%struct.png_struct_def*)* %3, void (%struct.png_struct_def*)** %8, align 8
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %10 = icmp eq %struct.png_struct_def* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %44

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %15 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = load void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)** %7, align 8
  %17 = icmp ne void (%struct.png_struct_def*, i8*, i64)* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)** %7, align 8
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %21 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 3
  store void (%struct.png_struct_def*, i8*, i64)* %19, void (%struct.png_struct_def*, i8*, i64)** %21, align 8
  br label %25

22:                                               ; preds = %12
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %24 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %23, i32 0, i32 3
  store void (%struct.png_struct_def*, i8*, i64)* @png_default_write_data, void (%struct.png_struct_def*, i8*, i64)** %24, align 8
  br label %25

25:                                               ; preds = %22, %18
  %26 = load void (%struct.png_struct_def*)*, void (%struct.png_struct_def*)** %8, align 8
  %27 = icmp ne void (%struct.png_struct_def*)* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load void (%struct.png_struct_def*)*, void (%struct.png_struct_def*)** %8, align 8
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %31 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %30, i32 0, i32 59
  store void (%struct.png_struct_def*)* %29, void (%struct.png_struct_def*)** %31, align 8
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %34 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %33, i32 0, i32 59
  store void (%struct.png_struct_def*)* @png_default_flush, void (%struct.png_struct_def*)** %34, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %37 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 4
  %38 = load void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)** %37, align 8
  %39 = icmp ne void (%struct.png_struct_def*, i8*, i64)* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  %42 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %41, i32 0, i32 4
  store void (%struct.png_struct_def*, i8*, i64)* null, void (%struct.png_struct_def*, i8*, i64)** %42, align 8
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %5, align 8
  call void @png_warning(%struct.png_struct_def* noundef %43, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %11, %40, %35
  ret void
}

declare void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #2

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
!9 = !{!"clang version 14.0.0"}
