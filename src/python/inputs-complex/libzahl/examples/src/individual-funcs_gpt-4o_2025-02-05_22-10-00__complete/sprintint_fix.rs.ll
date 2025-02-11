; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/sprintint_fix.rs.bc'
source_filename = "sprintint_fix.fb635e62-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked_mut::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }

@alloc1 = private unnamed_addr constant <{ [200 x i8] }> <{ [200 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" }>, align 1
@alloc120 = private unnamed_addr constant <{ [87 x i8] }> <{ [87 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/sprintint_fix.rs" }>, align 1
@alloc7 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\09\00\00\00\17\00\00\00" }>, align 8
@alloc9 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0A\00\00\00\1B\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc11 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0A\00\00\00\12\00\00\00" }>, align 8
@alloc13 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0A\00\00\00\05\00\00\00" }>, align 8
@alloc15 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0B\00\00\00\1B\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc17 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0B\00\00\00\12\00\00\00" }>, align 8
@alloc19 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0B\00\00\00\05\00\00\00" }>, align 8
@alloc21 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0D\00\00\00\1B\00\00\00" }>, align 8
@alloc23 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0D\00\00\00\12\00\00\00" }>, align 8
@alloc25 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0D\00\00\00\05\00\00\00" }>, align 8
@alloc27 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0E\00\00\00\1B\00\00\00" }>, align 8
@alloc29 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0E\00\00\00\12\00\00\00" }>, align 8
@alloc31 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\0E\00\00\00\05\00\00\00" }>, align 8
@alloc33 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\10\00\00\00\1B\00\00\00" }>, align 8
@alloc35 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\10\00\00\00\12\00\00\00" }>, align 8
@alloc37 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\10\00\00\00\05\00\00\00" }>, align 8
@alloc39 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\11\00\00\00\1B\00\00\00" }>, align 8
@alloc41 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\11\00\00\00\12\00\00\00" }>, align 8
@alloc43 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\11\00\00\00\05\00\00\00" }>, align 8
@alloc45 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\13\00\00\00\1B\00\00\00" }>, align 8
@alloc47 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\13\00\00\00\12\00\00\00" }>, align 8
@alloc49 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\13\00\00\00\05\00\00\00" }>, align 8
@alloc51 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\14\00\00\00\1B\00\00\00" }>, align 8
@alloc53 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\14\00\00\00\12\00\00\00" }>, align 8
@alloc55 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\14\00\00\00\05\00\00\00" }>, align 8
@alloc57 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\16\00\00\00\1A\00\00\00" }>, align 8
@alloc59 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\16\00\00\00\11\00\00\00" }>, align 8
@alloc61 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\16\00\00\00\05\00\00\00" }>, align 8
@alloc63 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\17\00\00\00\1A\00\00\00" }>, align 8
@alloc65 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\17\00\00\00\11\00\00\00" }>, align 8
@alloc67 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\17\00\00\00\05\00\00\00" }>, align 8
@alloc69 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\19\00\00\00\1A\00\00\00" }>, align 8
@alloc71 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\19\00\00\00\11\00\00\00" }>, align 8
@alloc73 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\19\00\00\00\05\00\00\00" }>, align 8
@alloc75 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1A\00\00\00\1A\00\00\00" }>, align 8
@alloc77 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1A\00\00\00\11\00\00\00" }>, align 8
@alloc79 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1A\00\00\00\05\00\00\00" }>, align 8
@alloc81 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1C\00\00\00\1A\00\00\00" }>, align 8
@alloc83 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1C\00\00\00\11\00\00\00" }>, align 8
@alloc85 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1C\00\00\00\05\00\00\00" }>, align 8
@alloc87 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1D\00\00\00\1A\00\00\00" }>, align 8
@alloc89 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1D\00\00\00\11\00\00\00" }>, align 8
@alloc91 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1D\00\00\00\05\00\00\00" }>, align 8
@alloc93 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1F\00\00\00\1A\00\00\00" }>, align 8
@alloc95 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1F\00\00\00\11\00\00\00" }>, align 8
@alloc97 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\1F\00\00\00\05\00\00\00" }>, align 8
@alloc99 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00 \00\00\00\1A\00\00\00" }>, align 8
@alloc101 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00 \00\00\00\11\00\00\00" }>, align 8
@alloc103 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00 \00\00\00\05\00\00\00" }>, align 8
@alloc105 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\22\00\00\00\1A\00\00\00" }>, align 8
@alloc107 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\22\00\00\00\11\00\00\00" }>, align 8
@alloc109 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00\22\00\00\00\05\00\00\00" }>, align 8
@alloc111 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00#\00\00\00\1A\00\00\00" }>, align 8
@alloc113 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00#\00\00\00\11\00\00\00" }>, align 8
@alloc115 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00#\00\00\00\05\00\00\00" }>, align 8
@alloc117 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00%\00\00\00\0E\00\00\00" }>, align 8
@alloc119 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00%\00\00\00\05\00\00\00" }>, align 8
@alloc121 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00&\00\00\00\05\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17he5c4a4e38e75dfedE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked_mut::{closure#0}]", align 8
  %1 = bitcast [0 x i8]* %slice.0 to i8*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds i8, i8* %1, i64 %self.0
  store i8* %2, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h9f3151a5f75f627cE(i8* %_3.i, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb2b65048c3559fe3E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = call i64 @_ZN4core3ptr8metadata8metadata17h016dbf0a14476f6fE([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %_3 to i64*
  store i64 %self, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17he5c4a4e38e75dfedE"(i64 %4, i64 %6, [0 x i8]* %slice.0, i64 %slice.1)
  %8 = extractvalue { [0 x i8]*, i64 } %7, 0
  %9 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %8, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  ret { [0 x i8]*, i64 } %11
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h768efe5c3cc3548fE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = icmp ugt i64 %self, %slice.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb2b65048c3559fe3E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  %_14.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_14.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb3

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #5
  unreachable

bb3:                                              ; preds = %bb2
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_14.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_14.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h9f3151a5f75f627cE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hf84669a687a10902E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hf84669a687a10902E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr8metadata8metadata17h016dbf0a14476f6fE([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %ptr.1, i64* %2, align 8
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hc717299e9273368dE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h768efe5c3cc3548fE"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: alwaysinline uwtable
define void @sprintint_fix([0 x i8]* align 1 %buf.0, i64 %buf.1, i64 %0) unnamed_addr #1 {
start:
  %_7 = alloca i64, align 8
  %v = alloca i64, align 8
  store i64 %0, i64* %v, align 8
  store i64 1, i64* %_7, align 8
  %1 = load i64, i64* %_7, align 8
  %2 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hc717299e9273368dE"([0 x i8]* align 1 %buf.0, i64 %buf.1, i64 %1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc7 to %"core::panic::location::Location"*))
  %_5.0 = extractvalue { [0 x i8]*, i64 } %2, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_12 = load i64, i64* %v, align 8
  %_11 = urem i64 %_12, 100
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_11)
  %_13.0 = extractvalue { i64, i1 } %3, 0
  %_13.1 = extractvalue { i64, i1 } %3, 1
  %4 = call i1 @llvm.expect.i1(i1 %_13.1, i1 false)
  br i1 %4, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_15 = icmp ult i64 %_13.0, 200
  %5 = call i1 @llvm.expect.i1(i1 %_15, i1 true)
  br i1 %5, label %bb3, label %panic1

panic:                                            ; preds = %bb1
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc9 to %"core::panic::location::Location"*)) #5
  unreachable

bb3:                                              ; preds = %bb2
  %6 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_13.0
  %_8 = load i8, i8* %6, align 1
  %_18 = icmp ult i64 16, %_5.1
  %7 = call i1 @llvm.expect.i1(i1 %_18, i1 true)
  br i1 %7, label %bb4, label %panic2

panic1:                                           ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_13.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc11 to %"core::panic::location::Location"*)) #5
  unreachable

bb4:                                              ; preds = %bb3
  %8 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 16
  store i8 %_8, i8* %8, align 1
  %_24 = load i64, i64* %v, align 8
  %_23 = urem i64 %_24, 100
  %9 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_23)
  %_25.0 = extractvalue { i64, i1 } %9, 0
  %_25.1 = extractvalue { i64, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_25.1, i1 false)
  br i1 %10, label %panic3, label %bb5

panic2:                                           ; preds = %bb3
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 16, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc13 to %"core::panic::location::Location"*)) #5
  unreachable

bb5:                                              ; preds = %bb4
  %11 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_25.0, i64 1)
  %_26.0 = extractvalue { i64, i1 } %11, 0
  %_26.1 = extractvalue { i64, i1 } %11, 1
  %12 = call i1 @llvm.expect.i1(i1 %_26.1, i1 false)
  br i1 %12, label %panic4, label %bb6

panic3:                                           ; preds = %bb4
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc15 to %"core::panic::location::Location"*)) #5
  unreachable

