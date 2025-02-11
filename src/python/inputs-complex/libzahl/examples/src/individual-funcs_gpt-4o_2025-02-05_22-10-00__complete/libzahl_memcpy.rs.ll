; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memcpy.rs.bc'
source_filename = "libzahl_memcpy.087ef6bc-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc195 = private unnamed_addr constant <{ [88 x i8] }> <{ [88 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memcpy.rs" }>, align 1
@alloc84 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00#\00\00\00\1E\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc86 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00#\00\00\00\1C\00\00\00" }>, align 8
@alloc88 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00#\00\00\00\13\00\00\00" }>, align 8
@alloc90 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00#\00\00\00\11\00\00\00" }>, align 8
@alloc92 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00$\00\00\00\1E\00\00\00" }>, align 8
@alloc94 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00$\00\00\00\1C\00\00\00" }>, align 8
@alloc96 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00$\00\00\00\13\00\00\00" }>, align 8
@alloc98 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00$\00\00\00\11\00\00\00" }>, align 8
@alloc100 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00%\00\00\00\1E\00\00\00" }>, align 8
@alloc102 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00%\00\00\00\1C\00\00\00" }>, align 8
@alloc104 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00%\00\00\00\13\00\00\00" }>, align 8
@alloc106 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00%\00\00\00\11\00\00\00" }>, align 8
@alloc108 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00&\00\00\00\1E\00\00\00" }>, align 8
@alloc110 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00&\00\00\00\1C\00\00\00" }>, align 8
@alloc112 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00&\00\00\00\13\00\00\00" }>, align 8
@alloc114 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00&\00\00\00\11\00\00\00" }>, align 8
@alloc116 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00'\00\00\00\11\00\00\00" }>, align 8
@alloc118 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\1E\00\00\00\19\00\00\00" }>, align 8
@alloc120 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\1E\00\00\00\0E\00\00\00" }>, align 8
@alloc122 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\1D\00\00\00\19\00\00\00" }>, align 8
@alloc124 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\1D\00\00\00\0E\00\00\00" }>, align 8
@alloc126 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\1C\00\00\00\19\00\00\00" }>, align 8
@alloc128 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\1C\00\00\00\0E\00\00\00" }>, align 8
@alloc130 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\1B\00\00\00\19\00\00\00" }>, align 8
@alloc132 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\1B\00\00\00\0E\00\00\00" }>, align 8
@alloc134 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\1A\00\00\00\19\00\00\00" }>, align 8
@alloc136 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\1A\00\00\00\0E\00\00\00" }>, align 8
@alloc138 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\19\00\00\00\19\00\00\00" }>, align 8
@alloc140 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\19\00\00\00\0E\00\00\00" }>, align 8
@alloc142 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\18\00\00\00\19\00\00\00" }>, align 8
@alloc144 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\18\00\00\00\0E\00\00\00" }>, align 8
@alloc146 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\17\00\00\00\19\00\00\00" }>, align 8
@alloc148 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\17\00\00\00\0E\00\00\00" }>, align 8
@alloc150 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\16\00\00\00\19\00\00\00" }>, align 8
@alloc152 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\16\00\00\00\0E\00\00\00" }>, align 8
@alloc154 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\15\00\00\00\1B\00\00\00" }>, align 8
@alloc156 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\15\00\00\00\0F\00\00\00" }>, align 8
@alloc158 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\14\00\00\00\1B\00\00\00" }>, align 8
@alloc160 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\14\00\00\00\0F\00\00\00" }>, align 8
@alloc162 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\13\00\00\00\1B\00\00\00" }>, align 8
@alloc164 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\13\00\00\00\0F\00\00\00" }>, align 8
@alloc166 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\12\00\00\00\1B\00\00\00" }>, align 8
@alloc168 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\12\00\00\00\0F\00\00\00" }>, align 8
@alloc170 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\11\00\00\00\1B\00\00\00" }>, align 8
@alloc172 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\11\00\00\00\0F\00\00\00" }>, align 8
@alloc174 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\10\00\00\00\1B\00\00\00" }>, align 8
@alloc176 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\10\00\00\00\0F\00\00\00" }>, align 8
@alloc178 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0F\00\00\00\1B\00\00\00" }>, align 8
@alloc180 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0F\00\00\00\0F\00\00\00" }>, align 8
@alloc182 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0E\00\00\00\1B\00\00\00" }>, align 8
@alloc184 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0E\00\00\00\0F\00\00\00" }>, align 8
@alloc186 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0D\00\00\00\1B\00\00\00" }>, align 8
@alloc188 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0D\00\00\00\0F\00\00\00" }>, align 8
@alloc190 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0C\00\00\00\1B\00\00\00" }>, align 8
@alloc192 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0C\00\00\00\0F\00\00\00" }>, align 8
@alloc194 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0B\00\00\00\1B\00\00\00" }>, align 8
@alloc196 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc195, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0B\00\00\00\0F\00\00\00" }>, align 8

