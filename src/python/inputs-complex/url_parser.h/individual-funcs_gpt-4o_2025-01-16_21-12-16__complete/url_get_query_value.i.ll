; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_get_query_value.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_get_query_value.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.url_data = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.url_key_value*, i8* }
%struct.url_key_value = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @url_get_query_value(%struct.url_data* noundef %url, i8* noundef %key) #0 {
entry:
  %retval = alloca i8*, align 8
  %url.addr = alloca %struct.url_data*, align 8
  %key.addr = alloca i8*, align 8
  %kv = alloca %struct.url_key_value*, align 8
  store %struct.url_data* %url, %struct.url_data** %url.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.url_data*, %struct.url_data** %url.addr, align 8
  %query = getelementptr inbounds %struct.url_data, %struct.url_data* %0, i32 0, i32 6
  %1 = load %struct.url_key_value*, %struct.url_key_value** %query, align 8
  %cmp = icmp eq %struct.url_key_value* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.url_data*, %struct.url_data** %url.addr, align 8
  %query1 = getelementptr inbounds %struct.url_data, %struct.url_data* %2, i32 0, i32 6
  %3 = load %struct.url_key_value*, %struct.url_key_value** %query1, align 8
  store %struct.url_key_value* %3, %struct.url_key_value** %kv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8
  %key2 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %4, i32 0, i32 0
  %5 = load i8*, i8** %key2, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8
  %key3 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %6, i32 0, i32 0
  %7 = load i8*, i8** %key3, align 8
  %8 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strcmp(i8* noundef %7, i8* noundef %8)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  %9 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8
  %value = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %9, i32 0, i32 1
  %10 = load i8*, i8** %value, align 8
  store i8* %10, i8** %retval, align 8
  br label %return

if.end6:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %11 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8
  %incdec.ptr = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %11, i32 1
  store %struct.url_key_value* %incdec.ptr, %struct.url_key_value** %kv, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then5, %if.then
  %12 = load i8*, i8** %retval, align 8
  ret i8* %12
}

declare i32 @strcmp(i8* noundef, i8* noundef) #1

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
!9 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git dfb083149f45185bece93228f47a1ca85d4c12a0)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