bb6:                                              ; preds = %bb5
  %_28 = icmp ult i64 %_26.0, 200
  %13 = call i1 @llvm.expect.i1(i1 %_28, i1 true)
  br i1 %13, label %bb7, label %panic5

panic4:                                           ; preds = %bb5
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc15 to %"core::panic::location::Location"*)) #5
  unreachable

bb7:                                              ; preds = %bb6
  %14 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_26.0
  %_19 = load i8, i8* %14, align 1
  %_31 = icmp ult i64 17, %_5.1
  %15 = call i1 @llvm.expect.i1(i1 %_31, i1 true)
  br i1 %15, label %bb8, label %panic6

panic5:                                           ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_26.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc17 to %"core::panic::location::Location"*)) #5
  unreachable

bb8:                                              ; preds = %bb7
  %16 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 17
  store i8 %_19, i8* %16, align 1
  %17 = load i64, i64* %v, align 8
  %18 = udiv i64 %17, 100
  store i64 %18, i64* %v, align 8
  %_36 = load i64, i64* %v, align 8
  %_35 = urem i64 %_36, 100
  %19 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_35)
  %_37.0 = extractvalue { i64, i1 } %19, 0
  %_37.1 = extractvalue { i64, i1 } %19, 1
  %20 = call i1 @llvm.expect.i1(i1 %_37.1, i1 false)
  br i1 %20, label %panic7, label %bb9

panic6:                                           ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 17, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc19 to %"core::panic::location::Location"*)) #5
  unreachable

bb9:                                              ; preds = %bb8
  %_39 = icmp ult i64 %_37.0, 200
  %21 = call i1 @llvm.expect.i1(i1 %_39, i1 true)
  br i1 %21, label %bb10, label %panic8

panic7:                                           ; preds = %bb8
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc21 to %"core::panic::location::Location"*)) #5
  unreachable

bb10:                                             ; preds = %bb9
  %22 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_37.0
  %_32 = load i8, i8* %22, align 1
  %_42 = icmp ult i64 14, %_5.1
  %23 = call i1 @llvm.expect.i1(i1 %_42, i1 true)
  br i1 %23, label %bb11, label %panic9

