; ModuleID = 'uncompr.c'
source_filename = "uncompr.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"1.2.8-optipng\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @uncompress(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.z_stream_s, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i64, i64* %9, align 8
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 -5, i32* %5, align 4
  br label %69

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = zext i32 %31 to i64
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i32 -5, i32* %5, align 4
  br label %69

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 8
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %38, align 8
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 9
  store void (i8*, i8*)* null, void (i8*, i8*)** %39, align 8
  %40 = call i32 @inflateInit_(%struct.z_stream_s* noundef %10, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 112)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %69

45:                                               ; preds = %37
  %46 = call i32 @inflate(%struct.z_stream_s* noundef %10, i32 noundef 4)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = call i32 @inflateEnd(%struct.z_stream_s* noundef %10)
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, -5
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %49
  store i32 -3, i32* %5, align 4
  br label %69

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %69

63:                                               ; preds = %45
  %64 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %7, align 8
  store i64 %65, i64* %66, align 8
  %67 = call i32 @inflateEnd(%struct.z_stream_s* noundef %10)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %61, %60, %43, %36, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare i32 @inflateInit_(%struct.z_stream_s* noundef, i8* noundef, i32 noundef) #1

declare i32 @inflate(%struct.z_stream_s* noundef, i32 noundef) #1

declare i32 @inflateEnd(%struct.z_stream_s* noundef) #1

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
