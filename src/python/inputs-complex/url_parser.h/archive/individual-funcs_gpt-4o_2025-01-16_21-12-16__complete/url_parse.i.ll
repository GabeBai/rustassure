; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_parse.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_parse.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.url_data = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.url_key_value*, i8* }
%struct.url_key_value = type { i8*, i8* }

@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [28 x i8] c"ERROR %s Line %u! p=\C2\AB%s\C2\BB\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"url.c\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.url_data* @url_parse(i8* noundef %url) #0 {
entry:
  %retval = alloca %struct.url_data*, align 8
  %url.addr = alloca i8*, align 8
  %data = alloca %struct.url_data*, align 8
  %p = alloca i8*, align 8
  %p_end = alloca i8*, align 8
  %protocol_end = alloca i8*, align 8
  %is_ssh = alloca i8, align 1
  %second_slash = alloca i8*, align 8
  %userinfo_end = alloca i8*, align 8
  %hostname_end = alloca i8*, align 8
  %port_end = alloca i8*, align 8
  %port_end116 = alloca i8*, align 8
  %path_end = alloca i8*, align 8
  %has_query = alloca i8, align 1
  %has_fragment = alloca i8, align 1
  %query_end = alloca i8*, align 8
  %has_fragment182 = alloca i8, align 1
  %fragment_end = alloca i8*, align 8
  %fragment_end213 = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  %call = call i8* @calloc(i64 noundef 1, i64 noundef 64) #5
  %0 = bitcast i8* %call to %struct.url_data*
  store %struct.url_data* %0, %struct.url_data** %data, align 8
  %1 = load %struct.url_data*, %struct.url_data** %data, align 8
  %tobool = icmp ne %struct.url_data* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.url_data* null, %struct.url_data** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %url.addr, align 8
  %call1 = call i8* @strdup(i8* noundef %2)
  store i8* %call1, i8** %p, align 8
  %3 = load i8*, i8** %p, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then3
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %5 = load i8*, i8** %p, align 8
  %call4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %4, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 190, i8* noundef %5)
  br label %error

do.end:                                           ; No predecessors!
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end
  %6 = load i8*, i8** %p, align 8
  %7 = load %struct.url_data*, %struct.url_data** %data, align 8
  %whole_url = getelementptr inbounds %struct.url_data, %struct.url_data* %7, i32 0, i32 0
  store i8* %6, i8** %whole_url, align 8
  %8 = load i8*, i8** %p, align 8
  %9 = load i8*, i8** %p, align 8
  %call6 = call i64 @strlen(i8* noundef %9)
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %call6
  store i8* %add.ptr, i8** %p_end, align 8
  %10 = load i8*, i8** %p, align 8
  %call7 = call i32 bitcast (i32 (...)* @scan_part to i32 (i8*, i32, i32, i32)*)(i8* noundef %10, i32 noundef 1, i32 noundef 58, i32 noundef 0)
  %conv = sext i32 %call7 to i64
  %11 = inttoptr i64 %conv to i8*
  store i8* %11, i8** %protocol_end, align 8
  %12 = load i8*, i8** %protocol_end, align 8
  %tobool8 = icmp ne i8* %12, null
  br i1 %tobool8, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %if.end5
  %13 = load i8*, i8** %protocol_end, align 8
  %14 = load i8, i8* %13, align 1
  %conv9 = sext i8 %14 to i32
  %cmp = icmp eq i32 %conv9, 0
  br i1 %cmp, label %if.then11, label %if.end15

if.then11:                                        ; preds = %lor.lhs.false, %if.end5
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %16 = load i8*, i8** %p, align 8
  %call13 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %15, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 197, i8* noundef %16)
  br label %error

