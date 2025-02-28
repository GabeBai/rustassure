; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_fd_set.rs.bc'
source_filename = "__darwin_fd_set.a3aa2dbd-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%FdSet = type <{ [33 x i32] }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc25 = private unnamed_addr constant <{ [97 x i8] }> <{ [97 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_fd_set.rs" }>, align 1
@alloc16 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\17\00\00\00)\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc18 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\17\00\00\00\19\00\00\00" }>, align 8
@str.1 = internal constant [25 x i8] c"attempt to divide by zero"
@alloc20 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\18\00\00\00-\00\00\00" }>, align 8
@alloc22 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\18\00\00\00\1C\00\00\00" }>, align 8
@str.2 = internal constant [57 x i8] c"attempt to calculate the remainder with a divisor of zero"
@alloc24 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\18\00\00\00\17\00\00\00" }>, align 8
@str.3 = internal constant [35 x i8] c"attempt to shift left with overflow"
@alloc26 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\19\00\00\00\0D\00\00\00" }>, align 8

; Function Attrs: uwtable
define void @new(%FdSet* sret(%FdSet) %0) unnamed_addr #0 {
start:
  %_1 = alloca [33 x i32], align 4
  %1 = getelementptr inbounds [33 x i32], [33 x i32]* %_1, i64 0, i64 0
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 132, i1 false)
  %3 = bitcast %FdSet* %0 to [33 x i32]*
  %4 = bitcast [33 x i32]* %3 to i8*
  %5 = bitcast [33 x i32]* %_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 4 %5, i64 132, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @set(%FdSet* align 1 %self, i32 %fd) unnamed_addr #0 {
start:
  %_3 = call zeroext i1 @check_fd_set(%FdSet* align 1 %self, i32 %fd)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb11

bb11:                                             ; preds = %bb10, %bb1
  ret void

bb2:                                              ; preds = %bb1
  %_7 = sext i32 %fd to i64
  br label %bb3

bb3:                                              ; preds = %bb2
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 4, i64 8)
  %_11.0 = extractvalue { i64, i1 } %0, 0
  %_11.1 = extractvalue { i64, i1 } %0, 1
  %1 = call i1 @llvm.expect.i1(i1 %_11.1, i1 false)
  br i1 %1, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  %_12 = icmp eq i64 %_11.0, 0
  %2 = call i1 @llvm.expect.i1(i1 %_12, i1 false)
  br i1 %2, label %panic1, label %bb5

panic:                                            ; preds = %bb3
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #6
  unreachable

bb5:                                              ; preds = %bb4
  %index = udiv i64 %_7, %_11.0
  %_15 = sext i32 %fd to i64
  br label %bb6

panic1:                                           ; preds = %bb4
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([25 x i8]* @str.1 to [0 x i8]*), i64 25, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc18 to %"core::panic::location::Location"*)) #6
  unreachable

bb6:                                              ; preds = %bb5
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 4, i64 8)
  %_19.0 = extractvalue { i64, i1 } %3, 0
  %_19.1 = extractvalue { i64, i1 } %3, 1
  %4 = call i1 @llvm.expect.i1(i1 %_19.1, i1 false)
  br i1 %4, label %panic2, label %bb7

bb7:                                              ; preds = %bb6
  %_20 = icmp eq i64 %_19.0, 0
  %5 = call i1 @llvm.expect.i1(i1 %_20, i1 false)
  br i1 %5, label %panic3, label %bb8

panic2:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc20 to %"core::panic::location::Location"*)) #6
  unreachable

bb8:                                              ; preds = %bb7
  %_14 = urem i64 %_15, %_19.0
  %6 = and i64 %_14, -32
  %_21.1 = icmp ne i64 %6, 0
  %7 = trunc i64 %_14 to i32
  %8 = and i32 %7, 31
  %_21.0 = shl i32 1, %8
  %9 = call i1 @llvm.expect.i1(i1 %_21.1, i1 false)
  br i1 %9, label %panic4, label %bb9

panic3:                                           ; preds = %bb7
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([57 x i8]* @str.2 to [0 x i8]*), i64 57, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc22 to %"core::panic::location::Location"*)) #6
  unreachable

bb9:                                              ; preds = %bb8
  %_25 = icmp ult i64 %index, 33
  %10 = call i1 @llvm.expect.i1(i1 %_25, i1 true)
  br i1 %10, label %bb10, label %panic5

panic4:                                           ; preds = %bb8
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([35 x i8]* @str.3 to [0 x i8]*), i64 35, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc24 to %"core::panic::location::Location"*)) #6
  unreachable

bb10:                                             ; preds = %bb9
  %11 = bitcast %FdSet* %self to [33 x i32]*
  %12 = getelementptr inbounds [33 x i32], [33 x i32]* %11, i64 0, i64 %index
  %13 = bitcast %FdSet* %self to [33 x i32]*
  %14 = getelementptr inbounds [33 x i32], [33 x i32]* %13, i64 0, i64 %index
  %15 = load i32, i32* %14, align 1
  %16 = or i32 %15, %_21.0
  store i32 %16, i32* %12, align 1
  br label %bb11

panic5:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %index, i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc26 to %"core::panic::location::Location"*)) #6
  unreachable
}

; Function Attrs: uwtable
define zeroext i1 @check_fd_set(%FdSet* align 1 %self, i32 %fd) unnamed_addr #0 {
start:
  ret i1 true
}

; Function Attrs: uwtable
define void @main() unnamed_addr #0 {
start:
  %fd_set = alloca %FdSet, align 1
  call void @new(%FdSet* sret(%FdSet) %fd_set)
  br label %bb1

bb1:                                              ; preds = %start
  call void @set(%FdSet* align 1 %fd_set, i32 5)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_fd_set.rs.bc", hash: (4152307504, 779794855, 3246408749, 1186696308, 1426019022))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 754702776053834868
^3 = gv: (name: "str.2", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2405582696681018271
^4 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^5 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 3295422543488449901
^6 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6308630507125789830
^7 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^8 = gv: (name: "new", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9))) ; guid = 6686536032942599970
^9 = gv: (name: "set", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^16), (callee: ^12), (callee: ^21)), refs: (^13, ^19, ^20, ^14, ^5, ^17, ^3, ^11, ^18, ^2)))) ; guid = 6794887970511826637
^10 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^11 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 9986384916488693884
^12 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^13 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 10623379737721575303
^14 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12021608517795940627
^15 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^8), (callee: ^9))))) ; guid = 15822663052811949562
^16 = gv: (name: "check_fd_set", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15861007372104939077
^17 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 15899189589782374199
^18 = gv: (name: "str.3", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16647521390684147580
^19 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17063053201903233094
^20 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 18092088816811940336
^21 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^22 = blockcount: 23
