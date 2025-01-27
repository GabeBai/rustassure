; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._OSUnalignedU16 = type { i16 }
%struct._OSUnalignedU32 = type { i32 }
%struct._OSUnalignedU64 = type { i64 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.url_data = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.url_key_value*, i8* }
%struct.url_key_value = type opaque

@.str = private unnamed_addr constant [38 x i8] c"git://git@github.com:jwerle/url.h.git\00", align 1
@.str.1 = private unnamed_addr constant [120 x i8] c"http://user:pass@subdomain.host.com:8080/p/%C3%A5/t/h?qu%C3%ABry=strin%C4%9F&foo=bar=yuk&key%23%26%3D=%25&lol#h%C3%a6sh\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"test.c\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"parsed\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"gh_parsed\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"parsed->whole_url\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"parsed->protocol\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"parsed->userinfo\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"parsed->host\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"parsed->port\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"parsed->path\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"parsed->query\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"parsed->fragment\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"gh_parsed->whole_url\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"gh_parsed->protocol\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"gh_parsed->userinfo\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"gh_parsed->host\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"gh_parsed->path\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"url_is_protocol(\22http\22)\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"url_is_protocol(\22https\22)\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"url_is_protocol(\22git\22)\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"url_is_protocol(\22ssh\22)\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"sftp\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"url_is_protocol(\22sftp\22)\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"url_is_protocol(\22ftp\22)\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"javascript\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"url_is_protocol(\22javascript\22)\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"strcmp(\22http\22, s) == 0\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"user:pass\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"strcmp(\22user:pass\22, s) == 0\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"subdomain.host.com\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"strcmp(\22subdomain.host.com\22, s) == 0\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"/p/\C3\A5/t/h\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"strcmp(\22/p/\\xc3\\xa5/t/h\22, s) == 0\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"strin\C4\9F\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"qu\C3\ABry\00", align 1
@.str.42 = private unnamed_addr constant [73 x i8] c"strcmp(\22strin\\xc4\\x9f\22, url_get_query_value (parsed, \22qu\\xc3\\xabry\22))==0\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"bar=yuk\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.45 = private unnamed_addr constant [58 x i8] c"strcmp(\22bar=yuk\22, url_get_query_value (parsed, \22foo\22))==0\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"key#&=\00", align 1
@.str.48 = private unnamed_addr constant [55 x i8] c"strcmp(\22%\22, url_get_query_value (parsed, \22key#&=\22))==0\00", align 1
@.str.49 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"lol\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"strcmp(\22\22, url_get_query_value (parsed, \22lol\22))==0\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"h\C3\A6sh\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"strcmp(\22h\C3\A6sh\22, s) == 0\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"8080\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"strcmp(\228080\22, s) == 0\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"strcmp(\22git\22, s) == 0\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"github.com\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"strcmp(\22github.com\22, s) == 0\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"jwerle/url.h.git\00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"strcmp(\22jwerle/url.h.git\22, s) == 0\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i16 @_OSSwapInt16(i16 noundef zeroext %_data) #0 !dbg !44 {
entry:
  %_data.addr = alloca i16, align 2
  store i16 %_data, i16* %_data.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %_data.addr, metadata !48, metadata !DIExpression()), !dbg !49
  %0 = load i16, i16* %_data.addr, align 2, !dbg !50
  %conv = zext i16 %0 to i32, !dbg !50
  %shl = shl i32 %conv, 8, !dbg !51
  %1 = load i16, i16* %_data.addr, align 2, !dbg !52
  %conv1 = zext i16 %1 to i32, !dbg !52
  %shr = ashr i32 %conv1, 8, !dbg !53
  %or = or i32 %shl, %shr, !dbg !54
  %conv2 = trunc i32 %or to i16, !dbg !55
  ret i16 %conv2, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @_OSSwapInt32(i32 noundef %_data) #0 !dbg !57 {
entry:
  %_data.addr = alloca i32, align 4
  store i32 %_data, i32* %_data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_data.addr, metadata !60, metadata !DIExpression()), !dbg !61
  %0 = load i32, i32* %_data.addr, align 4, !dbg !62
  %1 = call i32 @llvm.bswap.i32(i32 %0), !dbg !63
  store i32 %1, i32* %_data.addr, align 4, !dbg !64
  %2 = load i32, i32* %_data.addr, align 4, !dbg !65
  ret i32 %2, !dbg !66
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_OSSwapInt64(i64 noundef %_data) #0 !dbg !67 {
entry:
  %_data.addr = alloca i64, align 8
  store i64 %_data, i64* %_data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_data.addr, metadata !70, metadata !DIExpression()), !dbg !71
  %0 = load i64, i64* %_data.addr, align 8, !dbg !72
  %1 = call i64 @llvm.bswap.i64(i64 %0), !dbg !73
  ret i64 %1, !dbg !74
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i16 @OSReadSwapInt16(i8* noundef %_base, i64 noundef %_offset) #0 !dbg !75 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_base.addr, metadata !81, metadata !DIExpression()), !dbg !82
  store i64 %_offset, i64* %_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_offset.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i8*, i8** %_base.addr, align 8, !dbg !85
  %1 = ptrtoint i8* %0 to i64, !dbg !86
  %2 = load i64, i64* %_offset.addr, align 8, !dbg !87
  %add = add i64 %1, %2, !dbg !88
  %3 = inttoptr i64 %add to %struct._OSUnalignedU16*, !dbg !89
  %__val = getelementptr inbounds %struct._OSUnalignedU16, %struct._OSUnalignedU16* %3, i32 0, i32 0, !dbg !90
  %4 = load volatile i16, i16* %__val, align 1, !dbg !90
  %call = call zeroext i16 @_OSSwapInt16(i16 noundef zeroext %4), !dbg !91
  ret i16 %call, !dbg !92
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @OSReadSwapInt32(i8* noundef %_base, i64 noundef %_offset) #0 !dbg !93 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_base.addr, metadata !96, metadata !DIExpression()), !dbg !97
  store i64 %_offset, i64* %_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_offset.addr, metadata !98, metadata !DIExpression()), !dbg !99
  %0 = load i8*, i8** %_base.addr, align 8, !dbg !100
  %1 = ptrtoint i8* %0 to i64, !dbg !101
  %2 = load i64, i64* %_offset.addr, align 8, !dbg !102
  %add = add i64 %1, %2, !dbg !103
  %3 = inttoptr i64 %add to %struct._OSUnalignedU32*, !dbg !104
  %__val = getelementptr inbounds %struct._OSUnalignedU32, %struct._OSUnalignedU32* %3, i32 0, i32 0, !dbg !105
  %4 = load volatile i32, i32* %__val, align 1, !dbg !105
  %call = call i32 @_OSSwapInt32(i32 noundef %4), !dbg !106
  ret i32 %call, !dbg !107
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @OSReadSwapInt64(i8* noundef %_base, i64 noundef %_offset) #0 !dbg !108 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_base.addr, metadata !111, metadata !DIExpression()), !dbg !112
  store i64 %_offset, i64* %_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_offset.addr, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = load i8*, i8** %_base.addr, align 8, !dbg !115
  %1 = ptrtoint i8* %0 to i64, !dbg !116
  %2 = load i64, i64* %_offset.addr, align 8, !dbg !117
  %add = add i64 %1, %2, !dbg !118
  %3 = inttoptr i64 %add to %struct._OSUnalignedU64*, !dbg !119
  %__val = getelementptr inbounds %struct._OSUnalignedU64, %struct._OSUnalignedU64* %3, i32 0, i32 0, !dbg !120
  %4 = load volatile i64, i64* %__val, align 1, !dbg !120
  %call = call i64 @_OSSwapInt64(i64 noundef %4), !dbg !121
  ret i64 %call, !dbg !122
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @OSWriteSwapInt16(i8* noundef %_base, i64 noundef %_offset, i16 noundef zeroext %_data) #0 !dbg !123 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  %_data.addr = alloca i16, align 2
  store i8* %_base, i8** %_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_base.addr, metadata !127, metadata !DIExpression()), !dbg !128
  store i64 %_offset, i64* %_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_offset.addr, metadata !129, metadata !DIExpression()), !dbg !130
  store i16 %_data, i16* %_data.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %_data.addr, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load i16, i16* %_data.addr, align 2, !dbg !133
  %call = call zeroext i16 @_OSSwapInt16(i16 noundef zeroext %0), !dbg !134
  %1 = load i8*, i8** %_base.addr, align 8, !dbg !135
  %2 = ptrtoint i8* %1 to i64, !dbg !136
  %3 = load i64, i64* %_offset.addr, align 8, !dbg !137
  %add = add i64 %2, %3, !dbg !138
  %4 = inttoptr i64 %add to %struct._OSUnalignedU16*, !dbg !139
  %__val = getelementptr inbounds %struct._OSUnalignedU16, %struct._OSUnalignedU16* %4, i32 0, i32 0, !dbg !140
  store volatile i16 %call, i16* %__val, align 1, !dbg !141
  ret void, !dbg !142
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @OSWriteSwapInt32(i8* noundef %_base, i64 noundef %_offset, i32 noundef %_data) #0 !dbg !143 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  %_data.addr = alloca i32, align 4
  store i8* %_base, i8** %_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_base.addr, metadata !146, metadata !DIExpression()), !dbg !147
  store i64 %_offset, i64* %_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_offset.addr, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 %_data, i32* %_data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_data.addr, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load i32, i32* %_data.addr, align 4, !dbg !152
  %call = call i32 @_OSSwapInt32(i32 noundef %0), !dbg !153
  %1 = load i8*, i8** %_base.addr, align 8, !dbg !154
  %2 = ptrtoint i8* %1 to i64, !dbg !155
  %3 = load i64, i64* %_offset.addr, align 8, !dbg !156
  %add = add i64 %2, %3, !dbg !157
  %4 = inttoptr i64 %add to %struct._OSUnalignedU32*, !dbg !158
  %__val = getelementptr inbounds %struct._OSUnalignedU32, %struct._OSUnalignedU32* %4, i32 0, i32 0, !dbg !159
  store volatile i32 %call, i32* %__val, align 1, !dbg !160
  ret void, !dbg !161
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @OSWriteSwapInt64(i8* noundef %_base, i64 noundef %_offset, i64 noundef %_data) #0 !dbg !162 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  %_data.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_base.addr, metadata !165, metadata !DIExpression()), !dbg !166
  store i64 %_offset, i64* %_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_offset.addr, metadata !167, metadata !DIExpression()), !dbg !168
  store i64 %_data, i64* %_data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_data.addr, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = load i64, i64* %_data.addr, align 8, !dbg !171
  %call = call i64 @_OSSwapInt64(i64 noundef %0), !dbg !172
  %1 = load i8*, i8** %_base.addr, align 8, !dbg !173
  %2 = ptrtoint i8* %1 to i64, !dbg !174
  %3 = load i64, i64* %_offset.addr, align 8, !dbg !175
  %add = add i64 %2, %3, !dbg !176
  %4 = inttoptr i64 %add to %struct._OSUnalignedU64*, !dbg !177
  %__val = getelementptr inbounds %struct._OSUnalignedU64, %struct._OSUnalignedU64* %4, i32 0, i32 0, !dbg !178
  store volatile i64 %call, i64* %__val, align 1, !dbg !179
  ret void, !dbg !180
}