do.end14:                                         ; No predecessors!
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %lor.lhs.false
  %17 = load i8*, i8** %protocol_end, align 8
  store i8 0, i8* %17, align 1
  %18 = load i8*, i8** %p, align 8
  %19 = load %struct.url_data*, %struct.url_data** %data, align 8
  %protocol = getelementptr inbounds %struct.url_data, %struct.url_data* %19, i32 0, i32 1
  store i8* %18, i8** %protocol, align 8
  %20 = load %struct.url_data*, %struct.url_data** %data, align 8
  %protocol16 = getelementptr inbounds %struct.url_data, %struct.url_data* %20, i32 0, i32 1
  %21 = load i8*, i8** %protocol16, align 8
  %call17 = call zeroext i1 @url_is_ssh(i8* noundef %21)
  %frombool = zext i1 %call17 to i8
  store i8 %frombool, i8* %is_ssh, align 1
  %22 = load i8*, i8** %protocol_end, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %add.ptr18, i8** %p, align 8
  %23 = load i8*, i8** %p, align 8
  %24 = load i8*, i8** %p_end, align 8
  %cmp19 = icmp uge i8* %23, %24
  br i1 %cmp19, label %if.then25, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end15
  %25 = load i8*, i8** %p, align 8
  %26 = load i8, i8* %25, align 1
  %conv22 = sext i8 %26 to i32
  %cmp23 = icmp ne i32 %conv22, 47
  br i1 %cmp23, label %if.then25, label %if.end29

if.then25:                                        ; preds = %lor.lhs.false21, %if.end15
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %28 = load i8*, i8** %p, align 8
  %call27 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %27, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 205, i8* noundef %28)
  br label %error

do.end28:                                         ; No predecessors!
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %lor.lhs.false21
  %29 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %30 = load i8*, i8** %p, align 8
  %31 = load i8*, i8** %p_end, align 8
  %cmp30 = icmp uge i8* %30, %31
  br i1 %cmp30, label %if.then36, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.end29
  %32 = load i8*, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv33 = sext i8 %33 to i32
  %cmp34 = icmp ne i32 %conv33, 47
  br i1 %cmp34, label %if.then36, label %if.end40

if.then36:                                        ; preds = %lor.lhs.false32, %if.end29
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  %34 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %35 = load i8*, i8** %p, align 8
  %call38 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %34, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 209, i8* noundef %35)
  br label %error

do.end39:                                         ; No predecessors!
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %lor.lhs.false32
  %36 = load i8*, i8** %p, align 8
  store i8* %36, i8** %second_slash, align 8
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr41, i8** %p, align 8
  %38 = load i8*, i8** %p, align 8
  %39 = load i8*, i8** %p_end, align 8
  %cmp42 = icmp uge i8* %38, %39
  br i1 %cmp42, label %if.then44, label %if.end48

if.then44:                                        ; preds = %if.end40
  br label %do.body45

do.body45:                                        ; preds = %if.then44
  %40 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %41 = load i8*, i8** %p, align 8
  %call46 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %40, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 215, i8* noundef %41)
  br label %error

do.end47:                                         ; No predecessors!
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %if.end40
  %42 = load i8*, i8** %p, align 8
  %call49 = call i32 bitcast (i32 (...)* @scan_part to i32 (i8*, i32, i32, i32)*)(i8* noundef %42, i32 noundef 128, i32 noundef 64, i32 noundef 0)
  %conv50 = sext i32 %call49 to i64
  %43 = inttoptr i64 %conv50 to i8*
  store i8* %43, i8** %userinfo_end, align 8
  %44 = load i8*, i8** %userinfo_end, align 8
  %tobool51 = icmp ne i8* %44, null
  br i1 %tobool51, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %if.end48
  %45 = load i8*, i8** %userinfo_end, align 8
  %46 = load i8, i8* %45, align 1
  %conv52 = sext i8 %46 to i32
  %cmp53 = icmp eq i32 %conv52, 64
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %land.lhs.true
  %47 = load i8*, i8** %userinfo_end, align 8
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %p, align 8
  %49 = load %struct.url_data*, %struct.url_data** %data, align 8
  %userinfo = getelementptr inbounds %struct.url_data, %struct.url_data* %49, i32 0, i32 2
  store i8* %48, i8** %userinfo, align 8
  %50 = load i8*, i8** %userinfo_end, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %add.ptr56, i8** %p, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %land.lhs.true, %if.end48
  %51 = load i8*, i8** %p, align 8
  %52 = load i8*, i8** %p_end, align 8
  %cmp58 = icmp uge i8* %51, %52
  br i1 %cmp58, label %if.then60, label %if.end64

if.then60:                                        ; preds = %if.end57
  br label %do.body61

do.body61:                                        ; preds = %if.then60
  %53 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %54 = load i8*, i8** %p, align 8
  %call62 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %53, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 225, i8* noundef %54)
  br label %error

do.end63:                                         ; No predecessors!
  br label %if.end64

