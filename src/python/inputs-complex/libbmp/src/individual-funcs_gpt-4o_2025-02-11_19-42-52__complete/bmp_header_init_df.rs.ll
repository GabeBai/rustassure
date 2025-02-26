; ModuleID = 'inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_header_init_df.rs.bc'
source_filename = "bmp_header_init_df.f7039daa-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%BmpHeader = type { i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc5 = private unnamed_addr constant <{ [91 x i8] }> <{ [91 x i8] c"inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_header_init_df.rs" }>, align 1
@alloc4 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [91 x i8] }>, <{ [91 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [16 x i8] c"[\00\00\00\00\00\00\00\1E\00\00\00\17\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc6 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [91 x i8] }>, <{ [91 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [16 x i8] c"[\00\00\00\00\00\00\00\1E\00\00\00\16\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$12unsigned_abs17h4146d75374615029E"(i32 %self) unnamed_addr #0 {
start:
  %_2 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$12wrapping_abs17hf8ccc431cec9fb5bE"(i32 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %_2
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$12wrapping_abs17hf8ccc431cec9fb5bE"(i32 %self) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %1 = icmp slt i32 %self, 0
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %1, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  store i32 %self, i32* %0, align 4
  br label %bb5

bb2:                                              ; preds = %bb1
  %2 = sub i32 0, %self
  store i32 %2, i32* %0, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i32, i32* %0, align 4
  ret i32 %3
}

; Function Attrs: uwtable
define void @bmp_header_init_df(%BmpHeader* align 4 %header, i32 %width, i32 %height) unnamed_addr #1 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = trunc i64 3 to i32
  %0 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_6, i32 %width)
  %_10.0 = extractvalue { i32, i1 } %0, 0
  %_10.1 = extractvalue { i32, i1 } %0, 1
  %1 = call i1 @llvm.expect.i1(i1 %_10.1, i1 false)
  br i1 %1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_11 = urem i32 %width, 4
  %2 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_10.0, i32 %_11)
  %_14.0 = extractvalue { i32, i1 } %2, 0
  %_14.1 = extractvalue { i32, i1 } %2, 1
  %3 = call i1 @llvm.expect.i1(i1 %_14.1, i1 false)
  br i1 %3, label %panic1, label %bb3

panic:                                            ; preds = %bb1
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc4 to %"core::panic::location::Location"*)) #5
  unreachable

bb3:                                              ; preds = %bb2
  %_15 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$12unsigned_abs17h4146d75374615029E"(i32 %height)
  br label %bb4

panic1:                                           ; preds = %bb2
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc6 to %"core::panic::location::Location"*)) #5
  unreachable

bb4:                                              ; preds = %bb3
  %4 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %_14.0, i32 %_15)
  %_17.0 = extractvalue { i32, i1 } %4, 0
  %_17.1 = extractvalue { i32, i1 } %4, 1
  %5 = call i1 @llvm.expect.i1(i1 %_17.1, i1 false)
  br i1 %5, label %panic2, label %bb5

bb5:                                              ; preds = %bb4
  %6 = bitcast %BmpHeader* %header to i32*
  store i32 %_17.0, i32* %6, align 4
  %7 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 2
  store i32 54, i32* %8, align 4
  %9 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 3
  store i32 40, i32* %9, align 4
  %10 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 4
  store i32 %width, i32* %10, align 4
  %11 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 5
  store i32 %height, i32* %11, align 4
  %12 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 6
  store i16 1, i16* %12, align 4
  %13 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 7
  store i16 24, i16* %13, align 2
  %14 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 8
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 9
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 10
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 11
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 12
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %BmpHeader, %BmpHeader* %header, i32 0, i32 13
  store i32 0, i32* %19, align 4
  ret void

panic2:                                           ; preds = %bb4
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc6 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_header_init_df.rs.bc", hash: (3551907636, 2029299332, 3312638731, 3880169734, 1565521600))
^1 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^2 = gv: (name: "bmp_header_init_df", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 55, calls: ((callee: ^8), (callee: ^11)), refs: (^9, ^3, ^7, ^5)))) ; guid = 3473618588073041644
^3 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6032454775986677849
^4 = gv: (name: "llvm.uadd.with.overflow.i32") ; guid = 7434724336648776420
^5 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8556299987109134544
^6 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9228044215174367103
^7 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 9650523406477454409
^8 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^9 = gv: (name: "alloc4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 10290663823819742679
^10 = gv: (name: "_ZN4core3num21_$LT$impl$u20$i32$GT$12wrapping_abs17hf8ccc431cec9fb5bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 10646469463135769077
^11 = gv: (name: "_ZN4core3num21_$LT$impl$u20$i32$GT$12unsigned_abs17h4146d75374615029E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^10))))) ; guid = 10917530580144552707
^12 = gv: (name: "llvm.umul.with.overflow.i32") ; guid = 15399588962760241756
^13 = blockcount: 17
