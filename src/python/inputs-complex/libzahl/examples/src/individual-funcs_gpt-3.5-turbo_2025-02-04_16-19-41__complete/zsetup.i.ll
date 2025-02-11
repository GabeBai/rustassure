; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsetup.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsetup.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_set_up = global i32 0, align 4
@libzahl_jmp_buf = global [48 x i32] zeroinitializer, align 4
@libzahl_pool = global [64 x i64**] zeroinitializer, align 8
@libzahl_pool_n = global [64 x i64] zeroinitializer, align 8
@libzahl_pool_alloc = global [64 x i64] zeroinitializer, align 8
@libzahl_tmp_div = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_mod = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_str_num = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_str_mag = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_str_div = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_str_rem = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_gcd_u = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_gcd_v = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_sub = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_modmul = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_pow_b = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_pow_c = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_pow_d = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_modsqr = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_divmod_a = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_divmod_b = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_divmod_d = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_ptest_x = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_ptest_a = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_ptest_d = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_ptest_n1 = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_ptest_n4 = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_const_1e19 = global [1 x %struct.zahl] zeroinitializer, align 8
@constant_chars = global [8 x i64] zeroinitializer, align 8
@libzahl_const_1 = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_const_2 = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_const_4 = global [1 x %struct.zahl] zeroinitializer, align 8
@libzahl_tmp_divmod_ds = global [64 x [1 x %struct.zahl]] zeroinitializer, align 8
@libzahl_temp_stack = global %struct.zahl** null, align 8
@libzahl_temp_stack_head = global %struct.zahl** null, align 8
@libzahl_temp_stack_end = global %struct.zahl** null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zsetup(i32* noundef %env) #0 {
entry:
  %env.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  store i32* %env, i32** %env.addr, align 8
  %0 = load i32*, i32** %env.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), align 4
  %2 = load i32, i32* @libzahl_set_up, align 4
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool3 = icmp ne i64 %conv, 0
  br i1 %tobool3, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  store i32 1, i32* @libzahl_set_up, align 4
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast ([64 x i64**]* @libzahl_pool to i8*), i8 0, i64 512, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast ([64 x i64]* @libzahl_pool_n to i8*), i8 0, i64 512, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast ([64 x i64]* @libzahl_pool_alloc to i8*), i8 0, i64 512, i1 false)
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_div, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_mod, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modmul, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_b, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_c, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_pow_d, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_modsqr, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_a, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_b, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_divmod_d, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_d, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0))
  call void @zinit(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n4, i64 0, i64 0))
  store i64 1, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 3), align 8
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @constant_chars, i64 0, i64 0), i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 4), align 8
  call void @zsetu(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0), i64 noundef -8446744073709551616)
  store i64 1, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 3), align 8
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @constant_chars, i64 0, i64 1), i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 4), align 8
  call void @zsetu(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0), i64 noundef 1)
  store i64 1, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_2, i64 0, i64 0, i32 3), align 8
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @constant_chars, i64 0, i64 2), i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_2, i64 0, i64 0, i32 4), align 8
  call void @zsetu(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_2, i64 0, i64 0), i64 noundef 2)
  store i64 1, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_4, i64 0, i64 0, i32 3), align 8
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @constant_chars, i64 0, i64 3), i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_4, i64 0, i64 0, i32 4), align 8
  call void @zsetu(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_4, i64 0, i64 0), i64 noundef 4)
  store i64 64, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %3 = load i64, i64* %i, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %i, align 8
  %tobool4 = icmp ne i64 %3, 0
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [64 x [1 x %struct.zahl]], [64 x [1 x %struct.zahl]]* @libzahl_tmp_divmod_ds, i64 0, i64 %4
  %arraydecay = getelementptr inbounds [1 x %struct.zahl], [1 x %struct.zahl]* %arrayidx, i64 0, i64 0
  call void @zinit(%struct.zahl* noundef %arraydecay)
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %call = call i8* @malloc(i64 noundef 2048) #4
  %5 = bitcast i8* %call to %struct.zahl**
  store %struct.zahl** %5, %struct.zahl*** @libzahl_temp_stack, align 8
  %6 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8
  %tobool5 = icmp ne %struct.zahl** %6, null
  %lnot6 = xor i1 %tobool5, true
  %lnot8 = xor i1 %lnot6, true
  %lnot10 = xor i1 %lnot8, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  %conv12 = sext i32 %lnot.ext11 to i64
  %tobool13 = icmp ne i64 %conv12, 0
  br i1 %tobool13, label %if.then14, label %if.end

if.then14:                                        ; preds = %for.end
  %call15 = call i32 bitcast (i32 (...)* @libzahl_memfailure to i32 ()*)()
  br label %if.end

if.end:                                           ; preds = %if.then14, %for.end
  %7 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8
  store %struct.zahl** %7, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %8 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8
  %add.ptr = getelementptr inbounds %struct.zahl*, %struct.zahl** %8, i64 256
  store %struct.zahl** %add.ptr, %struct.zahl*** @libzahl_temp_stack_end, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare void @zinit(%struct.zahl* noundef) #2

declare void @zsetu(%struct.zahl* noundef, i64 noundef) #2

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #3

declare i32 @libzahl_memfailure(...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }

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
!9 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git 6fd4c483fd129052982b4c7498e7ea910578ab6c)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
