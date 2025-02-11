; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_finish.rs.bc'
source_filename = "app_finish.917b1a41-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

@_ZN10app_finish8LOG_FILE17hb81fac4031d75c4fE = internal global <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 4

; Function Attrs: uwtable
define void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h79577e2fd93a489dE"(i32* %_1) unnamed_addr #0 {
start:
  call void @"_ZN4core3ptr45drop_in_place$LT$std..sys..unix..fs..File$GT$17ha7d037c14a619245E"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr45drop_in_place$LT$std..sys..unix..fs..File$GT$17ha7d037c14a619245E"(i32* %_1) unnamed_addr #0 {
start:
  call void @"_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17hb8da740dfd89fbdbE"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17ha3472c999aecbfc3E"(i32* %_1) unnamed_addr #0 {
start:
  call void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbb33ba3927f44bcbE"(i32* align 4 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17hb8da740dfd89fbdbE"(i32* %_1) unnamed_addr #0 {
start:
  call void @"_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17ha3472c999aecbfc3E"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$std..fs..File$GT$$GT$17hebe34584798780c9E"(i32* %_1) unnamed_addr #0 {
start:
  %0 = load i32, i32* %_1, align 4
  %1 = sub i32 %0, -1
  %2 = icmp eq i32 %1, 0
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  call void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h79577e2fd93a489dE"(i32* %_1)
  br label %bb1
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbb33ba3927f44bcbE"(i32* align 4 %self) unnamed_addr #1 {
start:
  %_3 = load i32, i32* %self, align 4
  %_2 = call i32 @close(i32 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
declare i32 @close(i32) unnamed_addr #0

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_finish.rs.bc", hash: (3868793433, 769621617, 3929237606, 1001543715, 3166856692))
^1 = gv: (name: "_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$std..fs..File$GT$$GT$17hebe34584798780c9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^5))))) ; guid = 689805539825237241
^2 = gv: (name: "close") ; guid = 694551982725885809
^3 = gv: (name: "_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17hb8da740dfd89fbdbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^6))))) ; guid = 2154497915979014892
^4 = gv: (name: "_ZN10app_finish8LOG_FILE17hb81fac4031d75c4fE", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 2904186247286572159
^5 = gv: (name: "_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h79577e2fd93a489dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^8))))) ; guid = 11165101060483133951
^6 = gv: (name: "_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17ha3472c999aecbfc3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^7))))) ; guid = 11445119498419805033
^7 = gv: (name: "_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbb33ba3927f44bcbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^2))))) ; guid = 13862816114954678346
^8 = gv: (name: "_ZN4core3ptr45drop_in_place$LT$std..sys..unix..fs..File$GT$17ha7d037c14a619245E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^3))))) ; guid = 17311325389625714861
^9 = blockcount: 13
