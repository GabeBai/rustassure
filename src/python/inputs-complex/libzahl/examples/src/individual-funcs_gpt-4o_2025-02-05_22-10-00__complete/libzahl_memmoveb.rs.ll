; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memmoveb.rs.bc'
source_filename = "libzahl_memmoveb.79dcd81a-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc193 = private unnamed_addr constant <{ [90 x i8] }> <{ [90 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memmoveb.rs" }>, align 1
@alloc84 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\1F\00\00\00\1A\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc86 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00!\00\00\00\11\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc88 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00$\00\00\00'\00\00\00" }>, align 8
@alloc90 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00$\00\00\00%\00\00\00" }>, align 8
@alloc92 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00$\00\00\00\13\00\00\00" }>, align 8
@alloc94 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00$\00\00\00\11\00\00\00" }>, align 8
@alloc96 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00%\00\00\00'\00\00\00" }>, align 8
@alloc98 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00%\00\00\00%\00\00\00" }>, align 8
@alloc100 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00%\00\00\00\13\00\00\00" }>, align 8
@alloc102 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00%\00\00\00\11\00\00\00" }>, align 8
@alloc104 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00&\00\00\00'\00\00\00" }>, align 8
@alloc106 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00&\00\00\00%\00\00\00" }>, align 8
@alloc108 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00&\00\00\00\13\00\00\00" }>, align 8
@alloc110 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00&\00\00\00\11\00\00\00" }>, align 8
@alloc112 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00'\00\00\00!\00\00\00" }>, align 8
@alloc114 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00'\00\00\00\11\00\00\00" }>, align 8
@alloc116 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\1C\00\00\00\19\00\00\00" }>, align 8
@alloc118 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\1C\00\00\00\0E\00\00\00" }>, align 8
@alloc120 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\1B\00\00\00\19\00\00\00" }>, align 8
@alloc122 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\1B\00\00\00\0E\00\00\00" }>, align 8
@alloc124 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\1A\00\00\00\19\00\00\00" }>, align 8
@alloc126 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\1A\00\00\00\0E\00\00\00" }>, align 8
@alloc128 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\19\00\00\00\19\00\00\00" }>, align 8
@alloc130 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\19\00\00\00\0E\00\00\00" }>, align 8
@alloc132 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\18\00\00\00\19\00\00\00" }>, align 8
@alloc134 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\18\00\00\00\0E\00\00\00" }>, align 8
@alloc136 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\17\00\00\00\19\00\00\00" }>, align 8
@alloc138 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\17\00\00\00\0E\00\00\00" }>, align 8
@alloc140 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\16\00\00\00\19\00\00\00" }>, align 8
@alloc142 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\16\00\00\00\0E\00\00\00" }>, align 8
@alloc144 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\15\00\00\00\19\00\00\00" }>, align 8
@alloc146 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\15\00\00\00\0E\00\00\00" }>, align 8
@alloc148 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\14\00\00\00\19\00\00\00" }>, align 8
@alloc150 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\14\00\00\00\0E\00\00\00" }>, align 8
@alloc152 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\13\00\00\00\1B\00\00\00" }>, align 8
@alloc154 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\13\00\00\00\0F\00\00\00" }>, align 8
@alloc156 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\12\00\00\00\1B\00\00\00" }>, align 8
@alloc158 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\12\00\00\00\0F\00\00\00" }>, align 8
@alloc160 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\11\00\00\00\1B\00\00\00" }>, align 8
@alloc162 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\11\00\00\00\0F\00\00\00" }>, align 8
@alloc164 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\10\00\00\00\1B\00\00\00" }>, align 8
@alloc166 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\10\00\00\00\0F\00\00\00" }>, align 8
@alloc168 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0F\00\00\00\1B\00\00\00" }>, align 8
@alloc170 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0F\00\00\00\0F\00\00\00" }>, align 8
@alloc172 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0E\00\00\00\1B\00\00\00" }>, align 8
@alloc174 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0E\00\00\00\0F\00\00\00" }>, align 8
@alloc176 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0D\00\00\00\1B\00\00\00" }>, align 8
@alloc178 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0D\00\00\00\0F\00\00\00" }>, align 8
@alloc180 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0C\00\00\00\1B\00\00\00" }>, align 8
@alloc182 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0C\00\00\00\0F\00\00\00" }>, align 8
@alloc184 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0B\00\00\00\1B\00\00\00" }>, align 8
@alloc186 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0B\00\00\00\0F\00\00\00" }>, align 8
@alloc188 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0A\00\00\00\1B\00\00\00" }>, align 8
@alloc190 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\0A\00\00\00\0F\00\00\00" }>, align 8
@alloc192 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\09\00\00\00\1B\00\00\00" }>, align 8
@alloc194 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc193, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\09\00\00\00\0F\00\00\00" }>, align 8

