; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsave.rs.bc'
source_filename = "zsave.bd031f4b-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc28 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc29 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc34 = private unnamed_addr constant <{ [86 x i8] }> <{ [86 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsave.rs" }>, align 1
@alloc31 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc34, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00A\00\00\00 \00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc33 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc34, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00B\00\00\00 \00\00\00" }>, align 8
@alloc35 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc34, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00L\00\00\00\05\00\00\00" }>, align 8
@alloc37 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc34, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00L\00\00\00Q\00\00\00" }>, align 8
@alloc39 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [86 x i8] }>, <{ [86 x i8] }>* @alloc34, i32 0, i32 0, i32 0), [16 x i8] c"V\00\00\00\00\00\00\00L\00\00\00P\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to multiply with overflow"

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hc87bcd86b93dacacE"(i64 %start1, i64 %n) unnamed_addr #0 {
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
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h9d9839f6d28436e2E"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h5c12b7fbd352387aE(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h1571a44453fc5e49E(i64* %dest)
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
  invoke void @_ZN4core3ptr5write17h7dbde4c7dd9022a1E(i64* %dest, i64 %src)
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
define i64 @_ZN4core3ptr4read17h1571a44453fc5e49E(i64* %src) unnamed_addr #0 {
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
define i64 @_ZN4core3ptr4read17h3879af3e9b00f0c7E(i64* %src) unnamed_addr #0 {
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
define void @_ZN4core3ptr5write17h0174ca4328c55f00E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h7dbde4c7dd9022a1E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h55f72e3602dfccacE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h773536c0072554f0E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h094def5dcea73d45E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h55f72e3602dfccacE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h094def5dcea73d45E({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h69f72ee4d257990cE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h5951c9e4623ff4adE"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h9924a08afe50e4a8E"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hacb6a221095b9f93E"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h5951c9e4623ff4adE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h9d9839f6d28436e2E"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = bitcast { i64, i64 }* %self to i64*
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h9924a08afe50e4a8E"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hc87bcd86b93dacacE"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = bitcast { i64, i64 }* %self to i64*
  %_8 = call i64 @_ZN4core3mem7replace17h5c12b7fbd352387aE(i64* align 8 %_10, i64 %n)
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

; Function Attrs: uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 1 %a) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %1 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  %_2 = load i64, i64* %1, align 1
  %2 = icmp eq i64 %_2, 0
  ret i1 %2
}

; Function Attrs: uwtable
define i64 @zsave([1 x %Zahl]* align 1 %a, i8* %buffer) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %_72 = alloca i64, align 8
  %_55 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_51 = alloca { i64, i64 }, align 8
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h773536c0072554f0E"(i8* %buffer)
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = xor i1 %_4, true
  br i1 %_3, label %bb2, label %bb25

bb25:                                             ; preds = %bb19, %bb7, %bb1
  br label %bb26

bb2:                                              ; preds = %bb1
  %7 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %8 = bitcast %Zahl* %7 to i32*
  %_7 = load i32, i32* %8, align 1
  %_9 = bitcast i8* %buffer to i32*
  store i32 %_7, i32* %_9, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  %9 = getelementptr inbounds i8, i8* %buffer, i64 4
  store i8* %9, i8** %6, align 8
  %_3.i = load i8*, i8** %6, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %10 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %11 = getelementptr inbounds %Zahl, %Zahl* %10, i32 0, i32 2
  %_14 = load i64, i64* %11, align 1
  %_16 = bitcast i8* %_3.i to i64*
  store i64 %_14, i64* %_16, align 8
  br label %bb5

bb5:                                              ; preds = %bb4
  %12 = getelementptr inbounds i8, i8* %_3.i, i64 8
  store i8* %12, i8** %5, align 8
  %_3.i7 = load i8*, i8** %5, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  %_22 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %a)
  br label %bb7

bb7:                                              ; preds = %bb6
  %_21 = xor i1 %_22, true
  br i1 %_21, label %bb8, label %bb25

bb8:                                              ; preds = %bb7
  %13 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %14 = getelementptr inbounds %Zahl, %Zahl* %13, i32 0, i32 4
  %_26 = load i64*, i64** %14, align 1
  %15 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %16 = getelementptr inbounds %Zahl, %Zahl* %15, i32 0, i32 2
  %_29 = load i64, i64* %16, align 1
  %17 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_29, i64 2)
  %_31.0 = extractvalue { i64, i1 } %17, 0
  %_31.1 = extractvalue { i64, i1 } %17, 1
  %18 = call i1 @llvm.expect.i1(i1 %_31.1, i1 false)
  br i1 %18, label %panic, label %bb9

bb9:                                              ; preds = %bb8
  %19 = getelementptr inbounds i64, i64* %_26, i64 %_31.0
  store i64* %19, i64** %4, align 8
  %_3.i8 = load i64*, i64** %4, align 8
  br label %bb10

