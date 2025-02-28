; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_create_dir.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/osys_create_dir.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @osys_create_dir(i8* noundef %dirname) #0 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %sbuf = alloca %struct.stat, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  %0 = load i8*, i8** %dirname.addr, align 8
  %call = call i64 @strlen(i8* noundef %0)
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %dirname.addr, align 8
  %call1 = call i32 @"\01_stat"(i8* noundef %2, %struct.stat* noundef %sbuf)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 1
  %3 = load i16, i16* %st_mode, align 4
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 16384
  %tobool = icmp ne i32 %and, 0
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 0, i32 -1
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load i8*, i8** %dirname.addr, align 8
  %call5 = call i32 @mkdir(i8* noundef %5, i16 noundef zeroext 511)
  store i32 %call5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare i64 @strlen(i8* noundef) #1

declare i32 @"\01_stat"(i8* noundef, %struct.stat* noundef) #1

declare i32 @mkdir(i8* noundef, i16 noundef zeroext) #1

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
