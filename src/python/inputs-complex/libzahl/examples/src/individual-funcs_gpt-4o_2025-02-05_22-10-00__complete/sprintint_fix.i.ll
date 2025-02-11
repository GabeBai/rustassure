; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/sprintint_fix.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/sprintint_fix.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @sprintint_fix(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = bitcast i8* %8 to i16*
  store i16* %9, i16** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = urem i64 %11, 100
  %13 = mul i64 2, %12
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = bitcast i8* %14 to i16*
  %16 = load i16, i16* %15, align 2
  %17 = load i16*, i16** %6, align 8
  %18 = getelementptr inbounds i16, i16* %17, i64 8
  store i16 %16, i16* %18, align 2
  %19 = load i64, i64* %4, align 8
  %20 = udiv i64 %19, 100
  store i64 %20, i64* %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = urem i64 %22, 100
  %24 = mul i64 2, %23
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = bitcast i8* %25 to i16*
  %27 = load i16, i16* %26, align 2
  %28 = load i16*, i16** %6, align 8
  %29 = getelementptr inbounds i16, i16* %28, i64 7
  store i16 %27, i16* %29, align 2
  %30 = load i64, i64* %4, align 8
  %31 = udiv i64 %30, 100
  store i64 %31, i64* %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = urem i64 %33, 100
  %35 = mul i64 2, %34
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = bitcast i8* %36 to i16*
  %38 = load i16, i16* %37, align 2
  %39 = load i16*, i16** %6, align 8
  %40 = getelementptr inbounds i16, i16* %39, i64 6
  store i16 %38, i16* %40, align 2
  %41 = load i64, i64* %4, align 8
  %42 = udiv i64 %41, 100
  store i64 %42, i64* %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = urem i64 %44, 100
  %46 = mul i64 2, %45
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = bitcast i8* %47 to i16*
  %49 = load i16, i16* %48, align 2
  %50 = load i16*, i16** %6, align 8
  %51 = getelementptr inbounds i16, i16* %50, i64 5
  store i16 %49, i16* %51, align 2
  %52 = load i64, i64* %4, align 8
  %53 = udiv i64 %52, 100
  store i64 %53, i64* %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %4, align 8
  %56 = urem i64 %55, 100
  %57 = mul i64 2, %56
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = bitcast i8* %58 to i16*
  %60 = load i16, i16* %59, align 2
  %61 = load i16*, i16** %6, align 8
  %62 = getelementptr inbounds i16, i16* %61, i64 4
  store i16 %60, i16* %62, align 2
  %63 = load i64, i64* %4, align 8
  %64 = udiv i64 %63, 100
  store i64 %64, i64* %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %4, align 8
  %67 = urem i64 %66, 100
  %68 = mul i64 2, %67
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = bitcast i8* %69 to i16*
  %71 = load i16, i16* %70, align 2
  %72 = load i16*, i16** %6, align 8
  %73 = getelementptr inbounds i16, i16* %72, i64 3
  store i16 %71, i16* %73, align 2
  %74 = load i64, i64* %4, align 8
  %75 = udiv i64 %74, 100
  store i64 %75, i64* %4, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* %4, align 8
  %78 = urem i64 %77, 100
  %79 = mul i64 2, %78
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = bitcast i8* %80 to i16*
  %82 = load i16, i16* %81, align 2
  %83 = load i16*, i16** %6, align 8
  %84 = getelementptr inbounds i16, i16* %83, i64 2
  store i16 %82, i16* %84, align 2
  %85 = load i64, i64* %4, align 8
  %86 = udiv i64 %85, 100
  store i64 %86, i64* %4, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i64, i64* %4, align 8
  %89 = urem i64 %88, 100
  %90 = mul i64 2, %89
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = bitcast i8* %91 to i16*
  %93 = load i16, i16* %92, align 2
  %94 = load i16*, i16** %6, align 8
  %95 = getelementptr inbounds i16, i16* %94, i64 1
  store i16 %93, i16* %95, align 2
  %96 = load i64, i64* %4, align 8
  %97 = udiv i64 %96, 100
  store i64 %97, i64* %4, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i64, i64* %4, align 8
  %100 = urem i64 %99, 100
  %101 = mul i64 2, %100
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = bitcast i8* %102 to i16*
  %104 = load i16, i16* %103, align 2
  %105 = load i16*, i16** %6, align 8
  %106 = getelementptr inbounds i16, i16* %105, i64 0
  store i16 %104, i16* %106, align 2
  %107 = load i64, i64* %4, align 8
  %108 = udiv i64 %107, 100
  store i64 %108, i64* %4, align 8
  %109 = load i64, i64* %4, align 8
  %110 = add i64 48, %109
  %111 = trunc i64 %110 to i8
  %112 = load i8*, i8** %3, align 8
  store i8 %111, i8* %112, align 1
  %113 = load i8*, i8** %3, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 19
  store i8 0, i8* %114, align 1
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
