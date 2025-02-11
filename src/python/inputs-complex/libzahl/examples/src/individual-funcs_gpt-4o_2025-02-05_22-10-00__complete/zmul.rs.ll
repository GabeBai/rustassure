; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmul.rs.bc'
source_filename = "zmul.2e61abc9-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ptr::metadata::PtrComponents<u64>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u64>" = type { [1 x i64] }
%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc19 = private unnamed_addr constant <{ [78 x i8] }> <{ [78 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmul.rs" }>, align 1
@alloc16 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\009\00\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc18 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00<\00\00\00\05\00\00\00" }>, align 8
@alloc20 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00C\00\00\00\1E\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17ha134cf212753748aE({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u64>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u64>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u64>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u64>", %"core::ptr::metadata::PtrComponents<u64>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u64>"* %_3 to %"core::ptr::metadata::PtrComponents<u64>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u64>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u64>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u64>"* %_3 to i64**
  %6 = load i64*, i64** %5, align 8
  ret i64* %6
}

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hc188cd999556a0a4E"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x %Zahl]* %self.0 to %Zahl*
  ret %Zahl* %0
}

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hb88c18f2b9def781E"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x %Zahl]* %self.0 to %Zahl*
  ret %Zahl* %0
}

; Function Attrs: uwtable
define internal void @_ZN4zmul4zmul17h6bc67e8b29e7a8fbE([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c) unnamed_addr #1 {
start:
  %_6.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_5 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hb88c18f2b9def781E"([0 x %Zahl]* align 1 %_6.0, i64 1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast %Zahl* %_5 to i32*
  %b_sign = load i32, i32* %0, align 1
  %_10.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_9 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hc188cd999556a0a4E"([0 x %Zahl]* align 1 %_10.0, i64 1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %Zahl* %_9 to i32*
  %2 = load i32, i32* %1, align 1
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %2, i32 %b_sign)
  %_12.0 = extractvalue { i32, i1 } %3, 0
  %_12.1 = extractvalue { i32, i1 } %3, 1
  %4 = call i1 @llvm.expect.i1(i1 %_12.1, i1 false)
  br i1 %4, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %5 = bitcast %Zahl* %_9 to i32*
  store i32 %_12.0, i32* %5, align 1
  %_15.0 = bitcast [1 x %Zahl]* %c to [0 x %Zahl]*
  %_14 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hb88c18f2b9def781E"([0 x %Zahl]* align 1 %_15.0, i64 1)
  br label %bb4

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #6
  unreachable

bb4:                                              ; preds = %bb3
  %6 = bitcast %Zahl* %_14 to i32*
  %c_sign = load i32, i32* %6, align 1
  %_19.0 = bitcast [1 x %Zahl]* %c to [0 x %Zahl]*
  %_18 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hc188cd999556a0a4E"([0 x %Zahl]* align 1 %_19.0, i64 1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %7 = bitcast %Zahl* %_18 to i32*
  %8 = load i32, i32* %7, align 1
  %9 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %8, i32 %c_sign)
  %_21.0 = extractvalue { i32, i1 } %9, 0
  %_21.1 = extractvalue { i32, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_21.1, i1 false)
  br i1 %10, label %panic1, label %bb6

bb6:                                              ; preds = %bb5
  %11 = bitcast %Zahl* %_18 to i32*
  store i32 %_21.0, i32* %11, align 1
  %_24.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_23 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hc188cd999556a0a4E"([0 x %Zahl]* align 1 %_24.0, i64 1)
  br label %bb7

panic1:                                           ; preds = %bb5
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc18 to %"core::panic::location::Location"*)) #6
  unreachable

bb7:                                              ; preds = %bb6
  %_27.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_26 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hc188cd999556a0a4E"([0 x %Zahl]* align 1 %_27.0, i64 1)
  br label %bb8

bb8:                                              ; preds = %bb7
  %_30.0 = bitcast [1 x %Zahl]* %c to [0 x %Zahl]*
  %_29 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hc188cd999556a0a4E"([0 x %Zahl]* align 1 %_30.0, i64 1)
  br label %bb9

bb9:                                              ; preds = %bb8
  call void @zmul_ll(%Zahl* %_23, %Zahl* %_26, %Zahl* %_29)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_34.0 = bitcast [1 x %Zahl]* %c to [0 x %Zahl]*
  %_33 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hc188cd999556a0a4E"([0 x %Zahl]* align 1 %_34.0, i64 1)
  br label %bb11

bb11:                                             ; preds = %bb10
  %12 = bitcast %Zahl* %_33 to i32*
  store i32 %c_sign, i32* %12, align 1
  %_38.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_37 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hc188cd999556a0a4E"([0 x %Zahl]* align 1 %_38.0, i64 1)
  br label %bb12

bb12:                                             ; preds = %bb11
  %13 = bitcast %Zahl* %_37 to i32*
  store i32 %b_sign, i32* %13, align 1
  %_42.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_41 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hb88c18f2b9def781E"([0 x %Zahl]* align 1 %_42.0, i64 1)
  br label %bb13

bb13:                                             ; preds = %bb12
  %_40 = call i32 @zsignum(%Zahl* %_41)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_46.0 = bitcast [1 x %Zahl]* %c to [0 x %Zahl]*
  %_45 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hb88c18f2b9def781E"([0 x %Zahl]* align 1 %_46.0, i64 1)
  br label %bb15

bb15:                                             ; preds = %bb14
  %_44 = call i32 @zsignum(%Zahl* %_45)
  br label %bb16

bb16:                                             ; preds = %bb15
  %14 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_40, i32 %_44)
  %_48.0 = extractvalue { i32, i1 } %14, 0
  %_48.1 = extractvalue { i32, i1 } %14, 1
  %15 = call i1 @llvm.expect.i1(i1 %_48.1, i1 false)
  br i1 %15, label %panic2, label %bb17