; Function Attrs: alwaysinline uwtable
define void @libzahl_memcpy([0 x i64]* align 8 %d.0, i64 %d.1, [0 x i64]* align 8 %s.0, i64 %s.1, i64 %n) unnamed_addr #0 {
start:
  %i = alloca i64, align 8
  switch i64 %n, label %bb1 [
    i64 20, label %bb2
    i64 19, label %bb5
    i64 18, label %bb8
    i64 17, label %bb11
    i64 16, label %bb14
    i64 15, label %bb17
    i64 14, label %bb20
    i64 13, label %bb23
    i64 12, label %bb26
    i64 11, label %bb29
    i64 10, label %bb32
    i64 9, label %bb35
    i64 8, label %bb38
    i64 7, label %bb41
    i64 6, label %bb44
    i64 5, label %bb47
    i64 4, label %bb50
    i64 3, label %bb53
    i64 2, label %bb56
    i64 1, label %bb59
    i64 0, label %bb81
  ]

bb1:                                              ; preds = %start
  store i64 0, i64* %i, align 8
  br label %bb62

bb2:                                              ; preds = %start
  %_7 = icmp ult i64 19, %s.1
  %0 = call i1 @llvm.expect.i1(i1 %_7, i1 true)
  br i1 %0, label %bb3, label %panic55

bb5:                                              ; preds = %start
  %_14 = icmp ult i64 18, %s.1
  %1 = call i1 @llvm.expect.i1(i1 %_14, i1 true)
  br i1 %1, label %bb6, label %panic53

bb8:                                              ; preds = %start
  %_21 = icmp ult i64 17, %s.1
  %2 = call i1 @llvm.expect.i1(i1 %_21, i1 true)
  br i1 %2, label %bb9, label %panic51

bb11:                                             ; preds = %start
  %_28 = icmp ult i64 16, %s.1
  %3 = call i1 @llvm.expect.i1(i1 %_28, i1 true)
  br i1 %3, label %bb12, label %panic49

bb14:                                             ; preds = %start
  %_35 = icmp ult i64 15, %s.1
  %4 = call i1 @llvm.expect.i1(i1 %_35, i1 true)
  br i1 %4, label %bb15, label %panic47

bb17:                                             ; preds = %start
  %_42 = icmp ult i64 14, %s.1
  %5 = call i1 @llvm.expect.i1(i1 %_42, i1 true)
  br i1 %5, label %bb18, label %panic45

bb20:                                             ; preds = %start
  %_49 = icmp ult i64 13, %s.1
  %6 = call i1 @llvm.expect.i1(i1 %_49, i1 true)
  br i1 %6, label %bb21, label %panic43

bb23:                                             ; preds = %start
  %_56 = icmp ult i64 12, %s.1
  %7 = call i1 @llvm.expect.i1(i1 %_56, i1 true)
  br i1 %7, label %bb24, label %panic41

bb26:                                             ; preds = %start
  %_63 = icmp ult i64 11, %s.1
  %8 = call i1 @llvm.expect.i1(i1 %_63, i1 true)
  br i1 %8, label %bb27, label %panic39

bb29:                                             ; preds = %start
  %_70 = icmp ult i64 10, %s.1
  %9 = call i1 @llvm.expect.i1(i1 %_70, i1 true)
  br i1 %9, label %bb30, label %panic37

bb32:                                             ; preds = %start
  %_77 = icmp ult i64 9, %s.1
  %10 = call i1 @llvm.expect.i1(i1 %_77, i1 true)
  br i1 %10, label %bb33, label %panic35

bb35:                                             ; preds = %start
  %_84 = icmp ult i64 8, %s.1
  %11 = call i1 @llvm.expect.i1(i1 %_84, i1 true)
  br i1 %11, label %bb36, label %panic33

bb38:                                             ; preds = %start
  %_91 = icmp ult i64 7, %s.1
  %12 = call i1 @llvm.expect.i1(i1 %_91, i1 true)
  br i1 %12, label %bb39, label %panic31

bb41:                                             ; preds = %start
  %_98 = icmp ult i64 6, %s.1
  %13 = call i1 @llvm.expect.i1(i1 %_98, i1 true)
  br i1 %13, label %bb42, label %panic29

bb44:                                             ; preds = %start
  %_105 = icmp ult i64 5, %s.1
  %14 = call i1 @llvm.expect.i1(i1 %_105, i1 true)
  br i1 %14, label %bb45, label %panic27

