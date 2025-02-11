; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmemcpy_range.rs.bc'
source_filename = "zmemcpy_range.51e52e9a-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc5 = private unnamed_addr constant <{ [94 x i8] }> <{ [94 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmemcpy_range.rs" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [94 x i8] }>, <{ [94 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [16 x i8] c"^\00\00\00\00\00\00\00\15\00\00\00L\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h8c22c09f90eb02e8E"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i64]* %self.0 to i64*
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h9f35458a776a2dd4E"([0 x i64]* align 8 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i64]* %self.0 to i64*
  ret i64* %0
}

; Function Attrs: uwtable
define void @zmemcpy_range([0 x i64]* align 8 %d.0, i64 %d.1, [0 x i64]* align 8 %s.0, i64 %s.1, i64 %i, i64 %n) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %_6 = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h8c22c09f90eb02e8E"([0 x i64]* align 8 %d.0, i64 %d.1)
  br label %bb1

bb1:                                              ; preds = %start
  %d_ptr = bitcast i64* %_6 to i8*
  %_9 = call i64* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h9f35458a776a2dd4E"([0 x i64]* align 8 %s.0, i64 %s.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %s_ptr = bitcast i64* %_9 to i8*
  %2 = getelementptr inbounds i8, i8* %d_ptr, i64 %i
  store i8* %2, i8** %1, align 8
  %_3.i = load i8*, i8** %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds i8, i8* %s_ptr, i64 %i
  store i8* %3, i8** %0, align 8
  %4 = load i8*, i8** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %5 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %n, i64 %i)
  %_23.0 = extractvalue { i64, i1 } %5, 0
  %_23.1 = extractvalue { i64, i1 } %5, 1
  %6 = call i1 @llvm.expect.i1(i1 %_23.1, i1 false)
  br i1 %6, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  call void @libzahl_memcpy(i8* %_3.i, i8* %4, i64 %_23.0)
  br label %bb6

panic:                                            ; preds = %bb4
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc6 to %"core::panic::location::Location"*)) #5
  unreachable

bb6:                                              ; preds = %bb5
  ret void
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: uwtable
declare void @libzahl_memcpy(i8*, i8*, i64) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zmemcpy_range.rs.bc", hash: (716783668, 1193217709, 2993153843, 986701025, 4137974930))
^1 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^2 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^3 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^10)))) ; guid = 2608097953220085511
^4 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h9f35458a776a2dd4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 5271168938148049319
^5 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h8c22c09f90eb02e8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 5881944517666109745
^6 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8070652075143489149
^7 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^8 = gv: (name: "zmemcpy_range", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, calls: ((callee: ^5), (callee: ^4), (callee: ^9), (callee: ^7)), refs: (^3, ^6)))) ; guid = 11259928499528947647
^9 = gv: (name: "libzahl_memcpy") ; guid = 11838894465342582843
^10 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13409248178628911754
^11 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15822663052811949562
^12 = blockcount: 11
