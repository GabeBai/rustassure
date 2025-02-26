; ModuleID = 'inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_img_alloc.i.bc'
source_filename = "inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_img_alloc.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._bmp_img = type { %struct._bmp_header, %struct._bmp_pixel** }
%struct._bmp_header = type { i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct._bmp_pixel = type { i8, i8, i8 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bmp_img_alloc(%struct._bmp_img* noundef %img) #0 {
entry:
  %img.addr = alloca %struct._bmp_img*, align 8
  %h = alloca i64, align 8
  %y = alloca i64, align 8
  store %struct._bmp_img* %img, %struct._bmp_img** %img.addr, align 8
  %0 = load %struct._bmp_img*, %struct._bmp_img** %img.addr, align 8
  %img_header = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %0, i32 0, i32 0
  %biHeight = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %img_header, i32 0, i32 5
  %1 = load i32, i32* %biHeight, align 4
  %call = call i32 @abs(i32 noundef %1) #3
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %h, align 8
  %2 = load i64, i64* %h, align 8
  %mul = mul i64 8, %2
  %call1 = call i8* @malloc(i64 noundef %mul) #4
  %3 = bitcast i8* %call1 to %struct._bmp_pixel**
  %4 = load %struct._bmp_img*, %struct._bmp_img** %img.addr, align 8
  %img_pixels = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %4, i32 0, i32 1
  store %struct._bmp_pixel** %3, %struct._bmp_pixel*** %img_pixels, align 8
  store i64 0, i64* %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %y, align 8
  %6 = load i64, i64* %h, align 8
  %cmp = icmp ult i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._bmp_img*, %struct._bmp_img** %img.addr, align 8
  %img_header3 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %7, i32 0, i32 0
  %biWidth = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %img_header3, i32 0, i32 4
  %8 = load i32, i32* %biWidth, align 8
  %conv4 = sext i32 %8 to i64
  %mul5 = mul i64 3, %conv4
  %call6 = call i8* @malloc(i64 noundef %mul5) #4
  %9 = bitcast i8* %call6 to %struct._bmp_pixel*
  %10 = load %struct._bmp_img*, %struct._bmp_img** %img.addr, align 8
  %img_pixels7 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %10, i32 0, i32 1
  %11 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels7, align 8
  %12 = load i64, i64* %y, align 8
  %arrayidx = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %11, i64 %12
  store %struct._bmp_pixel* %9, %struct._bmp_pixel** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %y, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %y, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #1

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readnone willreturn }
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