panic8:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_37.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc23 to %"core::panic::location::Location"*)) #5
  unreachable

bb11:                                             ; preds = %bb10
  %24 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 14
  store i8 %_32, i8* %24, align 1
  %_48 = load i64, i64* %v, align 8
  %_47 = urem i64 %_48, 100
  %25 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_47)
  %_49.0 = extractvalue { i64, i1 } %25, 0
  %_49.1 = extractvalue { i64, i1 } %25, 1
  %26 = call i1 @llvm.expect.i1(i1 %_49.1, i1 false)
  br i1 %26, label %panic10, label %bb12

panic9:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 14, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc25 to %"core::panic::location::Location"*)) #5
  unreachable

bb12:                                             ; preds = %bb11
  %27 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_49.0, i64 1)
  %_50.0 = extractvalue { i64, i1 } %27, 0
  %_50.1 = extractvalue { i64, i1 } %27, 1
  %28 = call i1 @llvm.expect.i1(i1 %_50.1, i1 false)
  br i1 %28, label %panic11, label %bb13

panic10:                                          ; preds = %bb11
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc27 to %"core::panic::location::Location"*)) #5
  unreachable

bb13:                                             ; preds = %bb12
  %_52 = icmp ult i64 %_50.0, 200
  %29 = call i1 @llvm.expect.i1(i1 %_52, i1 true)
  br i1 %29, label %bb14, label %panic12

panic11:                                          ; preds = %bb12
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc27 to %"core::panic::location::Location"*)) #5
  unreachable

bb14:                                             ; preds = %bb13
  %30 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_50.0
  %_43 = load i8, i8* %30, align 1
  %_55 = icmp ult i64 15, %_5.1
  %31 = call i1 @llvm.expect.i1(i1 %_55, i1 true)
  br i1 %31, label %bb15, label %panic13

panic12:                                          ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_50.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc29 to %"core::panic::location::Location"*)) #5
  unreachable

bb15:                                             ; preds = %bb14
  %32 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 15
  store i8 %_43, i8* %32, align 1
  %33 = load i64, i64* %v, align 8
  %34 = udiv i64 %33, 100
  store i64 %34, i64* %v, align 8
  %_60 = load i64, i64* %v, align 8
  %_59 = urem i64 %_60, 100
  %35 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_59)
  %_61.0 = extractvalue { i64, i1 } %35, 0
  %_61.1 = extractvalue { i64, i1 } %35, 1
  %36 = call i1 @llvm.expect.i1(i1 %_61.1, i1 false)
  br i1 %36, label %panic14, label %bb16

panic13:                                          ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 15, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc31 to %"core::panic::location::Location"*)) #5
  unreachable

bb16:                                             ; preds = %bb15
  %_63 = icmp ult i64 %_61.0, 200
  %37 = call i1 @llvm.expect.i1(i1 %_63, i1 true)
  br i1 %37, label %bb17, label %panic15

panic14:                                          ; preds = %bb15
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc33 to %"core::panic::location::Location"*)) #5
  unreachable

bb17:                                             ; preds = %bb16
  %38 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_61.0
  %_56 = load i8, i8* %38, align 1
  %_66 = icmp ult i64 12, %_5.1
  %39 = call i1 @llvm.expect.i1(i1 %_66, i1 true)
  br i1 %39, label %bb18, label %panic16

panic15:                                          ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_61.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc35 to %"core::panic::location::Location"*)) #5
  unreachable

bb18:                                             ; preds = %bb17
  %40 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 12
  store i8 %_56, i8* %40, align 1
  %_72 = load i64, i64* %v, align 8
  %_71 = urem i64 %_72, 100
  %41 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_71)
  %_73.0 = extractvalue { i64, i1 } %41, 0
  %_73.1 = extractvalue { i64, i1 } %41, 1
  %42 = call i1 @llvm.expect.i1(i1 %_73.1, i1 false)
  br i1 %42, label %panic17, label %bb19

panic16:                                          ; preds = %bb17
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 12, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc37 to %"core::panic::location::Location"*)) #5
  unreachable

bb19:                                             ; preds = %bb18
  %43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_73.0, i64 1)
  %_74.0 = extractvalue { i64, i1 } %43, 0
  %_74.1 = extractvalue { i64, i1 } %43, 1
  %44 = call i1 @llvm.expect.i1(i1 %_74.1, i1 false)
  br i1 %44, label %panic18, label %bb20

panic17:                                          ; preds = %bb18
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc39 to %"core::panic::location::Location"*)) #5
  unreachable

bb20:                                             ; preds = %bb19
  %_76 = icmp ult i64 %_74.0, 200
  %45 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %45, label %bb21, label %panic19

panic18:                                          ; preds = %bb19
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc39 to %"core::panic::location::Location"*)) #5
  unreachable

bb21:                                             ; preds = %bb20
  %46 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_74.0
  %_67 = load i8, i8* %46, align 1
  %_79 = icmp ult i64 13, %_5.1
  %47 = call i1 @llvm.expect.i1(i1 %_79, i1 true)
  br i1 %47, label %bb22, label %panic20

panic19:                                          ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_74.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc41 to %"core::panic::location::Location"*)) #5
  unreachable

bb22:                                             ; preds = %bb21
  %48 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 13
  store i8 %_67, i8* %48, align 1
  %49 = load i64, i64* %v, align 8
  %50 = udiv i64 %49, 100
  store i64 %50, i64* %v, align 8
  %_84 = load i64, i64* %v, align 8
  %_83 = urem i64 %_84, 100
  %51 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_83)
  %_85.0 = extractvalue { i64, i1 } %51, 0
  %_85.1 = extractvalue { i64, i1 } %51, 1
  %52 = call i1 @llvm.expect.i1(i1 %_85.1, i1 false)
  br i1 %52, label %panic21, label %bb23

