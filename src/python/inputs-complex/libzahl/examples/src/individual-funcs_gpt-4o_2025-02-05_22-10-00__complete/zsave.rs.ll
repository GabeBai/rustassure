; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsave.rs.bc'
source_filename = "zsave.bd031f4b-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@core::intrinsics::copy_nonoverlapping<u64>::{closure#0}]" = type { i64**, i64**, i64* }
%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc15 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsave.rs" }>, align 1
@alloc12 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00;\00\00\00\22\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc14 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00<\00\00\00\22\00\00\00" }>, align 8
@alloc16 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00B\00\00\00\05\00\00\00" }>, align 8
@alloc18 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00F\00\00\00\0E\00\00\00" }>, align 8
@alloc20 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00F\00\00\00\0D\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to multiply with overflow"

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17h71876c0bae0be60eE(i64* %src, i64* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u64>::{closure#0}]", align 8
  %0 = mul i64 %count, 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h698a6ccb34d05304E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64 @zsave([1 x %Zahl]* align 1 %a, i8* align 1 %0, i64 %1) unnamed_addr #0 {
start:
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %_55 = alloca i64, align 8
  %buf_ptr = alloca i8*, align 8
  %buffer = alloca { i8*, i64 }, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %buffer, i32 0, i32 0
  store i8* %0, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %buffer, i32 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = bitcast { i8*, i64 }* %buffer to {}**
  %10 = load {}*, {}** %9, align 8
  %11 = icmp eq {}* %10, null
  %_3 = select i1 %11, i64 0, i64 1
  %12 = icmp eq i64 %_3, 1
  br i1 %12, label %bb1, label %bb14

bb1:                                              ; preds = %start
  %13 = bitcast { i8*, i64 }* %buffer to { [0 x i8]*, i64 }*
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 0
  %buf.0 = load [0 x i8]*, [0 x i8]** %14, align 8, !nonnull !1, !align !2, !noundef !1
  %15 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 1
  %buf.1 = load i64, i64* %15, align 8
  %16 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h698a6ccb34d05304E"([0 x i8]* align 1 %buf.0, i64 %buf.1)
  store i8* %16, i8** %buf_ptr, align 8
  br label %bb2

bb14:                                             ; preds = %bb13, %bb7, %start
  br label %bb15

bb2:                                              ; preds = %bb1
  %17 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %18 = bitcast %Zahl* %17 to i32*
  %_7 = load i32, i32* %18, align 1
  %_10 = load i8*, i8** %buf_ptr, align 8
  %_9 = bitcast i8* %_10 to i64*
  %19 = sext i32 %_7 to i64
  store i64 %19, i64* %_9, align 8
  %_12 = load i8*, i8** %buf_ptr, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %20 = getelementptr inbounds i8, i8* %_12, i64 8
  store i8* %20, i8** %6, align 8
  %_3.i = load i8*, i8** %6, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  store i8* %_3.i, i8** %buf_ptr, align 8
  %21 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %22 = getelementptr inbounds %Zahl, %Zahl* %21, i32 0, i32 2
  %_14 = load i64, i64* %22, align 1
  %_17 = load i8*, i8** %buf_ptr, align 8
  %_16 = bitcast i8* %_17 to i64*
  store i64 %_14, i64* %_16, align 8
  %_19 = load i8*, i8** %buf_ptr, align 8
  br label %bb5

bb5:                                              ; preds = %bb4
  %23 = getelementptr inbounds i8, i8* %_19, i64 8
  store i8* %23, i8** %5, align 8
  %_3.i6 = load i8*, i8** %5, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  store i8* %_3.i6, i8** %buf_ptr, align 8
  %_22 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %a)
  br label %bb7

bb7:                                              ; preds = %bb6
  %_21 = xor i1 %_22, true
  br i1 %_21, label %bb8, label %bb14

bb8:                                              ; preds = %bb7
  %24 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %25 = getelementptr inbounds %Zahl, %Zahl* %24, i32 0, i32 4
  %_25 = load i64*, i64** %25, align 1
  %26 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %27 = getelementptr inbounds %Zahl, %Zahl* %26, i32 0, i32 2
  %_28 = load i64, i64* %27, align 1
  %28 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_28, i64 2)
  %_30.0 = extractvalue { i64, i1 } %28, 0
  %_30.1 = extractvalue { i64, i1 } %28, 1
  %29 = call i1 @llvm.expect.i1(i1 %_30.1, i1 false)
  br i1 %29, label %panic, label %bb9

bb9:                                              ; preds = %bb8
  %30 = getelementptr inbounds i64, i64* %_25, i64 %_30.0
  store i64* %30, i64** %4, align 8
  %_3.i7 = load i64*, i64** %4, align 8
  br label %bb10

panic:                                            ; preds = %bb8
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc12 to %"core::panic::location::Location"*)) #6
  unreachable

bb10:                                             ; preds = %bb9
  store i64 0, i64* %_3.i7, align 8
  %31 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %32 = getelementptr inbounds %Zahl, %Zahl* %31, i32 0, i32 4
  %_32 = load i64*, i64** %32, align 1
  %33 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %34 = getelementptr inbounds %Zahl, %Zahl* %33, i32 0, i32 2
  %_35 = load i64, i64* %34, align 1
  %35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_35, i64 1)
  %_37.0 = extractvalue { i64, i1 } %35, 0
  %_37.1 = extractvalue { i64, i1 } %35, 1
  %36 = call i1 @llvm.expect.i1(i1 %_37.1, i1 false)
  br i1 %36, label %panic1, label %bb11

