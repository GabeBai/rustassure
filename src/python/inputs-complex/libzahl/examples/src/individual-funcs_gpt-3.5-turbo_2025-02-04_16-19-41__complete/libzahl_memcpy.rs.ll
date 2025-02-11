; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memcpy.rs.bc'
source_filename = "libzahl_memcpy.087ef6bc-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>" = type { { i64, i64 }, i64, i8, [7 x i8] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc102 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc103 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc102, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc104 = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"assertion failed: step != 0" }>, align 1
@alloc105 = private unnamed_addr constant <{ [89 x i8] }> <{ [89 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/iter/adapters/step_by.rs" }>, align 1
@alloc106 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [89 x i8] }>, <{ [89 x i8] }>* @alloc105, i32 0, i32 0, i32 0), [16 x i8] c"Y\00\00\00\00\00\00\00\15\00\00\00\09\00\00\00" }>, align 8
@alloc217 = private unnamed_addr constant <{ [95 x i8] }> <{ [95 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memcpy.rs" }>, align 1
@alloc108 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\22\00\00\00\1E\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc110 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\22\00\00\00\1C\00\00\00" }>, align 8
@alloc112 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\22\00\00\00\13\00\00\00" }>, align 8
@alloc114 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\22\00\00\00\11\00\00\00" }>, align 8
@alloc116 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00#\00\00\00\1E\00\00\00" }>, align 8
@alloc118 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00#\00\00\00\1C\00\00\00" }>, align 8
@alloc120 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00#\00\00\00\13\00\00\00" }>, align 8
@alloc122 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00#\00\00\00\11\00\00\00" }>, align 8
@alloc124 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00$\00\00\00\1E\00\00\00" }>, align 8
@alloc126 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00$\00\00\00\1C\00\00\00" }>, align 8
@alloc128 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00$\00\00\00\13\00\00\00" }>, align 8
@alloc130 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00$\00\00\00\11\00\00\00" }>, align 8
@alloc132 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00%\00\00\00\1E\00\00\00" }>, align 8
@alloc134 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00%\00\00\00\1C\00\00\00" }>, align 8
@alloc136 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00%\00\00\00\13\00\00\00" }>, align 8
@alloc138 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00%\00\00\00\11\00\00\00" }>, align 8
@alloc140 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\1E\00\00\00\1B\00\00\00" }>, align 8
@alloc142 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\1E\00\00\00\10\00\00\00" }>, align 8
@alloc144 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\1D\00\00\00\1B\00\00\00" }>, align 8
@alloc146 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\1D\00\00\00\10\00\00\00" }>, align 8
@alloc148 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\1C\00\00\00\1B\00\00\00" }>, align 8
@alloc150 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\1C\00\00\00\10\00\00\00" }>, align 8
@alloc152 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\1B\00\00\00\1B\00\00\00" }>, align 8
@alloc154 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\1B\00\00\00\10\00\00\00" }>, align 8
@alloc156 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\1A\00\00\00\1B\00\00\00" }>, align 8
@alloc158 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\1A\00\00\00\10\00\00\00" }>, align 8
@alloc160 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\19\00\00\00\1B\00\00\00" }>, align 8
@alloc162 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\19\00\00\00\10\00\00\00" }>, align 8
@alloc164 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\18\00\00\00\1B\00\00\00" }>, align 8
@alloc166 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\18\00\00\00\10\00\00\00" }>, align 8
@alloc168 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\17\00\00\00\1B\00\00\00" }>, align 8
@alloc170 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\17\00\00\00\10\00\00\00" }>, align 8
@alloc172 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\16\00\00\00\1B\00\00\00" }>, align 8
@alloc174 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\16\00\00\00\10\00\00\00" }>, align 8
@alloc176 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\15\00\00\00\1D\00\00\00" }>, align 8
@alloc178 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\15\00\00\00\11\00\00\00" }>, align 8
@alloc180 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\14\00\00\00\1D\00\00\00" }>, align 8
@alloc182 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\14\00\00\00\11\00\00\00" }>, align 8
@alloc184 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\13\00\00\00\1D\00\00\00" }>, align 8
@alloc186 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\13\00\00\00\11\00\00\00" }>, align 8
@alloc188 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\12\00\00\00\1D\00\00\00" }>, align 8
@alloc190 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\12\00\00\00\11\00\00\00" }>, align 8
@alloc192 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\11\00\00\00\1D\00\00\00" }>, align 8
@alloc194 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\11\00\00\00\11\00\00\00" }>, align 8
@alloc196 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\10\00\00\00\1D\00\00\00" }>, align 8
@alloc198 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\10\00\00\00\11\00\00\00" }>, align 8
@alloc200 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\0F\00\00\00\1D\00\00\00" }>, align 8
@alloc202 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\0F\00\00\00\11\00\00\00" }>, align 8
@alloc204 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\0E\00\00\00\1D\00\00\00" }>, align 8
@alloc206 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\0E\00\00\00\11\00\00\00" }>, align 8
@alloc208 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\0D\00\00\00\1D\00\00\00" }>, align 8
@alloc210 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\0D\00\00\00\11\00\00\00" }>, align 8
@alloc212 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\0C\00\00\00\1D\00\00\00" }>, align 8
@alloc214 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\0C\00\00\00\11\00\00\00" }>, align 8
@alloc216 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\0B\00\00\00\1D\00\00\00" }>, align 8
@alloc218 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc217, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\0B\00\00\00\11\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h53d25bc4fcbd8afdE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self, i32 0, i32 2
  %2 = load i8, i8* %1, align 8, !range !1, !noundef !2
  %_2 = trunc i8 %2 to i1
  br i1 %_2, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %_4 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self to { i64, i64 }*
  %3 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %3, align 8
  %4 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$3nth17hda95b053c20c01ebE"({ i64, i64 }* align 8 %_4, i64 %_5)
  store { i64, i64 } %4, { i64, i64 }* %0, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %5 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self, i32 0, i32 2
  store i8 0, i8* %5, align 8
  %_3 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self to { i64, i64 }*
  %6 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2fc7d2b38a77eae3E"({ i64, i64 }* align 8 %_3)
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !range !3, !noundef !2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb4:                                              ; preds = %bb3
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$15forward_checked17h8caef84e125c4220E"(i64 %start1, i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca i64, align 8
  %0 = call i64 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h6268578f7596d639E"(i64 %n)
  store i64 %0, i64* %_3, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %n2 = load i64, i64* %_3, align 8
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h893fdcb929062664E"(i64 %start1, i64 %n2)
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { i64, i64 } undef, i64 %2, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h4185e9a76abd1551E"(i64 %start1, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = add nuw i64 %start1, %n
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hf762a525f5f7334bE"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h1bbe087a2a2ace92E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h0bad54772b11e98eE(i64* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !1, !noundef !2
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb5, label %bb4

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb6

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  invoke void @_ZN4core3ptr5write17h01460f26a4cb643fE(i64* %dest, i64 %src)
          to label %bb2 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1
  br label %bb6

cleanup1:                                         ; preds = %bb1
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  ret i64 %result

bb4:                                              ; preds = %bb5, %bb6
  %13 = bitcast { i8*, i32 }* %0 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h893fdcb929062664E"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %0 = alloca { i64, i8 }, align 8
  %1 = alloca { i64, i8 }, align 8
  %2 = alloca i8, align 1
  %3 = alloca { i64, i64 }, align 8
  %4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %rhs)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = zext i1 %6 to i8
  %8 = bitcast { i64, i8 }* %0 to i64*
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %7, i8* %9, align 8
  %10 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  %_5.0.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  %12 = load i8, i8* %11, align 8, !range !1, !noundef !2
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !1, !noundef !2
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i8
  %22 = insertvalue { i64, i8 } undef, i64 %17, 0
  %23 = insertvalue { i64, i8 } %22, i8 %21, 1
  %_5.0 = extractvalue { i64, i8 } %23, 0
  %24 = extractvalue { i64, i8 } %23, 1
  %_5.1 = trunc i8 %24 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %25 = call i1 @llvm.expect.i1(i1 %_5.1, i1 false)
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %2, align 1
  %27 = load i8, i8* %2, align 1, !range !1, !noundef !2
  %_8 = trunc i8 %27 to i1
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_5.0, i64* %28, align 8
  %29 = bitcast { i64, i64 }* %3 to i64*
  store i64 1, i64* %29, align 8
  br label %bb5

bb3:                                              ; preds = %bb2
  %30 = bitcast { i64, i64 }* %3 to i64*
  store i64 0, i64* %30, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8, !range !3, !noundef !2
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17h0bad54772b11e98eE(i64* %src) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %1 = bitcast i64* %0 to {}*
  %2 = load i64, i64* %0, align 8
  store i64 %2, i64* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast i64* %tmp to i8*
  %4 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %_6 = load i64, i64* %tmp, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64 %_6
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h01460f26a4cb643fE(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$3nth17hda95b053c20c01ebE"({ i64, i64 }* align 8 %self, i64 %n) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$8spec_nth17hbaa5dee980ea414bE"({ i64, i64 }* align 8 %self, i64 %n)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2fc7d2b38a77eae3E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hc1bcc918c4ccad3bE"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7step_by17h4cf29ae7a767592bE(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %0, i64 %self.0, i64 %self.1, i64 %step) unnamed_addr #0 {
start:
  call void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17hb14ba1d0cfe43a78E"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %0, i64 %self.0, i64 %self.1, i64 %step)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17hb14ba1d0cfe43a78E"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %0, i64 %iter.0, i64 %iter.1, i64 %step) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_4 = icmp ne i64 %step, 0
  %_3 = xor i1 %_4, true
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_8 = sub i64 %step, 1
  %2 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %0 to { i64, i64 }*
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  store i64 %iter.0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %iter.1, i64* %4, align 8
  %5 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %0, i32 0, i32 1
  store i64 %_8, i64* %5, align 8
  %6 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %0, i32 0, i32 2
  store i8 1, i8* %6, align 8
  ret void

bb1:                                              ; preds = %start
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [27 x i8] }>* @alloc104 to [0 x i8]*), i64 27, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc106 to %"core::panic::location::Location"*)) #6
          to label %unreachable unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb3

