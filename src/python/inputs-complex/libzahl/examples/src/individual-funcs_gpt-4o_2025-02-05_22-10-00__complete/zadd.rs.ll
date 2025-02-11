; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zadd.rs.bc'
source_filename = "zadd.faeb4941-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc19 = private unnamed_addr constant <{ [78 x i8] }> <{ [78 x i8] c"inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zadd.rs" }>, align 1
@alloc20 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [78 x i8] }>, <{ [78 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [16 x i8] c"N\00\00\00\00\00\00\00@\00\00\00\19\00\00\00" }>, align 8
@str.0 = internal constant [31 x i8] c"attempt to negate with overflow"

; Function Attrs: inlinehint uwtable
define zeroext i1 @_ZN4core3ptr2eq17h8095cc0a7dea9944E([1 x %Zahl]* %a, [1 x %Zahl]* %b) unnamed_addr #0 {
start:
  %0 = icmp eq [1 x %Zahl]* %a, %b
  ret i1 %0
}

; Function Attrs: uwtable
define void @zset([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  %_3 = alloca %Zahl, align 1
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %b, i64 0, i64 0
  %1 = bitcast %Zahl* %_3 to i8*
  %2 = bitcast %Zahl* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %2, i64 32, i1 false)
  %3 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %4 = bitcast %Zahl* %3 to i8*
  %5 = bitcast %Zahl* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 32, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @zadd([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c) unnamed_addr #1 {
start:
  %_4 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %b)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb5

bb5:                                              ; preds = %bb1
  %_13 = call zeroext i1 @zzero([1 x %Zahl]* align 1 %c)
  br label %bb6

bb2:                                              ; preds = %bb1
  %_7 = call zeroext i1 @_ZN4core3ptr2eq17h8095cc0a7dea9944E([1 x %Zahl]* %a, [1 x %Zahl]* %c)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_6 = xor i1 %_7, true
  br i1 %_6, label %bb4, label %bb23

bb23:                                             ; preds = %bb21, %bb22, %bb17, %bb18, %bb9, %bb8, %bb4, %bb3
  ret void

bb4:                                              ; preds = %bb3
  call void @zset([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %c)
  br label %bb23

bb6:                                              ; preds = %bb5
  br i1 %_13, label %bb7, label %bb10

bb10:                                             ; preds = %bb6
  %_23 = call i32 @zsignum([1 x %Zahl]* align 1 %b)
  br label %bb11

bb7:                                              ; preds = %bb6
  %_16 = call zeroext i1 @_ZN4core3ptr2eq17h8095cc0a7dea9944E([1 x %Zahl]* %a, [1 x %Zahl]* %b)
  br label %bb8

bb8:                                              ; preds = %bb7
  %_15 = xor i1 %_16, true
  br i1 %_15, label %bb9, label %bb23

bb9:                                              ; preds = %bb8
  call void @zset([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b)
  br label %bb23

bb11:                                             ; preds = %bb10
  %_22 = icmp slt i32 %_23, 0
  br i1 %_22, label %bb12, label %bb19

bb19:                                             ; preds = %bb11
  %_41 = call i32 @zsignum([1 x %Zahl]* align 1 %c)
  br label %bb20

bb12:                                             ; preds = %bb11
  %_26 = call i32 @zsignum([1 x %Zahl]* align 1 %c)
  br label %bb13

bb13:                                             ; preds = %bb12
  %_25 = icmp slt i32 %_26, 0
  br i1 %_25, label %bb14, label %bb18

bb18:                                             ; preds = %bb13
  call void @zsub_unsigned([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %c, [1 x %Zahl]* align 1 %b)
  br label %bb23

bb14:                                             ; preds = %bb13
  call void @libzahl_zadd_unsigned([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c)
  br label %bb15

bb15:                                             ; preds = %bb14
  %_32 = call i32 @zsignum([1 x %Zahl]* align 1 %a)
  br label %bb16

bb16:                                             ; preds = %bb15
  %_34 = icmp eq i32 %_32, -2147483648
  %0 = call i1 @llvm.expect.i1(i1 %_34, i1 false)
  br i1 %0, label %panic, label %bb17

bb17:                                             ; preds = %bb16
  %1 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %a, i64 0, i64 0
  %2 = bitcast %Zahl* %1 to i32*
  %3 = sub i32 0, %_32
  store i32 %3, i32* %2, align 1
  br label %bb23

panic:                                            ; preds = %bb16
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([31 x i8]* @str.0 to [0 x i8]*), i64 31, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc20 to %"core::panic::location::Location"*)) #5
  unreachable

bb20:                                             ; preds = %bb19
  %_40 = icmp slt i32 %_41, 0
  br i1 %_40, label %bb21, label %bb22

bb22:                                             ; preds = %bb20
  call void @libzahl_zadd_unsigned([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c)
  br label %bb23

bb21:                                             ; preds = %bb20
  call void @zsub_unsigned([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c)
  br label %bb23
}

; Function Attrs: uwtable
define zeroext i1 @zzero([1 x %Zahl]* align 1 %z) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %z, i64 0, i64 0
  %1 = getelementptr inbounds %Zahl, %Zahl* %0, i32 0, i32 2
  %_2 = load i64, i64* %1, align 1
  %2 = icmp eq i64 %_2, 0
  ret i1 %2
}

; Function Attrs: uwtable
define i32 @zsignum([1 x %Zahl]* align 1 %z) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds [1 x %Zahl], [1 x %Zahl]* %z, i64 0, i64 0
  %1 = bitcast %Zahl* %0 to i32*
  %2 = load i32, i32* %1, align 1
  ret i32 %2
}

; Function Attrs: uwtable
define void @libzahl_zadd_unsigned([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define void @zsub_unsigned([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b, [1 x %Zahl]* align 1 %c) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-4o_2025-02-05_22-10-00/zadd.rs.bc", hash: (1029771533, 1434332956, 3945727409, 2175526695, 1727967770))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1268804514425358444
^3 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^4 = gv: (name: "zzero", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 5436943481773832288
^5 = gv: (name: "_ZN4core3ptr2eq17h8095cc0a7dea9944E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 7378471220694998108
^6 = gv: (name: "zadd", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^4), (callee: ^5), (callee: ^13), (callee: ^12), (callee: ^8), (callee: ^7), (callee: ^9)), refs: (^10, ^2)))) ; guid = 9012334555723745719
^7 = gv: (name: "libzahl_zadd_unsigned", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9816561387819672467
^8 = gv: (name: "zsub_unsigned", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9948682264463128493
^9 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^10 = gv: (name: "alloc20", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^11)))) ; guid = 12157295933143595160
^11 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15061779508860569896
^12 = gv: (name: "zsignum", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 15352537659571043505
^13 = gv: (name: "zset", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 17194806963102885160
^14 = blockcount: 31
