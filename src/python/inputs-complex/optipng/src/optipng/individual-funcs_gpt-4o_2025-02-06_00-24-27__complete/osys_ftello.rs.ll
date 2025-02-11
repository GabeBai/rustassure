; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_ftello.rs.bc'
source_filename = "osys_ftello.baa57ec2-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::result::Result<i64, std::io::error::Error>" = type { i64, [1 x i64] }
%"core::result::Result<u64, std::io::error::Error>" = type { i64, [1 x i64] }
%"core::result::Result<u64, std::io::error::Error>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<u64, std::io::error::Error>::Err" = type { [1 x i64], i8* }
%"core::result::Result<i64, std::io::error::Error>::Err" = type { [1 x i64], i8* }
%"core::result::Result<i64, std::io::error::Error>::Ok" = type { [1 x i64], i64 }
%"std::io::SeekFrom" = type { i64, [1 x i64] }
%"std::io::SeekFrom::Current" = type { [1 x i64], i64 }

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$3map17ha3423c91dcb44b20E"(%"core::result::Result<i64, std::io::error::Error>"* sret(%"core::result::Result<i64, std::io::error::Error>") %0, %"core::result::Result<u64, std::io::error::Error>"* %self) unnamed_addr #0 {
start:
  %_11 = alloca i8, align 1
  %_7 = alloca i64, align 8
  store i8 1, i8* %_11, align 1
  %1 = bitcast %"core::result::Result<u64, std::io::error::Error>"* %self to i64*
  %_3 = load i64, i64* %1, align 8, !range !1, !noundef !2
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<u64, std::io::error::Error>"* %self to %"core::result::Result<u64, std::io::error::Error>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<u64, std::io::error::Error>::Ok", %"core::result::Result<u64, std::io::error::Error>::Ok"* %2, i32 0, i32 1
  %t = load i64, i64* %3, align 8
  store i8 0, i8* %_11, align 1
  store i64 %t, i64* %_7, align 8
  %4 = load i64, i64* %_7, align 8
  %_5 = call i64 @"_ZN11osys_ftello11osys_ftello28_$u7b$$u7b$closure$u7d$$u7d$17hac4adff311449ff2E"(i64 %4)
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<u64, std::io::error::Error>"* %self to %"core::result::Result<u64, std::io::error::Error>::Err"*
  %6 = getelementptr inbounds %"core::result::Result<u64, std::io::error::Error>::Err", %"core::result::Result<u64, std::io::error::Error>::Err"* %5, i32 0, i32 1
  %e = load i8*, i8** %6, align 8, !nonnull !2, !noundef !2
  %7 = bitcast %"core::result::Result<i64, std::io::error::Error>"* %0 to %"core::result::Result<i64, std::io::error::Error>::Err"*
  %8 = getelementptr inbounds %"core::result::Result<i64, std::io::error::Error>::Err", %"core::result::Result<i64, std::io::error::Error>::Err"* %7, i32 0, i32 1
  store i8* %e, i8** %8, align 8
  %9 = bitcast %"core::result::Result<i64, std::io::error::Error>"* %0 to i64*
  store i64 1, i64* %9, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb1
  %10 = load i8, i8* %_11, align 1, !range !3, !noundef !2
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb6, label %bb5

bb4:                                              ; preds = %bb3
  %12 = bitcast %"core::result::Result<i64, std::io::error::Error>"* %0 to %"core::result::Result<i64, std::io::error::Error>::Ok"*
  %13 = getelementptr inbounds %"core::result::Result<i64, std::io::error::Error>::Ok", %"core::result::Result<i64, std::io::error::Error>::Ok"* %12, i32 0, i32 1
  store i64 %_5, i64* %13, align 8
  %14 = bitcast %"core::result::Result<i64, std::io::error::Error>"* %0 to i64*
  store i64 0, i64* %14, align 8
  br label %bb7

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: uwtable
define void @osys_ftello(%"core::result::Result<i64, std::io::error::Error>"* sret(%"core::result::Result<i64, std::io::error::Error>") %0, i32* align 4 %file) unnamed_addr #1 {
start:
  %_4 = alloca %"std::io::SeekFrom", align 8
  %_2 = alloca %"core::result::Result<u64, std::io::error::Error>", align 8
  %1 = bitcast %"std::io::SeekFrom"* %_4 to %"std::io::SeekFrom::Current"*
  %2 = getelementptr inbounds %"std::io::SeekFrom::Current", %"std::io::SeekFrom::Current"* %1, i32 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = bitcast %"std::io::SeekFrom"* %_4 to i64*
  store i64 2, i64* %3, align 8
  call void @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17h3a94781de05eb479E"(%"core::result::Result<u64, std::io::error::Error>"* sret(%"core::result::Result<u64, std::io::error::Error>") %_2, i32* align 4 %file, %"std::io::SeekFrom"* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$3map17ha3423c91dcb44b20E"(%"core::result::Result<i64, std::io::error::Error>"* sret(%"core::result::Result<i64, std::io::error::Error>") %0, %"core::result::Result<u64, std::io::error::Error>"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN11osys_ftello11osys_ftello28_$u7b$$u7b$closure$u7d$$u7d$17hac4adff311449ff2E"(i64 %pos) unnamed_addr #0 {
start:
  ret i64 %pos
}

; Function Attrs: uwtable
declare void @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17h3a94781de05eb479E"(%"core::result::Result<u64, std::io::error::Error>"* sret(%"core::result::Result<u64, std::io::error::Error>"), i32* align 4, %"std::io::SeekFrom"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i64 0, i64 2}
!2 = !{}
!3 = !{i8 0, i8 2}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_ftello.rs.bc", hash: (136439335, 3847394709, 2253810506, 2606000383, 2788455497))
^1 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$3map17ha3423c91dcb44b20E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 35, calls: ((callee: ^2))))) ; guid = 1145246056960523665
^2 = gv: (name: "_ZN11osys_ftello11osys_ftello28_$u7b$$u7b$closure$u7d$$u7d$17hac4adff311449ff2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 5036418029706009504
^3 = gv: (name: "_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17h3a94781de05eb479E") ; guid = 5585750220214468656
^4 = gv: (name: "osys_ftello", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^3), (callee: ^1))))) ; guid = 12262777979288174023
^5 = blockcount: 12