unreachable:                                      ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb3
  %12 = bitcast { i8*, i32 }* %1 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hf7dc8ff92c087545E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: uwtable
define i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hb326b3411b03d96aE"(i64 %t) unnamed_addr #1 {
start:
  ret i64 %t
}

; Function Attrs: uwtable
define i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf3335446e0fbcba2E"(i64 %self) unnamed_addr #1 {
start:
  %0 = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hb326b3411b03d96aE"(i64 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: uwtable
define i64 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h6268578f7596d639E"(i64 %value) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %_2 = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf3335446e0fbcba2E"(i64 %value)
  br label %bb1

bb1:                                              ; preds = %start
  store i64 %_2, i64* %0, align 8
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4670355d1b4b3fc0E"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %0, %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %0 to i8*
  %2 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$8spec_nth17hbaa5dee980ea414bE"({ i64, i64 }* align 8 %self, i64 %n) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %plus_n = alloca i64, align 8
  %_3 = alloca { i64, i64 }, align 8
  %1 = alloca { i64, i64 }, align 8
  %_5 = bitcast { i64, i64 }* %self to i64*
  %_4 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hf7dc8ff92c087545E"(i64* align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  store i8 1, i8* %_18, align 1
  %2 = call { i64, i64 } @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$15forward_checked17h8caef84e125c4220E"(i64 %_4, i64 %n)
  store { i64, i64 } %2, { i64, i64 }* %_3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast { i64, i64 }* %_3 to i64*
  %_7 = load i64, i64* %3, align 8, !range !3, !noundef !2
  %4 = icmp eq i64 %_7, 1
  br i1 %4, label %bb3, label %bb19

bb3:                                              ; preds = %bb2
  store i8 0, i8* %_18, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %plus_n, align 8
  %_11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_9 = invoke zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hf762a525f5f7334bE"(i64* align 8 %plus_n, i64* align 8 %_11)
          to label %bb4 unwind label %cleanup

bb19:                                             ; preds = %bb9, %bb2
  %7 = bitcast { i64, i64 }* %_3 to i64*
  %_19 = load i64, i64* %7, align 8, !range !3, !noundef !2
  %8 = icmp eq i64 %_19, 1
  br i1 %8, label %bb17, label %bb16

