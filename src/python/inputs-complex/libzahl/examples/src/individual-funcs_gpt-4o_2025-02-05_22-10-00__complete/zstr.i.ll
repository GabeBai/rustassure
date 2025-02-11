; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zstr.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zstr.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_temp_allocation = external global i8*, align 8
@libzahl_tmp_str_num = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_rem = external global [1 x %struct.zahl], align 8
@libzahl_const_1e19 = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @zstr(%struct.zahl* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [20 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store %struct.zahl* %0, %struct.zahl** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %12, align 8
  store i8 0, i8* %13, align 1
  %14 = load %struct.zahl*, %struct.zahl** %5, align 8
  %15 = call i32 @zzero(%struct.zahl* noundef %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = call i8* @malloc(i64 noundef 2) #5
  store i8* %32, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = call i32 bitcast (i32 (...)* @libzahl_memfailure to i32 ()*)()
  br label %42

42:                                               ; preds = %40, %31, %22
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 48, i8* %44, align 1
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %6, align 8
  store i8* %47, i8** %4, align 8
  br label %187

48:                                               ; preds = %3
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load %struct.zahl*, %struct.zahl** %5, align 8
  %53 = getelementptr inbounds %struct.zahl, %struct.zahl* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = mul i64 20, %54
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %56
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  %68 = call i8* @malloc(i64 noundef %67) #5
  store i8* %68, i8** @libzahl_temp_allocation, align 8
  store i8* %68, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = call i32 bitcast (i32 (...)* @libzahl_memfailure to i32 ()*)()
  br label %78

78:                                               ; preds = %76, %65, %56
  %79 = load %struct.zahl*, %struct.zahl** %5, align 8
  %80 = call i32 @zsignum(%struct.zahl* noundef %79)
  %81 = icmp slt i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %10, align 8
  %84 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zabs(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef %84)
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 45, i8* %86, align 1
  %87 = load i64, i64* %10, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %89, i8** %6, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %7, align 8
  %92 = sub i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  store i64 %93, i64* %11, align 8
  %94 = icmp ugt i64 %93, 19
  br i1 %94, label %95, label %98

95:                                               ; preds = %78
  %96 = load i64, i64* %7, align 8
  %97 = sub i64 %96, 19
  br label %99

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98, %95
  %100 = phi i64 [ %97, %95 ], [ 0, %98 ]
  store i64 %100, i64* %7, align 8
  br label %101

101:                                              ; preds = %181, %99
  call void @zdivmod(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0))
  %102 = call i32 @zzero(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = sext i32 %107 to i64
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %143

110:                                              ; preds = %101
  %111 = load i8*, i8** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = call i32 @zzero(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %121

117:                                              ; preds = %110
  %118 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0, i32 4), align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  br label %121

121:                                              ; preds = %117, %116
  %122 = phi i64 [ 0, %116 ], [ %120, %117 ]
  %123 = call i32 bitcast (i32 (...)* @sprintint_fix to i32 (i8*, i64)*)(i8* noundef %113, i64 noundef %122)
  %124 = load i8, i8* %13, align 1
  %125 = load i8*, i8** %6, align 8
  %126 = load i64, i64* %7, align 8
  %127 = add i64 %126, 19
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  store i8 %124, i8* %128, align 1
  %129 = load i8*, i8** %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i8, i8* %131, align 1
  store i8 %132, i8* %13, align 1
  %133 = load i64, i64* %7, align 8
  store i64 %133, i64* %11, align 8
  %134 = icmp ugt i64 %133, 19
  br i1 %134, label %135, label %138

135:                                              ; preds = %121
  %136 = load i64, i64* %7, align 8
  %137 = sub i64 %136, 19
  br label %139

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138, %135
  %140 = phi i64 [ %137, %135 ], [ 0, %138 ]
  store i64 %140, i64* %7, align 8
  %141 = load i64, i64* %12, align 8
  %142 = add i64 %141, 19
  store i64 %142, i64* %12, align 8
  br label %181

143:                                              ; preds = %101
  %144 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %145 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0, i32 4), align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 bitcast (i32 (...)* @sprintint_min to i32 (i8*, i64)*)(i8* noundef %144, i64 noundef %147)
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %9, align 8
  %150 = load i64, i64* %12, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %143
  %153 = load i8*, i8** %6, align 8
  %154 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %155 = load i64, i64* %9, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = call i64 @llvm.objectsize.i64.p0i8(i8* %156, i1 false, i1 true, i1 false)
  %158 = call i8* @__memcpy_chk(i8* noundef %153, i8* noundef %154, i64 noundef %155, i64 noundef %157) #6
  %159 = load i8*, i8** %6, align 8
  %160 = load i64, i64* %9, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = load i8*, i8** %6, align 8
  %163 = load i64, i64* %11, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i64, i64* %12, align 8
  %166 = add i64 %165, 1
  %167 = load i8*, i8** %6, align 8
  %168 = load i64, i64* %9, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  %170 = call i64 @llvm.objectsize.i64.p0i8(i8* %169, i1 false, i1 true, i1 false)
  %171 = call i8* @__memmove_chk(i8* noundef %161, i8* noundef %164, i64 noundef %166, i64 noundef %170) #6
  br label %180

172:                                              ; preds = %143
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %175 = load i64, i64* %9, align 8
  %176 = add i64 %175, 1
  %177 = load i8*, i8** %6, align 8
  %178 = call i64 @llvm.objectsize.i64.p0i8(i8* %177, i1 false, i1 true, i1 false)
  %179 = call i8* @__memcpy_chk(i8* noundef %173, i8* noundef %174, i64 noundef %176, i64 noundef %178) #6
  br label %180

180:                                              ; preds = %172, %152
  br label %182

181:                                              ; preds = %139
  br label %101

182:                                              ; preds = %180
  store i8* null, i8** @libzahl_temp_allocation, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = load i64, i64* %10, align 8
  %185 = sub i64 0, %184
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  store i8* %186, i8** %4, align 8
  br label %187

187:                                              ; preds = %182, %42
  %188 = load i8*, i8** %4, align 8
  ret i8* %188
}

declare i32 @zzero(%struct.zahl* noundef) #1

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #2

declare i32 @libzahl_memfailure(...) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zdivmod(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @sprintint_fix(...) #1

declare i32 @sprintint_min(...) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind
declare i8* @__memmove_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

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