bb11:                                             ; preds = %bb10
  %37 = getelementptr inbounds i64, i64* %_32, i64 %_37.0
  store i64* %37, i64** %3, align 8
  %_3.i8 = load i64*, i64** %3, align 8
  br label %bb12

panic1:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc14 to %"core::panic::location::Location"*)) #6
  unreachable

bb12:                                             ; preds = %bb11
  store i64 0, i64* %_3.i8, align 8
  %38 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %39 = getelementptr inbounds %Zahl, %Zahl* %38, i32 0, i32 4
  %_39 = load i64*, i64** %39, align 1
  %40 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %41 = getelementptr inbounds %Zahl, %Zahl* %40, i32 0, i32 2
  %_41 = load i64, i64* %41, align 1
  %42 = getelementptr inbounds i64, i64* %_39, i64 %_41
  store i64* %42, i64** %2, align 8
  %_3.i9 = load i64*, i64** %2, align 8
  br label %bb13

bb13:                                             ; preds = %bb12
  store i64 0, i64* %_3.i9, align 8
  %_45 = load i8*, i8** %buf_ptr, align 8
  %_44 = bitcast i8* %_45 to i64*
  %43 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %44 = getelementptr inbounds %Zahl, %Zahl* %43, i32 0, i32 4
  %_47 = load i64*, i64** %44, align 1
  %45 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %46 = getelementptr inbounds %Zahl, %Zahl* %45, i32 0, i32 2
  %_49 = load i64, i64* %46, align 1
  call void @_ZN5zsave14libzahl_memcpy17h284b0c00af77b6d5E(i64* %_44, i64* %_47, i64 %_49)
  br label %bb14

bb15:                                             ; preds = %bb14
  br label %bb16

bb16:                                             ; preds = %bb15
  %47 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 8, i64 8)
  %_54.0 = extractvalue { i64, i1 } %47, 0
  %_54.1 = extractvalue { i64, i1 } %47, 1
  %48 = call i1 @llvm.expect.i1(i1 %_54.1, i1 false)
  br i1 %48, label %panic2, label %bb17

bb17:                                             ; preds = %bb16
  %_56 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %a)
  br label %bb18

panic2:                                           ; preds = %bb16
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #6
  unreachable

bb18:                                             ; preds = %bb17
  br i1 %_56, label %bb19, label %bb20

bb20:                                             ; preds = %bb18
  %49 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %50 = getelementptr inbounds %Zahl, %Zahl* %49, i32 0, i32 2
  %_60 = load i64, i64* %50, align 1
  %51 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_60, i64 3)
  %_62.0 = extractvalue { i64, i1 } %51, 0
  %_62.1 = extractvalue { i64, i1 } %51, 1
  %52 = call i1 @llvm.expect.i1(i1 %_62.1, i1 false)
  br i1 %52, label %panic3, label %bb21

bb19:                                             ; preds = %bb18
  store i64 0, i64* %_55, align 8
  br label %bb24

bb24:                                             ; preds = %bb23, %bb19
  %53 = load i64, i64* %_55, align 8
  %54 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_54.0, i64 %53)
  %_66.0 = extractvalue { i64, i1 } %54, 0
  %_66.1 = extractvalue { i64, i1 } %54, 1
  %55 = call i1 @llvm.expect.i1(i1 %_66.1, i1 false)
  br i1 %55, label %panic5, label %bb25

bb21:                                             ; preds = %bb20
  %_58 = and i64 %_62.0, -4
  br label %bb22

panic3:                                           ; preds = %bb20
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc18 to %"core::panic::location::Location"*)) #6
  unreachable

bb22:                                             ; preds = %bb21
  %56 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_58, i64 8)
  %_65.0 = extractvalue { i64, i1 } %56, 0
  %_65.1 = extractvalue { i64, i1 } %56, 1
  %57 = call i1 @llvm.expect.i1(i1 %_65.1, i1 false)
  br i1 %57, label %panic4, label %bb23

bb23:                                             ; preds = %bb22
  store i64 %_65.0, i64* %_55, align 8
  br label %bb24

panic4:                                           ; preds = %bb22
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc20 to %"core::panic::location::Location"*)) #6
  unreachable

bb25:                                             ; preds = %bb24
  ret i64 %_66.0

panic5:                                           ; preds = %bb24
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #6
  unreachable
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  ret i1 false
}

; Function Attrs: uwtable
define void @_ZN5zsave14libzahl_memcpy17h284b0c00af77b6d5E(i64* %dest, i64* %src, i64 %count) unnamed_addr #1 {
start:
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h71876c0bae0be60eE(i64* %src, i64* %dest, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zsave.rs.bc", hash: (3886589165, 4293297143, 1408377000, 2998622320, 4019572833))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "_ZN5zsave14libzahl_memcpy17h284b0c00af77b6d5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^13))))) ; guid = 748478992939076845
^3 = gv: (name: "zsave", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 158, calls: ((callee: ^16), (callee: ^8), (callee: ^14), (callee: ^2)), refs: (^4, ^6, ^9, ^7, ^11, ^18, ^12)))) ; guid = 2032574778514483898
^4 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 2484865218702091587
^5 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^6 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5179174779576041138
^7 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 5341963212653056329
^8 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5436943481773832288
^9 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 6556968176174627925
^10 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^11 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 7331562407503292933
^12 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8126278421626975467
^13 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17h71876c0bae0be60eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 8284430150316971052
^14 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^15 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10374148316676791627
^16 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h698a6ccb34d05304E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 12335382455311529553
^17 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^18 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^15)))) ; guid = 14749754958771971408
^19 = blockcount: 37
