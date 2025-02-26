; ModuleID = 'inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_pixel_init.rs.bc'
source_filename = "bmp_pixel_init.60411e3a-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%BmpPixel = type { i8, i8, i8 }

; Function Attrs: uwtable
define void @bmp_pixel_init(%BmpPixel* align 1 %pxl, i8 %red, i8 %green, i8 %blue) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %BmpPixel, %BmpPixel* %pxl, i32 0, i32 2
  store i8 %red, i8* %0, align 1
  %1 = getelementptr inbounds %BmpPixel, %BmpPixel* %pxl, i32 0, i32 1
  store i8 %green, i8* %1, align 1
  %2 = bitcast %BmpPixel* %pxl to i8*
  store i8 %blue, i8* %2, align 1
  ret void
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_pixel_init.rs.bc", hash: (2494661898, 2005641548, 379771744, 3598224038, 417002633))
^1 = gv: (name: "bmp_pixel_init", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7))) ; guid = 12211446643652426442
^2 = blockcount: 1
