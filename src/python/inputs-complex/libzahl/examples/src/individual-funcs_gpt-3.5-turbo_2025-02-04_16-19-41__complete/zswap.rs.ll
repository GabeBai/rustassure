; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zswap.rs.bc'
source_filename = "zswap.4091db2c-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Zahl = type <{ i32, i32, i64, i64, i64* }>

; Function Attrs: inlinehint uwtable
define %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x %Zahl]* %self.0 to %Zahl*
  ret %Zahl* %0
}

; Function Attrs: uwtable
define void @zswap([1 x %Zahl]* align 1 %a, [1 x %Zahl]* align 1 %b) unnamed_addr #1 {
start:
  %t = alloca i64, align 8
  %_6.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_5 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_6.0, i64 1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast %Zahl* %_5 to i32*
  %_4 = load i32, i32* %0, align 1
  %1 = sext i32 %_4 to i64
  store i64 %1, i64* %t, align 8
  %_10.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_9 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_10.0, i64 1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast %Zahl* %_9 to i32*
  %_8 = load i32, i32* %2, align 1
  %_13.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_12 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_13.0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = bitcast %Zahl* %_12 to i32*
  store i32 %_8, i32* %3, align 1
  %_15 = load i64, i64* %t, align 8
  %_17.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_16 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_17.0, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast %Zahl* %_16 to i32*
  %5 = trunc i64 %_15 to i32
  store i32 %5, i32* %4, align 1
  %_21.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_20 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_21.0, i64 1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %6 = getelementptr inbounds %Zahl, %Zahl* %_20, i32 0, i32 1
  %_19 = load i32, i32* %6, align 1
  %7 = sext i32 %_19 to i64
  store i64 %7, i64* %t, align 8
  %_25.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_24 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_25.0, i64 1)
  br label %bb6

bb6:                                              ; preds = %bb5
  %8 = getelementptr inbounds %Zahl, %Zahl* %_24, i32 0, i32 1
  %_23 = load i32, i32* %8, align 1
  %_28.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_27 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_28.0, i64 1)
  br label %bb7

bb7:                                              ; preds = %bb6
  %9 = getelementptr inbounds %Zahl, %Zahl* %_27, i32 0, i32 1
  store i32 %_23, i32* %9, align 1
  %_30 = load i64, i64* %t, align 8
  %_32.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_31 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_32.0, i64 1)
  br label %bb8

bb8:                                              ; preds = %bb7
  %10 = getelementptr inbounds %Zahl, %Zahl* %_31, i32 0, i32 1
  %11 = trunc i64 %_30 to i32
  store i32 %11, i32* %10, align 1
  %_36.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_35 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_36.0, i64 1)
  br label %bb9

bb9:                                              ; preds = %bb8
  %12 = getelementptr inbounds %Zahl, %Zahl* %_35, i32 0, i32 2
  %_34 = load i64, i64* %12, align 1
  store i64 %_34, i64* %t, align 8
  %_40.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_39 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_40.0, i64 1)
  br label %bb10

bb10:                                             ; preds = %bb9
  %13 = getelementptr inbounds %Zahl, %Zahl* %_39, i32 0, i32 2
  %_38 = load i64, i64* %13, align 1
  %_43.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_42 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_43.0, i64 1)
  br label %bb11

bb11:                                             ; preds = %bb10
  %14 = getelementptr inbounds %Zahl, %Zahl* %_42, i32 0, i32 2
  store i64 %_38, i64* %14, align 1
  %_45 = load i64, i64* %t, align 8
  %_47.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_46 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_47.0, i64 1)
  br label %bb12

bb12:                                             ; preds = %bb11
  %15 = getelementptr inbounds %Zahl, %Zahl* %_46, i32 0, i32 2
  store i64 %_45, i64* %15, align 1
  %_51.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_50 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_51.0, i64 1)
  br label %bb13

bb13:                                             ; preds = %bb12
  %16 = getelementptr inbounds %Zahl, %Zahl* %_50, i32 0, i32 3
  %_49 = load i64, i64* %16, align 1
  store i64 %_49, i64* %t, align 8
  %_55.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_54 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_55.0, i64 1)
  br label %bb14

bb14:                                             ; preds = %bb13
  %17 = getelementptr inbounds %Zahl, %Zahl* %_54, i32 0, i32 3
  %_53 = load i64, i64* %17, align 1
  %_58.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_57 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_58.0, i64 1)
  br label %bb15

bb15:                                             ; preds = %bb14
  %18 = getelementptr inbounds %Zahl, %Zahl* %_57, i32 0, i32 3
  store i64 %_53, i64* %18, align 1
  %_60 = load i64, i64* %t, align 8
  %_62.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_61 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_62.0, i64 1)
  br label %bb16

bb16:                                             ; preds = %bb15
  %19 = getelementptr inbounds %Zahl, %Zahl* %_61, i32 0, i32 3
  store i64 %_60, i64* %19, align 1
  %_66.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_65 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_66.0, i64 1)
  br label %bb17

bb17:                                             ; preds = %bb16
  %20 = getelementptr inbounds %Zahl, %Zahl* %_65, i32 0, i32 4
  %temp_chars = load i64*, i64** %20, align 1
  %_70.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_69 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_70.0, i64 1)
  br label %bb18

bb18:                                             ; preds = %bb17
  %21 = getelementptr inbounds %Zahl, %Zahl* %_69, i32 0, i32 4
  %_68 = load i64*, i64** %21, align 1
  %_73.0 = bitcast [1 x %Zahl]* %a to [0 x %Zahl]*
  %_72 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_73.0, i64 1)
  br label %bb19

bb19:                                             ; preds = %bb18
  %22 = getelementptr inbounds %Zahl, %Zahl* %_72, i32 0, i32 4
  store i64* %_68, i64** %22, align 1
  %_77.0 = bitcast [1 x %Zahl]* %b to [0 x %Zahl]*
  %_76 = call %Zahl* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE"([0 x %Zahl]* align 1 %_77.0, i64 1)
  br label %bb20

bb20:                                             ; preds = %bb19
  %23 = getelementptr inbounds %Zahl, %Zahl* %_76, i32 0, i32 4
  store i64* %temp_chars, i64** %23, align 1
  ret void
}

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zswap.rs.bc", hash: (3637922471, 3012687739, 2179659092, 2075438254, 1086771999))
^1 = gv: (name: "zswap", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 114, calls: ((callee: ^2))))) ; guid = 2886179080304911898
^2 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb960fd8b57efd09cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 15810922465146358607
^3 = blockcount: 22
