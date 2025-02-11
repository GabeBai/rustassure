; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/ztrunc.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/ztrunc.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ztrunc(%struct.zahl* noundef %0, %struct.zahl* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.zahl*, %struct.zahl** %5, align 8
  %9 = call i32 @zzero(%struct.zahl* noundef %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.zahl*, %struct.zahl** %4, align 8
  %18 = getelementptr inbounds %struct.zahl, %struct.zahl* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %149

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, 63
  %22 = lshr i64 %21, 6
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.zahl*, %struct.zahl** %5, align 8
  %25 = getelementptr inbounds %struct.zahl, %struct.zahl* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i64, i64* %7, align 8
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.zahl*, %struct.zahl** %5, align 8
  %32 = getelementptr inbounds %struct.zahl, %struct.zahl* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i64 [ %29, %28 ], [ %33, %30 ]
  %36 = load %struct.zahl*, %struct.zahl** %4, align 8
  %37 = getelementptr inbounds %struct.zahl, %struct.zahl* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.zahl*, %struct.zahl** %4, align 8
  %39 = getelementptr inbounds %struct.zahl, %struct.zahl* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %40, %41
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i64 0, i64* %6, align 8
  br label %49

49:                                               ; preds = %48, %34
  %50 = load %struct.zahl*, %struct.zahl** %4, align 8
  %51 = load %struct.zahl*, %struct.zahl** %5, align 8
  %52 = icmp ne %struct.zahl* %50, %51
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %49
  %59 = load %struct.zahl*, %struct.zahl** %5, align 8
  %60 = getelementptr inbounds %struct.zahl, %struct.zahl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.zahl*, %struct.zahl** %4, align 8
  %63 = getelementptr inbounds %struct.zahl, %struct.zahl* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %58
  %65 = load %struct.zahl*, %struct.zahl** %4, align 8
  %66 = getelementptr inbounds %struct.zahl, %struct.zahl* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.zahl*, %struct.zahl** %4, align 8
  %69 = getelementptr inbounds %struct.zahl, %struct.zahl* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.zahl*, %struct.zahl** %4, align 8
  %74 = load %struct.zahl*, %struct.zahl** %4, align 8
  %75 = getelementptr inbounds %struct.zahl, %struct.zahl* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %73, i64 noundef %76)
  br label %77

77:                                               ; preds = %72, %64
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.zahl*, %struct.zahl** %4, align 8
  %80 = getelementptr inbounds %struct.zahl, %struct.zahl* %79, i32 0, i32 4
  %81 = load i64*, i64** %80, align 8
  %82 = load %struct.zahl*, %struct.zahl** %5, align 8
  %83 = getelementptr inbounds %struct.zahl, %struct.zahl* %82, i32 0, i32 4
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.zahl*, %struct.zahl** %4, align 8
  %86 = getelementptr inbounds %struct.zahl, %struct.zahl* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %81, i64* noundef %84, i64 noundef %87)
  br label %89

89:                                               ; preds = %78, %49
  %90 = load i64, i64* %6, align 8
  %91 = and i64 %90, 63
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %92, 0
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = sext i32 %96 to i64
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %89
  %100 = load i64, i64* %6, align 8
  %101 = shl i64 1, %100
  %102 = sub i64 %101, 1
  %103 = load %struct.zahl*, %struct.zahl** %4, align 8
  %104 = getelementptr inbounds %struct.zahl, %struct.zahl* %103, i32 0, i32 4
  %105 = load i64*, i64** %104, align 8
  %106 = load %struct.zahl*, %struct.zahl** %4, align 8
  %107 = getelementptr inbounds %struct.zahl, %struct.zahl* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = sub i64 %108, 1
  %110 = getelementptr inbounds i64, i64* %105, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = and i64 %111, %102
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %99, %89
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %135, %114
  %116 = load %struct.zahl*, %struct.zahl** %4, align 8
  %117 = getelementptr inbounds %struct.zahl, %struct.zahl* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load %struct.zahl*, %struct.zahl** %4, align 8
  %122 = getelementptr inbounds %struct.zahl, %struct.zahl* %121, i32 0, i32 4
  %123 = load i64*, i64** %122, align 8
  %124 = load %struct.zahl*, %struct.zahl** %4, align 8
  %125 = getelementptr inbounds %struct.zahl, %struct.zahl* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = sub i64 %126, 1
  %128 = getelementptr inbounds i64, i64* %123, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  %131 = xor i1 %130, true
  br label %132

132:                                              ; preds = %120, %115
  %133 = phi i1 [ false, %115 ], [ %131, %120 ]
  br i1 %133, label %134, label %140

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.zahl*, %struct.zahl** %4, align 8
  %137 = getelementptr inbounds %struct.zahl, %struct.zahl* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, -1
  store i64 %139, i64* %137, align 8
  br label %115, !llvm.loop !10

140:                                              ; preds = %132
  %141 = load %struct.zahl*, %struct.zahl** %4, align 8
  %142 = getelementptr inbounds %struct.zahl, %struct.zahl* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load %struct.zahl*, %struct.zahl** %4, align 8
  %147 = getelementptr inbounds %struct.zahl, %struct.zahl* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %140
  br label %149

149:                                              ; preds = %16, %148
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memcpy(...) #1

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
