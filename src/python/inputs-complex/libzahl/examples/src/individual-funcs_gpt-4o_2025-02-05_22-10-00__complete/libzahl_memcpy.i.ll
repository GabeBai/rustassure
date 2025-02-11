; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memcpy.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memcpy.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_memcpy(i64* noalias noundef %0, i64* noalias noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  switch i64 %8, label %130 [
    i64 20, label %9
    i64 19, label %15
    i64 18, label %21
    i64 17, label %27
    i64 16, label %33
    i64 15, label %39
    i64 14, label %45
    i64 13, label %51
    i64 12, label %57
    i64 11, label %63
    i64 10, label %69
    i64 9, label %75
    i64 8, label %81
    i64 7, label %87
    i64 6, label %93
    i64 5, label %99
    i64 4, label %105
    i64 3, label %111
    i64 2, label %117
    i64 1, label %123
    i64 0, label %129
  ]

9:                                                ; preds = %3
  %10 = load i64*, i64** %5, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 19
  %12 = load i64, i64* %11, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 19
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %3, %9
  %16 = load i64*, i64** %5, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 18
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %4, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 18
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %3, %15
  %22 = load i64*, i64** %5, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 17
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 17
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %3, %21
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 16
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %4, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 16
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %3, %27
  %34 = load i64*, i64** %5, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 15
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 15
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %3, %33
  %40 = load i64*, i64** %5, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 14
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %4, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 14
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %3, %39
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 13
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %4, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 13
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %3, %45
  %52 = load i64*, i64** %5, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 12
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %4, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 12
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %3, %51
  %58 = load i64*, i64** %5, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 11
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %4, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 11
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %3, %57
  %64 = load i64*, i64** %5, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 10
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %4, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 10
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %3, %63
  %70 = load i64*, i64** %5, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 9
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %4, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 9
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %3, %69
  %76 = load i64*, i64** %5, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %4, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 8
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %3, %75
  %82 = load i64*, i64** %5, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 7
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %4, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 7
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %3, %81
  %88 = load i64*, i64** %5, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 6
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %4, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 6
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %3, %87
  %94 = load i64*, i64** %5, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 5
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %4, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 5
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %3, %93
  %100 = load i64*, i64** %5, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %4, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 4
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %3, %99
  %106 = load i64*, i64** %5, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %4, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 3
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %3, %105
  %112 = load i64*, i64** %5, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %4, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 2
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %3, %111
  %118 = load i64*, i64** %5, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %4, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %3, %117
  %124 = load i64*, i64** %5, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** %4, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %3, %123
  br label %176

130:                                              ; preds = %3
  store i64 0, i64* %7, align 8
  br label %131

131:                                              ; preds = %172, %130
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* %6, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %175

135:                                              ; preds = %131
  %136 = load i64*, i64** %5, align 8
  %137 = load i64, i64* %7, align 8
  %138 = add i64 %137, 0
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %4, align 8
  %142 = load i64, i64* %7, align 8
  %143 = add i64 %142, 0
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64 %140, i64* %144, align 8
  %145 = load i64*, i64** %5, align 8
  %146 = load i64, i64* %7, align 8
  %147 = add i64 %146, 1
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %4, align 8
  %151 = load i64, i64* %7, align 8
  %152 = add i64 %151, 1
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64 %149, i64* %153, align 8
  %154 = load i64*, i64** %5, align 8
  %155 = load i64, i64* %7, align 8
  %156 = add i64 %155, 2
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %4, align 8
  %160 = load i64, i64* %7, align 8
  %161 = add i64 %160, 2
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  store i64 %158, i64* %162, align 8
  %163 = load i64*, i64** %5, align 8
  %164 = load i64, i64* %7, align 8
  %165 = add i64 %164, 3
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %4, align 8
  %169 = load i64, i64* %7, align 8
  %170 = add i64 %169, 3
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  store i64 %167, i64* %171, align 8
  br label %172

172:                                              ; preds = %135
  %173 = load i64, i64* %7, align 8
  %174 = add i64 %173, 4
  store i64 %174, i64* %7, align 8
  br label %131, !llvm.loop !10

175:                                              ; preds = %131
  br label %176

176:                                              ; preds = %175, %129
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