bb47:                                             ; preds = %start
  %_112 = icmp ult i64 4, %s.1
  %15 = call i1 @llvm.expect.i1(i1 %_112, i1 true)
  br i1 %15, label %bb48, label %panic25

bb50:                                             ; preds = %start
  %_119 = icmp ult i64 3, %s.1
  %16 = call i1 @llvm.expect.i1(i1 %_119, i1 true)
  br i1 %16, label %bb51, label %panic23

bb53:                                             ; preds = %start
  %_126 = icmp ult i64 2, %s.1
  %17 = call i1 @llvm.expect.i1(i1 %_126, i1 true)
  br i1 %17, label %bb54, label %panic21

bb56:                                             ; preds = %start
  %_133 = icmp ult i64 1, %s.1
  %18 = call i1 @llvm.expect.i1(i1 %_133, i1 true)
  br i1 %18, label %bb57, label %panic19

bb59:                                             ; preds = %start
  %_140 = icmp ult i64 0, %s.1
  %19 = call i1 @llvm.expect.i1(i1 %_140, i1 true)
  br i1 %19, label %bb60, label %panic17

bb81:                                             ; preds = %bb4, %bb7, %bb10, %bb13, %bb16, %bb19, %bb22, %bb25, %bb28, %bb31, %bb34, %bb37, %bb40, %bb43, %bb46, %bb49, %bb52, %bb55, %bb58, %bb61, %bb62, %start
  ret void

bb62:                                             ; preds = %bb80, %bb1
  %_146 = load i64, i64* %i, align 8
  %_145 = icmp ult i64 %_146, %n
  br i1 %_145, label %bb63, label %bb81

bb63:                                             ; preds = %bb62
  %_150 = load i64, i64* %i, align 8
  %20 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_150, i64 0)
  %_151.0 = extractvalue { i64, i1 } %20, 0
  %_151.1 = extractvalue { i64, i1 } %20, 1
  %21 = call i1 @llvm.expect.i1(i1 %_151.1, i1 false)
  br i1 %21, label %panic, label %bb64

bb64:                                             ; preds = %bb63
  %_153 = icmp ult i64 %_151.0, %s.1
  %22 = call i1 @llvm.expect.i1(i1 %_153, i1 true)
  br i1 %22, label %bb65, label %panic1

panic:                                            ; preds = %bb63
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc84 to %"core::panic::location::Location"*)) #4
  unreachable

bb65:                                             ; preds = %bb64
  %23 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_151.0
  %_148 = load i64, i64* %23, align 8
  %_155 = load i64, i64* %i, align 8
  %24 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_155, i64 0)
  %_156.0 = extractvalue { i64, i1 } %24, 0
  %_156.1 = extractvalue { i64, i1 } %24, 1
  %25 = call i1 @llvm.expect.i1(i1 %_156.1, i1 false)
  br i1 %25, label %panic2, label %bb66

panic1:                                           ; preds = %bb64
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_151.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc86 to %"core::panic::location::Location"*)) #4
  unreachable

bb66:                                             ; preds = %bb65
  %_158 = icmp ult i64 %_156.0, %d.1
  %26 = call i1 @llvm.expect.i1(i1 %_158, i1 true)
  br i1 %26, label %bb67, label %panic3

panic2:                                           ; preds = %bb65
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc88 to %"core::panic::location::Location"*)) #4
  unreachable

bb67:                                             ; preds = %bb66
  %27 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_156.0
  store i64 %_148, i64* %27, align 8
  %_161 = load i64, i64* %i, align 8
  %28 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_161, i64 1)
  %_162.0 = extractvalue { i64, i1 } %28, 0
  %_162.1 = extractvalue { i64, i1 } %28, 1
  %29 = call i1 @llvm.expect.i1(i1 %_162.1, i1 false)
  br i1 %29, label %panic4, label %bb68

panic3:                                           ; preds = %bb66
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_156.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc90 to %"core::panic::location::Location"*)) #4
  unreachable

bb68:                                             ; preds = %bb67
  %_164 = icmp ult i64 %_162.0, %s.1
  %30 = call i1 @llvm.expect.i1(i1 %_164, i1 true)
  br i1 %30, label %bb69, label %panic5

panic4:                                           ; preds = %bb67
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc92 to %"core::panic::location::Location"*)) #4
  unreachable

bb69:                                             ; preds = %bb68
  %31 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_162.0
  %_159 = load i64, i64* %31, align 8
  %_166 = load i64, i64* %i, align 8
  %32 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_166, i64 1)
  %_167.0 = extractvalue { i64, i1 } %32, 0
  %_167.1 = extractvalue { i64, i1 } %32, 1
  %33 = call i1 @llvm.expect.i1(i1 %_167.1, i1 false)
  br i1 %33, label %panic6, label %bb70

