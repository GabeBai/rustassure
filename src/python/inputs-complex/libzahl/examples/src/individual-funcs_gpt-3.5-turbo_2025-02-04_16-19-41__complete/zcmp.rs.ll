; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zcmp.rs.bc'
source_filename = "zcmp.06f728c3-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc13 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"not implemented" }>, align 1
@alloc16 = private unnamed_addr constant <{ [85 x i8] }> <{ [85 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zcmp.rs" }>, align 1
@alloc15 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [85 x i8] }>, <{ [85 x i8] }>* @alloc16, i32 0, i32 0, i32 0), [16 x i8] c"U\00\00\00\00\00\00\007\00\00\00\05\00\00\00" }>, align 8
@alloc17 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [85 x i8] }>, <{ [85 x i8] }>* @alloc16, i32 0, i32 0, i32 0), [16 x i8] c"U\00\00\00\00\00\00\00@\00\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to multiply with overflow"

; Function Attrs: uwtable
define i32 @zsignum([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %1 = bitcast %Zahl* %0 to i32*
  %2 = load i32, i32* %1, align 1
  ret i32 %2
}

; Function Attrs: uwtable
define i32 @zcmpmag([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #0 {
start:
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [15 x i8] }>* @alloc13 to [0 x i8]*), i64 15, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc15 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: uwtable
define i32 @zcmp([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %_4 = call i32 @zsignum([1 x %Zahl]* align 1 %a)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i32 @zsignum([1 x %Zahl]* align 1 %b)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = icmp ne i32 %_4, %_6
  br i1 %_3, label %bb3, label %bb8

bb8:                                              ; preds = %bb2
  %_13 = call i32 @zsignum([1 x %Zahl]* align 1 %a)
  br label %bb9

bb3:                                              ; preds = %bb2
  %_9 = call i32 @zsignum([1 x %Zahl]* align 1 %a)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_11 = call i32 @zsignum([1 x %Zahl]* align 1 %b)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_8 = icmp slt i32 %_9, %_11
  br i1 %_8, label %bb6, label %bb7

bb7:                                              ; preds = %bb5
  store i32 1, i32* %0, align 4
  br label %bb12

bb6:                                              ; preds = %bb5
  store i32 -1, i32* %0, align 4
  br label %bb12

bb12:                                             ; preds = %bb11, %bb6, %bb7
  %1 = load i32, i32* %0, align 4
  ret i32 %1

bb9:                                              ; preds = %bb8
  %_15 = call i32 @zcmpmag([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b)
  br label %bb10

bb10:                                             ; preds = %bb9
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_13, i32 %_15)
  %_18.0 = extractvalue { i32, i1 } %2, 0
  %_18.1 = extractvalue { i32, i1 } %2, 1
  %3 = call i1 @llvm.expect.i1(i1 %_18.1, i1 false)
  br i1 %3, label %panic, label %bb11

bb11:                                             ; preds = %bb10
  store i32 %_18.0, i32* %0, align 4
  br label %bb12

panic:                                            ; preds = %bb10
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc17 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zcmp.rs.bc", hash: (4193851954, 3068061757, 1648586438, 2932713464, 3325423660))
^1 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^8)))) ; guid = 2501348240853962372
^2 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^3 = gv: (name: "llvm.smul.with.overflow.i32") ; guid = 8885377767807808301
^4 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^8)))) ; guid = 9825090511270116246
^5 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^6 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13718579289117034054
^7 = gv: (name: "zcmp", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32, calls: ((callee: ^9), (callee: ^10), (callee: ^5)), refs: (^4, ^6)))) ; guid = 13896899690263954265
^8 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14204737109062190427
^9 = gv: (name: "zsignum", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 15352537659571043505
^10 = gv: (name: "zcmpmag", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^5)), refs: (^1, ^11)))) ; guid = 15996841441792720421
^11 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16473565944438677324
^12 = blockcount: 16
