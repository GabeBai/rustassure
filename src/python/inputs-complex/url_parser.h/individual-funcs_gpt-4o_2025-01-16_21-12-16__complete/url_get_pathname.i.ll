; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_get_pathname.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_get_pathname.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.url_data = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.url_key_value*, i8* }
%struct.url_key_value = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @url_get_pathname(i8* noundef %url) #0 {
entry:
  %url.addr = alloca i8*, align 8
  %data = alloca %struct.url_data*, align 8
  %out = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %url.addr, align 8
  %call = call %struct.url_data* @url_parse(i8* noundef %0)
  store %struct.url_data* %call, %struct.url_data** %data, align 8
  %1 = load %struct.url_data*, %struct.url_data** %data, align 8
  %tobool = icmp ne %struct.url_data* %1, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.url_data*, %struct.url_data** %data, align 8
  %path = getelementptr inbounds %struct.url_data, %struct.url_data* %2, i32 0, i32 5
  %3 = load i8*, i8** %path, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load %struct.url_data*, %struct.url_data** %data, align 8
  %path2 = getelementptr inbounds %struct.url_data, %struct.url_data* %4, i32 0, i32 5
  %5 = load i8*, i8** %path2, align 8
  %call3 = call i8* @strdup(i8* noundef %5)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %do.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %out, align 8
  %6 = load %struct.url_data*, %struct.url_data** %data, align 8
  call void @url_free(%struct.url_data* noundef %6)
  %7 = load i8*, i8** %out, align 8
  br label %do.end

do.end:                                           ; preds = %cond.end
  ret i8* %7
}

declare %struct.url_data* @url_parse(i8* noundef) #1

declare i8* @strdup(i8* noundef) #1

declare void @url_free(%struct.url_data* noundef) #1

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
