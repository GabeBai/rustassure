; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zabs.rs.bc'
source_filename = "zabs.30938cba-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc25 = private unnamed_addr constant <{ [85 x i8] }> <{ [85 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zabs.rs" }>, align 1
@alloc22 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [85 x i8] }>, <{ [85 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [16 x i8] c"U\00\00\00\00\00\00\00B\00\00\00\0C\00\00\00" }>, align 8
@alloc24 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [85 x i8] }>, <{ [85 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [16 x i8] c"U\00\00\00\00\00\00\00B\00\00\00\05\00\00\00" }>, align 8
@alloc26 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [85 x i8] }>, <{ [85 x i8] }>* @alloc25, i32 0, i32 0, i32 0), [16 x i8] c"U\00\00\00\00\00\00\00K\00\00\00\05\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17he64b2bd70c83b469E"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x %Zahl]* %self.0 to %Zahl*
  ret %Zahl* %0
}

; Function Attrs: uwtable
define void @clone(%Zahl* sret(%Zahl) %0, %Zahl* align 1 %self) unnamed_addr #1 {
start:
  %1 = bitcast %Zahl* %self to i32*
  %_2 = load i32, i32* %1, align 1
  %2 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 1
  %_3 = load i32, i32* %2, align 1
  %3 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 2
  %_4 = load i64, i64* %3, align 1
  %4 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 3
  %_5 = load i64, i64* %4, align 1
  %5 = getelementptr inbounds %Zahl, %Zahl* %self, i32 0, i32 4
  %_6 = load i64*, i64** %5, align 1
  %6 = bitcast %Zahl* %0 to i32*
  store i32 %_2, i32* %6, align 1
  %7 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 1
  store i32 %_3, i32* %7, align 1
  %8 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  store i64 %_4, i64* %8, align 1
  %9 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 3
  store i64 %_5, i64* %9, align 1
  %10 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 4
  store i64* %_6, i64** %10, align 1
  ret void
}

; Function Attrs: uwtable
define void @zset([0 x %Zahl]* align 1 %a.0, i64 %a.1, [0 x %Zahl]* align 1 %b.0, i64 %b.1) unnamed_addr #1 {
start:
  %_3 = alloca %Zahl, align 1
  %_7 = icmp ult i64 0, %b.1
  %0 = call i1 @llvm.expect.i1(i1 %_7, i1 true)
  br i1 %0, label %bb1, label %panic

bb1:                                              ; preds = %start
  %_4 = getelementptr inbounds [0 x %Zahl], [0 x %Zahl]* %b.0, i64 0, i64 0
  call void @clone(%Zahl* sret(%Zahl) %_3, %Zahl* align 1 %_4)
  br label %bb2

panic:                                            ; preds = %start
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %b.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc22 to %"core::panic::location::Location"*)) #5
  unreachable

bb2:                                              ; preds = %bb1
  %_10 = icmp ult i64 0, %a.1
  %1 = call i1 @llvm.expect.i1(i1 %_10, i1 true)
  br i1 %1, label %bb3, label %panic1

bb3:                                              ; preds = %bb2
  %2 = getelementptr inbounds [0 x %Zahl], [0 x %Zahl]* %a.0, i64 0, i64 0
  %3 = bitcast %Zahl* %2 to i8*
  %4 = bitcast %Zahl* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 32, i1 false)
  ret void

panic1:                                           ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc24 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: uwtable
define void @zabs([0 x %Zahl]* align 1 %a.0, i64 %a.1, [0 x %Zahl]* align 1 %b.0, i64 %b.1) unnamed_addr #1 {
start:
  %_4 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17he64b2bd70c83b469E"([0 x %Zahl]* align 1 %a.0, i64 %a.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17he64b2bd70c83b469E"([0 x %Zahl]* align 1 %b.0, i64 %b.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = icmp ne %Zahl* %_4, %_6
  br i1 %_3, label %bb3, label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %_13 = icmp ult i64 0, %a.1
  %0 = call i1 @llvm.expect.i1(i1 %_13, i1 true)
  br i1 %0, label %bb5, label %panic

bb3:                                              ; preds = %bb2
  call void @zset([0 x %Zahl]* align 1 %a.0, i64 %a.1, [0 x %Zahl]* align 1 %b.0, i64 %b.1)
  br label %bb4

bb5:                                              ; preds = %bb4
  %1 = getelementptr inbounds [0 x %Zahl], [0 x %Zahl]* %a.0, i64 0, i64 0
  %2 = bitcast %Zahl* %1 to i32*
  %3 = getelementptr inbounds [0 x %Zahl], [0 x %Zahl]* %a.0, i64 0, i64 0
  %4 = bitcast %Zahl* %3 to i32*
  %5 = load i32, i32* %4, align 1
  %6 = and i32 %5, 1
  store i32 %6, i32* %2, align 1
  ret void

panic:                                            ; preds = %bb4
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 0, i64 %a.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc26 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zabs.rs.bc", hash: (1058781209, 3073030299, 1176528144, 2158979609, 4249520434))
^1 = gv: (name: "clone", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 21))) ; guid = 54929915014621651
^2 = gv: (name: "zabs", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 21, calls: ((callee: ^7), (callee: ^9), (callee: ^10)), refs: (^6)))) ; guid = 571569045789519847
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^5 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^8)))) ; guid = 3767314716945974805
^6 = gv: (name: "alloc26", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^8)))) ; guid = 6383632802281484675
^7 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17he64b2bd70c83b469E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 11896855851518281897
^8 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13740386587945030006
^9 = gv: (name: "zset", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19, calls: ((callee: ^1), (callee: ^10)), refs: (^11, ^5)))) ; guid = 17194806963102885160
^10 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^11 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^8)))) ; guid = 18201340628441015662
^12 = blockcount: 15
