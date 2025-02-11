; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmodmul.rs.bc'
source_filename = "zmodmul.1213710f-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>" = type { i8, [32 x i8] }
%"core::option::Option<Zahl>" = type { i8, [32 x i8] }
%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>" = type { [1 x %Zahl] }
%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::mem::maybe_uninit::MaybeUninit<Zahl>" = type { [32 x i8] }
%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[core::mem::maybe_uninit::MaybeUninit<Zahl>]>>::get_unchecked_mut::{closure#0}]" = type { i64*, i64*, { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 }* }
%"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>" = type { [32 x i8] }
%"core::mem::manually_drop::ManuallyDrop<[core::mem::maybe_uninit::MaybeUninit<Zahl>; 1]>" = type { [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"] }
%"core::ops::try_trait::NeverShortCircuit<Zahl>" = type { %Zahl }
%"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>" = type { i8, [55 x i8] }
%"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Err" = type { [1 x i64], %"core::array::iter::IntoIter<Zahl, 1>" }
%"core::array::iter::IntoIter<Zahl, 1>" = type { { i64, i64 }, [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"] }
%"core::mem::manually_drop::ManuallyDrop<[Zahl; 1]>" = type { [1 x %Zahl] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[core::mem::maybe_uninit::MaybeUninit<Zahl>]>" = type { [2 x i64] }
%"core::mem::manually_drop::ManuallyDrop<Zahl>" = type { %Zahl }
%"core::mem::maybe_uninit::MaybeUninit<[core::mem::maybe_uninit::MaybeUninit<Zahl>; 1]>" = type { [32 x i8] }
%"core::ops::control_flow::ControlFlow<core::ops::try_trait::NeverShortCircuitResidual, Zahl>::Continue" = type { %Zahl }
%"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok" = type { [1 x i8], %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>" }
%"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>::Some" = type { [1 x i8], %"core::ops::try_trait::NeverShortCircuit<Zahl>" }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::option::Option<Zahl>::Some" = type { [1 x i8], %Zahl }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc33 = private unnamed_addr constant <{ [84 x i8] }> <{ [84 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/mem/maybe_uninit.rs" }>, align 1
@alloc34 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [84 x i8] }>, <{ [84 x i8] }>* @alloc33, i32 0, i32 0, i32 0), [16 x i8] c"T\00\00\00\00\00\00\00g\01\00\00?\00\00\00" }>, align 8
@alloc52 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc53 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc52, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc58 = private unnamed_addr constant <{ [77 x i8] }> <{ [77 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/array/mod.rs" }>, align 1
@alloc55 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc58, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00#\03\00\00-\00\00\00" }>, align 8
@alloc57 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc58, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00Y\03\00\00\1B\00\00\00" }>, align 8
@alloc59 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [77 x i8] }>, <{ [77 x i8] }>* @alloc58, i32 0, i32 0, i32 0), [16 x i8] c"M\00\00\00\00\00\00\00\FC\02\00\00+\00\00\00" }>, align 8
@_ZN7zmodmul18LIBZAHL_TMP_MODMUL17hc7e9a18f015a8995E = internal global <{ [32 x i8] }> zeroinitializer, align 1

; Function Attrs: inlinehint uwtable
define void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49c24bbc4b9d7dc8E"(%"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>"* sret(%"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>") %0, i64** align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::option::Option<Zahl>", align 1
  %_3 = bitcast i64** %self to { i8*, i8* }**
  call void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e116ac978464d33E"(%"core::option::Option<Zahl>"* sret(%"core::option::Option<Zahl>") %_2, { i8*, i8* }** align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = bitcast i64** %self to {}*
  call void @"_ZN4core6option15Option$LT$T$GT$3map17h7ca865d59d8a33aaE"(%"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>"* sret(%"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>") %0, %"core::option::Option<Zahl>"* %_2, {}* align 1 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN103_$LT$core..ops..try_trait..NeverShortCircuit$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17ha9459094db89a224E"(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* sret(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>") %0) unnamed_addr #0 {
start:
  unreachable
}

