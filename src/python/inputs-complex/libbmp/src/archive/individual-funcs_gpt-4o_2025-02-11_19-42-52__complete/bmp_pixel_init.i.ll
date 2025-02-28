; ModuleID = 'inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_pixel_init.i.bc'
source_filename = "inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_pixel_init.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._bmp_pixel = type { i8, i8, i8 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bmp_pixel_init(%struct._bmp_pixel* noundef %pxl, i8 noundef zeroext %red, i8 noundef zeroext %green, i8 noundef zeroext %blue) #0 {
entry:
  %pxl.addr = alloca %struct._bmp_pixel*, align 8
  %red.addr = alloca i8, align 1
  %green.addr = alloca i8, align 1
  %blue.addr = alloca i8, align 1
  store %struct._bmp_pixel* %pxl, %struct._bmp_pixel** %pxl.addr, align 8
  store i8 %red, i8* %red.addr, align 1
  store i8 %green, i8* %green.addr, align 1
  store i8 %blue, i8* %blue.addr, align 1
  %0 = load i8, i8* %red.addr, align 1
  %1 = load %struct._bmp_pixel*, %struct._bmp_pixel** %pxl.addr, align 8
  %red1 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %1, i32 0, i32 2
  store i8 %0, i8* %red1, align 1
  %2 = load i8, i8* %green.addr, align 1
  %3 = load %struct._bmp_pixel*, %struct._bmp_pixel** %pxl.addr, align 8
  %green2 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %3, i32 0, i32 1
  store i8 %2, i8* %green2, align 1
  %4 = load i8, i8* %blue.addr, align 1
  %5 = load %struct._bmp_pixel*, %struct._bmp_pixel** %pxl.addr, align 8
  %blue3 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %5, i32 0, i32 0
  store i8 %4, i8* %blue3, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
