; ModuleID = 'inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_header_init_df.i.bc'
source_filename = "inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_header_init_df.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._bmp_header = type { i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bmp_header_init_df(%struct._bmp_header* noundef %header, i32 noundef %width, i32 noundef %height) #0 {
entry:
  %header.addr = alloca %struct._bmp_header*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._bmp_header* %header, %struct._bmp_header** %header.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 3, %conv
  %1 = load i32, i32* %width.addr, align 4
  %rem = srem i32 %1, 4
  %conv1 = sext i32 %rem to i64
  %add = add i64 %mul, %conv1
  %2 = load i32, i32* %height.addr, align 4
  %call = call i32 @abs(i32 noundef %2) #2
  %conv2 = sext i32 %call to i64
  %mul3 = mul i64 %add, %conv2
  %conv4 = trunc i64 %mul3 to i32
  %3 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %bfSize = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %3, i32 0, i32 0
  store i32 %conv4, i32* %bfSize, align 4
  %4 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %bfReserved = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %4, i32 0, i32 1
  store i32 0, i32* %bfReserved, align 4
  %5 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %bfOffBits = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %5, i32 0, i32 2
  store i32 54, i32* %bfOffBits, align 4
  %6 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %biSize = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %6, i32 0, i32 3
  store i32 40, i32* %biSize, align 4
  %7 = load i32, i32* %width.addr, align 4
  %8 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %biWidth = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %8, i32 0, i32 4
  store i32 %7, i32* %biWidth, align 4
  %9 = load i32, i32* %height.addr, align 4
  %10 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %biHeight = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %10, i32 0, i32 5
  store i32 %9, i32* %biHeight, align 4
  %11 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %biPlanes = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %11, i32 0, i32 6
  store i16 1, i16* %biPlanes, align 4
  %12 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %biBitCount = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %12, i32 0, i32 7
  store i16 24, i16* %biBitCount, align 2
  %13 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %biCompression = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %13, i32 0, i32 8
  store i32 0, i32* %biCompression, align 4
  %14 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %biSizeImage = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %14, i32 0, i32 9
  store i32 0, i32* %biSizeImage, align 4
  %15 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %biXPelsPerMeter = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %15, i32 0, i32 10
  store i32 0, i32* %biXPelsPerMeter, align 4
  %16 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %biYPelsPerMeter = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %16, i32 0, i32 11
  store i32 0, i32* %biYPelsPerMeter, align 4
  %17 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %biClrUsed = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %17, i32 0, i32 12
  store i32 0, i32* %biClrUsed, align 4
  %18 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %biClrImportant = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %18, i32 0, i32 13
  store i32 0, i32* %biClrImportant, align 4
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind readnone willreturn }

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