; Function Attrs: alwaysinline uwtable
define void @libzahl_memmoveb([0 x i64]* align 8 %d.0, i64 %d.1, [0 x i64]* align 8 %s.0, i64 %s.1, i64 %n) unnamed_addr #0 {
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
    i64 0, label %bb80
  ]

bb1:                                              ; preds = %start
  %0 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %n, i64 3)
  %_148.0 = extractvalue { i64, i1 } %0, 0
  %_148.1 = extractvalue { i64, i1 } %0, 1
  %1 = call i1 @llvm.expect.i1(i1 %_148.1, i1 false)
  br i1 %1, label %panic, label %bb62

bb2:                                              ; preds = %start
  %_7 = icmp ult i64 19, %s.1
  %2 = call i1 @llvm.expect.i1(i1 %_7, i1 true)
  br i1 %2, label %bb3, label %panic54

bb5:                                              ; preds = %start
  %_14 = icmp ult i64 18, %s.1
  %3 = call i1 @llvm.expect.i1(i1 %_14, i1 true)
  br i1 %3, label %bb6, label %panic52

bb8:                                              ; preds = %start
  %_21 = icmp ult i64 17, %s.1
  %4 = call i1 @llvm.expect.i1(i1 %_21, i1 true)
  br i1 %4, label %bb9, label %panic50

bb11:                                             ; preds = %start
  %_28 = icmp ult i64 16, %s.1
  %5 = call i1 @llvm.expect.i1(i1 %_28, i1 true)
  br i1 %5, label %bb12, label %panic48

bb14:                                             ; preds = %start
  %_35 = icmp ult i64 15, %s.1
  %6 = call i1 @llvm.expect.i1(i1 %_35, i1 true)
  br i1 %6, label %bb15, label %panic46

bb17:                                             ; preds = %start
  %_42 = icmp ult i64 14, %s.1
  %7 = call i1 @llvm.expect.i1(i1 %_42, i1 true)
  br i1 %7, label %bb18, label %panic44

bb20:                                             ; preds = %start
  %_49 = icmp ult i64 13, %s.1
  %8 = call i1 @llvm.expect.i1(i1 %_49, i1 true)
  br i1 %8, label %bb21, label %panic42

bb23:                                             ; preds = %start
  %_56 = icmp ult i64 12, %s.1
  %9 = call i1 @llvm.expect.i1(i1 %_56, i1 true)
  br i1 %9, label %bb24, label %panic40

bb26:                                             ; preds = %start
  %_63 = icmp ult i64 11, %s.1
  %10 = call i1 @llvm.expect.i1(i1 %_63, i1 true)
  br i1 %10, label %bb27, label %panic38

bb29:                                             ; preds = %start
  %_70 = icmp ult i64 10, %s.1
  %11 = call i1 @llvm.expect.i1(i1 %_70, i1 true)
  br i1 %11, label %bb30, label %panic36

bb32:                                             ; preds = %start
  %_77 = icmp ult i64 9, %s.1
  %12 = call i1 @llvm.expect.i1(i1 %_77, i1 true)
  br i1 %12, label %bb33, label %panic34

bb35:                                             ; preds = %start
  %_84 = icmp ult i64 8, %s.1
  %13 = call i1 @llvm.expect.i1(i1 %_84, i1 true)
  br i1 %13, label %bb36, label %panic32

bb38:                                             ; preds = %start
  %_91 = icmp ult i64 7, %s.1
  %14 = call i1 @llvm.expect.i1(i1 %_91, i1 true)
  br i1 %14, label %bb39, label %panic30

bb41:                                             ; preds = %start
  %_98 = icmp ult i64 6, %s.1
  %15 = call i1 @llvm.expect.i1(i1 %_98, i1 true)
  br i1 %15, label %bb42, label %panic28

bb44:                                             ; preds = %start
  %_105 = icmp ult i64 5, %s.1
  %16 = call i1 @llvm.expect.i1(i1 %_105, i1 true)
  br i1 %16, label %bb45, label %panic26

bb47:                                             ; preds = %start
  %_112 = icmp ult i64 4, %s.1
  %17 = call i1 @llvm.expect.i1(i1 %_112, i1 true)
  br i1 %17, label %bb48, label %panic24