declare i32 @__swbuf(i32 noundef, %struct.__sFILE* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 !dbg !181 {
entry:
  %retval = alloca i32, align 4
  %gh_url = alloca i8*, align 8
  %url = alloca i8*, align 8
  %parsed = alloca %struct.url_data*, align 8
  %gh_parsed = alloca %struct.url_data*, align 8
  %s = alloca i8*, align 8
  %s195 = alloca i8*, align 8
  %s217 = alloca i8*, align 8
  %s239 = alloca i8*, align 8
  %s305 = alloca i8*, align 8
  %s327 = alloca i8*, align 8
  %s349 = alloca i8*, align 8
  %s371 = alloca i8*, align 8
  %s393 = alloca i8*, align 8
  %s415 = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i8** %gh_url, metadata !185, metadata !DIExpression()), !dbg !187
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8** %gh_url, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata i8** %url, metadata !188, metadata !DIExpression()), !dbg !189
  store i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.1, i64 0, i64 0), i8** %url, align 8, !dbg !189
  call void @llvm.dbg.declare(metadata %struct.url_data** %parsed, metadata !190, metadata !DIExpression()), !dbg !209
  %0 = load i8*, i8** %url, align 8, !dbg !210
  %call = call %struct.url_data* @url_parse(i8* noundef %0), !dbg !211
  store %struct.url_data* %call, %struct.url_data** %parsed, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata %struct.url_data** %gh_parsed, metadata !212, metadata !DIExpression()), !dbg !213
  %1 = load i8*, i8** %gh_url, align 8, !dbg !214
  %call1 = call %struct.url_data* @url_parse(i8* noundef %1), !dbg !215
  store %struct.url_data* %call1, %struct.url_data** %gh_parsed, align 8, !dbg !213
  %2 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !216
  %tobool = icmp ne %struct.url_data* %2, null, !dbg !216
  %lnot = xor i1 %tobool, true, !dbg !216
  %lnot.ext = zext i1 %lnot to i32, !dbg !216
  %conv = sext i32 %lnot.ext to i64, !dbg !216
  %tobool2 = icmp ne i64 %conv, 0, !dbg !216
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !216

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !216
  unreachable, !dbg !216

3:                                                ; No predecessors!
  br label %cond.end, !dbg !216

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !216

cond.end:                                         ; preds = %cond.false, %3
  %4 = load %struct.url_data*, %struct.url_data** %gh_parsed, align 8, !dbg !217
  %tobool3 = icmp ne %struct.url_data* %4, null, !dbg !217
  %lnot4 = xor i1 %tobool3, true, !dbg !217
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !217
  %conv6 = sext i32 %lnot.ext5 to i64, !dbg !217
  %tobool7 = icmp ne i64 %conv6, 0, !dbg !217
  br i1 %tobool7, label %cond.true8, label %cond.false9, !dbg !217

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !217
  unreachable, !dbg !217

5:                                                ; No predecessors!
  br label %cond.end10, !dbg !217

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10, !dbg !217

cond.end10:                                       ; preds = %cond.false9, %5
  %6 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !218
  call void @url_data_inspect(%struct.url_data* noundef %6), !dbg !219
  %7 = load %struct.url_data*, %struct.url_data** %gh_parsed, align 8, !dbg !220
  call void @url_data_inspect(%struct.url_data* noundef %7), !dbg !221
  %8 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !222
  %whole_url = getelementptr inbounds %struct.url_data, %struct.url_data* %8, i32 0, i32 0, !dbg !222
  %9 = load i8*, i8** %whole_url, align 8, !dbg !222
  %tobool11 = icmp ne i8* %9, null, !dbg !222
  %lnot12 = xor i1 %tobool11, true, !dbg !222
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !222
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !222
  %tobool15 = icmp ne i64 %conv14, 0, !dbg !222
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !222

cond.true16:                                      ; preds = %cond.end10
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !222
  unreachable, !dbg !222

10:                                               ; No predecessors!
  br label %cond.end18, !dbg !222

cond.false17:                                     ; preds = %cond.end10
  br label %cond.end18, !dbg !222

cond.end18:                                       ; preds = %cond.false17, %10
  %11 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !223
  %protocol = getelementptr inbounds %struct.url_data, %struct.url_data* %11, i32 0, i32 1, !dbg !223
  %12 = load i8*, i8** %protocol, align 8, !dbg !223
  %tobool19 = icmp ne i8* %12, null, !dbg !223
  %lnot20 = xor i1 %tobool19, true, !dbg !223
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !223
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !223
  %tobool23 = icmp ne i64 %conv22, 0, !dbg !223
  br i1 %tobool23, label %cond.true24, label %cond.false25, !dbg !223

cond.true24:                                      ; preds = %cond.end18
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !223
  unreachable, !dbg !223

13:                                               ; No predecessors!
  br label %cond.end26, !dbg !223

cond.false25:                                     ; preds = %cond.end18
  br label %cond.end26, !dbg !223

cond.end26:                                       ; preds = %cond.false25, %13
  %14 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !224
  %userinfo = getelementptr inbounds %struct.url_data, %struct.url_data* %14, i32 0, i32 2, !dbg !224
  %15 = load i8*, i8** %userinfo, align 8, !dbg !224
  %tobool27 = icmp ne i8* %15, null, !dbg !224
  %lnot28 = xor i1 %tobool27, true, !dbg !224
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !224
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !224
  %tobool31 = icmp ne i64 %conv30, 0, !dbg !224
  br i1 %tobool31, label %cond.true32, label %cond.false33, !dbg !224

cond.true32:                                      ; preds = %cond.end26
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !224
  unreachable, !dbg !224

16:                                               ; No predecessors!
  br label %cond.end34, !dbg !224

cond.false33:                                     ; preds = %cond.end26
  br label %cond.end34, !dbg !224

cond.end34:                                       ; preds = %cond.false33, %16
  %17 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !225
  %host = getelementptr inbounds %struct.url_data, %struct.url_data* %17, i32 0, i32 3, !dbg !225
  %18 = load i8*, i8** %host, align 8, !dbg !225
  %tobool35 = icmp ne i8* %18, null, !dbg !225
  %lnot36 = xor i1 %tobool35, true, !dbg !225
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !225
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !225
  %tobool39 = icmp ne i64 %conv38, 0, !dbg !225
  br i1 %tobool39, label %cond.true40, label %cond.false41, !dbg !225

cond.true40:                                      ; preds = %cond.end34
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !225
  unreachable, !dbg !225

19:                                               ; No predecessors!
  br label %cond.end42, !dbg !225

cond.false41:                                     ; preds = %cond.end34
  br label %cond.end42, !dbg !225

cond.end42:                                       ; preds = %cond.false41, %19
  %20 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !226
  %port = getelementptr inbounds %struct.url_data, %struct.url_data* %20, i32 0, i32 4, !dbg !226
  %21 = load i8*, i8** %port, align 8, !dbg !226
  %tobool43 = icmp ne i8* %21, null, !dbg !226
  %lnot44 = xor i1 %tobool43, true, !dbg !226
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !226
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !226
  %tobool47 = icmp ne i64 %conv46, 0, !dbg !226
  br i1 %tobool47, label %cond.true48, label %cond.false49, !dbg !226

cond.true48:                                      ; preds = %cond.end42
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !226
  unreachable, !dbg !226

22:                                               ; No predecessors!
  br label %cond.end50, !dbg !226

cond.false49:                                     ; preds = %cond.end42
  br label %cond.end50, !dbg !226

cond.end50:                                       ; preds = %cond.false49, %22
  %23 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !227
  %path = getelementptr inbounds %struct.url_data, %struct.url_data* %23, i32 0, i32 5, !dbg !227
  %24 = load i8*, i8** %path, align 8, !dbg !227
  %tobool51 = icmp ne i8* %24, null, !dbg !227
  %lnot52 = xor i1 %tobool51, true, !dbg !227
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !227
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !227
  %tobool55 = icmp ne i64 %conv54, 0, !dbg !227
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !227

cond.true56:                                      ; preds = %cond.end50
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0)) #4, !dbg !227
  unreachable, !dbg !227

25:                                               ; No predecessors!
  br label %cond.end58, !dbg !227

cond.false57:                                     ; preds = %cond.end50
  br label %cond.end58, !dbg !227

cond.end58:                                       ; preds = %cond.false57, %25
  %26 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !228
  %query = getelementptr inbounds %struct.url_data, %struct.url_data* %26, i32 0, i32 6, !dbg !228
  %27 = load %struct.url_key_value*, %struct.url_key_value** %query, align 8, !dbg !228
  %tobool59 = icmp ne %struct.url_key_value* %27, null, !dbg !228
  %lnot60 = xor i1 %tobool59, true, !dbg !228
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !228
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !228
  %tobool63 = icmp ne i64 %conv62, 0, !dbg !228
  br i1 %tobool63, label %cond.true64, label %cond.false65, !dbg !228

