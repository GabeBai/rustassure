; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8strncpy.i.bc'
source_filename = "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/u8strncpy.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @u8strncpy(i8* noundef %dest, i8* noundef %src, i64 noundef %n) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %sub = sub i64 %0, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %k, align 4
  %1 = load i64, i64* %n.addr, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.then, label %if.end52

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %dest.addr, align 8
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %4 = load i8*, i8** %dest.addr, align 8
  %5 = load i8*, i8** %src.addr, align 8
  %6 = load i64, i64* %n.addr, align 8
  %7 = load i8*, i8** %dest.addr, align 8
  %8 = call i64 @llvm.objectsize.i64.p0i8(i8* %7, i1 false, i1 true, i1 false)
  %call = call i8* @__strncpy_chk(i8* noundef %4, i8* noundef %5, i64 noundef %6, i64 noundef %8) #3
  %9 = load i8*, i8** %dest.addr, align 8
  %10 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %9, i64 %idxprom1
  %11 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %11 to i32
  %and = and i32 %conv3, 128
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then5, label %if.end51

if.then5:                                         ; preds = %if.then
  %12 = load i32, i32* %k, align 4
  store i32 %12, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %13 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %14 = load i32, i32* %k, align 4
  %15 = load i32, i32* %i, align 4
  %sub7 = sub nsw i32 %14, %15
  %cmp8 = icmp slt i32 %sub7, 3
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %16 = load i8*, i8** %dest.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 %idxprom10
  %18 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %18 to i32
  %and13 = and i32 %conv12, 192
  %cmp14 = icmp eq i32 %and13, 128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %19 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp14, %land.rhs ]
  br i1 %19, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %land.end
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* %i, align 4
  %sub16 = sub nsw i32 %21, %22
  switch i32 %sub16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb29
    i32 3, label %sw.bb40
  ]

sw.bb:                                            ; preds = %for.end
  %23 = load i8*, i8** %dest.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %23, i64 %idxprom17
  store i8 0, i8* %arrayidx18, align 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.end
  %25 = load i8*, i8** %dest.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %25, i64 %idxprom20
  %27 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %27 to i32
  %and23 = and i32 %conv22, 224
  %cmp24 = icmp ne i32 %and23, 192
  br i1 %cmp24, label %if.then26, label %if.end

if.then26:                                        ; preds = %sw.bb19
  %28 = load i8*, i8** %dest.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds i8, i8* %28, i64 %idxprom27
  store i8 0, i8* %arrayidx28, align 1
  br label %if.end

if.end:                                           ; preds = %if.then26, %sw.bb19
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.end
  %30 = load i8*, i8** %dest.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %30, i64 %idxprom30
  %32 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %32 to i32
  %and33 = and i32 %conv32, 240
  %cmp34 = icmp ne i32 %and33, 224
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %sw.bb29
  %33 = load i8*, i8** %dest.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %34 to i64
  %arrayidx38 = getelementptr inbounds i8, i8* %33, i64 %idxprom37
  store i8 0, i8* %arrayidx38, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %sw.bb29
  br label %sw.epilog

sw.bb40:                                          ; preds = %for.end
  %35 = load i8*, i8** %dest.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %36 to i64
  %arrayidx42 = getelementptr inbounds i8, i8* %35, i64 %idxprom41
  %37 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %37 to i32
  %and44 = and i32 %conv43, 248
  %cmp45 = icmp ne i32 %and44, 240
  br i1 %cmp45, label %if.then47, label %if.end50

if.then47:                                        ; preds = %sw.bb40
  %38 = load i8*, i8** %dest.addr, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %39 to i64
  %arrayidx49 = getelementptr inbounds i8, i8* %38, i64 %idxprom48
  store i8 0, i8* %arrayidx49, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %sw.bb40
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %if.end50, %if.end39, %if.end, %sw.bb
  br label %if.end51

if.end51:                                         ; preds = %sw.epilog, %if.then
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %entry
  %40 = load i8*, i8** %dest.addr, align 8
  ret i8* %40
}

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