bb50:                                             ; preds = %start
  %_119 = icmp ult i64 3, %s.1
  %18 = call i1 @llvm.expect.i1(i1 %_119, i1 true)
  br i1 %18, label %bb51, label %panic22

bb53:                                             ; preds = %start
  %_126 = icmp ult i64 2, %s.1
  %19 = call i1 @llvm.expect.i1(i1 %_126, i1 true)
  br i1 %19, label %bb54, label %panic20

bb56:                                             ; preds = %start
  %_133 = icmp ult i64 1, %s.1
  %20 = call i1 @llvm.expect.i1(i1 %_133, i1 true)
  br i1 %20, label %bb57, label %panic18

bb59:                                             ; preds = %start
  %_140 = icmp ult i64 0, %s.1
  %21 = call i1 @llvm.expect.i1(i1 %_140, i1 true)
  br i1 %21, label %bb60, label %panic16

bb80:                                             ; preds = %bb4, %bb7, %bb10, %bb13, %bb16, %bb19, %bb22, %bb25, %bb28, %bb31, %bb34, %bb37, %bb40, %bb43, %bb46, %bb49, %bb52, %bb55, %bb58, %bb61, %bb64, %start
  ret void

bb62:                                             ; preds = %bb1
  %22 = and i64 %_148.0, -4
  store i64 %22, i64* %i, align 8
  br label %bb63

panic:                                            ; preds = %bb1
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc84 to %"core::panic::location::Location"*)) #4
  unreachable

bb63:                                             ; preds = %bb79, %bb62
  %23 = load i64, i64* %i, align 8
  %24 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %23, i64 4)
  %_151.0 = extractvalue { i64, i1 } %24, 0
  %_151.1 = extractvalue { i64, i1 } %24, 1
  %25 = call i1 @llvm.expect.i1(i1 %_151.1, i1 false)
  br i1 %25, label %panic1, label %bb64

bb64:                                             ; preds = %bb63
  store i64 %_151.0, i64* %i, align 8
  %_152 = load i64, i64* %i, align 8
  %_150 = icmp sge i64 %_152, 0
  br i1 %_150, label %bb65, label %bb80

panic1:                                           ; preds = %bb63
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc86 to %"core::panic::location::Location"*)) #4
  unreachable

bb65:                                             ; preds = %bb64
  %_156 = load i64, i64* %i, align 8
  %26 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_156, i64 3)
  %_157.0 = extractvalue { i64, i1 } %26, 0
  %_157.1 = extractvalue { i64, i1 } %26, 1
  %27 = call i1 @llvm.expect.i1(i1 %_157.1, i1 false)
  br i1 %27, label %panic2, label %bb66

bb66:                                             ; preds = %bb65
  %_159 = icmp ult i64 %_157.0, %s.1
  %28 = call i1 @llvm.expect.i1(i1 %_159, i1 true)
  br i1 %28, label %bb67, label %panic3

panic2:                                           ; preds = %bb65
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc88 to %"core::panic::location::Location"*)) #4
  unreachable

bb67:                                             ; preds = %bb66
  %29 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_157.0
  %_153 = load i64, i64* %29, align 8
  %_162 = load i64, i64* %i, align 8
  %30 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_162, i64 3)
  %_163.0 = extractvalue { i64, i1 } %30, 0
  %_163.1 = extractvalue { i64, i1 } %30, 1
  %31 = call i1 @llvm.expect.i1(i1 %_163.1, i1 false)
  br i1 %31, label %panic4, label %bb68

panic3:                                           ; preds = %bb66
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_157.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc90 to %"core::panic::location::Location"*)) #4
  unreachable

bb68:                                             ; preds = %bb67
  %_165 = icmp ult i64 %_163.0, %d.1
  %32 = call i1 @llvm.expect.i1(i1 %_165, i1 true)
  br i1 %32, label %bb69, label %panic5

panic4:                                           ; preds = %bb67
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc92 to %"core::panic::location::Location"*)) #4
  unreachable

bb69:                                             ; preds = %bb68
  %33 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_163.0
  store i64 %_153, i64* %33, align 8
  %_169 = load i64, i64* %i, align 8
  %34 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_169, i64 2)
  %_170.0 = extractvalue { i64, i1 } %34, 0
  %_170.1 = extractvalue { i64, i1 } %34, 1
  %35 = call i1 @llvm.expect.i1(i1 %_170.1, i1 false)
  br i1 %35, label %panic6, label %bb70

panic5:                                           ; preds = %bb68
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_163.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc94 to %"core::panic::location::Location"*)) #4
  unreachable

