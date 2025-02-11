; ModuleID = 'src/zunsetup.c'
source_filename = "src/zunsetup.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_set_up = external local_unnamed_addr global i32, align 4
@libzahl_tmp_div = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_mod = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_str_num = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_str_mag = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_str_div = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_str_rem = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_gcd_u = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_gcd_v = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_sub = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_modmul = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_b = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_c = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_pow_d = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_modsqr = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_a = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_b = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_d = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_x = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_a = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_d = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_n1 = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_n4 = external local_unnamed_addr global [1 x %struct.zahl], align 8
@libzahl_tmp_divmod_ds = external local_unnamed_addr global [64 x [1 x %struct.zahl]], align 8
@libzahl_pool_n = external local_unnamed_addr global [64 x i64], align 8
@libzahl_pool = external local_unnamed_addr global [64 x i64**], align 8
@libzahl_temp_stack = external local_unnamed_addr global %struct.zahl**, align 8

; Function Attrs: nounwind ssp uwtable
define void @zunsetup() local_unnamed_addr #0 {
  %1 = load i32, i32* @libzahl_set_up, align 4, !tbaa !10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %58, label %3

3:                                                ; preds = %0
  store i32 0, i32* @libzahl_set_up, align 4, !tbaa !10
  %4 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_div, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %4)
  %5 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_mod, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %5)
  %6 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %6)
  %7 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %7)
  %8 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %8)
  %9 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %9)
  %10 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %10)
  %11 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %11)
  %12 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %12)
  %13 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %13)
  %14 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %14)
  %15 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %15)
  %16 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %16)
  %17 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modsqr, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %17)
  %18 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %18)
  %19 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %19)
  %20 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %20)
  %21 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %21)
  %22 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %22)
  %23 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_d, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %23)
  %24 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %24)
  %25 = load i8*, i8** bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n4, i64 0, i64 0, i32 4) to i8**), align 8, !tbaa !14
  tail call void @free(i8* noundef %25)
  br label %26

26:                                               ; preds = %3, %26
  %27 = phi i64 [ 63, %3 ], [ %31, %26 ]
  %28 = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 %27, i64 0, i32 4
  %29 = bitcast i64** %28 to i8**
  %30 = load i8*, i8** %29, align 8, !tbaa !14
  tail call void @free(i8* noundef %30)
  %31 = add nsw i64 %27, -1
  %32 = icmp eq i64 %27, 0
  br i1 %32, label %33, label %26

33:                                               ; preds = %26, %50
  %34 = phi i64 [ %54, %50 ], [ 63, %26 ]
  %35 = getelementptr inbounds [64 x i64], [64 x i64]* @libzahl_pool_n, i64 0, i64 %34
  %36 = load i64, i64* %35, align 8, !tbaa !18
  %37 = add i64 %36, -1
  store i64 %37, i64* %35, align 8, !tbaa !18
  %38 = icmp eq i64 %36, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %34
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ %37, %39 ], [ %48, %41 ]
  %43 = load i64**, i64*** %40, align 8, !tbaa !19
  %44 = getelementptr inbounds i64*, i64** %43, i64 %42
  %45 = bitcast i64** %44 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !19
  tail call void @free(i8* noundef %46)
  %47 = load i64, i64* %35, align 8, !tbaa !18
  %48 = add i64 %47, -1
  store i64 %48, i64* %35, align 8, !tbaa !18
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %50, label %41

50:                                               ; preds = %41, %33
  %51 = getelementptr inbounds [64 x i64**], [64 x i64**]* @libzahl_pool, i64 0, i64 %34
  %52 = bitcast i64*** %51 to i8**
  %53 = load i8*, i8** %52, align 8, !tbaa !19
  tail call void @free(i8* noundef %53)
  %54 = add nsw i64 %34, -1
  %55 = icmp eq i64 %34, 0
  br i1 %55, label %56, label %33

56:                                               ; preds = %50
  %57 = load i8*, i8** bitcast (%struct.zahl*** @libzahl_temp_stack to i8**), align 8, !tbaa !19
  tail call void @free(i8* noundef %57)
  br label %58

58:                                               ; preds = %56, %0
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
!14 = !{!15, !17, i64 24}
!15 = !{!"zahl", !11, i64 0, !11, i64 4, !16, i64 8, !16, i64 16, !17, i64 24}
!16 = !{!"long", !12, i64 0}
!17 = !{!"any pointer", !12, i64 0}
!18 = !{!16, !16, i64 0}
!19 = !{!17, !17, i64 0}