panic20:                                          ; preds = %bb21
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 13, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc43 to %"core::panic::location::Location"*)) #5
  unreachable

bb23:                                             ; preds = %bb22
  %_87 = icmp ult i64 %_85.0, 200
  %53 = call i1 @llvm.expect.i1(i1 %_87, i1 true)
  br i1 %53, label %bb24, label %panic22

panic21:                                          ; preds = %bb22
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc45 to %"core::panic::location::Location"*)) #5
  unreachable

bb24:                                             ; preds = %bb23
  %54 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_85.0
  %_80 = load i8, i8* %54, align 1
  %_90 = icmp ult i64 10, %_5.1
  %55 = call i1 @llvm.expect.i1(i1 %_90, i1 true)
  br i1 %55, label %bb25, label %panic23

panic22:                                          ; preds = %bb23
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_85.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc47 to %"core::panic::location::Location"*)) #5
  unreachable

bb25:                                             ; preds = %bb24
  %56 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 10
  store i8 %_80, i8* %56, align 1
  %_96 = load i64, i64* %v, align 8
  %_95 = urem i64 %_96, 100
  %57 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_95)
  %_97.0 = extractvalue { i64, i1 } %57, 0
  %_97.1 = extractvalue { i64, i1 } %57, 1
  %58 = call i1 @llvm.expect.i1(i1 %_97.1, i1 false)
  br i1 %58, label %panic24, label %bb26

panic23:                                          ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 10, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc49 to %"core::panic::location::Location"*)) #5
  unreachable

bb26:                                             ; preds = %bb25
  %59 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_97.0, i64 1)
  %_98.0 = extractvalue { i64, i1 } %59, 0
  %_98.1 = extractvalue { i64, i1 } %59, 1
  %60 = call i1 @llvm.expect.i1(i1 %_98.1, i1 false)
  br i1 %60, label %panic25, label %bb27

panic24:                                          ; preds = %bb25
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc51 to %"core::panic::location::Location"*)) #5
  unreachable

bb27:                                             ; preds = %bb26
  %_100 = icmp ult i64 %_98.0, 200
  %61 = call i1 @llvm.expect.i1(i1 %_100, i1 true)
  br i1 %61, label %bb28, label %panic26

panic25:                                          ; preds = %bb26
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc51 to %"core::panic::location::Location"*)) #5
  unreachable

bb28:                                             ; preds = %bb27
  %62 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_98.0
  %_91 = load i8, i8* %62, align 1
  %_103 = icmp ult i64 11, %_5.1
  %63 = call i1 @llvm.expect.i1(i1 %_103, i1 true)
  br i1 %63, label %bb29, label %panic27

panic26:                                          ; preds = %bb27
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_98.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc53 to %"core::panic::location::Location"*)) #5
  unreachable

bb29:                                             ; preds = %bb28
  %64 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 11
  store i8 %_91, i8* %64, align 1
  %65 = load i64, i64* %v, align 8
  %66 = udiv i64 %65, 100
  store i64 %66, i64* %v, align 8
  %_108 = load i64, i64* %v, align 8
  %_107 = urem i64 %_108, 100
  %67 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_107)
  %_109.0 = extractvalue { i64, i1 } %67, 0
  %_109.1 = extractvalue { i64, i1 } %67, 1
  %68 = call i1 @llvm.expect.i1(i1 %_109.1, i1 false)
  br i1 %68, label %panic28, label %bb30

panic27:                                          ; preds = %bb28
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 11, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc55 to %"core::panic::location::Location"*)) #5
  unreachable

bb30:                                             ; preds = %bb29
  %_111 = icmp ult i64 %_109.0, 200
  %69 = call i1 @llvm.expect.i1(i1 %_111, i1 true)
  br i1 %69, label %bb31, label %panic29

panic28:                                          ; preds = %bb29
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc57 to %"core::panic::location::Location"*)) #5
  unreachable

bb31:                                             ; preds = %bb30
  %70 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_109.0
  %_104 = load i8, i8* %70, align 1
  %_114 = icmp ult i64 8, %_5.1
  %71 = call i1 @llvm.expect.i1(i1 %_114, i1 true)
  br i1 %71, label %bb32, label %panic30

panic29:                                          ; preds = %bb30
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_109.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc59 to %"core::panic::location::Location"*)) #5
  unreachable

bb32:                                             ; preds = %bb31
  %72 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 8
  store i8 %_104, i8* %72, align 1
  %_120 = load i64, i64* %v, align 8
  %_119 = urem i64 %_120, 100
  %73 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_119)
  %_121.0 = extractvalue { i64, i1 } %73, 0
  %_121.1 = extractvalue { i64, i1 } %73, 1
  %74 = call i1 @llvm.expect.i1(i1 %_121.1, i1 false)
  br i1 %74, label %panic31, label %bb33

panic30:                                          ; preds = %bb31
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 8, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc61 to %"core::panic::location::Location"*)) #5
  unreachable

bb33:                                             ; preds = %bb32
  %75 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_121.0, i64 1)
  %_122.0 = extractvalue { i64, i1 } %75, 0
  %_122.1 = extractvalue { i64, i1 } %75, 1
  %76 = call i1 @llvm.expect.i1(i1 %_122.1, i1 false)
  br i1 %76, label %panic32, label %bb34

panic31:                                          ; preds = %bb32
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc63 to %"core::panic::location::Location"*)) #5
  unreachable

