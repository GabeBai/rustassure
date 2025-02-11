; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrsh.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrsh.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrsh(%struct.zahl* noundef %0, %struct.zahl* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.zahl*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.zahl* %0, %struct.zahl** %4, align 8
  store %struct.zahl* %1, %struct.zahl** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.zahl*, %struct.zahl** %4, align 8
  %21 = load %struct.zahl*, %struct.zahl** %5, align 8
  %22 = icmp ne %struct.zahl* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.zahl*, %struct.zahl** %4, align 8
  %25 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zset(%struct.zahl* noundef %24, %struct.zahl* noundef %25)
  br label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %26
  br label %214

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = lshr i64 %29, 6
  store i64 %30, i64* %8, align 8
  %31 = load %struct.zahl*, %struct.zahl** %5, align 8
  %32 = call i32 @zzero(%struct.zahl* noundef %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.zahl*, %struct.zahl** %5, align 8
  %37 = getelementptr inbounds %struct.zahl, %struct.zahl* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.zahl*, %struct.zahl** %5, align 8
  %42 = call i64 @zbits(%struct.zahl* noundef %41)
  %43 = load i64, i64* %6, align 8
  %44 = icmp ule i64 %42, %43
  br label %45

45:                                               ; preds = %40, %34, %28
  %46 = phi i1 [ true, %34 ], [ true, %28 ], [ %44, %40 ]
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.zahl*, %struct.zahl** %4, align 8
  %54 = getelementptr inbounds %struct.zahl, %struct.zahl* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %214

55:                                               ; preds = %45
  %56 = load i64, i64* %6, align 8
  %57 = and i64 %56, 63
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = sub i64 64, %58
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %55
  %68 = load %struct.zahl*, %struct.zahl** %4, align 8
  %69 = load %struct.zahl*, %struct.zahl** %5, align 8
  %70 = icmp eq %struct.zahl* %68, %69
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %67
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.zahl*, %struct.zahl** %4, align 8
  %79 = getelementptr inbounds %struct.zahl, %struct.zahl* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.zahl*, %struct.zahl** %4, align 8
  %83 = getelementptr inbounds %struct.zahl, %struct.zahl* %82, i32 0, i32 4
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.zahl*, %struct.zahl** %4, align 8
  %86 = getelementptr inbounds %struct.zahl, %struct.zahl* %85, i32 0, i32 4
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load %struct.zahl*, %struct.zahl** %4, align 8
  %91 = getelementptr inbounds %struct.zahl, %struct.zahl* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i32 bitcast (i32 (...)* @libzahl_memmove to i32 (i64*, i64*, i64)*)(i64* noundef %84, i64* noundef %89, i64 noundef %92)
  br label %139

94:                                               ; preds = %67, %55
  %95 = load %struct.zahl*, %struct.zahl** %4, align 8
  %96 = load %struct.zahl*, %struct.zahl** %5, align 8
  %97 = icmp ne %struct.zahl* %95, %96
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %138

103:                                              ; preds = %94
  %104 = load %struct.zahl*, %struct.zahl** %5, align 8
  %105 = getelementptr inbounds %struct.zahl, %struct.zahl* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = sub i64 %106, %107
  %109 = load %struct.zahl*, %struct.zahl** %4, align 8
  %110 = getelementptr inbounds %struct.zahl, %struct.zahl* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %103
  %112 = load %struct.zahl*, %struct.zahl** %4, align 8
  %113 = getelementptr inbounds %struct.zahl, %struct.zahl* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.zahl*, %struct.zahl** %4, align 8
  %116 = getelementptr inbounds %struct.zahl, %struct.zahl* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %114, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load %struct.zahl*, %struct.zahl** %4, align 8
  %121 = load %struct.zahl*, %struct.zahl** %4, align 8
  %122 = getelementptr inbounds %struct.zahl, %struct.zahl* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %120, i64 noundef %123)
  br label %124

124:                                              ; preds = %119, %111
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.zahl*, %struct.zahl** %4, align 8
  %127 = getelementptr inbounds %struct.zahl, %struct.zahl* %126, i32 0, i32 4
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.zahl*, %struct.zahl** %5, align 8
  %130 = getelementptr inbounds %struct.zahl, %struct.zahl* %129, i32 0, i32 4
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load %struct.zahl*, %struct.zahl** %4, align 8
  %135 = getelementptr inbounds %struct.zahl, %struct.zahl* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %128, i64* noundef %133, i64 noundef %136)
  br label %138

