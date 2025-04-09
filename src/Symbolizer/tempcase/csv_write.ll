; ModuleID = 'csv_write.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }

@alloc58 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"csv_write.rs" }>, align 1
@alloc53 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc58, i32 0, i32 0, i32 0), [16 x i8] c"\0C\00\00\00\00\00\00\00\07\00\00\00\05\00\00\00" }>, align 8
@alloc55 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc58, i32 0, i32 0, i32 0), [16 x i8] c"\0C\00\00\00\00\00\00\00\07\00\00\00\22\00\00\00" }>, align 8
@alloc57 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc58, i32 0, i32 0, i32 0), [16 x i8] c"\0C\00\00\00\00\00\00\00\07\00\00\00\11\00\00\00" }>, align 8
@free_function_call_count = internal global i32 0
@klee_sym_arg_name = private global [4 x i8] c"ptr\00", align 1
@klee_sym_arg_name.1 = private global [7 x i8] c"dest.0\00", align 1
@klee_sym_arg_name.2 = private global [7 x i8] c"dest.1\00", align 1
@klee_sym_arg_name.3 = private global [5 x i8] c"ptr1\00", align 1
@klee_sym_arg_name.4 = private global [6 x i8] c"src.0\00", align 1
@klee_sym_arg_name.5 = private global [6 x i8] c"src.1\00", align 1
@0 = private unnamed_addr constant [34 x i8] c"SYM VALUE: arg_value_0_pointer : \00", align 1
@1 = private unnamed_addr constant [26 x i8] c"SYM VALUE: arg_value_0 : \00", align 1
@2 = private unnamed_addr constant [26 x i8] c"SYM VALUE: arg_value_0 : \00", align 1
@3 = private unnamed_addr constant [26 x i8] c"SYM VALUE: arg_value_1 : \00", align 1
@4 = private unnamed_addr constant [34 x i8] c"SYM VALUE: arg_value_2_pointer : \00", align 1
@5 = private unnamed_addr constant [26 x i8] c"SYM VALUE: arg_value_2 : \00", align 1
@6 = private unnamed_addr constant [26 x i8] c"SYM VALUE: arg_value_2 : \00", align 1
@7 = private unnamed_addr constant [26 x i8] c"SYM VALUE: arg_value_3 : \00", align 1
@8 = private unnamed_addr constant [24 x i8] c"SYM VALUE: ret_value : \00", align 1
@9 = private unnamed_addr constant [31 x i8] c"SYM VALUE: free_call_counts : \00", align 1

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hdeae7cacb67f5b3cE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_22 = alloca { i8*, i64 }, align 8
  %_21 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]", align 8
  %self = bitcast [0 x i8]* %slice.0 to i8*
  %1 = getelementptr inbounds i8, i8* %self, i64 %self.0
  store i8* %1, i8** %0, align 8
  %data = load i8*, i8** %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %len = sub i64 %self.1, %self.0
  %data_address = bitcast i8* %data to {}*
  %2 = bitcast { i8*, i64 }* %_22 to {}**
  store {}* %data_address, {}** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_22, i32 0, i32 1
  store i64 %len, i64* %3, align 8
  %4 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_21 to { i8*, i64 }*
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_22, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_22, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 0
  store i8* %6, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_21 to { [0 x i8]*, i64 }*
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %11, i32 0, i32 0
  %13 = load [0 x i8]*, [0 x i8]** %12, align 8
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %13, 0
  %17 = insertvalue { [0 x i8]*, i64 } %16, i64 %15, 1
  ret { [0 x i8]*, i64 } %17
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h75a9fd2e214465a4E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_24 = alloca { i8*, i64 }, align 8
  %_23 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]", align 8
  %self = bitcast [0 x i8]* %slice.0 to i8*
  %1 = getelementptr inbounds i8, i8* %self, i64 %self.0
  store i8* %1, i8** %0, align 8
  %_15 = load i8*, i8** %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %len = sub i64 %self.1, %self.0
  %data_address = bitcast i8* %_15 to {}*
  %2 = bitcast { i8*, i64 }* %_24 to {}**
  store {}* %data_address, {}** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_24, i32 0, i32 1
  store i64 %len, i64* %3, align 8
  %4 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_23 to { i8*, i64 }*
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_24, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_24, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 0
  store i8* %6, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_23 to { [0 x i8]*, i64 }*
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %11, i32 0, i32 0
  %13 = load [0 x i8]*, [0 x i8]** %12, align 8
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %13, 0
  %17 = insertvalue { [0 x i8]*, i64 } %16, i64 %15, 1
  ret { [0 x i8]*, i64 } %17
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h01372adc50bf5e94E"(i64 %self.0, i64 %self.1, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ugt i64 %self.0, %self.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @symbolic_dummy0(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* %0)
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hdeae7cacb67f5b3cE"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1)
  %_17.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_17.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @symbolic_dummy1(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* %0)
  unreachable

