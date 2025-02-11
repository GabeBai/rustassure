; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zstr.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zstr.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_temp_allocation = external global i8*, align 8
@libzahl_tmp_str_num = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_rem = external global [1 x %struct.zahl], align 8
@libzahl_const_1e19 = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @zstr(%struct.zahl* noundef %a, i8* noundef %b, i64 noundef %n) #0 {
entry:
  %retval = alloca i8*, align 8
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %buf = alloca [20 x i8], align 1
  %len = alloca i64, align 8
  %neg = alloca i64, align 8
  %last = alloca i64, align 8
  %tot = alloca i64, align 8
  %overridden = alloca i8, align 1
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %tot, align 8
  store i8 0, i8* %overridden, align 1
  %0 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end25

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %b.addr, align 8
  %tobool3 = icmp ne i8* %1, null
  %lnot4 = xor i1 %tobool3, true
  %lnot6 = xor i1 %lnot4, true
  %lnot8 = xor i1 %lnot6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %tobool11 = icmp ne i64 %conv10, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call12 = call i8* @malloc(i64 noundef 2) #5
  store i8* %call12, i8** %b.addr, align 8
  %tobool13 = icmp ne i8* %call12, null
  %lnot14 = xor i1 %tobool13, true
  %lnot16 = xor i1 %lnot14, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end

if.then22:                                        ; preds = %land.lhs.true
  %call23 = call i32 bitcast (i32 (...)* @libzahl_memfailure to i32 ()*)()
  br label %if.end

if.end:                                           ; preds = %if.then22, %land.lhs.true, %if.then
  %2 = load i8*, i8** %b.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  store i8 48, i8* %arrayidx, align 1
  %3 = load i8*, i8** %b.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 0, i8* %arrayidx24, align 1
  %4 = load i8*, i8** %b.addr, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

if.end25:                                         ; preds = %entry
  %5 = load i64, i64* %n.addr, align 8
  %tobool26 = icmp ne i64 %5, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end25
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %6, i32 0, i32 2
  %7 = load i64, i64* %used, align 8
  %mul = mul i64 20, %7
  store i64 %mul, i64* %n.addr, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25
  %8 = load i8*, i8** %b.addr, align 8
  %tobool29 = icmp ne i8* %8, null
  %lnot30 = xor i1 %tobool29, true
  %lnot32 = xor i1 %lnot30, true
  %lnot34 = xor i1 %lnot32, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %conv36 = sext i32 %lnot.ext35 to i64
  %tobool37 = icmp ne i64 %conv36, 0
  br i1 %tobool37, label %land.lhs.true38, label %if.end51

land.lhs.true38:                                  ; preds = %if.end28
  %9 = load i64, i64* %n.addr, align 8
  %add = add i64 %9, 1
  %call39 = call i8* @malloc(i64 noundef %add) #5
  store i8* %call39, i8** @libzahl_temp_allocation, align 8
  store i8* %call39, i8** %b.addr, align 8
  %tobool40 = icmp ne i8* %call39, null
  %lnot41 = xor i1 %tobool40, true
  %lnot43 = xor i1 %lnot41, true
  %lnot45 = xor i1 %lnot43, true
  %lnot.ext46 = zext i1 %lnot45 to i32
  %conv47 = sext i32 %lnot.ext46 to i64
  %tobool48 = icmp ne i64 %conv47, 0
  br i1 %tobool48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %land.lhs.true38
  %call50 = call i32 bitcast (i32 (...)* @libzahl_memfailure to i32 ()*)()
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %land.lhs.true38, %if.end28
  %10 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call52 = call i32 @zsignum(%struct.zahl* noundef %10)
  %cmp = icmp slt i32 %call52, 0
  %conv53 = zext i1 %cmp to i32
  %conv54 = sext i32 %conv53 to i64
  store i64 %conv54, i64* %neg, align 8
  %11 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zabs(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef %11)
  %12 = load i8*, i8** %b.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 45, i8* %arrayidx55, align 1
  %13 = load i64, i64* %neg, align 8
  %14 = load i8*, i8** %b.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %13
  store i8* %add.ptr, i8** %b.addr, align 8
  %15 = load i64, i64* %neg, align 8
  %16 = load i64, i64* %n.addr, align 8
  %sub = sub i64 %16, %15
  store i64 %sub, i64* %n.addr, align 8
  %17 = load i64, i64* %n.addr, align 8
  store i64 %17, i64* %last, align 8
  %cmp56 = icmp ugt i64 %17, 19
  br i1 %cmp56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end51
  %18 = load i64, i64* %n.addr, align 8
  %sub58 = sub i64 %18, 19
  br label %cond.end

cond.false:                                       ; preds = %if.end51
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub58, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %n.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end107, %cond.end
  call void @zdivmod(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0))
  %call59 = call i32 @zzero(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0))
  %tobool60 = icmp ne i32 %call59, 0
  %lnot61 = xor i1 %tobool60, true
  %lnot63 = xor i1 %lnot61, true
  %lnot65 = xor i1 %lnot63, true
  %lnot.ext66 = zext i1 %lnot65 to i32
  %conv67 = sext i32 %lnot.ext66 to i64
  %tobool68 = icmp ne i64 %conv67, 0
  br i1 %tobool68, label %if.then69, label %if.else

if.then69:                                        ; preds = %for.cond
  %19 = load i8*, i8** %b.addr, align 8
  %20 = load i64, i64* %n.addr, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %19, i64 %20
  %call71 = call i32 @zzero(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0))
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %cond.true73, label %cond.false74

cond.true73:                                      ; preds = %if.then69
  br label %cond.end76

