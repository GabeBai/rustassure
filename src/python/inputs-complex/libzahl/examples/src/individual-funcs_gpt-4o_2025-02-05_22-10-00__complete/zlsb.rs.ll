; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zlsb.rs.bc'
source_filename = "zlsb.cedaf846-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc9 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc10 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc17 = private unnamed_addr constant <{ [78 x i8] }> <{ [78 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zlsb.rs" }>, align 1
@alloc12 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc17, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00>\00\00\00\0A\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc14 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc17, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00>\00\00\00\05\00\00\00" }>, align 8
@alloc16 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc17, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00?\00\00\00\05\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc18 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc17, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00<\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3ptr4read17ha04a3c8129ea947bE(i64* %src) unnamed_addr #0 {
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
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4read17hc245d54b57326642E"(i64* %self) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3ptr4read17ha04a3c8129ea947bE(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define i64 @zlsb([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %i = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %i, align 8
  %_3 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %a)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb6, %bb1
  %4 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %5 = getelementptr inbounds %Zahl, %Zahl* %4, i32 0, i32 4
  %_7 = load i64*, i64** %5, align 1
  %_9 = load i64, i64* %i, align 8
  %6 = getelementptr inbounds i64, i64* %_7, i64 %_9
  store i64* %6, i64** %1, align 8
  %7 = load i64*, i64** %1, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  store i64 -1, i64* %3, align 8
  br label %bb15

bb15:                                             ; preds = %bb14, %bb2
  %8 = load i64, i64* %3, align 8
  ret i64 %8

bb4:                                              ; preds = %bb3
  %_5 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %_5, 0
  br i1 %9, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %10 = load i64, i64* %i, align 8
  %11 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %10, i64 1)
  %_10.0 = extractvalue { i64, i1 } %11, 0
  %_10.1 = extractvalue { i64, i1 } %11, 1
  %12 = call i1 @llvm.expect.i1(i1 %_10.1, i1 false)
  br i1 %12, label %panic3, label %bb6

bb7:                                              ; preds = %bb4
  br label %bb8

bb8:                                              ; preds = %bb7
  %13 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 8, i64 8)
  %_13.0 = extractvalue { i64, i1 } %13, 0
  %_13.1 = extractvalue { i64, i1 } %13, 1
  %14 = call i1 @llvm.expect.i1(i1 %_13.1, i1 false)
  br i1 %14, label %panic, label %bb9

bb9:                                              ; preds = %bb8
  %15 = load i64, i64* %i, align 8
  %16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %15, i64 %_13.0)
  %_14.0 = extractvalue { i64, i1 } %16, 0
  %_14.1 = extractvalue { i64, i1 } %16, 1
  %17 = call i1 @llvm.expect.i1(i1 %_14.1, i1 false)
  br i1 %17, label %panic1, label %bb10

panic:                                            ; preds = %bb8
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc12 to %"core::panic::location::Location"*)) #5
  unreachable

bb10:                                             ; preds = %bb9
  store i64 %_14.0, i64* %i, align 8
  %18 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %19 = getelementptr inbounds %Zahl, %Zahl* %18, i32 0, i32 4
  %_19 = load i64*, i64** %19, align 1
  %_21 = load i64, i64* %i, align 8
  %20 = getelementptr inbounds i64, i64* %_19, i64 %_21
  store i64* %20, i64** %0, align 8
  %21 = load i64*, i64** %0, align 8
  br label %bb11

panic1:                                           ; preds = %bb9
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc14 to %"core::panic::location::Location"*)) #5
  unreachable

bb11:                                             ; preds = %bb10
  %_17 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4read17hc245d54b57326642E"(i64* %21)
  br label %bb12

bb12:                                             ; preds = %bb11
  %22 = call i64 @llvm.cttz.i64(i64 %_17, i1 false)
  store i64 %22, i64* %2, align 8
  %_2.i = load i64, i64* %2, align 8
  %23 = trunc i64 %_2.i to i32
  br label %bb13

bb13:                                             ; preds = %bb12
  %_15 = zext i32 %23 to i64
  %24 = load i64, i64* %i, align 8
  %25 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %24, i64 %_15)
  %_22.0 = extractvalue { i64, i1 } %25, 0
  %_22.1 = extractvalue { i64, i1 } %25, 1
  %26 = call i1 @llvm.expect.i1(i1 %_22.1, i1 false)
  br i1 %26, label %panic2, label %bb14

bb14:                                             ; preds = %bb13
  store i64 %_22.0, i64* %i, align 8
  %27 = load i64, i64* %i, align 8
  store i64 %27, i64* %3, align 8
  br label %bb15

panic2:                                           ; preds = %bb13
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #5
  unreachable

bb6:                                              ; preds = %bb5
  store i64 %_10.0, i64* %i, align 8
  br label %bb3

panic3:                                           ; preds = %bb5
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc18 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  ret i1 false
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zlsb.rs.bc", hash: (2596798680, 2078554747, 1152115600, 2433565127, 3767310501))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 1038151186411681394
^3 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 2377249924116782045
^4 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^5 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^17)))) ; guid = 3475547628453075648
^6 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 3778376991841618046
^7 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4408854738091978743
^8 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4791823093107092368
^9 = gv: (name: "zlsb", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 79, calls: ((callee: ^10), (callee: ^13), (callee: ^11)), refs: (^19, ^8, ^3, ^6, ^7, ^2)))) ; guid = 5333479355950574184
^10 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5436943481773832288
^11 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4read17hc245d54b57326642E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^15))))) ; guid = 6178360971928687165
^12 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^13 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^14 = gv: (name: "llvm.cttz.i64") ; guid = 10466898313917577349
^15 = gv: (name: "_ZN4core3ptr4read17ha04a3c8129ea947bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 10532345455474775006
^16 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^17 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15432765674005197167
^18 = gv: (name: "alloc17", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16516318492942858939
^19 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18)))) ; guid = 18248368717791403790
^20 = blockcount: 27