bb5:                                              ; preds = %bb4
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_17.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_17.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hdb0fb0ef00ecd2ebE"(i64 %self.0, i64 %self.1, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = icmp ugt i64 %self.0, %self.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_10 = icmp ugt i64 %self.1, %slice.1
  br i1 %_10, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @symbolic_dummy0.6(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* %0)
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h75a9fd2e214465a4E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1)
  %_20.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_20.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @symbolic_dummy1.7(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* %0)
  unreachable

bb5:                                              ; preds = %bb4
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_20.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_20.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hed5f1d591a509ef9E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %_3 to i64*
  store i64 0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %self, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h01372adc50bf5e94E"(i64 %4, i64 %6, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0)
  %8 = extractvalue { [0 x i8]*, i64 } %7, 0
  %9 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %8, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  ret { [0 x i8]*, i64 } %11
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h25286c23676563c8E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_5 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %_5 to i64*
  store i64 0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  store i64 %self, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hdb0fb0ef00ecd2ebE"(i64 %4, i64 %6, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %7, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %9
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3Ord3min17h954b417205b962c7E(i64 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_3 = alloca i8, align 1
  %3 = alloca i64, align 8
  %other = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  store i64 %1, i64* %other, align 8
  store i8 1, i8* %_9, align 1
  store i8 1, i8* %_8, align 1
  %4 = invoke i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h7b10505e66f748e2E"(i64* align 8 %self, i64* align 8 %other)
          to label %bb1 unwind label %cleanup, !range !2

bb8:                                              ; preds = %cleanup
  br label %bb13

cleanup:                                          ; preds = %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb8

bb1:                                              ; preds = %start
  store i8 %4, i8* %_3, align 1
  %_7 = load i8, i8* %_3, align 1, !range !2, !noundef !3
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !4, !noundef !3
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb12, label %bb9

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, i8* %_9, align 1
  %12 = load i64, i64* %self, align 8
  store i64 %12, i64* %3, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_8, align 1
  %13 = load i64, i64* %other, align 8
  store i64 %13, i64* %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %14 = load i8, i8* %_8, align 1, !range !4, !noundef !3
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !4, !noundef !3
  %17 = trunc i8 %16 to i1
  br i1 %17, label %bb11, label %bb7

bb10:                                             ; preds = %bb5
  br label %bb6

bb9:                                              ; preds = %bb12, %bb13
  %18 = bitcast { i8*, i32 }* %2 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23

bb12:                                             ; preds = %bb13
  br label %bb9

bb7:                                              ; preds = %bb11, %bb6
  %24 = load i64, i64* %3, align 8
  ret i64 %24

bb11:                                             ; preds = %bb6
  br label %bb7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h7b10505e66f748e2E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_4 = load i64, i64* %self, align 8
  %_5 = load i64, i64* %other, align 8
  %_3 = icmp ult i64 %_4, %_5
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_7 = load i64, i64* %self, align 8
  %_8 = load i64, i64* %other, align 8
  %_6 = icmp eq i64 %_7, %_8
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 -1, i8* %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  %1 = load i8, i8* %0, align 1, !range !2, !noundef !3
  ret i8 %1

bb4:                                              ; preds = %bb2
  store i8 1, i8* %0, align 1
  br label %bb5

bb3:                                              ; preds = %bb2
  store i8 0, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  br label %bb6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h3fb500a072a9f24dE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hed5f1d591a509ef9E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hdce9d8bcd59c2e5aE"([0 x i8]* align 1 %self.0, i64 %self.1, [0 x i8]* align 1 %src.0, i64 %src.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #1 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %_3 = icmp ne i64 %self.1, %src.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %src = bitcast [0 x i8]* %src.0 to i8*
  %dst = bitcast [0 x i8]* %self.0 to i8*
  %1 = mul i64 %self.1, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %1, i1 false)
  ret void

