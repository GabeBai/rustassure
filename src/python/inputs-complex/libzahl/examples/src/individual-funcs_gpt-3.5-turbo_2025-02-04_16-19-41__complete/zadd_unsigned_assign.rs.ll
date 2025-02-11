; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zadd_unsigned_assign.rs.bc'
source_filename = "zadd_unsigned_assign.dd924732-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc9 = private unnamed_addr constant <{ [101 x i8] }> <{ [101 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zadd_unsigned_assign.rs" }>, align 1
@alloc4 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [101 x i8] }>, <{ [101 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [16 x i8] c"e\00\00\00\00\00\00\00/\00\00\00\0D\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc6 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [101 x i8] }>, <{ [101 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [16 x i8] c"e\00\00\00\00\00\00\001\00\00\00\1B\00\00\00" }>, align 8
@alloc8 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [101 x i8] }>, <{ [101 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [16 x i8] c"e\00\00\00\00\00\00\002\00\00\00 \00\00\00" }>, align 8
@alloc10 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [101 x i8] }>, <{ [101 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [16 x i8] c"e\00\00\00\00\00\00\009\00\00\00:\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h3b0a138f194a8a6fE(i64* %dst, i64 %0) unnamed_addr #0 {
start:
  %src = alloca i64, align 8
  store i64 %0, i64* %src, align 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @zadd_unsigned_assign(%Zahl* %a, %Zahl* %b) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %_12 = alloca i64, align 8
  %n = alloca i64, align 8
  %_5 = call i32 @zzero(%Zahl* %a)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = icmp eq i32 %_5, 0
  br i1 %2, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_10 = call i32 @zzero(%Zahl* %b)
  br label %bb4

bb2:                                              ; preds = %bb1
  call void @zabs(%Zahl* %a, %Zahl* %b)
  br label %bb22

bb22:                                             ; preds = %bb21, %bb4, %bb2
  ret void

bb4:                                              ; preds = %bb3
  %3 = icmp eq i32 %_10, 0
  br i1 %3, label %bb5, label %bb22

bb5:                                              ; preds = %bb4
  %4 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_14 = load i64, i64* %4, align 1
  %5 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_15 = load i64, i64* %5, align 1
  %_13 = icmp ugt i64 %_14, %_15
  br i1 %_13, label %bb6, label %bb7

bb7:                                              ; preds = %bb5
  %6 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %7 = load i64, i64* %6, align 1
  store i64 %7, i64* %_12, align 8
  br label %bb8

bb6:                                              ; preds = %bb5
  %8 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %9 = load i64, i64* %8, align 1
  store i64 %9, i64* %_12, align 8
  br label %bb8

bb8:                                              ; preds = %bb6, %bb7
  %size = load i64, i64* %_12, align 8
  %10 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_17 = load i64, i64* %10, align 1
  %11 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_18 = load i64, i64* %11, align 1
  %12 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_17, i64 %_18)
  %_19.0 = extractvalue { i64, i1 } %12, 0
  %_19.1 = extractvalue { i64, i1 } %12, 1
  %13 = call i1 @llvm.expect.i1(i1 %_19.1, i1 false)
  br i1 %13, label %panic, label %bb9

bb9:                                              ; preds = %bb8
  %14 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_19.0, i64 %size)
  %_21.0 = extractvalue { i64, i1 } %14, 0
  %_21.1 = extractvalue { i64, i1 } %14, 1
  %15 = call i1 @llvm.expect.i1(i1 %_21.1, i1 false)
  br i1 %15, label %panic1, label %bb10

panic:                                            ; preds = %bb8
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc4 to %"core::panic::location::Location"*)) #6
  unreachable

bb10:                                             ; preds = %bb9
  store i64 %_21.0, i64* %n, align 8
  %16 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 3
  %_23 = load i64, i64* %16, align 1
  %17 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %size, i64 1)
  %_26.0 = extractvalue { i64, i1 } %17, 0
  %_26.1 = extractvalue { i64, i1 } %17, 1
  %18 = call i1 @llvm.expect.i1(i1 %_26.1, i1 false)
  br i1 %18, label %panic2, label %bb11

panic1:                                           ; preds = %bb9
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc4 to %"core::panic::location::Location"*)) #6
  unreachable

bb11:                                             ; preds = %bb10
  %_22 = icmp ult i64 %_23, %_26.0
  br i1 %_22, label %bb12, label %bb14

panic2:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc6 to %"core::panic::location::Location"*)) #6
  unreachable

bb14:                                             ; preds = %bb13, %bb11
  %19 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_34 = load i64*, i64** %19, align 1
  %20 = getelementptr inbounds i64, i64* %_34, i64 %size
  store i64* %20, i64** %1, align 8
  %_3.i = load i64*, i64** %1, align 8
  br label %bb15