if.end64:                                         ; preds = %do.end63, %if.end57
  store i8* null, i8** %hostname_end, align 8
  %55 = load i8*, i8** %p, align 8
  %56 = load i8, i8* %55, align 1
  %conv65 = sext i8 %56 to i32
  %cmp66 = icmp eq i32 %conv65, 91
  br i1 %cmp66, label %if.then68, label %if.else100

if.then68:                                        ; preds = %if.end64
  %57 = load i8*, i8** %p, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr69, i8** %p, align 8
  %58 = load i8*, i8** %p, align 8
  %call70 = call i32 bitcast (i32 (...)* @scan_part to i32 (i8*, i32, i32, i32)*)(i8* noundef %58, i32 noundef 256, i32 noundef 93, i32 noundef 0)
  %conv71 = sext i32 %call70 to i64
  %59 = inttoptr i64 %conv71 to i8*
  store i8* %59, i8** %hostname_end, align 8
  %60 = load i8*, i8** %hostname_end, align 8
  %tobool72 = icmp ne i8* %60, null
  br i1 %tobool72, label %if.end77, label %if.then73

if.then73:                                        ; preds = %if.then68
  br label %do.body74

do.body74:                                        ; preds = %if.then73
  %61 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %62 = load i8*, i8** %p, align 8
  %call75 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %61, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 234, i8* noundef %62)
  br label %error

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %if.then68
  %63 = load i8*, i8** %hostname_end, align 8
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %p, align 8
  %65 = load %struct.url_data*, %struct.url_data** %data, align 8
  %host = getelementptr inbounds %struct.url_data, %struct.url_data* %65, i32 0, i32 3
  store i8* %64, i8** %host, align 8
  %66 = load i8*, i8** %hostname_end, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr78, i8** %hostname_end, align 8
  %67 = load i8*, i8** %hostname_end, align 8
  %68 = load i8*, i8** %p_end, align 8
  %cmp79 = icmp ult i8* %67, %68
  br i1 %cmp79, label %land.lhs.true81, label %if.else98

land.lhs.true81:                                  ; preds = %if.end77
  %69 = load i8, i8* %is_ssh, align 1
  %tobool82 = trunc i8 %69 to i1
  br i1 %tobool82, label %if.else98, label %land.lhs.true83

land.lhs.true83:                                  ; preds = %land.lhs.true81
  %70 = load i8*, i8** %hostname_end, align 8
  %71 = load i8, i8* %70, align 1
  %conv84 = sext i8 %71 to i32
  %cmp85 = icmp eq i32 %conv84, 58
  br i1 %cmp85, label %if.then87, label %if.else98

if.then87:                                        ; preds = %land.lhs.true83
  %72 = load i8*, i8** %hostname_end, align 8
  %add.ptr88 = getelementptr inbounds i8, i8* %72, i64 1
  %call89 = call i32 bitcast (i32 (...)* @scan_decimal_number to i32 (i8*)*)(i8* noundef %add.ptr88)
  %conv90 = sext i32 %call89 to i64
  %73 = inttoptr i64 %conv90 to i8*
  store i8* %73, i8** %port_end, align 8
  %74 = load i8*, i8** %port_end, align 8
  %tobool91 = icmp ne i8* %74, null
  br i1 %tobool91, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.then87
  %75 = load i8*, i8** %hostname_end, align 8
  %add.ptr93 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load %struct.url_data*, %struct.url_data** %data, align 8
  %port = getelementptr inbounds %struct.url_data, %struct.url_data* %76, i32 0, i32 4
  store i8* %add.ptr93, i8** %port, align 8
  %77 = load i8*, i8** %port_end, align 8
  store i8* %77, i8** %p, align 8
  br label %if.end97

if.else:                                          ; preds = %if.then87
  br label %do.body94

do.body94:                                        ; preds = %if.else
  %78 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %79 = load i8*, i8** %p, align 8
  %call95 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %78, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 247, i8* noundef %79)
  br label %error

do.end96:                                         ; No predecessors!
  br label %if.end97

if.end97:                                         ; preds = %do.end96, %if.then92
  br label %if.end99

if.else98:                                        ; preds = %land.lhs.true83, %land.lhs.true81, %if.end77
  %80 = load i8*, i8** %hostname_end, align 8
  store i8* %80, i8** %p, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.else98, %if.end97
  br label %if.end131

