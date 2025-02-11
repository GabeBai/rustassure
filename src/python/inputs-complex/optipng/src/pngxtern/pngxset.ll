; ModuleID = 'pngxset.c'
source_filename = "pngxset.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @pngx_set_compression_type(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %15 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %16 = call i32 @png_get_IHDR(%struct.png_struct_def* noundef %14, %struct.png_info_def* noundef %15, i32* noundef %7, i32* noundef %8, i32* noundef %9, i32* noundef %10, i32* noundef %11, i32* noundef %13, i32* noundef %12)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %34

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %34

24:                                               ; preds = %19
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %12, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %25, %struct.png_info_def* noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33)
  br label %34

34:                                               ; preds = %24, %23, %18
  ret void
}

declare i32 @png_get_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef) #1

declare void @png_set_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @pngx_set_filter_type(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %15 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %16 = call i32 @png_get_IHDR(%struct.png_struct_def* noundef %14, %struct.png_info_def* noundef %15, i32* noundef %7, i32* noundef %8, i32* noundef %9, i32* noundef %10, i32* noundef %11, i32* noundef %12, i32* noundef %13)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %34

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %34

24:                                               ; preds = %19
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %25, %struct.png_info_def* noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33)
  br label %34

34:                                               ; preds = %24, %23, %18
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @pngx_set_interlace_type(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %15 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %16 = call i32 @png_get_IHDR(%struct.png_struct_def* noundef %14, %struct.png_info_def* noundef %15, i32* noundef %7, i32* noundef %8, i32* noundef %9, i32* noundef %10, i32* noundef %13, i32* noundef %11, i32* noundef %12)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %34

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %34

24:                                               ; preds = %19
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %26 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %25, %struct.png_info_def* noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33)
  br label %34

34:                                               ; preds = %24, %23, %18
  ret void
}

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
!9 = !{!"clang version 14.0.0"}
