; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_zadd_unsigned.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_zadd_unsigned.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_zadd_unsigned(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca %struct.zahl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store %struct.zahl* %2, %struct.zahl** %6, align 8
  %9 = load %struct.zahl*, %struct.zahl** %5, align 8
  %10 = call i32 @zzero(%struct.zahl* noundef %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.zahl*, %struct.zahl** %4, align 8
  %19 = load %struct.zahl*, %struct.zahl** %6, align 8
  call void @zabs(%struct.zahl* noundef %18, %struct.zahl* noundef %19)
  br label %214

20:                                               ; preds = %3
  %21 = load %struct.zahl*, %struct.zahl** %6, align 8
  %22 = call i32 @zzero(%struct.zahl* noundef %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.zahl*, %struct.zahl** %4, align 8
  %31 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zabs(%struct.zahl* noundef %30, %struct.zahl* noundef %31)
  br label %214

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.zahl*, %struct.zahl** %5, align 8
  %35 = getelementptr inbounds %struct.zahl, %struct.zahl* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.zahl*, %struct.zahl** %6, align 8
  %38 = getelementptr inbounds %struct.zahl, %struct.zahl* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.zahl*, %struct.zahl** %5, align 8
  %43 = getelementptr inbounds %struct.zahl, %struct.zahl* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  br label %49

45:                                               ; preds = %33
  %46 = load %struct.zahl*, %struct.zahl** %6, align 8
  %47 = getelementptr inbounds %struct.zahl, %struct.zahl* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i64 [ %44, %41 ], [ %48, %45 ]
  store i64 %50, i64* %7, align 8
  %51 = load %struct.zahl*, %struct.zahl** %5, align 8
  %52 = getelementptr inbounds %struct.zahl, %struct.zahl* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.zahl*, %struct.zahl** %6, align 8
  %55 = getelementptr inbounds %struct.zahl, %struct.zahl* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %53, %56
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %57, %58
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %49
  %61 = load %struct.zahl*, %struct.zahl** %4, align 8
  %62 = getelementptr inbounds %struct.zahl, %struct.zahl* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = add i64 %64, 1
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.zahl*, %struct.zahl** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  call void @libzahl_realloc(%struct.zahl* noundef %68, i64 noundef %70)
  br label %71

71:                                               ; preds = %67, %60
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.zahl*, %struct.zahl** %4, align 8
  %74 = getelementptr inbounds %struct.zahl, %struct.zahl* %73, i32 0, i32 4
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 0, i64* %77, align 8
  %78 = load %struct.zahl*, %struct.zahl** %4, align 8
  %79 = load %struct.zahl*, %struct.zahl** %5, align 8
  %80 = icmp eq %struct.zahl* %78, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %72
  %82 = load %struct.zahl*, %struct.zahl** %4, align 8
  %83 = getelementptr inbounds %struct.zahl, %struct.zahl* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.zahl*, %struct.zahl** %6, align 8
  %86 = getelementptr inbounds %struct.zahl, %struct.zahl* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %81
  %90 = load %struct.zahl*, %struct.zahl** %6, align 8
  %91 = getelementptr inbounds %struct.zahl, %struct.zahl* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %8, align 8
  %93 = load %struct.zahl*, %struct.zahl** %4, align 8
  %94 = getelementptr inbounds %struct.zahl, %struct.zahl* %93, i32 0, i32 4
  %95 = load i64*, i64** %94, align 8
  %96 = load %struct.zahl*, %struct.zahl** %4, align 8
  %97 = getelementptr inbounds %struct.zahl, %struct.zahl* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.zahl*, %struct.zahl** %4, align 8
  %102 = getelementptr inbounds %struct.zahl, %struct.zahl* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %100, %103
  %105 = call i32 bitcast (i32 (...)* @libzahl_memset to i32 (i64*, i32, i64)*)(i64* noundef %99, i32 noundef 0, i64 noundef %104)
  br label %106

106:                                              ; preds = %89, %81
  %107 = load %struct.zahl*, %struct.zahl** %4, align 8
  %108 = load %struct.zahl*, %struct.zahl** %6, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 bitcast (i32 (...)* @zadd_impl_3 to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %107, %struct.zahl* noundef %108, i64 noundef %109)
  br label %211

111:                                              ; preds = %72
  %112 = load %struct.zahl*, %struct.zahl** %4, align 8
  %113 = load %struct.zahl*, %struct.zahl** %6, align 8
  %114 = icmp eq %struct.zahl* %112, %113
  %115 = xor i1 %114, true
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = sext i32 %117 to i64
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %111
  %121 = load %struct.zahl*, %struct.zahl** %4, align 8
  %122 = getelementptr inbounds %struct.zahl, %struct.zahl* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.zahl*, %struct.zahl** %5, align 8
  %125 = getelementptr inbounds %struct.zahl, %struct.zahl* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %120
  %129 = load %struct.zahl*, %struct.zahl** %5, align 8
  %130 = getelementptr inbounds %struct.zahl, %struct.zahl* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %8, align 8
  %132 = load %struct.zahl*, %struct.zahl** %4, align 8
  %133 = getelementptr inbounds %struct.zahl, %struct.zahl* %132, i32 0, i32 4
  %134 = load i64*, i64** %133, align 8
  %135 = load %struct.zahl*, %struct.zahl** %4, align 8
  %136 = getelementptr inbounds %struct.zahl, %struct.zahl* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  %139 = load i64, i64* %8, align 8
  %140 = load %struct.zahl*, %struct.zahl** %4, align 8
  %141 = getelementptr inbounds %struct.zahl, %struct.zahl* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = sub i64 %139, %142
  %144 = call i32 bitcast (i32 (...)* @libzahl_memset to i32 (i64*, i32, i64)*)(i64* noundef %138, i32 noundef 0, i64 noundef %143)
  br label %145

145:                                              ; preds = %128, %120
  %146 = load %struct.zahl*, %struct.zahl** %4, align 8
  %147 = load %struct.zahl*, %struct.zahl** %5, align 8
  %148 = load i64, i64* %8, align 8
  %149 = call i32 bitcast (i32 (...)* @zadd_impl_3 to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %146, %struct.zahl* noundef %147, i64 noundef %148)
  br label %210

150:                                              ; preds = %111
  %151 = load %struct.zahl*, %struct.zahl** %5, align 8
  %152 = getelementptr inbounds %struct.zahl, %struct.zahl* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.zahl*, %struct.zahl** %6, align 8
  %155 = getelementptr inbounds %struct.zahl, %struct.zahl* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ugt i64 %153, %156
  %158 = xor i1 %157, true
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = sext i32 %160 to i64
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %150
  %164 = load %struct.zahl*, %struct.zahl** %4, align 8
  %165 = getelementptr inbounds %struct.zahl, %struct.zahl* %164, i32 0, i32 4
  %166 = load i64*, i64** %165, align 8
  %167 = load i64, i64* %8, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  %169 = load %struct.zahl*, %struct.zahl** %5, align 8
  %170 = getelementptr inbounds %struct.zahl, %struct.zahl* %169, i32 0, i32 4
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* %8, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* %8, align 8
  %176 = sub i64 %174, %175
  %177 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %168, i64* noundef %173, i64 noundef %176)
  %178 = load i64, i64* %7, align 8
  %179 = load %struct.zahl*, %struct.zahl** %4, align 8
  %180 = getelementptr inbounds %struct.zahl, %struct.zahl* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  %181 = load %struct.zahl*, %struct.zahl** %4, align 8
  %182 = load %struct.zahl*, %struct.zahl** %5, align 8
  %183 = load %struct.zahl*, %struct.zahl** %6, align 8
  %184 = load i64, i64* %8, align 8
  %185 = call i32 bitcast (i32 (...)* @zadd_impl_4 to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %181, %struct.zahl* noundef %182, %struct.zahl* noundef %183, i64 noundef %184)
  br label %209

186:                                              ; preds = %150
  %187 = load %struct.zahl*, %struct.zahl** %4, align 8
  %188 = getelementptr inbounds %struct.zahl, %struct.zahl* %187, i32 0, i32 4
  %189 = load i64*, i64** %188, align 8
  %190 = load i64, i64* %8, align 8
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  %192 = load %struct.zahl*, %struct.zahl** %6, align 8
  %193 = getelementptr inbounds %struct.zahl, %struct.zahl* %192, i32 0, i32 4
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* %8, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %7, align 8
  %198 = load i64, i64* %8, align 8
  %199 = sub i64 %197, %198
  %200 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %191, i64* noundef %196, i64 noundef %199)
  %201 = load i64, i64* %7, align 8
  %202 = load %struct.zahl*, %struct.zahl** %4, align 8
  %203 = getelementptr inbounds %struct.zahl, %struct.zahl* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  %204 = load %struct.zahl*, %struct.zahl** %4, align 8
  %205 = load %struct.zahl*, %struct.zahl** %5, align 8
  %206 = load %struct.zahl*, %struct.zahl** %6, align 8
  %207 = load i64, i64* %8, align 8
  %208 = call i32 bitcast (i32 (...)* @zadd_impl_4 to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %204, %struct.zahl* noundef %205, %struct.zahl* noundef %206, i64 noundef %207)
  br label %209

209:                                              ; preds = %186, %163
  br label %210

210:                                              ; preds = %209, %145
  br label %211

211:                                              ; preds = %210, %106
  %212 = load %struct.zahl*, %struct.zahl** %4, align 8
  %213 = getelementptr inbounds %struct.zahl, %struct.zahl* %212, i32 0, i32 0
  store i32 1, i32* %213, align 8
  br label %214

214:                                              ; preds = %211, %29, %17
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memset(...) #1

declare i32 @zadd_impl_3(...) #1

declare i32 @libzahl_memcpy(...) #1

declare i32 @zadd_impl_4(...) #1

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