bb34:                                             ; preds = %bb33
  %_124 = icmp ult i64 %_122.0, 200
  %77 = call i1 @llvm.expect.i1(i1 %_124, i1 true)
  br i1 %77, label %bb35, label %panic33

panic32:                                          ; preds = %bb33
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc63 to %"core::panic::location::Location"*)) #5
  unreachable

bb35:                                             ; preds = %bb34
  %78 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_122.0
  %_115 = load i8, i8* %78, align 1
  %_127 = icmp ult i64 9, %_5.1
  %79 = call i1 @llvm.expect.i1(i1 %_127, i1 true)
  br i1 %79, label %bb36, label %panic34

panic33:                                          ; preds = %bb34
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_122.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc65 to %"core::panic::location::Location"*)) #5
  unreachable

bb36:                                             ; preds = %bb35
  %80 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 9
  store i8 %_115, i8* %80, align 1
  %81 = load i64, i64* %v, align 8
  %82 = udiv i64 %81, 100
  store i64 %82, i64* %v, align 8
  %_132 = load i64, i64* %v, align 8
  %_131 = urem i64 %_132, 100
  %83 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_131)
  %_133.0 = extractvalue { i64, i1 } %83, 0
  %_133.1 = extractvalue { i64, i1 } %83, 1
  %84 = call i1 @llvm.expect.i1(i1 %_133.1, i1 false)
  br i1 %84, label %panic35, label %bb37

panic34:                                          ; preds = %bb35
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 9, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc67 to %"core::panic::location::Location"*)) #5
  unreachable

bb37:                                             ; preds = %bb36
  %_135 = icmp ult i64 %_133.0, 200
  %85 = call i1 @llvm.expect.i1(i1 %_135, i1 true)
  br i1 %85, label %bb38, label %panic36

panic35:                                          ; preds = %bb36
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc69 to %"core::panic::location::Location"*)) #5
  unreachable

bb38:                                             ; preds = %bb37
  %86 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_133.0
  %_128 = load i8, i8* %86, align 1
  %_138 = icmp ult i64 6, %_5.1
  %87 = call i1 @llvm.expect.i1(i1 %_138, i1 true)
  br i1 %87, label %bb39, label %panic37

panic36:                                          ; preds = %bb37
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_133.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc71 to %"core::panic::location::Location"*)) #5
  unreachable

bb39:                                             ; preds = %bb38
  %88 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 6
  store i8 %_128, i8* %88, align 1
  %_144 = load i64, i64* %v, align 8
  %_143 = urem i64 %_144, 100
  %89 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_143)
  %_145.0 = extractvalue { i64, i1 } %89, 0
  %_145.1 = extractvalue { i64, i1 } %89, 1
  %90 = call i1 @llvm.expect.i1(i1 %_145.1, i1 false)
  br i1 %90, label %panic38, label %bb40

panic37:                                          ; preds = %bb38
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 6, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc73 to %"core::panic::location::Location"*)) #5
  unreachable

bb40:                                             ; preds = %bb39
  %91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_145.0, i64 1)
  %_146.0 = extractvalue { i64, i1 } %91, 0
  %_146.1 = extractvalue { i64, i1 } %91, 1
  %92 = call i1 @llvm.expect.i1(i1 %_146.1, i1 false)
  br i1 %92, label %panic39, label %bb41

panic38:                                          ; preds = %bb39
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc75 to %"core::panic::location::Location"*)) #5
  unreachable

bb41:                                             ; preds = %bb40
  %_148 = icmp ult i64 %_146.0, 200
  %93 = call i1 @llvm.expect.i1(i1 %_148, i1 true)
  br i1 %93, label %bb42, label %panic40

panic39:                                          ; preds = %bb40
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc75 to %"core::panic::location::Location"*)) #5
  unreachable

bb42:                                             ; preds = %bb41
  %94 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_146.0
  %_139 = load i8, i8* %94, align 1
  %_151 = icmp ult i64 7, %_5.1
  %95 = call i1 @llvm.expect.i1(i1 %_151, i1 true)
  br i1 %95, label %bb43, label %panic41

panic40:                                          ; preds = %bb41
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_146.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc77 to %"core::panic::location::Location"*)) #5
  unreachable

bb43:                                             ; preds = %bb42
  %96 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 7
  store i8 %_139, i8* %96, align 1
  %97 = load i64, i64* %v, align 8
  %98 = udiv i64 %97, 100
  store i64 %98, i64* %v, align 8
  %_156 = load i64, i64* %v, align 8
  %_155 = urem i64 %_156, 100
  %99 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_155)
  %_157.0 = extractvalue { i64, i1 } %99, 0
  %_157.1 = extractvalue { i64, i1 } %99, 1
  %100 = call i1 @llvm.expect.i1(i1 %_157.1, i1 false)
  br i1 %100, label %panic42, label %bb44

panic41:                                          ; preds = %bb42
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 7, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc79 to %"core::panic::location::Location"*)) #5
  unreachable

bb44:                                             ; preds = %bb43
  %_159 = icmp ult i64 %_157.0, 200
  %101 = call i1 @llvm.expect.i1(i1 %_159, i1 true)
  br i1 %101, label %bb45, label %panic43

panic42:                                          ; preds = %bb43
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc81 to %"core::panic::location::Location"*)) #5
  unreachable

bb45:                                             ; preds = %bb44
  %102 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_157.0
  %_152 = load i8, i8* %102, align 1
  %_162 = icmp ult i64 4, %_5.1
  %103 = call i1 @llvm.expect.i1(i1 %_162, i1 true)
  br i1 %103, label %bb46, label %panic44

