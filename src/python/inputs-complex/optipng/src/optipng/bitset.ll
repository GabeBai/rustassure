; ModuleID = 'bitset.c'
source_filename = "bitset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opng_bitset_count(i32 noundef %0) #0 {
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
  br label %4, !llvm.loop !4

14:                                               ; preds = %4
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opng_bitset_find_first(i32 noundef %0) #0 {
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
  br label %5, !llvm.loop !6

20:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opng_bitset_find_next(i32 noundef %0, i32 noundef %1) #0 {
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
  br label %15, !llvm.loop !7

30:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opng_bitset_find_last(i32 noundef %0) #0 {
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
  br label %5, !llvm.loop !8

20:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opng_bitset_find_prev(i32 noundef %0, i32 noundef %1) #0 {
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
  br label %15, !llvm.loop !9

30:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opng_rangeset_string_to_bitset(i8* noundef %0, i64* noundef %1) #0 {
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

14:                                               ; preds = %131, %84, %74, %2
  br label %15

15:                                               ; preds = %27, %14
  %16 = call i16** @__ctype_b_loc() #2
  %17 = load i16*, i16** %16, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, i16* %17, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 8192
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  br label %15, !llvm.loop !10

30:                                               ; preds = %15
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %90 [
    i32 0, label %32
    i32 2, label %32
    i32 1, label %79
  ]

32:                                               ; preds = %30, %30
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 48
  br i1 %36, label %37, label %78

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 %40, 57
  br i1 %41, label %42, label %78

42:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %67, %42
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 10, %44
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %48, 48
  %50 = add nsw i32 %45, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 31
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 1, i32* %12, align 4
  store i32 31, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  br label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sge i32 %60, 48
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 %65, 57
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ false, %57 ], [ %66, %62 ]
  br i1 %68, label %43, label %69, !llvm.loop !11

69:                                               ; preds = %67
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %14

78:                                               ; preds = %37, %32
  br label %90

79:                                               ; preds = %30
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 45
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %7, align 8
  store i32 31, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %14

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %30, %89, %78
  %91 = load i32, i32* %8, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %90
  store i32 0, i32* %8, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp sgt i32 %94, 31
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 1, i32* %12, align 4
  store i32 31, i32* %11, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %106, %107
  %109 = shl i32 1, %108
  %110 = shl i32 %109, 1
  %111 = sub i32 %110, 1
  %112 = load i32, i32* %10, align 4
  %113 = shl i32 %111, %112
  br label %115

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %105
  %116 = phi i32 [ %113, %105 ], [ 0, %114 ]
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %120

119:                                              ; preds = %97
  store i32 1, i32* %12, align 4
  br label %120

120:                                              ; preds = %119, %115
  br label %121

121:                                              ; preds = %120, %90
  %122 = load i8*, i8** %7, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 44
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %7, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 59
  br i1 %130, label %131, label %134

131:                                              ; preds = %126, %121
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %7, align 8
  br label %14

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %10, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i64*, i64** %5, align 8
  %140 = icmp ne i64* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i64*, i64** %5, align 8
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %141, %138
  store i32 0, i32* %3, align 4
  br label %161

144:                                              ; preds = %135
  %145 = load i64*, i64** %5, align 8
  %146 = icmp ne i64* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load i8*, i8** %7, align 8
  %149 = load i8*, i8** %4, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = load i64*, i64** %5, align 8
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %147, %144
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32* @__errno_location() #2
  store i32 34, i32* %158, align 4
  br label %159

159:                                              ; preds = %157, %154
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %143
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
