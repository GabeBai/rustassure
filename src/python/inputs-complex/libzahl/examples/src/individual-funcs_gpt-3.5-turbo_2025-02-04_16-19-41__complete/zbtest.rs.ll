; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbtest.rs.bc'
source_filename = "zbtest.e1f0e2b0-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc11 = private unnamed_addr constant <{ [87 x i8] }> <{ [87 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbtest.rs" }>, align 1
@alloc12 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [87 x i8] }>, <{ [87 x i8] }>* @alloc11, i32 0, i32 0, i32 0), [16 x i8] c"W\00\00\00\00\00\00\00C\00\00\00\18\00\00\00" }>, align 8
@str.0 = internal constant [36 x i8] c"attempt to shift right with overflow"

; Function Attrs: uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 1 %a) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %1 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  %_2 = load i64, i64* %1, align 1
  %2 = icmp eq i64 %_2, 0
  ret i1 %2
}

; Function Attrs: uwtable
define i32 @zbtest([1 x %Zahl]* align 1 %a, i64 %bit) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = alloca i32, align 4
  %_4 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %a)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_7.0 = lshr i64 %bit, 6
  br label %bb4

bb2:                                              ; preds = %bb1
  store i32 0, i32* %1, align 4
  br label %bb9

bb9:                                              ; preds = %bb8, %bb5, %bb2
  %2 = load i32, i32* %1, align 4
  ret i32 %2

bb4:                                              ; preds = %bb3
  %3 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %4 = getelementptr inbounds %Zahl, %Zahl* %3, i32 0, i32 2
  %_10 = load i64, i64* %4, align 1
  %_8 = icmp uge i64 %_7.0, %_10
  br i1 %_8, label %bb5, label %bb6

bb6:                                              ; preds = %bb4
  %bit1 = and i64 %bit, 63
  %5 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %6 = getelementptr inbounds %Zahl, %Zahl* %5, i32 0, i32 4
  %_16 = load i64*, i64** %6, align 1
  %7 = getelementptr inbounds i64, i64* %_16, i64 %_7.0
  store i64* %7, i64** %0, align 8
  %_3.i = load i64*, i64** %0, align 8
  br label %bb7

bb5:                                              ; preds = %bb4
  store i32 0, i32* %1, align 4
  br label %bb9

bb7:                                              ; preds = %bb6
  %_21 = load i64, i64* %_3.i, align 8
  %8 = and i64 %bit1, -64
  %_23.1 = icmp ne i64 %8, 0
  %9 = and i64 %bit1, 63
  %_23.0 = lshr i64 %_21, %9
  %10 = call i1 @llvm.expect.i1(i1 %_23.1, i1 false)
  br i1 %10, label %panic, label %bb8

bb8:                                              ; preds = %bb7
  %_24 = and i64 %_23.0, 1
  %11 = trunc i64 %_24 to i32
  store i32 %11, i32* %1, align 4
  br label %bb9

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([36 x i8]* @str.0 to [0 x i8]*), i64 36, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc12 to %"core::panic::location::Location"*)) #3
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone willreturn }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zbtest.rs.bc", hash: (4093011674, 2560930490, 1468940021, 3439618892, 1423271762))
^1 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 1129014802594824643
^2 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^3 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4758632030171906164
^4 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 5436943481773832288
^5 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8765945026335376630
^6 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^7 = gv: (name: "zbtest", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, calls: ((callee: ^4), (callee: ^6)), refs: (^1, ^5)))) ; guid = 11612159597547465450
^8 = blockcount: 12
