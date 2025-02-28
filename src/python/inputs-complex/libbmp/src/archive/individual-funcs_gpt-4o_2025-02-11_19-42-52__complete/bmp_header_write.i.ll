; ModuleID = 'inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_header_write.i.bc'
source_filename = "inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_header_write.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._bmp_header = type { i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @bmp_header_write(%struct._bmp_header* noundef %header, %struct.__sFILE* noundef %img_file) #0 {
entry:
  %retval = alloca i32, align 4
  %header.addr = alloca %struct._bmp_header*, align 8
  %img_file.addr = alloca %struct.__sFILE*, align 8
  %magic = alloca i16, align 2
  store %struct._bmp_header* %header, %struct._bmp_header** %header.addr, align 8
  store %struct.__sFILE* %img_file, %struct.__sFILE** %img_file.addr, align 8
  %0 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %cmp = icmp eq %struct._bmp_header* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -3, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** %img_file.addr, align 8
  %cmp1 = icmp eq %struct.__sFILE* %1, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  store i16 19778, i16* %magic, align 2
  %2 = bitcast i16* %magic to i8*
  %3 = load %struct.__sFILE*, %struct.__sFILE** %img_file.addr, align 8
  %call = call i64 @"\01_fwrite"(i8* noundef %2, i64 noundef 2, i64 noundef 1, %struct.__sFILE* noundef %3)
  %4 = load %struct._bmp_header*, %struct._bmp_header** %header.addr, align 8
  %5 = bitcast %struct._bmp_header* %4 to i8*
  %6 = load %struct.__sFILE*, %struct.__sFILE** %img_file.addr, align 8
  %call4 = call i64 @"\01_fwrite"(i8* noundef %5, i64 noundef 52, i64 noundef 1, %struct.__sFILE* noundef %6)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare i64 @"\01_fwrite"(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #1

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