if.else100:                                       ; preds = %if.end64
  %81 = load i8*, i8** %p, align 8
  %call101 = call i32 bitcast (i32 (...)* @scan_part to i32 (i8*, i32, i32, i32)*)(i8* noundef %81, i32 noundef 10, i32 noundef 58, i32 noundef 47)
  %conv102 = sext i32 %call101 to i64
  %82 = inttoptr i64 %conv102 to i8*
  store i8* %82, i8** %hostname_end, align 8
  %83 = load i8*, i8** %hostname_end, align 8
  %tobool103 = icmp ne i8* %83, null
  br i1 %tobool103, label %if.end108, label %if.then104

if.then104:                                       ; preds = %if.else100
  br label %do.body105

do.body105:                                       ; preds = %if.then104
  %84 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %85 = load i8*, i8** %p, align 8
  %call106 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %84, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 255, i8* noundef %85)
  br label %error

do.end107:                                        ; No predecessors!
  br label %if.end108

if.end108:                                        ; preds = %do.end107, %if.else100
  %86 = load i8*, i8** %p, align 8
  %87 = load %struct.url_data*, %struct.url_data** %data, align 8
  %host109 = getelementptr inbounds %struct.url_data, %struct.url_data* %87, i32 0, i32 3
  store i8* %86, i8** %host109, align 8
  %88 = load i8, i8* %is_ssh, align 1
  %tobool110 = trunc i8 %88 to i1
  br i1 %tobool110, label %if.else129, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %if.end108
  %89 = load i8*, i8** %hostname_end, align 8
  %90 = load i8, i8* %89, align 1
  %conv112 = sext i8 %90 to i32
  %cmp113 = icmp eq i32 %conv112, 58
  br i1 %cmp113, label %if.then115, label %if.else129

if.then115:                                       ; preds = %land.lhs.true111
  %91 = load i8*, i8** %hostname_end, align 8
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %hostname_end, align 8
  %add.ptr117 = getelementptr inbounds i8, i8* %92, i64 1
  %call118 = call i32 bitcast (i32 (...)* @scan_decimal_number to i32 (i8*)*)(i8* noundef %add.ptr117)
  %conv119 = sext i32 %call118 to i64
  %93 = inttoptr i64 %conv119 to i8*
  store i8* %93, i8** %port_end116, align 8
  %94 = load i8*, i8** %port_end116, align 8
  %tobool120 = icmp ne i8* %94, null
  br i1 %tobool120, label %if.then121, label %if.else124

if.then121:                                       ; preds = %if.then115
  %95 = load i8*, i8** %hostname_end, align 8
  %add.ptr122 = getelementptr inbounds i8, i8* %95, i64 1
  %96 = load %struct.url_data*, %struct.url_data** %data, align 8
  %port123 = getelementptr inbounds %struct.url_data, %struct.url_data* %96, i32 0, i32 4
  store i8* %add.ptr122, i8** %port123, align 8
  %97 = load i8*, i8** %port_end116, align 8
  store i8* %97, i8** %p, align 8
  br label %if.end128

if.else124:                                       ; preds = %if.then115
  br label %do.body125

do.body125:                                       ; preds = %if.else124
  %98 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %99 = load i8*, i8** %p, align 8
  %call126 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %98, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 267, i8* noundef %99)
  br label %error

do.end127:                                        ; No predecessors!
  br label %if.end128

if.end128:                                        ; preds = %do.end127, %if.then121
  br label %if.end130

if.else129:                                       ; preds = %land.lhs.true111, %if.end108
  %100 = load i8*, i8** %hostname_end, align 8
  store i8* %100, i8** %p, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.else129, %if.end128
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.end99
  %101 = load i8*, i8** %second_slash, align 8
  %102 = load i8*, i8** %second_slash, align 8
  %add.ptr132 = getelementptr inbounds i8, i8* %102, i64 1
  %103 = load i8*, i8** %p, align 8
  %104 = load i8*, i8** %second_slash, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %103 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %104 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %105 = load i8*, i8** %second_slash, align 8
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* %105, i1 false, i1 true, i1 false)
  %call133 = call i8* @__memmove_chk(i8* noundef %101, i8* noundef %add.ptr132, i64 noundef %sub.ptr.sub, i64 noundef %106) #6
  %107 = load %struct.url_data*, %struct.url_data** %data, align 8
  %userinfo134 = getelementptr inbounds %struct.url_data, %struct.url_data* %107, i32 0, i32 2
  %108 = load i8*, i8** %userinfo134, align 8
  %tobool135 = icmp ne i8* %108, null
  br i1 %tobool135, label %if.then136, label %if.end139

