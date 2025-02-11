; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memset.rs.bc'
source_filename = "libzahl_memset.934c38b0-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc19 = private unnamed_addr constant <{ [88 x i8] }> <{ [88 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memset.rs" }>, align 1
@alloc4 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0A\00\00\00\0B\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc6 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0A\00\00\00\09\00\00\00" }>, align 8
@alloc8 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0B\00\00\00\0B\00\00\00" }>, align 8
@alloc10 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0B\00\00\00\09\00\00\00" }>, align 8
@alloc12 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0C\00\00\00\0B\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0C\00\00\00\09\00\00\00" }>, align 8
@alloc16 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0D\00\00\00\0B\00\00\00" }>, align 8
@alloc18 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0D\00\00\00\09\00\00\00" }>, align 8
@alloc20 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [88 x i8] }>, <{ [88 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"X\00\00\00\00\00\00\00\0E\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: alwaysinline uwtable
define void @libzahl_memset([0 x i64]* align 8 %a.0, i64 %a.1, i64 %v, i64 %n) unnamed_addr #0 {
start:
  %i = alloca i64, align 8
  store i64 0, i64* %i, align 8
  br label %bb1

bb1:                                              ; preds = %bb11, %start
  %_6 = load i64, i64* %i, align 8
  %_5 = icmp ult i64 %_6, %n
  br i1 %_5, label %bb2, label %bb12

bb12:                                             ; preds = %bb1
  ret void

bb2:                                              ; preds = %bb1
  %_10 = load i64, i64* %i, align 8
  %0 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_10, i64 0)
  %_11.0 = extractvalue { i64, i1 } %0, 0
  %_11.1 = extractvalue { i64, i1 } %0, 1
  %1 = call i1 @llvm.expect.i1(i1 %_11.1, i1 false)
  br i1 %1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %_13 = icmp ult i64 %_11.0, %a.1
  %2 = call i1 @llvm.expect.i1(i1 %_13, i1 true)
  br i1 %2, label %bb4, label %panic1

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc4 to %"core::panic::location::Location"*)) #4
  unreachable

bb4:                                              ; preds = %bb3
  %3 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %_11.0
  store i64 %v, i64* %3, align 8
  %_16 = load i64, i64* %i, align 8
  %4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_16, i64 1)
  %_17.0 = extractvalue { i64, i1 } %4, 0
  %_17.1 = extractvalue { i64, i1 } %4, 1
  %5 = call i1 @llvm.expect.i1(i1 %_17.1, i1 false)
  br i1 %5, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_11.0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc6 to %"core::panic::location::Location"*)) #4
  unreachable

bb5:                                              ; preds = %bb4
  %_19 = icmp ult i64 %_17.0, %a.1
  %6 = call i1 @llvm.expect.i1(i1 %_19, i1 true)
  br i1 %6, label %bb6, label %panic3

panic2:                                           ; preds = %bb4
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc8 to %"core::panic::location::Location"*)) #4
  unreachable

bb6:                                              ; preds = %bb5
  %7 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %_17.0
  store i64 %v, i64* %7, align 8
  %_22 = load i64, i64* %i, align 8
  %8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_22, i64 2)
  %_23.0 = extractvalue { i64, i1 } %8, 0
  %_23.1 = extractvalue { i64, i1 } %8, 1
  %9 = call i1 @llvm.expect.i1(i1 %_23.1, i1 false)
  br i1 %9, label %panic4, label %bb7

panic3:                                           ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_17.0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc10 to %"core::panic::location::Location"*)) #4
  unreachable

bb7:                                              ; preds = %bb6
  %_25 = icmp ult i64 %_23.0, %a.1
  %10 = call i1 @llvm.expect.i1(i1 %_25, i1 true)
  br i1 %10, label %bb8, label %panic5

panic4:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc12 to %"core::panic::location::Location"*)) #4
  unreachable

bb8:                                              ; preds = %bb7
  %11 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %_23.0
  store i64 %v, i64* %11, align 8
  %_28 = load i64, i64* %i, align 8
  %12 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_28, i64 3)
  %_29.0 = extractvalue { i64, i1 } %12, 0
  %_29.1 = extractvalue { i64, i1 } %12, 1
  %13 = call i1 @llvm.expect.i1(i1 %_29.1, i1 false)
  br i1 %13, label %panic6, label %bb9

panic5:                                           ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_23.0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc14 to %"core::panic::location::Location"*)) #4
  unreachable

bb9:                                              ; preds = %bb8
  %_31 = icmp ult i64 %_29.0, %a.1
  %14 = call i1 @llvm.expect.i1(i1 %_31, i1 true)
  br i1 %14, label %bb10, label %panic7

panic6:                                           ; preds = %bb8
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #4
  unreachable

bb10:                                             ; preds = %bb9
  %15 = getelementptr inbounds [0 x i64], [0 x i64]* %a.0, i64 0, i64 %_29.0
  store i64 %v, i64* %15, align 8
  %16 = load i64, i64* %i, align 8
  %17 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %16, i64 4)
  %_32.0 = extractvalue { i64, i1 } %17, 0
  %_32.1 = extractvalue { i64, i1 } %17, 1
  %18 = call i1 @llvm.expect.i1(i1 %_32.1, i1 false)
  br i1 %18, label %panic8, label %bb11

panic7:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_29.0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc18 to %"core::panic::location::Location"*)) #4
  unreachable

bb11:                                             ; preds = %bb10
  store i64 %_32.0, i64* %i, align 8
  br label %bb1

panic8:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc20 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

attributes #0 = { alwaysinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memset.rs.bc", hash: (1730004198, 1898537396, 2329821468, 2941784380, 2075183386))
^1 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^2 = gv: (name: "libzahl_memset", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 77, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 1, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^5), (callee: ^16)), refs: (^14, ^15, ^4, ^13, ^11, ^3, ^6, ^12, ^9, ^8)))) ; guid = 4660104582018802627
^3 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 5671536418543739716
^4 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 7437627177833074747
^5 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^6 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 10650169389814020334
^7 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11243817792375358576
^8 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 11918862986324797563
^9 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 14314775645706350468
^10 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^11 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 14902920628676526596
^12 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 15221745244668890799
^13 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 15717912369661153175
^14 = gv: (name: "alloc4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 15737142271993668865
^15 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17555356971944490350
^16 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^17 = blockcount: 22
