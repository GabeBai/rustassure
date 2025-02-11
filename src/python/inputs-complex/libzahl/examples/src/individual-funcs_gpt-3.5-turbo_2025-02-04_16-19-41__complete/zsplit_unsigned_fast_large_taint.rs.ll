; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_unsigned_fast_large_taint.rs.bc'
source_filename = "zsplit_unsigned_fast_large_taint.a72415a8-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, %ZahlCharT* }>
%ZahlCharT = type <{ i64 }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc11 = private unnamed_addr constant <{ [113 x i8] }> <{ [113 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_unsigned_fast_large_taint.rs" }>, align 1
@alloc8 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [113 x i8] }>, <{ [113 x i8] }>* @alloc11, i32 0, i32 0, i32 0), [16 x i8] c"q\00\00\00\00\00\00\00D\00\00\00\11\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc10 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [113 x i8] }>, <{ [113 x i8] }>* @alloc11, i32 0, i32 0, i32 0), [16 x i8] c"q\00\00\00\00\00\00\00I\00\00\004\00\00\00" }>, align 8
@alloc12 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [113 x i8] }>, <{ [113 x i8] }>* @alloc11, i32 0, i32 0, i32 0), [16 x i8] c"q\00\00\00\00\00\00\00J\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: uwtable
define void @zsplit_unsigned_fast_large_taint(%Zahl* align 1 %high, %Zahl* align 1 %low, %Zahl* align 1 %a, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca %ZahlCharT*, align 8
  %1 = alloca %ZahlCharT*, align 8
  %_16 = alloca i8, align 1
  %_7.0 = lshr i64 %n, 6
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %Zahl* %high to i32*
  store i32 1, i32* %2, align 1
  %3 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_8 = load i64, i64* %3, align 1
  %4 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_8, i64 %_7.0)
  %_10.0 = extractvalue { i64, i1 } %4, 0
  %_10.1 = extractvalue { i64, i1 } %4, 1
  %5 = call i1 @llvm.expect.i1(i1 %_10.1, i1 false)
  br i1 %5, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %6 = getelementptr inbounds %Zahl, %Zahl* %high, i32 0, i32 2
  store i64 %_10.0, i64* %6, align 1
  %7 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_12 = load %ZahlCharT*, %ZahlCharT** %7, align 1
  %8 = getelementptr inbounds %ZahlCharT, %ZahlCharT* %_12, i64 %_7.0
  store %ZahlCharT* %8, %ZahlCharT** %1, align 8
  %_3.i = load %ZahlCharT*, %ZahlCharT** %1, align 8
  br label %bb3

panic:                                            ; preds = %bb1
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc8 to %"core::panic::location::Location"*)) #4
  unreachable

bb3:                                              ; preds = %bb2
  %9 = getelementptr inbounds %Zahl, %Zahl* %high, i32 0, i32 4
  store %ZahlCharT* %_3.i, %ZahlCharT** %9, align 1
  %10 = bitcast %Zahl* %low to i32*
  store i32 1, i32* %10, align 1
  %11 = getelementptr inbounds %Zahl, %Zahl* %low, i32 0, i32 2
  store i64 %_7.0, i64* %11, align 1
  %12 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_15 = load %ZahlCharT*, %ZahlCharT** %12, align 1
  %13 = getelementptr inbounds %Zahl, %Zahl* %low, i32 0, i32 4
  store %ZahlCharT* %_15, %ZahlCharT** %13, align 1
  br label %bb4

bb4:                                              ; preds = %bb11, %bb3
  %14 = getelementptr inbounds %Zahl, %Zahl* %low, i32 0, i32 2
  %_18 = load i64, i64* %14, align 1
  %_17 = icmp ugt i64 %_18, 0
  br i1 %_17, label %bb6, label %bb5

bb5:                                              ; preds = %bb4
  store i8 0, i8* %_16, align 1
  br label %bb7

bb6:                                              ; preds = %bb4
  %15 = getelementptr inbounds %Zahl, %Zahl* %low, i32 0, i32 4
  %_22 = load %ZahlCharT*, %ZahlCharT** %15, align 1
  %16 = getelementptr inbounds %Zahl, %Zahl* %low, i32 0, i32 2
  %_24 = load i64, i64* %16, align 1
  %17 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_24, i64 1)
  %_25.0 = extractvalue { i64, i1 } %17, 0
  %_25.1 = extractvalue { i64, i1 } %17, 1
  %18 = call i1 @llvm.expect.i1(i1 %_25.1, i1 false)
  br i1 %18, label %panic1, label %bb8

bb8:                                              ; preds = %bb6
  %19 = getelementptr inbounds %ZahlCharT, %ZahlCharT* %_22, i64 %_25.0
  store %ZahlCharT* %19, %ZahlCharT** %0, align 8
  %_3.i3 = load %ZahlCharT*, %ZahlCharT** %0, align 8
  br label %bb9

panic1:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc10 to %"core::panic::location::Location"*)) #4
  unreachable

bb9:                                              ; preds = %bb8
  %20 = bitcast %ZahlCharT* %_3.i3 to i64*
  %_20 = load i64, i64* %20, align 1
  %_19 = icmp ne i64 %_20, 0
  %21 = zext i1 %_19 to i8
  store i8 %21, i8* %_16, align 1
  br label %bb7

bb7:                                              ; preds = %bb9, %bb5
  %22 = load i8, i8* %_16, align 1, !range !1, !noundef !2
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb10, label %bb12

bb12:                                             ; preds = %bb7
  %24 = getelementptr inbounds %Zahl, %Zahl* %low, i32 0, i32 2
  %_27 = load i64, i64* %24, align 1
  %25 = icmp eq i64 %_27, 0
  br i1 %25, label %bb13, label %bb14

bb10:                                             ; preds = %bb7
  %26 = getelementptr inbounds %Zahl, %Zahl* %low, i32 0, i32 2
  %27 = load i64, i64* %26, align 1
  %28 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %27, i64 1)
  %_26.0 = extractvalue { i64, i1 } %28, 0
  %_26.1 = extractvalue { i64, i1 } %28, 1
  %29 = call i1 @llvm.expect.i1(i1 %_26.1, i1 false)
  br i1 %29, label %panic2, label %bb11

bb11:                                             ; preds = %bb10
  %30 = getelementptr inbounds %Zahl, %Zahl* %low, i32 0, i32 2
  store i64 %_26.0, i64* %30, align 1
  br label %bb4

panic2:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc12 to %"core::panic::location::Location"*)) #4
  unreachable

bb13:                                             ; preds = %bb12
  %31 = bitcast %Zahl* %low to i32*
  store i32 0, i32* %31, align 1
  br label %bb14

bb14:                                             ; preds = %bb13, %bb12
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsplit_unsigned_fast_large_taint.rs.bc", hash: (1599519735, 105632932, 867972114, 1077146357, 2158232976))
^1 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^2 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 1082063909323549158
^3 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2011016869471763519
^4 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^5 = gv: (name: "zsplit_unsigned_fast_large_taint", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 85, calls: ((callee: ^6)), refs: (^2, ^3, ^7, ^8)))) ; guid = 8532760241395172910
^6 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^7 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 11935234246326332136
^8 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 13214078902399461316
^9 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17587217630529226547
^10 = blockcount: 18