panic5:                                           ; preds = %bb68
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_162.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc94 to %"core::panic::location::Location"*)) #4
  unreachable

bb70:                                             ; preds = %bb69
  %_169 = icmp ult i64 %_167.0, %d.1
  %34 = call i1 @llvm.expect.i1(i1 %_169, i1 true)
  br i1 %34, label %bb71, label %panic7

panic6:                                           ; preds = %bb69
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc96 to %"core::panic::location::Location"*)) #4
  unreachable

bb71:                                             ; preds = %bb70
  %35 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_167.0
  store i64 %_159, i64* %35, align 8
  %_172 = load i64, i64* %i, align 8
  %36 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_172, i64 2)
  %_173.0 = extractvalue { i64, i1 } %36, 0
  %_173.1 = extractvalue { i64, i1 } %36, 1
  %37 = call i1 @llvm.expect.i1(i1 %_173.1, i1 false)
  br i1 %37, label %panic8, label %bb72

panic7:                                           ; preds = %bb70
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_167.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc98 to %"core::panic::location::Location"*)) #4
  unreachable

bb72:                                             ; preds = %bb71
  %_175 = icmp ult i64 %_173.0, %s.1
  %38 = call i1 @llvm.expect.i1(i1 %_175, i1 true)
  br i1 %38, label %bb73, label %panic9

panic8:                                           ; preds = %bb71
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc100 to %"core::panic::location::Location"*)) #4
  unreachable

bb73:                                             ; preds = %bb72
  %39 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_173.0
  %_170 = load i64, i64* %39, align 8
  %_177 = load i64, i64* %i, align 8
  %40 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_177, i64 2)
  %_178.0 = extractvalue { i64, i1 } %40, 0
  %_178.1 = extractvalue { i64, i1 } %40, 1
  %41 = call i1 @llvm.expect.i1(i1 %_178.1, i1 false)
  br i1 %41, label %panic10, label %bb74

panic9:                                           ; preds = %bb72
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_173.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc102 to %"core::panic::location::Location"*)) #4
  unreachable

bb74:                                             ; preds = %bb73
  %_180 = icmp ult i64 %_178.0, %d.1
  %42 = call i1 @llvm.expect.i1(i1 %_180, i1 true)
  br i1 %42, label %bb75, label %panic11

panic10:                                          ; preds = %bb73
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc104 to %"core::panic::location::Location"*)) #4
  unreachable

bb75:                                             ; preds = %bb74
  %43 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_178.0
  store i64 %_170, i64* %43, align 8
  %_183 = load i64, i64* %i, align 8
  %44 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_183, i64 3)
  %_184.0 = extractvalue { i64, i1 } %44, 0
  %_184.1 = extractvalue { i64, i1 } %44, 1
  %45 = call i1 @llvm.expect.i1(i1 %_184.1, i1 false)
  br i1 %45, label %panic12, label %bb76

panic11:                                          ; preds = %bb74
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_178.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc106 to %"core::panic::location::Location"*)) #4
  unreachable

bb76:                                             ; preds = %bb75
  %_186 = icmp ult i64 %_184.0, %s.1
  %46 = call i1 @llvm.expect.i1(i1 %_186, i1 true)
  br i1 %46, label %bb77, label %panic13

panic12:                                          ; preds = %bb75
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc108 to %"core::panic::location::Location"*)) #4
  unreachable

bb77:                                             ; preds = %bb76
  %47 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_184.0
  %_181 = load i64, i64* %47, align 8
  %_188 = load i64, i64* %i, align 8
  %48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_188, i64 3)
  %_189.0 = extractvalue { i64, i1 } %48, 0
  %_189.1 = extractvalue { i64, i1 } %48, 1
  %49 = call i1 @llvm.expect.i1(i1 %_189.1, i1 false)
  br i1 %49, label %panic14, label %bb78

panic13:                                          ; preds = %bb76
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_184.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc110 to %"core::panic::location::Location"*)) #4
  unreachable

bb78:                                             ; preds = %bb77
  %_191 = icmp ult i64 %_189.0, %d.1
  %50 = call i1 @llvm.expect.i1(i1 %_191, i1 true)
  br i1 %50, label %bb79, label %panic15

panic14:                                          ; preds = %bb77
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc112 to %"core::panic::location::Location"*)) #4
  unreachable