if.then136:                                       ; preds = %if.end131
  %109 = load %struct.url_data*, %struct.url_data** %data, align 8
  %userinfo137 = getelementptr inbounds %struct.url_data, %struct.url_data* %109, i32 0, i32 2
  %110 = load i8*, i8** %userinfo137, align 8
  %incdec.ptr138 = getelementptr inbounds i8, i8* %110, i32 -1
  store i8* %incdec.ptr138, i8** %userinfo137, align 8
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.end131
  %111 = load %struct.url_data*, %struct.url_data** %data, align 8
  %host140 = getelementptr inbounds %struct.url_data, %struct.url_data* %111, i32 0, i32 3
  %112 = load i8*, i8** %host140, align 8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %112, i32 -1
  store i8* %incdec.ptr141, i8** %host140, align 8
  %113 = load %struct.url_data*, %struct.url_data** %data, align 8
  %port142 = getelementptr inbounds %struct.url_data, %struct.url_data* %113, i32 0, i32 4
  %114 = load i8*, i8** %port142, align 8
  %tobool143 = icmp ne i8* %114, null
  br i1 %tobool143, label %if.then144, label %if.end147

if.then144:                                       ; preds = %if.end139
  %115 = load %struct.url_data*, %struct.url_data** %data, align 8
  %port145 = getelementptr inbounds %struct.url_data, %struct.url_data* %115, i32 0, i32 4
  %116 = load i8*, i8** %port145, align 8
  %incdec.ptr146 = getelementptr inbounds i8, i8* %116, i32 -1
  store i8* %incdec.ptr146, i8** %port145, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %if.end139
  %117 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %117, i64 -1
  store i8 0, i8* %arrayidx, align 1
  %118 = load i8, i8* %is_ssh, align 1
  %tobool148 = trunc i8 %118 to i1
  br i1 %tobool148, label %land.lhs.true150, label %if.end156

land.lhs.true150:                                 ; preds = %if.end147
  %119 = load i8*, i8** %p, align 8
  %120 = load i8, i8* %119, align 1
  %conv151 = sext i8 %120 to i32
  %cmp152 = icmp eq i32 %conv151, 58
  br i1 %cmp152, label %if.then154, label %if.end156

if.then154:                                       ; preds = %land.lhs.true150
  %121 = load i8*, i8** %p, align 8
  %incdec.ptr155 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr155, i8** %p, align 8
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %land.lhs.true150, %if.end147
  %122 = load i8*, i8** %p, align 8
  %call157 = call i32 bitcast (i32 (...)* @scan_part to i32 (i8*, i32, i32, i32)*)(i8* noundef %122, i32 noundef 16, i32 noundef 63, i32 noundef 35)
  %conv158 = sext i32 %call157 to i64
  %123 = inttoptr i64 %conv158 to i8*
  store i8* %123, i8** %path_end, align 8
  %124 = load i8*, i8** %path_end, align 8
  %tobool159 = icmp ne i8* %124, null
  br i1 %tobool159, label %if.end164, label %if.then160

if.then160:                                       ; preds = %if.end156
  br label %do.body161

do.body161:                                       ; preds = %if.then160
  %125 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %126 = load i8*, i8** %p, align 8
  %call162 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %125, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 295, i8* noundef %126)
  br label %error

do.end163:                                        ; No predecessors!
  br label %if.end164

