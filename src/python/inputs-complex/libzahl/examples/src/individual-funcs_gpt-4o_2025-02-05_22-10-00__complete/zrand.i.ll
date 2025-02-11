; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zrand.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@libzahl_const_1 = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrand_fd() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrand_libc_rand() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrand_libc_random() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrand_libc_rand48() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrand(%struct.zahl* noundef %0, i32 noundef %1, i32 noundef %2, %struct.zahl* noundef %3) #0 {
  %5 = alloca %struct.zahl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zahl*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca void (i8*, i64, i8*)*, align 8
  store %struct.zahl* %0, %struct.zahl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.zahl* %3, %struct.zahl** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 -1, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store void (i8*, i64, i8*)* bitcast (void ()* @zrand_fd to void (i8*, i64, i8*)*), void (i8*, i64, i8*)** %13, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %20 [
    i32 0, label %15
    i32 1, label %16
    i32 4, label %17
    i32 2, label %18
    i32 3, label %18
    i32 5, label %18
    i32 6, label %19
  ]

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %22

16:                                               ; preds = %4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %22

17:                                               ; preds = %4
  store void (i8*, i64, i8*)* bitcast (void ()* @zrand_libc_rand to void (i8*, i64, i8*)*), void (i8*, i64, i8*)** %13, align 8
  br label %22

18:                                               ; preds = %4, %4, %4
  store void (i8*, i64, i8*)* bitcast (void ()* @zrand_libc_random to void (i8*, i64, i8*)*), void (i8*, i64, i8*)** %13, align 8
  br label %22

19:                                               ; preds = %4
  store void (i8*, i64, i8*)* bitcast (void ()* @zrand_libc_rand48 to void (i8*, i64, i8*)*), void (i8*, i64, i8*)** %13, align 8
  br label %22

20:                                               ; preds = %4
  %21 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef 22)
  br label %22

22:                                               ; preds = %20, %19, %18, %17, %16, %15
  %23 = load %struct.zahl*, %struct.zahl** %8, align 8
  %24 = call i32 @zzero(%struct.zahl* noundef %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.zahl*, %struct.zahl** %5, align 8
  %33 = getelementptr inbounds %struct.zahl, %struct.zahl* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %164

34:                                               ; preds = %22
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 (i8*, i32, ...) @"\01_open"(i8* noundef %38, i32 noundef 0)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = call i32* @__error()
  %49 = load i32, i32* %48, align 4
  %50 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef %49)
  br label %51

51:                                               ; preds = %47, %37
  %52 = bitcast i32* %11 to i8*
  store i8* %52, i8** %12, align 8
  br label %53

53:                                               ; preds = %51, %34
  %54 = load i32, i32* %7, align 4
  switch i32 %54, label %156 [
    i32 0, label %55
    i32 1, label %86
    i32 2, label %119
  ]

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.zahl*, %struct.zahl** %8, align 8
  %58 = call i32 @zsignum(%struct.zahl* noundef %57)
  %59 = icmp slt i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -4)
  br label %67

67:                                               ; preds = %65, %56
  %68 = load %struct.zahl*, %struct.zahl** %8, align 8
  %69 = call i64 @zbits(%struct.zahl* noundef %68)
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %67
  %71 = load %struct.zahl*, %struct.zahl** %5, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %13, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 bitcast (i32 (...)* @zrand_get_random_bits to i32 (%struct.zahl*, i64, void (i8*, i64, i8*)*, i8*)*)(%struct.zahl* noundef %71, i64 noundef %72, void (i8*, i64, i8*)* noundef %73, i8* noundef %74)
  br label %76

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.zahl*, %struct.zahl** %5, align 8
  %79 = load %struct.zahl*, %struct.zahl** %5, align 8
  call void @zadd(%struct.zahl* noundef %78, %struct.zahl* noundef %79, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0))
  %80 = load %struct.zahl*, %struct.zahl** %5, align 8
  %81 = load %struct.zahl*, %struct.zahl** %5, align 8
  %82 = load %struct.zahl*, %struct.zahl** %8, align 8
  call void @zmul(%struct.zahl* noundef %80, %struct.zahl* noundef %81, %struct.zahl* noundef %82)
  %83 = load %struct.zahl*, %struct.zahl** %5, align 8
  %84 = load %struct.zahl*, %struct.zahl** %5, align 8
  %85 = load i64, i64* %10, align 8
  call void @zrsh(%struct.zahl* noundef %83, %struct.zahl* noundef %84, i64 noundef %85)
  br label %158