panic:                                            ; preds = %bb8
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc31 to %"core::panic::location::Location"*)) #6
  unreachable

bb10:                                             ; preds = %bb9
  call void @_ZN4core3ptr5write17h0174ca4328c55f00E(i64* %_3.i8, i64 0)
  br label %bb11

bb11:                                             ; preds = %bb10
  %20 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %21 = getelementptr inbounds %Zahl, %Zahl* %20, i32 0, i32 4
  %_34 = load i64*, i64** %21, align 1
  %22 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %23 = getelementptr inbounds %Zahl, %Zahl* %22, i32 0, i32 2
  %_37 = load i64, i64* %23, align 1
  %24 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_37, i64 1)
  %_39.0 = extractvalue { i64, i1 } %24, 0
  %_39.1 = extractvalue { i64, i1 } %24, 1
  %25 = call i1 @llvm.expect.i1(i1 %_39.1, i1 false)
  br i1 %25, label %panic2, label %bb12

bb12:                                             ; preds = %bb11
  %26 = getelementptr inbounds i64, i64* %_34, i64 %_39.0
  store i64* %26, i64** %3, align 8
  %_3.i9 = load i64*, i64** %3, align 8
  br label %bb13

panic2:                                           ; preds = %bb11
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc33 to %"core::panic::location::Location"*)) #6
  unreachable

bb13:                                             ; preds = %bb12
  call void @_ZN4core3ptr5write17h0174ca4328c55f00E(i64* %_3.i9, i64 0)
  br label %bb14

bb14:                                             ; preds = %bb13
  %27 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %28 = getelementptr inbounds %Zahl, %Zahl* %27, i32 0, i32 4
  %_42 = load i64*, i64** %28, align 1
  %29 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %30 = getelementptr inbounds %Zahl, %Zahl* %29, i32 0, i32 2
  %_44 = load i64, i64* %30, align 1
  %31 = getelementptr inbounds i64, i64* %_42, i64 %_44
  store i64* %31, i64** %2, align 8
  %_3.i10 = load i64*, i64** %2, align 8
  br label %bb15

bb15:                                             ; preds = %bb14
  call void @_ZN4core3ptr5write17h0174ca4328c55f00E(i64* %_3.i10, i64 0)
  br label %bb16

bb16:                                             ; preds = %bb15
  %32 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %33 = getelementptr inbounds %Zahl, %Zahl* %32, i32 0, i32 4
  %src = load i64*, i64** %33, align 1
  %dst = bitcast i8* %_3.i7 to i64*
  %34 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %35 = getelementptr inbounds %Zahl, %Zahl* %34, i32 0, i32 2
  %_52 = load i64, i64* %35, align 1
  %36 = bitcast { i64, i64 }* %_51 to i64*
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_51, i32 0, i32 1
  store i64 %_52, i64* %37, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_51, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_51, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hacb6a221095b9f93E"(i64 %39, i64 %41)
  %_50.0 = extractvalue { i64, i64 } %42, 0
  %_50.1 = extractvalue { i64, i64 } %42, 1
  br label %bb17

bb17:                                             ; preds = %bb16
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0
  store i64 %_50.0, i64* %43, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1
  store i64 %_50.1, i64* %44, align 8
  br label %bb18

bb18:                                             ; preds = %bb24, %bb17
  %45 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h69f72ee4d257990cE"({ i64, i64 }* align 8 %iter)
  store { i64, i64 } %45, { i64, i64 }* %_55, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  %46 = bitcast { i64, i64 }* %_55 to i64*
  %_58 = load i64, i64* %46, align 8, !range !3, !noundef !2
  switch i64 %_58, label %bb21 [
    i64 0, label %bb25
    i64 1, label %bb20
  ]

bb21:                                             ; preds = %bb19
  unreachable

bb20:                                             ; preds = %bb19
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_55, i32 0, i32 1
  %i = load i64, i64* %47, align 8
  %48 = getelementptr inbounds i64, i64* %dst, i64 %i
  store i64* %48, i64** %1, align 8
  %_3.i11 = load i64*, i64** %1, align 8
  br label %bb22

bb22:                                             ; preds = %bb20
  %49 = getelementptr inbounds i64, i64* %src, i64 %i
  store i64* %49, i64** %0, align 8
  %_3.i12 = load i64*, i64** %0, align 8
  br label %bb23

bb23:                                             ; preds = %bb22
  %50 = call i64 @_ZN4core3ptr4read17h3879af3e9b00f0c7E(i64* %_3.i12)
  br label %bb24

bb24:                                             ; preds = %bb23
  call void @_ZN4core3ptr5write17h0174ca4328c55f00E(i64* %_3.i11, i64 %50)
  br label %bb18

bb26:                                             ; preds = %bb25
  br label %bb27

