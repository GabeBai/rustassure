; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zzero1.rs.bc'
source_filename = "zzero1.647560cb-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc13 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"not implemented" }>, align 1
@alloc14 = private unnamed_addr constant <{ [87 x i8] }> <{ [87 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zzero1.rs" }>, align 1
@alloc15 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00C\00\00\00\05\00\00\00" }>, align 8

; Function Attrs: uwtable
define zeroext i1 @zzero([1 x %Zahl]* %a) unnamed_addr #0 {
start:
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [15 x i8] }>* @alloc13 to [0 x i8]*), i64 15, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc15 to %"core::panic::location::Location"*)) #3
  unreachable
}

; Function Attrs: uwtable
define zeroext i1 @zzero1([1 x %Zahl]* %a, [1 x %Zahl]* %b) unnamed_addr #0 {
start:
  %_6 = alloca [1 x %Zahl], align 1
  %_4 = alloca [1 x %Zahl], align 1
  %0 = alloca i8, align 1
  %1 = bitcast [1 x %Zahl]* %_4 to i8*
  %2 = bitcast [1 x %Zahl]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %2, i64 32, i1 false)
  %_3 = call zeroext i1 @zzero([1 x %Zahl]* %_4)
  br label %bb4

bb4:                                              ; preds = %start
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %bb4
  %3 = bitcast [1 x %Zahl]* %_6 to i8*
  %4 = bitcast [1 x %Zahl]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 32, i1 false)
  %_5 = call zeroext i1 @zzero([1 x %Zahl]* %_6)
  br label %bb5

bb1:                                              ; preds = %bb4
  store i8 1, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb5, %bb1
  %5 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %6 = trunc i8 %5 to i1
  ret i1 %6

bb5:                                              ; preds = %bb2
  %7 = zext i1 %_5 to i8
  store i8 %7, i8* %0, align 1
  br label %bb3
}

; Function Attrs: uwtable
define void @main() unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zzero1.rs.bc", hash: (4256705794, 4080529919, 2798197645, 1547745385, 1021492923))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "zzero1", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^3))))) ; guid = 2177602619424140935
^3 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^5)), refs: (^7, ^4)))) ; guid = 5436943481773832288
^4 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8176012142045669909
^5 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^6 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12936745008743972748
^7 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 14284365371159657821
^8 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 15822663052811949562
^9 = blockcount: 8
