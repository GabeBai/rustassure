; ModuleID = 'inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_img_write.i.bc'
source_filename = "inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/bmp_img_write.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._bmp_img = type { %struct._bmp_header, %struct._bmp_pixel** }
%struct._bmp_header = type { i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct._bmp_pixel = type { i8, i8, i8 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @bmp_img_write(%struct._bmp_img* noundef %img, i8* noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca %struct._bmp_img*, align 8
  %filename.addr = alloca i8*, align 8
  %img_file = alloca %struct.__sFILE*, align 8
  %err = alloca i32, align 4
  %h = alloca i64, align 8
  %offset = alloca i64, align 8
  %padding = alloca [3 x i8], align 1
  %y = alloca i64, align 8
  store %struct._bmp_img* %img, %struct._bmp_img** %img.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.__sFILE* @"\01_fopen"(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.__sFILE* %call, %struct.__sFILE** %img_file, align 8
  %1 = load %struct.__sFILE*, %struct.__sFILE** %img_file, align 8
  %cmp = icmp eq %struct.__sFILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._bmp_img*, %struct._bmp_img** %img.addr, align 8
  %img_header = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %2, i32 0, i32 0
  %3 = load %struct.__sFILE*, %struct.__sFILE** %img_file, align 8
  %call1 = call i32 @bmp_header_write(%struct._bmp_header* noundef %img_header, %struct.__sFILE* noundef %3)
  store i32 %call1, i32* %err, align 4
  %4 = load i32, i32* %err, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load %struct.__sFILE*, %struct.__sFILE** %img_file, align 8
  %call4 = call i32 @fclose(%struct.__sFILE* noundef %5)
  %6 = load i32, i32* %err, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load %struct._bmp_img*, %struct._bmp_img** %img.addr, align 8
  %img_header6 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %7, i32 0, i32 0
  %biHeight = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %img_header6, i32 0, i32 5
  %8 = load i32, i32* %biHeight, align 4
  %call7 = call i32 @abs(i32 noundef %8) #4
  %conv = sext i32 %call7 to i64
  store i64 %conv, i64* %h, align 8
  %9 = load %struct._bmp_img*, %struct._bmp_img** %img.addr, align 8
  %img_header8 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %9, i32 0, i32 0
  %biHeight9 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %img_header8, i32 0, i32 5
  %10 = load i32, i32* %biHeight9, align 4
  %cmp10 = icmp sgt i32 %10, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end5
  %11 = load i64, i64* %h, align 8
  %sub = sub i64 %11, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %offset, align 8
  %12 = bitcast [3 x i8]* %padding to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 3, i1 false)
  store i64 0, i64* %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load i64, i64* %y, align 8
  %14 = load i64, i64* %h, align 8
  %cmp12 = icmp ult i64 %13, %14
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._bmp_img*, %struct._bmp_img** %img.addr, align 8
  %img_pixels = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %15, i32 0, i32 1
  %16 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels, align 8
  %17 = load i64, i64* %offset, align 8
  %18 = load i64, i64* %y, align 8
  %sub14 = sub i64 %17, %18
  %conv15 = trunc i64 %sub14 to i32
  %call16 = call i32 @abs(i32 noundef %conv15) #4
  %idxprom = sext i32 %call16 to i64
  %arrayidx = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %16, i64 %idxprom
  %19 = load %struct._bmp_pixel*, %struct._bmp_pixel** %arrayidx, align 8
  %20 = bitcast %struct._bmp_pixel* %19 to i8*
  %21 = load %struct._bmp_img*, %struct._bmp_img** %img.addr, align 8
  %img_header17 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %21, i32 0, i32 0
  %biWidth = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %img_header17, i32 0, i32 4
  %22 = load i32, i32* %biWidth, align 8
  %conv18 = sext i32 %22 to i64
  %23 = load %struct.__sFILE*, %struct.__sFILE** %img_file, align 8
  %call19 = call i64 @"\01_fwrite"(i8* noundef %20, i64 noundef 3, i64 noundef %conv18, %struct.__sFILE* noundef %23)
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %padding, i64 0, i64 0
  %24 = load %struct._bmp_img*, %struct._bmp_img** %img.addr, align 8
  %img_header20 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %24, i32 0, i32 0
  %biWidth21 = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %img_header20, i32 0, i32 4
  %25 = load i32, i32* %biWidth21, align 8
  %rem = srem i32 %25, 4
  %conv22 = sext i32 %rem to i64
  %26 = load %struct.__sFILE*, %struct.__sFILE** %img_file, align 8
  %call23 = call i64 @"\01_fwrite"(i8* noundef %arraydecay, i64 noundef 1, i64 noundef %conv22, %struct.__sFILE* noundef %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i64, i64* %y, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %y, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %28 = load %struct.__sFILE*, %struct.__sFILE** %img_file, align 8
  %call24 = call i32 @fclose(%struct.__sFILE* noundef %28)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

declare %struct.__sFILE* @"\01_fopen"(i8* noundef, i8* noundef) #1

declare i32 @bmp_header_write(%struct._bmp_header* noundef, %struct.__sFILE* noundef) #1

declare i32 @fclose(%struct.__sFILE* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare i64 @"\01_fwrite"(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readnone willreturn }

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
