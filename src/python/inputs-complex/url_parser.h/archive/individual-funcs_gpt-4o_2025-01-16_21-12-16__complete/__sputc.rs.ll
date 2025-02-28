; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/__sputc.rs.bc'
source_filename = "__sputc.1b804409-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%File = type <{ i8*, i32, i32, i16, i16, %Sbuf, i32, i8*, i64*, i64*, i64*, i64*, %Sbuf, i8*, i32, [3 x i8], [1 x i8], %Sbuf, i32, i64 }>
%Sbuf = type <{ i8*, i32 }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc5 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/__sputc.rs" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00&\00\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"

; Function Attrs: uwtable
define internal i32 @_ZN7__sputc7__swbuf17h1395b505bf117de9E(i32 %c, %File* align 1 %p) unnamed_addr #0 {
start:
  ret i32 0
}

; Function Attrs: uwtable
define i32 @__sputc(i32 %c, %File* align 1 %p) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_7 = alloca i8, align 1
  %_4 = alloca i8, align 1
  %1 = alloca i32, align 4
  %2 = getelementptr inbounds %File, %File* %p, i32 0, i32 2
  %3 = load i32, i32* %2, align 1
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3, i32 1)
  %_3.0 = extractvalue { i32, i1 } %4, 0
  %_3.1 = extractvalue { i32, i1 } %4, 1
  %5 = call i1 @llvm.expect.i1(i1 %_3.1, i1 false)
  br i1 %5, label %panic, label %bb1

bb1:                                              ; preds = %start
  %6 = getelementptr inbounds %File, %File* %p, i32 0, i32 2
  store i32 %_3.0, i32* %6, align 1
  %7 = getelementptr inbounds %File, %File* %p, i32 0, i32 2
  %_6 = load i32, i32* %7, align 1
  %_5 = icmp sge i32 %_6, 0
  br i1 %_5, label %bb2, label %bb3

panic:                                            ; preds = %start
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc6 to %"core::panic::location::Location"*)) #4
  unreachable

bb3:                                              ; preds = %bb1
  %8 = getelementptr inbounds %File, %File* %p, i32 0, i32 2
  %_9 = load i32, i32* %8, align 1
  %9 = getelementptr inbounds %File, %File* %p, i32 0, i32 6
  %_10 = load i32, i32* %9, align 1
  %_8 = icmp sge i32 %_9, %_10
  br i1 %_8, label %bb6, label %bb5

bb2:                                              ; preds = %bb1
  store i8 1, i8* %_4, align 1
  br label %bb4

bb4:                                              ; preds = %bb7, %bb2
  %10 = load i8, i8* %_4, align 1, !range !1, !noundef !2
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb8, label %bb10

bb5:                                              ; preds = %bb3
  store i8 0, i8* %_7, align 1
  br label %bb7

bb6:                                              ; preds = %bb3
  %_12 = trunc i32 %c to i8
  %_11 = icmp ne i8 %_12, 10
  %12 = zext i1 %_11 to i8
  store i8 %12, i8* %_7, align 1
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %13 = load i8, i8* %_7, align 1, !range !1, !noundef !2
  %14 = trunc i8 %13 to i1
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %_4, align 1
  br label %bb4

bb10:                                             ; preds = %bb4
  %16 = call i32 @_ZN7__sputc7__swbuf17h1395b505bf117de9E(i32 %c, %File* align 1 %p)
  store i32 %16, i32* %1, align 4
  br label %bb11

bb8:                                              ; preds = %bb4
  %17 = bitcast %File* %p to i8**
  %_19 = load i8*, i8** %17, align 1
  %18 = trunc i32 %c to i8
  store i8 %18, i8* %_19, align 1
  %19 = bitcast %File* %p to i8**
  %_16 = load i8*, i8** %19, align 1
  %20 = getelementptr inbounds i8, i8* %_16, i64 1
  store i8* %20, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb9

bb9:                                              ; preds = %bb8
  %21 = bitcast %File* %p to i8**
  store i8* %_3.i, i8** %21, align 1
  store i32 %c, i32* %1, align 4
  br label %bb11

bb11:                                             ; preds = %bb9, %bb10
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/__sputc.rs.bc", hash: (2631092058, 1506305583, 2053810043, 1048577736, 2427437064))
^1 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^2 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^3 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10473331186913830055
^4 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^5)))) ; guid = 11346031105314421300
^5 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11352527077579968254
^6 = gv: (name: "llvm.ssub.with.overflow.i32") ; guid = 12482542225321408869
^7 = gv: (name: "__sputc", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, calls: ((callee: ^2), (callee: ^8)), refs: (^4, ^3)))) ; guid = 15087931363880538230
^8 = gv: (name: "_ZN7__sputc7__swbuf17h1395b505bf117de9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 15116611361757073888
^9 = blockcount: 14