bb70:                                             ; preds = %bb69
  %_172 = icmp ult i64 %_170.0, %s.1
  %36 = call i1 @llvm.expect.i1(i1 %_172, i1 true)
  br i1 %36, label %bb71, label %panic7

panic6:                                           ; preds = %bb69
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc96 to %"core::panic::location::Location"*)) #4
  unreachable

bb71:                                             ; preds = %bb70
  %37 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_170.0
  %_166 = load i64, i64* %37, align 8
  %_175 = load i64, i64* %i, align 8
  %38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_175, i64 2)
  %_176.0 = extractvalue { i64, i1 } %38, 0
  %_176.1 = extractvalue { i64, i1 } %38, 1
  %39 = call i1 @llvm.expect.i1(i1 %_176.1, i1 false)
  br i1 %39, label %panic8, label %bb72

panic7:                                           ; preds = %bb70
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_170.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc98 to %"core::panic::location::Location"*)) #4
  unreachable

bb72:                                             ; preds = %bb71
  %_178 = icmp ult i64 %_176.0, %d.1
  %40 = call i1 @llvm.expect.i1(i1 %_178, i1 true)
  br i1 %40, label %bb73, label %panic9

panic8:                                           ; preds = %bb71
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc100 to %"core::panic::location::Location"*)) #4
  unreachable

bb73:                                             ; preds = %bb72
  %41 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_176.0
  store i64 %_166, i64* %41, align 8
  %_182 = load i64, i64* %i, align 8
  %42 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_182, i64 1)
  %_183.0 = extractvalue { i64, i1 } %42, 0
  %_183.1 = extractvalue { i64, i1 } %42, 1
  %43 = call i1 @llvm.expect.i1(i1 %_183.1, i1 false)
  br i1 %43, label %panic10, label %bb74

panic9:                                           ; preds = %bb72
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_176.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc102 to %"core::panic::location::Location"*)) #4
  unreachable

bb74:                                             ; preds = %bb73
  %_185 = icmp ult i64 %_183.0, %s.1
  %44 = call i1 @llvm.expect.i1(i1 %_185, i1 true)
  br i1 %44, label %bb75, label %panic11

panic10:                                          ; preds = %bb73
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc104 to %"core::panic::location::Location"*)) #4
  unreachable

bb75:                                             ; preds = %bb74
  %45 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_183.0
  %_179 = load i64, i64* %45, align 8
  %_188 = load i64, i64* %i, align 8
  %46 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_188, i64 1)
  %_189.0 = extractvalue { i64, i1 } %46, 0
  %_189.1 = extractvalue { i64, i1 } %46, 1
  %47 = call i1 @llvm.expect.i1(i1 %_189.1, i1 false)
  br i1 %47, label %panic12, label %bb76

panic11:                                          ; preds = %bb74
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_183.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc106 to %"core::panic::location::Location"*)) #4
  unreachable

bb76:                                             ; preds = %bb75
  %_191 = icmp ult i64 %_189.0, %d.1
  %48 = call i1 @llvm.expect.i1(i1 %_191, i1 true)
  br i1 %48, label %bb77, label %panic13

panic12:                                          ; preds = %bb75
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc108 to %"core::panic::location::Location"*)) #4
  unreachable

bb77:                                             ; preds = %bb76
  %49 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_189.0
  store i64 %_179, i64* %49, align 8
  %_194 = load i64, i64* %i, align 8
  %_196 = icmp ult i64 %_194, %s.1
  %50 = call i1 @llvm.expect.i1(i1 %_196, i1 true)
  br i1 %50, label %bb78, label %panic14

panic13:                                          ; preds = %bb76
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_189.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc110 to %"core::panic::location::Location"*)) #4
  unreachable

bb78:                                             ; preds = %bb77
  %51 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_194
  %_192 = load i64, i64* %51, align 8
  %_198 = load i64, i64* %i, align 8
  %_200 = icmp ult i64 %_198, %d.1
  %52 = call i1 @llvm.expect.i1(i1 %_200, i1 true)
  br i1 %52, label %bb79, label %panic15

panic14:                                          ; preds = %bb77
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_194, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc112 to %"core::panic::location::Location"*)) #4
  unreachable

bb79:                                             ; preds = %bb78
  %53 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_198
  store i64 %_192, i64* %53, align 8
  br label %bb63

panic15:                                          ; preds = %bb78
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_198, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc114 to %"core::panic::location::Location"*)) #4
  unreachable