panic43:                                          ; preds = %bb44
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_157.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc83 to %"core::panic::location::Location"*)) #5
  unreachable

bb46:                                             ; preds = %bb45
  %104 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 4
  store i8 %_152, i8* %104, align 1
  %_168 = load i64, i64* %v, align 8
  %_167 = urem i64 %_168, 100
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_167)
  %_169.0 = extractvalue { i64, i1 } %105, 0
  %_169.1 = extractvalue { i64, i1 } %105, 1
  %106 = call i1 @llvm.expect.i1(i1 %_169.1, i1 false)
  br i1 %106, label %panic45, label %bb47

panic44:                                          ; preds = %bb45
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 4, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc85 to %"core::panic::location::Location"*)) #5
  unreachable

bb47:                                             ; preds = %bb46
  %107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_169.0, i64 1)
  %_170.0 = extractvalue { i64, i1 } %107, 0
  %_170.1 = extractvalue { i64, i1 } %107, 1
  %108 = call i1 @llvm.expect.i1(i1 %_170.1, i1 false)
  br i1 %108, label %panic46, label %bb48

panic45:                                          ; preds = %bb46
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc87 to %"core::panic::location::Location"*)) #5
  unreachable

bb48:                                             ; preds = %bb47
  %_172 = icmp ult i64 %_170.0, 200
  %109 = call i1 @llvm.expect.i1(i1 %_172, i1 true)
  br i1 %109, label %bb49, label %panic47

panic46:                                          ; preds = %bb47
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc87 to %"core::panic::location::Location"*)) #5
  unreachable

bb49:                                             ; preds = %bb48
  %110 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_170.0
  %_163 = load i8, i8* %110, align 1
  %_175 = icmp ult i64 5, %_5.1
  %111 = call i1 @llvm.expect.i1(i1 %_175, i1 true)
  br i1 %111, label %bb50, label %panic48

panic47:                                          ; preds = %bb48
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_170.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc89 to %"core::panic::location::Location"*)) #5
  unreachable

bb50:                                             ; preds = %bb49
  %112 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 5
  store i8 %_163, i8* %112, align 1
  %113 = load i64, i64* %v, align 8
  %114 = udiv i64 %113, 100
  store i64 %114, i64* %v, align 8
  %_180 = load i64, i64* %v, align 8
  %_179 = urem i64 %_180, 100
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_179)
  %_181.0 = extractvalue { i64, i1 } %115, 0
  %_181.1 = extractvalue { i64, i1 } %115, 1
  %116 = call i1 @llvm.expect.i1(i1 %_181.1, i1 false)
  br i1 %116, label %panic49, label %bb51

panic48:                                          ; preds = %bb49
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 5, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc91 to %"core::panic::location::Location"*)) #5
  unreachable

bb51:                                             ; preds = %bb50
  %_183 = icmp ult i64 %_181.0, 200
  %117 = call i1 @llvm.expect.i1(i1 %_183, i1 true)
  br i1 %117, label %bb52, label %panic50

panic49:                                          ; preds = %bb50
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc93 to %"core::panic::location::Location"*)) #5
  unreachable

bb52:                                             ; preds = %bb51
  %118 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_181.0
  %_176 = load i8, i8* %118, align 1
  %_186 = icmp ult i64 2, %_5.1
  %119 = call i1 @llvm.expect.i1(i1 %_186, i1 true)
  br i1 %119, label %bb53, label %panic51

panic50:                                          ; preds = %bb51
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_181.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc95 to %"core::panic::location::Location"*)) #5
  unreachable

bb53:                                             ; preds = %bb52
  %120 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 2
  store i8 %_176, i8* %120, align 1
  %_192 = load i64, i64* %v, align 8
  %_191 = urem i64 %_192, 100
  %121 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_191)
  %_193.0 = extractvalue { i64, i1 } %121, 0
  %_193.1 = extractvalue { i64, i1 } %121, 1
  %122 = call i1 @llvm.expect.i1(i1 %_193.1, i1 false)
  br i1 %122, label %panic52, label %bb54

panic51:                                          ; preds = %bb52
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 2, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc97 to %"core::panic::location::Location"*)) #5
  unreachable

bb54:                                             ; preds = %bb53
  %123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_193.0, i64 1)
  %_194.0 = extractvalue { i64, i1 } %123, 0
  %_194.1 = extractvalue { i64, i1 } %123, 1
  %124 = call i1 @llvm.expect.i1(i1 %_194.1, i1 false)
  br i1 %124, label %panic53, label %bb55

panic52:                                          ; preds = %bb53
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc99 to %"core::panic::location::Location"*)) #5
  unreachable

bb55:                                             ; preds = %bb54
  %_196 = icmp ult i64 %_194.0, 200
  %125 = call i1 @llvm.expect.i1(i1 %_196, i1 true)
  br i1 %125, label %bb56, label %panic54

panic53:                                          ; preds = %bb54
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc99 to %"core::panic::location::Location"*)) #5
  unreachable

bb56:                                             ; preds = %bb55
  %126 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_194.0
  %_187 = load i8, i8* %126, align 1
  %_199 = icmp ult i64 3, %_5.1
  %127 = call i1 @llvm.expect.i1(i1 %_199, i1 true)
  br i1 %127, label %bb57, label %panic55

panic54:                                          ; preds = %bb55
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_194.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc101 to %"core::panic::location::Location"*)) #5
  unreachable

