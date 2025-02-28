; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/isgraph.rs.bc'
source_filename = "isgraph.a753f8a7-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc14 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc15 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc17 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc18 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc19 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc18, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc9 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"'" }>, align 1
@alloc7 = private unnamed_addr constant <{ [26 x i8] }> <{ [26 x i8] c"' is a graphic character.\0A" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [26 x i8] }>, <{ [26 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\1A\00\00\00\00\00\00\00" }>, align 8
@alloc11 = private unnamed_addr constant <{ [30 x i8] }> <{ [30 x i8] c"' is not a graphic character.\0A" }>, align 1
@alloc10 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [30 x i8] }>, <{ [30 x i8] }>* @alloc11, i32 0, i32 0, i32 0), [8 x i8] c"\1E\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hfcb86392072a60aaE(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h4b24d9a796fc5a39E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h0c4b92990e8cd236E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h4b24d9a796fc5a39E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
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
define internal void @_ZN4core3fmt9Arguments6new_v117h368a304b2263d117E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
start:
  %_24 = alloca { i64*, i64 }, align 8
  %_16 = alloca %"core::fmt::Arguments", align 8
  %_3 = alloca i8, align 1
  %_4 = icmp ult i64 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_12 = add i64 %args.1, 1
  %_9 = icmp ugt i64 %pieces.1, %_12
  %1 = zext i1 %_9 to i8
  store i8 %1, i8* %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %2 = load i8, i8* %_3, align 1, !range !3, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %4 = bitcast { i64*, i64 }* %_24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = bitcast { i64*, i64 }* %_24 to {}**
  store {}* null, {}** %5, align 8
  %6 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %7 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %6, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %7, align 8
  %8 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %6, i32 0, i32 1
  store i64 %pieces.1, i64* %8, align 8
  %9 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %10 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_24, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8, !align !4
  %12 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_24, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %9, i32 0, i32 0
  store i64* %11, i64** %14, align 8
  %15 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %9, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %17 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %16, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %17, align 8
  %18 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %16, i32 0, i32 1
  store i64 %args.1, i64* %18, align 8
  ret void

bb4:                                              ; preds = %bb3
  call void @_ZN4core3fmt9Arguments6new_v117h368a304b2263d117E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc15 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc17 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc19 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$16is_ascii_graphic17h3083862a3229ce10E"(i32* align 4 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = load i32, i32* %self, align 4, !range !5, !noundef !1
  %_2 = icmp ule i32 33, %1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  store i8 0, i8* %0, align 1
  br label %bb4

bb1:                                              ; preds = %start
  %2 = load i32, i32* %self, align 4, !range !5, !noundef !1
  %_3 = icmp ule i32 %2, 126
  br i1 %_3, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  store i8 1, i8* %0, align 1
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %4 = trunc i8 %3 to i1
  ret i1 %4
}

; Function Attrs: uwtable
define zeroext i1 @is_graph(i32 %0) unnamed_addr #1 {
start:
  %c = alloca i32, align 4
  store i32 %0, i32* %c, align 4
  %1 = call zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$16is_ascii_graphic17h3083862a3229ce10E"(i32* align 4 %c)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %1
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_24 = alloca [1 x { i8*, i64* }], align 8
  %_17 = alloca %"core::fmt::Arguments", align 8
  %_12 = alloca [1 x { i8*, i64* }], align 8
  %_5 = alloca %"core::fmt::Arguments", align 8
  %c = alloca i32, align 4
  store i32 65, i32* %c, align 4
  %_3 = load i32, i32* %c, align 4, !range !5, !noundef !1
  %_2 = call zeroext i1 @is_graph(i32 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb5

bb5:                                              ; preds = %bb1
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hfcb86392072a60aaE(i32* align 4 %c)
  %_25.0 = extractvalue { i8*, i64* } %0, 0
  %_25.1 = extractvalue { i8*, i64* } %0, 1
  br label %bb6

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hfcb86392072a60aaE(i32* align 4 %c)
  %_13.0 = extractvalue { i8*, i64* } %1, 0
  %_13.1 = extractvalue { i8*, i64* } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %2 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_12, i64 0, i64 0
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  store i8* %_13.0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  store i64* %_13.1, i64** %4, align 8
  %_9.0 = bitcast [1 x { i8*, i64* }]* %_12 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h368a304b2263d117E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_5, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc6 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_9.0, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_5)
  br label %bb8

bb8:                                              ; preds = %bb7, %bb4
  ret void

bb6:                                              ; preds = %bb5
  %5 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_24, i64 0, i64 0
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %5, i32 0, i32 0
  store i8* %_25.0, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %5, i32 0, i32 1
  store i64* %_25.1, i64** %7, align 8
  %_21.0 = bitcast [1 x { i8*, i64* }]* %_24 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h368a304b2263d117E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_17, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc10 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_21.0, i64 1)
  br label %bb7

bb7:                                              ; preds = %bb6
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_17)
  br label %bb8
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h0c4b92990e8cd236E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}
!5 = !{i32 0, i32 1114112}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/isgraph.rs.bc", hash: (3241945525, 3965006599, 3655531520, 1324157473, 4040401540))
^1 = gv: (name: "is_graph", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^9))))) ; guid = 114524872947616134
^2 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1550858432587778795
^3 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h4b24d9a796fc5a39E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 1764940908906362378
^4 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1935776609580575637
^5 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^13, ^2)))) ; guid = 3560243704394091880
^6 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^14)))) ; guid = 6265447413103246751
^7 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^8 = gv: (name: "_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h0c4b92990e8cd236E") ; guid = 8462113626476478650
^9 = gv: (name: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$16is_ascii_graphic17h3083862a3229ce10E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14))) ; guid = 8683662883638115592
^10 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9606511276373229365
^11 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^13, ^10)))) ; guid = 11329395908816907561
^12 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h368a304b2263d117E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^12), (callee: ^19)), refs: (^15, ^6, ^16)))) ; guid = 12954276229382656021
^13 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13339198604774696993
^14 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13771620059469332835
^15 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14303142284498470279
^16 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4)))) ; guid = 15527553898844513171
^17 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, calls: ((callee: ^1), (callee: ^18), (callee: ^12), (callee: ^20)), refs: (^11, ^5)))) ; guid = 15822663052811949562
^18 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17hfcb86392072a60aaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^3)), refs: (^8)))) ; guid = 15972715223021343629
^19 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^20 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^21 = blockcount: 28