bb12:                                             ; preds = %bb14, %cleanup
  br label %bb13

cleanup:                                          ; preds = %bb6, %bb5, %bb3
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb12

bb4:                                              ; preds = %bb3
  br i1 %_9, label %bb5, label %bb8

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %_13 = invoke i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hf7dc8ff92c087545E"(i64* align 8 %plus_n)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_12 = invoke i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h4185e9a76abd1551E"(i64 %_13, i64 1)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  br label %bb15

bb15:                                             ; preds = %bb7
  %14 = bitcast { i64, i64 }* %self to i64*
  store i64 %_12, i64* %14, align 8
  %_15 = load i64, i64* %plus_n, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 %_15, i64* %15, align 8
  %16 = bitcast { i64, i64 }* %1 to i64*
  store i64 1, i64* %16, align 8
  br label %bb11

bb14:                                             ; No predecessors!
  %17 = bitcast { i64, i64 }* %self to i64*
  store i64 %_12, i64* %17, align 8
  br label %bb12

bb13:                                             ; preds = %bb20, %bb12
  %18 = bitcast { i8*, i32 }* %0 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23

bb11:                                             ; preds = %bb21, %bb15
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %25 = load i64, i64* %24, align 8, !range !3, !noundef !2
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = insertvalue { i64, i64 } undef, i64 %25, 0
  %29 = insertvalue { i64, i64 } %28, i64 %27, 1
  ret { i64, i64 } %29

bb9:                                              ; preds = %bb8
  br label %bb19

bb17:                                             ; preds = %bb19
  %30 = load i8, i8* %_18, align 1, !range !1, !noundef !2
  %31 = trunc i8 %30 to i1
  br i1 %31, label %bb18, label %bb16

bb16:                                             ; preds = %bb18, %bb17, %bb19
  %_17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_16 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hf7dc8ff92c087545E"(i64* align 8 %_17)
  br label %bb10

bb18:                                             ; preds = %bb17
  br label %bb16

bb10:                                             ; preds = %bb16
  br label %bb21

bb21:                                             ; preds = %bb10
  %32 = bitcast { i64, i64 }* %self to i64*
  store i64 %_16, i64* %32, align 8
  %33 = bitcast { i64, i64 }* %1 to i64*
  store i64 0, i64* %33, align 8
  br label %bb11

bb20:                                             ; No predecessors!
  %34 = bitcast { i64, i64 }* %self to i64*
  store i64 %_16, i64* %34, align 8
  br label %bb13
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hc1bcc918c4ccad3bE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hf762a525f5f7334bE"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = bitcast { i64, i64 }* %self to i64*
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hf7dc8ff92c087545E"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h4185e9a76abd1551E"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = bitcast { i64, i64 }* %self to i64*
  %_8 = call i64 @_ZN4core3mem7replace17h1bbe087a2a2ace92E(i64* align 8 %_10, i64 %n)
  br label %bb5

bb5:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_8, i64* %2, align 8
  %3 = bitcast { i64, i64 }* %0 to i64*
  store i64 1, i64* %3, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !range !3, !noundef !2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i64, i64 } undef, i64 %5, 0
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1
  ret { i64, i64 } %9
}

; Function Attrs: inlinehint uwtable
define void @libzahl_memcpy([0 x i64]* align 8 %d.0, i64 %d.1, [0 x i64]* align 8 %s.0, i64 %s.1, i64 %n) unnamed_addr #0 {
start:
  %_149 = alloca { i64, i64 }, align 8
  %iter = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", align 8
  %_146 = alloca { i64, i64 }, align 8
  %_145 = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", align 8
  %_144 = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>", align 8
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
    i64 0, label %bb84
  ]

bb1:                                              ; preds = %start
  %0 = bitcast { i64, i64 }* %_146 to i64*
  store i64 0, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_146, i32 0, i32 1
  store i64 %n, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_146, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_146, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  call void @_ZN4core4iter6traits8iterator8Iterator7step_by17h4cf29ae7a767592bE(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %_145, i64 %3, i64 %5, i64 4)
  br label %bb62

bb2:                                              ; preds = %start
  %_7 = icmp ult i64 19, %s.1
  %6 = call i1 @llvm.expect.i1(i1 %_7, i1 true)
  br i1 %6, label %bb3, label %panic54

bb5:                                              ; preds = %start
  %_14 = icmp ult i64 18, %s.1
  %7 = call i1 @llvm.expect.i1(i1 %_14, i1 true)
  br i1 %7, label %bb6, label %panic52

bb8:                                              ; preds = %start
  %_21 = icmp ult i64 17, %s.1
  %8 = call i1 @llvm.expect.i1(i1 %_21, i1 true)
  br i1 %8, label %bb9, label %panic50

bb11:                                             ; preds = %start
  %_28 = icmp ult i64 16, %s.1
  %9 = call i1 @llvm.expect.i1(i1 %_28, i1 true)
  br i1 %9, label %bb12, label %panic48

bb14:                                             ; preds = %start
  %_35 = icmp ult i64 15, %s.1
  %10 = call i1 @llvm.expect.i1(i1 %_35, i1 true)
  br i1 %10, label %bb15, label %panic46

bb17:                                             ; preds = %start
  %_42 = icmp ult i64 14, %s.1
  %11 = call i1 @llvm.expect.i1(i1 %_42, i1 true)
  br i1 %11, label %bb18, label %panic44

bb20:                                             ; preds = %start
  %_49 = icmp ult i64 13, %s.1
  %12 = call i1 @llvm.expect.i1(i1 %_49, i1 true)
  br i1 %12, label %bb21, label %panic42

bb23:                                             ; preds = %start
  %_56 = icmp ult i64 12, %s.1
  %13 = call i1 @llvm.expect.i1(i1 %_56, i1 true)
  br i1 %13, label %bb24, label %panic40

bb26:                                             ; preds = %start
  %_63 = icmp ult i64 11, %s.1
  %14 = call i1 @llvm.expect.i1(i1 %_63, i1 true)
  br i1 %14, label %bb27, label %panic38

bb29:                                             ; preds = %start
  %_70 = icmp ult i64 10, %s.1
  %15 = call i1 @llvm.expect.i1(i1 %_70, i1 true)
  br i1 %15, label %bb30, label %panic36