cond.true64:                                      ; preds = %cond.end58
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0)) #4, !dbg !228
  unreachable, !dbg !228

28:                                               ; No predecessors!
  br label %cond.end66, !dbg !228

cond.false65:                                     ; preds = %cond.end58
  br label %cond.end66, !dbg !228

cond.end66:                                       ; preds = %cond.false65, %28
  %29 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !229
  %fragment = getelementptr inbounds %struct.url_data, %struct.url_data* %29, i32 0, i32 7, !dbg !229
  %30 = load i8*, i8** %fragment, align 8, !dbg !229
  %tobool67 = icmp ne i8* %30, null, !dbg !229
  %lnot68 = xor i1 %tobool67, true, !dbg !229
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !229
  %conv70 = sext i32 %lnot.ext69 to i64, !dbg !229
  %tobool71 = icmp ne i64 %conv70, 0, !dbg !229
  br i1 %tobool71, label %cond.true72, label %cond.false73, !dbg !229

cond.true72:                                      ; preds = %cond.end66
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !229
  unreachable, !dbg !229

31:                                               ; No predecessors!
  br label %cond.end74, !dbg !229

cond.false73:                                     ; preds = %cond.end66
  br label %cond.end74, !dbg !229

cond.end74:                                       ; preds = %cond.false73, %31
  %32 = load %struct.url_data*, %struct.url_data** %gh_parsed, align 8, !dbg !230
  %whole_url75 = getelementptr inbounds %struct.url_data, %struct.url_data* %32, i32 0, i32 0, !dbg !230
  %33 = load i8*, i8** %whole_url75, align 8, !dbg !230
  %tobool76 = icmp ne i8* %33, null, !dbg !230
  %lnot77 = xor i1 %tobool76, true, !dbg !230
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !230
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !230
  %tobool80 = icmp ne i64 %conv79, 0, !dbg !230
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !230

cond.true81:                                      ; preds = %cond.end74
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0)) #4, !dbg !230
  unreachable, !dbg !230

34:                                               ; No predecessors!
  br label %cond.end83, !dbg !230

cond.false82:                                     ; preds = %cond.end74
  br label %cond.end83, !dbg !230

cond.end83:                                       ; preds = %cond.false82, %34
  %35 = load %struct.url_data*, %struct.url_data** %gh_parsed, align 8, !dbg !231
  %protocol84 = getelementptr inbounds %struct.url_data, %struct.url_data* %35, i32 0, i32 1, !dbg !231
  %36 = load i8*, i8** %protocol84, align 8, !dbg !231
  %tobool85 = icmp ne i8* %36, null, !dbg !231
  %lnot86 = xor i1 %tobool85, true, !dbg !231
  %lnot.ext87 = zext i1 %lnot86 to i32, !dbg !231
  %conv88 = sext i32 %lnot.ext87 to i64, !dbg !231
  %tobool89 = icmp ne i64 %conv88, 0, !dbg !231
  br i1 %tobool89, label %cond.true90, label %cond.false91, !dbg !231

cond.true90:                                      ; preds = %cond.end83
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !231
  unreachable, !dbg !231

37:                                               ; No predecessors!
  br label %cond.end92, !dbg !231

cond.false91:                                     ; preds = %cond.end83
  br label %cond.end92, !dbg !231

cond.end92:                                       ; preds = %cond.false91, %37
  %38 = load %struct.url_data*, %struct.url_data** %gh_parsed, align 8, !dbg !232
  %userinfo93 = getelementptr inbounds %struct.url_data, %struct.url_data* %38, i32 0, i32 2, !dbg !232
  %39 = load i8*, i8** %userinfo93, align 8, !dbg !232
  %tobool94 = icmp ne i8* %39, null, !dbg !232
  %lnot95 = xor i1 %tobool94, true, !dbg !232
  %lnot.ext96 = zext i1 %lnot95 to i32, !dbg !232
  %conv97 = sext i32 %lnot.ext96 to i64, !dbg !232
  %tobool98 = icmp ne i64 %conv97, 0, !dbg !232
  br i1 %tobool98, label %cond.true99, label %cond.false100, !dbg !232

cond.true99:                                      ; preds = %cond.end92
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #4, !dbg !232
  unreachable, !dbg !232

40:                                               ; No predecessors!
  br label %cond.end101, !dbg !232

cond.false100:                                    ; preds = %cond.end92
  br label %cond.end101, !dbg !232

cond.end101:                                      ; preds = %cond.false100, %40
  %41 = load %struct.url_data*, %struct.url_data** %gh_parsed, align 8, !dbg !233
  %host102 = getelementptr inbounds %struct.url_data, %struct.url_data* %41, i32 0, i32 3, !dbg !233
  %42 = load i8*, i8** %host102, align 8, !dbg !233
  %tobool103 = icmp ne i8* %42, null, !dbg !233
  %lnot104 = xor i1 %tobool103, true, !dbg !233
  %lnot.ext105 = zext i1 %lnot104 to i32, !dbg !233
  %conv106 = sext i32 %lnot.ext105 to i64, !dbg !233
  %tobool107 = icmp ne i64 %conv106, 0, !dbg !233
  br i1 %tobool107, label %cond.true108, label %cond.false109, !dbg !233

cond.true108:                                     ; preds = %cond.end101
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !233
  unreachable, !dbg !233

43:                                               ; No predecessors!
  br label %cond.end110, !dbg !233

cond.false109:                                    ; preds = %cond.end101
  br label %cond.end110, !dbg !233

cond.end110:                                      ; preds = %cond.false109, %43
  %44 = load %struct.url_data*, %struct.url_data** %gh_parsed, align 8, !dbg !234
  %path111 = getelementptr inbounds %struct.url_data, %struct.url_data* %44, i32 0, i32 5, !dbg !234
  %45 = load i8*, i8** %path111, align 8, !dbg !234
  %tobool112 = icmp ne i8* %45, null, !dbg !234
  %lnot113 = xor i1 %tobool112, true, !dbg !234
  %lnot.ext114 = zext i1 %lnot113 to i32, !dbg !234
  %conv115 = sext i32 %lnot.ext114 to i64, !dbg !234
  %tobool116 = icmp ne i64 %conv115, 0, !dbg !234
  br i1 %tobool116, label %cond.true117, label %cond.false118, !dbg !234

cond.true117:                                     ; preds = %cond.end110
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #4, !dbg !234
  unreachable, !dbg !234

46:                                               ; No predecessors!
  br label %cond.end119, !dbg !234

cond.false118:                                    ; preds = %cond.end110
  br label %cond.end119, !dbg !234

cond.end119:                                      ; preds = %cond.false118, %46
  %call120 = call zeroext i1 @url_is_protocol(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)), !dbg !235
  %lnot121 = xor i1 %call120, true, !dbg !235
  %lnot.ext122 = zext i1 %lnot121 to i32, !dbg !235
  %conv123 = sext i32 %lnot.ext122 to i64, !dbg !235
  %tobool124 = icmp ne i64 %conv123, 0, !dbg !235
  br i1 %tobool124, label %cond.true125, label %cond.false126, !dbg !235

cond.true125:                                     ; preds = %cond.end119
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #4, !dbg !235
  unreachable, !dbg !235

47:                                               ; No predecessors!
  br label %cond.end127, !dbg !235

cond.false126:                                    ; preds = %cond.end119
  br label %cond.end127, !dbg !235

cond.end127:                                      ; preds = %cond.false126, %47
  %call128 = call zeroext i1 @url_is_protocol(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)), !dbg !236
  %lnot129 = xor i1 %call128, true, !dbg !236
  %lnot.ext130 = zext i1 %lnot129 to i32, !dbg !236
  %conv131 = sext i32 %lnot.ext130 to i64, !dbg !236
  %tobool132 = icmp ne i64 %conv131, 0, !dbg !236
  br i1 %tobool132, label %cond.true133, label %cond.false134, !dbg !236

cond.true133:                                     ; preds = %cond.end127
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !236
  unreachable, !dbg !236

48:                                               ; No predecessors!
  br label %cond.end135, !dbg !236

cond.false134:                                    ; preds = %cond.end127
  br label %cond.end135, !dbg !236

cond.end135:                                      ; preds = %cond.false134, %48
  %call136 = call zeroext i1 @url_is_protocol(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)), !dbg !237
  %lnot137 = xor i1 %call136, true, !dbg !237
  %lnot.ext138 = zext i1 %lnot137 to i32, !dbg !237
  %conv139 = sext i32 %lnot.ext138 to i64, !dbg !237
  %tobool140 = icmp ne i64 %conv139, 0, !dbg !237
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !237

cond.true141:                                     ; preds = %cond.end135
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0)) #4, !dbg !237
  unreachable, !dbg !237

49:                                               ; No predecessors!
  br label %cond.end143, !dbg !237

cond.false142:                                    ; preds = %cond.end135
  br label %cond.end143, !dbg !237

cond.end143:                                      ; preds = %cond.false142, %49
  %call144 = call zeroext i1 @url_is_protocol(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)), !dbg !238
  %lnot145 = xor i1 %call144, true, !dbg !238
  %lnot.ext146 = zext i1 %lnot145 to i32, !dbg !238
  %conv147 = sext i32 %lnot.ext146 to i64, !dbg !238
  %tobool148 = icmp ne i64 %conv147, 0, !dbg !238
  br i1 %tobool148, label %cond.true149, label %cond.false150, !dbg !238

cond.true149:                                     ; preds = %cond.end143
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0)) #4, !dbg !238
  unreachable, !dbg !238

50:                                               ; No predecessors!
  br label %cond.end151, !dbg !238

cond.false150:                                    ; preds = %cond.end143
  br label %cond.end151, !dbg !238