bb79:                                             ; preds = %bb78
  %51 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_189.0
  store i64 %_181, i64* %51, align 8
  %52 = load i64, i64* %i, align 8
  %53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %52, i64 4)
  %_192.0 = extractvalue { i64, i1 } %53, 0
  %_192.1 = extractvalue { i64, i1 } %53, 1
  %54 = call i1 @llvm.expect.i1(i1 %_192.1, i1 false)
  br i1 %54, label %panic16, label %bb80

panic15:                                          ; preds = %bb78
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_189.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc114 to %"core::panic::location::Location"*)) #4
  unreachable

bb80:                                             ; preds = %bb79
  store i64 %_192.0, i64* %i, align 8
  br label %bb62

panic16:                                          ; preds = %bb79
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc116 to %"core::panic::location::Location"*)) #4
  unreachable

bb60:                                             ; preds = %bb59
  %55 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 0
  %_137 = load i64, i64* %55, align 8
  %_143 = icmp ult i64 0, %d.1
  %56 = call i1 @llvm.expect.i1(i1 %_143, i1 true)
  br i1 %56, label %bb61, label %panic18

panic17:                                          ; preds = %bb59
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc118 to %"core::panic::location::Location"*)) #4
  unreachable

bb61:                                             ; preds = %bb60
  %57 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 0
  store i64 %_137, i64* %57, align 8
  br label %bb81

panic18:                                          ; preds = %bb60
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc120 to %"core::panic::location::Location"*)) #4
  unreachable

bb57:                                             ; preds = %bb56
  %58 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 1
  %_130 = load i64, i64* %58, align 8
  %_136 = icmp ult i64 1, %d.1
  %59 = call i1 @llvm.expect.i1(i1 %_136, i1 true)
  br i1 %59, label %bb58, label %panic20

panic19:                                          ; preds = %bb56
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc122 to %"core::panic::location::Location"*)) #4
  unreachable

bb58:                                             ; preds = %bb57
  %60 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 1
  store i64 %_130, i64* %60, align 8
  br label %bb81

panic20:                                          ; preds = %bb57
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc124 to %"core::panic::location::Location"*)) #4
  unreachable

bb54:                                             ; preds = %bb53
  %61 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 2
  %_123 = load i64, i64* %61, align 8
  %_129 = icmp ult i64 2, %d.1
  %62 = call i1 @llvm.expect.i1(i1 %_129, i1 true)
  br i1 %62, label %bb55, label %panic22

panic21:                                          ; preds = %bb53
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc126 to %"core::panic::location::Location"*)) #4
  unreachable

bb55:                                             ; preds = %bb54
  %63 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 2
  store i64 %_123, i64* %63, align 8
  br label %bb81

panic22:                                          ; preds = %bb54
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc128 to %"core::panic::location::Location"*)) #4
  unreachable

bb51:                                             ; preds = %bb50
  %64 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 3
  %_116 = load i64, i64* %64, align 8
  %_122 = icmp ult i64 3, %d.1
  %65 = call i1 @llvm.expect.i1(i1 %_122, i1 true)
  br i1 %65, label %bb52, label %panic24

panic23:                                          ; preds = %bb50
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 3, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc130 to %"core::panic::location::Location"*)) #4
  unreachable

bb52:                                             ; preds = %bb51
  %66 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 3
  store i64 %_116, i64* %66, align 8
  br label %bb81

panic24:                                          ; preds = %bb51
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 3, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc132 to %"core::panic::location::Location"*)) #4
  unreachable

bb48:                                             ; preds = %bb47
  %67 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 4
  %_109 = load i64, i64* %67, align 8
  %_115 = icmp ult i64 4, %d.1
  %68 = call i1 @llvm.expect.i1(i1 %_115, i1 true)
  br i1 %68, label %bb49, label %panic26

panic25:                                          ; preds = %bb47
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 4, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc134 to %"core::panic::location::Location"*)) #4
  unreachable

bb49:                                             ; preds = %bb48
  %69 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 4
  store i64 %_109, i64* %69, align 8
  br label %bb81

panic26:                                          ; preds = %bb48
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 4, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc136 to %"core::panic::location::Location"*)) #4
  unreachable

bb45:                                             ; preds = %bb44
  %70 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 5
  %_102 = load i64, i64* %70, align 8
  %_108 = icmp ult i64 5, %d.1
  %71 = call i1 @llvm.expect.i1(i1 %_108, i1 true)
  br i1 %71, label %bb46, label %panic28

panic27:                                          ; preds = %bb44
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 5, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc138 to %"core::panic::location::Location"*)) #4
  unreachable

bb46:                                             ; preds = %bb45
  %72 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 5
  store i64 %_102, i64* %72, align 8
  br label %bb81

panic28:                                          ; preds = %bb45
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 5, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc140 to %"core::panic::location::Location"*)) #4
  unreachable

