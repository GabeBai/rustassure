; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_data_inspect.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_data_inspect.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.url_data = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.url_key_value*, i8* }
%struct.url_key_value = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"#url =>\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"    .protocol: \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"    .protocol: (NULL)\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"    .host: \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"    .host: (NULL)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"    .userinfo: \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"    .userinfo: (NULL)\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"    .port: \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"    .port: (NULL)\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"    .path: \22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"    .path: (NULL)\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"    .query[%u]: \22%s\22 -> \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"(NULL)\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"    .fragment: \22%s\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"    .fragment: (NULL)\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @url_data_inspect(%struct.url_data* noundef %data) #0 {
entry:
  %data.addr = alloca %struct.url_data*, align 8
  %nr = alloca i32, align 4
  store %struct.url_data* %data, %struct.url_data** %data.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %protocol = getelementptr inbounds %struct.url_data, %struct.url_data* %0, i32 0, i32 1
  %1 = load i8*, i8** %protocol, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %protocol1 = getelementptr inbounds %struct.url_data, %struct.url_data* %2, i32 0, i32 1
  %3 = load i8*, i8** %protocol1, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* noundef %3)
  br label %if.end

if.else:                                          ; preds = %do.body
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body4

do.body4:                                         ; preds = %do.end
  %4 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %host = getelementptr inbounds %struct.url_data, %struct.url_data* %4, i32 0, i32 3
  %5 = load i8*, i8** %host, align 8
  %tobool5 = icmp ne i8* %5, null
  br i1 %tobool5, label %if.then6, label %if.else9

if.then6:                                         ; preds = %do.body4
  %6 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %host7 = getelementptr inbounds %struct.url_data, %struct.url_data* %6, i32 0, i32 3
  %7 = load i8*, i8** %host7, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* noundef %7)
  br label %if.end11

if.else9:                                         ; preds = %do.body4
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then6
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %8 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %userinfo = getelementptr inbounds %struct.url_data, %struct.url_data* %8, i32 0, i32 2
  %9 = load i8*, i8** %userinfo, align 8
  %tobool14 = icmp ne i8* %9, null
  br i1 %tobool14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %do.body13
  %10 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %userinfo16 = getelementptr inbounds %struct.url_data, %struct.url_data* %10, i32 0, i32 2
  %11 = load i8*, i8** %userinfo16, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* noundef %11)
  br label %if.end20

if.else18:                                        ; preds = %do.body13
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then15
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  br label %do.body22

do.body22:                                        ; preds = %do.end21
  %12 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %host23 = getelementptr inbounds %struct.url_data, %struct.url_data* %12, i32 0, i32 3
  %13 = load i8*, i8** %host23, align 8
  %tobool24 = icmp ne i8* %13, null
  br i1 %tobool24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %do.body22
  %14 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %host26 = getelementptr inbounds %struct.url_data, %struct.url_data* %14, i32 0, i32 3
  %15 = load i8*, i8** %host26, align 8
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* noundef %15)
  br label %if.end30

if.else28:                                        ; preds = %do.body22
  %call29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then25
  br label %do.end31

do.end31:                                         ; preds = %if.end30
  br label %do.body32

do.body32:                                        ; preds = %do.end31
  %16 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %port = getelementptr inbounds %struct.url_data, %struct.url_data* %16, i32 0, i32 4
  %17 = load i8*, i8** %port, align 8
  %tobool33 = icmp ne i8* %17, null
  br i1 %tobool33, label %if.then34, label %if.else37

if.then34:                                        ; preds = %do.body32
  %18 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %port35 = getelementptr inbounds %struct.url_data, %struct.url_data* %18, i32 0, i32 4
  %19 = load i8*, i8** %port35, align 8
  %call36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* noundef %19)
  br label %if.end39

if.else37:                                        ; preds = %do.body32
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then34
  br label %do.end40

do.end40:                                         ; preds = %if.end39
  br label %do.body41

do.body41:                                        ; preds = %do.end40
  %20 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %path = getelementptr inbounds %struct.url_data, %struct.url_data* %20, i32 0, i32 5
  %21 = load i8*, i8** %path, align 8
  %tobool42 = icmp ne i8* %21, null
  br i1 %tobool42, label %if.then43, label %if.else46

