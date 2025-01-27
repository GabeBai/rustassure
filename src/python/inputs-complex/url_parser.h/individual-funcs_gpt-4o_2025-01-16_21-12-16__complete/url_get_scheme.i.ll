; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_get_scheme.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_get_scheme.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [8 x i8] c"%[^://]\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @url_get_scheme(i8* noundef %url) #0 {
entry:
  %retval = alloca i8*, align 8
  %url.addr = alloca i8*, align 8
  %protocol = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  %call = call i8* @malloc(i64 noundef 32) #3
  store i8* %call, i8** %protocol, align 8
  %0 = load i8*, i8** %protocol, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %url.addr, align 8
  %2 = load i8*, i8** %protocol, align 8
  %call1 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef %2)
  %3 = load i8*, i8** %protocol, align 8
  %call2 = call zeroext i1 @url_is_protocol(i8* noundef %3)
  br i1 %call2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load i8*, i8** %protocol, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load i8*, i8** %protocol, align 8
  call void @free(i8* noundef %5)
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #1

declare i32 @sscanf(i8* noundef, i8* noundef, ...) #2

declare zeroext i1 @url_is_protocol(i8* noundef) #2

declare void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
!9 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git dfb083149f45185bece93228f47a1ca85d4c12a0)"}
