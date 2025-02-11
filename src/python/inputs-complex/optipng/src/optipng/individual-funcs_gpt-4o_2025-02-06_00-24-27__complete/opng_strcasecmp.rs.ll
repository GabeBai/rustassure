; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_strcasecmp.rs.bc'
source_filename = "opng_strcasecmp.56a148e7-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc4 = private unnamed_addr constant <{ [97 x i8] }> <{ [97 x i8] c"inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_strcasecmp.rs" }>, align 1
@alloc5 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [97 x i8] }>, <{ [97 x i8] }>* @alloc4, i32 0, i32 0, i32 0), [16 x i8] c"a\00\00\00\00\00\00\00\0E\00\00\00\18\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$18is_ascii_uppercase17h78bf99ddc25ec5e1E"(i8* align 1 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = load i8, i8* %self, align 1
  %_2 = icmp ule i8 65, %1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  store i8 0, i8* %0, align 1
  br label %bb4

bb1:                                              ; preds = %start
  %2 = load i8, i8* %self, align 1
  %_3 = icmp ule i8 %2, 90
  br i1 %_3, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  store i8 1, i8* %0, align 1
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3num20_$LT$impl$u20$u8$GT$18to_ascii_lowercase17h0451fe3961c9b84dE"(i8* align 1 %self) unnamed_addr #0 {
start:
  %_2 = load i8, i8* %self, align 1
  %_5 = call zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$18is_ascii_uppercase17h78bf99ddc25ec5e1E"(i8* align 1 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = zext i1 %_5 to i8
  %_3 = mul i8 %_4, 32
  %0 = or i8 %_2, %_3
  ret i8 %0
}

; Function Attrs: uwtable
define i32 @opng_strcasecmp(i8* %str1, i8* %str2) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %str22 = alloca i8*, align 8
  %str11 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i8* %str1, i8** %str11, align 8
  store i8* %str2, i8** %str22, align 8
  br label %bb1

bb1:                                              ; preds = %bb10, %start
  %_6 = load i8*, i8** %str11, align 8
  %ch1 = call i8 @"_ZN4core3num20_$LT$impl$u20$u8$GT$18to_ascii_lowercase17h0451fe3961c9b84dE"(i8* align 1 %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = load i8*, i8** %str22, align 8
  %ch2 = call i8 @"_ZN4core3num20_$LT$impl$u20$u8$GT$18to_ascii_lowercase17h0451fe3961c9b84dE"(i8* align 1 %_8)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_9 = icmp ne i8 %ch1, %ch2
  br i1 %_9, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %3 = icmp eq i8 %ch1, 0
  br i1 %3, label %bb7, label %bb8

bb4:                                              ; preds = %bb3
  %_12 = zext i8 %ch1 to i32
  %_14 = zext i8 %ch2 to i32
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_12, i32 %_14)
  %_16.0 = extractvalue { i32, i1 } %4, 0
  %_16.1 = extractvalue { i32, i1 } %4, 1
  %5 = call i1 @llvm.expect.i1(i1 %_16.1, i1 false)
  br i1 %5, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  store i32 %_16.0, i32* %2, align 4
  br label %bb11

panic:                                            ; preds = %bb4
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc5 to %"core::panic::location::Location"*)) #5
  unreachable

bb11:                                             ; preds = %bb7, %bb5
  %6 = load i32, i32* %2, align 4
  ret i32 %6

bb7:                                              ; preds = %bb6
  store i32 0, i32* %2, align 4
  br label %bb11

bb8:                                              ; preds = %bb6
  %_19 = load i8*, i8** %str11, align 8
  %7 = getelementptr inbounds i8, i8* %_19, i64 1
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  br label %bb9

bb9:                                              ; preds = %bb8
  store i8* %8, i8** %str11, align 8
  %_21 = load i8*, i8** %str22, align 8
  %9 = getelementptr inbounds i8, i8* %_21, i64 1
  store i8* %9, i8** %0, align 8
  %10 = load i8*, i8** %0, align 8
  br label %bb10

bb10:                                             ; preds = %bb9
  store i8* %10, i8** %str22, align 8
  br label %bb1
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}

^0 = module: (path: "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_strcasecmp.rs.bc", hash: (824241989, 2925210820, 1734360876, 714290772, 1364898325))
^1 = gv: (name: "_ZN4core3num20_$LT$impl$u20$u8$GT$18is_ascii_uppercase17h78bf99ddc25ec5e1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14))) ; guid = 762814768136529053
^2 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^3 = gv: (name: "alloc4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4666330386812300248
^4 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6655494275783066230
^5 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^3)))) ; guid = 6664976884308023399
^6 = gv: (name: "opng_strcasecmp", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 46, calls: ((callee: ^9), (callee: ^7)), refs: (^5, ^4)))) ; guid = 9432215309807951809
^7 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^8 = gv: (name: "llvm.ssub.with.overflow.i32") ; guid = 12482542225321408869
^9 = gv: (name: "_ZN4core3num20_$LT$impl$u20$u8$GT$18to_ascii_lowercase17h0451fe3961c9b84dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^1))))) ; guid = 13753356498448427277
^10 = blockcount: 20