bb32:                                             ; preds = %start
  %_77 = icmp ult i64 9, %s.1
  %16 = call i1 @llvm.expect.i1(i1 %_77, i1 true)
  br i1 %16, label %bb33, label %panic34

bb35:                                             ; preds = %start
  %_84 = icmp ult i64 8, %s.1
  %17 = call i1 @llvm.expect.i1(i1 %_84, i1 true)
  br i1 %17, label %bb36, label %panic32

bb38:                                             ; preds = %start
  %_91 = icmp ult i64 7, %s.1
  %18 = call i1 @llvm.expect.i1(i1 %_91, i1 true)
  br i1 %18, label %bb39, label %panic30

bb41:                                             ; preds = %start
  %_98 = icmp ult i64 6, %s.1
  %19 = call i1 @llvm.expect.i1(i1 %_98, i1 true)
  br i1 %19, label %bb42, label %panic28

bb44:                                             ; preds = %start
  %_105 = icmp ult i64 5, %s.1
  %20 = call i1 @llvm.expect.i1(i1 %_105, i1 true)
  br i1 %20, label %bb45, label %panic26

bb47:                                             ; preds = %start
  %_112 = icmp ult i64 4, %s.1
  %21 = call i1 @llvm.expect.i1(i1 %_112, i1 true)
  br i1 %21, label %bb48, label %panic24

bb50:                                             ; preds = %start
  %_119 = icmp ult i64 3, %s.1
  %22 = call i1 @llvm.expect.i1(i1 %_119, i1 true)
  br i1 %22, label %bb51, label %panic22

bb53:                                             ; preds = %start
  %_126 = icmp ult i64 2, %s.1
  %23 = call i1 @llvm.expect.i1(i1 %_126, i1 true)
  br i1 %23, label %bb54, label %panic20

bb56:                                             ; preds = %start
  %_133 = icmp ult i64 1, %s.1
  %24 = call i1 @llvm.expect.i1(i1 %_133, i1 true)
  br i1 %24, label %bb57, label %panic18

bb59:                                             ; preds = %start
  %_140 = icmp ult i64 0, %s.1
  %25 = call i1 @llvm.expect.i1(i1 %_140, i1 true)
  br i1 %25, label %bb60, label %panic16

bb84:                                             ; preds = %bb4, %bb7, %bb10, %bb13, %bb16, %bb19, %bb22, %bb25, %bb28, %bb31, %bb34, %bb37, %bb40, %bb43, %bb46, %bb49, %bb52, %bb55, %bb58, %bb61, %bb65, %start
  ret void

bb62:                                             ; preds = %bb1
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4670355d1b4b3fc0E"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>") %_144, %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %_145)
  br label %bb63

bb63:                                             ; preds = %bb62
  %26 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %iter to i8*
  %27 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* %_144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 32, i1 false)
  br label %bb64

bb64:                                             ; preds = %bb83, %bb63
  %28 = call { i64, i64 } @"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h53d25bc4fcbd8afdE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<usize>>"* align 8 %iter)
  store { i64, i64 } %28, { i64, i64 }* %_149, align 8
  br label %bb65

bb65:                                             ; preds = %bb64
  %29 = bitcast { i64, i64 }* %_149 to i64*
  %_152 = load i64, i64* %29, align 8, !range !3, !noundef !2
  switch i64 %_152, label %bb67 [
    i64 0, label %bb84
    i64 1, label %bb66
  ]

bb67:                                             ; preds = %bb65
  unreachable

bb66:                                             ; preds = %bb65
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_149, i32 0, i32 1
  %i = load i64, i64* %30, align 8
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 0)
  %_157.0 = extractvalue { i64, i1 } %31, 0
  %_157.1 = extractvalue { i64, i1 } %31, 1
  %32 = call i1 @llvm.expect.i1(i1 %_157.1, i1 false)
  br i1 %32, label %panic, label %bb68

bb68:                                             ; preds = %bb66
  %_159 = icmp ult i64 %_157.0, %s.1
  %33 = call i1 @llvm.expect.i1(i1 %_159, i1 true)
  br i1 %33, label %bb69, label %panic1

panic:                                            ; preds = %bb66
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc108 to %"core::panic::location::Location"*)) #6
  unreachable

bb69:                                             ; preds = %bb68
  %34 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_157.0
  %_154 = load i64, i64* %34, align 8
  %35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 0)
  %_162.0 = extractvalue { i64, i1 } %35, 0
  %_162.1 = extractvalue { i64, i1 } %35, 1
  %36 = call i1 @llvm.expect.i1(i1 %_162.1, i1 false)
  br i1 %36, label %panic2, label %bb70

panic1:                                           ; preds = %bb68
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_157.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc110 to %"core::panic::location::Location"*)) #6
  unreachable

bb70:                                             ; preds = %bb69
  %_164 = icmp ult i64 %_162.0, %d.1
  %37 = call i1 @llvm.expect.i1(i1 %_164, i1 true)
  br i1 %37, label %bb71, label %panic3

panic2:                                           ; preds = %bb69
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc112 to %"core::panic::location::Location"*)) #6
  unreachable

bb71:                                             ; preds = %bb70
  %38 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_162.0
  store i64 %_154, i64* %38, align 8
  %39 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 1)
  %_168.0 = extractvalue { i64, i1 } %39, 0
  %_168.1 = extractvalue { i64, i1 } %39, 1
  %40 = call i1 @llvm.expect.i1(i1 %_168.1, i1 false)
  br i1 %40, label %panic4, label %bb72

panic3:                                           ; preds = %bb70
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_162.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc114 to %"core::panic::location::Location"*)) #6
  unreachable

bb72:                                             ; preds = %bb71
  %_170 = icmp ult i64 %_168.0, %s.1
  %41 = call i1 @llvm.expect.i1(i1 %_170, i1 true)
  br i1 %41, label %bb73, label %panic5

panic4:                                           ; preds = %bb71
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc116 to %"core::panic::location::Location"*)) #6
  unreachable

bb73:                                             ; preds = %bb72
  %42 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_168.0
  %_165 = load i64, i64* %42, align 8
  %43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 1)
  %_173.0 = extractvalue { i64, i1 } %43, 0
  %_173.1 = extractvalue { i64, i1 } %43, 1
  %44 = call i1 @llvm.expect.i1(i1 %_173.1, i1 false)
  br i1 %44, label %panic6, label %bb74