bb17:                                             ; preds = %bb16
  %_50.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_49 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hc188cd999556a0a4E"([0 x %Zahl]* align 1 %_50.0, i64 1)
  br label %bb18

panic2:                                           ; preds = %bb16
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc20 to %"core::panic::location::Location"*)) #6
  unreachable

bb18:                                             ; preds = %bb17
  %16 = bitcast %Zahl* %_49 to i32*
  store i32 %_48.0, i32* %16, align 1
  ret void
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %1 = alloca {}*, align 8
  %2 = alloca {}*, align 8
  %_8 = alloca %Zahl, align 1
  %c = alloca [1 x %Zahl], align 1
  %_5 = alloca %Zahl, align 1
  %b = alloca [1 x %Zahl], align 1
  %_2 = alloca %Zahl, align 1
  %a = alloca [1 x %Zahl], align 1
  %3 = bitcast {}** %0 to i64*
  store i64 0, i64* %3, align 8
  %4 = load {}*, {}** %0, align 8
  %5 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17ha134cf212753748aE({}* %4)
  br label %bb1

bb1:                                              ; preds = %start
  %6 = bitcast %Zahl* %_2 to i32*
  store i32 0, i32* %6, align 1
  %7 = getelementptr inbounds %Zahl, %Zahl* %_2, i32 0, i32 1
  store i32 0, i32* %7, align 1
  %8 = getelementptr inbounds %Zahl, %Zahl* %_2, i32 0, i32 2
  store i64 0, i64* %8, align 1
  %9 = getelementptr inbounds %Zahl, %Zahl* %_2, i32 0, i32 3
  store i64 0, i64* %9, align 1
  %10 = getelementptr inbounds %Zahl, %Zahl* %_2, i32 0, i32 4
  store i64* %5, i64** %10, align 1
  %11 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %12 = bitcast %Zahl* %11 to i8*
  %13 = bitcast %Zahl* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 32, i1 false)
  %14 = bitcast {}** %1 to i64*
  store i64 0, i64* %14, align 8
  %15 = load {}*, {}** %1, align 8
  %16 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17ha134cf212753748aE({}* %15)
  br label %bb2

bb2:                                              ; preds = %bb1
  %17 = bitcast %Zahl* %_5 to i32*
  store i32 1, i32* %17, align 1
  %18 = getelementptr inbounds %Zahl, %Zahl* %_5, i32 0, i32 1
  store i32 0, i32* %18, align 1
  %19 = getelementptr inbounds %Zahl, %Zahl* %_5, i32 0, i32 2
  store i64 0, i64* %19, align 1
  %20 = getelementptr inbounds %Zahl, %Zahl* %_5, i32 0, i32 3
  store i64 0, i64* %20, align 1
  %21 = getelementptr inbounds %Zahl, %Zahl* %_5, i32 0, i32 4
  store i64* %16, i64** %21, align 1
  %22 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %23 = bitcast %Zahl* %22 to i8*
  %24 = bitcast %Zahl* %_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %24, i64 32, i1 false)
  %25 = bitcast {}** %2 to i64*
  store i64 0, i64* %25, align 8
  %26 = load {}*, {}** %2, align 8
  %27 = call i64* @_ZN4core3ptr8metadata18from_raw_parts_mut17ha134cf212753748aE({}* %26)
  br label %bb3

bb3:                                              ; preds = %bb2
  %28 = bitcast %Zahl* %_8 to i32*
  store i32 1, i32* %28, align 1
  %29 = getelementptr inbounds %Zahl, %Zahl* %_8, i32 0, i32 1
  store i32 0, i32* %29, align 1
  %30 = getelementptr inbounds %Zahl, %Zahl* %_8, i32 0, i32 2
  store i64 0, i64* %30, align 1
  %31 = getelementptr inbounds %Zahl, %Zahl* %_8, i32 0, i32 3
  store i64 0, i64* %31, align 1
  %32 = getelementptr inbounds %Zahl, %Zahl* %_8, i32 0, i32 4
  store i64* %27, i64** %32, align 1
  %33 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %c, i64 0, i64 0
  %34 = bitcast %Zahl* %33 to i8*
  %35 = bitcast %Zahl* %_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 %35, i64 32, i1 false)
  call void @_ZN4zmul4zmul17h6bc67e8b29e7a8fbE([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: uwtable
declare void @zmul_ll(%Zahl*, %Zahl*, %Zahl*) unnamed_addr #1

; Function Attrs: uwtable
declare i32 @zsignum(%Zahl*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zmul.rs.bc", hash: (1829372363, 583317405, 3947135099, 414716192, 1831970271))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "_ZN4zmul4zmul17h6bc67e8b29e7a8fbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 82, calls: ((callee: ^5), (callee: ^10), (callee: ^11), (callee: ^4), (callee: ^14)), refs: (^6, ^15, ^8, ^13)))) ; guid = 2403095062682263610
^3 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^4 = gv: (name: "zmul_ll") ; guid = 5566111937333513251
^5 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hb88c18f2b9def781E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 5987007915716616117
^6 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 6310684076907463527
^7 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8077799038557329215
^8 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 8700638223960101563
^9 = gv: (name: "llvm.smul.with.overflow.i32") ; guid = 8885377767807808301
^10 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hc188cd999556a0a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 9219577684978503741
^11 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^12 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17ha134cf212753748aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 10665111942501140505
^13 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7)))) ; guid = 14925393079502292990
^14 = gv: (name: "zsignum") ; guid = 15352537659571043505
^15 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15455073051960070918
^16 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 69, calls: ((callee: ^12), (callee: ^2))))) ; guid = 15822663052811949562
^17 = blockcount: 30
