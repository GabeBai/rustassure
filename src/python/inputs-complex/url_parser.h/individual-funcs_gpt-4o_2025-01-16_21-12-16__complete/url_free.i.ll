; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_free.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_free.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.url_data = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.url_key_value*, i8* }
%struct.url_key_value = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @url_free(%struct.url_data* noundef %data) #0 {
entry:
  %data.addr = alloca %struct.url_data*, align 8
  store %struct.url_data* %data, %struct.url_data** %data.addr, align 8
  %0 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %tobool = icmp ne %struct.url_data* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %whole_url = getelementptr inbounds %struct.url_data, %struct.url_data* %1, i32 0, i32 0
  %2 = load i8*, i8** %whole_url, align 8
  call void @free(i8* noundef %2)
  %3 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %query = getelementptr inbounds %struct.url_data, %struct.url_data* %3, i32 0, i32 6
  %4 = load %struct.url_key_value*, %struct.url_key_value** %query, align 8
  %5 = bitcast %struct.url_key_value* %4 to i8*
  call void @free(i8* noundef %5)
  %6 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %7 = bitcast %struct.url_data* %6 to i8*
  call void @free(i8* noundef %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @free(i8* noundef) #1

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