panic5:                                           ; preds = %bb72
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_168.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc118 to %"core::panic::location::Location"*)) #6
  unreachable

bb74:                                             ; preds = %bb73
  %_175 = icmp ult i64 %_173.0, %d.1
  %45 = call i1 @llvm.expect.i1(i1 %_175, i1 true)
  br i1 %45, label %bb75, label %panic7

panic6:                                           ; preds = %bb73
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc120 to %"core::panic::location::Location"*)) #6
  unreachable

bb75:                                             ; preds = %bb74
  %46 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_173.0
  store i64 %_165, i64* %46, align 8
  %47 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 2)
  %_179.0 = extractvalue { i64, i1 } %47, 0
  %_179.1 = extractvalue { i64, i1 } %47, 1
  %48 = call i1 @llvm.expect.i1(i1 %_179.1, i1 false)
  br i1 %48, label %panic8, label %bb76

panic7:                                           ; preds = %bb74
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_173.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc122 to %"core::panic::location::Location"*)) #6
  unreachable

bb76:                                             ; preds = %bb75
  %_181 = icmp ult i64 %_179.0, %s.1
  %49 = call i1 @llvm.expect.i1(i1 %_181, i1 true)
  br i1 %49, label %bb77, label %panic9

panic8:                                           ; preds = %bb75
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc124 to %"core::panic::location::Location"*)) #6
  unreachable

bb77:                                             ; preds = %bb76
  %50 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_179.0
  %_176 = load i64, i64* %50, align 8
  %51 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 2)
  %_184.0 = extractvalue { i64, i1 } %51, 0
  %_184.1 = extractvalue { i64, i1 } %51, 1
  %52 = call i1 @llvm.expect.i1(i1 %_184.1, i1 false)
  br i1 %52, label %panic10, label %bb78

panic9:                                           ; preds = %bb76
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_179.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc126 to %"core::panic::location::Location"*)) #6
  unreachable

bb78:                                             ; preds = %bb77
  %_186 = icmp ult i64 %_184.0, %d.1
  %53 = call i1 @llvm.expect.i1(i1 %_186, i1 true)
  br i1 %53, label %bb79, label %panic11

panic10:                                          ; preds = %bb77
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc128 to %"core::panic::location::Location"*)) #6
  unreachable

bb79:                                             ; preds = %bb78
  %54 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_184.0
  store i64 %_176, i64* %54, align 8
  %55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 3)
  %_190.0 = extractvalue { i64, i1 } %55, 0
  %_190.1 = extractvalue { i64, i1 } %55, 1
  %56 = call i1 @llvm.expect.i1(i1 %_190.1, i1 false)
  br i1 %56, label %panic12, label %bb80

panic11:                                          ; preds = %bb78
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_184.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc130 to %"core::panic::location::Location"*)) #6
  unreachable

bb80:                                             ; preds = %bb79
  %_192 = icmp ult i64 %_190.0, %s.1
  %57 = call i1 @llvm.expect.i1(i1 %_192, i1 true)
  br i1 %57, label %bb81, label %panic13

panic12:                                          ; preds = %bb79
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc132 to %"core::panic::location::Location"*)) #6
  unreachable

bb81:                                             ; preds = %bb80
  %58 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 %_190.0
  %_187 = load i64, i64* %58, align 8
  %59 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i, i64 3)
  %_195.0 = extractvalue { i64, i1 } %59, 0
  %_195.1 = extractvalue { i64, i1 } %59, 1
  %60 = call i1 @llvm.expect.i1(i1 %_195.1, i1 false)
  br i1 %60, label %panic14, label %bb82

panic13:                                          ; preds = %bb80
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_190.0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc134 to %"core::panic::location::Location"*)) #6
  unreachable

bb82:                                             ; preds = %bb81
  %_197 = icmp ult i64 %_195.0, %d.1
  %61 = call i1 @llvm.expect.i1(i1 %_197, i1 true)
  br i1 %61, label %bb83, label %panic15

panic14:                                          ; preds = %bb81
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc136 to %"core::panic::location::Location"*)) #6
  unreachable

bb83:                                             ; preds = %bb82
  %62 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 %_195.0
  store i64 %_187, i64* %62, align 8
  br label %bb64

panic15:                                          ; preds = %bb82
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_195.0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc138 to %"core::panic::location::Location"*)) #6
  unreachable

bb60:                                             ; preds = %bb59
  %63 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 0
  %_137 = load i64, i64* %63, align 8
  %_143 = icmp ult i64 0, %d.1
  %64 = call i1 @llvm.expect.i1(i1 %_143, i1 true)
  br i1 %64, label %bb61, label %panic17

panic16:                                          ; preds = %bb59
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc140 to %"core::panic::location::Location"*)) #6
  unreachable

bb61:                                             ; preds = %bb60
  %65 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 0
  store i64 %_137, i64* %65, align 8
  br label %bb84

panic17:                                          ; preds = %bb60
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc142 to %"core::panic::location::Location"*)) #6
  unreachable

bb57:                                             ; preds = %bb56
  %66 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 1
  %_130 = load i64, i64* %66, align 8
  %_136 = icmp ult i64 1, %d.1
  %67 = call i1 @llvm.expect.i1(i1 %_136, i1 true)
  br i1 %67, label %bb58, label %panic19

panic18:                                          ; preds = %bb56
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc144 to %"core::panic::location::Location"*)) #6
  unreachable

bb58:                                             ; preds = %bb57
  %68 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 1
  store i64 %_130, i64* %68, align 8
  br label %bb84

panic19:                                          ; preds = %bb57
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc146 to %"core::panic::location::Location"*)) #6
  unreachable

bb54:                                             ; preds = %bb53
  %69 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 2
  %_123 = load i64, i64* %69, align 8
  %_129 = icmp ult i64 2, %d.1
  %70 = call i1 @llvm.expect.i1(i1 %_129, i1 true)
  br i1 %70, label %bb55, label %panic21

panic20:                                          ; preds = %bb53
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc148 to %"core::panic::location::Location"*)) #6
  unreachable

bb55:                                             ; preds = %bb54
  %71 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 2
  store i64 %_123, i64* %71, align 8
  br label %bb84

