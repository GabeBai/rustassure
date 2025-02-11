; ModuleID = 'src/zsetup.c'
source_filename = "src/zsetup.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_set_up = local_unnamed_addr global i32 0, align 4
@libzahl_temp_allocation = local_unnamed_addr global i8* null, align 8
@libzahl_jmp_buf = global [48 x i32] zeroinitializer, align 4
@libzahl_pool = local_unnamed_addr global [64 x i64**] zeroinitializer, align 8
@libzahl_pool_n = local_unnamed_addr global [64 x i64] zeroinitializer, align 8
@libzahl_pool_alloc = local_unnamed_addr global [64 x i64] zeroinitializer, align 8
@libzahl_tmp_div = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_mod = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_str_num = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_str_mag = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_str_div = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_str_rem = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_gcd_u = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_gcd_v = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_sub = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_modmul = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_pow_b = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_pow_c = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_pow_d = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_modsqr = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_divmod_a = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_divmod_b = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_divmod_d = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_ptest_x = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_ptest_a = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_ptest_d = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_ptest_n1 = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_ptest_n4 = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_const_1e19 = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@constant_chars = internal global [8 x i64] zeroinitializer, align 16
@libzahl_const_1 = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_const_2 = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_const_4 = local_unnamed_addr global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_divmod_ds = local_unnamed_addr global [64 x [1 x %struct.zahl]] zeroinitializer, align 8
@libzahl_temp_stack = local_unnamed_addr global %struct.zahl** null, align 8
@libzahl_temp_stack_head = local_unnamed_addr global %struct.zahl** null, align 8
@libzahl_temp_stack_end = local_unnamed_addr global %struct.zahl** null, align 8
@libzahl_error = local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @zsetup(i32* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, i32* %0, align 4, !tbaa !10
  store i32 %2, i32* getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), align 4, !tbaa !10
  %3 = load i32, i32* @libzahl_set_up, align 4, !tbaa !10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12, !prof !14

5:                                                ; preds = %1
  store i32 1, i32* @libzahl_set_up, align 4, !tbaa !10
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(512) bitcast ([64 x i64**]* @libzahl_pool to i8*), i8 0, i64 512, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(512) bitcast ([64 x i64]* @libzahl_pool_n to i8*), i8 0, i64 512, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(512) bitcast ([64 x i64]* @libzahl_pool_alloc to i8*), i8 0, i64 512, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_div, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_mod, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modsqr, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_d, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n4, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @constant_chars, i64 0, i64 0), i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 4), align 8, !tbaa !15
  store i32 1, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 0), align 8, !tbaa !19
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 2) to <2 x i64>*), align 8, !tbaa !20
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @constant_chars, i64 0, i64 1), i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 4), align 8, !tbaa !15
  store i32 1, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 0), align 8, !tbaa !19
  store <2 x i64> <i64 -8446744073709551616, i64 1>, <2 x i64>* bitcast ([8 x i64]* @constant_chars to <2 x i64>*), align 16, !tbaa !21
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 2) to <2 x i64>*), align 8, !tbaa !20
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @constant_chars, i64 0, i64 2), i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_2, i64 0, i64 0, i32 4), align 8, !tbaa !15
  store i32 1, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_2, i64 0, i64 0, i32 0), align 8, !tbaa !19
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_2, i64 0, i64 0, i32 2) to <2 x i64>*), align 8, !tbaa !20
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @constant_chars, i64 0, i64 3), i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_4, i64 0, i64 0, i32 4), align 8, !tbaa !15
  store i32 1, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_4, i64 0, i64 0, i32 0), align 8, !tbaa !19
  store <2 x i64> <i64 2, i64 4>, <2 x i64>* bitcast (i64* getelementptr inbounds ([8 x i64], [8 x i64]* @constant_chars, i64 0, i64 2) to <2 x i64>*), align 16, !tbaa !21
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_4, i64 0, i64 0, i32 2) to <2 x i64>*), align 8, !tbaa !20
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 63, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 62, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 61, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 60, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 59, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 58, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 57, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 56, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 55, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 54, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 53, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 52, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 51, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 50, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 49, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 48, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 47, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 46, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 45, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 44, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 43, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 42, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 41, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 40, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 39, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 38, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 37, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 36, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 35, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 34, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 33, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 32, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 31, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 30, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 29, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 28, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 27, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 26, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 25, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 24, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 23, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 22, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 21, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 20, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 19, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 18, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 17, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 16, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 15, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 14, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 13, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 12, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 11, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 10, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 9, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 8, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 7, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 6, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 5, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 4, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 3, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 2, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 1, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (i64* getelementptr inbounds ([64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 0, i64 0, i32 3) to i8*), i8 0, i64 16, i1 false) #7
  %6 = tail call dereferenceable_or_null(2048) i8* @malloc(i64 noundef 2048) #8
  store i8* %6, i8** bitcast (%struct.zahl*** @libzahl_temp_stack to i8**), align 8, !tbaa !23
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9, !prof !24

8:                                                ; preds = %5
  tail call fastcc void @libzahl_memfailure()
  unreachable

9:                                                ; preds = %5
  %10 = bitcast i8* %6 to %struct.zahl**
  store i8* %6, i8** bitcast (%struct.zahl*** @libzahl_temp_stack_head to i8**), align 8, !tbaa !23
  %11 = getelementptr inbounds %struct.zahl*, %struct.zahl** %10, i64 256
  store %struct.zahl** %11, %struct.zahl*** @libzahl_temp_stack_end, align 8, !tbaa !23
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint noreturn nounwind ssp uwtable
define internal fastcc void @libzahl_memfailure() unnamed_addr #3 {
  %1 = tail call i32* @__error() #7
  %2 = load i32, i32* %1, align 4, !tbaa !10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32* @__error() #7
  store i32 2, i32* %5, align 4, !tbaa !10
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call i32* @__error() #7
  %8 = load i32, i32* %7, align 4, !tbaa !10
  store i32 %8, i32* @libzahl_error, align 4, !tbaa !10
  %9 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !23
  %10 = icmp eq %struct.zahl** %9, null
  %11 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %12 = icmp eq %struct.zahl** %11, %9
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %6, %14
  %15 = phi %struct.zahl** [ %18, %14 ], [ %11, %6 ]
  %16 = getelementptr inbounds %struct.zahl*, %struct.zahl** %15, i64 -1
  store %struct.zahl** %16, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !23
  %17 = load %struct.zahl*, %struct.zahl** %16, align 8, !tbaa !23
  tail call void @zfree(%struct.zahl* noundef %17) #7
  %18 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !23
  %19 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !23
  %20 = icmp eq %struct.zahl** %18, %19
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %6
  %22 = load i8*, i8** @libzahl_temp_allocation, align 8, !tbaa !23
  tail call void @free(i8* noundef %22) #7
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !23
  tail call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #9
  unreachable
}

declare i32* @__error() local_unnamed_addr #4

declare void @zfree(%struct.zahl* noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { inlinehint noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #7 = { nounwind }
attributes #8 = { allocsize(0) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 4]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"clang version 14.0.0"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!16, !18, i64 24}
!16 = !{!"zahl", !11, i64 0, !11, i64 4, !17, i64 8, !17, i64 16, !18, i64 24}
!17 = !{!"long", !12, i64 0}
!18 = !{!"any pointer", !12, i64 0}
!19 = !{!16, !11, i64 0}
!20 = !{!17, !17, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"long long", !12, i64 0}
!23 = !{!18, !18, i64 0}
!24 = !{!"branch_weights", i32 1, i32 2000}