bb60:                                             ; preds = %bb59
  %54 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 0
  %_137 = load i64, i64* %54, align 8
  %_143 = icmp ult i64 0, %d.1
  %55 = call i1 @llvm.expect.i1(i1 %_143, i1 true)
  br i1 %55, label %bb61, label %panic17

panic16:                                          ; preds = %bb59
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc116 to %"core::panic::location::Location"*)) #4
  unreachable

bb61:                                             ; preds = %bb60
  %56 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 0
  store i64 %_137, i64* %56, align 8
  br label %bb80

panic17:                                          ; preds = %bb60
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc118 to %"core::panic::location::Location"*)) #4
  unreachable

bb57:                                             ; preds = %bb56
  %57 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 1
  %_130 = load i64, i64* %57, align 8
  %_136 = icmp ult i64 1, %d.1
  %58 = call i1 @llvm.expect.i1(i1 %_136, i1 true)
  br i1 %58, label %bb58, label %panic19

panic18:                                          ; preds = %bb56
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc120 to %"core::panic::location::Location"*)) #4
  unreachable

bb58:                                             ; preds = %bb57
  %59 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 1
  store i64 %_130, i64* %59, align 8
  br label %bb80

panic19:                                          ; preds = %bb57
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc122 to %"core::panic::location::Location"*)) #4
  unreachable

bb54:                                             ; preds = %bb53
  %60 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 2
  %_123 = load i64, i64* %60, align 8
  %_129 = icmp ult i64 2, %d.1
  %61 = call i1 @llvm.expect.i1(i1 %_129, i1 true)
  br i1 %61, label %bb55, label %panic21

panic20:                                          ; preds = %bb53
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc124 to %"core::panic::location::Location"*)) #4
  unreachable

bb55:                                             ; preds = %bb54
  %62 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 2
  store i64 %_123, i64* %62, align 8
  br label %bb80

panic21:                                          ; preds = %bb54
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc126 to %"core::panic::location::Location"*)) #4
  unreachable

bb51:                                             ; preds = %bb50
  %63 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 3
  %_116 = load i64, i64* %63, align 8
  %_122 = icmp ult i64 3, %d.1
  %64 = call i1 @llvm.expect.i1(i1 %_122, i1 true)
  br i1 %64, label %bb52, label %panic23

panic22:                                          ; preds = %bb50
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 3, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc128 to %"core::panic::location::Location"*)) #4
  unreachable

bb52:                                             ; preds = %bb51
  %65 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 3
  store i64 %_116, i64* %65, align 8
  br label %bb80

panic23:                                          ; preds = %bb51
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 3, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc130 to %"core::panic::location::Location"*)) #4
  unreachable

bb48:                                             ; preds = %bb47
  %66 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 4
  %_109 = load i64, i64* %66, align 8
  %_115 = icmp ult i64 4, %d.1
  %67 = call i1 @llvm.expect.i1(i1 %_115, i1 true)
  br i1 %67, label %bb49, label %panic25

panic24:                                          ; preds = %bb47
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 4, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc132 to %"core::panic::location::Location"*)) #4
  unreachable

bb49:                                             ; preds = %bb48
  %68 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 4
  store i64 %_109, i64* %68, align 8
  br label %bb80

panic25:                                          ; preds = %bb48
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 4, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc134 to %"core::panic::location::Location"*)) #4
  unreachable

bb45:                                             ; preds = %bb44
  %69 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 5
  %_102 = load i64, i64* %69, align 8
  %_108 = icmp ult i64 5, %d.1
  %70 = call i1 @llvm.expect.i1(i1 %_108, i1 true)
  br i1 %70, label %bb46, label %panic27

panic26:                                          ; preds = %bb44
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 5, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc136 to %"core::panic::location::Location"*)) #4
  unreachable

bb46:                                             ; preds = %bb45
  %71 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 5
  store i64 %_102, i64* %71, align 8
  br label %bb80

panic27:                                          ; preds = %bb45
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 5, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc138 to %"core::panic::location::Location"*)) #4
  unreachable

bb42:                                             ; preds = %bb41
  %72 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 6
  %_95 = load i64, i64* %72, align 8
  %_101 = icmp ult i64 6, %d.1
  %73 = call i1 @llvm.expect.i1(i1 %_101, i1 true)
  br i1 %73, label %bb43, label %panic29

panic28:                                          ; preds = %bb41
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 6, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc140 to %"core::panic::location::Location"*)) #4
  unreachable

bb43:                                             ; preds = %bb42
  %74 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 6
  store i64 %_95, i64* %74, align 8
  br label %bb80