panic21:                                          ; preds = %bb54
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc150 to %"core::panic::location::Location"*)) #6
  unreachable

bb51:                                             ; preds = %bb50
  %72 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 3
  %_116 = load i64, i64* %72, align 8
  %_122 = icmp ult i64 3, %d.1
  %73 = call i1 @llvm.expect.i1(i1 %_122, i1 true)
  br i1 %73, label %bb52, label %panic23

panic22:                                          ; preds = %bb50
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 3, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc152 to %"core::panic::location::Location"*)) #6
  unreachable

bb52:                                             ; preds = %bb51
  %74 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 3
  store i64 %_116, i64* %74, align 8
  br label %bb84

panic23:                                          ; preds = %bb51
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 3, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc154 to %"core::panic::location::Location"*)) #6
  unreachable

bb48:                                             ; preds = %bb47
  %75 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 4
  %_109 = load i64, i64* %75, align 8
  %_115 = icmp ult i64 4, %d.1
  %76 = call i1 @llvm.expect.i1(i1 %_115, i1 true)
  br i1 %76, label %bb49, label %panic25

panic24:                                          ; preds = %bb47
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 4, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc156 to %"core::panic::location::Location"*)) #6
  unreachable

bb49:                                             ; preds = %bb48
  %77 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 4
  store i64 %_109, i64* %77, align 8
  br label %bb84

panic25:                                          ; preds = %bb48
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 4, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc158 to %"core::panic::location::Location"*)) #6
  unreachable

bb45:                                             ; preds = %bb44
  %78 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 5
  %_102 = load i64, i64* %78, align 8
  %_108 = icmp ult i64 5, %d.1
  %79 = call i1 @llvm.expect.i1(i1 %_108, i1 true)
  br i1 %79, label %bb46, label %panic27

panic26:                                          ; preds = %bb44
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 5, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc160 to %"core::panic::location::Location"*)) #6
  unreachable

bb46:                                             ; preds = %bb45
  %80 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 5
  store i64 %_102, i64* %80, align 8
  br label %bb84

panic27:                                          ; preds = %bb45
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 5, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc162 to %"core::panic::location::Location"*)) #6
  unreachable

bb42:                                             ; preds = %bb41
  %81 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 6
  %_95 = load i64, i64* %81, align 8
  %_101 = icmp ult i64 6, %d.1
  %82 = call i1 @llvm.expect.i1(i1 %_101, i1 true)
  br i1 %82, label %bb43, label %panic29

panic28:                                          ; preds = %bb41
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 6, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc164 to %"core::panic::location::Location"*)) #6
  unreachable

bb43:                                             ; preds = %bb42
  %83 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 6
  store i64 %_95, i64* %83, align 8
  br label %bb84

panic29:                                          ; preds = %bb42
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 6, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc166 to %"core::panic::location::Location"*)) #6
  unreachable

bb39:                                             ; preds = %bb38
  %84 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 7
  %_88 = load i64, i64* %84, align 8
  %_94 = icmp ult i64 7, %d.1
  %85 = call i1 @llvm.expect.i1(i1 %_94, i1 true)
  br i1 %85, label %bb40, label %panic31

panic30:                                          ; preds = %bb38
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 7, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc168 to %"core::panic::location::Location"*)) #6
  unreachable

bb40:                                             ; preds = %bb39
  %86 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 7
  store i64 %_88, i64* %86, align 8
  br label %bb84

panic31:                                          ; preds = %bb39
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 7, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc170 to %"core::panic::location::Location"*)) #6
  unreachable

bb36:                                             ; preds = %bb35
  %87 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 8
  %_81 = load i64, i64* %87, align 8
  %_87 = icmp ult i64 8, %d.1
  %88 = call i1 @llvm.expect.i1(i1 %_87, i1 true)
  br i1 %88, label %bb37, label %panic33

panic32:                                          ; preds = %bb35
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 8, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc172 to %"core::panic::location::Location"*)) #6
  unreachable

bb37:                                             ; preds = %bb36
  %89 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 8
  store i64 %_81, i64* %89, align 8
  br label %bb84

panic33:                                          ; preds = %bb36
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 8, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc174 to %"core::panic::location::Location"*)) #6
  unreachable

bb33:                                             ; preds = %bb32
  %90 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 9
  %_74 = load i64, i64* %90, align 8
  %_80 = icmp ult i64 9, %d.1
  %91 = call i1 @llvm.expect.i1(i1 %_80, i1 true)
  br i1 %91, label %bb34, label %panic35

panic34:                                          ; preds = %bb32
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 9, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc176 to %"core::panic::location::Location"*)) #6
  unreachable

bb34:                                             ; preds = %bb33
  %92 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 9
  store i64 %_74, i64* %92, align 8
  br label %bb84

panic35:                                          ; preds = %bb33
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 9, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc178 to %"core::panic::location::Location"*)) #6
  unreachable

bb30:                                             ; preds = %bb29
  %93 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 10
  %_67 = load i64, i64* %93, align 8
  %_73 = icmp ult i64 10, %d.1
  %94 = call i1 @llvm.expect.i1(i1 %_73, i1 true)
  br i1 %94, label %bb31, label %panic37

panic36:                                          ; preds = %bb29
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 10, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc180 to %"core::panic::location::Location"*)) #6
  unreachable

bb31:                                             ; preds = %bb30
  %95 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 10
  store i64 %_67, i64* %95, align 8
  br label %bb84

panic37:                                          ; preds = %bb30
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 10, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc182 to %"core::panic::location::Location"*)) #6
  unreachable

bb27:                                             ; preds = %bb26
  %96 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 11
  %_60 = load i64, i64* %96, align 8
  %_66 = icmp ult i64 11, %d.1
  %97 = call i1 @llvm.expect.i1(i1 %_66, i1 true)
  br i1 %97, label %bb28, label %panic39

panic38:                                          ; preds = %bb26
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 11, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc184 to %"core::panic::location::Location"*)) #6
  unreachable

bb28:                                             ; preds = %bb27
  %98 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 11
  store i64 %_60, i64* %98, align 8
  br label %bb84

panic39:                                          ; preds = %bb27
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 11, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc186 to %"core::panic::location::Location"*)) #6
  unreachable