cond.end151:                                      ; preds = %cond.false150, %50
  %call152 = call zeroext i1 @url_is_protocol(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)), !dbg !239
  %lnot153 = xor i1 %call152, true, !dbg !239
  %lnot.ext154 = zext i1 %lnot153 to i32, !dbg !239
  %conv155 = sext i32 %lnot.ext154 to i64, !dbg !239
  %tobool156 = icmp ne i64 %conv155, 0, !dbg !239
  br i1 %tobool156, label %cond.true157, label %cond.false158, !dbg !239

cond.true157:                                     ; preds = %cond.end151
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0)) #4, !dbg !239
  unreachable, !dbg !239

51:                                               ; No predecessors!
  br label %cond.end159, !dbg !239

cond.false158:                                    ; preds = %cond.end151
  br label %cond.end159, !dbg !239

cond.end159:                                      ; preds = %cond.false158, %51
  %call160 = call zeroext i1 @url_is_protocol(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)), !dbg !240
  %lnot161 = xor i1 %call160, true, !dbg !240
  %lnot.ext162 = zext i1 %lnot161 to i32, !dbg !240
  %conv163 = sext i32 %lnot.ext162 to i64, !dbg !240
  %tobool164 = icmp ne i64 %conv163, 0, !dbg !240
  br i1 %tobool164, label %cond.true165, label %cond.false166, !dbg !240

cond.true165:                                     ; preds = %cond.end159
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0)) #4, !dbg !240
  unreachable, !dbg !240

52:                                               ; No predecessors!
  br label %cond.end167, !dbg !240

cond.false166:                                    ; preds = %cond.end159
  br label %cond.end167, !dbg !240

cond.end167:                                      ; preds = %cond.false166, %52
  %call168 = call zeroext i1 @url_is_protocol(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0)), !dbg !241
  %lnot169 = xor i1 %call168, true, !dbg !241
  %lnot.ext170 = zext i1 %lnot169 to i32, !dbg !241
  %conv171 = sext i32 %lnot.ext170 to i64, !dbg !241
  %tobool172 = icmp ne i64 %conv171, 0, !dbg !241
  br i1 %tobool172, label %cond.true173, label %cond.false174, !dbg !241

cond.true173:                                     ; preds = %cond.end167
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0)) #4, !dbg !241
  unreachable, !dbg !241

53:                                               ; No predecessors!
  br label %cond.end175, !dbg !241

cond.false174:                                    ; preds = %cond.end167
  br label %cond.end175, !dbg !241

cond.end175:                                      ; preds = %cond.false174, %53
  br label %do.body, !dbg !242

do.body:                                          ; preds = %cond.end175
  call void @llvm.dbg.declare(metadata i8** %s, metadata !243, metadata !DIExpression()), !dbg !245
  %54 = load i8*, i8** %url, align 8, !dbg !245
  %call176 = call i8* @url_get_protocol(i8* noundef %54), !dbg !245
  store i8* %call176, i8** %s, align 8, !dbg !245
  %55 = load i8*, i8** %s, align 8, !dbg !245
  %tobool177 = icmp ne i8* %55, null, !dbg !245
  %lnot178 = xor i1 %tobool177, true, !dbg !245
  %lnot.ext179 = zext i1 %lnot178 to i32, !dbg !245
  %conv180 = sext i32 %lnot.ext179 to i64, !dbg !245
  %tobool181 = icmp ne i64 %conv180, 0, !dbg !245
  br i1 %tobool181, label %cond.true182, label %cond.false183, !dbg !245

cond.true182:                                     ; preds = %do.body
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !245
  unreachable, !dbg !245

56:                                               ; No predecessors!
  br label %cond.end184, !dbg !245

cond.false183:                                    ; preds = %do.body
  br label %cond.end184, !dbg !245

cond.end184:                                      ; preds = %cond.false183, %56
  %57 = load i8*, i8** %s, align 8, !dbg !245
  %call185 = call i32 @strcmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* noundef %57), !dbg !245
  %cmp = icmp eq i32 %call185, 0, !dbg !245
  %lnot187 = xor i1 %cmp, true, !dbg !245
  %lnot.ext188 = zext i1 %lnot187 to i32, !dbg !245
  %conv189 = sext i32 %lnot.ext188 to i64, !dbg !245
  %tobool190 = icmp ne i64 %conv189, 0, !dbg !245
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !245

cond.true191:                                     ; preds = %cond.end184
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0)) #4, !dbg !245
  unreachable, !dbg !245

58:                                               ; No predecessors!
  br label %cond.end193, !dbg !245

cond.false192:                                    ; preds = %cond.end184
  br label %cond.end193, !dbg !245

cond.end193:                                      ; preds = %cond.false192, %58
  %59 = load i8*, i8** %s, align 8, !dbg !245
  call void @free(i8* noundef %59), !dbg !245
  br label %do.end, !dbg !245

do.end:                                           ; preds = %cond.end193
  br label %do.body194, !dbg !246

do.body194:                                       ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8** %s195, metadata !247, metadata !DIExpression()), !dbg !249
  %60 = load i8*, i8** %url, align 8, !dbg !249
  %call196 = call i8* @url_get_userinfo(i8* noundef %60), !dbg !249
  store i8* %call196, i8** %s195, align 8, !dbg !249
  %61 = load i8*, i8** %s195, align 8, !dbg !249
  %tobool197 = icmp ne i8* %61, null, !dbg !249
  %lnot198 = xor i1 %tobool197, true, !dbg !249
  %lnot.ext199 = zext i1 %lnot198 to i32, !dbg !249
  %conv200 = sext i32 %lnot.ext199 to i64, !dbg !249
  %tobool201 = icmp ne i64 %conv200, 0, !dbg !249
  br i1 %tobool201, label %cond.true202, label %cond.false203, !dbg !249

cond.true202:                                     ; preds = %do.body194
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !249
  unreachable, !dbg !249

62:                                               ; No predecessors!
  br label %cond.end204, !dbg !249

cond.false203:                                    ; preds = %do.body194
  br label %cond.end204, !dbg !249

cond.end204:                                      ; preds = %cond.false203, %62
  %63 = load i8*, i8** %s195, align 8, !dbg !249
  %call205 = call i32 @strcmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* noundef %63), !dbg !249
  %cmp206 = icmp eq i32 %call205, 0, !dbg !249
  %lnot208 = xor i1 %cmp206, true, !dbg !249
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !249
  %conv210 = sext i32 %lnot.ext209 to i64, !dbg !249
  %tobool211 = icmp ne i64 %conv210, 0, !dbg !249
  br i1 %tobool211, label %cond.true212, label %cond.false213, !dbg !249

cond.true212:                                     ; preds = %cond.end204
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !249
  unreachable, !dbg !249

64:                                               ; No predecessors!
  br label %cond.end214, !dbg !249

cond.false213:                                    ; preds = %cond.end204
  br label %cond.end214, !dbg !249

cond.end214:                                      ; preds = %cond.false213, %64
  %65 = load i8*, i8** %s195, align 8, !dbg !249
  call void @free(i8* noundef %65), !dbg !249
  br label %do.end215, !dbg !249

do.end215:                                        ; preds = %cond.end214
  br label %do.body216, !dbg !250

do.body216:                                       ; preds = %do.end215
  call void @llvm.dbg.declare(metadata i8** %s217, metadata !251, metadata !DIExpression()), !dbg !253
  %66 = load i8*, i8** %url, align 8, !dbg !253
  %call218 = call i8* @url_get_hostname(i8* noundef %66), !dbg !253
  store i8* %call218, i8** %s217, align 8, !dbg !253
  %67 = load i8*, i8** %s217, align 8, !dbg !253
  %tobool219 = icmp ne i8* %67, null, !dbg !253
  %lnot220 = xor i1 %tobool219, true, !dbg !253
  %lnot.ext221 = zext i1 %lnot220 to i32, !dbg !253
  %conv222 = sext i32 %lnot.ext221 to i64, !dbg !253
  %tobool223 = icmp ne i64 %conv222, 0, !dbg !253
  br i1 %tobool223, label %cond.true224, label %cond.false225, !dbg !253

cond.true224:                                     ; preds = %do.body216
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !253
  unreachable, !dbg !253

68:                                               ; No predecessors!
  br label %cond.end226, !dbg !253

cond.false225:                                    ; preds = %do.body216
  br label %cond.end226, !dbg !253

cond.end226:                                      ; preds = %cond.false225, %68
  %69 = load i8*, i8** %s217, align 8, !dbg !253
  %call227 = call i32 @strcmp(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0), i8* noundef %69), !dbg !253
  %cmp228 = icmp eq i32 %call227, 0, !dbg !253
  %lnot230 = xor i1 %cmp228, true, !dbg !253
  %lnot.ext231 = zext i1 %lnot230 to i32, !dbg !253
  %conv232 = sext i32 %lnot.ext231 to i64, !dbg !253
  %tobool233 = icmp ne i64 %conv232, 0, !dbg !253
  br i1 %tobool233, label %cond.true234, label %cond.false235, !dbg !253

cond.true234:                                     ; preds = %cond.end226
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i64 0, i64 0)) #4, !dbg !253
  unreachable, !dbg !253

70:                                               ; No predecessors!
  br label %cond.end236, !dbg !253

cond.false235:                                    ; preds = %cond.end226
  br label %cond.end236, !dbg !253

cond.end236:                                      ; preds = %cond.false235, %70
  %71 = load i8*, i8** %s217, align 8, !dbg !253
  call void @free(i8* noundef %71), !dbg !253
  br label %do.end237, !dbg !253

do.end237:                                        ; preds = %cond.end236
  br label %do.body238, !dbg !254

do.body238:                                       ; preds = %do.end237
  call void @llvm.dbg.declare(metadata i8** %s239, metadata !255, metadata !DIExpression()), !dbg !257
  %72 = load i8*, i8** %url, align 8, !dbg !257
  %call240 = call i8* @url_get_path(i8* noundef %72), !dbg !257
  store i8* %call240, i8** %s239, align 8, !dbg !257
  %73 = load i8*, i8** %s239, align 8, !dbg !257
  %tobool241 = icmp ne i8* %73, null, !dbg !257
  %lnot242 = xor i1 %tobool241, true, !dbg !257
  %lnot.ext243 = zext i1 %lnot242 to i32, !dbg !257
  %conv244 = sext i32 %lnot.ext243 to i64, !dbg !257
  %tobool245 = icmp ne i64 %conv244, 0, !dbg !257
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !257