bb57:                                             ; preds = %bb56
  %128 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 3
  store i8 %_187, i8* %128, align 1
  %129 = load i64, i64* %v, align 8
  %130 = udiv i64 %129, 100
  store i64 %130, i64* %v, align 8
  %_204 = load i64, i64* %v, align 8
  %_203 = urem i64 %_204, 100
  %131 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_203)
  %_205.0 = extractvalue { i64, i1 } %131, 0
  %_205.1 = extractvalue { i64, i1 } %131, 1
  %132 = call i1 @llvm.expect.i1(i1 %_205.1, i1 false)
  br i1 %132, label %panic56, label %bb58

panic55:                                          ; preds = %bb56
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 3, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc103 to %"core::panic::location::Location"*)) #5
  unreachable

bb58:                                             ; preds = %bb57
  %_207 = icmp ult i64 %_205.0, 200
  %133 = call i1 @llvm.expect.i1(i1 %_207, i1 true)
  br i1 %133, label %bb59, label %panic57

panic56:                                          ; preds = %bb57
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc105 to %"core::panic::location::Location"*)) #5
  unreachable

bb59:                                             ; preds = %bb58
  %134 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_205.0
  %_200 = load i8, i8* %134, align 1
  %_210 = icmp ult i64 0, %_5.1
  %135 = call i1 @llvm.expect.i1(i1 %_210, i1 true)
  br i1 %135, label %bb60, label %panic58

panic57:                                          ; preds = %bb58
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_205.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc107 to %"core::panic::location::Location"*)) #5
  unreachable

bb60:                                             ; preds = %bb59
  %136 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 0
  store i8 %_200, i8* %136, align 1
  %_216 = load i64, i64* %v, align 8
  %_215 = urem i64 %_216, 100
  %137 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_215)
  %_217.0 = extractvalue { i64, i1 } %137, 0
  %_217.1 = extractvalue { i64, i1 } %137, 1
  %138 = call i1 @llvm.expect.i1(i1 %_217.1, i1 false)
  br i1 %138, label %panic59, label %bb61

panic58:                                          ; preds = %bb59
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc109 to %"core::panic::location::Location"*)) #5
  unreachable

bb61:                                             ; preds = %bb60
  %139 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_217.0, i64 1)
  %_218.0 = extractvalue { i64, i1 } %139, 0
  %_218.1 = extractvalue { i64, i1 } %139, 1
  %140 = call i1 @llvm.expect.i1(i1 %_218.1, i1 false)
  br i1 %140, label %panic60, label %bb62

panic59:                                          ; preds = %bb60
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc111 to %"core::panic::location::Location"*)) #5
  unreachable

bb62:                                             ; preds = %bb61
  %_220 = icmp ult i64 %_218.0, 200
  %141 = call i1 @llvm.expect.i1(i1 %_220, i1 true)
  br i1 %141, label %bb63, label %panic61

panic60:                                          ; preds = %bb61
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc111 to %"core::panic::location::Location"*)) #5
  unreachable

bb63:                                             ; preds = %bb62
  %142 = getelementptr inbounds [200 x i8], [200 x i8]* getelementptr inbounds (<{ [200 x i8] }>, <{ [200 x i8] }>* @alloc1, i32 0, i32 0), i64 0, i64 %_218.0
  %_211 = load i8, i8* %142, align 1
  %_223 = icmp ult i64 1, %_5.1
  %143 = call i1 @llvm.expect.i1(i1 %_223, i1 true)
  br i1 %143, label %bb64, label %panic62

panic61:                                          ; preds = %bb62
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_218.0, i64 200, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc113 to %"core::panic::location::Location"*)) #5
  unreachable

bb64:                                             ; preds = %bb63
  %144 = getelementptr inbounds [0 x i8], [0 x i8]* %_5.0, i64 0, i64 1
  store i8 %_211, i8* %144, align 1
  %145 = load i64, i64* %v, align 8
  %146 = udiv i64 %145, 100
  store i64 %146, i64* %v, align 8
  %_225 = load i64, i64* %v, align 8
  %_224 = trunc i64 %_225 to i8
  %147 = call { i8, i1 } @llvm.uadd.with.overflow.i8(i8 48, i8 %_224)
  %_226.0 = extractvalue { i8, i1 } %147, 0
  %_226.1 = extractvalue { i8, i1 } %147, 1
  %148 = call i1 @llvm.expect.i1(i1 %_226.1, i1 false)
  br i1 %148, label %panic63, label %bb65

panic62:                                          ; preds = %bb63
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 1, i64 %_5.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc115 to %"core::panic::location::Location"*)) #5
  unreachable

bb65:                                             ; preds = %bb64
  %_229 = icmp ult i64 0, %buf.1
  %149 = call i1 @llvm.expect.i1(i1 %_229, i1 true)
  br i1 %149, label %bb66, label %panic64

panic63:                                          ; preds = %bb64
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc117 to %"core::panic::location::Location"*)) #5
  unreachable

bb66:                                             ; preds = %bb65
  %150 = getelementptr inbounds [0 x i8], [0 x i8]* %buf.0, i64 0, i64 0
  store i8 %_226.0, i8* %150, align 1
  %_232 = icmp ult i64 19, %buf.1
  %151 = call i1 @llvm.expect.i1(i1 %_232, i1 true)
  br i1 %151, label %bb67, label %panic65

panic64:                                          ; preds = %bb65
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc119 to %"core::panic::location::Location"*)) #5
  unreachable

bb67:                                             ; preds = %bb66
  %152 = getelementptr inbounds [0 x i8], [0 x i8]* %buf.0, i64 0, i64 19
  store i8 0, i8* %152, align 1
  ret void