bb24:                                             ; preds = %bb23
  %99 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 12
  %_53 = load i64, i64* %99, align 8
  %_59 = icmp ult i64 12, %d.1
  %100 = call i1 @llvm.expect.i1(i1 %_59, i1 true)
  br i1 %100, label %bb25, label %panic41

panic40:                                          ; preds = %bb23
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 12, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc188 to %"core::panic::location::Location"*)) #6
  unreachable

bb25:                                             ; preds = %bb24
  %101 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 12
  store i64 %_53, i64* %101, align 8
  br label %bb84

panic41:                                          ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 12, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc190 to %"core::panic::location::Location"*)) #6
  unreachable

bb21:                                             ; preds = %bb20
  %102 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 13
  %_46 = load i64, i64* %102, align 8
  %_52 = icmp ult i64 13, %d.1
  %103 = call i1 @llvm.expect.i1(i1 %_52, i1 true)
  br i1 %103, label %bb22, label %panic43

panic42:                                          ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 13, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc192 to %"core::panic::location::Location"*)) #6
  unreachable

bb22:                                             ; preds = %bb21
  %104 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 13
  store i64 %_46, i64* %104, align 8
  br label %bb84

panic43:                                          ; preds = %bb21
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 13, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc194 to %"core::panic::location::Location"*)) #6
  unreachable

bb18:                                             ; preds = %bb17
  %105 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 14
  %_39 = load i64, i64* %105, align 8
  %_45 = icmp ult i64 14, %d.1
  %106 = call i1 @llvm.expect.i1(i1 %_45, i1 true)
  br i1 %106, label %bb19, label %panic45

panic44:                                          ; preds = %bb17
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 14, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc196 to %"core::panic::location::Location"*)) #6
  unreachable

bb19:                                             ; preds = %bb18
  %107 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 14
  store i64 %_39, i64* %107, align 8
  br label %bb84

panic45:                                          ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 14, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc198 to %"core::panic::location::Location"*)) #6
  unreachable

bb15:                                             ; preds = %bb14
  %108 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 15
  %_32 = load i64, i64* %108, align 8
  %_38 = icmp ult i64 15, %d.1
  %109 = call i1 @llvm.expect.i1(i1 %_38, i1 true)
  br i1 %109, label %bb16, label %panic47

panic46:                                          ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 15, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc200 to %"core::panic::location::Location"*)) #6
  unreachable

bb16:                                             ; preds = %bb15
  %110 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 15
  store i64 %_32, i64* %110, align 8
  br label %bb84

panic47:                                          ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 15, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc202 to %"core::panic::location::Location"*)) #6
  unreachable

bb12:                                             ; preds = %bb11
  %111 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 16
  %_25 = load i64, i64* %111, align 8
  %_31 = icmp ult i64 16, %d.1
  %112 = call i1 @llvm.expect.i1(i1 %_31, i1 true)
  br i1 %112, label %bb13, label %panic49

panic48:                                          ; preds = %bb11
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 16, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc204 to %"core::panic::location::Location"*)) #6
  unreachable

bb13:                                             ; preds = %bb12
  %113 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 16
  store i64 %_25, i64* %113, align 8
  br label %bb84

panic49:                                          ; preds = %bb12
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 16, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc206 to %"core::panic::location::Location"*)) #6
  unreachable

bb9:                                              ; preds = %bb8
  %114 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 17
  %_18 = load i64, i64* %114, align 8
  %_24 = icmp ult i64 17, %d.1
  %115 = call i1 @llvm.expect.i1(i1 %_24, i1 true)
  br i1 %115, label %bb10, label %panic51

panic50:                                          ; preds = %bb8
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 17, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc208 to %"core::panic::location::Location"*)) #6
  unreachable

bb10:                                             ; preds = %bb9
  %116 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 17
  store i64 %_18, i64* %116, align 8
  br label %bb84

panic51:                                          ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 17, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc210 to %"core::panic::location::Location"*)) #6
  unreachable

bb6:                                              ; preds = %bb5
  %117 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 18
  %_11 = load i64, i64* %117, align 8
  %_17 = icmp ult i64 18, %d.1
  %118 = call i1 @llvm.expect.i1(i1 %_17, i1 true)
  br i1 %118, label %bb7, label %panic53

panic52:                                          ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 18, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc212 to %"core::panic::location::Location"*)) #6
  unreachable

bb7:                                              ; preds = %bb6
  %119 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 18
  store i64 %_11, i64* %119, align 8
  br label %bb84

panic53:                                          ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 18, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc214 to %"core::panic::location::Location"*)) #6
  unreachable

bb3:                                              ; preds = %bb2
  %120 = getelementptr inbounds [0 x i64], [0 x i64]* %s.0, i64 0, i64 19
  %_4 = load i64, i64* %120, align 8
  %_10 = icmp ult i64 19, %d.1
  %121 = call i1 @llvm.expect.i1(i1 %_10, i1 true)
  br i1 %121, label %bb4, label %panic55

panic54:                                          ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 19, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc216 to %"core::panic::location::Location"*)) #6
  unreachable

bb4:                                              ; preds = %bb3
  %122 = getelementptr inbounds [0 x i64], [0 x i64]* %d.0, i64 0, i64 19
  store i64 %_4, i64* %122, align 8
  br label %bb84