if.end164:                                        ; preds = %do.end163, %if.end156
  %127 = load i8*, i8** %path_end, align 8
  %128 = load i8, i8* %127, align 1
  %conv165 = sext i8 %128 to i32
  %cmp166 = icmp eq i32 %conv165, 63
  %frombool168 = zext i1 %cmp166 to i8
  store i8 %frombool168, i8* %has_query, align 1
  %129 = load i8*, i8** %path_end, align 8
  %130 = load i8, i8* %129, align 1
  %conv169 = sext i8 %130 to i32
  %cmp170 = icmp eq i32 %conv169, 35
  %frombool172 = zext i1 %cmp170 to i8
  store i8 %frombool172, i8* %has_fragment, align 1
  %131 = load i8*, i8** %path_end, align 8
  store i8 0, i8* %131, align 1
  %132 = load i8*, i8** %p, align 8
  %call173 = call i32 bitcast (i32 (...)* @decode_percent to i32 (i8*)*)(i8* noundef %132)
  %conv174 = sext i32 %call173 to i64
  %133 = inttoptr i64 %conv174 to i8*
  %134 = load %struct.url_data*, %struct.url_data** %data, align 8
  %path = getelementptr inbounds %struct.url_data, %struct.url_data* %134, i32 0, i32 5
  store i8* %133, i8** %path, align 8
  %135 = load i8*, i8** %path_end, align 8
  %add.ptr175 = getelementptr inbounds i8, i8* %135, i64 1
  store i8* %add.ptr175, i8** %p, align 8
  %136 = load i8, i8* %has_query, align 1
  %tobool176 = trunc i8 %136 to i1
  br i1 %tobool176, label %if.then177, label %if.else210

if.then177:                                       ; preds = %if.end164
  %137 = load i8*, i8** %p, align 8
  %call178 = call i32 bitcast (i32 (...)* @scan_part to i32 (i8*, i32, i32, i32)*)(i8* noundef %137, i32 noundef 64, i32 noundef 35, i32 noundef 0)
  %conv179 = sext i32 %call178 to i64
  %138 = inttoptr i64 %conv179 to i8*
  store i8* %138, i8** %query_end, align 8
  %139 = load i8*, i8** %query_end, align 8
  %tobool180 = icmp ne i8* %139, null
  br i1 %tobool180, label %if.then181, label %if.else205

if.then181:                                       ; preds = %if.then177
  %140 = load i8*, i8** %query_end, align 8
  %141 = load i8, i8* %140, align 1
  %conv183 = sext i8 %141 to i32
  %cmp184 = icmp eq i32 %conv183, 35
  %frombool186 = zext i1 %cmp184 to i8
  store i8 %frombool186, i8* %has_fragment182, align 1
  %142 = load i8*, i8** %query_end, align 8
  store i8 0, i8* %142, align 1
  %143 = load i8*, i8** %p, align 8
  %144 = load i8*, i8** %query_end, align 8
  %call187 = call i32 bitcast (i32 (...)* @parse_query_string to i32 (i8*, i8*)*)(i8* noundef %143, i8* noundef %144)
  %conv188 = sext i32 %call187 to i64
  %145 = inttoptr i64 %conv188 to %struct.url_key_value*
  %146 = load %struct.url_data*, %struct.url_data** %data, align 8
  %query = getelementptr inbounds %struct.url_data, %struct.url_data* %146, i32 0, i32 6
  store %struct.url_key_value* %145, %struct.url_key_value** %query, align 8
  %147 = load i8, i8* %has_fragment182, align 1
  %tobool189 = trunc i8 %147 to i1
  br i1 %tobool189, label %if.then190, label %if.end204

if.then190:                                       ; preds = %if.then181
  %148 = load i8*, i8** %query_end, align 8
  %add.ptr191 = getelementptr inbounds i8, i8* %148, i64 1
  %call192 = call i32 bitcast (i32 (...)* @scan_part to i32 (i8*, i32, i32, i32)*)(i8* noundef %add.ptr191, i32 noundef 64, i32 noundef 0, i32 noundef 0)
  %conv193 = sext i32 %call192 to i64
  %149 = inttoptr i64 %conv193 to i8*
  store i8* %149, i8** %fragment_end, align 8
  %150 = load i8*, i8** %fragment_end, align 8
  %tobool194 = icmp ne i8* %150, null
  br i1 %tobool194, label %if.then195, label %if.else199

if.then195:                                       ; preds = %if.then190
  %151 = load i8*, i8** %query_end, align 8
  %add.ptr196 = getelementptr inbounds i8, i8* %151, i64 1
  %call197 = call i32 bitcast (i32 (...)* @decode_percent to i32 (i8*)*)(i8* noundef %add.ptr196)
  %conv198 = sext i32 %call197 to i64
  %152 = inttoptr i64 %conv198 to i8*
  %153 = load %struct.url_data*, %struct.url_data** %data, align 8
  %fragment = getelementptr inbounds %struct.url_data, %struct.url_data* %153, i32 0, i32 7
  store i8* %152, i8** %fragment, align 8
  br label %if.end203

if.else199:                                       ; preds = %if.then190
  br label %do.body200

