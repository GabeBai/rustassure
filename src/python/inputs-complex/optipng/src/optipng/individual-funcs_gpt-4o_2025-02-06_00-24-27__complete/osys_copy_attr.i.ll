; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_copy_attr.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_copy_attr.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @osys_copy_attr(i8* noundef %src_path, i8* noundef %dest_path) #0 {
entry:
  %retval = alloca i32, align 4
  %src_path.addr = alloca i8*, align 8
  %dest_path.addr = alloca i8*, align 8
  %sbuf = alloca %struct.stat, align 8
  %result = alloca i32, align 4
  %times = alloca [2 x %struct.timespec], align 8
  store i8* %src_path, i8** %src_path.addr, align 8
  store i8* %dest_path, i8** %dest_path.addr, align 8
  %0 = load i8*, i8** %src_path.addr, align 8
  %call = call i32 @"\01_stat"(i8* noundef %0, %struct.stat* noundef %sbuf)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %result, align 4
  %1 = load i8*, i8** %dest_path.addr, align 8
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 4
  %2 = load i32, i32* %st_uid, align 8
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 5
  %3 = load i32, i32* %st_gid, align 4
  %call1 = call i32 @chown(i8* noundef %1, i32 noundef %2, i32 noundef %3)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i8*, i8** %dest_path.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 1
  %5 = load i16, i16* %st_mode, align 4
  %call5 = call i32 @"\01_chmod"(i8* noundef %4, i16 noundef zeroext %5)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 -1, i32* %result, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %arrayidx = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %times, i64 0, i64 0
  %st_atimespec = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 7
  %6 = bitcast %struct.timespec* %arrayidx to i8*
  %7 = bitcast %struct.timespec* %st_atimespec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  %arrayidx9 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %times, i64 0, i64 1
  %st_mtimespec = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 8
  %8 = bitcast %struct.timespec* %arrayidx9 to i8*
  %9 = bitcast %struct.timespec* %st_mtimespec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load i8*, i8** %dest_path.addr, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %times, i64 0, i64 0
  %call10 = call i32 @utimensat(i32 noundef -2, i8* noundef %10, %struct.timespec* noundef %arraydecay, i32 noundef 0)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  store i32 -1, i32* %result, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8
  %11 = load i32, i32* %result, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare i32 @"\01_stat"(i8* noundef, %struct.stat* noundef) #1

declare i32 @chown(i8* noundef, i32 noundef, i32 noundef) #1

declare i32 @"\01_chmod"(i8* noundef, i16 noundef zeroext) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @utimensat(i32 noundef, i8* noundef, %struct.timespec* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