bb42:                                             ; preds = %bb41
  %73 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 6
  %_95 = load i64, i64* %73, align 8
  %_101 = icmp ult i64 6, %d.1
  %74 = call i1 @llvm.expect.i1(i1 %_101, i1 true)
  br i1 %74, label %bb43, label %panic30

panic29:                                          ; preds = %bb41
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 6, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc142 to %"core::panic::location::Location"*)) #4
  unreachable

bb43:                                             ; preds = %bb42
  %75 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 6
  store i64 %_95, i64* %75, align 8
  br label %bb81

panic30:                                          ; preds = %bb42
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 6, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc144 to %"core::panic::location::Location"*)) #4
  unreachable

bb39:                                             ; preds = %bb38
  %76 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 7
  %_88 = load i64, i64* %76, align 8
  %_94 = icmp ult i64 7, %d.1
  %77 = call i1 @llvm.expect.i1(i1 %_94, i1 true)
  br i1 %77, label %bb40, label %panic32

panic31:                                          ; preds = %bb38
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 7, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc146 to %"core::panic::location::Location"*)) #4
  unreachable

bb40:                                             ; preds = %bb39
  %78 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 7
  store i64 %_88, i64* %78, align 8
  br label %bb81

panic32:                                          ; preds = %bb39
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 7, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc148 to %"core::panic::location::Location"*)) #4
  unreachable

bb36:                                             ; preds = %bb35
  %79 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 8
  %_81 = load i64, i64* %79, align 8
  %_87 = icmp ult i64 8, %d.1
  %80 = call i1 @llvm.expect.i1(i1 %_87, i1 true)
  br i1 %80, label %bb37, label %panic34

panic33:                                          ; preds = %bb35
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 8, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc150 to %"core::panic::location::Location"*)) #4
  unreachable

bb37:                                             ; preds = %bb36
  %81 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 8
  store i64 %_81, i64* %81, align 8
  br label %bb81

panic34:                                          ; preds = %bb36
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 8, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc152 to %"core::panic::location::Location"*)) #4
  unreachable

bb33:                                             ; preds = %bb32
  %82 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 9
  %_74 = load i64, i64* %82, align 8
  %_80 = icmp ult i64 9, %d.1
  %83 = call i1 @llvm.expect.i1(i1 %_80, i1 true)
  br i1 %83, label %bb34, label %panic36

panic35:                                          ; preds = %bb32
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 9, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc154 to %"core::panic::location::Location"*)) #4
  unreachable

bb34:                                             ; preds = %bb33
  %84 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 9
  store i64 %_74, i64* %84, align 8
  br label %bb81

panic36:                                          ; preds = %bb33
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 9, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc156 to %"core::panic::location::Location"*)) #4
  unreachable

bb30:                                             ; preds = %bb29
  %85 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 10
  %_67 = load i64, i64* %85, align 8
  %_73 = icmp ult i64 10, %d.1
  %86 = call i1 @llvm.expect.i1(i1 %_73, i1 true)
  br i1 %86, label %bb31, label %panic38

panic37:                                          ; preds = %bb29
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 10, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc158 to %"core::panic::location::Location"*)) #4
  unreachable

bb31:                                             ; preds = %bb30
  %87 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 10
  store i64 %_67, i64* %87, align 8
  br label %bb81

panic38:                                          ; preds = %bb30
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 10, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc160 to %"core::panic::location::Location"*)) #4
  unreachable

bb27:                                             ; preds = %bb26
  %88 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 11
  %_60 = load i64, i64* %88, align 8
  %_66 = icmp ult i64 11, %d.1
  %89 = call i1 @llvm.expect.i1(i1 %_66, i1 true)
  br i1 %89, label %bb28, label %panic40

panic39:                                          ; preds = %bb26
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 11, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc162 to %"core::panic::location::Location"*)) #4
  unreachable

bb28:                                             ; preds = %bb27
  %90 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 11
  store i64 %_60, i64* %90, align 8
  br label %bb81

panic40:                                          ; preds = %bb27
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 11, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc164 to %"core::panic::location::Location"*)) #4
  unreachable

bb24:                                             ; preds = %bb23
  %91 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 12
  %_53 = load i64, i64* %91, align 8
  %_59 = icmp ult i64 12, %d.1
  %92 = call i1 @llvm.expect.i1(i1 %_59, i1 true)
  br i1 %92, label %bb25, label %panic42

panic41:                                          ; preds = %bb23
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 12, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc166 to %"core::panic::location::Location"*)) #4
  unreachable

bb25:                                             ; preds = %bb24
  %93 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 12
  store i64 %_53, i64* %93, align 8
  br label %bb81

panic42:                                          ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 12, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc168 to %"core::panic::location::Location"*)) #4
  unreachable