do.body200:                                       ; preds = %if.else199
  %154 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %155 = load i8*, i8** %p, align 8
  %call201 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %154, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 319, i8* noundef %155)
  br label %error

do.end202:                                        ; No predecessors!
  br label %if.end203

if.end203:                                        ; preds = %do.end202, %if.then195
  br label %if.end204

if.end204:                                        ; preds = %if.end203, %if.then181
  br label %if.end209

if.else205:                                       ; preds = %if.then177
  br label %do.body206

do.body206:                                       ; preds = %if.else205
  %156 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %157 = load i8*, i8** %p, align 8
  %call207 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %156, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 323, i8* noundef %157)
  br label %error

do.end208:                                        ; No predecessors!
  br label %if.end209

if.end209:                                        ; preds = %do.end208, %if.end204
  br label %if.end227

if.else210:                                       ; preds = %if.end164
  %158 = load i8, i8* %has_fragment, align 1
  %tobool211 = trunc i8 %158 to i1
  br i1 %tobool211, label %if.then212, label %if.end226

if.then212:                                       ; preds = %if.else210
  %159 = load i8*, i8** %p, align 8
  %call214 = call i32 bitcast (i32 (...)* @scan_part to i32 (i8*, i32, i32, i32)*)(i8* noundef %159, i32 noundef 64, i32 noundef 0, i32 noundef 0)
  %conv215 = sext i32 %call214 to i64
  %160 = inttoptr i64 %conv215 to i8*
  store i8* %160, i8** %fragment_end213, align 8
  %161 = load i8*, i8** %fragment_end213, align 8
  %tobool216 = icmp ne i8* %161, null
  br i1 %tobool216, label %if.then217, label %if.else221

if.then217:                                       ; preds = %if.then212
  %162 = load i8*, i8** %p, align 8
  %call218 = call i32 bitcast (i32 (...)* @decode_percent to i32 (i8*)*)(i8* noundef %162)
  %conv219 = sext i32 %call218 to i64
  %163 = inttoptr i64 %conv219 to i8*
  %164 = load %struct.url_data*, %struct.url_data** %data, align 8
  %fragment220 = getelementptr inbounds %struct.url_data, %struct.url_data* %164, i32 0, i32 7
  store i8* %163, i8** %fragment220, align 8
  br label %if.end225

if.else221:                                       ; preds = %if.then212
  br label %do.body222

do.body222:                                       ; preds = %if.else221
  %165 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %166 = load i8*, i8** %p, align 8
  %call223 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %165, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 332, i8* noundef %166)
  br label %error

do.end224:                                        ; No predecessors!
  br label %if.end225

if.end225:                                        ; preds = %do.end224, %if.then217
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %if.else210
  br label %if.end227

if.end227:                                        ; preds = %if.end226, %if.end209
  %167 = load %struct.url_data*, %struct.url_data** %data, align 8
  store %struct.url_data* %167, %struct.url_data** %retval, align 8
  br label %return

error:                                            ; preds = %do.body222, %do.body206, %do.body200, %do.body161, %do.body125, %do.body105, %do.body94, %do.body74, %do.body61, %do.body45, %do.body37, %do.body26, %do.body12, %do.body
  %168 = load %struct.url_data*, %struct.url_data** %data, align 8
  call void @url_free(%struct.url_data* noundef %168)
  store %struct.url_data* null, %struct.url_data** %retval, align 8
  br label %return

return:                                           ; preds = %error, %if.end227, %if.then
  %169 = load %struct.url_data*, %struct.url_data** %retval, align 8
  ret %struct.url_data* %169
}

; Function Attrs: allocsize(0,1)
declare i8* @calloc(i64 noundef, i64 noundef) #1

declare i8* @strdup(i8* noundef) #2

declare i32 @fprintf(%struct.__sFILE* noundef, i8* noundef, ...) #2

declare i64 @strlen(i8* noundef) #2

declare i32 @scan_part(...) #2

declare zeroext i1 @url_is_ssh(i8* noundef) #2

declare i32 @scan_decimal_number(...) #2

; Function Attrs: nounwind
declare i8* @__memmove_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

declare i32 @decode_percent(...) #2

declare i32 @parse_query_string(...) #2

declare void @url_free(%struct.url_data* noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { allocsize(0,1) }
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
!9 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git dfb083149f45185bece93228f47a1ca85d4c12a0)"}
