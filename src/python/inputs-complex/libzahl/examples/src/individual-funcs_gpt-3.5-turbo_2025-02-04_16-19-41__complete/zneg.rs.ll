; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zneg.rs.bc'
source_filename = "zneg.9b74662a-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc9 = private unnamed_addr constant <{ [85 x i8] }> <{ [85 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zneg.rs" }>, align 1
@alloc10 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [85 x i8] }>, <{ [85 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [16 x i8] c"U\00\00\00\00\00\00\00>\00\00\00\11\00\00\00" }>, align 8
@str.0 = internal constant [31 x i8] c"attempt to negate with overflow"

; Function Attrs: uwtable
define void @zset([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zneg([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #0 {
start:
  %_3 = icmp ne [1 x %Zahl]* %a, %b
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %1 = bitcast %Zahl* %0 to i32*
  %_9 = load i32, i32* %1, align 1
  %_11 = icmp eq i32 %_9, -2147483648
  %2 = call i1 @llvm.expect.i1(i1 %_11, i1 false)
  br i1 %2, label %panic, label %bb3

bb1:                                              ; preds = %start
  call void @zset([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b)
  br label %bb2

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %4 = bitcast %Zahl* %3 to i32*
  %5 = sub i32 0, %_9
  store i32 %5, i32* %4, align 1
  ret void

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([31 x i8]* @str.0 to [0 x i8]*), i64 31, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc10 to %"core::panic::location::Location"*)) #3
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

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zneg.rs.bc", hash: (1170957581, 564357550, 3696468490, 2240444579, 2026843970))
^1 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^2 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^5)))) ; guid = 6576208528182628490
^3 = gv: (name: "zneg", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17, calls: ((callee: ^7), (callee: ^4)), refs: (^2, ^6)))) ; guid = 8422449061177613082
^4 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^5 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10331982479452469778
^6 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10476105745731628113
^7 = gv: (name: "zset", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 17194806963102885160
^8 = blockcount: 6