panic29:                                          ; preds = %bb42
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 6, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc142 to %"core::panic::location::Location"*)) #4
  unreachable

bb39:                                             ; preds = %bb38
  %75 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 7
  %_88 = load i64, i64* %75, align 8
  %_94 = icmp ult i64 7, %d.1
  %76 = call i1 @llvm.expect.i1(i1 %_94, i1 true)
  br i1 %76, label %bb40, label %panic31

panic30:                                          ; preds = %bb38
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 7, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc144 to %"core::panic::location::Location"*)) #4
  unreachable

bb40:                                             ; preds = %bb39
  %77 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 7
  store i64 %_88, i64* %77, align 8
  br label %bb80

panic31:                                          ; preds = %bb39
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 7, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc146 to %"core::panic::location::Location"*)) #4
  unreachable

bb36:                                             ; preds = %bb35
  %78 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 8
  %_81 = load i64, i64* %78, align 8
  %_87 = icmp ult i64 8, %d.1
  %79 = call i1 @llvm.expect.i1(i1 %_87, i1 true)
  br i1 %79, label %bb37, label %panic33

panic32:                                          ; preds = %bb35
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 8, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc148 to %"core::panic::location::Location"*)) #4
  unreachable

bb37:                                             ; preds = %bb36
  %80 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 8
  store i64 %_81, i64* %80, align 8
  br label %bb80

panic33:                                          ; preds = %bb36
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 8, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc150 to %"core::panic::location::Location"*)) #4
  unreachable

bb33:                                             ; preds = %bb32
  %81 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 9
  %_74 = load i64, i64* %81, align 8
  %_80 = icmp ult i64 9, %d.1
  %82 = call i1 @llvm.expect.i1(i1 %_80, i1 true)
  br i1 %82, label %bb34, label %panic35

panic34:                                          ; preds = %bb32
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 9, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc152 to %"core::panic::location::Location"*)) #4
  unreachable

bb34:                                             ; preds = %bb33
  %83 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 9
  store i64 %_74, i64* %83, align 8
  br label %bb80

panic35:                                          ; preds = %bb33
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 9, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc154 to %"core::panic::location::Location"*)) #4
  unreachable

bb30:                                             ; preds = %bb29
  %84 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 10
  %_67 = load i64, i64* %84, align 8
  %_73 = icmp ult i64 10, %d.1
  %85 = call i1 @llvm.expect.i1(i1 %_73, i1 true)
  br i1 %85, label %bb31, label %panic37

panic36:                                          ; preds = %bb29
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 10, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc156 to %"core::panic::location::Location"*)) #4
  unreachable

bb31:                                             ; preds = %bb30
  %86 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 10
  store i64 %_67, i64* %86, align 8
  br label %bb80

panic37:                                          ; preds = %bb30
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 10, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc158 to %"core::panic::location::Location"*)) #4
  unreachable

bb27:                                             ; preds = %bb26
  %87 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 11
  %_60 = load i64, i64* %87, align 8
  %_66 = icmp ult i64 11, %d.1
  %88 = call i1 @llvm.expect.i1(i1 %_66, i1 true)
  br i1 %88, label %bb28, label %panic39

panic38:                                          ; preds = %bb26
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 11, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc160 to %"core::panic::location::Location"*)) #4
  unreachable

bb28:                                             ; preds = %bb27
  %89 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 11
  store i64 %_60, i64* %89, align 8
  br label %bb80

panic39:                                          ; preds = %bb27
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 11, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc162 to %"core::panic::location::Location"*)) #4
  unreachable

bb24:                                             ; preds = %bb23
  %90 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 12
  %_53 = load i64, i64* %90, align 8
  %_59 = icmp ult i64 12, %d.1
  %91 = call i1 @llvm.expect.i1(i1 %_59, i1 true)
  br i1 %91, label %bb25, label %panic41

panic40:                                          ; preds = %bb23
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 12, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc164 to %"core::panic::location::Location"*)) #4
  unreachable

bb25:                                             ; preds = %bb24
  %92 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 12
  store i64 %_53, i64* %92, align 8
  br label %bb80

panic41:                                          ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 12, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc166 to %"core::panic::location::Location"*)) #4
  unreachable

bb21:                                             ; preds = %bb20
  %93 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 13
  %_46 = load i64, i64* %93, align 8
  %_52 = icmp ult i64 13, %d.1
  %94 = call i1 @llvm.expect.i1(i1 %_52, i1 true)
  br i1 %94, label %bb22, label %panic43

panic42:                                          ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 13, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc168 to %"core::panic::location::Location"*)) #4
  unreachable

