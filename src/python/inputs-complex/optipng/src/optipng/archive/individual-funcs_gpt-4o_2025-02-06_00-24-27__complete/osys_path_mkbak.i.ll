; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_path_mkbak.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_path_mkbak.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@__const.osys_path_mkbak.bak_extname = private unnamed_addr constant [5 x i8] c".bak\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @osys_path_mkbak(i8* noundef %buffer, i64 noundef %bufsize, i8* noundef %path) #0 {
entry:
  %retval = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %path.addr = alloca i8*, align 8
  %bak_extname = alloca [5 x i8], align 1
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = bitcast [5 x i8]* %bak_extname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.osys_path_mkbak.bak_extname, i32 0, i32 0), i64 5, i1 false)
  %1 = load i8*, i8** %path.addr, align 8
  %call = call i64 @strlen(i8* noundef %1)
  %add = add i64 %call, 5
  %2 = load i64, i64* %bufsize.addr, align 8
  %cmp = icmp ugt i64 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %buffer.addr, align 8
  %4 = load i8*, i8** %path.addr, align 8
  %5 = load i8*, i8** %buffer.addr, align 8
  %6 = call i64 @llvm.objectsize.i64.p0i8(i8* %5, i1 false, i1 true, i1 false)
  %call1 = call i8* @__strcpy_chk(i8* noundef %3, i8* noundef %4, i64 noundef %6) #5
  %7 = load i8*, i8** %buffer.addr, align 8
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %bak_extname, i64 0, i64 0
  %8 = load i8*, i8** %buffer.addr, align 8
  %9 = call i64 @llvm.objectsize.i64.p0i8(i8* %8, i1 false, i1 true, i1 false)
  %call2 = call i8* @__strcat_chk(i8* noundef %7, i8* noundef %arraydecay, i64 noundef %9) #5
  %10 = load i8*, i8** %buffer.addr, align 8
  store i8* %10, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8*, i8** %retval, align 8
  ret i8* %11
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind
declare i8* @__strcat_chk(i8* noundef, i8* noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