panic65:                                          ; preds = %bb66
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 19, i64 %buf.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc121 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i8, i1 } @llvm.uadd.with.overflow.i8(i8, i8) #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { alwaysinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/sprintint_fix.rs.bc", hash: (1063404893, 3780195460, 310102277, 1456211, 770325064))
^1 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 54672120826129818
^2 = gv: (name: "alloc107", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 643546463864973249
^3 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 796297668896347863
^4 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 812308147334100546
^5 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 937179327211158910
^6 = gv: (name: "alloc109", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 1468573719130146666
^7 = gv: (name: "alloc59", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 1957837985502833984
^8 = gv: (name: "alloc99", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 2141883563673762324
^9 = gv: (name: "alloc79", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 2187310557297604812
^10 = gv: (name: "alloc119", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 2483346274504128808
^11 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^12 = gv: (name: "alloc111", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 2697783182006121763
^13 = gv: (name: "alloc113", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 2862295790899538452
^14 = gv: (name: "alloc95", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 2876889851334413234
^15 = gv: (name: "alloc81", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 3886975143314594604
^16 = gv: (name: "alloc87", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 4128818603310425293
^17 = gv: (name: "alloc43", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 4900396411740121434
^18 = gv: (name: "alloc55", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 5297743535239959803
^19 = gv: (name: "alloc103", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 5688689600403868107
^20 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 5939133328099796370
^21 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 6040081873656261057
^22 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h9f3151a5f75f627cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^61))))) ; guid = 6491808040348197350
^23 = gv: (name: "llvm.uadd.with.overflow.i8") ; guid = 6547928740380184413
^24 = gv: (name: "alloc57", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 6828436097588038696
^25 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^26 = gv: (name: "alloc63", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 6852071557055322127
^27 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 6899259693803534093
^28 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 7017594284176488364
^29 = gv: (name: "alloc61", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 7245171568753614285
^30 = gv: (name: "alloc71", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 7298750870855522162
^31 = gv: (name: "alloc120", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7539710402996440686
^32 = gv: (name: "alloc69", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 7861771793845508482
^33 = gv: (name: "alloc93", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 8235465878234389140
^34 = gv: (name: "alloc115", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 8366278363868105117
^35 = gv: (name: "alloc97", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 8870875581434184604
^36 = gv: (name: "_ZN4core5slice5index26slice_start_index_len_fail17h7d2eb9b98c2d25e4E") ; guid = 9009382022939071342
^37 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 9210318634502634606
^38 = gv: (name: "alloc117", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 9254321985670210176
^39 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 9343341401482361349
^40 = gv: (name: "sprintint_fix", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 537, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 1, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^49), (callee: ^41), (callee: ^74)), refs: (^28, ^21, ^4, ^63, ^39, ^51, ^53, ^68, ^37, ^58, ^45, ^67, ^5, ^20, ^64, ^56, ^27, ^3, ^71, ^54, ^1, ^17, ^76, ^47, ^44, ^72, ^70, ^18, ^24, ^7, ^29, ^26, ^57, ^52, ^32, ^30, ^59, ^46, ^65, ^9, ^15, ^62, ^48, ^16, ^43, ^75, ^33, ^14, ^35, ^8, ^42, ^19, ^60, ^2, ^6, ^12, ^13, ^34, ^38, ^10, ^69)))) ; guid = 9682341267277850972
^41 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^42 = gv: (name: "alloc101", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 10267407175900094190
^43 = gv: (name: "alloc89", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 10782514900024198335
^44 = gv: (name: "alloc49", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 11363431826754165503
^45 = gv: (name: "alloc21", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 11881863471071240582
^46 = gv: (name: "alloc75", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 11914059755342538271
^47 = gv: (name: "alloc47", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 12273090167520492088
^48 = gv: (name: "alloc85", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 12575504961049302806
^49 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hc717299e9273368dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^73))))) ; guid = 12694693556184426970
^50 = gv: (name: "_ZN4core3ptr8metadata8metadata17h016dbf0a14476f6fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 13161622144080858982
^51 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 13233685626506700860
^52 = gv: (name: "alloc67", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 13496105609702080366
^53 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 13744530963629387859
^54 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 13830954602730838948
^55 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^56 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 14400169724019633565
^57 = gv: (name: "alloc65", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 14672421171596310711
^58 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 14760051877337604056
^59 = gv: (name: "alloc73", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 14787834604476338877
^60 = gv: (name: "alloc105", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 14970255020075138044
^61 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hf84669a687a10902E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 15098012002769292538
^62 = gv: (name: "alloc83", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 15236820180283101455
^63 = gv: (name: "alloc1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15274687131904795656
^64 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 15607928318372810912
^65 = gv: (name: "alloc77", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 15686439456454074407
^66 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17he5c4a4e38e75dfedE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^22))))) ; guid = 16309817156892031276
^67 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 16797578962429045442
^68 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16919705921216540992
^69 = gv: (name: "alloc121", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 17121273358616262306
^70 = gv: (name: "alloc53", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 17842878080766259247
^71 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 17850059565364288314
^72 = gv: (name: "alloc51", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 17867319588189072773
^73 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h768efe5c3cc3548fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^77), (callee: ^36))))) ; guid = 17888453181027216573
^74 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^75 = gv: (name: "alloc91", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 18173513243502998719
^76 = gv: (name: "alloc45", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 18258843607994276879
^77 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb2b65048c3559fe3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18, calls: ((callee: ^50), (callee: ^66))))) ; guid = 18366105547100069628
^78 = blockcount: 152
