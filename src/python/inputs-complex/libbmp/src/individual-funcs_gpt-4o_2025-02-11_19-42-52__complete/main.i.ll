; ModuleID = 'inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/main.i.bc'
source_filename = "inputs-complex/libbmp/src/individual-funcs_gpt-4o_2025-02-11_19-42-52/main.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._bmp_img = type { %struct._bmp_header, %struct._bmp_pixel** }
%struct._bmp_header = type { i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct._bmp_pixel = type { i8, i8, i8 }

@.str = private unnamed_addr constant [9 x i8] c"test.bmp\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %img = alloca %struct._bmp_img, align 8
  %y = alloca i64, align 8
  %x = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @bmp_img_init_df(%struct._bmp_img* noundef %img, i32 noundef 512, i32 noundef 512)
  store i64 0, i64* %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i64, i64* %y, align 8
  %cmp = icmp ult i64 %0, 512
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %x, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i64, i64* %x, align 8
  %cmp2 = icmp ult i64 %1, 512
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i64, i64* %y, align 8
  %rem = urem i64 %2, 128
  %cmp4 = icmp ult i64 %rem, 64
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body3
  %3 = load i64, i64* %x, align 8
  %rem5 = urem i64 %3, 128
  %cmp6 = icmp ult i64 %rem5, 64
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body3
  %4 = load i64, i64* %y, align 8
  %rem7 = urem i64 %4, 128
  %cmp8 = icmp uge i64 %rem7, 64
  br i1 %cmp8, label %land.lhs.true9, label %if.else

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %5 = load i64, i64* %x, align 8
  %rem10 = urem i64 %5, 128
  %cmp11 = icmp uge i64 %rem10, 64
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true9, %land.lhs.true
  %img_pixels = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i32 0, i32 1
  %6 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels, align 8
  %7 = load i64, i64* %y, align 8
  %arrayidx = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %6, i64 %7
  %8 = load %struct._bmp_pixel*, %struct._bmp_pixel** %arrayidx, align 8
  %9 = load i64, i64* %x, align 8
  %arrayidx12 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %8, i64 %9
  call void @bmp_pixel_init(%struct._bmp_pixel* noundef %arrayidx12, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -6)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true9, %lor.lhs.false
  %img_pixels13 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i32 0, i32 1
  %10 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels13, align 8
  %11 = load i64, i64* %y, align 8
  %arrayidx14 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %10, i64 %11
  %12 = load %struct._bmp_pixel*, %struct._bmp_pixel** %arrayidx14, align 8
  %13 = load i64, i64* %x, align 8
  %arrayidx15 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %12, i64 %13
  call void @bmp_pixel_init(%struct._bmp_pixel* noundef %arrayidx15, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i64, i64* %x, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %x, align 8
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %15 = load i64, i64* %y, align 8
  %inc17 = add i64 %15, 1
  store i64 %inc17, i64* %y, align 8
  br label %for.cond, !llvm.loop !12

for.end18:                                        ; preds = %for.cond
  %call = call i32 @bmp_img_write(%struct._bmp_img* noundef %img, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  call void @bmp_img_free(%struct._bmp_img* noundef %img)
  ret i32 0
}

declare void @bmp_img_init_df(%struct._bmp_img* noundef, i32 noundef, i32 noundef) #1

declare void @bmp_pixel_init(%struct._bmp_pixel* noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #1

declare i32 @bmp_img_write(%struct._bmp_img* noundef, i8* noundef) #1

declare void @bmp_img_free(%struct._bmp_img* noundef) #1

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
!12 = distinct !{!12, !11}