bb22:                                             ; preds = %bb21
  %95 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 13
  store i64 %_46, i64* %95, align 8
  br label %bb80

panic43:                                          ; preds = %bb21
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 13, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc170 to %"core::panic::location::Location"*)) #4
  unreachable

bb18:                                             ; preds = %bb17
  %96 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 14
  %_39 = load i64, i64* %96, align 8
  %_45 = icmp ult i64 14, %d.1
  %97 = call i1 @llvm.expect.i1(i1 %_45, i1 true)
  br i1 %97, label %bb19, label %panic45

panic44:                                          ; preds = %bb17
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 14, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc172 to %"core::panic::location::Location"*)) #4
  unreachable

bb19:                                             ; preds = %bb18
  %98 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 14
  store i64 %_39, i64* %98, align 8
  br label %bb80

panic45:                                          ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 14, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc174 to %"core::panic::location::Location"*)) #4
  unreachable

bb15:                                             ; preds = %bb14
  %99 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 15
  %_32 = load i64, i64* %99, align 8
  %_38 = icmp ult i64 15, %d.1
  %100 = call i1 @llvm.expect.i1(i1 %_38, i1 true)
  br i1 %100, label %bb16, label %panic47

panic46:                                          ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 15, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc176 to %"core::panic::location::Location"*)) #4
  unreachable

bb16:                                             ; preds = %bb15
  %101 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 15
  store i64 %_32, i64* %101, align 8
  br label %bb80

panic47:                                          ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 15, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc178 to %"core::panic::location::Location"*)) #4
  unreachable

bb12:                                             ; preds = %bb11
  %102 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 16
  %_25 = load i64, i64* %102, align 8
  %_31 = icmp ult i64 16, %d.1
  %103 = call i1 @llvm.expect.i1(i1 %_31, i1 true)
  br i1 %103, label %bb13, label %panic49

panic48:                                          ; preds = %bb11
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 16, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc180 to %"core::panic::location::Location"*)) #4
  unreachable

bb13:                                             ; preds = %bb12
  %104 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 16
  store i64 %_25, i64* %104, align 8
  br label %bb80

panic49:                                          ; preds = %bb12
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 16, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc182 to %"core::panic::location::Location"*)) #4
  unreachable

bb9:                                              ; preds = %bb8
  %105 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 17
  %_18 = load i64, i64* %105, align 8
  %_24 = icmp ult i64 17, %d.1
  %106 = call i1 @llvm.expect.i1(i1 %_24, i1 true)
  br i1 %106, label %bb10, label %panic51

panic50:                                          ; preds = %bb8
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 17, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc184 to %"core::panic::location::Location"*)) #4
  unreachable

bb10:                                             ; preds = %bb9
  %107 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 17
  store i64 %_18, i64* %107, align 8
  br label %bb80

panic51:                                          ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 17, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc186 to %"core::panic::location::Location"*)) #4
  unreachable

bb6:                                              ; preds = %bb5
  %108 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 18
  %_11 = load i64, i64* %108, align 8
  %_17 = icmp ult i64 18, %d.1
  %109 = call i1 @llvm.expect.i1(i1 %_17, i1 true)
  br i1 %109, label %bb7, label %panic53

panic52:                                          ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 18, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc188 to %"core::panic::location::Location"*)) #4
  unreachable

bb7:                                              ; preds = %bb6
  %110 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 18
  store i64 %_11, i64* %110, align 8
  br label %bb80

panic53:                                          ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 18, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc190 to %"core::panic::location::Location"*)) #4
  unreachable

bb3:                                              ; preds = %bb2
  %111 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 19
  %_4 = load i64, i64* %111, align 8
  %_10 = icmp ult i64 19, %d.1
  %112 = call i1 @llvm.expect.i1(i1 %_10, i1 true)
  br i1 %112, label %bb4, label %panic55

panic54:                                          ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 19, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc192 to %"core::panic::location::Location"*)) #4
  unreachable

bb4:                                              ; preds = %bb3
  %113 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 19
  store i64 %_4, i64* %113, align 8
  br label %bb80

panic55:                                          ; preds = %bb3
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 19, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc194 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

