; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_store_image_info.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_store_image_info.i"
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
@usr_panic = global void (i8*)* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"No info in image\00", align 1
@write_ptr = global %struct.png_struct_def* null, align 8
@write_info_ptr = global %struct.png_info_def* null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_store_image_info(%struct.png_struct_def* noundef %png_ptr, %struct.png_info_def* noundef %info_ptr, i32 noundef %store_meta) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %info_ptr.addr = alloca %struct.png_info_def*, align 8
  %store_meta.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store %struct.png_info_def* %info_ptr, %struct.png_info_def** %info_ptr.addr, align 8
  store i32 %store_meta, i32* %store_meta.addr, align 4
  %0 = load i8**, i8*** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 7), align 8
  %cmp = icmp ne i8** %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %1(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %3 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 0), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 1), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 2), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 3), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 6), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 4), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 5), align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %2, %struct.png_info_def* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10)
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %12 = load %struct.png_info_def*, %struct.png_info_def** @write_info_ptr, align 8
  %13 = load i8**, i8*** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 7), align 8
  call void @png_set_rows(%struct.png_struct_def* noundef %11, %struct.png_info_def* noundef %12, i8** noundef %13)
  %14 = load %struct.png_color_struct*, %struct.png_color_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 8), align 8
  %cmp1 = icmp ne %struct.png_color_struct* %14, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %16 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %17 = load %struct.png_color_struct*, %struct.png_color_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 8), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 9), align 8
  call void @png_set_PLTE(%struct.png_struct_def* noundef %15, %struct.png_info_def* noundef %16, %struct.png_color_struct* noundef %17, i32 noundef %18)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %19 = load i8*, i8** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 15), align 8
  %cmp4 = icmp ne i8* %19, null
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %20 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17), align 8
  %cmp5 = icmp ne %struct.png_color_16_struct* %20, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %22 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %23 = load i8*, i8** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 15), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 16), align 8
  %25 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17), align 8
  call void @png_set_tRNS(%struct.png_struct_def* noundef %21, %struct.png_info_def* noundef %22, i8* noundef %23, i32 noundef %24, %struct.png_color_16_struct* noundef %25)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %lor.lhs.false
  %26 = load i32, i32* %store_meta.addr, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end7
  br label %if.end22

if.end9:                                          ; preds = %if.end7
  %27 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 10), align 8
  %cmp10 = icmp ne %struct.png_color_16_struct* %27, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %29 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %30 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 10), align 8
  call void @png_set_bKGD(%struct.png_struct_def* noundef %28, %struct.png_info_def* noundef %29, %struct.png_color_16_struct* noundef %30)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  %31 = load i16*, i16** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 12), align 8
  %cmp13 = icmp ne i16* %31, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %33 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %34 = load i16*, i16** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 12), align 8
  call void @png_set_hIST(%struct.png_struct_def* noundef %32, %struct.png_info_def* noundef %33, i16* noundef %34)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  %35 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 13), align 8
  %cmp16 = icmp ne %struct.png_color_8_struct* %35, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %37 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %38 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 13), align 8
  call void @png_set_sBIT(%struct.png_struct_def* noundef %36, %struct.png_info_def* noundef %37, %struct.png_color_8_struct* noundef %38)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  %39 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 20), align 8
  %cmp19 = icmp ne i32 %39, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %41 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %42 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 19), align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 20), align 8
  call void @png_set_unknown_chunks(%struct.png_struct_def* noundef %40, %struct.png_info_def* noundef %41, %struct.png_unknown_chunk_t* noundef %42, i32 noundef %43)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then20
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 20), align 8
  %cmp21 = icmp slt i32 %44, %45
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %47 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %48 = load i32, i32* %i, align 4
  %49 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 19), align 8
  %50 = load i32, i32* %i, align 4
  %idxprom = sext i32 %50 to i64
  %arrayidx = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %49, i64 %idxprom
  %location = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %arrayidx, i32 0, i32 3
  %51 = load i8, i8* %location, align 8
  %conv = zext i8 %51 to i32
  call void @png_set_unknown_chunk_location(%struct.png_struct_def* noundef %46, %struct.png_info_def* noundef %47, i32 noundef %48, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %if.end22

if.end22:                                         ; preds = %if.then8, %for.end, %if.end18
  ret void
}

declare void @png_set_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @png_set_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8** noundef) #1

declare void @png_set_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_struct* noundef, i32 noundef) #1

declare void @png_set_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8* noundef, i32 noundef, %struct.png_color_16_struct* noundef) #1

declare void @png_set_bKGD(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_16_struct* noundef) #1

declare void @png_set_hIST(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i16* noundef) #1

declare void @png_set_sBIT(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_8_struct* noundef) #1

declare void @png_set_unknown_chunks(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_unknown_chunk_t* noundef, i32 noundef) #1

declare void @png_set_unknown_chunk_location(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) #1

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
