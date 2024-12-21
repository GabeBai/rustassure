; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/mbedtls/library/individual-funcs_gpt-4o_2024-09-25_11-18-42__complete/mbedtls_ssl_set_client_transport_id.rs.bc.ll'
source_filename = "mbedtls_ssl_set_client_transport_id.7cf9b9c1-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::alloc::layout::LayoutError" = type {}
%MbedtlsSslContext = type { %MbedtlsSslConfig*, i8*, i64 }
%MbedtlsSslConfig = type { i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }

@alloc69 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc70 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc69, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc88 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (%"core::alloc::layout::LayoutError"*)* @"_ZN4core3ptr53drop_in_place$LT$core..alloc..layout..LayoutError$GT$17h18c5a2acdebe4a5aE" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i1 (%"core::alloc::layout::LayoutError"*, %"core::fmt::Formatter"*)* @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha526af786231edddE" to i8*) }>, align 8
@alloc94 = private unnamed_addr constant <{ [115 x i8] }> <{ [115 x i8] c"./inputs-complex/mbedtls/library/individual-funcs_gpt-4o_2024-09-25_11-18-42/mbedtls_ssl_set_client_transport_id.rs" }>, align 1
@alloc93 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [115 x i8] }>, <{ [115 x i8] }>* @alloc94, i32 0, i32 0, i32 0), [16 x i8] c"s\00\00\00\00\00\00\00\1F\00\00\00>\00\00\00" }>, align 8
@alloc95 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [115 x i8] }>, <{ [115 x i8] }>* @alloc94, i32 0, i32 0, i32 0), [16 x i8] c"s\00\00\00\00\00\00\00#\00\00\006\00\00\00" }>, align 8
@klee_sym_arg_name = private global [6 x i8] c"field\00", align 1
@klee_sym_arg_name.1 = private global [7 x i8] c"field2\00", align 1
@klee_sym_arg_name.2 = private global [4 x i8] c"ssl\00", align 1
@klee_sym_arg_name.3 = private global [7 x i8] c"info.0\00", align 1
@klee_sym_arg_name.4 = private global [7 x i8] c"info.1\00", align 1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hbaf898b037a44c5eE"(%"core::panic::location::Location"* align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core10intrinsics19copy_nonoverlapping17h24ecbc35786957aaE(i8*, i8*, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare dso_local i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h6e3e7a525505323eE(i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare dso_local i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h7c1dee30d047b72eE(i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare dso_local { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hf6b96ee0ca33b040E"(i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare dso_local i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h95dd68e295cd28f2E(i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare dso_local i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hbc55cff9a298a232E(i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare dso_local void @"_ZN4core3ptr53drop_in_place$LT$core..alloc..layout..LayoutError$GT$17h18c5a2acdebe4a5aE"(%"core::alloc::layout::LayoutError"*) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h3b8262ff2d973e33E"(i8*, i8*) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hfa2a5cf2400558b9E"(i8*) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h3129803a0f195c72E({}*) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare dso_local { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h807c71a4068369ccE(i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare dso_local i64 @_ZN4core5alloc6layout6Layout4size17h89e9fcdefaa83e70E({ i64, i64 }* align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare dso_local i64 @_ZN4core5alloc6layout6Layout5align17h5d5e30e8fe462b11E({ i64, i64 }* align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h5560463a410449b1E(i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h85553462f4def539E"([0 x i8]* align 1, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h12e2be4c09e70d31E"(i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h93ce68a17fe38b11E"(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h7a980854b5ad6024E"() unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare dso_local i8* @_ZN5alloc5alloc12alloc_zeroed17h13e0468d28f845baE(i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare dso_local void @_ZN5alloc5alloc7dealloc17h9d3a2978b642d7bdE(i8*, i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h1f9ce31937667f61E"(i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define i32 @_ZN35mbedtls_ssl_set_client_transport_id35mbedtls_ssl_set_client_transport_id17h249ff47483a38283E(%MbedtlsSslContext* align 8 %ssl, [0 x i8]* align 1 %info.0, i64 %info.1) unnamed_addr #1 {
start:
  %0 = alloca i32, align 4
  %1 = bitcast %MbedtlsSslContext* %ssl to %MbedtlsSslConfig**
  %_29 = load %MbedtlsSslConfig*, %MbedtlsSslConfig** %1, align 8
  %2 = bitcast %MbedtlsSslConfig* %_29 to i32*
  %_3 = load i32, i32* %2, align 4
  %3 = icmp eq i32 %_3, 1
  br i1 %3, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %4 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 1
  %_6 = load i8*, i8** %4, align 8
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hfa2a5cf2400558b9E"(i8* %_6)
  %_4 = xor i1 %_5, true
  br i1 %_4, label %bb4, label %bb7

bb1:                                              ; preds = %start
  store i32 -28928, i32* %0, align 4
  br label %bb16

bb16:                                             ; preds = %bb13, %bb12, %bb1
  %5 = load i32, i32* %0, align 4
  ret i32 %5

bb7:                                              ; preds = %bb4, %bb2
  %6 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h5560463a410449b1E(i64 %info.1)
  %_14.0 = extractvalue { i64, i64 } %6, 0
  %_14.1 = extractvalue { i64, i64 } %6, 1
  %7 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h93ce68a17fe38b11E"(i64 %_14.0, i64 %_14.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc95 to %"core::panic::location::Location"*))
  %layout.01 = extractvalue { i64, i64 } %7, 0
  %layout.12 = extractvalue { i64, i64 } %7, 1
  %_17 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h13e0468d28f845baE(i64 %layout.01, i64 %layout.12)
  %8 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 1
  store i8* %_17, i8** %8, align 8
  %9 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 1
  %_20 = load i8*, i8** %9, align 8
  %_19 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hfa2a5cf2400558b9E"(i8* %_20)
  br i1 %_19, label %bb12, label %bb13

bb4:                                              ; preds = %bb2
  %10 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 2
  %_9 = load i64, i64* %10, align 8
  %11 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h5560463a410449b1E(i64 %_9)
  %_8.0 = extractvalue { i64, i64 } %11, 0
  %_8.1 = extractvalue { i64, i64 } %11, 1
  %12 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h93ce68a17fe38b11E"(i64 %_8.0, i64 %_8.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc93 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %12, 0
  %layout.1 = extractvalue { i64, i64 } %12, 1
  %13 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 1
  %_11 = load i8*, i8** %13, align 8
  call void @_ZN5alloc5alloc7dealloc17h9d3a2978b642d7bdE(i8* %_11, i64 %layout.0, i64 %layout.1)
  br label %bb7

bb13:                                             ; preds = %bb7
  %_22 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h85553462f4def539E"([0 x i8]* align 1 %info.0, i64 %info.1)
  %14 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 1
  %_24 = load i8*, i8** %14, align 8
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h24ecbc35786957aaE(i8* %_22, i8* %_24, i64 %info.1)
  %15 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 2
  store i64 %info.1, i64* %15, align 8
  store i32 0, i32* %0, align 4
  br label %bb16

bb12:                                             ; preds = %bb7
  store i32 -32512, i32* %0, align 4
  br label %bb16
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha526af786231edddE"(%"core::alloc::layout::LayoutError"* align 1, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h42ad8e915aa0a906E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #6

declare void @klee_make_symbolic(i8*, i64, i8*)

define void @main() {
entry:
  %ssl = alloca %MbedtlsSslContext, align 8
  %gep = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 0
  %field = alloca %MbedtlsSslConfig, align 8
  %0 = bitcast %MbedtlsSslConfig* %field to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @klee_sym_arg_name, i32 0, i32 0))
  store %MbedtlsSslConfig* %field, %MbedtlsSslConfig** %gep, align 8
  %gep1 = getelementptr inbounds %MbedtlsSslContext, %MbedtlsSslContext* %ssl, i32 0, i32 1
  %field2 = alloca [100 x i8], align 1
  %1 = bitcast [100 x i8]* %field2 to i8*
  call void @klee_make_symbolic(i8* %1, i64 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @klee_sym_arg_name.1, i32 0, i32 0))
  %2 = bitcast [100 x i8]* %field2 to i8*
  store i8* %2, i8** %gep1, align 8
  %3 = bitcast %MbedtlsSslContext* %ssl to i8*
  call void @klee_make_symbolic(i8* %3, i64 24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @klee_sym_arg_name.2, i32 0, i32 0))
  %info.0 = alloca [0 x i8], align 1
  %4 = bitcast [0 x i8]* %info.0 to i8*
  call void @klee_make_symbolic(i8* %4, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @klee_sym_arg_name.3, i32 0, i32 0))
  %info.1 = alloca i64, align 8
  %5 = bitcast i64* %info.1 to i8*
  call void @klee_make_symbolic(i8* %5, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @klee_sym_arg_name.4, i32 0, i32 0))
  %6 = load i64, i64* %info.1, align 8
  %7 = call i32 @_ZN35mbedtls_ssl_set_client_transport_id35mbedtls_ssl_set_client_transport_id17h249ff47483a38283E(%MbedtlsSslContext* %ssl, [0 x i8]* %info.0, i64 %6)
  ret void
}

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