panic55:                                          ; preds = %bb3
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 19, i64 %d.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc218 to %"core::panic::location::Location"*)) #6
  unreachable
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 0, i64 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memcpy.rs.bc", hash: (3317682400, 2849469361, 3223164902, 2754831503, 24801425))
^1 = gv: (name: "alloc182", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 267262799993970200
^2 = gv: (name: "alloc174", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 354632904878523559
^3 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2fc7d2b38a77eae3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^50))))) ; guid = 430999563887254115
^4 = gv: (name: "alloc204", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 487733895080905755
^5 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^6 = gv: (name: "alloc160", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 623109840381470636
^7 = gv: (name: "alloc150", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 1002705656296435476
^8 = gv: (name: "alloc114", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 1138181710261143376
^9 = gv: (name: "alloc208", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 1402112136675881016
^10 = gv: (name: "alloc112", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 1410763497830576021
^11 = gv: (name: "alloc130", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 1769856984584385900
^12 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hf762a525f5f7334bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 2071793441147868437
^13 = gv: (name: "alloc156", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 2081301744488755063
^14 = gv: (name: "alloc178", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 2288254656244128502
^15 = gv: (name: "alloc210", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 2455213938627131283
^16 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^17 = gv: (name: "alloc108", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 2588832724637681069
^18 = gv: (name: "_ZN4core3ptr4read17h0bad54772b11e98eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 2781162115730419936
^19 = gv: (name: "alloc206", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 3293387471464477842
^20 = gv: (name: "alloc105", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3942288977587498765
^21 = gv: (name: "alloc118", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 3964674547029346814
^22 = gv: (name: "alloc164", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 4094311396523129803
^23 = gv: (name: "alloc122", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 4200694359827578128
^24 = gv: (name: "_ZN4core3ptr5write17h01460f26a4cb643fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 4404440086131760254
^25 = gv: (name: "alloc188", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 4876775268503375684
^26 = gv: (name: "alloc166", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 4896076673237318045
^27 = gv: (name: "alloc138", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 5256061104512695045
^28 = gv: (name: "_ZN4core3mem7replace17h1bbe087a2a2ace92E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^18), (callee: ^24)), refs: (^71)))) ; guid = 5547456718058037109
^29 = gv: (name: "alloc192", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 5745324720325180153
^30 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$8spec_nth17hbaa5dee980ea414bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 82, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^70), (callee: ^40), (callee: ^12), (callee: ^32)), refs: (^71)))) ; guid = 5794211042714571786
^31 = gv: (name: "alloc168", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 5905123205870965434
^32 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h4185e9a76abd1551E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 6596852751308137412
^33 = gv: (name: "alloc218", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 6688134609747434002
^34 = gv: (name: "alloc124", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 6710473599612814541
^35 = gv: (name: "alloc120", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 6890536364593133121
^36 = gv: (name: "alloc104", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7142512976058455829
^37 = gv: (name: "alloc148", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 7308739526385559472
^38 = gv: (name: "alloc190", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 7867453221661607233
^39 = gv: (name: "alloc146", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 8496145135470687855
^40 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$15forward_checked17h8caef84e125c4220E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^61), (callee: ^53))))) ; guid = 8693346783392520805
^41 = gv: (name: "alloc162", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 8770797337783791001
^42 = gv: (name: "alloc180", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 10062951726927070398
^43 = gv: (name: "alloc144", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 10082955492186422575
^44 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^45 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4670355d1b4b3fc0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 10366041615919025525
^46 = gv: (name: "alloc140", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 10865027922492679396
^47 = gv: (name: "alloc116", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 11048447313977346374
^48 = gv: (name: "_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17hb14ba1d0cfe43a78E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 33, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^44)), refs: (^71, ^80, ^36)))) ; guid = 11062673428219213181
^49 = gv: (name: "alloc102", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11098276883086457853
^50 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hc1bcc918c4ccad3bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^12), (callee: ^70), (callee: ^32), (callee: ^28))))) ; guid = 11136154925057089351
^51 = gv: (name: "alloc200", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 11329346245225730099
^52 = gv: (name: "alloc184", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 11336105375309935291
^53 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h893fdcb929062664E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 11376260133251776117
^54 = gv: (name: "alloc217", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11607468699038915601
^55 = gv: (name: "libzahl_memcpy", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 445, calls: ((callee: ^85), (callee: ^45), (callee: ^77), (callee: ^44), (callee: ^88)), refs: (^17, ^56, ^57, ^10, ^8, ^47, ^21, ^35, ^23, ^34, ^89, ^58, ^11, ^66, ^67, ^82, ^27, ^46, ^79, ^43, ^39, ^37, ^7, ^68, ^84, ^13, ^76, ^6, ^41, ^22, ^26, ^31, ^74, ^87, ^2, ^60, ^14, ^42, ^1, ^52, ^63, ^25, ^38, ^29, ^83, ^65, ^75, ^51, ^78, ^4, ^19, ^9, ^15, ^73, ^72, ^62, ^33)))) ; guid = 11838894465342582843
^56 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12134449308857880920
^57 = gv: (name: "alloc110", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 12292218589507083268
^58 = gv: (name: "alloc128", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 12323238472100633158
^59 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hb326b3411b03d96aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 12956061347969274139
^60 = gv: (name: "alloc176", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 13038394207449891533
^61 = gv: (name: "_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h6268578f7596d639E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^64))))) ; guid = 13286392249619714194
^62 = gv: (name: "alloc216", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 13515855596675548869
^63 = gv: (name: "alloc186", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 13550373384973148727
^64 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf3335446e0fbcba2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^59))))) ; guid = 13641670361113320056
^65 = gv: (name: "alloc196", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 13983955398608706488
^66 = gv: (name: "alloc132", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 14129032034863739797
^67 = gv: (name: "alloc134", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 14294500970906709023
^68 = gv: (name: "alloc152", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 14320205003604999308
^69 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^70 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hf7dc8ff92c087545E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 14559677867115259337
^71 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^72 = gv: (name: "alloc214", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 15253084404434597302
^73 = gv: (name: "alloc212", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 15682266154053054299
^74 = gv: (name: "alloc170", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 16021738806252143499
^75 = gv: (name: "alloc198", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 16054166935297507157
^76 = gv: (name: "alloc158", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 16268754415908000764
^77 = gv: (name: "_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h53d25bc4fcbd8afdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, calls: ((callee: ^86), (callee: ^3))))) ; guid = 16427640080566586737
^78 = gv: (name: "alloc202", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 16445782351822404265
^79 = gv: (name: "alloc142", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 16467467824131966146
^80 = gv: (name: "alloc106", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^20)))) ; guid = 16677311846912150193
^81 = gv: (name: "alloc103", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^49)))) ; guid = 17072318439435084453
^82 = gv: (name: "alloc136", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 17141010549098197949
^83 = gv: (name: "alloc194", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 17168082606519012867
^84 = gv: (name: "alloc154", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 17290493145229716161
^85 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator7step_by17h4cf29ae7a767592bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^48))))) ; guid = 17323269708230325500
^86 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$3nth17hda95b053c20c01ebE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^30))))) ; guid = 17937689742838187228
^87 = gv: (name: "alloc172", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 17997625139895280607
^88 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^89 = gv: (name: "alloc126", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^54)))) ; guid = 18416122751071551477
^90 = blockcount: 224