if.then43:                                        ; preds = %do.body41
  %22 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %path44 = getelementptr inbounds %struct.url_data, %struct.url_data* %22, i32 0, i32 5
  %23 = load i8*, i8** %path44, align 8
  %call45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef %23)
  br label %if.end48

if.else46:                                        ; preds = %do.body41
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.then43
  br label %do.end49

do.end49:                                         ; preds = %if.end48
  %24 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %query = getelementptr inbounds %struct.url_data, %struct.url_data* %24, i32 0, i32 6
  %25 = load %struct.url_key_value*, %struct.url_key_value** %query, align 8
  %tobool50 = icmp ne %struct.url_key_value* %25, null
  br i1 %tobool50, label %if.then51, label %if.end72

if.then51:                                        ; preds = %do.end49
  store i32 0, i32* %nr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then51
  %26 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %query52 = getelementptr inbounds %struct.url_data, %struct.url_data* %26, i32 0, i32 6
  %27 = load %struct.url_key_value*, %struct.url_key_value** %query52, align 8
  %28 = load i32, i32* %nr, align 4
  %idxprom = zext i32 %28 to i64
  %arrayidx = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %27, i64 %idxprom
  %key = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx, i32 0, i32 0
  %29 = load i8*, i8** %key, align 8
  %tobool53 = icmp ne i8* %29, null
  br i1 %tobool53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %nr, align 4
  %31 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %query54 = getelementptr inbounds %struct.url_data, %struct.url_data* %31, i32 0, i32 6
  %32 = load %struct.url_key_value*, %struct.url_key_value** %query54, align 8
  %33 = load i32, i32* %nr, align 4
  %idxprom55 = zext i32 %33 to i64
  %arrayidx56 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %32, i64 %idxprom55
  %key57 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx56, i32 0, i32 0
  %34 = load i8*, i8** %key57, align 8
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef %30, i8* noundef %34)
  %35 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %query59 = getelementptr inbounds %struct.url_data, %struct.url_data* %35, i32 0, i32 6
  %36 = load %struct.url_key_value*, %struct.url_key_value** %query59, align 8
  %37 = load i32, i32* %nr, align 4
  %idxprom60 = zext i32 %37 to i64
  %arrayidx61 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %36, i64 %idxprom60
  %value = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx61, i32 0, i32 1
  %38 = load i8*, i8** %value, align 8
  %tobool62 = icmp ne i8* %38, null
  br i1 %tobool62, label %if.then63, label %if.else69

if.then63:                                        ; preds = %for.body
  %39 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %query64 = getelementptr inbounds %struct.url_data, %struct.url_data* %39, i32 0, i32 6
  %40 = load %struct.url_key_value*, %struct.url_key_value** %query64, align 8
  %41 = load i32, i32* %nr, align 4
  %idxprom65 = zext i32 %41 to i64
  %arrayidx66 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %40, i64 %idxprom65
  %value67 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx66, i32 0, i32 1
  %42 = load i8*, i8** %value67, align 8
  %call68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %42)
  br label %if.end71

if.else69:                                        ; preds = %for.body
  %call70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.then63
  br label %for.inc

for.inc:                                          ; preds = %if.end71
  %43 = load i32, i32* %nr, align 4
  %inc = add i32 %43, 1
  store i32 %inc, i32* %nr, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %if.end72

if.end72:                                         ; preds = %for.end, %do.end49
  br label %do.body73

do.body73:                                        ; preds = %if.end72
  %44 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %fragment = getelementptr inbounds %struct.url_data, %struct.url_data* %44, i32 0, i32 7
  %45 = load i8*, i8** %fragment, align 8
  %tobool74 = icmp ne i8* %45, null
  br i1 %tobool74, label %if.then75, label %if.else78

if.then75:                                        ; preds = %do.body73
  %46 = load %struct.url_data*, %struct.url_data** %data.addr, align 8
  %fragment76 = getelementptr inbounds %struct.url_data, %struct.url_data* %46, i32 0, i32 7
  %47 = load i8*, i8** %fragment76, align 8
  %call77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* noundef %47)
  br label %if.end80

if.else78:                                        ; preds = %do.body73
  %call79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.then75
  br label %do.end81

do.end81:                                         ; preds = %if.end80
  ret void
}

declare i32 @printf(i8* noundef, ...) #1

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
