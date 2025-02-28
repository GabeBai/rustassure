; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_load_image_info.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_load_image_info.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_image_struct = type { i32, i32, i32, i32, i32, i32, i32, i8**, %struct.png_color_struct*, i32, %struct.png_color_16_struct*, %struct.png_color_16_struct, i16*, %struct.png_color_8_struct*, %struct.png_color_8_struct, i8*, i32, %struct.png_color_16_struct*, %struct.png_color_16_struct, %struct.png_unknown_chunk_t*, i32 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }
%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque

@image = global %struct.opng_image_struct zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_load_image_info(%struct.png_struct_def* noundef %png_ptr, %struct.png_info_def* noundef %info_ptr, i32 noundef %load_meta) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %info_ptr.addr = alloca %struct.png_info_def*, align 8
  %load_meta.addr = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store %struct.png_info_def* %info_ptr, %struct.png_info_def** %info_ptr.addr, align 8
  store i32 %load_meta, i32* %load_meta.addr, align 4
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.opng_image_struct* @image to i8*), i8 0, i64 160, i1 false)
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %1 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %call = call i32 @png_get_IHDR(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 0), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 1), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 2), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 3), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 6), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 4), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 5))
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %3 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %call1 = call i8** @png_get_rows(%struct.png_struct_def* noundef %2, %struct.png_info_def* noundef %3)
  store i8** %call1, i8*** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 7), align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %5 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %call2 = call i32 @png_get_PLTE(%struct.png_struct_def* noundef %4, %struct.png_info_def* noundef %5, %struct.png_color_struct** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 8), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 9))
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %7 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %call3 = call i32 @png_get_tRNS(%struct.png_struct_def* noundef %6, %struct.png_info_def* noundef %7, i8** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 15), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 16), %struct.png_color_16_struct** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17))
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %8 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17), align 8
  %cmp = icmp ne %struct.png_color_16_struct* %8, null
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %9 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17), align 8
  %10 = bitcast %struct.png_color_16_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 18, i32 0), i8* align 2 %10, i64 10, i1 false)
  store %struct.png_color_16_struct* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 18), %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17), align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %11 = load i32, i32* %load_meta.addr, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  br label %return

if.end8:                                          ; preds = %if.end5
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %13 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %call9 = call i32 @png_get_bKGD(%struct.png_struct_def* noundef %12, %struct.png_info_def* noundef %13, %struct.png_color_16_struct** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 10))
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %14 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 10), align 8
  %15 = bitcast %struct.png_color_16_struct* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 11, i32 0), i8* align 2 %15, i64 10, i1 false)
  store %struct.png_color_16_struct* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 11), %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 10), align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %17 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %call13 = call i32 @png_get_hIST(%struct.png_struct_def* noundef %16, %struct.png_info_def* noundef %17, i16** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 12))
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %19 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %call14 = call i32 @png_get_sBIT(%struct.png_struct_def* noundef %18, %struct.png_info_def* noundef %19, %struct.png_color_8_struct** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 13))
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  %20 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 13), align 8
  %21 = bitcast %struct.png_color_8_struct* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 14, i32 0), i8* align 1 %21, i64 5, i1 false)
  store %struct.png_color_8_struct* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 14), %struct.png_color_8_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 13), align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %23 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %call18 = call i32 @png_get_unknown_chunks(%struct.png_struct_def* noundef %22, %struct.png_info_def* noundef %23, %struct.png_unknown_chunk_t** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 19))
  store i32 %call18, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 20), align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @png_get_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef) #2

declare i8** @png_get_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #2

declare i32 @png_get_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_struct** noundef, i32* noundef) #2

declare i32 @png_get_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8** noundef, i32* noundef, %struct.png_color_16_struct** noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @png_get_bKGD(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_16_struct** noundef) #2

declare i32 @png_get_hIST(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i16** noundef) #2

declare i32 @png_get_sBIT(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_8_struct** noundef) #2

declare i32 @png_get_unknown_chunks(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_unknown_chunk_t** noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nofree nounwind willreturn }

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
