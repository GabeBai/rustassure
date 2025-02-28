; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/_OSSwapInt64.rs.bc'
source_filename = "_OSSwapInt64.688882e6-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::fmt::rt::v1::Argument" = type { i64, %"core::fmt::rt::v1::FormatSpec" }
%"core::fmt::rt::v1::FormatSpec" = type { { i64, i64 }, { i64, i64 }, i32, i32, i8, [7 x i8] }

@alloc5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"Original: " }>, align 1
@alloc7 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c", Swapped: " }>, align 1
@alloc8 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [8 x i8] c"\0A\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [11 x i8] }>, <{ [11 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\0B\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc8, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc20 = private unnamed_addr constant <{ [16 x i8], [8 x i8], [8 x i8], [8 x i8], [9 x i8], [7 x i8], [16 x i8], [8 x i8], [8 x i8], [8 x i8], [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", [8 x i8] undef, [8 x i8] c"\02\00\00\00\00\00\00\00", [8 x i8] undef, [9 x i8] c" \00\00\00\04\00\00\00\03", [7 x i8] undef, [16 x i8] c"\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", [8 x i8] undef, [8 x i8] c"\02\00\00\00\00\00\00\00", [8 x i8] undef, [9 x i8] c" \00\00\00\04\00\00\00\03", [7 x i8] undef }>, align 8

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17hc750adc0982eb29cE(i64* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hcefa288410b3e3d7E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17hc7ea05045a8ba070E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17hcefa288410b3e3d7E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i64*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i64* %x to %"core::fmt::Opaque"*
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
define internal void @_ZN4core3fmt9Arguments16new_v1_formatted17h78aaf0f4633d7b60E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1, [0 x %"core::fmt::rt::v1::Argument"]* align 8 %fmt.0, i64 %fmt.1) unnamed_addr #0 {
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

; Function Attrs: uwtable
define i64 @osswap_int64(i64 %data) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %1 = call i64 @llvm.bswap.i64(i64 %data)
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_12 = alloca [2 x { i8*, i64* }], align 8
  %_5 = alloca %"core::fmt::Arguments", align 8
  %swapped = alloca i64, align 8
  %data = alloca i64, align 8
  store i64 1311768467294899695, i64* %data, align 8
  %_3 = load i64, i64* %data, align 8
  %0 = call i64 @osswap_int64(i64 %_3)
  store i64 %0, i64* %swapped, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17hc750adc0982eb29cE(i64* align 8 %data)
  %_13.0 = extractvalue { i8*, i64* } %1, 0
  %_13.1 = extractvalue { i8*, i64* } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_upper_hex17hc750adc0982eb29cE(i64* align 8 %swapped)
  %_16.0 = extractvalue { i8*, i64* } %2, 0
  %_16.1 = extractvalue { i8*, i64* } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_12, i64 0, i64 0
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0
  store i8* %_13.0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1
  store i64* %_13.1, i64** %5, align 8
  %6 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_12, i64 0, i64 1
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %6, i32 0, i32 0
  store i8* %_16.0, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %6, i32 0, i32 1
  store i64* %_16.1, i64** %8, align 8
  %_9.0 = bitcast [2 x { i8*, i64* }]* %_12 to [0 x { i8*, i64* }]*
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN4core3fmt9Arguments16new_v1_formatted17h78aaf0f4633d7b60E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_5, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc6 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* align 8 %_9.0, i64 2, [0 x %"core::fmt::rt::v1::Argument"]* align 8 bitcast (<{ [16 x i8], [8 x i8], [8 x i8], [8 x i8], [9 x i8], [7 x i8], [16 x i8], [8 x i8], [8 x i8], [8 x i8], [9 x i8], [7 x i8] }>* @alloc20 to [0 x %"core::fmt::rt::v1::Argument"]*), i64 2)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_5)
  br label %bb6

bb6:                                              ; preds = %bb5
  ret void
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17hc7ea05045a8ba070E"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i64 8}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/_OSSwapInt64.rs.bc", hash: (1978984313, 3209476190, 4256549520, 4103080923, 1871764258))
^1 = gv: (name: "llvm.bswap.i64") ; guid = 1049797340822038457
^2 = gv: (name: "_ZN4core3fmt9Arguments16new_v1_formatted17h78aaf0f4633d7b60E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26))) ; guid = 1797890598369820406
^3 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3535516512003905037
^4 = gv: (name: "_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17hc7ea05045a8ba070E") ; guid = 5150825748678139413
^5 = gv: (name: "_ZN4core3fmt10ArgumentV13new17hcefa288410b3e3d7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 8074533303114274131
^6 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9910865444632325666
^7 = gv: (name: "_ZN4core3fmt10ArgumentV113new_upper_hex17hc750adc0982eb29cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^5)), refs: (^4)))) ; guid = 10865047640378236021
^8 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11824704955344900646
^9 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14564764537090119496
^10 = gv: (name: "osswap_int64", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 14802616351941148408
^11 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34, calls: ((callee: ^10), (callee: ^7), (callee: ^2), (callee: ^13)), refs: (^6, ^12)))) ; guid = 15822663052811949562
^12 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^8, ^3, ^9)))) ; guid = 17151616496022575142
^13 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^14 = blockcount: 15
