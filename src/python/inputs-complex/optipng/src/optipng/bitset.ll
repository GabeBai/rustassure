; ModuleID = 'bitset.c'
source_filename = "bitset.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_bitset_count(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %7, %1
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = sub i32 %8, 1
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %3, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %4, !llvm.loop !10

14:                                               ; preds = %4
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_bitset_find_first(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %6, 31
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %21

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %5, !llvm.loop !12

20:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_bitset_find_next(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ -1, %11 ]
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %27, %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %16, 31
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %15, !llvm.loop !13

30:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_bitset_find_last(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 31, i32* %4, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %21

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %4, align 4
  br label %5, !llvm.loop !14

20:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_bitset_find_prev(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 32
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 32, %11 ]
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %27, %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  br label %15, !llvm.loop !15

30:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_rangeset_string_to_bitset(i8* noundef %0, i64* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %10, align 4
  br label %14

14:                                               ; preds = %125, %78, %68, %2
  br label %15

15:                                               ; preds = %21, %14
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 @isspace(i32 noundef %18) #3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  br label %15, !llvm.loop !16

24:                                               ; preds = %15
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %84 [
    i32 0, label %26
    i32 2, label %26
    i32 1, label %73
  ]

26:                                               ; preds = %24, %24
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sge i32 %29, 48
  br i1 %30, label %31, label %72

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 57
  br i1 %35, label %36, label %72

36:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %61, %36
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 10, %38
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = sub nsw i32 %42, 48
  %44 = add nsw i32 %39, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 31
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 1, i32* %12, align 4
  store i32 31, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  br label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sge i32 %54, 48
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 %59, 57
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ false, %51 ], [ %60, %56 ]
  br i1 %62, label %37, label %63, !llvm.loop !17

63:                                               ; preds = %61
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %14

72:                                               ; preds = %31, %26
  br label %84

73:                                               ; preds = %24
  %74 = load i8*, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 45
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  store i32 31, i32* %11, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %14

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %24, %83, %72
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %84
  store i32 0, i32* %8, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp sgt i32 %88, 31
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 1, i32* %12, align 4
  store i32 31, i32* %11, align 4
  br label %91

91:                                               ; preds = %90, %87
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %100, %101
  %103 = shl i32 1, %102
  %104 = shl i32 %103, 1
  %105 = sub i32 %104, 1
  %106 = load i32, i32* %10, align 4
  %107 = shl i32 %105, %106
  br label %109

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %99
  %110 = phi i32 [ %107, %99 ], [ 0, %108 ]
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %114

113:                                              ; preds = %91
  store i32 1, i32* %12, align 4
  br label %114

114:                                              ; preds = %113, %109
  br label %115

115:                                              ; preds = %114, %84
  %116 = load i8*, i8** %7, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 44
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load i8*, i8** %7, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 59
  br i1 %124, label %125, label %128

125:                                              ; preds = %120, %115
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %7, align 8
  br label %14

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i64*, i64** %5, align 8
  %134 = icmp ne i64* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i64*, i64** %5, align 8
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %135, %132
  store i32 0, i32* %3, align 4
  br label %155

138:                                              ; preds = %129
  %139 = load i64*, i64** %5, align 8
  %140 = icmp ne i64* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i8*, i8** %7, align 8
  %143 = load i8*, i8** %4, align 8
  %144 = ptrtoint i8* %142 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = load i64*, i64** %5, align 8
  store i64 %146, i64* %147, align 8
  br label %148

148:                                              ; preds = %141, %138
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = call i32* @__error()
  store i32 34, i32* %152, align 4
  br label %153

153:                                              ; preds = %151, %148
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %137
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #1

declare i32* @__error() #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
