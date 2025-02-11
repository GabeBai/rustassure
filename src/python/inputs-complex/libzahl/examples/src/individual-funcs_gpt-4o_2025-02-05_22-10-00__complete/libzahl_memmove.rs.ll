; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memmove.rs.bc'
source_filename = "libzahl_memmove.9ed662cd-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@core::intrinsics::copy_nonoverlapping<u64>::{closure#0}]" = type { i64**, i64**, i64* }

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17h1ce674bea42547d8E(i64* %src, i64* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u64>::{closure#0}]", align 8
  %0 = mul i64 %count, 8
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics4copy17h0790332a158c1165E(i64* %src, i64* %dst, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 8, %count
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @libzahl_memmove(i64* %d, i64* %s, i64 %n) unnamed_addr #1 {
start:
  %_4 = icmp ult i64* %d, %s
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  call void @_ZN4core10intrinsics4copy17h0790332a158c1165E(i64* %s, i64* %d, i64 %n)
  br label %bb3

bb1:                                              ; preds = %start
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h1ce674bea42547d8E(i64* %s, i64* %d, i64 %n)
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/libzahl_memmove.rs.bc", hash: (3118593693, 4175649246, 2145051482, 3838165558, 3930382509))
^1 = gv: (name: "_ZN4core10intrinsics4copy17h0790332a158c1165E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 48607009466922614
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17h1ce674bea42547d8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 5045348544908926109
^4 = gv: (name: "libzahl_memmove", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^1), (callee: ^3))))) ; guid = 5975256682395830347
^5 = gv: (name: "llvm.memmove.p0i8.p0i8.i64") ; guid = 14505345675339193263
^6 = blockcount: 7