; Function Attrs: uwtable
define void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbe7d3c834c7e155aE"(%"core::option::Option<Zahl>"* sret(%"core::option::Option<Zahl>") %0, { i8*, i8* }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfceb5863f3cd73d6E"({ i8*, i8* }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN4core6option19Option$LT$$RF$T$GT$6cloned17he3c84b27c8c34213E"(%"core::option::Option<Zahl>"* sret(%"core::option::Option<Zahl>") %0, i8* align 1 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb0a6bebf5f9f775cE"(i64 %self.0, i64 %self.1, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca %"core::mem::maybe_uninit::MaybeUninit<Zahl>"*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[core::mem::maybe_uninit::MaybeUninit<Zahl>]>>::get_unchecked_mut::{closure#0}]", align 8
  %1 = bitcast [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %slice.0 to %"core::mem::maybe_uninit::MaybeUninit<Zahl>"*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds %"core::mem::maybe_uninit::MaybeUninit<Zahl>", %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %1, i64 %self.0
  store %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %2, %"core::mem::maybe_uninit::MaybeUninit<Zahl>"** %0, align 8
  %_3.i = load %"core::mem::maybe_uninit::MaybeUninit<Zahl>"*, %"core::mem::maybe_uninit::MaybeUninit<Zahl>"** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hb3a32c397a28cb91E(%"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %_3.i, i64 %_8)
  %4 = extractvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %3, 0
  %5 = extractvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } undef, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %4, 0
  %7 = insertvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %6, i64 %5, 1
  ret { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h48c15624da52ae98E"(i64 %self, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = bitcast { i64, i64 }* %_3 to i64*
  store i64 0, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %self, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = call { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb0a6bebf5f9f775cE"(i64 %3, i64 %5, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %slice.0, i64 %slice.1)
  %7 = extractvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %6, 0
  %8 = extractvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %6, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = insertvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } undef, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %7, 0
  %10 = insertvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %9, i64 %8, 1
  ret { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %10
}

; Function Attrs: inlinehint uwtable
define void @"_ZN49_$LT$T$u20$as$u20$core..array..SpecArrayClone$GT$5clone17h6d059d34b68b7c01E"([1 x %Zahl]* sret([1 x %Zahl]) %0, [1 x %Zahl]* align 1 %array) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i8* }, align 8
  %_6.0 = bitcast [1 x %Zahl]* %array to [0 x %Zahl]*
  %1 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h2fd824bdff359338E"([0 x %Zahl]* align 1 %_6.0, i64 1)
  %_5.0 = extractvalue { i8*, i8* } %1, 0
  %_5.1 = extractvalue { i8*, i8* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call { i8*, i8* } @_ZN4core4iter6traits8iterator8Iterator6cloned17hca7b8e45bd66e5f8E(i8* %_5.0, i8* %_5.1)
  store { i8*, i8* } %2, { i8*, i8* }* %_4, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN4core5array28collect_into_array_unchecked17h28ad6cd8d45d6135E([1 x %Zahl]* sret([1 x %Zahl]) %0, { i8*, i8* }* align 8 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h381ae83207ce2131E"(i64 %start1, i64 %n) unnamed_addr #0 {
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
define void @_ZN4core10intrinsics11write_bytes17h17bb589fdc4125ccE([1 x %Zahl]* %dst, i8 %val, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 32, %count
  %1 = bitcast [1 x %Zahl]* %dst to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 %val, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hb1df801f794908feE"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %_3 = load i64, i64* %self, align 8
  %_4 = load i64, i64* %other, align 8
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6zeroed17h25459821642d4f92E"(%"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>"* sret(%"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>") %u) unnamed_addr #0 {
start:
  %0 = bitcast %"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>"* %u to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>"* %u to [1 x %Zahl]*
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN4core10intrinsics11write_bytes17h17bb589fdc4125ccE([1 x %Zahl]* %1, i8 0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3mem6forget17h2e3b2ed2e94bbbb6E([1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %t) unnamed_addr #0 {
start:
  %_2.i = alloca [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"], align 1
  %_3 = alloca [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"], align 1
  %_2 = alloca %"core::mem::manually_drop::ManuallyDrop<[core::mem::maybe_uninit::MaybeUninit<Zahl>; 1]>", align 1
  %0 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_3 to i8*
  %1 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 32, i1 false)
  %2 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_2.i to i8*
  %3 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 32, i1 false)
  %4 = bitcast %"core::mem::manually_drop::ManuallyDrop<[core::mem::maybe_uninit::MaybeUninit<Zahl>; 1]>"* %_2 to [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*
  %5 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %4 to i8*
  %6 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 32, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3mem6forget17h3839e83123834162E(i8* align 1 %t.0, i64 %t.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  store i8* %t.0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  store i64 %t.1, i64* %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !nonnull !1, !align !2, !noundef !1
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i8*, i64 } undef, i8* %4, 0
  %8 = insertvalue { i8*, i64 } %7, i64 %6, 1
  %_2.0 = extractvalue { i8*, i64 } %8, 0
  %_2.1 = extractvalue { i8*, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7replace17h3181aaaf0eb97851E(i64* align 8 %dest, i64 %src) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %result = invoke i64 @_ZN4core3ptr4read17h1d54e2eb3a075851E(i64* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %1 = load i8, i8* %_7, align 1, !range !3, !noundef !1
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
  invoke void @_ZN4core3ptr5write17h5264bbd0f5ea0942E(i64* %dest, i64 %src)
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
define internal void @_ZN4core3ops8function5FnMut8call_mut17h29de5188da169567E(%"core::ops::try_trait::NeverShortCircuit<Zahl>"* sret(%"core::ops::try_trait::NeverShortCircuit<Zahl>") %0, {}* align 1 %_1, %Zahl* %1) unnamed_addr #0 {
start:
  %_2 = alloca { %Zahl }, align 1
  %2 = bitcast { %Zahl }* %_2 to %Zahl*
  %3 = bitcast %Zahl* %2 to i8*
  %4 = bitcast %Zahl* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 32, i1 false)
  %5 = bitcast { %Zahl }* %_2 to %Zahl*
  call void @_ZN4core3ops9try_trait17NeverShortCircuit17h8b72563b96996d82E(%"core::ops::try_trait::NeverShortCircuit<Zahl>"* sret(%"core::ops::try_trait::NeverShortCircuit<Zahl>") %0, %Zahl* %5)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17h07932a53f7137cd1E"(%"core::ops::try_trait::NeverShortCircuit<Zahl>"* sret(%"core::ops::try_trait::NeverShortCircuit<Zahl>") %0, {}* align 1 %self, %Zahl* %1) unnamed_addr #1 {
start:
  %_4 = alloca { %Zahl }, align 1
  %args = alloca { %Zahl }, align 1
  %2 = bitcast { %Zahl }* %args to %Zahl*
  %3 = bitcast %Zahl* %2 to i8*
  %4 = bitcast %Zahl* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 32, i1 false)
  %5 = bitcast { %Zahl }* %_4 to i8*
  %6 = bitcast { %Zahl }* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 32, i1 false)
  %7 = bitcast { %Zahl }* %_4 to %Zahl*
  call void @_ZN4core3ops8function5FnMut8call_mut17h29de5188da169567E(%"core::ops::try_trait::NeverShortCircuit<Zahl>"* sret(%"core::ops::try_trait::NeverShortCircuit<Zahl>") %0, {}* align 1 %self, %Zahl* %7)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ops9try_trait17NeverShortCircuit17h8b72563b96996d82E(%"core::ops::try_trait::NeverShortCircuit<Zahl>"* sret(%"core::ops::try_trait::NeverShortCircuit<Zahl>") %0, %Zahl* %_1) unnamed_addr #0 {
start:
  %1 = bitcast %"core::ops::try_trait::NeverShortCircuit<Zahl>"* %0 to %Zahl*
  %2 = bitcast %Zahl* %1 to i8*
  %3 = bitcast %Zahl* %_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 32, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr191drop_in_place$LT$core..result..Result$LT$core..ops..try_trait..NeverShortCircuit$LT$$u5b$zmodmul..Zahl$u3b$$u20$1$u5d$$GT$$C$core..array..iter..IntoIter$LT$zmodmul..Zahl$C$1_usize$GT$$GT$$GT$17h4e24d03f860b19b9E"(%"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %_1 to i8*
  %1 = load i8, i8* %0, align 8, !range !3, !noundef !1
  %2 = trunc i8 %1 to i1
  %_2 = zext i1 %2 to i64
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %4 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %_1 to %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Err"*
  %5 = getelementptr inbounds %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Err", %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Err"* %4, i32 0, i32 1
  call void @"_ZN4core3ptr79drop_in_place$LT$core..array..iter..IntoIter$LT$zmodmul..Zahl$C$1_usize$GT$$GT$17hfcf5a611ced4f679E"(%"core::array::iter::IntoIter<Zahl, 1>"* %5)
  br label %bb1
}

; Function Attrs: inlinehint uwtable
define { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hb3a32c397a28cb91E(%"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hbb20fff78651fc5bE({}* %0, i64 %len)
  %2 = extractvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %1, 0
  %3 = extractvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } undef, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %2, 0
  %5 = insertvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %4, i64 %3, 1
  ret { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @_ZN4core3ptr2eq17h49aa49d80544b165E([1 x %Zahl]* %a, [1 x %Zahl]* %b) unnamed_addr #0 {
start:
  %0 = icmp eq [1 x %Zahl]* %a, %b
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17h1d54e2eb3a075851E(i64* %src) unnamed_addr #0 {
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
define void @_ZN4core3ptr4read17h51ea6838e07d606fE([1 x %Zahl]* sret([1 x %Zahl]) %0, [1 x %Zahl]* %src) unnamed_addr #0 {
start:
  %_3.i = alloca %"core::mem::manually_drop::ManuallyDrop<[Zahl; 1]>", align 1
  %_6 = alloca %"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>", align 1
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>", align 1
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>"* %tmp to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>"* %tmp to [1 x %Zahl]*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast [1 x %Zahl]* %2 to i8*
  %4 = bitcast [1 x %Zahl]* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 32, i1 false)
  %5 = bitcast %"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>"* %_6 to i8*
  %6 = bitcast %"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>"* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 32, i1 false)
  %7 = bitcast %"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>"* %_6 to %"core::mem::manually_drop::ManuallyDrop<[Zahl; 1]>"*
  %8 = bitcast %"core::mem::manually_drop::ManuallyDrop<[Zahl; 1]>"* %_3.i to i8*
  %9 = bitcast %"core::mem::manually_drop::ManuallyDrop<[Zahl; 1]>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %9, i64 32, i1 false)
  %10 = bitcast %"core::mem::manually_drop::ManuallyDrop<[Zahl; 1]>"* %_3.i to [1 x %Zahl]*
  %11 = bitcast [1 x %Zahl]* %0 to i8*
  %12 = bitcast [1 x %Zahl]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %12, i64 32, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h5264bbd0f5ea0942E(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr79drop_in_place$LT$core..array..iter..IntoIter$LT$zmodmul..Zahl$C$1_usize$GT$$GT$17hfcf5a611ced4f679E"(%"core::array::iter::IntoIter<Zahl, 1>"* %_1) unnamed_addr #1 {
start:
  call void @"_ZN82_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6620114b6522b655E"(%"core::array::iter::IntoIter<Zahl, 1>"* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h04f3fdc88e86925cE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha41e839af85075fcE"(%Zahl* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast %Zahl* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h5bfa81d5818befe1E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h04f3fdc88e86925cE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata14from_raw_parts17he20c4c18e2bc2597E({}* %data_address) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h5bfa81d5818befe1E({}* %data_address) unnamed_addr #0 {
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
define { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hbb20fff78651fc5bE({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[core::mem::maybe_uninit::MaybeUninit<Zahl>]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[core::mem::maybe_uninit::MaybeUninit<Zahl>]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[core::mem::maybe_uninit::MaybeUninit<Zahl>]>"* %_3 to { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 }*
  %10 = getelementptr inbounds { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 }, { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]** %10, align 8
  %12 = getelementptr inbounds { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 }, { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } undef, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %11, 0
  %15 = insertvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %14, i64 %13, 1
  ret { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hac3107f540156725E"(%Zahl* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to %Zahl**
  store %Zahl* %ptr, %Zahl** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h23d5928a854f2e90E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to %Zahl*
  ret %Zahl* %_2
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr94drop_in_place$LT$core..array..try_collect_into_array..Guard$LT$zmodmul..Zahl$C$1_usize$GT$$GT$17h28f03daa7adf8defE"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN97_$LT$core..array..try_collect_into_array..Guard$LT$T$C$_$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95826fffdec1e03fE"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17hb2c6ecd3bc116f72E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4read17he7d7cd3ccaf3022eE"([1 x %Zahl]* sret([1 x %Zahl]) %0, [1 x %Zahl]* %self) unnamed_addr #0 {
start:
  call void @_ZN4core3ptr4read17h51ea6838e07d606fE([1 x %Zahl]* sret([1 x %Zahl]) %0, [1 x %Zahl]* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h4a9f4f83a92aecf7E"(%Zahl* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast %Zahl* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17he20c4c18e2bc2597E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17hb2c6ecd3bc116f72E"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17hf72a1aa3813e2019E() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha7ffb44bab59bf5fE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17haa94bba098ae92daE"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @_ZN4core4iter6traits8iterator8Iterator3map17h962e3abb739a5f99E({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 8 i64* @"_ZN4core4iter8adapters3map16Map$LT$I$C$F$GT$3new17hc0449122b26ceff4E"({ i8*, i8* }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; Function Attrs: uwtable
define { i8*, i8* } @_ZN4core4iter6traits8iterator8Iterator6cloned17hca7b8e45bd66e5f8E(i8* %self.0, i8* %self.1) unnamed_addr #1 {
start:
  %0 = call { i8*, i8* } @"_ZN4core4iter8adapters6cloned15Cloned$LT$I$GT$3new17h2405c9fdaab5c39aE"(i8* %self.0, i8* %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: uwtable
define align 8 i64* @"_ZN4core4iter8adapters3map16Map$LT$I$C$F$GT$3new17hc0449122b26ceff4E"({ i8*, i8* }* align 8 %iter) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to { i8*, i8* }**
  store { i8*, i8* }* %iter, { i8*, i8* }** %1, align 8
  %2 = bitcast i64** %0 to {}*
  %3 = load i64*, i64** %0, align 8, !nonnull !1, !align !4, !noundef !1
  ret i64* %3
}

; Function Attrs: uwtable
define { i8*, i8* } @"_ZN4core4iter8adapters6cloned15Cloned$LT$I$GT$3new17h2405c9fdaab5c39aE"(i8* %it.0, i8* %it.1) unnamed_addr #1 {
start:
  %0 = alloca { i8*, i8* }, align 8
  %1 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %0, i32 0, i32 0
  store i8* %it.0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %0, i32 0, i32 1
  store i8* %it.1, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %0, i32 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %7 = insertvalue { i8*, i8* } undef, i8* %4, 0
  %8 = insertvalue { i8*, i8* } %7, i8* %6, 1
  ret { i8*, i8* } %8
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core5array22try_collect_into_array17hde60da91e4d88274E(%"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* sret(%"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>") %0, i64** align 8 %iter) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %_3.i.i6 = alloca %"core::mem::manually_drop::ManuallyDrop<[Zahl; 1]>", align 1
  %_2.i7 = alloca %"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>", align 1
  %_2.i = alloca %Zahl, align 1
  %_3.i.i4 = alloca %Zahl, align 1
  %_2.i.i = alloca %"core::mem::manually_drop::ManuallyDrop<Zahl>", align 1
  %_5.i = alloca %Zahl, align 1
  %_4.i = alloca %"core::mem::maybe_uninit::MaybeUninit<Zahl>", align 1
  %1 = alloca { i8*, i32 }, align 8
  %_9.i = alloca i8, align 1
  %_8.i = alloca [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"], align 1
  %_3.i.i = alloca %"core::mem::manually_drop::ManuallyDrop<[core::mem::maybe_uninit::MaybeUninit<Zahl>; 1]>", align 1
  %_1.i = alloca %"core::mem::maybe_uninit::MaybeUninit<[core::mem::maybe_uninit::MaybeUninit<Zahl>; 1]>", align 1
  %2 = alloca { i8*, i32 }, align 8
  %_51 = alloca i8, align 1
  %_50 = alloca i8, align 1
  %_49 = alloca i8, align 1
  %_47 = alloca [1 x %Zahl], align 1
  %_46 = alloca %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>", align 1
  %_45 = alloca [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"], align 1
  %output = alloca [1 x %Zahl], align 1
  %_40 = alloca [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"], align 1
  %_39 = alloca %"core::array::iter::IntoIter<Zahl, 1>", align 8
  %alive = alloca { i64, i64 }, align 8
  %_34 = alloca %Zahl, align 1
  %elem = alloca %Zahl, align 1
  %_25 = alloca %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>", align 1
  %_22 = alloca %"core::ops::try_trait::NeverShortCircuit<Zahl>", align 1
  %_21 = alloca %"core::ops::control_flow::ControlFlow<core::ops::try_trait::NeverShortCircuitResidual, Zahl>::Continue", align 1
  %item = alloca %Zahl, align 1
  %item_rslt = alloca %"core::ops::try_trait::NeverShortCircuit<Zahl>", align 1
  %_16 = alloca %"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>", align 1
  %_12 = alloca { i64, i64 }, align 8
  %iter1 = alloca { i64, i64 }, align 8
  %_10 = alloca { i64, i64 }, align 8
  %guard = alloca { i8*, i64 }, align 8
  %array = alloca [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"], align 1
  %_4 = alloca [1 x %Zahl], align 1
  %_3 = alloca %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>", align 1
  br i1 false, label %bb1, label %bb4

bb4:                                              ; preds = %start
  store i8 1, i8* %_50, align 1
  %3 = bitcast %"core::mem::maybe_uninit::MaybeUninit<[core::mem::maybe_uninit::MaybeUninit<Zahl>; 1]>"* %_1.i to {}*
  %4 = bitcast %"core::mem::maybe_uninit::MaybeUninit<[core::mem::maybe_uninit::MaybeUninit<Zahl>; 1]>"* %_1.i to %"core::mem::manually_drop::ManuallyDrop<[core::mem::maybe_uninit::MaybeUninit<Zahl>; 1]>"*
  %5 = bitcast %"core::mem::manually_drop::ManuallyDrop<[core::mem::maybe_uninit::MaybeUninit<Zahl>; 1]>"* %_3.i.i to i8*
  %6 = bitcast %"core::mem::manually_drop::ManuallyDrop<[core::mem::maybe_uninit::MaybeUninit<Zahl>; 1]>"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 32, i1 false)
  %7 = bitcast %"core::mem::manually_drop::ManuallyDrop<[core::mem::maybe_uninit::MaybeUninit<Zahl>; 1]>"* %_3.i.i to [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*
  %8 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %array to i8*
  %9 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %9, i64 32, i1 false)
  br label %bb5

bb1:                                              ; preds = %start
  call void @"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6zeroed17h25459821642d4f92E"(%"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>"* sret(%"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>") %_2.i7)
  %10 = bitcast %"core::mem::maybe_uninit::MaybeUninit<[Zahl; 1]>"* %_2.i7 to %"core::mem::manually_drop::ManuallyDrop<[Zahl; 1]>"*
  %11 = bitcast %"core::mem::manually_drop::ManuallyDrop<[Zahl; 1]>"* %_3.i.i6 to i8*
  %12 = bitcast %"core::mem::manually_drop::ManuallyDrop<[Zahl; 1]>"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %12, i64 32, i1 false)
  %13 = bitcast %"core::mem::manually_drop::ManuallyDrop<[Zahl; 1]>"* %_3.i.i6 to [1 x %Zahl]*
  %14 = bitcast [1 x %Zahl]* %_4 to i8*
  %15 = bitcast [1 x %Zahl]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 %15, i64 32, i1 false)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @"_ZN94_$LT$core..ops..try_trait..NeverShortCircuit$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h8fb5bdfb484ac35cE"(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* sret(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>") %_3, [1 x %Zahl]* %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  %16 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %0 to %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok"*
  %17 = getelementptr inbounds %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok", %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok"* %16, i32 0, i32 1
  %18 = bitcast %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* %17 to i8*
  %19 = bitcast %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %19, i64 32, i1 false)
  %20 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %0 to i8*
  store i8 0, i8* %20, align 8
  br label %bb31

bb31:                                             ; preds = %bb27, %bb30, %bb3
  ret void

bb5:                                              ; preds = %bb4
  store i8 1, i8* %_49, align 1
  %21 = bitcast { i8*, i64 }* %guard to [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]**
  store [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %array, [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]** %21, align 8
  %22 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %guard, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = bitcast { i64, i64 }* %_10 to i64*
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1
  store i64 1, i64* %24, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hee3aa0fe23a12cb8E"(i64 %26, i64 %28)
          to label %bb6 unwind label %cleanup

bb39:                                             ; preds = %bb36, %bb37, %cleanup.body
  %30 = load i8, i8* %_49, align 1, !range !3, !noundef !1
  %31 = trunc i8 %30 to i1
  br i1 %31, label %bb38, label %bb32

cleanup:                                          ; preds = %bb26, %bb23, %bb19, %bb15, %bb13, %bb9, %bb11, %bb7, %bb5
  %32 = landingpad { i8*, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %bb5.i, %cleanup
  %eh.lpad-body = phi { i8*, i32 } [ %32, %cleanup ], [ %138, %bb5.i ]
  %33 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  %34 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %bb39

bb6:                                              ; preds = %bb5
  %_9.0 = extractvalue { i64, i64 } %29, 0
  %_9.1 = extractvalue { i64, i64 } %29, 1
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter1, i32 0, i32 0
  store i64 %_9.0, i64* %37, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter1, i32 0, i32 1
  store i64 %_9.1, i64* %38, align 8
  br label %bb7

bb7:                                              ; preds = %bb22, %bb6
  %39 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha7ffb44bab59bf5fE"({ i64, i64 }* align 8 %iter1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  store { i64, i64 } %39, { i64, i64 }* %_12, align 8
  %40 = bitcast { i64, i64 }* %_12 to i64*
  %_15 = load i64, i64* %40, align 8, !range !5, !noundef !1
  switch i64 %_15, label %bb10 [
    i64 0, label %bb11
    i64 1, label %bb9
  ]

bb10:                                             ; preds = %bb8
  unreachable

bb11:                                             ; preds = %bb8
  store i8 0, i8* %_49, align 1
  %41 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %guard, i32 0, i32 0
  %_43.0 = load i8*, i8** %41, align 8, !nonnull !1, !align !2, !noundef !1
  %42 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %guard, i32 0, i32 1
  %_43.1 = load i64, i64* %42, align 8
  invoke void @_ZN4core3mem6forget17h3839e83123834162E(i8* align 1 %_43.0, i64 %_43.1)
          to label %bb25 unwind label %cleanup

bb9:                                              ; preds = %bb8
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49c24bbc4b9d7dc8E"(%"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>"* sret(%"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>") %_16, i64** align 8 %iter)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb9
  %43 = bitcast %"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>"* %_16 to i8*
  %44 = load i8, i8* %43, align 1, !range !3, !noundef !1
  %45 = trunc i8 %44 to i1
  %_18 = zext i1 %45 to i64
  switch i64 %_18, label %bb14 [
    i64 0, label %bb13
    i64 1, label %bb15
  ]

bb14:                                             ; preds = %bb12
  unreachable

bb13:                                             ; preds = %bb12
  %46 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %guard, i32 0, i32 1
  %_36 = load i64, i64* %46, align 8
  %47 = bitcast { i64, i64 }* %alive to i64*
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %alive, i32 0, i32 1
  store i64 %_36, i64* %48, align 8
  store i8 0, i8* %_49, align 1
  %49 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %guard, i32 0, i32 0
  %_38.0 = load i8*, i8** %49, align 8, !nonnull !1, !align !2, !noundef !1
  %50 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %guard, i32 0, i32 1
  %_38.1 = load i64, i64* %50, align 8
  invoke void @_ZN4core3mem6forget17h3839e83123834162E(i8* align 1 %_38.0, i64 %_38.1)
          to label %bb23 unwind label %cleanup

bb15:                                             ; preds = %bb12
  %51 = bitcast %"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>"* %_16 to %"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>::Some"*
  %52 = getelementptr inbounds %"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>::Some", %"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>::Some"* %51, i32 0, i32 1
  %53 = bitcast %"core::ops::try_trait::NeverShortCircuit<Zahl>"* %item_rslt to i8*
  %54 = bitcast %"core::ops::try_trait::NeverShortCircuit<Zahl>"* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %53, i8* align 1 %54, i64 32, i1 false)
  %55 = bitcast %"core::ops::try_trait::NeverShortCircuit<Zahl>"* %_22 to i8*
  %56 = bitcast %"core::ops::try_trait::NeverShortCircuit<Zahl>"* %item_rslt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %55, i8* align 1 %56, i64 32, i1 false)
  invoke void @"_ZN94_$LT$core..ops..try_trait..NeverShortCircuit$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6115e3725c2e62d0E"(%"core::ops::control_flow::ControlFlow<core::ops::try_trait::NeverShortCircuitResidual, Zahl>::Continue"* sret(%"core::ops::control_flow::ControlFlow<core::ops::try_trait::NeverShortCircuitResidual, Zahl>::Continue") %_21, %"core::ops::try_trait::NeverShortCircuit<Zahl>"* %_22)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  switch i64 0, label %bb18 [
    i64 0, label %bb17
    i64 1, label %bb19
  ]

bb18:                                             ; preds = %bb16
  unreachable

bb17:                                             ; preds = %bb16
  %57 = bitcast %"core::ops::control_flow::ControlFlow<core::ops::try_trait::NeverShortCircuitResidual, Zahl>::Continue"* %_21 to %Zahl*
  %58 = bitcast %Zahl* %elem to i8*
  %59 = bitcast %Zahl* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %58, i8* align 1 %59, i64 32, i1 false)
  store i8 1, i8* %_51, align 1
  %60 = bitcast %Zahl* %item to i8*
  %61 = bitcast %Zahl* %elem to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %60, i8* align 1 %61, i64 32, i1 false)
  %62 = bitcast { i8*, i64 }* %guard to [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]**
  %_48 = load [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]** %62, align 8, !nonnull !1, !align !2, !noundef !1
  %_31.0 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_48 to [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*
  %63 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %guard, i32 0, i32 1
  %_33 = load i64, i64* %63, align 8
  %_30 = invoke align 1 %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17hb3882ec71ab81befE"([0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* align 1 %_31.0, i64 1, i64 %_33)
          to label %bb21 unwind label %cleanup2

bb19:                                             ; preds = %bb16
  invoke void @"_ZN103_$LT$core..ops..try_trait..NeverShortCircuit$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17ha9459094db89a224E"(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* sret(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>") %_25)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  %64 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %0 to %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok"*
  %65 = getelementptr inbounds %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok", %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok"* %64, i32 0, i32 1
  %66 = bitcast %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* %65 to i8*
  %67 = bitcast %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* %_25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %66, i8* align 1 %67, i64 32, i1 false)
  %68 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %0 to i8*
  store i8 0, i8* %68, align 8
  br label %bb28

bb28:                                             ; preds = %bb24, %bb20
  %69 = load i8, i8* %_49, align 1, !range !3, !noundef !1
  %70 = trunc i8 %69 to i1
  br i1 %70, label %bb34, label %bb29

bb37:                                             ; preds = %cleanup2
  %71 = load i8, i8* %_51, align 1, !range !3, !noundef !1
  %72 = trunc i8 %71 to i1
  br i1 %72, label %bb36, label %bb39

cleanup2:                                         ; preds = %bb17
  %73 = landingpad { i8*, i32 }
          cleanup
  %74 = extractvalue { i8*, i32 } %73, 0
  %75 = extractvalue { i8*, i32 } %73, 1
  %76 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  br label %bb37

bb21:                                             ; preds = %bb17
  store i8 0, i8* %_51, align 1
  %78 = bitcast %Zahl* %_34 to i8*
  %79 = bitcast %Zahl* %item to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %78, i8* align 1 %79, i64 32, i1 false)
  %80 = bitcast %Zahl* %_5.i to i8*
  %81 = bitcast %Zahl* %_34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %80, i8* align 1 %81, i64 32, i1 false)
  %82 = bitcast %Zahl* %_3.i.i4 to i8*
  %83 = bitcast %Zahl* %_5.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %82, i8* align 1 %83, i64 32, i1 false)
  %84 = bitcast %Zahl* %_2.i to i8*
  %85 = bitcast %Zahl* %_3.i.i4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %84, i8* align 1 %85, i64 32, i1 false)
  %86 = bitcast %"core::mem::manually_drop::ManuallyDrop<Zahl>"* %_2.i.i to %Zahl*
  %87 = bitcast %Zahl* %86 to i8*
  %88 = bitcast %Zahl* %_2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %87, i8* align 1 %88, i64 32, i1 false)
  br label %"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$5write17h802f0be3e419f006E.exit"

"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$5write17h802f0be3e419f006E.exit": ; preds = %bb21
  %89 = bitcast %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %_4.i to %"core::mem::manually_drop::ManuallyDrop<Zahl>"*
  %90 = bitcast %"core::mem::manually_drop::ManuallyDrop<Zahl>"* %89 to i8*
  %91 = bitcast %"core::mem::manually_drop::ManuallyDrop<Zahl>"* %_2.i.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %90, i8* align 1 %91, i64 32, i1 false)
  %92 = bitcast %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %_30 to i8*
  %93 = bitcast %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %_4.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %92, i8* align 1 %93, i64 32, i1 false)
  %94 = bitcast %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %_30 to %Zahl*
  br label %bb22

bb22:                                             ; preds = %"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$5write17h802f0be3e419f006E.exit"
  %95 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %guard, i32 0, i32 1
  %96 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %guard, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %95, align 8
  br label %bb7

bb36:                                             ; preds = %bb37
  br label %bb39

bb23:                                             ; preds = %bb13
  store i8 0, i8* %_50, align 1
  %99 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_40 to i8*
  %100 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %99, i8* align 1 %100, i64 32, i1 false)
  %101 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %alive, i32 0, i32 0
  %_41.0 = load i64, i64* %101, align 8
  %102 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %alive, i32 0, i32 1
  %_41.1 = load i64, i64* %102, align 8
  invoke void @"_ZN4core5array4iter21IntoIter$LT$T$C$_$GT$13new_unchecked17h3a23ef38dd8b3a9eE"(%"core::array::iter::IntoIter<Zahl, 1>"* sret(%"core::array::iter::IntoIter<Zahl, 1>") %_39, [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_40, i64 %_41.0, i64 %_41.1)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %103 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %0 to %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Err"*
  %104 = getelementptr inbounds %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Err", %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Err"* %103, i32 0, i32 1
  %105 = bitcast %"core::array::iter::IntoIter<Zahl, 1>"* %104 to i8*
  %106 = bitcast %"core::array::iter::IntoIter<Zahl, 1>"* %_39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 48, i1 false)
  %107 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %0 to i8*
  store i8 1, i8* %107, align 8
  br label %bb28

bb29:                                             ; preds = %bb34, %bb28
  %108 = load i8, i8* %_50, align 1, !range !3, !noundef !1
  %109 = trunc i8 %108 to i1
  br i1 %109, label %bb35, label %bb30

bb34:                                             ; preds = %bb28
  invoke void @"_ZN4core3ptr94drop_in_place$LT$core..array..try_collect_into_array..Guard$LT$zmodmul..Zahl$C$1_usize$GT$$GT$17h28f03daa7adf8defE"({ i8*, i64 }* %guard)
          to label %bb29 unwind label %cleanup3

bb32:                                             ; preds = %bb38, %cleanup3, %bb39
  %110 = load i8, i8* %_50, align 1, !range !3, !noundef !1
  %111 = trunc i8 %110 to i1
  br i1 %111, label %bb40, label %bb33

cleanup3:                                         ; preds = %bb34
  %112 = landingpad { i8*, i32 }
          cleanup
  %113 = extractvalue { i8*, i32 } %112, 0
  %114 = extractvalue { i8*, i32 } %112, 1
  %115 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  %116 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  br label %bb32

bb30:                                             ; preds = %bb35, %bb29
  br label %bb31

bb35:                                             ; preds = %bb29
  br label %bb30

bb25:                                             ; preds = %bb11
  store i8 0, i8* %_50, align 1
  %117 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_45 to i8*
  %118 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %117, i8* align 1 %118, i64 32, i1 false)
  store i8 1, i8* %_9.i, align 1
  %_3.i = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_45 to [1 x %Zahl]*
  invoke void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4read17he7d7cd3ccaf3022eE"([1 x %Zahl]* sret([1 x %Zahl]) %output, [1 x %Zahl]* %_3.i)
          to label %bb2.i unwind label %cleanup.i

bb7.i:                                            ; preds = %cleanup1.i, %cleanup.i
  %119 = load i8, i8* %_9.i, align 1, !range !3, !noundef !1
  %120 = trunc i8 %119 to i1
  br i1 %120, label %bb6.i, label %bb5.i

cleanup.i:                                        ; preds = %bb25
  %121 = landingpad { i8*, i32 }
          cleanup
  %122 = extractvalue { i8*, i32 } %121, 0
  %123 = extractvalue { i8*, i32 } %121, 1
  %124 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  br label %bb7.i

bb2.i:                                            ; preds = %bb25
  store i8 0, i8* %_9.i, align 1
  %126 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_8.i to i8*
  %127 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %126, i8* align 1 %127, i64 32, i1 false)
  invoke void @_ZN4core3mem6forget17h2e3b2ed2e94bbbb6E([1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_8.i)
          to label %"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$17array_assume_init17h14e73bb83d5c0586E.exit" unwind label %cleanup1.i

cleanup1.i:                                       ; preds = %bb2.i
  %128 = landingpad { i8*, i32 }
          cleanup
  %129 = extractvalue { i8*, i32 } %128, 0
  %130 = extractvalue { i8*, i32 } %128, 1
  %131 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  %132 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  br label %bb7.i

bb5.i:                                            ; preds = %bb6.i, %bb7.i
  %133 = bitcast { i8*, i32 }* %1 to i8**
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = insertvalue { i8*, i32 } undef, i8* %134, 0
  %138 = insertvalue { i8*, i32 } %137, i32 %136, 1
  br label %cleanup.body

bb6.i:                                            ; preds = %bb7.i
  br label %bb5.i

"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$17array_assume_init17h14e73bb83d5c0586E.exit": ; preds = %bb2.i
  br label %bb26

bb26:                                             ; preds = %"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$17array_assume_init17h14e73bb83d5c0586E.exit"
  %139 = bitcast [1 x %Zahl]* %_47 to i8*
  %140 = bitcast [1 x %Zahl]* %output to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %139, i8* align 1 %140, i64 32, i1 false)
  invoke void @"_ZN94_$LT$core..ops..try_trait..NeverShortCircuit$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h8fb5bdfb484ac35cE"(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* sret(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>") %_46, [1 x %Zahl]* %_47)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %141 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %0 to %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok"*
  %142 = getelementptr inbounds %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok", %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok"* %141, i32 0, i32 1
  %143 = bitcast %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* %142 to i8*
  %144 = bitcast %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* %_46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %143, i8* align 1 %144, i64 32, i1 false)
  %145 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %0 to i8*
  store i8 0, i8* %145, align 8
  br label %bb31

bb38:                                             ; preds = %bb39
  invoke void @"_ZN4core3ptr94drop_in_place$LT$core..array..try_collect_into_array..Guard$LT$zmodmul..Zahl$C$1_usize$GT$$GT$17h28f03daa7adf8defE"({ i8*, i64 }* %guard) #7
          to label %bb32 unwind label %abort

abort:                                            ; preds = %bb38
  %146 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #8
  unreachable

bb33:                                             ; preds = %bb40, %bb32
  %147 = bitcast { i8*, i32 }* %2 to i8**
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = insertvalue { i8*, i32 } undef, i8* %148, 0
  %152 = insertvalue { i8*, i32 } %151, i32 %150, 1
  resume { i8*, i32 } %152

bb40:                                             ; preds = %bb32
  br label %bb33
}

; Function Attrs: uwtable
define void @_ZN4core5array28collect_into_array_unchecked17h28ad6cd8d45d6135E([1 x %Zahl]* sret([1 x %Zahl]) %array, { i8*, i8* }* align 8 %iter) unnamed_addr #1 {
start:
  %_4 = alloca %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>", align 1
  %map = alloca i64*, align 8
  %0 = call align 8 i64* @_ZN4core4iter6traits8iterator8Iterator3map17h962e3abb739a5f99E({ i8*, i8* }* align 8 %iter)
  store i64* %0, i64** %map, align 8
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core5array32try_collect_into_array_unchecked17h3ba3ec820056df33E(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* sret(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>") %_4, i64** align 8 %map)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* %_4 to [1 x %Zahl]*
  %2 = bitcast [1 x %Zahl]* %array to i8*
  %3 = bitcast [1 x %Zahl]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 32, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @_ZN4core5array32try_collect_into_array_unchecked17h3ba3ec820056df33E(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* sret(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>") %0, i64** align 8 %iter) unnamed_addr #1 {
start:
  %_2 = alloca %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>", align 8
  call void @_ZN4core5array22try_collect_into_array17hde60da91e4d88274E(%"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* sret(%"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>") %_2, i64** align 8 %iter)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hc0d49d2403783bd4E"(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* sret(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>") %0, %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %_2, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc59 to %"core::panic::location::Location"*))
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: uwtable
define { [0 x %Zahl]*, i64 } @"_ZN4core5array4iter21IntoIter$LT$T$C$_$GT$12as_mut_slice17h1a578d87370cb473E"(%"core::array::iter::IntoIter<Zahl, 1>"* align 8 %self) unnamed_addr #1 {
start:
  %_6 = getelementptr inbounds %"core::array::iter::IntoIter<Zahl, 1>", %"core::array::iter::IntoIter<Zahl, 1>"* %self, i32 0, i32 1
  %_5.0 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_6 to [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*
  %_8 = bitcast %"core::array::iter::IntoIter<Zahl, 1>"* %self to { i64, i64 }*
  %0 = call { i64, i64 } @"_ZN73_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39f5aa63a817d35bE"({ i64, i64 }* align 8 %_8)
  %_7.0 = extractvalue { i64, i64 } %0, 0
  %_7.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17h8ce2cfc13b2c563aE"([0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* align 1 %_5.0, i64 1, i64 %_7.0, i64 %_7.1)
  %slice.0 = extractvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %1, 0
  %slice.1 = extractvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5.0.i = bitcast [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %slice.0 to [0 x %Zahl]*
  %2 = insertvalue { [0 x %Zahl]*, i64 } undef, [0 x %Zahl]* %_5.0.i, 0
  %3 = insertvalue { [0 x %Zahl]*, i64 } %2, i64 %slice.1, 1
  %_9.0 = extractvalue { [0 x %Zahl]*, i64 } %3, 0
  %_9.1 = extractvalue { [0 x %Zahl]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { [0 x %Zahl]*, i64 } undef, [0 x %Zahl]* %_9.0, 0
  %5 = insertvalue { [0 x %Zahl]*, i64 } %4, i64 %_9.1, 1
  ret { [0 x %Zahl]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core5array4iter21IntoIter$LT$T$C$_$GT$13new_unchecked17h3a23ef38dd8b3a9eE"(%"core::array::iter::IntoIter<Zahl, 1>"* sret(%"core::array::iter::IntoIter<Zahl, 1>") %0, [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %buffer, i64 %initialized.0, i64 %initialized.1) unnamed_addr #1 {
start:
  %_3 = alloca [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"], align 1
  %1 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_3 to i8*
  %2 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %buffer to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %2, i64 32, i1 false)
  %3 = getelementptr inbounds %"core::array::iter::IntoIter<Zahl, 1>", %"core::array::iter::IntoIter<Zahl, 1>"* %0, i32 0, i32 1
  %4 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %3 to i8*
  %5 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 1 %5, i64 32, i1 false)
  %6 = bitcast %"core::array::iter::IntoIter<Zahl, 1>"* %0 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %initialized.0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %initialized.1, i64* %8, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core5array71_$LT$impl$u20$core..clone..Clone$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5clone17hbce3582ecd69c472E"([1 x %Zahl]* sret([1 x %Zahl]) %0, [1 x %Zahl]* align 1 %self) unnamed_addr #0 {
start:
  call void @"_ZN49_$LT$T$u20$as$u20$core..array..SpecArrayClone$GT$5clone17h6d059d34b68b7c01E"([1 x %Zahl]* sret([1 x %Zahl]) %0, [1 x %Zahl]* align 1 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hc270dc374a7ee58eE"(i64* align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core5clone5impls62_$LT$impl$u20$core..clone..Clone$u20$for$u20$$BP$mut$u20$T$GT$5clone17h906fd0f3d7a1bcabE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = load i64*, i64** %self, align 8
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17h8ce2cfc13b2c563aE"([0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* align 1 %self.0, i64 %self.1, i64 %index.0, i64 %index.1) unnamed_addr #0 {
start:
  %0 = call { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb0a6bebf5f9f775cE"(i64 %index.0, i64 %index.1, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %self.0, i64 %self.1)
  %_6.0 = extractvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %0, 0
  %_6.1 = extractvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } undef, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_6.0, 0
  %2 = insertvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %1, i64 %_6.1, 1
  ret { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define align 1 %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17hb3882ec71ab81befE"([0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %_6 = call %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h10aaae8fd2ee1ad6E"(i64 %index, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %_6
}

; Function Attrs: inlinehint uwtable
define { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17hd8008dbd8a235355E"([0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %0 = call { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h48c15624da52ae98E"(i64 %index, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %self.0, i64 %self.1)
  %_6.0 = extractvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %0, 0
  %_6.1 = extractvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } undef, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_6.0, 0
  %2 = insertvalue { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %1, i64 %_6.1, 1
  ret { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h2fd824bdff359338E"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h2fd79cdbd16099bbE"([0 x %Zahl]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd78d21732201e41dE"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x %Zahl]* %self.0 to %Zahl*
  ret %Zahl* %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h2fd79cdbd16099bbE"([0 x %Zahl]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca %Zahl*, align 8
  %1 = alloca i8*, align 8
  %end = alloca %Zahl*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd78d21732201e41dE"([0 x %Zahl]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h4a9f4f83a92aecf7E"(%Zahl* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 32, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %_11 = bitcast %Zahl* %ptr to i8*
  %4 = getelementptr i8, i8* %_11, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds %Zahl, %Zahl* %ptr, i64 %slice.1
  store %Zahl* %6, %Zahl** %0, align 8
  %7 = load %Zahl*, %Zahl** %0, align 8
  store %Zahl* %7, %Zahl** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hac3107f540156725E"(%Zahl* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  %8 = bitcast i8* %5 to %Zahl*
  store %Zahl* %8, %Zahl** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load %Zahl*, %Zahl** %end, align 8
  %9 = bitcast { i8*, i8* }* %2 to i8**
  store i8* %_18, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %11 = bitcast i8** %10 to %Zahl**
  store %Zahl* %_21, %Zahl** %11, align 8
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !nonnull !1, !noundef !1
  %14 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = insertvalue { i8*, i8* } undef, i8* %13, 0
  %17 = insertvalue { i8*, i8* } %16, i8* %15, 1
  ret { i8*, i8* } %17
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6option15Option$LT$T$GT$3map17h7ca865d59d8a33aaE"(%"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>"* sret(%"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>") %0, %"core::option::Option<Zahl>"* %self, {}* align 1 %f) unnamed_addr #0 {
start:
  %_9 = alloca i8, align 1
  %_8 = alloca %Zahl, align 1
  %_7 = alloca { %Zahl }, align 1
  %_5 = alloca %"core::ops::try_trait::NeverShortCircuit<Zahl>", align 1
  %x = alloca %Zahl, align 1
  store i8 1, i8* %_9, align 1
  %1 = bitcast %"core::option::Option<Zahl>"* %self to i8*
  %2 = load i8, i8* %1, align 1, !range !3, !noundef !1
  %3 = trunc i8 %2 to i1
  %_3 = zext i1 %3 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %4 = bitcast %"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>"* %0 to i8*
  store i8 0, i8* %4, align 1
  br label %bb7

bb3:                                              ; preds = %start
  %5 = bitcast %"core::option::Option<Zahl>"* %self to %"core::option::Option<Zahl>::Some"*
  %6 = getelementptr inbounds %"core::option::Option<Zahl>::Some", %"core::option::Option<Zahl>::Some"* %5, i32 0, i32 1
  %7 = bitcast %Zahl* %x to i8*
  %8 = bitcast %Zahl* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 32, i1 false)
  store i8 0, i8* %_9, align 1
  %9 = bitcast %Zahl* %_8 to i8*
  %10 = bitcast %Zahl* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 32, i1 false)
  %11 = bitcast { %Zahl }* %_7 to %Zahl*
  %12 = bitcast %Zahl* %11 to i8*
  %13 = bitcast %Zahl* %_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 32, i1 false)
  %14 = bitcast { %Zahl }* %_7 to %Zahl*
  call void @"_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17h07932a53f7137cd1E"(%"core::ops::try_trait::NeverShortCircuit<Zahl>"* sret(%"core::ops::try_trait::NeverShortCircuit<Zahl>") %_5, {}* align 1 %f, %Zahl* %14)
  br label %bb4

bb4:                                              ; preds = %bb3
  %15 = bitcast %"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>"* %0 to %"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>::Some"*
  %16 = getelementptr inbounds %"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>::Some", %"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>::Some"* %15, i32 0, i32 1
  %17 = bitcast %"core::ops::try_trait::NeverShortCircuit<Zahl>"* %16 to i8*
  %18 = bitcast %"core::ops::try_trait::NeverShortCircuit<Zahl>"* %_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 32, i1 false)
  %19 = bitcast %"core::option::Option<core::ops::try_trait::NeverShortCircuit<Zahl>>"* %0 to i8*
  store i8 1, i8* %19, align 1
  br label %bb7

bb7:                                              ; preds = %bb4, %bb1
  %20 = load i8, i8* %_9, align 1, !range !3, !noundef !1
  %21 = trunc i8 %20 to i1
  br i1 %21, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: uwtable
define void @"_ZN4core6option19Option$LT$$RF$T$GT$6cloned17he3c84b27c8c34213E"(%"core::option::Option<Zahl>"* sret(%"core::option::Option<Zahl>") %0, i8* align 1 %1) unnamed_addr #1 {
start:
  %_4 = alloca %Zahl, align 1
  %self = alloca i8*, align 8
  store i8* %1, i8** %self, align 8
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %5 = bitcast %"core::option::Option<Zahl>"* %0 to i8*
  store i8 0, i8* %5, align 1
  br label %bb5

bb3:                                              ; preds = %start
  %6 = bitcast i8** %self to %Zahl**
  %t = load %Zahl*, %Zahl** %6, align 8, !nonnull !1, !align !2, !noundef !1
  call void @"_ZN52_$LT$zmodmul..Zahl$u20$as$u20$core..clone..Clone$GT$5clone17hcc246ab8fa0a4eccE"(%Zahl* sret(%Zahl) %_4, %Zahl* align 1 %t)
  br label %bb4

bb4:                                              ; preds = %bb3
  %7 = bitcast %"core::option::Option<Zahl>"* %0 to %"core::option::Option<Zahl>::Some"*
  %8 = getelementptr inbounds %"core::option::Option<Zahl>::Some", %"core::option::Option<Zahl>::Some"* %7, i32 0, i32 1
  %9 = bitcast %Zahl* %8 to i8*
  %10 = bitcast %Zahl* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 32, i1 false)
  %11 = bitcast %"core::option::Option<Zahl>"* %0 to i8*
  store i8 1, i8* %11, align 1
  br label %bb5

bb5:                                              ; preds = %bb4, %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hc0d49d2403783bd4E"(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* sret(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>") %0, %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %self, %"core::panic::location::Location"* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %t = alloca %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>", align 1
  %3 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %self to i8*
  %4 = load i8, i8* %3, align 8, !range !3, !noundef !1
  %5 = trunc i8 %4 to i1
  %_2 = zext i1 %5 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %6 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %self to %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok"*
  %7 = getelementptr inbounds %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok", %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>::Ok"* %6, i32 0, i32 1
  %8 = bitcast %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* %t to i8*
  %9 = bitcast %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %9, i64 32, i1 false)
  %10 = bitcast %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* %0 to i8*
  %11 = bitcast %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %11, i64 32, i1 false)
  %12 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %self to i8*
  %13 = load i8, i8* %12, align 8, !range !3, !noundef !1
  %14 = trunc i8 %13 to i1
  %_6 = zext i1 %14 to i64
  %15 = icmp eq i64 %_6, 0
  br i1 %15, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17hf72a1aa3813e2019E() #9
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %16 = bitcast %"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %self to i8*
  %17 = load i8, i8* %16, align 8, !range !3, !noundef !1
  %18 = trunc i8 %17 to i1
  %_7 = zext i1 %18 to i64
  %19 = icmp eq i64 %_7, 0
  br i1 %19, label %bb7, label %bb9

cleanup:                                          ; preds = %bb1
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  %22 = extractvalue { i8*, i32 } %20, 1
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %bb10

unreachable:                                      ; preds = %bb1
  unreachable

bb7:                                              ; preds = %bb10
  br i1 true, label %bb8, label %bb4

bb9:                                              ; preds = %bb10
  invoke void @"_ZN4core3ptr191drop_in_place$LT$core..result..Result$LT$core..ops..try_trait..NeverShortCircuit$LT$$u5b$zmodmul..Zahl$u3b$$u20$1$u5d$$GT$$C$core..array..iter..IntoIter$LT$zmodmul..Zahl$C$1_usize$GT$$GT$$GT$17h4e24d03f860b19b9E"(%"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %self) #7
          to label %bb4 unwind label %abort

abort:                                            ; preds = %bb9
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #8
  unreachable

bb4:                                              ; preds = %bb8, %bb9, %bb7
  %26 = bitcast { i8*, i32 }* %2 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

bb8:                                              ; preds = %bb7
  br label %bb4

bb5:                                              ; preds = %bb6, %bb3
  ret void

bb6:                                              ; preds = %bb3
  call void @"_ZN4core3ptr191drop_in_place$LT$core..result..Result$LT$core..ops..try_trait..NeverShortCircuit$LT$$u5b$zmodmul..Zahl$u3b$$u20$1$u5d$$GT$$C$core..array..iter..IntoIter$LT$zmodmul..Zahl$C$1_usize$GT$$GT$$GT$17h4e24d03f860b19b9E"(%"core::result::Result<core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>, core::array::iter::IntoIter<Zahl, 1>>"* %self)
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hee3aa0fe23a12cb8E"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e116ac978464d33E"(%"core::option::Option<Zahl>"* sret(%"core::option::Option<Zahl>") %0, { i8*, i8* }** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load { i8*, i8* }*, { i8*, i8* }** %self, align 8, !nonnull !1, !align !4, !noundef !1
  call void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbe7d3c834c7e155aE"(%"core::option::Option<Zahl>"* sret(%"core::option::Option<Zahl>") %0, { i8*, i8* }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN73_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39f5aa63a817d35bE"({ i64, i64 }* align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i64, i64 }, align 8
  %_4 = bitcast { i64, i64 }* %self to i64*
  %_2 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hc270dc374a7ee58eE"(i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_5 = invoke i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hc270dc374a7ee58eE"(i64* align 8 %_7)
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %7 = bitcast { i64, i64 }* %1 to i64*
  store i64 %_2, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 %_5, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = insertvalue { i64, i64 } undef, i64 %10, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14

bb4:                                              ; preds = %bb3
  %15 = bitcast { i8*, i32 }* %0 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; Function Attrs: inlinehint uwtable
define %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h10aaae8fd2ee1ad6E"(i64 %self, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca %"core::mem::maybe_uninit::MaybeUninit<Zahl>"*, align 8
  %1 = bitcast [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %slice.0 to %"core::mem::maybe_uninit::MaybeUninit<Zahl>"*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds %"core::mem::maybe_uninit::MaybeUninit<Zahl>", %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %1, i64 %self
  store %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %2, %"core::mem::maybe_uninit::MaybeUninit<Zahl>"** %0, align 8
  %_3.i = load %"core::mem::maybe_uninit::MaybeUninit<Zahl>"*, %"core::mem::maybe_uninit::MaybeUninit<Zahl>"** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret %"core::mem::maybe_uninit::MaybeUninit<Zahl>"* %_3.i
}

; Function Attrs: uwtable
define void @"_ZN82_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6620114b6522b655E"(%"core::array::iter::IntoIter<Zahl, 1>"* align 8 %self) unnamed_addr #1 {
start:
  %0 = call { [0 x %Zahl]*, i64 } @"_ZN4core5array4iter21IntoIter$LT$T$C$_$GT$12as_mut_slice17h1a578d87370cb473E"(%"core::array::iter::IntoIter<Zahl, 1>"* align 8 %self)
  %_3.0 = extractvalue { [0 x %Zahl]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x %Zahl]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17haa94bba098ae92daE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_3 = bitcast { i64, i64 }* %self to i64*
  %_4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hb1df801f794908feE"(i64* align 8 %_3, i64* align 8 %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb7

bb2:                                              ; preds = %bb1
  %_7 = bitcast { i64, i64 }* %self to i64*
  %_6 = call i64 @"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hc270dc374a7ee58eE"(i64* align 8 %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h381ae83207ce2131E"(i64 %_6, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = bitcast { i64, i64 }* %self to i64*
  %_8 = call i64 @_ZN4core3mem7replace17h3181aaaf0eb97851E(i64* align 8 %_10, i64 %n)
  br label %bb5

bb5:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_8, i64* %2, align 8
  %3 = bitcast { i64, i64 }* %0 to i64*
  store i64 1, i64* %3, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !range !5, !noundef !1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i64, i64 } undef, i64 %5, 0
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1
  ret { i64, i64 } %9
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfceb5863f3cd73d6E"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca %Zahl*, align 8
  %1 = alloca %Zahl*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h23d5928a854f2e90E"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha41e839af85075fcE"(%Zahl* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 32, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %6 = bitcast i8** %5 to %Zahl**
  %_11 = load %Zahl*, %Zahl** %6, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h4a9f4f83a92aecf7E"(%Zahl* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %7 = bitcast { i8*, i8* }* %self to i8**
  %_15 = load i8*, i8** %7, align 8, !nonnull !1, !noundef !1
  %_14 = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h23d5928a854f2e90E"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %8 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %9 = bitcast i8** %8 to %Zahl**
  %_16 = load %Zahl*, %Zahl** %9, align 8
  %_12 = icmp eq %Zahl* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %10 = bitcast { i8*, i8* }* %self to i8**
  %_12.i = load i8*, i8** %10, align 8, !nonnull !1, !noundef !1
  %old.i = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h23d5928a854f2e90E"(i8* %_12.i)
  %11 = bitcast { i8*, i8* }* %self to i8**
  %_16.i = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %_15.i = call %Zahl* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h23d5928a854f2e90E"(i8* %_16.i)
  %12 = getelementptr inbounds %Zahl, %Zahl* %_15.i, i64 1
  store %Zahl* %12, %Zahl** %0, align 8
  %_3.i.i = load %Zahl*, %Zahl** %0, align 8
  %_13.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hac3107f540156725E"(%Zahl* %_3.i.i)
  %13 = bitcast { i8*, i8* }* %self to i8**
  store i8* %_13.i, i8** %13, align 8
  store %Zahl* %old.i, %Zahl** %1, align 8
  %14 = load %Zahl*, %Zahl** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %15 = bitcast i8** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = bitcast i8** %2 to {}**
  store {}* null, {}** %16, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %17 = load i8*, i8** %2, align 8, !align !2
  ret i8* %17

bb13:                                             ; preds = %bb12
  %18 = bitcast i8** %2 to %Zahl**
  store %Zahl* %14, %Zahl** %18, align 8
  br label %bb14
}

; Function Attrs: inlinehint uwtable
define void @"_ZN94_$LT$core..ops..try_trait..NeverShortCircuit$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h8fb5bdfb484ac35cE"(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* sret(%"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>") %0, [1 x %Zahl]* %x) unnamed_addr #0 {
start:
  %_2 = alloca [1 x %Zahl], align 1
  %1 = bitcast [1 x %Zahl]* %_2 to i8*
  %2 = bitcast [1 x %Zahl]* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %2, i64 32, i1 false)
  %3 = bitcast %"core::ops::try_trait::NeverShortCircuit<[Zahl; 1]>"* %0 to [1 x %Zahl]*
  %4 = bitcast [1 x %Zahl]* %3 to i8*
  %5 = bitcast [1 x %Zahl]* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN94_$LT$core..ops..try_trait..NeverShortCircuit$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6115e3725c2e62d0E"(%"core::ops::control_flow::ControlFlow<core::ops::try_trait::NeverShortCircuitResidual, Zahl>::Continue"* sret(%"core::ops::control_flow::ControlFlow<core::ops::try_trait::NeverShortCircuitResidual, Zahl>::Continue") %0, %"core::ops::try_trait::NeverShortCircuit<Zahl>"* %self) unnamed_addr #0 {
start:
  %_2 = alloca %Zahl, align 1
  %1 = bitcast %"core::ops::try_trait::NeverShortCircuit<Zahl>"* %self to %Zahl*
  %2 = bitcast %Zahl* %_2 to i8*
  %3 = bitcast %Zahl* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 32, i1 false)
  %4 = bitcast %"core::ops::control_flow::ControlFlow<core::ops::try_trait::NeverShortCircuitResidual, Zahl>::Continue"* %0 to %Zahl*
  %5 = bitcast %Zahl* %4 to i8*
  %6 = bitcast %Zahl* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 32, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @"_ZN97_$LT$core..array..try_collect_into_array..Guard$LT$T$C$_$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95826fffdec1e03fE"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_10 = alloca i64, align 8
  %_7 = alloca { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %self to [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]**
  %_12 = load [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]** %0, align 8, !nonnull !1, !align !2, !noundef !1
  %_8.0 = bitcast [1 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_12 to [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_11 = load i64, i64* %1, align 8
  store i64 %_11, i64* %_10, align 8
  %2 = load i64, i64* %_10, align 8
  %3 = call { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17hd8008dbd8a235355E"([0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* align 1 %_8.0, i64 1, i64 %2)
  store { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 } %3, { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 }* %_7, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 }, { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 }* %_7, i32 0, i32 0
  %_13.0 = load [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]** %4, align 8, !nonnull !1, !align !2, !noundef !1
  %5 = getelementptr inbounds { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 }, { [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]*, i64 }* %_7, i32 0, i32 1
  %_13.1 = load i64, i64* %5, align 8
  %_5.0.i = bitcast [0 x %"core::mem::maybe_uninit::MaybeUninit<Zahl>"]* %_13.0 to [0 x %Zahl]*
  %6 = insertvalue { [0 x %Zahl]*, i64 } undef, [0 x %Zahl]* %_5.0.i, 0
  %7 = insertvalue { [0 x %Zahl]*, i64 } %6, i64 %_13.1, 1
  %_4.0 = extractvalue { [0 x %Zahl]*, i64 } %7, 0
  %_4.1 = extractvalue { [0 x %Zahl]*, i64 } %7, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @zset([1 x %Zahl]* align 1 %dest, [1 x %Zahl]* align 1 %src) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zmul([1 x %Zahl]* align 1 %dest, [1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zmod([1 x %Zahl]* align 1 %dest, [1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zmodmul([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c, [1 x %Zahl]* align 1 %d) unnamed_addr #1 {
start:
  %temp1 = alloca [1 x %Zahl], align 1
  %temp = alloca [1 x %Zahl], align 1
  %_5 = call zeroext i1 @_ZN4core3ptr2eq17h49aa49d80544b165E([1 x %Zahl]* %a, [1 x %Zahl]* %d)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_5, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  call void @zmul([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c)
  br label %bb7

bb2:                                              ; preds = %bb1
  call void @zset([1 x %Zahl]* align 1 bitcast (<{ [32 x i8] }>* @_ZN7zmodmul18LIBZAHL_TMP_MODMUL17hc7e9a18f015a8995E to [1 x %Zahl]*), [1 x %Zahl]* align 1 %d)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @zmul([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @"_ZN4core5array71_$LT$impl$u20$core..clone..Clone$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5clone17hbce3582ecd69c472E"([1 x %Zahl]* sret([1 x %Zahl]) %temp, [1 x %Zahl]* align 1 %a)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @zmod([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %temp, [1 x %Zahl]* align 1 bitcast (<{ [32 x i8] }>* @_ZN7zmodmul18LIBZAHL_TMP_MODMUL17hc7e9a18f015a8995E to [1 x %Zahl]*))
  br label %bb9

bb9:                                              ; preds = %bb8, %bb5
  ret void

bb7:                                              ; preds = %bb6
  call void @"_ZN4core5array71_$LT$impl$u20$core..clone..Clone$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5clone17hbce3582ecd69c472E"([1 x %Zahl]* sret([1 x %Zahl]) %temp1, [1 x %Zahl]* align 1 %a)
  br label %bb8

bb8:                                              ; preds = %bb7
  call void @zmod([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %temp1, [1 x %Zahl]* align 1 %d)
  br label %bb9
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN52_$LT$zmodmul..Zahl$u20$as$u20$core..clone..Clone$GT$5clone17hcc246ab8fa0a4eccE"(%Zahl* sret(%Zahl) %0, %Zahl* align 1 %self) unnamed_addr #0 {
start:
  %__self_0_0 = bitcast %Zahl* %self to i32*
  %__self_0_1 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 1
  %__self_0_2 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 2
  %__self_0_3 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 3
  %__self_0_4 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 4
  %_7 = load i32, i32* %__self_0_0, align 4
  %_9 = load i32, i32* %__self_0_1, align 4
  %_11 = load i64, i64* %__self_0_2, align 8
  %_13 = load i64, i64* %__self_0_3, align 8
  %_15 = call i64* @"_ZN4core5clone5impls62_$LT$impl$u20$core..clone..Clone$u20$for$u20$$BP$mut$u20$T$GT$5clone17h906fd0f3d7a1bcabE"(i64** align 8 %__self_0_4)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %Zahl* %0 to i32*
  store i32 %_7, i32* %1, align 1
  %2 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 1
  store i32 %_9, i32* %2, align 1
  %3 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  store i64 %_11, i64* %3, align 1
  %4 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 3
  store i64 %_13, i64* %4, align 1
  %5 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 4
  store i64* %_15, i64** %5, align 1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #5

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #7 = { noinline }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}
!5 = !{i64 0, i64 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmodmul.rs.bc", hash: (547910370, 943375118, 4219416902, 3680456239, 3591528530))
^1 = gv: (name: "zmul", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 185440688800986979
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h2fd824bdff359338E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^21))))) ; guid = 750609351931269514
^4 = gv: (name: "_ZN4core5array71_$LT$impl$u20$core..clone..Clone$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5clone17hbce3582ecd69c472E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^64))))) ; guid = 1202734558545036102
^5 = gv: (name: "_ZN4core4hint21unreachable_unchecked17hf72a1aa3813e2019E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 1251397556491776371
^6 = gv: (name: "_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49c24bbc4b9d7dc8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^26), (callee: ^50))))) ; guid = 1446886517249947165
^7 = gv: (name: "_ZN4core3ptr4read17h51ea6838e07d606fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 1451607969409118410
^8 = gv: (name: "_ZN4core3ptr2eq17h49aa49d80544b165E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 1558675794206114715
^9 = gv: (name: "_ZN4core3ptr191drop_in_place$LT$core..result..Result$LT$core..ops..try_trait..NeverShortCircuit$LT$$u5b$zmodmul..Zahl$u3b$$u20$1$u5d$$GT$$C$core..array..iter..IntoIter$LT$zmodmul..Zahl$C$1_usize$GT$$GT$$GT$17h4e24d03f860b19b9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^73))))) ; guid = 1570102972998396589
^10 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hee3aa0fe23a12cb8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 1642534037758553443
^11 = gv: (name: "_ZN4core4iter8adapters6cloned15Cloned$LT$I$GT$3new17h2405c9fdaab5c39aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 1698469271014961371
^12 = gv: (name: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha7ffb44bab59bf5fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^13))))) ; guid = 2045290640876769002
^13 = gv: (name: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17haa94bba098ae92daE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^42), (callee: ^17), (callee: ^20), (callee: ^51))))) ; guid = 2072077746964318557
^14 = gv: (name: "_ZN4core5array22try_collect_into_array17hde60da91e4d88274E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 316, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^82), (callee: ^31), (callee: ^10), (callee: ^12), (callee: ^45), (callee: ^6), (callee: ^63), (callee: ^60), (callee: ^46), (callee: ^33), (callee: ^56), (callee: ^23), (callee: ^77), (callee: ^86)), refs: (^62)))) ; guid = 2184319539981878944
^15 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h5bfa81d5818befe1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 2429787355226889648
^16 = gv: (name: "_ZN4core10intrinsics11write_bytes17h17bb589fdc4125ccE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 2521346706718431804
^17 = gv: (name: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hc270dc374a7ee58eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 2573406836346850750
^18 = gv: (name: "_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbe7d3c834c7e155aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^40), (callee: ^27))))) ; guid = 2941506242617346271
^19 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17hb2c6ecd3bc116f72E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 3044696131865107397
^20 = gv: (name: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h381ae83207ce2131E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 3139764493973882740
^21 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h2fd79cdbd16099bbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, calls: ((callee: ^41), (callee: ^36), (callee: ^48))))) ; guid = 3214523566247811101
^22 = gv: (name: "_ZN4core3ops9try_trait17NeverShortCircuit17h8b72563b96996d82E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 4072969939824304341
^23 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4read17he7d7cd3ccaf3022eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^7))))) ; guid = 4188886492068513498
^24 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17h8ce2cfc13b2c563aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^79))))) ; guid = 5193944986948297170
^25 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17hb3a32c397a28cb91E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^55))))) ; guid = 5351625094592594298
^26 = gv: (name: "_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e116ac978464d33E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^18))))) ; guid = 5477314759745433444
^27 = gv: (name: "_ZN4core6option19Option$LT$$RF$T$GT$6cloned17he3c84b27c8c34213E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^72))))) ; guid = 5743136121100179155
^28 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17hd8008dbd8a235355E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^69))))) ; guid = 5945863948485308349
^29 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h10aaae8fd2ee1ad6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 5995126996435680225
^30 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^31 = gv: (name: "_ZN94_$LT$core..ops..try_trait..NeverShortCircuit$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h8fb5bdfb484ac35cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9))) ; guid = 6560323020489784335
^32 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^33 = gv: (name: "_ZN4core5array4iter21IntoIter$LT$T$C$_$GT$13new_unchecked17h3a23ef38dd8b3a9eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 6827128767142159947
^34 = gv: (name: "alloc53", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^49)))) ; guid = 6856478864057059652
^35 = gv: (name: "_ZN4core3ops8function5FnMut8call_mut17h29de5188da169567E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^22))))) ; guid = 6971014908305239929
^36 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h4a9f4f83a92aecf7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^38), (callee: ^19))))) ; guid = 7322752922819825223
^37 = gv: (name: "_ZN4core5array32try_collect_into_array_unchecked17h3ba3ec820056df33E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^14), (callee: ^84)), refs: (^52)))) ; guid = 7371226803981232733
^38 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17he20c4c18e2bc2597E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 7390161000507636305
^39 = gv: (name: "_ZN4core5array28collect_into_array_unchecked17h28ad6cd8d45d6135E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^61), (callee: ^37))))) ; guid = 7399957397535063685
^40 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfceb5863f3cd73d6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 59, calls: ((callee: ^54), (callee: ^70), (callee: ^36), (callee: ^48))))) ; guid = 7465532387514749349
^41 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hd78d21732201e41dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 7498005403677262241
^42 = gv: (name: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hb1df801f794908feE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 8048959246655547630
^43 = gv: (name: "_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17h07932a53f7137cd1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^35))))) ; guid = 8418618122522201159
^44 = gv: (name: "_ZN4core3ptr4read17h1d54e2eb3a075851E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 8644586556331011268
^45 = gv: (name: "_ZN4core3mem6forget17h3839e83123834162E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15))) ; guid = 8755210125281177229
^46 = gv: (name: "_ZN103_$LT$core..ops..try_trait..NeverShortCircuit$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17ha9459094db89a224E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 9327782650542668379
^47 = gv: (name: "zmodmul", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^8), (callee: ^1), (callee: ^80), (callee: ^4), (callee: ^74)), refs: (^59)))) ; guid = 9526914624600208308
^48 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hac3107f540156725E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 9608168554850999209
^49 = gv: (name: "alloc52", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10090004750369992301
^50 = gv: (name: "_ZN4core6option15Option$LT$T$GT$3map17h7ca865d59d8a33aaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44, calls: ((callee: ^43))))) ; guid = 10640985475970195782
^51 = gv: (name: "_ZN4core3mem7replace17h3181aaaf0eb97851E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^44), (callee: ^57)), refs: (^62)))) ; guid = 11011897104252527135
^52 = gv: (name: "alloc59", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^85)))) ; guid = 11367720821302732531
^53 = gv: (name: "alloc55", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^85)))) ; guid = 11369962960731737222
^54 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h23d5928a854f2e90E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 11549655463122000630
^55 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hbb20fff78651fc5bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 11901015827374206720
^56 = gv: (name: "_ZN4core3ptr94drop_in_place$LT$core..array..try_collect_into_array..Guard$LT$zmodmul..Zahl$C$1_usize$GT$$GT$17h28f03daa7adf8defE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^58))))) ; guid = 12515549538841987696
^57 = gv: (name: "_ZN4core3ptr5write17h5264bbd0f5ea0942E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 12574729283246933468
^58 = gv: (name: "_ZN97_$LT$core..array..try_collect_into_array..Guard$LT$T$C$_$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95826fffdec1e03fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, calls: ((callee: ^28))))) ; guid = 13086828906713258730
^59 = gv: (name: "_ZN7zmodmul18LIBZAHL_TMP_MODMUL17hc7e9a18f015a8995E", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 13132099752348114085
^60 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17hb3882ec71ab81befE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^29))))) ; guid = 13906175844241008520
^61 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator3map17h962e3abb739a5f99E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^66))))) ; guid = 14055737788698859522
^62 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^63 = gv: (name: "_ZN94_$LT$core..ops..try_trait..NeverShortCircuit$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6115e3725c2e62d0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 15021199585669665270
^64 = gv: (name: "_ZN49_$LT$T$u20$as$u20$core..array..SpecArrayClone$GT$5clone17h6d059d34b68b7c01E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^3), (callee: ^83), (callee: ^39))))) ; guid = 15213453417350702590
^65 = gv: (name: "_ZN73_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39f5aa63a817d35bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^17)), refs: (^62)))) ; guid = 15775934373873514984
^66 = gv: (name: "_ZN4core4iter8adapters3map16Map$LT$I$C$F$GT$3new17hc0449122b26ceff4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 15836118786139035603
^67 = gv: (name: "_ZN82_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6620114b6522b655E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^75))))) ; guid = 16015331194250627058
^68 = gv: (name: "alloc33", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16015813590110171858
^69 = gv: (name: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h48c15624da52ae98E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^79))))) ; guid = 16095028429628423525
^70 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha41e839af85075fcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^15), (callee: ^81))))) ; guid = 16232954797018204665
^71 = gv: (name: "alloc34", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^68)))) ; guid = 16397825101921012311
^72 = gv: (name: "_ZN52_$LT$zmodmul..Zahl$u20$as$u20$core..clone..Clone$GT$5clone17hcc246ab8fa0a4eccE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 22, calls: ((callee: ^76))))) ; guid = 16496915287722513592
^73 = gv: (name: "_ZN4core3ptr79drop_in_place$LT$core..array..iter..IntoIter$LT$zmodmul..Zahl$C$1_usize$GT$$GT$17hfcf5a611ced4f679E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^67))))) ; guid = 16822670513167797337
^74 = gv: (name: "zmod", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 16944572769852845422
^75 = gv: (name: "_ZN4core5array4iter21IntoIter$LT$T$C$_$GT$12as_mut_slice17h1a578d87370cb473E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^65), (callee: ^24))))) ; guid = 16992490409437334295
^76 = gv: (name: "_ZN4core5clone5impls62_$LT$impl$u20$core..clone..Clone$u20$for$u20$$BP$mut$u20$T$GT$5clone17h906fd0f3d7a1bcabE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 16997014976218191178
^77 = gv: (name: "_ZN4core3mem6forget17h2e3b2ed2e94bbbb6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15))) ; guid = 17043102022254099756
^78 = gv: (name: "alloc57", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^85)))) ; guid = 17050804129437067809
^79 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb0a6bebf5f9f775cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^25))))) ; guid = 17131374674579586486
^80 = gv: (name: "zset", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 17194806963102885160
^81 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h04f3fdc88e86925cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 17430668752007823185
^82 = gv: (name: "_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6zeroed17h25459821642d4f92E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^16))))) ; guid = 17936138144074939528
^83 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator6cloned17hca7b8e45bd66e5f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^11))))) ; guid = 18114444684050260547
^84 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hc0d49d2403783bd4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^5), (callee: ^9), (callee: ^86)), refs: (^62)))) ; guid = 18178049778388473479
^85 = gv: (name: "alloc58", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18239081514331067752
^86 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^87 = blockcount: 266