bb27:                                             ; preds = %bb26
  %51 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 8)
  %_71.0 = extractvalue { i64, i1 } %51, 0
  %_71.1 = extractvalue { i64, i1 } %51, 1
  %52 = call i1 @llvm.expect.i1(i1 %_71.1, i1 false)
  br i1 %52, label %panic3, label %bb28

bb28:                                             ; preds = %bb27
  %_73 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %a)
  br label %bb29

panic3:                                           ; preds = %bb27
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc35 to %"core::panic::location::Location"*)) #6
  unreachable

bb29:                                             ; preds = %bb28
  br i1 %_73, label %bb30, label %bb31

bb31:                                             ; preds = %bb29
  %53 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %54 = getelementptr inbounds %Zahl, %Zahl* %53, i32 0, i32 2
  %_77 = load i64, i64* %54, align 1
  %55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_77, i64 3)
  %_79.0 = extractvalue { i64, i1 } %55, 0
  %_79.1 = extractvalue { i64, i1 } %55, 1
  %56 = call i1 @llvm.expect.i1(i1 %_79.1, i1 false)
  br i1 %56, label %panic4, label %bb32

bb30:                                             ; preds = %bb29
  store i64 0, i64* %_72, align 8
  br label %bb35

bb35:                                             ; preds = %bb34, %bb30
  %57 = load i64, i64* %_72, align 8
  %58 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_71.0, i64 %57)
  %_83.0 = extractvalue { i64, i1 } %58, 0
  %_83.1 = extractvalue { i64, i1 } %58, 1
  %59 = call i1 @llvm.expect.i1(i1 %_83.1, i1 false)
  br i1 %59, label %panic6, label %bb36

bb32:                                             ; preds = %bb31
  %_75 = and i64 %_79.0, -4
  br label %bb33

panic4:                                           ; preds = %bb31
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc37 to %"core::panic::location::Location"*)) #6
  unreachable

bb33:                                             ; preds = %bb32
  %60 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_75, i64 8)
  %_82.0 = extractvalue { i64, i1 } %60, 0
  %_82.1 = extractvalue { i64, i1 } %60, 1
  %61 = call i1 @llvm.expect.i1(i1 %_82.1, i1 false)
  br i1 %61, label %panic5, label %bb34

bb34:                                             ; preds = %bb33
  store i64 %_82.0, i64* %_72, align 8
  br label %bb35

panic5:                                           ; preds = %bb33
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc39 to %"core::panic::location::Location"*)) #6
  unreachable

bb36:                                             ; preds = %bb35
  ret i64 %_83.0

panic6:                                           ; preds = %bb35
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc35 to %"core::panic::location::Location"*)) #6
  unreachable
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 0, i64 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsave.rs.bc", hash: (3304134145, 1250994855, 3517244850, 1472738359, 1112090722))
^1 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hc87bcd86b93dacacE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 88349380492841817
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "alloc34", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1075551328970068519
^4 = gv: (name: "zsave", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 178, calls: ((callee: ^26), (callee: ^11), (callee: ^22), (callee: ^13), (callee: ^27), (callee: ^32), (callee: ^12)), refs: (^23, ^8, ^25, ^6, ^17, ^24, ^19)))) ; guid = 2032574778514483898
^5 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^6 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 3478623140293249860
^7 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 4869965237185492649
^8 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5179174779576041138
^9 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h55f72e3602dfccacE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 5321328882617822705
^10 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17h9924a08afe50e4a8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 5380855184575918380
^11 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 5436943481773832288
^12 = gv: (name: "_ZN4core3ptr4read17h3879af3e9b00f0c7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 5511009519436382422
^13 = gv: (name: "_ZN4core3ptr5write17h0174ca4328c55f00E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 6300026657038829383
^14 = gv: (name: "_ZN4core3mem7replace17h5c12b7fbd352387aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^31), (callee: ^18)), refs: (^29)))) ; guid = 6381845952859631355
^15 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^16 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7017500432323736300
^17 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 7123840701814373719
^18 = gv: (name: "_ZN4core3ptr5write17h7dbde4c7dd9022a1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 7576385943348785029
^19 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8126278421626975467
^20 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h9d9839f6d28436e2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 8494679528809882283
^21 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h5951c9e4623ff4adE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^20), (callee: ^10), (callee: ^1), (callee: ^14))))) ; guid = 9769302671436567812
^22 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^23 = gv: (name: "alloc31", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 10683298678421607263
^24 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 11113022429547018368
^25 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 11406468035188541169
^26 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h773536c0072554f0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^30), (callee: ^9))))) ; guid = 13380224848117061472
^27 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hacb6a221095b9f93E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 13482376510149388426
^28 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^29 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^30 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h094def5dcea73d45E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 16587039548149855975
^31 = gv: (name: "_ZN4core3ptr4read17h1571a44453fc5e49E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 17306488834688009431
^32 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h69f72ee4d257990cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^21))))) ; guid = 18419758906270955275
^33 = blockcount: 84