cond.false74:                                     ; preds = %if.then69
  %21 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0, i32 4), align 8
  %arrayidx75 = getelementptr inbounds i64, i64* %21, i64 0
  %22 = load i64, i64* %arrayidx75, align 8
  br label %cond.end76

cond.end76:                                       ; preds = %cond.false74, %cond.true73
  %cond77 = phi i64 [ 0, %cond.true73 ], [ %22, %cond.false74 ]
  %call78 = call i32 bitcast (i32 (...)* @sprintint_fix to i32 (i8*, i64)*)(i8* noundef %add.ptr70, i64 noundef %cond77)
  %23 = load i8, i8* %overridden, align 1
  %24 = load i8*, i8** %b.addr, align 8
  %25 = load i64, i64* %n.addr, align 8
  %add79 = add i64 %25, 19
  %arrayidx80 = getelementptr inbounds i8, i8* %24, i64 %add79
  store i8 %23, i8* %arrayidx80, align 1
  %26 = load i8*, i8** %b.addr, align 8
  %27 = load i64, i64* %n.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %26, i64 %27
  %28 = load i8, i8* %arrayidx81, align 1
  store i8 %28, i8* %overridden, align 1
  %29 = load i64, i64* %n.addr, align 8
  store i64 %29, i64* %last, align 8
  %cmp82 = icmp ugt i64 %29, 19
  br i1 %cmp82, label %cond.true84, label %cond.false86

cond.true84:                                      ; preds = %cond.end76
  %30 = load i64, i64* %n.addr, align 8
  %sub85 = sub i64 %30, 19
  br label %cond.end87

cond.false86:                                     ; preds = %cond.end76
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false86, %cond.true84
  %cond88 = phi i64 [ %sub85, %cond.true84 ], [ 0, %cond.false86 ]
  store i64 %cond88, i64* %n.addr, align 8
  %31 = load i64, i64* %tot, align 8
  %add89 = add i64 %31, 19
  store i64 %add89, i64* %tot, align 8
  br label %if.end107

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  %32 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0, i32 4), align 8
  %arrayidx90 = getelementptr inbounds i64, i64* %32, i64 0
  %33 = load i64, i64* %arrayidx90, align 8
  %call91 = call i32 bitcast (i32 (...)* @sprintint_min to i32 (i8*, i64)*)(i8* noundef %arraydecay, i64 noundef %33)
  %conv92 = sext i32 %call91 to i64
  store i64 %conv92, i64* %len, align 8
  %34 = load i64, i64* %tot, align 8
  %tobool93 = icmp ne i64 %34, 0
  br i1 %tobool93, label %if.then94, label %if.else102

if.then94:                                        ; preds = %if.else
  %35 = load i8*, i8** %b.addr, align 8
  %arraydecay95 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  %36 = load i64, i64* %len, align 8
  %37 = load i8*, i8** %b.addr, align 8
  %38 = call i64 @llvm.objectsize.i64.p0i8(i8* %37, i1 false, i1 true, i1 false)
  %call96 = call i8* @__memcpy_chk(i8* noundef %35, i8* noundef %arraydecay95, i64 noundef %36, i64 noundef %38) #6
  %39 = load i8*, i8** %b.addr, align 8
  %40 = load i64, i64* %len, align 8
  %add.ptr97 = getelementptr inbounds i8, i8* %39, i64 %40
  %41 = load i8*, i8** %b.addr, align 8
  %42 = load i64, i64* %last, align 8
  %add.ptr98 = getelementptr inbounds i8, i8* %41, i64 %42
  %43 = load i64, i64* %tot, align 8
  %add99 = add i64 %43, 1
  %44 = load i8*, i8** %b.addr, align 8
  %45 = load i64, i64* %len, align 8
  %add.ptr100 = getelementptr inbounds i8, i8* %44, i64 %45
  %46 = call i64 @llvm.objectsize.i64.p0i8(i8* %add.ptr100, i1 false, i1 true, i1 false)
  %call101 = call i8* @__memmove_chk(i8* noundef %add.ptr97, i8* noundef %add.ptr98, i64 noundef %add99, i64 noundef %46) #6
  br label %if.end106

if.else102:                                       ; preds = %if.else
  %47 = load i8*, i8** %b.addr, align 8
  %arraydecay103 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  %48 = load i64, i64* %len, align 8
  %add104 = add i64 %48, 1
  %49 = load i8*, i8** %b.addr, align 8
  %50 = call i64 @llvm.objectsize.i64.p0i8(i8* %49, i1 false, i1 true, i1 false)
  %call105 = call i8* @__memcpy_chk(i8* noundef %47, i8* noundef %arraydecay103, i64 noundef %add104, i64 noundef %50) #6
  br label %if.end106

if.end106:                                        ; preds = %if.else102, %if.then94
  br label %for.end

if.end107:                                        ; preds = %cond.end87
  br label %for.cond

for.end:                                          ; preds = %if.end106
  store i8* null, i8** @libzahl_temp_allocation, align 8
  %51 = load i8*, i8** %b.addr, align 8
  %52 = load i64, i64* %neg, align 8
  %idx.neg = sub i64 0, %52
  %add.ptr108 = getelementptr inbounds i8, i8* %51, i64 %idx.neg
  store i8* %add.ptr108, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.end
  %53 = load i8*, i8** %retval, align 8
  ret i8* %53
}

declare i32 @zzero(%struct.zahl* noundef) #1

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #2

declare i32 @libzahl_memfailure(...) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zdivmod(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @sprintint_fix(...) #1

declare i32 @sprintint_min(...) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind
declare i8* @__memmove_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

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
