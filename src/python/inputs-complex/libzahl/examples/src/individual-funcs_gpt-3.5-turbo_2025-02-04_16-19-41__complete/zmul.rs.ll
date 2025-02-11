; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmul.rs.bc'
source_filename = "zmul.2e61abc9-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc15 = private unnamed_addr constant <{ [85 x i8] }> <{ [85 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmul.rs" }>, align 1
@alloc12 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [85 x i8] }>, <{ [85 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [16 x i8] c"U\00\00\00\00\00\00\006\00\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc14 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [85 x i8] }>, <{ [85 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [16 x i8] c"U\00\00\00\00\00\00\008\00\00\00\05\00\00\00" }>, align 8
@alloc16 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [85 x i8] }>, <{ [85 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [16 x i8] c"U\00\00\00\00\00\00\00<\00\00\00\11\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define void @zmul([1 x %zahl]* align 1 %a, [1 x %zahl]* align 1 %b, [1 x %zahl]* align 1 %c) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds [1 x %zahl], [1 x %zahl]* %b, i64 0, i64 0
  %1 = bitcast %zahl* %0 to i32*
  %_6 = load i32, i32* %1, align 1
  %2 = getelementptr inbounds [1 x %zahl], [1 x %zahl]* %b, i64 0, i64 0
  %3 = bitcast %zahl* %2 to i32*
  %4 = load i32, i32* %3, align 1
  %5 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %4, i32 %_6)
  %_10.0 = extractvalue { i32, i1 } %5, 0
  %_10.1 = extractvalue { i32, i1 } %5, 1
  %6 = call i1 @llvm.expect.i1(i1 %_10.1, i1 false)
  br i1 %6, label %panic, label %bb1

bb1:                                              ; preds = %start
  %7 = getelementptr inbounds [1 x %zahl], [1 x %zahl]* %b, i64 0, i64 0
  %8 = bitcast %zahl* %7 to i32*
  store i32 %_10.0, i32* %8, align 1
  %9 = getelementptr inbounds [1 x %zahl], [1 x %zahl]* %c, i64 0, i64 0
  %10 = bitcast %zahl* %9 to i32*
  %_11 = load i32, i32* %10, align 1
  %11 = getelementptr inbounds [1 x %zahl], [1 x %zahl]* %c, i64 0, i64 0
  %12 = bitcast %zahl* %11 to i32*
  %13 = load i32, i32* %12, align 1
  %14 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %13, i32 %_11)
  %_15.0 = extractvalue { i32, i1 } %14, 0
  %_15.1 = extractvalue { i32, i1 } %14, 1
  %15 = call i1 @llvm.expect.i1(i1 %_15.1, i1 false)
  br i1 %15, label %panic1, label %bb2

panic:                                            ; preds = %start
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc12 to %"core::panic::location::Location"*)) #5
  unreachable

bb2:                                              ; preds = %bb1
  %16 = getelementptr inbounds [1 x %zahl], [1 x %zahl]* %c, i64 0, i64 0
  %17 = bitcast %zahl* %16 to i32*
  store i32 %_15.0, i32* %17, align 1
  call void @zmul_ll([1 x %zahl]* align 1 %a, [1 x %zahl]* align 1 %b, [1 x %zahl]* align 1 %c)
  br label %bb3

panic1:                                           ; preds = %bb1
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc14 to %"core::panic::location::Location"*)) #5
  unreachable

bb3:                                              ; preds = %bb2
  %18 = getelementptr inbounds [1 x %zahl], [1 x %zahl]* %c, i64 0, i64 0
  %19 = bitcast %zahl* %18 to i32*
  store i32 %_11, i32* %19, align 1
  %20 = getelementptr inbounds [1 x %zahl], [1 x %zahl]* %b, i64 0, i64 0
  %21 = bitcast %zahl* %20 to i32*
  store i32 %_6, i32* %21, align 1
  %_24 = call i32 @zsignum([1 x %zahl]* align 1 %b)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_26 = call i32 @zsignum([1 x %zahl]* align 1 %c)
  br label %bb5

bb5:                                              ; preds = %bb4
  %22 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_24, i32 %_26)
  %_28.0 = extractvalue { i32, i1 } %22, 0
  %_28.1 = extractvalue { i32, i1 } %22, 1
  %23 = call i1 @llvm.expect.i1(i1 %_28.1, i1 false)
  br i1 %23, label %panic2, label %bb6

bb6:                                              ; preds = %bb5
  %24 = getelementptr inbounds [1 x %zahl], [1 x %zahl]* %a, i64 0, i64 0
  %25 = bitcast %zahl* %24 to i32*
  store i32 %_28.0, i32* %25, align 1
  ret void

panic2:                                           ; preds = %bb5
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: inlinehint uwtable
define i32 @zsignum([1 x %zahl]* align 1 %z) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds [1 x %zahl], [1 x %zahl]* %z, i64 0, i64 0
  %1 = bitcast %zahl* %0 to i32*
  %2 = load i32, i32* %1, align 1
  ret i32 %2
}

; Function Attrs: uwtable
define void @zmul_ll([1 x %zahl]* align 1 %a, [1 x %zahl]* align 1 %b, [1 x %zahl]* align 1 %c) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmul.rs.bc", hash: (3434919701, 2197239430, 1123014566, 494081851, 2734902299))
^1 = gv: (name: "zmul", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 55, calls: ((callee: ^7), (callee: ^4), (callee: ^10)), refs: (^9, ^11, ^3, ^5)))) ; guid = 185440688800986979
^2 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^3 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^8)))) ; guid = 3178073470734492363
^4 = gv: (name: "zmul_ll", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5566111937333513251
^5 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^8)))) ; guid = 6310684076907463527
^6 = gv: (name: "llvm.smul.with.overflow.i32") ; guid = 8885377767807808301
^7 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^8 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11330666319206350163
^9 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^8)))) ; guid = 13727588044031070938
^10 = gv: (name: "zsignum", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 15352537659571043505
^11 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15455073051960070918
^12 = blockcount: 12
