; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zlsh.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zlsh.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zlsh(%struct.zahl* noundef %0, %struct.zahl* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.zahl*, %struct.zahl** %5, align 8
  %13 = call i32 @zzero(%struct.zahl* noundef %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.zahl*, %struct.zahl** %4, align 8
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %161

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = lshr i64 %24, 6
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = and i64 %26, 63
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 64, %28
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %23
  %31 = load %struct.zahl*, %struct.zahl** %4, align 8
  %32 = getelementptr inbounds %struct.zahl, %struct.zahl* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.zahl*, %struct.zahl** %5, align 8
  %35 = getelementptr inbounds %struct.zahl, %struct.zahl* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %36, %37
  %39 = add i64 %38, 1
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %30
  %42 = load %struct.zahl*, %struct.zahl** %4, align 8
  %43 = load %struct.zahl*, %struct.zahl** %5, align 8
  %44 = getelementptr inbounds %struct.zahl, %struct.zahl* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %45, %46
  %48 = add i64 %47, 1
  call void @libzahl_realloc(%struct.zahl* noundef %42, i64 noundef %48)
  br label %49

49:                                               ; preds = %41, %30
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.zahl*, %struct.zahl** %4, align 8
  %52 = load %struct.zahl*, %struct.zahl** %5, align 8
  %53 = icmp eq %struct.zahl* %51, %52
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %50
  %60 = load %struct.zahl*, %struct.zahl** %4, align 8
  %61 = getelementptr inbounds %struct.zahl, %struct.zahl* %60, i32 0, i32 4
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load %struct.zahl*, %struct.zahl** %5, align 8
  %66 = getelementptr inbounds %struct.zahl, %struct.zahl* %65, i32 0, i32 4
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.zahl*, %struct.zahl** %5, align 8
  %69 = getelementptr inbounds %struct.zahl, %struct.zahl* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 bitcast (i32 (...)* @libzahl_memmoveb to i32 (i64*, i64*, i64)*)(i64* noundef %64, i64* noundef %67, i64 noundef %70)
  br label %85

72:                                               ; preds = %50
  %73 = load %struct.zahl*, %struct.zahl** %4, align 8
  %74 = getelementptr inbounds %struct.zahl, %struct.zahl* %73, i32 0, i32 4
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load %struct.zahl*, %struct.zahl** %5, align 8
  %79 = getelementptr inbounds %struct.zahl, %struct.zahl* %78, i32 0, i32 4
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.zahl*, %struct.zahl** %5, align 8
  %82 = getelementptr inbounds %struct.zahl, %struct.zahl* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %77, i64* noundef %80, i64 noundef %83)
  br label %85

85:                                               ; preds = %72, %59
  %86 = load %struct.zahl*, %struct.zahl** %4, align 8
  %87 = getelementptr inbounds %struct.zahl, %struct.zahl* %86, i32 0, i32 4
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i32 bitcast (i32 (...)* @libzahl_memset_precise to i32 (i64*, i32, i64)*)(i64* noundef %88, i32 noundef 0, i64 noundef %89)
  %91 = load %struct.zahl*, %struct.zahl** %5, align 8
  %92 = getelementptr inbounds %struct.zahl, %struct.zahl* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.zahl*, %struct.zahl** %4, align 8
  %97 = getelementptr inbounds %struct.zahl, %struct.zahl* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %6, align 8
  %99 = icmp ne i64 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %156

105:                                              ; preds = %85
  %106 = load i64, i64* %8, align 8
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %139, %105
  %108 = load i64, i64* %7, align 8
  %109 = load %struct.zahl*, %struct.zahl** %4, align 8
  %110 = getelementptr inbounds %struct.zahl, %struct.zahl* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %108, %111
  br i1 %112, label %113, label %142

113:                                              ; preds = %107
  %114 = load %struct.zahl*, %struct.zahl** %4, align 8
  %115 = getelementptr inbounds %struct.zahl, %struct.zahl* %114, i32 0, i32 4
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = lshr i64 %119, %120
  store i64 %121, i64* %11, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load %struct.zahl*, %struct.zahl** %4, align 8
  %124 = getelementptr inbounds %struct.zahl, %struct.zahl* %123, i32 0, i32 4
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = shl i64 %128, %122
  store i64 %129, i64* %127, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.zahl*, %struct.zahl** %4, align 8
  %132 = getelementptr inbounds %struct.zahl, %struct.zahl* %131, i32 0, i32 4
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %7, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = or i64 %136, %130
  store i64 %137, i64* %135, align 8
  %138 = load i64, i64* %11, align 8
  store i64 %138, i64* %10, align 8
  br label %139

139:                                              ; preds = %113
  %140 = load i64, i64* %7, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %7, align 8
  br label %107, !llvm.loop !10

142:                                              ; preds = %107
  %143 = load i64, i64* %10, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i64, i64* %10, align 8
  %147 = load %struct.zahl*, %struct.zahl** %4, align 8
  %148 = getelementptr inbounds %struct.zahl, %struct.zahl* %147, i32 0, i32 4
  %149 = load i64*, i64** %148, align 8
  %150 = load %struct.zahl*, %struct.zahl** %4, align 8
  %151 = getelementptr inbounds %struct.zahl, %struct.zahl* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %151, align 8
  %154 = getelementptr inbounds i64, i64* %149, i64 %152
  store i64 %146, i64* %154, align 8
  br label %155

155:                                              ; preds = %145, %142
  br label %156

156:                                              ; preds = %155, %85
  %157 = load %struct.zahl*, %struct.zahl** %5, align 8
  %158 = call i32 @zsignum(%struct.zahl* noundef %157)
  %159 = load %struct.zahl*, %struct.zahl** %4, align 8
  %160 = getelementptr inbounds %struct.zahl, %struct.zahl* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %156, %20
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memmoveb(...) #1

declare i32 @libzahl_memcpy(...) #1

declare i32 @libzahl_memset_precise(...) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

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
