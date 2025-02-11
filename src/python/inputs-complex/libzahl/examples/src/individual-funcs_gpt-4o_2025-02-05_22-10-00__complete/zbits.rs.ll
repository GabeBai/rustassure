; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zbits.rs.bc'
source_filename = "zbits.35f2acf2-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc9 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc10 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc19 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zbits.rs" }>, align 1
@alloc12 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00;\00\00\00$\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc14 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00>\00\00\00\0A\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc16 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00?\00\00\00$\00\00\00" }>, align 8
@alloc18 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00?\00\00\00\05\00\00\00" }>, align 8
@alloc20 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00<\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17h7310f41470877732E(i64* %src) unnamed_addr #0 {
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
define i64 @zbits([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %rc = alloca i64, align 8
  %3 = alloca i64, align 8
  %_3 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %a)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb7, %bb1
  %4 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %5 = getelementptr inbounds %Zahl, %Zahl* %4, i32 0, i32 4
  %_7 = load i64*, i64** %5, align 1
  %6 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %7 = getelementptr inbounds %Zahl, %Zahl* %6, i32 0, i32 2
  %_10 = load i64, i64* %7, align 1
  %8 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_10, i64 1)
  %_12.0 = extractvalue { i64, i1 } %8, 0
  %_12.1 = extractvalue { i64, i1 } %8, 1
  %9 = call i1 @llvm.expect.i1(i1 %_12.1, i1 false)
  br i1 %9, label %panic, label %bb4

bb2:                                              ; preds = %bb1
  store i64 1, i64* %3, align 8
  br label %bb17

bb17:                                             ; preds = %bb16, %bb2
  %10 = load i64, i64* %3, align 8
  ret i64 %10

bb4:                                              ; preds = %bb3
  %11 = getelementptr inbounds i64, i64* %_7, i64 %_12.0
  store i64* %11, i64** %1, align 8
  %_3.i = load i64*, i64** %1, align 8
  br label %bb5

panic:                                            ; preds = %bb3
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc12 to %"core::panic::location::Location"*)) #5
  unreachable

bb5:                                              ; preds = %bb4
  %_5 = load i64, i64* %_3.i, align 8
  %12 = icmp eq i64 %_5, 0
  br i1 %12, label %bb6, label %bb8

bb6:                                              ; preds = %bb5
  %13 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %14 = getelementptr inbounds %Zahl, %Zahl* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 1
  %16 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %15, i64 1)
  %_14.0 = extractvalue { i64, i1 } %16, 0
  %_14.1 = extractvalue { i64, i1 } %16, 1
  %17 = call i1 @llvm.expect.i1(i1 %_14.1, i1 false)
  br i1 %17, label %panic5, label %bb7

bb8:                                              ; preds = %bb5
  %18 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %19 = getelementptr inbounds %Zahl, %Zahl* %18, i32 0, i32 2
  %_16 = load i64, i64* %19, align 1
  %20 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_16, i64 8)
  %_18.0 = extractvalue { i64, i1 } %20, 0
  %_18.1 = extractvalue { i64, i1 } %20, 1
  %21 = call i1 @llvm.expect.i1(i1 %_18.1, i1 false)
  br i1 %21, label %panic1, label %bb9

bb9:                                              ; preds = %bb8
  br label %bb10

panic1:                                           ; preds = %bb8
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc14 to %"core::panic::location::Location"*)) #5
  unreachable

bb10:                                             ; preds = %bb9
  %22 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_18.0, i64 8)
  %_20.0 = extractvalue { i64, i1 } %22, 0
  %_20.1 = extractvalue { i64, i1 } %22, 1
  %23 = call i1 @llvm.expect.i1(i1 %_20.1, i1 false)
  br i1 %23, label %panic2, label %bb11

bb11:                                             ; preds = %bb10
  store i64 %_20.0, i64* %rc, align 8
  %24 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %25 = getelementptr inbounds %Zahl, %Zahl* %24, i32 0, i32 4
  %_25 = load i64*, i64** %25, align 1
  %26 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %27 = getelementptr inbounds %Zahl, %Zahl* %26, i32 0, i32 2
  %_28 = load i64, i64* %27, align 1
  %28 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_28, i64 1)
  %_30.0 = extractvalue { i64, i1 } %28, 0
  %_30.1 = extractvalue { i64, i1 } %28, 1
  %29 = call i1 @llvm.expect.i1(i1 %_30.1, i1 false)
  br i1 %29, label %panic3, label %bb12

panic2:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc14 to %"core::panic::location::Location"*)) #5
  unreachable

bb12:                                             ; preds = %bb11
  %30 = getelementptr inbounds i64, i64* %_25, i64 %_30.0
  store i64* %30, i64** %0, align 8
  %_3.i6 = load i64*, i64** %0, align 8
  br label %bb13

panic3:                                           ; preds = %bb11
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #5
  unreachable

bb13:                                             ; preds = %bb12
  %31 = call i64 @_ZN4core3ptr4read17h7310f41470877732E(i64* %_3.i6)
  br label %bb14

bb14:                                             ; preds = %bb13
  %32 = call i64 @llvm.ctlz.i64(i64 %31, i1 false)
  store i64 %32, i64* %2, align 8
  %_2.i = load i64, i64* %2, align 8
  %33 = trunc i64 %_2.i to i32
  br label %bb15

bb15:                                             ; preds = %bb14
  %_21 = zext i32 %33 to i64
  %34 = load i64, i64* %rc, align 8
  %35 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %_21)
  %_31.0 = extractvalue { i64, i1 } %35, 0
  %_31.1 = extractvalue { i64, i1 } %35, 1
  %36 = call i1 @llvm.expect.i1(i1 %_31.1, i1 false)
  br i1 %36, label %panic4, label %bb16

bb16:                                             ; preds = %bb15
  store i64 %_31.0, i64* %rc, align 8
  %37 = load i64, i64* %rc, align 8
  store i64 %37, i64* %3, align 8
  br label %bb17

panic4:                                           ; preds = %bb15
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc18 to %"core::panic::location::Location"*)) #5
  unreachable

bb7:                                              ; preds = %bb6
  %38 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %39 = getelementptr inbounds %Zahl, %Zahl* %38, i32 0, i32 2
  store i64 %_14.0, i64* %39, align 1
  br label %bb3

panic5:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc20 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %1 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  %_2 = load i64, i64* %1, align 1
  %2 = icmp eq i64 %_2, 0
  ret i1 %2
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zbits.rs.bc", hash: (1276976332, 3530077335, 3826205340, 1468575089, 1414680000))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^3 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2008647049208409352
^4 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^5 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 3102369068930044801
^6 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^10)))) ; guid = 3282960536795266989
^7 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 5436943481773832288
^8 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^9 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7192769701548662625
^10 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7248621475295351322
^11 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^10)))) ; guid = 7437102124921884775
^12 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^13 = gv: (name: "zbits", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 102, calls: ((callee: ^7), (callee: ^12), (callee: ^14)), refs: (^6, ^16, ^11, ^3, ^15, ^19, ^17)))) ; guid = 10528502499225088932
^14 = gv: (name: "_ZN4core3ptr4read17h7310f41470877732E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 11091879448910284803
^15 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^10)))) ; guid = 11837889587072737084
^16 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13231960580225423348
^17 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^10)))) ; guid = 13680785322271536803
^18 = gv: (name: "llvm.ctlz.i64") ; guid = 15146615656485281006
^19 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^10)))) ; guid = 16981355617362367721
^20 = blockcount: 29
