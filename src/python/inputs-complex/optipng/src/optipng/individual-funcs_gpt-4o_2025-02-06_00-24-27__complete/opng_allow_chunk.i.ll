; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_allow_chunk.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_allow_chunk.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@sig_dSIG = constant [4 x i8] c"dSIG", align 1
@options = global %struct.opng_options zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_allow_chunk(i8* noundef %chunk_type) #0 {
entry:
  %retval = alloca i32, align 4
  %chunk_type.addr = alloca i8*, align 8
  store i8* %chunk_type, i8** %chunk_type.addr, align 8
  %0 = load i8*, i8** %chunk_type.addr, align 8
  %call = call i32 bitcast (i32 (...)* @opng_is_image_chunk to i32 (i8*)*)(i8* noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 25), align 8
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load i8*, i8** %chunk_type.addr, align 8
  %call4 = call i32 @memcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_dSIG, i64 0, i64 0), i64 noundef 4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %3 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %tobool7 = icmp ne i32 %3, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %4 = load i8*, i8** %chunk_type.addr, align 8
  %call8 = call i32 bitcast (i32 (...)* @opng_is_apng_chunk to i32 (i8*)*)(i8* noundef %4)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %if.end6
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then5, %if.then2, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare i32 @opng_is_image_chunk(...) #1

declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

declare i32 @opng_is_apng_chunk(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