cond.true246:                                     ; preds = %do.body238
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !257
  unreachable, !dbg !257

74:                                               ; No predecessors!
  br label %cond.end248, !dbg !257

cond.false247:                                    ; preds = %do.body238
  br label %cond.end248, !dbg !257

cond.end248:                                      ; preds = %cond.false247, %74
  %75 = load i8*, i8** %s239, align 8, !dbg !257
  %call249 = call i32 @strcmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i8* noundef %75), !dbg !257
  %cmp250 = icmp eq i32 %call249, 0, !dbg !257
  %lnot252 = xor i1 %cmp250, true, !dbg !257
  %lnot.ext253 = zext i1 %lnot252 to i32, !dbg !257
  %conv254 = sext i32 %lnot.ext253 to i64, !dbg !257
  %tobool255 = icmp ne i64 %conv254, 0, !dbg !257
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !257

cond.true256:                                     ; preds = %cond.end248
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0)) #4, !dbg !257
  unreachable, !dbg !257

76:                                               ; No predecessors!
  br label %cond.end258, !dbg !257

cond.false257:                                    ; preds = %cond.end248
  br label %cond.end258, !dbg !257

cond.end258:                                      ; preds = %cond.false257, %76
  %77 = load i8*, i8** %s239, align 8, !dbg !257
  call void @free(i8* noundef %77), !dbg !257
  br label %do.end259, !dbg !257

do.end259:                                        ; preds = %cond.end258
  %78 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !258
  %call260 = call i8* @url_get_query_value(%struct.url_data* noundef %78, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0)), !dbg !258
  %call261 = call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i8* noundef %call260), !dbg !258
  %cmp262 = icmp eq i32 %call261, 0, !dbg !258
  %lnot264 = xor i1 %cmp262, true, !dbg !258
  %lnot.ext265 = zext i1 %lnot264 to i32, !dbg !258
  %conv266 = sext i32 %lnot.ext265 to i64, !dbg !258
  %tobool267 = icmp ne i64 %conv266, 0, !dbg !258
  br i1 %tobool267, label %cond.true268, label %cond.false269, !dbg !258

cond.true268:                                     ; preds = %do.end259
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.42, i64 0, i64 0)) #4, !dbg !258
  unreachable, !dbg !258

79:                                               ; No predecessors!
  br label %cond.end270, !dbg !258

cond.false269:                                    ; preds = %do.end259
  br label %cond.end270, !dbg !258

cond.end270:                                      ; preds = %cond.false269, %79
  %80 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !259
  %call271 = call i8* @url_get_query_value(%struct.url_data* noundef %80, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)), !dbg !259
  %call272 = call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), i8* noundef %call271), !dbg !259
  %cmp273 = icmp eq i32 %call272, 0, !dbg !259
  %lnot275 = xor i1 %cmp273, true, !dbg !259
  %lnot.ext276 = zext i1 %lnot275 to i32, !dbg !259
  %conv277 = sext i32 %lnot.ext276 to i64, !dbg !259
  %tobool278 = icmp ne i64 %conv277, 0, !dbg !259
  br i1 %tobool278, label %cond.true279, label %cond.false280, !dbg !259

cond.true279:                                     ; preds = %cond.end270
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.45, i64 0, i64 0)) #4, !dbg !259
  unreachable, !dbg !259

81:                                               ; No predecessors!
  br label %cond.end281, !dbg !259

cond.false280:                                    ; preds = %cond.end270
  br label %cond.end281, !dbg !259

cond.end281:                                      ; preds = %cond.false280, %81
  %82 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !260
  %call282 = call i8* @url_get_query_value(%struct.url_data* noundef %82, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0)), !dbg !260
  %call283 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* noundef %call282), !dbg !260
  %cmp284 = icmp eq i32 %call283, 0, !dbg !260
  %lnot286 = xor i1 %cmp284, true, !dbg !260
  %lnot.ext287 = zext i1 %lnot286 to i32, !dbg !260
  %conv288 = sext i32 %lnot.ext287 to i64, !dbg !260
  %tobool289 = icmp ne i64 %conv288, 0, !dbg !260
  br i1 %tobool289, label %cond.true290, label %cond.false291, !dbg !260

cond.true290:                                     ; preds = %cond.end281
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.48, i64 0, i64 0)) #4, !dbg !260
  unreachable, !dbg !260

83:                                               ; No predecessors!
  br label %cond.end292, !dbg !260

cond.false291:                                    ; preds = %cond.end281
  br label %cond.end292, !dbg !260

cond.end292:                                      ; preds = %cond.false291, %83
  %84 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !261
  %call293 = call i8* @url_get_query_value(%struct.url_data* noundef %84, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0)), !dbg !261
  %call294 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.49, i64 0, i64 0), i8* noundef %call293), !dbg !261
  %cmp295 = icmp eq i32 %call294, 0, !dbg !261
  %lnot297 = xor i1 %cmp295, true, !dbg !261
  %lnot.ext298 = zext i1 %lnot297 to i32, !dbg !261
  %conv299 = sext i32 %lnot.ext298 to i64, !dbg !261
  %tobool300 = icmp ne i64 %conv299, 0, !dbg !261
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !261

cond.true301:                                     ; preds = %cond.end292
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0)) #4, !dbg !261
  unreachable, !dbg !261

85:                                               ; No predecessors!
  br label %cond.end303, !dbg !261

cond.false302:                                    ; preds = %cond.end292
  br label %cond.end303, !dbg !261

cond.end303:                                      ; preds = %cond.false302, %85
  br label %do.body304, !dbg !262

do.body304:                                       ; preds = %cond.end303
  call void @llvm.dbg.declare(metadata i8** %s305, metadata !263, metadata !DIExpression()), !dbg !265
  %86 = load i8*, i8** %url, align 8, !dbg !265
  %call306 = call i8* @url_get_fragment(i8* noundef %86), !dbg !265
  store i8* %call306, i8** %s305, align 8, !dbg !265
  %87 = load i8*, i8** %s305, align 8, !dbg !265
  %tobool307 = icmp ne i8* %87, null, !dbg !265
  %lnot308 = xor i1 %tobool307, true, !dbg !265
  %lnot.ext309 = zext i1 %lnot308 to i32, !dbg !265
  %conv310 = sext i32 %lnot.ext309 to i64, !dbg !265
  %tobool311 = icmp ne i64 %conv310, 0, !dbg !265
  br i1 %tobool311, label %cond.true312, label %cond.false313, !dbg !265

cond.true312:                                     ; preds = %do.body304
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !265
  unreachable, !dbg !265

88:                                               ; No predecessors!
  br label %cond.end314, !dbg !265

cond.false313:                                    ; preds = %do.body304
  br label %cond.end314, !dbg !265

cond.end314:                                      ; preds = %cond.false313, %88
  %89 = load i8*, i8** %s305, align 8, !dbg !265
  %call315 = call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* noundef %89), !dbg !265
  %cmp316 = icmp eq i32 %call315, 0, !dbg !265
  %lnot318 = xor i1 %cmp316, true, !dbg !265
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !265
  %conv320 = sext i32 %lnot.ext319 to i64, !dbg !265
  %tobool321 = icmp ne i64 %conv320, 0, !dbg !265
  br i1 %tobool321, label %cond.true322, label %cond.false323, !dbg !265

cond.true322:                                     ; preds = %cond.end314
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0)) #4, !dbg !265
  unreachable, !dbg !265

90:                                               ; No predecessors!
  br label %cond.end324, !dbg !265

cond.false323:                                    ; preds = %cond.end314
  br label %cond.end324, !dbg !265

cond.end324:                                      ; preds = %cond.false323, %90
  %91 = load i8*, i8** %s305, align 8, !dbg !265
  call void @free(i8* noundef %91), !dbg !265
  br label %do.end325, !dbg !265

do.end325:                                        ; preds = %cond.end324
  br label %do.body326, !dbg !266

do.body326:                                       ; preds = %do.end325
  call void @llvm.dbg.declare(metadata i8** %s327, metadata !267, metadata !DIExpression()), !dbg !269
  %92 = load i8*, i8** %url, align 8, !dbg !269
  %call328 = call i8* @url_get_port(i8* noundef %92), !dbg !269
  store i8* %call328, i8** %s327, align 8, !dbg !269
  %93 = load i8*, i8** %s327, align 8, !dbg !269
  %tobool329 = icmp ne i8* %93, null, !dbg !269
  %lnot330 = xor i1 %tobool329, true, !dbg !269
  %lnot.ext331 = zext i1 %lnot330 to i32, !dbg !269
  %conv332 = sext i32 %lnot.ext331 to i64, !dbg !269
  %tobool333 = icmp ne i64 %conv332, 0, !dbg !269
  br i1 %tobool333, label %cond.true334, label %cond.false335, !dbg !269

cond.true334:                                     ; preds = %do.body326
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !269
  unreachable, !dbg !269

94:                                               ; No predecessors!
  br label %cond.end336, !dbg !269

cond.false335:                                    ; preds = %do.body326
  br label %cond.end336, !dbg !269

cond.end336:                                      ; preds = %cond.false335, %94
  %95 = load i8*, i8** %s327, align 8, !dbg !269
  %call337 = call i32 @strcmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* noundef %95), !dbg !269
  %cmp338 = icmp eq i32 %call337, 0, !dbg !269
  %lnot340 = xor i1 %cmp338, true, !dbg !269
  %lnot.ext341 = zext i1 %lnot340 to i32, !dbg !269
  %conv342 = sext i32 %lnot.ext341 to i64, !dbg !269
  %tobool343 = icmp ne i64 %conv342, 0, !dbg !269
  br i1 %tobool343, label %cond.true344, label %cond.false345, !dbg !269

cond.true344:                                     ; preds = %cond.end336
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0)) #4, !dbg !269
  unreachable, !dbg !269