bb21:                                             ; preds = %bb20
  %94 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 13
  %_46 = load i64, i64* %94, align 8
  %_52 = icmp ult i64 13, %d.1
  %95 = call i1 @llvm.expect.i1(i1 %_52, i1 true)
  br i1 %95, label %bb22, label %panic44

panic43:                                          ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 13, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc170 to %"core::panic::location::Location"*)) #4
  unreachable

bb22:                                             ; preds = %bb21
  %96 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 13
  store i64 %_46, i64* %96, align 8
  br label %bb81

panic44:                                          ; preds = %bb21
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 13, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc172 to %"core::panic::location::Location"*)) #4
  unreachable

bb18:                                             ; preds = %bb17
  %97 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 14
  %_39 = load i64, i64* %97, align 8
  %_45 = icmp ult i64 14, %d.1
  %98 = call i1 @llvm.expect.i1(i1 %_45, i1 true)
  br i1 %98, label %bb19, label %panic46

panic45:                                          ; preds = %bb17
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 14, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc174 to %"core::panic::location::Location"*)) #4
  unreachable

bb19:                                             ; preds = %bb18
  %99 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 14
  store i64 %_39, i64* %99, align 8
  br label %bb81

panic46:                                          ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 14, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc176 to %"core::panic::location::Location"*)) #4
  unreachable

bb15:                                             ; preds = %bb14
  %100 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 15
  %_32 = load i64, i64* %100, align 8
  %_38 = icmp ult i64 15, %d.1
  %101 = call i1 @llvm.expect.i1(i1 %_38, i1 true)
  br i1 %101, label %bb16, label %panic48

panic47:                                          ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 15, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc178 to %"core::panic::location::Location"*)) #4
  unreachable

bb16:                                             ; preds = %bb15
  %102 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 15
  store i64 %_32, i64* %102, align 8
  br label %bb81

panic48:                                          ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 15, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc180 to %"core::panic::location::Location"*)) #4
  unreachable

bb12:                                             ; preds = %bb11
  %103 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 16
  %_25 = load i64, i64* %103, align 8
  %_31 = icmp ult i64 16, %d.1
  %104 = call i1 @llvm.expect.i1(i1 %_31, i1 true)
  br i1 %104, label %bb13, label %panic50

panic49:                                          ; preds = %bb11
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 16, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc182 to %"core::panic::location::Location"*)) #4
  unreachable

bb13:                                             ; preds = %bb12
  %105 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 16
  store i64 %_25, i64* %105, align 8
  br label %bb81

panic50:                                          ; preds = %bb12
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 16, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc184 to %"core::panic::location::Location"*)) #4
  unreachable

bb9:                                              ; preds = %bb8
  %106 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 17
  %_18 = load i64, i64* %106, align 8
  %_24 = icmp ult i64 17, %d.1
  %107 = call i1 @llvm.expect.i1(i1 %_24, i1 true)
  br i1 %107, label %bb10, label %panic52

panic51:                                          ; preds = %bb8
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 17, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc186 to %"core::panic::location::Location"*)) #4
  unreachable

bb10:                                             ; preds = %bb9
  %108 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 17
  store i64 %_18, i64* %108, align 8
  br label %bb81

panic52:                                          ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 17, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc188 to %"core::panic::location::Location"*)) #4
  unreachable

bb6:                                              ; preds = %bb5
  %109 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 18
  %_11 = load i64, i64* %109, align 8
  %_17 = icmp ult i64 18, %d.1
  %110 = call i1 @llvm.expect.i1(i1 %_17, i1 true)
  br i1 %110, label %bb7, label %panic54

panic53:                                          ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 18, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc190 to %"core::panic::location::Location"*)) #4
  unreachable

bb7:                                              ; preds = %bb6
  %111 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 18
  store i64 %_11, i64* %111, align 8
  br label %bb81

panic54:                                          ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 18, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc192 to %"core::panic::location::Location"*)) #4
  unreachable

bb3:                                              ; preds = %bb2
  %112 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 19
  %_4 = load i64, i64* %112, align 8
  %_10 = icmp ult i64 19, %d.1
  %113 = call i1 @llvm.expect.i1(i1 %_10, i1 true)
  br i1 %113, label %bb4, label %panic56

panic55:                                          ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 19, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc194 to %"core::panic::location::Location"*)) #4
  unreachable

bb4:                                              ; preds = %bb3
  %114 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 19
  store i64 %_4, i64* %114, align 8
  br label %bb81

panic56:                                          ; preds = %bb3
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 19, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc196 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

