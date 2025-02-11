; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/OSWriteSwapInt32.rs.bc'
source_filename = "OSWriteSwapInt32.50063f9f-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::fmt::rt::v1::Argument" = type { i64, %"core::fmt::rt::v1::FormatSpec" }
%"core::fmt::rt::v1::FormatSpec" = type { { i64, i64 }, { i64, i64 }, i32, i32, i8, [7 x i8] }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc16 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc17 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc16, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\B9\04\00\00\0D\00\00\00" }>, align 8
@alloc5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"Result: 0x" }>, align 1
@alloc7 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [8 x i8] c"\0A\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{ [16 x i8], [8 x i8], [25 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", [8 x i8] undef, [25 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00 \00\00\00\08\00\00\00\03", [7 x i8] undef }>, align 8

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17h20af76cfb3065515E(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_lower_hex17hda1512468e36c7d7E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17ha731477180e9f5e4E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h8b71fe7c98b89f5dE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17ha731477180e9f5e4E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i32*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i32* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !2, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !2, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments16new_v1_formatted17h93a37648a985baa8E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1, [0 x %"core::fmt::rt::v1::Argument"]* align 8 %fmt.0, i64 %fmt.1) unnamed_addr #0 {
start:
  %_6 = alloca { i64*, i64 }, align 8
  %1 = bitcast { i64*, i64 }* %_6 to { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }*
  %2 = getelementptr inbounds { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }, { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }* %1, i32 0, i32 0
  store [0 x %"core::fmt::rt::v1::Argument"]* %fmt.0, [0 x %"core::fmt::rt::v1::Argument"]** %2, align 8
  %3 = getelementptr inbounds { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }, { [0 x %"core::fmt::rt::v1::Argument"]*, i64 }* %1, i32 0, i32 1
  store i64 %fmt.1, i64* %3, align 8
  %4 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %5 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %4, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %5, align 8
  %6 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %4, i32 0, i32 1
  store i64 %pieces.1, i64* %6, align 8
  %7 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %8 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_6, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8, !align !3
  %10 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_6, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %7, i32 0, i32 0
  store i64* %9, i64** %12, align 8
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %7, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %15 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %14, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %15, align 8
  %16 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %14, i32 0, i32 1
  store i64 %args.1, i64* %16, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define i32 @_ZN4core3ptr14read_unaligned17h910a03e4ee9a3699E(i32* %src) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %1 = bitcast i32* %0 to {}*
  %2 = load i32, i32* %0, align 4
  store i32 %2, i32* %tmp, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = bitcast i32* %src to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  %_6 = bitcast i32* %tmp to i8*
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h20af76cfb3065515E(i8* %_4, i8* %_6, i64 4)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_10 = load i32, i32* %tmp, align 4
  br label %bb5

bb5:                                              ; preds = %bb4
  ret i32 %_10
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr15write_unaligned17h3eef56860d75fb7cE(i32* %dst, i32 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %src = alloca i32, align 4
  store i32 %0, i32* %src, align 4
  %_4 = bitcast i32* %src to i8*
  %_7 = bitcast i32* %dst to i8*
  br label %bb1

bb5:                                              ; preds = %cleanup
  br i1 true, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb5

bb1:                                              ; preds = %start
  invoke void @_ZN4core10intrinsics19copy_nonoverlapping17h20af76cfb3065515E(i8* %_4, i8* %_7, i64 4)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb4, %bb5
  %7 = bitcast { i8*, i32 }* %1 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = insertvalue { i8*, i32 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i32 } %11, i32 %10, 1
  resume { i8*, i32 } %12

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hda13a258b4c0bc1fE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: uwtable
define void @os_write_swap_int32(i8* %base, i64 %offset, i32 %data) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i32, align 4
  %2 = getelementptr inbounds i8, i8* %base, i64 %offset
  store i8* %2, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %ptr = bitcast i8* %_3.i to i32*
  %3 = call i32 @llvm.bswap.i32(i32 %data)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN4core3ptr15write_unaligned17h3eef56860d75fb7cE(i32* %ptr, i32 %4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_18 = alloca [1 x { i8*, i64* }], align 8
  %_11 = alloca %"core::fmt::Arguments", align 8
  %result = alloca i32, align 4
  %buffer = alloca [8 x i8], align 1
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %buffer, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 8, i1 false)
  %_3.0 = bitcast [8 x i8]* %buffer to [0 x i8]*
  %base = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hda13a258b4c0bc1fE"([0 x i8]* align 1 %_3.0, i64 8)
  br label %bb1

bb1:                                              ; preds = %start
  call void @os_write_swap_int32(i8* %base, i64 0, i32 305419896)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = bitcast i8* %base to i32*
  %1 = call i32 @_ZN4core3ptr14read_unaligned17h910a03e4ee9a3699E(i32* %_8)
  store i32 %1, i32* %result, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  %2 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_lower_hex17hda1512468e36c7d7E(i32* align 4 %result)
  %_19.0 = extractvalue { i8*, i64* } %2, 0
  %_19.1 = extractvalue { i8*, i64* } %2, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_18, i64 0, i64 0
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0
  store i8* %_19.0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1
  store i64* %_19.1, i64** %5, align 8
  %_15.0 = bitcast [1 x { i8*, i64* }]* %_18 to [0 x { i8*, i64* }]*
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core3fmt9Arguments16new_v1_formatted17h93a37648a985baa8E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_11, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc6 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_15.0, i64 1, [0 x %"core::fmt::rt::v1::Argument"]* align 8 bitcast (<{ [16 x i8], [8 x i8], [25 x i8], [7 x i8] }>* @alloc14 to [0 x %"core::fmt::rt::v1::Argument"]*), i64 1)
  br label %bb6

bb6:                                              ; preds = %bb5
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_11)
  br label %bb7

