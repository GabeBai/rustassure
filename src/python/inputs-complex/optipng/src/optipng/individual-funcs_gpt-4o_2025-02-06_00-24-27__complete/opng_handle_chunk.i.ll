; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_handle_chunk.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_handle_chunk.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_process_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_struct_def = type opaque

@sig_bKGD = constant [4 x i8] c"bKGD", align 1
@sig_hIST = constant [4 x i8] c"hIST", align 1
@sig_sBIT = constant [4 x i8] c"sBIT", align 1
@sig_dSIG = constant [4 x i8] c"dSIG", align 1
@sig_fdAT = constant [4 x i8] c"fdAT", align 1
@options = global %struct.opng_options zeroinitializer, align 8
@process = global %struct.opng_process_struct zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_handle_chunk(%struct.png_struct_def* noundef %png_ptr, i8* noundef %chunk_type) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %chunk_type.addr = alloca i8*, align 8
  %keep = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i8* %chunk_type, i8** %chunk_type.addr, align 8
  %0 = load i8*, i8** %chunk_type.addr, align 8
  %call = call i32 bitcast (i32 (...)* @opng_is_image_chunk to i32 (i8*)*)(i8* noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 25), align 8
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or = or i32 %2, 192
  store i32 %or, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %4 = load i8*, i8** %chunk_type.addr, align 8
  %call3 = call i32 bitcast (i32 (...)* @opng_set_keep_unknown_chunk to i32 (%struct.png_struct_def*, i32, i8*)*)(%struct.png_struct_def* noundef %3, i32 noundef 1, i8* noundef %4)
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load i8*, i8** %chunk_type.addr, align 8
  %call5 = call i32 @memcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_bKGD, i64 0, i64 0), i64 noundef 4)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %6 = load i8*, i8** %chunk_type.addr, align 8
  %call6 = call i32 @memcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_hIST, i64 0, i64 0), i64 noundef 4)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then11, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %7 = load i8*, i8** %chunk_type.addr, align 8
  %call9 = call i32 @memcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_sBIT, i64 0, i64 0), i64 noundef 4)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %if.end4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false8
  store i32 3, i32* %keep, align 4
  %8 = load i8*, i8** %chunk_type.addr, align 8
  %call13 = call i32 @memcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_dSIG, i64 0, i64 0), i64 noundef 4)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or16 = or i32 %9, 8
  store i32 %or16, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end31

if.else:                                          ; preds = %if.end12
  %10 = load i8*, i8** %chunk_type.addr, align 8
  %call17 = call i32 bitcast (i32 (...)* @opng_is_apng_chunk to i32 (i8*)*)(i8* noundef %10)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end30

if.then19:                                        ; preds = %if.else
  %11 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or20 = or i32 %11, 32
  store i32 %or20, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %12 = load i8*, i8** %chunk_type.addr, align 8
  %call21 = call i32 @memcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_fdAT, i64 0, i64 0), i64 noundef 4)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then19
  %13 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or24 = or i32 %13, 16
  store i32 %or24, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then19
  %14 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %tobool26 = icmp ne i32 %14, 0
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end25
  %15 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or28 = or i32 %15, 128
  store i32 %or28, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  store i32 1, i32* %keep, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then15
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %17 = load i32, i32* %keep, align 4
  %18 = load i8*, i8** %chunk_type.addr, align 8
  %call32 = call i32 bitcast (i32 (...)* @opng_set_keep_unknown_chunk to i32 (%struct.png_struct_def*, i32, i8*)*)(%struct.png_struct_def* noundef %16, i32 noundef %17, i8* noundef %18)
  br label %return

return:                                           ; preds = %if.end31, %if.then11, %if.then2, %if.then
  ret void
}

declare i32 @opng_is_image_chunk(...) #1

declare i32 @opng_set_keep_unknown_chunk(...) #1

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