bb1:                                              ; preds = %start
  call void @symbolic_dummy0.19(i64 %self.1, i64 %src.1, %"core::panic::location::Location"* %0)
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h202b6f2323f92aa7E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h25286c23676563c8E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: nonlazybind uwtable
define internal i64 @csv_write2([0 x i8]* align 1 %dest.0, i64 %dest.1, [0 x i8]* align 1 %src.0, i64 %src.1, i8 %quote) unnamed_addr #1 {
start:
  %_18 = alloca i64, align 8
  %_12 = alloca i64, align 8
  %len = call i64 @_ZN4core3cmp3Ord3min17h954b417205b962c7E(i64 %src.1, i64 %dest.1)
  br label %bb1

bb1:                                              ; preds = %start
  store i64 %len, i64* %_12, align 8
  %0 = load i64, i64* %_12, align 8
  %1 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h202b6f2323f92aa7E"([0 x i8]* align 1 %dest.0, i64 %dest.1, i64 %0, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc53 to %"core::panic::location::Location"*))
  %_10.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_10.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  store i64 %len, i64* %_18, align 8
  %2 = load i64, i64* %_18, align 8
  %3 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h3fb500a072a9f24dE"([0 x i8]* align 1 %src.0, i64 %src.1, i64 %2, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc55 to %"core::panic::location::Location"*))
  %_16.0 = extractvalue { [0 x i8]*, i64 } %3, 0
  %_16.1 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hdce9d8bcd59c2e5aE"([0 x i8]* align 1 %_10.0, i64 %_10.1, [0 x i8]* align 1 %_16.0, i64 %_16.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc57 to %"core::panic::location::Location"*))
  br label %bb4

bb4:                                              ; preds = %bb3
  ret i64 %len
}

; Function Attrs: nonlazybind uwtable
define internal i64 @csv_write([0 x i8]* align 1 %dest.0, i64 %dest.1, [0 x i8]* align 1 %src.0, i64 %src.1) unnamed_addr #1 {
start:
  %0 = call i64 @csv_write2([0 x i8]* align 1 %dest.0, i64 %dest.1, [0 x i8]* align 1 %src.0, i64 %src.1, i8 34)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

declare void @klee_make_symbolic(i8*, i64, i8*)

declare void @klee_print_expr(i8*, ...)