bb7:                                              ; preds = %bb6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h8b71fe7c98b89f5dE"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i64 8}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/OSWriteSwapInt32.rs.bc", hash: (3531986718, 996407271, 3328612008, 571439959, 3899270822))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^10)))) ; guid = 778539305236101656
^3 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^20, ^5)))) ; guid = 2315533538252652062
^4 = gv: (name: "_ZN4core3fmt10ArgumentV13new17ha731477180e9f5e4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 2540037669030694314
^5 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2581931944946703662
^6 = gv: (name: "llvm.bswap.i32") ; guid = 2706216642482500884
^7 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17h20af76cfb3065515E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 3419203176168018273
^8 = gv: (name: "_ZN4core3fmt9Arguments16new_v1_formatted17h93a37648a985baa8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26))) ; guid = 4306982639855105905
^9 = gv: (name: "os_write_swap_int32", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^16))))) ; guid = 4471151277184323449
^10 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6188358328784819250
^11 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^12 = gv: (name: "_ZN4core3fmt10ArgumentV113new_lower_hex17hda1512468e36c7d7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^4)), refs: (^14)))) ; guid = 9158722950107965845
^13 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9769899862226599765
^14 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h8b71fe7c98b89f5dE") ; guid = 9824452099063887761
^15 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hda13a258b4c0bc1fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 9888074205705436279
^16 = gv: (name: "_ZN4core3ptr15write_unaligned17h3eef56860d75fb7cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^7)), refs: (^18)))) ; guid = 11429775254822279895
^17 = gv: (name: "_ZN4core3ptr14read_unaligned17h910a03e4ee9a3699E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^7))))) ; guid = 13245208113450996061
^18 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^19 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, calls: ((callee: ^15), (callee: ^9), (callee: ^17), (callee: ^12), (callee: ^8), (callee: ^21)), refs: (^13, ^3)))) ; guid = 15822663052811949562
^20 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17157660702089650981
^21 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^22 = blockcount: 33