96:                                               ; No predecessors!
  br label %cond.end346, !dbg !269

cond.false345:                                    ; preds = %cond.end336
  br label %cond.end346, !dbg !269

cond.end346:                                      ; preds = %cond.false345, %96
  %97 = load i8*, i8** %s327, align 8, !dbg !269
  call void @free(i8* noundef %97), !dbg !269
  br label %do.end347, !dbg !269

do.end347:                                        ; preds = %cond.end346
  br label %do.body348, !dbg !270

do.body348:                                       ; preds = %do.end347
  call void @llvm.dbg.declare(metadata i8** %s349, metadata !271, metadata !DIExpression()), !dbg !273
  %98 = load i8*, i8** %gh_url, align 8, !dbg !273
  %call350 = call i8* @url_get_protocol(i8* noundef %98), !dbg !273
  store i8* %call350, i8** %s349, align 8, !dbg !273
  %99 = load i8*, i8** %s349, align 8, !dbg !273
  %tobool351 = icmp ne i8* %99, null, !dbg !273
  %lnot352 = xor i1 %tobool351, true, !dbg !273
  %lnot.ext353 = zext i1 %lnot352 to i32, !dbg !273
  %conv354 = sext i32 %lnot.ext353 to i64, !dbg !273
  %tobool355 = icmp ne i64 %conv354, 0, !dbg !273
  br i1 %tobool355, label %cond.true356, label %cond.false357, !dbg !273

cond.true356:                                     ; preds = %do.body348
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !273
  unreachable, !dbg !273

100:                                              ; No predecessors!
  br label %cond.end358, !dbg !273

cond.false357:                                    ; preds = %do.body348
  br label %cond.end358, !dbg !273

cond.end358:                                      ; preds = %cond.false357, %100
  %101 = load i8*, i8** %s349, align 8, !dbg !273
  %call359 = call i32 @strcmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* noundef %101), !dbg !273
  %cmp360 = icmp eq i32 %call359, 0, !dbg !273
  %lnot362 = xor i1 %cmp360, true, !dbg !273
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !273
  %conv364 = sext i32 %lnot.ext363 to i64, !dbg !273
  %tobool365 = icmp ne i64 %conv364, 0, !dbg !273
  br i1 %tobool365, label %cond.true366, label %cond.false367, !dbg !273

cond.true366:                                     ; preds = %cond.end358
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i64 0, i64 0)) #4, !dbg !273
  unreachable, !dbg !273

102:                                              ; No predecessors!
  br label %cond.end368, !dbg !273

cond.false367:                                    ; preds = %cond.end358
  br label %cond.end368, !dbg !273

cond.end368:                                      ; preds = %cond.false367, %102
  %103 = load i8*, i8** %s349, align 8, !dbg !273
  call void @free(i8* noundef %103), !dbg !273
  br label %do.end369, !dbg !273

do.end369:                                        ; preds = %cond.end368
  br label %do.body370, !dbg !274

do.body370:                                       ; preds = %do.end369
  call void @llvm.dbg.declare(metadata i8** %s371, metadata !275, metadata !DIExpression()), !dbg !277
  %104 = load i8*, i8** %gh_url, align 8, !dbg !277
  %call372 = call i8* @url_get_hostname(i8* noundef %104), !dbg !277
  store i8* %call372, i8** %s371, align 8, !dbg !277
  %105 = load i8*, i8** %s371, align 8, !dbg !277
  %tobool373 = icmp ne i8* %105, null, !dbg !277
  %lnot374 = xor i1 %tobool373, true, !dbg !277
  %lnot.ext375 = zext i1 %lnot374 to i32, !dbg !277
  %conv376 = sext i32 %lnot.ext375 to i64, !dbg !277
  %tobool377 = icmp ne i64 %conv376, 0, !dbg !277
  br i1 %tobool377, label %cond.true378, label %cond.false379, !dbg !277

cond.true378:                                     ; preds = %do.body370
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !277
  unreachable, !dbg !277

106:                                              ; No predecessors!
  br label %cond.end380, !dbg !277

cond.false379:                                    ; preds = %do.body370
  br label %cond.end380, !dbg !277

cond.end380:                                      ; preds = %cond.false379, %106
  %107 = load i8*, i8** %s371, align 8, !dbg !277
  %call381 = call i32 @strcmp(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i8* noundef %107), !dbg !277
  %cmp382 = icmp eq i32 %call381, 0, !dbg !277
  %lnot384 = xor i1 %cmp382, true, !dbg !277
  %lnot.ext385 = zext i1 %lnot384 to i32, !dbg !277
  %conv386 = sext i32 %lnot.ext385 to i64, !dbg !277
  %tobool387 = icmp ne i64 %conv386, 0, !dbg !277
  br i1 %tobool387, label %cond.true388, label %cond.false389, !dbg !277

cond.true388:                                     ; preds = %cond.end380
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i64 0, i64 0)) #4, !dbg !277
  unreachable, !dbg !277

108:                                              ; No predecessors!
  br label %cond.end390, !dbg !277

cond.false389:                                    ; preds = %cond.end380
  br label %cond.end390, !dbg !277

cond.end390:                                      ; preds = %cond.false389, %108
  %109 = load i8*, i8** %s371, align 8, !dbg !277
  call void @free(i8* noundef %109), !dbg !277
  br label %do.end391, !dbg !277

do.end391:                                        ; preds = %cond.end390
  br label %do.body392, !dbg !278

do.body392:                                       ; preds = %do.end391
  call void @llvm.dbg.declare(metadata i8** %s393, metadata !279, metadata !DIExpression()), !dbg !281
  %110 = load i8*, i8** %gh_url, align 8, !dbg !281
  %call394 = call i8* @url_get_userinfo(i8* noundef %110), !dbg !281
  store i8* %call394, i8** %s393, align 8, !dbg !281
  %111 = load i8*, i8** %s393, align 8, !dbg !281
  %tobool395 = icmp ne i8* %111, null, !dbg !281
  %lnot396 = xor i1 %tobool395, true, !dbg !281
  %lnot.ext397 = zext i1 %lnot396 to i32, !dbg !281
  %conv398 = sext i32 %lnot.ext397 to i64, !dbg !281
  %tobool399 = icmp ne i64 %conv398, 0, !dbg !281
  br i1 %tobool399, label %cond.true400, label %cond.false401, !dbg !281

cond.true400:                                     ; preds = %do.body392
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !281
  unreachable, !dbg !281

112:                                              ; No predecessors!
  br label %cond.end402, !dbg !281

cond.false401:                                    ; preds = %do.body392
  br label %cond.end402, !dbg !281

cond.end402:                                      ; preds = %cond.false401, %112
  %113 = load i8*, i8** %s393, align 8, !dbg !281
  %call403 = call i32 @strcmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* noundef %113), !dbg !281
  %cmp404 = icmp eq i32 %call403, 0, !dbg !281
  %lnot406 = xor i1 %cmp404, true, !dbg !281
  %lnot.ext407 = zext i1 %lnot406 to i32, !dbg !281
  %conv408 = sext i32 %lnot.ext407 to i64, !dbg !281
  %tobool409 = icmp ne i64 %conv408, 0, !dbg !281
  br i1 %tobool409, label %cond.true410, label %cond.false411, !dbg !281

cond.true410:                                     ; preds = %cond.end402
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i64 0, i64 0)) #4, !dbg !281
  unreachable, !dbg !281

114:                                              ; No predecessors!
  br label %cond.end412, !dbg !281

cond.false411:                                    ; preds = %cond.end402
  br label %cond.end412, !dbg !281

cond.end412:                                      ; preds = %cond.false411, %114
  %115 = load i8*, i8** %s393, align 8, !dbg !281
  call void @free(i8* noundef %115), !dbg !281
  br label %do.end413, !dbg !281

do.end413:                                        ; preds = %cond.end412
  br label %do.body414, !dbg !282

do.body414:                                       ; preds = %do.end413
  call void @llvm.dbg.declare(metadata i8** %s415, metadata !283, metadata !DIExpression()), !dbg !285
  %116 = load i8*, i8** %gh_url, align 8, !dbg !285
  %call416 = call i8* @url_get_path(i8* noundef %116), !dbg !285
  store i8* %call416, i8** %s415, align 8, !dbg !285
  %117 = load i8*, i8** %s415, align 8, !dbg !285
  %tobool417 = icmp ne i8* %117, null, !dbg !285
  %lnot418 = xor i1 %tobool417, true, !dbg !285
  %lnot.ext419 = zext i1 %lnot418 to i32, !dbg !285
  %conv420 = sext i32 %lnot.ext419 to i64, !dbg !285
  %tobool421 = icmp ne i64 %conv420, 0, !dbg !285
  br i1 %tobool421, label %cond.true422, label %cond.false423, !dbg !285

cond.true422:                                     ; preds = %do.body414
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !285
  unreachable, !dbg !285

118:                                              ; No predecessors!
  br label %cond.end424, !dbg !285

cond.false423:                                    ; preds = %do.body414
  br label %cond.end424, !dbg !285

cond.end424:                                      ; preds = %cond.false423, %118
  %119 = load i8*, i8** %s415, align 8, !dbg !285
  %call425 = call i32 @strcmp(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i8* noundef %119), !dbg !285
  %cmp426 = icmp eq i32 %call425, 0, !dbg !285
  %lnot428 = xor i1 %cmp426, true, !dbg !285
  %lnot.ext429 = zext i1 %lnot428 to i32, !dbg !285
  %conv430 = sext i32 %lnot.ext429 to i64, !dbg !285
  %tobool431 = icmp ne i64 %conv430, 0, !dbg !285
  br i1 %tobool431, label %cond.true432, label %cond.false433, !dbg !285

cond.true432:                                     ; preds = %cond.end424
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i64 0, i64 0)) #4, !dbg !285
  unreachable, !dbg !285

120:                                              ; No predecessors!
  br label %cond.end434, !dbg !285

cond.false433:                                    ; preds = %cond.end424
  br label %cond.end434, !dbg !285