attributes #0 = { alwaysinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memcpy.rs.bc", hash: (373942752, 2341643953, 3200247710, 2863530027, 1144545122))
^1 = gv: (name: "alloc182", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 267262799993970200
^2 = gv: (name: "alloc174", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 354632904878523559
^3 = gv: (name: "alloc94", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 381381134668669839
^4 = gv: (name: "alloc160", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 623109840381470636
^5 = gv: (name: "alloc84", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 636499424298906019
^6 = gv: (name: "alloc150", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 1002705656296435476
^7 = gv: (name: "alloc114", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 1138181710261143376
^8 = gv: (name: "alloc112", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 1410763497830576021
^9 = gv: (name: "alloc130", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 1769856984584385900
^10 = gv: (name: "alloc156", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 2081301744488755063
^11 = gv: (name: "alloc178", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 2288254656244128502
^12 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^13 = gv: (name: "alloc108", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 2588832724637681069
^14 = gv: (name: "alloc118", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 3964674547029346814
^15 = gv: (name: "alloc100", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 3975813628277010287
^16 = gv: (name: "alloc164", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 4094311396523129803
^17 = gv: (name: "alloc122", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 4200694359827578128
^18 = gv: (name: "alloc88", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 4688281974227663074
^19 = gv: (name: "alloc188", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 4876775268503375684
^20 = gv: (name: "alloc166", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 4896076673237318045
^21 = gv: (name: "alloc138", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 5256061104512695045
^22 = gv: (name: "alloc192", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 5745324720325180153
^23 = gv: (name: "alloc168", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 5905123205870965434
^24 = gv: (name: "alloc98", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 6358953605865981337
^25 = gv: (name: "alloc124", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 6710473599612814541
^26 = gv: (name: "alloc92", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 6802639522786325503
^27 = gv: (name: "alloc120", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 6890536364593133121
^28 = gv: (name: "alloc104", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 7142512976058455829
^29 = gv: (name: "alloc195", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7186771871206075323
^30 = gv: (name: "alloc148", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 7308739526385559472
^31 = gv: (name: "alloc96", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 7606004139614155910
^32 = gv: (name: "alloc190", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 7867453221661607233
^33 = gv: (name: "alloc146", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 8496145135470687855
^34 = gv: (name: "alloc162", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 8770797337783791001
^35 = gv: (name: "alloc180", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 10062951726927070398
^36 = gv: (name: "alloc144", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 10082955492186422575
^37 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^38 = gv: (name: "alloc140", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 10865027922492679396
^39 = gv: (name: "alloc116", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 11048447313977346374
^40 = gv: (name: "alloc102", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 11098276883086457853
^41 = gv: (name: "alloc184", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 11336105375309935291
^42 = gv: (name: "libzahl_memcpy", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 438, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 1, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^37), (callee: ^63)), refs: (^5, ^43, ^61, ^18, ^53, ^26, ^3, ^31, ^24, ^15, ^40, ^28, ^57, ^13, ^44, ^8, ^7, ^39, ^14, ^27, ^17, ^25, ^64, ^45, ^9, ^49, ^50, ^58, ^21, ^38, ^56, ^36, ^33, ^30, ^6, ^51, ^60, ^10, ^55, ^4, ^34, ^16, ^20, ^23, ^54, ^62, ^2, ^46, ^11, ^35, ^1, ^41, ^47, ^19, ^32, ^22, ^59, ^48)))) ; guid = 11838894465342582843
^43 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12134449308857880920
^44 = gv: (name: "alloc110", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 12292218589507083268
^45 = gv: (name: "alloc128", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 12323238472100633158
^46 = gv: (name: "alloc176", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 13038394207449891533
^47 = gv: (name: "alloc186", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 13550373384973148727
^48 = gv: (name: "alloc196", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 13983955398608706488
^49 = gv: (name: "alloc132", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 14129032034863739797
^50 = gv: (name: "alloc134", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 14294500970906709023
^51 = gv: (name: "alloc152", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 14320205003604999308
^52 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^53 = gv: (name: "alloc90", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 15448088043588503345
^54 = gv: (name: "alloc170", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 16021738806252143499
^55 = gv: (name: "alloc158", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 16268754415908000764
^56 = gv: (name: "alloc142", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 16467467824131966146
^57 = gv: (name: "alloc106", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 16677311846912150193
^58 = gv: (name: "alloc136", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 17141010549098197949
^59 = gv: (name: "alloc194", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 17168082606519012867
^60 = gv: (name: "alloc154", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 17290493145229716161
^61 = gv: (name: "alloc86", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 17319579842279993135
^62 = gv: (name: "alloc172", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 17997625139895280607
^63 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^64 = gv: (name: "alloc126", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^29)))) ; guid = 18416122751071551477
^65 = blockcount: 139
