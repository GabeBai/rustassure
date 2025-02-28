; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_destroy_image_info.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_destroy_image_info.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_image_struct = type { i32, i32, i32, i32, i32, i32, i32, i8**, %struct.png_color_struct*, i32, %struct.png_color_16_struct*, %struct.png_color_16_struct, i16*, %struct.png_color_8_struct*, %struct.png_color_8_struct, i8*, i32, %struct.png_color_16_struct*, %struct.png_color_16_struct, %struct.png_unknown_chunk_t*, i32 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }

@image = global %struct.opng_image_struct zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_destroy_image_info() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load i8**, i8*** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 7), align 8
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 1), align 4
  %cmp1 = icmp ult i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 7), align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call i32 bitcast (i32 (...)* @opng_free to i32 (i8*)*)(i8* noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %7 = load i8**, i8*** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 7), align 8
  %call2 = call i32 bitcast (i32 (...)* @opng_free to i32 (i8**)*)(i8** noundef %7)
  %8 = load %struct.png_color_struct*, %struct.png_color_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 8), align 8
  %call3 = call i32 bitcast (i32 (...)* @opng_free to i32 (%struct.png_color_struct*)*)(%struct.png_color_struct* noundef %8)
  %9 = load i8*, i8** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 15), align 8
  %call4 = call i32 bitcast (i32 (...)* @opng_free to i32 (i8*)*)(i8* noundef %9)
  %10 = load i16*, i16** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 12), align 8
  %call5 = call i32 bitcast (i32 (...)* @opng_free to i32 (i16*)*)(i16* noundef %10)
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.end
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 20), align 8
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond6
  %13 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 19), align 8
  %14 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %13, i64 %idxprom9
  %data = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %arrayidx10, i32 0, i32 1
  %15 = load i8*, i8** %data, align 8
  %call11 = call i32 bitcast (i32 (...)* @opng_free to i32 (i8*)*)(i8* noundef %15)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %16 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond6, !llvm.loop !12

for.end14:                                        ; preds = %for.cond6
  %17 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 19), align 8
  %call15 = call i32 bitcast (i32 (...)* @opng_free to i32 (%struct.png_unknown_chunk_t*)*)(%struct.png_unknown_chunk_t* noundef %17)
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.opng_image_struct* @image to i8*), i8 0, i64 160, i1 false)
  br label %return

return:                                           ; preds = %for.end14, %if.then
  ret void
}

declare i32 @opng_free(...) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

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
!12 = distinct !{!12, !11}