cond.end434:                                      ; preds = %cond.false433, %120
  %121 = load i8*, i8** %s415, align 8, !dbg !285
  call void @free(i8* noundef %121), !dbg !285
  br label %do.end435, !dbg !285

do.end435:                                        ; preds = %cond.end434
  %122 = load %struct.url_data*, %struct.url_data** %parsed, align 8, !dbg !286
  call void @url_free(%struct.url_data* noundef %122), !dbg !287
  %123 = load %struct.url_data*, %struct.url_data** %gh_parsed, align 8, !dbg !288
  call void @url_free(%struct.url_data* noundef %123), !dbg !289
  ret i32 0, !dbg !290
}

declare %struct.url_data* @url_parse(i8* noundef) #2

; Function Attrs: cold noreturn
declare void @__assert_rtn(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

declare void @url_data_inspect(%struct.url_data* noundef) #2

declare zeroext i1 @url_is_protocol(i8* noundef) #2

declare i8* @url_get_protocol(i8* noundef) #2

declare i32 @strcmp(i8* noundef, i8* noundef) #2

declare void @free(i8* noundef) #2

declare i8* @url_get_userinfo(i8* noundef) #2

declare i8* @url_get_hostname(i8* noundef) #2

declare i8* @url_get_path(i8* noundef) #2

declare i8* @url_get_query_value(%struct.url_data* noundef, i8* noundef) #2

declare i8* @url_get_fragment(i8* noundef) #2

declare i8* @url_get_port(i8* noundef) #2

declare void @url_free(%struct.url_data* noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.dbg.cu = !{!11}
!llvm.ident = !{!43}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 4]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 1, !"branch-target-enforcement", i32 0}
!5 = !{i32 1, !"sign-return-address", i32 0}
!6 = !{i32 1, !"sign-return-address-all", i32 0}
!7 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 1}
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git dfb083149f45185bece93228f47a1ca85d4c12a0)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!12 = !DIFile(filename: "test.c", directory: "/Users/gab/repo/Rust/rustify-validator/src/python/inputs-complex/url.h")
!13 = !{!14, !17, !23, !26, !34, !42}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !15, line: 31, baseType: !16)
!15 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h", directory: "")
!16 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_OSUnalignedU16", file: !19, line: 64, size: 16, elements: !20)
!19 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/libkern/arm/OSByteOrder.h", directory: "")
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !18, file: !19, line: 65, baseType: !22, size: 16)
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !24, line: 34, baseType: !25)
!24 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h", directory: "")
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_OSUnalignedU32", file: !19, line: 68, size: 32, elements: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !27, file: !19, line: 69, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 31, baseType: !33)
!32 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_OSUnalignedU64", file: !19, line: 72, size: 64, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !35, file: !19, line: 73, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !40, line: 31, baseType: !41)
!40 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!41 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git dfb083149f45185bece93228f47a1ca85d4c12a0)"}
!44 = distinct !DISubprogram(name: "_OSSwapInt16", scope: !19, file: !19, line: 15, type: !45, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{!14, !14}
!47 = !{}
!48 = !DILocalVariable(name: "_data", arg: 1, scope: !44, file: !19, line: 16, type: !14)
!49 = !DILocation(line: 16, column: 18, scope: !44)
!50 = !DILocation(line: 20, column: 20, scope: !44)
!51 = !DILocation(line: 20, column: 26, scope: !44)
!52 = !DILocation(line: 20, column: 33, scope: !44)
!53 = !DILocation(line: 20, column: 39, scope: !44)
!54 = !DILocation(line: 20, column: 31, scope: !44)
!55 = !DILocation(line: 20, column: 9, scope: !44)
!56 = !DILocation(line: 20, column: 2, scope: !44)
!57 = distinct !DISubprogram(name: "_OSSwapInt32", scope: !19, file: !19, line: 25, type: !58, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !47)
!58 = !DISubroutineType(types: !59)
!59 = !{!31, !31}
!60 = !DILocalVariable(name: "_data", arg: 1, scope: !57, file: !19, line: 26, type: !31)
!61 = !DILocation(line: 26, column: 18, scope: !57)
!62 = !DILocation(line: 30, column: 28, scope: !57)
!63 = !DILocation(line: 30, column: 10, scope: !57)
!64 = !DILocation(line: 30, column: 8, scope: !57)
!65 = !DILocation(line: 36, column: 9, scope: !57)
!66 = !DILocation(line: 36, column: 2, scope: !57)
!67 = distinct !DISubprogram(name: "_OSSwapInt64", scope: !19, file: !19, line: 41, type: !68, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !47)
!68 = !DISubroutineType(types: !69)
!69 = !{!39, !39}
!70 = !DILocalVariable(name: "_data", arg: 1, scope: !67, file: !19, line: 42, type: !39)
!71 = !DILocation(line: 42, column: 18, scope: !67)
!72 = !DILocation(line: 46, column: 27, scope: !67)
!73 = !DILocation(line: 46, column: 9, scope: !67)
!74 = !DILocation(line: 46, column: 2, scope: !67)
!75 = distinct !DISubprogram(name: "OSReadSwapInt16", scope: !19, file: !19, line: 89, type: !76, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !47)
!76 = !DISubroutineType(types: !77)
!77 = !{!14, !78, !23}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!81 = !DILocalVariable(name: "_base", arg: 1, scope: !75, file: !19, line: 90, type: !78)
!82 = !DILocation(line: 90, column: 26, scope: !75)
!83 = !DILocalVariable(name: "_offset", arg: 2, scope: !75, file: !19, line: 91, type: !23)
!84 = !DILocation(line: 91, column: 18, scope: !75)
!85 = !DILocation(line: 94, column: 61, scope: !75)
!86 = !DILocation(line: 94, column: 50, scope: !75)
!87 = !DILocation(line: 94, column: 69, scope: !75)
!88 = !DILocation(line: 94, column: 67, scope: !75)
!89 = !DILocation(line: 94, column: 23, scope: !75)
!90 = !DILocation(line: 94, column: 80, scope: !75)
!91 = !DILocation(line: 94, column: 9, scope: !75)
!92 = !DILocation(line: 94, column: 2, scope: !75)
!93 = distinct !DISubprogram(name: "OSReadSwapInt32", scope: !19, file: !19, line: 111, type: !94, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !47)
!94 = !DISubroutineType(types: !95)
!95 = !{!31, !78, !23}
!96 = !DILocalVariable(name: "_base", arg: 1, scope: !93, file: !19, line: 112, type: !78)
!97 = !DILocation(line: 112, column: 26, scope: !93)
!98 = !DILocalVariable(name: "_offset", arg: 2, scope: !93, file: !19, line: 113, type: !23)
!99 = !DILocation(line: 113, column: 18, scope: !93)
!100 = !DILocation(line: 116, column: 61, scope: !93)
!101 = !DILocation(line: 116, column: 50, scope: !93)
!102 = !DILocation(line: 116, column: 69, scope: !93)
!103 = !DILocation(line: 116, column: 67, scope: !93)
!104 = !DILocation(line: 116, column: 23, scope: !93)
!105 = !DILocation(line: 116, column: 80, scope: !93)
!106 = !DILocation(line: 116, column: 9, scope: !93)
!107 = !DILocation(line: 116, column: 2, scope: !93)
!108 = distinct !DISubprogram(name: "OSReadSwapInt64", scope: !19, file: !19, line: 133, type: !109, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !47)
!109 = !DISubroutineType(types: !110)
!110 = !{!39, !78, !23}
!111 = !DILocalVariable(name: "_base", arg: 1, scope: !108, file: !19, line: 134, type: !78)
!112 = !DILocation(line: 134, column: 26, scope: !108)
!113 = !DILocalVariable(name: "_offset", arg: 2, scope: !108, file: !19, line: 135, type: !23)
!114 = !DILocation(line: 135, column: 18, scope: !108)
!115 = !DILocation(line: 138, column: 61, scope: !108)
!116 = !DILocation(line: 138, column: 50, scope: !108)
!117 = !DILocation(line: 138, column: 69, scope: !108)
!118 = !DILocation(line: 138, column: 67, scope: !108)
!119 = !DILocation(line: 138, column: 23, scope: !108)
!120 = !DILocation(line: 138, column: 80, scope: !108)
!121 = !DILocation(line: 138, column: 9, scope: !108)
!122 = !DILocation(line: 138, column: 2, scope: !108)
!123 = distinct !DISubprogram(name: "OSWriteSwapInt16", scope: !19, file: !19, line: 158, type: !124, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !47)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !126, !23, !14}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!127 = !DILocalVariable(name: "_base", arg: 1, scope: !123, file: !19, line: 159, type: !126)
!128 = !DILocation(line: 159, column: 20, scope: !123)
!129 = !DILocalVariable(name: "_offset", arg: 2, scope: !123, file: !19, line: 160, type: !23)
!130 = !DILocation(line: 160, column: 18, scope: !123)
!131 = !DILocalVariable(name: "_data", arg: 3, scope: !123, file: !19, line: 161, type: !14)
!132 = !DILocation(line: 161, column: 18, scope: !123)
!133 = !DILocation(line: 164, column: 81, scope: !123)
!134 = !DILocation(line: 164, column: 68, scope: !123)
!135 = !DILocation(line: 164, column: 41, scope: !123)
!136 = !DILocation(line: 164, column: 30, scope: !123)
!137 = !DILocation(line: 164, column: 49, scope: !123)
!138 = !DILocation(line: 164, column: 47, scope: !123)
!139 = !DILocation(line: 164, column: 3, scope: !123)
!140 = !DILocation(line: 164, column: 60, scope: !123)
!141 = !DILocation(line: 164, column: 66, scope: !123)
!142 = !DILocation(line: 165, column: 1, scope: !123)
!143 = distinct !DISubprogram(name: "OSWriteSwapInt32", scope: !19, file: !19, line: 182, type: !144, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !47)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !126, !23, !31}
!146 = !DILocalVariable(name: "_base", arg: 1, scope: !143, file: !19, line: 183, type: !126)
!147 = !DILocation(line: 183, column: 20, scope: !143)
!148 = !DILocalVariable(name: "_offset", arg: 2, scope: !143, file: !19, line: 184, type: !23)
!149 = !DILocation(line: 184, column: 18, scope: !143)
!150 = !DILocalVariable(name: "_data", arg: 3, scope: !143, file: !19, line: 185, type: !31)
!151 = !DILocation(line: 185, column: 18, scope: !143)
!152 = !DILocation(line: 188, column: 81, scope: !143)
!153 = !DILocation(line: 188, column: 68, scope: !143)
!154 = !DILocation(line: 188, column: 41, scope: !143)
!155 = !DILocation(line: 188, column: 30, scope: !143)
!156 = !DILocation(line: 188, column: 49, scope: !143)
!157 = !DILocation(line: 188, column: 47, scope: !143)
!158 = !DILocation(line: 188, column: 3, scope: !143)
!159 = !DILocation(line: 188, column: 60, scope: !143)
!160 = !DILocation(line: 188, column: 66, scope: !143)
!161 = !DILocation(line: 189, column: 1, scope: !143)
!162 = distinct !DISubprogram(name: "OSWriteSwapInt64", scope: !19, file: !19, line: 206, type: !163, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !47)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !126, !23, !39}
!165 = !DILocalVariable(name: "_base", arg: 1, scope: !162, file: !19, line: 207, type: !126)
!166 = !DILocation(line: 207, column: 21, scope: !162)
!167 = !DILocalVariable(name: "_offset", arg: 2, scope: !162, file: !19, line: 208, type: !23)
!168 = !DILocation(line: 208, column: 19, scope: !162)
!169 = !DILocalVariable(name: "_data", arg: 3, scope: !162, file: !19, line: 209, type: !39)
!170 = !DILocation(line: 209, column: 19, scope: !162)
!171 = !DILocation(line: 212, column: 81, scope: !162)
!172 = !DILocation(line: 212, column: 68, scope: !162)
!173 = !DILocation(line: 212, column: 41, scope: !162)
!174 = !DILocation(line: 212, column: 30, scope: !162)
!175 = !DILocation(line: 212, column: 49, scope: !162)
!176 = !DILocation(line: 212, column: 47, scope: !162)
!177 = !DILocation(line: 212, column: 3, scope: !162)
!178 = !DILocation(line: 212, column: 60, scope: !162)
!179 = !DILocation(line: 212, column: 66, scope: !162)
!180 = !DILocation(line: 213, column: 1, scope: !162)
!181 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 16, type: !182, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !47)
!182 = !DISubroutineType(types: !183)
!183 = !{!184}
!184 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!185 = !DILocalVariable(name: "gh_url", scope: !181, file: !12, line: 19, type: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!187 = !DILocation(line: 19, column: 9, scope: !181)
!188 = !DILocalVariable(name: "url", scope: !181, file: !12, line: 20, type: !186)
!189 = !DILocation(line: 20, column: 9, scope: !181)
!190 = !DILocalVariable(name: "parsed", scope: !181, file: !12, line: 22, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "url_data_t", file: !193, line: 62, baseType: !194)
!193 = !DIFile(filename: "./url.h", directory: "/Users/gab/repo/Rust/rustify-validator/src/python/inputs-complex/url.h")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "url_data", file: !193, line: 53, size: 512, elements: !195)
!195 = !{!196, !197, !200, !201, !202, !203, !204, !208}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "whole_url", scope: !194, file: !193, line: 54, baseType: !186, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !194, file: !193, line: 55, baseType: !198, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "userinfo", scope: !194, file: !193, line: 56, baseType: !198, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !194, file: !193, line: 57, baseType: !198, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !194, file: !193, line: 58, baseType: !198, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !194, file: !193, line: 59, baseType: !198, size: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !194, file: !193, line: 60, baseType: !205, size: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "url_key_value", file: !193, line: 47, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !194, file: !193, line: 61, baseType: !198, size: 64, offset: 448)
!209 = !DILocation(line: 22, column: 15, scope: !181)
!210 = !DILocation(line: 22, column: 34, scope: !181)
!211 = !DILocation(line: 22, column: 24, scope: !181)
!212 = !DILocalVariable(name: "gh_parsed", scope: !181, file: !12, line: 23, type: !191)
!213 = !DILocation(line: 23, column: 15, scope: !181)
!214 = !DILocation(line: 23, column: 37, scope: !181)
!215 = !DILocation(line: 23, column: 27, scope: !181)
!216 = !DILocation(line: 25, column: 3, scope: !181)
!217 = !DILocation(line: 26, column: 3, scope: !181)
!218 = !DILocation(line: 28, column: 20, scope: !181)
!219 = !DILocation(line: 28, column: 3, scope: !181)
!220 = !DILocation(line: 29, column: 20, scope: !181)
!221 = !DILocation(line: 29, column: 3, scope: !181)
!222 = !DILocation(line: 31, column: 3, scope: !181)
!223 = !DILocation(line: 32, column: 3, scope: !181)
!224 = !DILocation(line: 33, column: 3, scope: !181)
!225 = !DILocation(line: 34, column: 3, scope: !181)
!226 = !DILocation(line: 35, column: 3, scope: !181)
!227 = !DILocation(line: 36, column: 3, scope: !181)
!228 = !DILocation(line: 37, column: 3, scope: !181)
!229 = !DILocation(line: 38, column: 3, scope: !181)
!230 = !DILocation(line: 40, column: 3, scope: !181)
!231 = !DILocation(line: 41, column: 3, scope: !181)
!232 = !DILocation(line: 42, column: 3, scope: !181)
!233 = !DILocation(line: 43, column: 3, scope: !181)
!234 = !DILocation(line: 44, column: 3, scope: !181)
!235 = !DILocation(line: 46, column: 3, scope: !181)
!236 = !DILocation(line: 47, column: 3, scope: !181)
!237 = !DILocation(line: 48, column: 3, scope: !181)
!238 = !DILocation(line: 49, column: 3, scope: !181)
!239 = !DILocation(line: 50, column: 3, scope: !181)
!240 = !DILocation(line: 51, column: 3, scope: !181)
!241 = !DILocation(line: 52, column: 3, scope: !181)
!242 = !DILocation(line: 54, column: 3, scope: !181)
!243 = !DILocalVariable(name: "s", scope: !244, file: !12, line: 54, type: !186)
!244 = distinct !DILexicalBlock(scope: !181, file: !12, line: 54, column: 3)
!245 = !DILocation(line: 54, column: 3, scope: !244)
!246 = !DILocation(line: 55, column: 3, scope: !181)
!247 = !DILocalVariable(name: "s", scope: !248, file: !12, line: 55, type: !186)
!248 = distinct !DILexicalBlock(scope: !181, file: !12, line: 55, column: 3)
!249 = !DILocation(line: 55, column: 3, scope: !248)
!250 = !DILocation(line: 56, column: 3, scope: !181)
!251 = !DILocalVariable(name: "s", scope: !252, file: !12, line: 56, type: !186)
!252 = distinct !DILexicalBlock(scope: !181, file: !12, line: 56, column: 3)
!253 = !DILocation(line: 56, column: 3, scope: !252)
!254 = !DILocation(line: 57, column: 3, scope: !181)
!255 = !DILocalVariable(name: "s", scope: !256, file: !12, line: 57, type: !186)
!256 = distinct !DILexicalBlock(scope: !181, file: !12, line: 57, column: 3)
!257 = !DILocation(line: 57, column: 3, scope: !256)
!258 = !DILocation(line: 58, column: 3, scope: !181)
!259 = !DILocation(line: 59, column: 3, scope: !181)
!260 = !DILocation(line: 60, column: 3, scope: !181)
!261 = !DILocation(line: 61, column: 3, scope: !181)
!262 = !DILocation(line: 62, column: 3, scope: !181)
!263 = !DILocalVariable(name: "s", scope: !264, file: !12, line: 62, type: !186)
!264 = distinct !DILexicalBlock(scope: !181, file: !12, line: 62, column: 3)
!265 = !DILocation(line: 62, column: 3, scope: !264)
!266 = !DILocation(line: 63, column: 3, scope: !181)
!267 = !DILocalVariable(name: "s", scope: !268, file: !12, line: 63, type: !186)
!268 = distinct !DILexicalBlock(scope: !181, file: !12, line: 63, column: 3)
!269 = !DILocation(line: 63, column: 3, scope: !268)
!270 = !DILocation(line: 65, column: 3, scope: !181)
!271 = !DILocalVariable(name: "s", scope: !272, file: !12, line: 65, type: !186)
!272 = distinct !DILexicalBlock(scope: !181, file: !12, line: 65, column: 3)
!273 = !DILocation(line: 65, column: 3, scope: !272)
!274 = !DILocation(line: 66, column: 3, scope: !181)
!275 = !DILocalVariable(name: "s", scope: !276, file: !12, line: 66, type: !186)
!276 = distinct !DILexicalBlock(scope: !181, file: !12, line: 66, column: 3)
!277 = !DILocation(line: 66, column: 3, scope: !276)
!278 = !DILocation(line: 67, column: 3, scope: !181)
!279 = !DILocalVariable(name: "s", scope: !280, file: !12, line: 67, type: !186)
!280 = distinct !DILexicalBlock(scope: !181, file: !12, line: 67, column: 3)
!281 = !DILocation(line: 67, column: 3, scope: !280)
!282 = !DILocation(line: 68, column: 3, scope: !181)
!283 = !DILocalVariable(name: "s", scope: !284, file: !12, line: 68, type: !186)
!284 = distinct !DILexicalBlock(scope: !181, file: !12, line: 68, column: 3)
!285 = !DILocation(line: 68, column: 3, scope: !284)
!286 = !DILocation(line: 70, column: 12, scope: !181)
!287 = !DILocation(line: 70, column: 3, scope: !181)
!288 = !DILocation(line: 71, column: 12, scope: !181)
!289 = !DILocation(line: 71, column: 3, scope: !181)
!290 = !DILocation(line: 73, column: 3, scope: !181)