138:                                              ; preds = %125, %94
  br label %139

139:                                              ; preds = %138, %76
  %140 = load i64, i64* %6, align 8
  %141 = icmp ne i64 %140, 0
  %142 = xor i1 %141, true
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = sext i32 %144 to i64
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %209

147:                                              ; preds = %139
  %148 = load i64, i64* %6, align 8
  %149 = load %struct.zahl*, %struct.zahl** %4, align 8
  %150 = getelementptr inbounds %struct.zahl, %struct.zahl* %149, i32 0, i32 4
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 0
  %153 = load i64, i64* %152, align 8
  %154 = lshr i64 %153, %148
  store i64 %154, i64* %152, align 8
  store i64 1, i64* %7, align 8
  br label %155

155:                                              ; preds = %186, %147
  %156 = load i64, i64* %7, align 8
  %157 = load %struct.zahl*, %struct.zahl** %4, align 8
  %158 = getelementptr inbounds %struct.zahl, %struct.zahl* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ult i64 %156, %159
  br i1 %160, label %161, label %189

161:                                              ; preds = %155
  %162 = load %struct.zahl*, %struct.zahl** %4, align 8
  %163 = getelementptr inbounds %struct.zahl, %struct.zahl* %162, i32 0, i32 4
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %9, align 8
  %169 = shl i64 %167, %168
  %170 = load %struct.zahl*, %struct.zahl** %4, align 8
  %171 = getelementptr inbounds %struct.zahl, %struct.zahl* %170, i32 0, i32 4
  %172 = load i64*, i64** %171, align 8
  %173 = load i64, i64* %7, align 8
  %174 = sub i64 %173, 1
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = or i64 %176, %169
  store i64 %177, i64* %175, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load %struct.zahl*, %struct.zahl** %4, align 8
  %180 = getelementptr inbounds %struct.zahl, %struct.zahl* %179, i32 0, i32 4
  %181 = load i64*, i64** %180, align 8
  %182 = load i64, i64* %7, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = lshr i64 %184, %178
  store i64 %185, i64* %183, align 8
  br label %186

186:                                              ; preds = %161
  %187 = load i64, i64* %7, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %7, align 8
  br label %155, !llvm.loop !10

189:                                              ; preds = %155
  br label %190

190:                                              ; preds = %203, %189
  %191 = load %struct.zahl*, %struct.zahl** %4, align 8
  %192 = getelementptr inbounds %struct.zahl, %struct.zahl* %191, i32 0, i32 4
  %193 = load i64*, i64** %192, align 8
  %194 = load %struct.zahl*, %struct.zahl** %4, align 8
  %195 = getelementptr inbounds %struct.zahl, %struct.zahl* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = sub i64 %196, 1
  %198 = getelementptr inbounds i64, i64* %193, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  %201 = xor i1 %200, true
  br i1 %201, label %202, label %208

202:                                              ; preds = %190
  br label %203

203:                                              ; preds = %202
  %204 = load %struct.zahl*, %struct.zahl** %4, align 8
  %205 = getelementptr inbounds %struct.zahl, %struct.zahl* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, -1
  store i64 %207, i64* %205, align 8
  br label %190, !llvm.loop !12

208:                                              ; preds = %190
  br label %209

209:                                              ; preds = %208, %139
  %210 = load %struct.zahl*, %struct.zahl** %5, align 8
  %211 = call i32 @zsignum(%struct.zahl* noundef %210)
  %212 = load %struct.zahl*, %struct.zahl** %4, align 8
  %213 = getelementptr inbounds %struct.zahl, %struct.zahl* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %209, %52, %27
  ret void
}

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare i64 @zbits(%struct.zahl* noundef) #1

declare i32 @libzahl_memmove(...) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memcpy(...) #1

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
!12 = distinct !{!12, !11}