attributes #0 = { alwaysinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memmoveb.rs.bc", hash: (2266588308, 2530835577, 3600298553, 3330186187, 933619693))
^1 = gv: (name: "alloc184", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 197208879426263474
^2 = gv: (name: "alloc176", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 684805047580199952
^3 = gv: (name: "alloc106", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 980198224685863484
^4 = gv: (name: "alloc112", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 1136016883614800943
^5 = gv: (name: "libzahl_memmoveb", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 432, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 1, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^33), (callee: ^66)), refs: (^19, ^6, ^22, ^11, ^40, ^31, ^21, ^61, ^26, ^28, ^14, ^18, ^42, ^3, ^60, ^34, ^4, ^24, ^7, ^44, ^16, ^46, ^38, ^39, ^48, ^32, ^17, ^12, ^13, ^25, ^57, ^15, ^8, ^62, ^50, ^20, ^35, ^47, ^30, ^43, ^41, ^55, ^53, ^36, ^58, ^64, ^56, ^37, ^2, ^52, ^29, ^23, ^1, ^65, ^9, ^59, ^27, ^45)))) ; guid = 1877505833120272818
^6 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1939493028907107527
^7 = gv: (name: "alloc116", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 1981989556978710680
^8 = gv: (name: "alloc144", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 2095081991683790905
^9 = gv: (name: "alloc188", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 2511944231242143897
^10 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^11 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3118153442291493366
^12 = gv: (name: "alloc134", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 3618624771823127596
^13 = gv: (name: "alloc136", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 3672515439386544344
^14 = gv: (name: "alloc100", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 3982334025797986816
^15 = gv: (name: "alloc142", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 4407586074129057722
^16 = gv: (name: "alloc120", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 4444872063702018608
^17 = gv: (name: "alloc132", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 4445544457165964668
^18 = gv: (name: "alloc102", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 4629715794545717631
^19 = gv: (name: "alloc84", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 4836410377853101100
^20 = gv: (name: "alloc150", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 4972268397244562792
^21 = gv: (name: "alloc92", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 6176937131860362311
^22 = gv: (name: "alloc86", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 6609505719478022692
^23 = gv: (name: "alloc182", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 6807509168804813953
^24 = gv: (name: "alloc114", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 6837295382526066448
^25 = gv: (name: "alloc138", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 7305765456531660000
^26 = gv: (name: "alloc96", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 7339211212202530719
^27 = gv: (name: "alloc192", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 8937072893708306850
^28 = gv: (name: "alloc98", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 9395917757609122736
^29 = gv: (name: "alloc180", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 9412076368298581629
^30 = gv: (name: "alloc156", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 9880083267354449249
^31 = gv: (name: "alloc90", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 10150968303549073548
^32 = gv: (name: "alloc130", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 10157529052783624539
^33 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^34 = gv: (name: "alloc110", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 10268455407347059996
^35 = gv: (name: "alloc152", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 10494007648984651049
^36 = gv: (name: "alloc166", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 10580801899179241663
^37 = gv: (name: "alloc174", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 10996261735362025636
^38 = gv: (name: "alloc124", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 11116173376576664537
^39 = gv: (name: "alloc126", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 11165734470798145163
^40 = gv: (name: "alloc88", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 11203478411456085718
^41 = gv: (name: "alloc160", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 11369868743865989763
^42 = gv: (name: "alloc104", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 11674384375480208259
^43 = gv: (name: "alloc158", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 12048157950957937571
^44 = gv: (name: "alloc118", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 12291446461794423198
^45 = gv: (name: "alloc194", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 12572596736880061056
^46 = gv: (name: "alloc122", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 12611150249786756473
^47 = gv: (name: "alloc154", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 12751408570147541331
^48 = gv: (name: "alloc128", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 14058963733177004464
^49 = gv: (name: "llvm.sadd.with.overflow.i64") ; guid = 14158031533124541057
^50 = gv: (name: "alloc148", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 14211303655035867806
^51 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^52 = gv: (name: "alloc178", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 14971033682923945748
^53 = gv: (name: "alloc164", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 15054460968814387675
^54 = gv: (name: "llvm.ssub.with.overflow.i64") ; guid = 15061848300821580795
^55 = gv: (name: "alloc162", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 15161187701313736016
^56 = gv: (name: "alloc172", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 15162691809819225922
^57 = gv: (name: "alloc140", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 15266155041398172215
^58 = gv: (name: "alloc168", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 15622175251396195819
^59 = gv: (name: "alloc190", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 15644318382788267440
^60 = gv: (name: "alloc108", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 16484647860462002696
^61 = gv: (name: "alloc94", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 16564909489394077093
^62 = gv: (name: "alloc146", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 17056130618241969115
^63 = gv: (name: "alloc193", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17145849648578982177
^64 = gv: (name: "alloc170", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 17528392685057144112
^65 = gv: (name: "alloc186", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 17558357184439492544
^66 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^67 = blockcount: 137