define void @main() {
entry:
  %dest.0 = alloca [0 x i8]*, align 8
  %ptr = alloca [100 x i8], align 1
  %0 = bitcast [100 x i8]* %ptr to i8*
  call void @klee_make_symbolic(i8* %0, i64 100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @klee_sym_arg_name, i32 0, i32 0))
  %1 = bitcast [100 x i8]* %ptr to [0 x i8]*
  store [0 x i8]* %1, [0 x i8]** %dest.0, align 8
  %2 = bitcast [0 x i8]** %dest.0 to i8*
  call void @klee_make_symbolic(i8* %2, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @klee_sym_arg_name.1, i32 0, i32 0))
  %3 = load [0 x i8]*, [0 x i8]** %dest.0, align 8
  %dest.1 = alloca [100 x i64], align 8
  %4 = bitcast [100 x i64]* %dest.1 to i8*
  call void @klee_make_symbolic(i8* %4, i64 800, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @klee_sym_arg_name.2, i32 0, i32 0))
  %5 = bitcast [100 x i64]* %dest.1 to i64*
  %6 = load i64, i64* %5, align 8
  %src.0 = alloca [0 x i8]*, align 8
  %ptr1 = alloca [100 x i8], align 1
  %7 = bitcast [100 x i8]* %ptr1 to i8*
  call void @klee_make_symbolic(i8* %7, i64 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @klee_sym_arg_name.3, i32 0, i32 0))
  %8 = bitcast [100 x i8]* %ptr1 to [0 x i8]*
  store [0 x i8]* %8, [0 x i8]** %src.0, align 8
  %9 = bitcast [0 x i8]** %src.0 to i8*
  call void @klee_make_symbolic(i8* %9, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @klee_sym_arg_name.4, i32 0, i32 0))
  %10 = load [0 x i8]*, [0 x i8]** %src.0, align 8
  %src.1 = alloca [100 x i64], align 8
  %11 = bitcast [100 x i64]* %src.1 to i8*
  call void @klee_make_symbolic(i8* %11, i64 800, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @klee_sym_arg_name.5, i32 0, i32 0))
  %12 = bitcast [100 x i64]* %src.1 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @csv_write([0 x i8]* %3, i64 %6, [0 x i8]* %10, i64 %13)
  %cast_size = bitcast [0 x i8]* %3 to i8*
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @0, i32 0, i32 0), i8* %cast_size)
  %is_not_null = icmp ne i8* %cast_size, null
  br i1 %is_not_null, label %loop, label %null_block

loop:                                             ; preds = %entry
  %gep0 = getelementptr i8, i8* %cast_size, i32 0
  %load0 = load i8, i8* %gep0, align 1
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1, i32 0, i32 0), i8 %load0)
  br label %after_loop

after_loop:                                       ; preds = %null_block, %loop
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3, i32 0, i32 0), i64 %6)
  %cast_size2 = bitcast [0 x i8]* %10 to i8*
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @4, i32 0, i32 0), i8* %cast_size2)
  %is_not_null3 = icmp ne i8* %cast_size2, null
  br i1 %is_not_null3, label %loop4, label %null_block6

null_block:                                       ; preds = %entry
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i64 0)
  br label %after_loop

loop4:                                            ; preds = %after_loop
  %gep07 = getelementptr i8, i8* %cast_size2, i32 0
  %load08 = load i8, i8* %gep07, align 1
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @5, i32 0, i32 0), i8 %load08)
  br label %after_loop5

after_loop5:                                      ; preds = %null_block6, %loop4
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @7, i32 0, i32 0), i64 %13)
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i64 %14)
  %oldVal = load i32, i32* @free_function_call_count, align 4
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @9, i32 0, i32 0), i32 %oldVal)
  ret void

null_block6:                                      ; preds = %after_loop
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i64 0)
  br label %after_loop5
}

define internal void @symbolic_dummy0(i64 %0, i64 %1, %"core::panic::location::Location"* %2) {
entry:
  ret void
}

define internal void @symbolic_dummy1(i64 %0, i64 %1, %"core::panic::location::Location"* %2) {
entry:
  ret void
}

define internal void @symbolic_dummy0.6(i64 %0, i64 %1, %"core::panic::location::Location"* %2) {
entry:
  ret void
}

define internal void @symbolic_dummy1.7(i64 %0, i64 %1, %"core::panic::location::Location"* %2) {
entry:
  ret void
}

define internal void @symbolic_dummy0.19(i64 %0, i64 %1, %"core::panic::location::Location"* %2) {
entry:
  ret void
}

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i8 -1, i8 2}
!3 = !{}
!4 = !{i8 0, i8 2}