bb12:                                             ; preds = %bb11
  %21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %size, i64 1)
  %_31.0 = extractvalue { i64, i1 } %21, 0
  %_31.1 = extractvalue { i64, i1 } %21, 1
  %22 = call i1 @llvm.expect.i1(i1 %_31.1, i1 false)
  br i1 %22, label %panic3, label %bb13

bb13:                                             ; preds = %bb12
  call void @libzahl_realloc(%Zahl* %a, i64 %_31.0)
  br label %bb14

panic3:                                           ; preds = %bb12
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc8 to %"core::panic::location::Location"*)) #6
  unreachable

bb15:                                             ; preds = %bb14
  call void @_ZN4core3ptr5write17h3b0a138f194a8a6fE(i64* %_3.i, i64 0)
  br label %bb16

bb16:                                             ; preds = %bb15
  %23 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_37 = load i64, i64* %23, align 1
  %24 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_38 = load i64, i64* %24, align 1
  %_36 = icmp ult i64 %_37, %_38
  br i1 %_36, label %bb17, label %bb20

bb20:                                             ; preds = %bb19, %bb16
  %_51 = load i64, i64* %n, align 8
  call void @zadd_impl_3(%Zahl* %a, %Zahl* %b, i64 %_51)
  br label %bb21

bb17:                                             ; preds = %bb16
  %25 = getelementptr inbounds %Zahl, %Zahl* %b, i32 0, i32 2
  %_39 = load i64, i64* %25, align 1
  store i64 %_39, i64* %n, align 8
  %26 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 4
  %_42 = load i64*, i64** %26, align 1
  %27 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_43 = load i64, i64* %27, align 1
  %28 = getelementptr inbounds i64, i64* %_42, i64 %_43
  store i64* %28, i64** %0, align 8
  %_3.i5 = load i64*, i64** %0, align 8
  br label %bb18

bb18:                                             ; preds = %bb17
  %_45 = load i64, i64* %n, align 8
  %29 = getelementptr inbounds %Zahl, %Zahl* %a, i32 0, i32 2
  %_46 = load i64, i64* %29, align 1
  %30 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_45, i64 %_46)
  %_47.0 = extractvalue { i64, i1 } %30, 0
  %_47.1 = extractvalue { i64, i1 } %30, 1
  %31 = call i1 @llvm.expect.i1(i1 %_47.1, i1 false)
  br i1 %31, label %panic4, label %bb19

bb19:                                             ; preds = %bb18
  call void @libzahl_memset(i64* %_3.i5, i32 0, i64 %_47.0)
  br label %bb20

panic4:                                           ; preds = %bb18
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc10 to %"core::panic::location::Location"*)) #6
  unreachable

bb21:                                             ; preds = %bb20
  %32 = bitcast %Zahl* %a to i32*
  store i32 1, i32* %32, align 1
  br label %bb22
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: uwtable
declare i32 @zzero(%Zahl*) unnamed_addr #1

; Function Attrs: uwtable
declare void @zabs(%Zahl*, %Zahl*) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: uwtable
declare void @libzahl_realloc(%Zahl*, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @libzahl_memset(i64*, i32, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @zadd_impl_3(%Zahl*, %Zahl*, i64) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zadd_unsigned_assign.rs.bc", hash: (3119589095, 1134193447, 3302965623, 2078092855, 3618105463))
^1 = gv: (name: "zabs") ; guid = 571569045789519847
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^4 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^5 = gv: (name: "libzahl_memset") ; guid = 4660104582018802627
^6 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5080608793158734950
^7 = gv: (name: "zzero") ; guid = 5436943481773832288
^8 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 5660080939536070544
^9 = gv: (name: "_ZN4core3ptr5write17h3b0a138f194a8a6fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 6049476196794879269
^10 = gv: (name: "zadd_impl_3") ; guid = 8109784472991059247
^11 = gv: (name: "libzahl_realloc") ; guid = 9296568666965528725
^12 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^13 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 11273876239813508848
^14 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 14232632831127221525
^15 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^16 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15334140036408699454
^17 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16359911928971013224
^18 = gv: (name: "zadd_unsigned_assign", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 112, calls: ((callee: ^7), (callee: ^1), (callee: ^12), (callee: ^11), (callee: ^9), (callee: ^10), (callee: ^5)), refs: (^19, ^16, ^17, ^8, ^13, ^14)))) ; guid = 16702827996849131208
^19 = gv: (name: "alloc4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 17290721754869425382
^20 = blockcount: 29