86:                                               ; preds = %53
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.zahl*, %struct.zahl** %8, align 8
  %89 = call i32 @zsignum(%struct.zahl* noundef %88)
  %90 = icmp slt i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -4)
  br label %98

98:                                               ; preds = %96, %87
  %99 = load %struct.zahl*, %struct.zahl** %8, align 8
  %100 = call i64 @zbits(%struct.zahl* noundef %99)
  store i64 %100, i64* %10, align 8
  br label %101

101:                                              ; preds = %107, %98
  %102 = load %struct.zahl*, %struct.zahl** %5, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %13, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 bitcast (i32 (...)* @zrand_get_random_bits to i32 (%struct.zahl*, i64, void (i8*, i64, i8*)*, i8*)*)(%struct.zahl* noundef %102, i64 noundef %103, void (i8*, i64, i8*)* noundef %104, i8* noundef %105)
  br label %107

107:                                              ; preds = %101
  %108 = load %struct.zahl*, %struct.zahl** %5, align 8
  %109 = load %struct.zahl*, %struct.zahl** %8, align 8
  %110 = call i32 @zcmpmag(%struct.zahl* noundef %108, %struct.zahl* noundef %109)
  %111 = icmp sgt i32 %110, 0
  %112 = xor i1 %111, true
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %101, label %117, !llvm.loop !10

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117
  br label %158

119:                                              ; preds = %53
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.zahl*, %struct.zahl** %8, align 8
  %122 = call i32 @zsignum(%struct.zahl* noundef %121)
  %123 = icmp slt i32 %122, 0
  %124 = xor i1 %123, true
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = sext i32 %126 to i64
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef -4)
  br label %131

131:                                              ; preds = %129, %120
  %132 = load %struct.zahl*, %struct.zahl** %8, align 8
  %133 = call i64 @zbits(%struct.zahl* noundef %132)
  store i64 %133, i64* %10, align 8
  br label %134

134:                                              ; preds = %131
  %135 = load %struct.zahl*, %struct.zahl** %5, align 8
  %136 = load i64, i64* %10, align 8
  %137 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %13, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 bitcast (i32 (...)* @zrand_get_random_bits to i32 (%struct.zahl*, i64, void (i8*, i64, i8*)*, i8*)*)(%struct.zahl* noundef %135, i64 noundef %136, void (i8*, i64, i8*)* noundef %137, i8* noundef %138)
  br label %140

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.zahl*, %struct.zahl** %5, align 8
  %143 = load %struct.zahl*, %struct.zahl** %8, align 8
  %144 = call i32 @zcmpmag(%struct.zahl* noundef %142, %struct.zahl* noundef %143)
  %145 = icmp sgt i32 %144, 0
  %146 = xor i1 %145, true
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = sext i32 %148 to i64
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %141
  %152 = load %struct.zahl*, %struct.zahl** %5, align 8
  %153 = load %struct.zahl*, %struct.zahl** %5, align 8
  %154 = load %struct.zahl*, %struct.zahl** %8, align 8
  call void @zsub(%struct.zahl* noundef %152, %struct.zahl* noundef %153, %struct.zahl* noundef %154)
  br label %155

155:                                              ; preds = %151, %141
  br label %158

156:                                              ; preds = %53
  %157 = call i32 bitcast (i32 (...)* @libzahl_failure to i32 (i32)*)(i32 noundef 22)
  br label %158

158:                                              ; preds = %156, %155, %118, %77
  %159 = load i32, i32* %11, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @"\01_close"(i32 noundef %162)
  br label %164

164:                                              ; preds = %31, %161, %158
  ret void
}

declare i32 @libzahl_failure(...) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare i32 @"\01_open"(i8* noundef, i32 noundef, ...) #1

declare i32* @__error() #1

declare i32 @zsignum(%struct.zahl* noundef) #1

declare i64 @zbits(%struct.zahl* noundef) #1

declare i32 @zrand_get_random_bits(...) #1

declare void @zadd(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmul(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zrsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zsub(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @"\01_close"(i32 noundef) #1

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
