; ModuleID = 'pngrio.c'
source_filename = "pngrio.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type { void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*, i8*, {}*, {}*, i8*, i32, i32, i32, i32, %struct.z_stream_s, %struct.png_compression_buffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i64, i32, i32, %struct.png_color_struct*, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.png_color_16_struct, void (%struct.png_struct_def*)*, i32, i32, %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)*, i32, i32, i32, i8*, i8*, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, i8*, i64, i32, i32, i8*, [4 x void (%struct.png_row_info_struct*, i8*, i8*)*] }
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

@.str = private unnamed_addr constant [27 x i8] c"Call to NULL read function\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Read Error\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Can't set both read_data_fn and write_data_fn in the same structure\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_read_data(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 4
  %9 = bitcast {}** %8 to void (%struct.png_struct_def*, i8*, i64)**
  %10 = load void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)** %9, align 8
  %11 = icmp ne void (%struct.png_struct_def*, i8*, i64)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 4
  %15 = bitcast {}** %14 to void (%struct.png_struct_def*, i8*, i64)**
  %16 = load void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)** %15, align 8
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  call void %16(%struct.png_struct_def* noundef %17, i8* noundef %18, i64 noundef %19)
  br label %22

20:                                               ; preds = %3
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %21, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #3
  unreachable

22:                                               ; preds = %12
  ret void
}

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_default_read_data(%struct.png_struct_def* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
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
  %18 = call i64 @fread(i8* noundef %12, i64 noundef 1, i64 noundef %13, %struct.__sFILE* noundef %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %23, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #3
  unreachable

24:                                               ; preds = %10, %11
  ret void
}

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @png_set_read_fn(%struct.png_struct_def* noalias noundef %0, i8* noundef %1, void (%struct.png_struct_def*, i8*, i64)* noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (%struct.png_struct_def*, i8*, i64)*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store void (%struct.png_struct_def*, i8*, i64)* %2, void (%struct.png_struct_def*, i8*, i64)** %6, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = icmp eq %struct.png_struct_def* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %39

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %13 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 5
  store i8* %11, i8** %13, align 8
  %14 = load void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)** %6, align 8
  %15 = icmp ne void (%struct.png_struct_def*, i8*, i64)* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)** %6, align 8
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %19 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 4
  %20 = bitcast {}** %19 to void (%struct.png_struct_def*, i8*, i64)**
  store void (%struct.png_struct_def*, i8*, i64)* %17, void (%struct.png_struct_def*, i8*, i64)** %20, align 8
  br label %25

21:                                               ; preds = %10
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %23 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 4
  %24 = bitcast {}** %23 to void (%struct.png_struct_def*, i8*, i64)**
  store void (%struct.png_struct_def*, i8*, i64)* @png_default_read_data, void (%struct.png_struct_def*, i8*, i64)** %24, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %27 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %26, i32 0, i32 3
  %28 = bitcast {}** %27 to void (%struct.png_struct_def*, i8*, i64)**
  %29 = load void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)** %28, align 8
  %30 = icmp ne void (%struct.png_struct_def*, i8*, i64)* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %33 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %32, i32 0, i32 3
  %34 = bitcast {}** %33 to void (%struct.png_struct_def*, i8*, i64)**
  store void (%struct.png_struct_def*, i8*, i64)* null, void (%struct.png_struct_def*, i8*, i64)** %34, align 8
  %35 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_warning(%struct.png_struct_def* noundef %35, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %25
  %37 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %38 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %37, i32 0, i32 59
  store void (%struct.png_struct_def*)* null, void (%struct.png_struct_def*)** %38, align 8
  br label %39

39:                                               ; preds = %36, %9
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
