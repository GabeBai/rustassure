; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/OSReadSwapInt16.rs.bc'
source_filename = "OSReadSwapInt16.5a562782-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::fmt::rt::v1::Argument" = type { i64, %"core::fmt::rt::v1::FormatSpec" }
%"core::fmt::rt::v1::FormatSpec" = type { { i64, i64 }, { i64, i64 }, i32, i32, i8, [7 x i8] }

@alloc5 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"Swapped value: " }>, align 1
@alloc7 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [15 x i8] }>, <{ [15 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [8 x i8] c"\0F\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{ [16 x i8], [8 x i8], [25 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", [8 x i8] undef, [25 x i8] c"\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00 \00\00\00\0C\00\00\00\03", [7 x i8] undef }>, align 8

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17h4b3d5bc1bdb0cbf4E(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_lower_hex17h0e70f3dd47a21107E(i16* align 2 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17he2bd50c8433af500E(i16* align 2 %x, i1 (i16*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17hc870781f0faa097bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17he2bd50c8433af500E(i16* align 2 %x, i1 (i16*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i16*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i16* %x to %"core::fmt::Opaque"*
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
define internal void @_ZN4core3fmt9Arguments16new_v1_formatted17h071f92a55ea03531E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1, [0 x %"core::fmt::rt::v1::Argument"]* align 8 %fmt.0, i64 %fmt.1) unnamed_addr #0 {
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
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha8e923203043bae4E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i16 @os_read_swap_int16(i8* %base, i64 %offset) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i16, align 2
  %value = alloca i16, align 2
  %2 = getelementptr inbounds i8, i8* %base, i64 %offset
  store i8* %2, i8** %0, align 8
  %3 = load i8*, i8** %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  store i16 0, i16* %value, align 2
  %_9 = bitcast i16* %value to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h4b3d5bc1bdb0cbf4E(i8* %3, i8* %_9, i64 2)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_13 = load i16, i16* %value, align 2
  %4 = call i16 @llvm.bswap.i16(i16 %_13)
  store i16 %4, i16* %1, align 2
  %5 = load i16, i16* %1, align 2
  br label %bb4

bb4:                                              ; preds = %bb3
  ret i16 %5
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_14 = alloca [1 x { i8*, i64* }], align 8
  %_7 = alloca %"core::fmt::Arguments", align 8
  %result = alloca i16, align 2
  %data = alloca [4 x i8], align 1
  %0 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i64 0, i64 0
  store i8 1, i8* %0, align 1
  %1 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i64 0, i64 1
  store i8 2, i8* %1, align 1
  %2 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i64 0, i64 2
  store i8 3, i8* %2, align 1
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i64 0, i64 3
  store i8 4, i8* %3, align 1
  %_4.0 = bitcast [4 x i8]* %data to [0 x i8]*
  %_3 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha8e923203043bae4E"([0 x i8]* align 1 %_4.0, i64 4)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call i16 @os_read_swap_int16(i8* %_3, i64 0)
  store i16 %4, i16* %result, align 2
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_lower_hex17h0e70f3dd47a21107E(i16* align 2 %result)
  %_15.0 = extractvalue { i8*, i64* } %5, 0
  %_15.1 = extractvalue { i8*, i64* } %5, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_14, i64 0, i64 0
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %6, i32 0, i32 0
  store i8* %_15.0, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %6, i32 0, i32 1
  store i64* %_15.1, i64** %8, align 8
  %_11.0 = bitcast [1 x { i8*, i64* }]* %_14 to [0 x { i8*, i64* }]*
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN4core3fmt9Arguments16new_v1_formatted17h071f92a55ea03531E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_7, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc6 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_11.0, i64 1, [0 x %"core::fmt::rt::v1::Argument"]* align 8 bitcast (<{ [16 x i8], [8 x i8], [25 x i8], [7 x i8] }>* @alloc14 to [0 x %"core::fmt::rt::v1::Argument"]*), i64 1)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_7)
  br label %bb6

bb6:                                              ; preds = %bb5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17hc870781f0faa097bE"(i16* align 2, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i64 8}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/OSReadSwapInt16.rs.bc", hash: (843505074, 563404365, 746985558, 3034919539, 3661919373))
^1 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3, ^4)))) ; guid = 259282581441967201
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 725394893149833336
^4 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3861536452181430407
^5 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17hc870781f0faa097bE") ; guid = 8007628911699492794
^6 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha8e923203043bae4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 8187115487360625399
^7 = gv: (name: "llvm.bswap.i16") ; guid = 9141528997286493530
^8 = gv: (name: "_ZN4core3fmt10ArgumentV113new_lower_hex17h0e70f3dd47a21107E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^14)), refs: (^5)))) ; guid = 11395869127978695699
^9 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17h4b3d5bc1bdb0cbf4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 13536315096382557011
^10 = gv: (name: "os_read_swap_int16", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18, calls: ((callee: ^9))))) ; guid = 14558585709754256455
^11 = gv: (name: "_ZN4core3fmt9Arguments16new_v1_formatted17h071f92a55ea03531E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26))) ; guid = 14566269472066642540
^12 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15338138851695484892
^13 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34, calls: ((callee: ^6), (callee: ^10), (callee: ^8), (callee: ^11), (callee: ^15)), refs: (^12, ^1)))) ; guid = 15822663052811949562
^14 = gv: (name: "_ZN4core3fmt10ArgumentV13new17he2bd50c8433af500E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 16575695849455238893
^15 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^16 = blockcount: 20
