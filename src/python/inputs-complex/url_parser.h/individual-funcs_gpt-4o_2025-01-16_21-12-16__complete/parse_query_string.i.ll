; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/parse_query_string.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.url_key_value = type { i8*, i8* }

@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [28 x i8] c"ERROR %s Line %u! p=\C2\AB%s\C2\BB\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"url.c\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.url_key_value* @parse_query_string(i8* noundef %begin, i8* noundef %end) #0 {
entry:
  %retval = alloca %struct.url_key_value*, align 8
  %begin.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %elements = alloca i32, align 4
  %p = alloca i8*, align 8
  %kv = alloca %struct.url_key_value*, align 8
  %p9 = alloca i8*, align 8
  %element = alloca i32, align 4
  %key = alloca i8*, align 8
  %kv_end = alloca i8*, align 8
  %key_end = alloca i8*, align 8
  %has_value = alloca i8, align 1
  %value = alloca i8*, align 8
  store i8* %begin, i8** %begin.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 1, i32* %elements, align 4
  %0 = load i8*, i8** %begin.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ne i8* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 38
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 59
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %7 = load i32, i32* %elements, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %elements, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %elements, align 4
  %add = add i32 %9, 1
  %conv6 = zext i32 %add to i64
  %call = call i8* @calloc(i64 noundef %conv6, i64 noundef 16) #3
  %10 = bitcast i8* %call to %struct.url_key_value*
  store %struct.url_key_value* %10, %struct.url_key_value** %kv, align 8
  %11 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8
  %tobool = icmp ne %struct.url_key_value* %11, null
  br i1 %tobool, label %if.end8, label %if.then7

if.then7:                                         ; preds = %for.end
  store %struct.url_key_value* null, %struct.url_key_value** %retval, align 8
  br label %return

if.end8:                                          ; preds = %for.end
  %12 = load i8*, i8** %begin.addr, align 8
  store i8* %12, i8** %p9, align 8
  store i32 0, i32* %element, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc42, %if.end8
  %13 = load i32, i32* %element, align 4
  %14 = load i32, i32* %elements, align 4
  %cmp11 = icmp ule i32 %13, %14
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond10
  %15 = load i8*, i8** %p9, align 8
  %16 = load i8*, i8** %end.addr, align 8
  %cmp13 = icmp ult i8* %15, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond10
  %17 = phi i1 [ false, %for.cond10 ], [ %cmp13, %land.rhs ]
  br i1 %17, label %for.body15, label %for.end44

for.body15:                                       ; preds = %land.end
  %18 = load i8*, i8** %p9, align 8
  store i8* %18, i8** %key, align 8
  %19 = load i8*, i8** %p9, align 8
  %call16 = call i32 bitcast (i32 (...)* @scan_part to i32 (i8*, i32, i32, i32)*)(i8* noundef %19, i32 noundef 64, i32 noundef 38, i32 noundef 59)
  %conv17 = sext i32 %call16 to i64
  %20 = inttoptr i64 %conv17 to i8*
  store i8* %20, i8** %kv_end, align 8
  %21 = load i8*, i8** %kv_end, align 8
  %tobool18 = icmp ne i8* %21, null
  br i1 %tobool18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %for.body15
  br label %do.body

do.body:                                          ; preds = %if.then19
  %22 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %23 = load i8*, i8** %p9, align 8
  %call20 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %22, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 153, i8* noundef %23)
  br label %error

do.end:                                           ; No predecessors!
  br label %if.end21

if.end21:                                         ; preds = %do.end, %for.body15
  %24 = load i8*, i8** %kv_end, align 8
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %p9, align 8
  %call22 = call i32 bitcast (i32 (...)* @scan_part to i32 (i8*, i32, i32, i32)*)(i8* noundef %25, i32 noundef 64, i32 noundef 61, i32 noundef 0)
  %conv23 = sext i32 %call22 to i64
  %26 = inttoptr i64 %conv23 to i8*
  store i8* %26, i8** %key_end, align 8
  %27 = load i8*, i8** %key_end, align 8
  %28 = load i8, i8* %27, align 1
  %conv24 = sext i8 %28 to i32
  %cmp25 = icmp eq i32 %conv24, 61
  %frombool = zext i1 %cmp25 to i8
  store i8 %frombool, i8* %has_value, align 1
  %29 = load i8*, i8** %key_end, align 8
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %key, align 8
  %call27 = call i32 bitcast (i32 (...)* @decode_percent to i32 (i8*)*)(i8* noundef %30)
  %conv28 = sext i32 %call27 to i64
  %31 = inttoptr i64 %conv28 to i8*
  %32 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8
  %33 = load i32, i32* %element, align 4
  %idxprom = zext i32 %33 to i64
  %arrayidx = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %32, i64 %idxprom
  %key29 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx, i32 0, i32 0
  store i8* %31, i8** %key29, align 8
  %34 = load i8, i8* %has_value, align 1
  %tobool30 = trunc i8 %34 to i1
  br i1 %tobool30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end21
  %35 = load i8*, i8** %key_end, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %add.ptr, i8** %value, align 8
  %36 = load i8*, i8** %value, align 8
  %call32 = call i32 bitcast (i32 (...)* @decode_percent to i32 (i8*)*)(i8* noundef %36)
  %conv33 = sext i32 %call32 to i64
  %37 = inttoptr i64 %conv33 to i8*
  %38 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8
  %39 = load i32, i32* %element, align 4
  %idxprom34 = zext i32 %39 to i64
  %arrayidx35 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %38, i64 %idxprom34
  %value36 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx35, i32 0, i32 1
  store i8* %37, i8** %value36, align 8
  br label %if.end40

if.else:                                          ; preds = %if.end21
  %40 = load i8*, i8** %key_end, align 8
  %41 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8
  %42 = load i32, i32* %element, align 4
  %idxprom37 = zext i32 %42 to i64
  %arrayidx38 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %41, i64 %idxprom37
  %value39 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx38, i32 0, i32 1
  store i8* %40, i8** %value39, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then31
  %43 = load i8*, i8** %kv_end, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %add.ptr41, i8** %p9, align 8
  br label %for.inc42

for.inc42:                                        ; preds = %if.end40
  %44 = load i32, i32* %element, align 4
  %inc43 = add i32 %44, 1
  store i32 %inc43, i32* %element, align 4
  br label %for.cond10, !llvm.loop !12

for.end44:                                        ; preds = %land.end
  %45 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8
  store %struct.url_key_value* %45, %struct.url_key_value** %retval, align 8
  br label %return

error:                                            ; preds = %do.body
  %46 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8
  %47 = bitcast %struct.url_key_value* %46 to i8*
  call void @free(i8* noundef %47)
  store %struct.url_key_value* null, %struct.url_key_value** %retval, align 8
  br label %return

return:                                           ; preds = %error, %for.end44, %if.then7
  %48 = load %struct.url_key_value*, %struct.url_key_value** %retval, align 8
  ret %struct.url_key_value* %48
}

; Function Attrs: allocsize(0,1)
declare i8* @calloc(i64 noundef, i64 noundef) #1

declare i32 @scan_part(...) #2

declare i32 @fprintf(%struct.__sFILE* noundef, i8* noundef, ...) #2

declare i32 @decode_percent(...) #2

declare void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0,1) }

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
!12 = distinct !{!12, !11}
