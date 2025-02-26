; ModuleID = 'libcsv.c'
source_filename = "libcsv.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._OSUnalignedU16 = type { i16 }
%struct._OSUnalignedU32 = type { i32 }
%struct._OSUnalignedU64 = type { i64 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }

@.str = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"error parsing data while strict checking enabled\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"memory exhausted while increasing buffer size\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"data size too large\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"invalid status code\00", align 1
@csv_errors = internal global [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)], align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"received null csv_parser\00", align 1
@__func__.csv_error = private unnamed_addr constant [10 x i8] c"csv_error\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"libcsv.c\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"p && \22received null csv_parser\22\00", align 1
@__func__.csv_get_delim = private unnamed_addr constant [14 x i8] c"csv_get_delim\00", align 1
@__func__.csv_get_quote = private unnamed_addr constant [14 x i8] c"csv_get_quote\00", align 1
@__func__.csv_parse = private unnamed_addr constant [10 x i8] c"csv_parse\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i16 @_OSSwapInt16(i16 noundef zeroext %_data) #0 {
entry:
  %_data.addr = alloca i16, align 2
  store i16 %_data, i16* %_data.addr, align 2
  %0 = load i16, i16* %_data.addr, align 2
  %conv = zext i16 %0 to i32
  %shl = shl i32 %conv, 8
  %1 = load i16, i16* %_data.addr, align 2
  %conv1 = zext i16 %1 to i32
  %shr = ashr i32 %conv1, 8
  %or = or i32 %shl, %shr
  %conv2 = trunc i32 %or to i16
  ret i16 %conv2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @_OSSwapInt32(i32 noundef %_data) #0 {
entry:
  %_data.addr = alloca i32, align 4
  store i32 %_data, i32* %_data.addr, align 4
  %0 = load i32, i32* %_data.addr, align 4
  %1 = call i32 @llvm.bswap.i32(i32 %0)
  store i32 %1, i32* %_data.addr, align 4
  %2 = load i32, i32* %_data.addr, align 4
  ret i32 %2
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_OSSwapInt64(i64 noundef %_data) #0 {
entry:
  %_data.addr = alloca i64, align 8
  store i64 %_data, i64* %_data.addr, align 8
  %0 = load i64, i64* %_data.addr, align 8
  %1 = call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %1
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i16 @OSReadSwapInt16(i8* noundef %_base, i64 noundef %_offset) #0 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  store i64 %_offset, i64* %_offset.addr, align 8
  %0 = load i8*, i8** %_base.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = load i64, i64* %_offset.addr, align 8
  %add = add i64 %1, %2
  %3 = inttoptr i64 %add to %struct._OSUnalignedU16*
  %__val = getelementptr inbounds %struct._OSUnalignedU16, %struct._OSUnalignedU16* %3, i32 0, i32 0
  %4 = load volatile i16, i16* %__val, align 1
  %call = call zeroext i16 @_OSSwapInt16(i16 noundef zeroext %4)
  ret i16 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @OSReadSwapInt32(i8* noundef %_base, i64 noundef %_offset) #0 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  store i64 %_offset, i64* %_offset.addr, align 8
  %0 = load i8*, i8** %_base.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = load i64, i64* %_offset.addr, align 8
  %add = add i64 %1, %2
  %3 = inttoptr i64 %add to %struct._OSUnalignedU32*
  %__val = getelementptr inbounds %struct._OSUnalignedU32, %struct._OSUnalignedU32* %3, i32 0, i32 0
  %4 = load volatile i32, i32* %__val, align 1
  %call = call i32 @_OSSwapInt32(i32 noundef %4)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @OSReadSwapInt64(i8* noundef %_base, i64 noundef %_offset) #0 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  store i64 %_offset, i64* %_offset.addr, align 8
  %0 = load i8*, i8** %_base.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = load i64, i64* %_offset.addr, align 8
  %add = add i64 %1, %2
  %3 = inttoptr i64 %add to %struct._OSUnalignedU64*
  %__val = getelementptr inbounds %struct._OSUnalignedU64, %struct._OSUnalignedU64* %3, i32 0, i32 0
  %4 = load volatile i64, i64* %__val, align 1
  %call = call i64 @_OSSwapInt64(i64 noundef %4)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @OSWriteSwapInt16(i8* noundef %_base, i64 noundef %_offset, i16 noundef zeroext %_data) #0 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  %_data.addr = alloca i16, align 2
  store i8* %_base, i8** %_base.addr, align 8
  store i64 %_offset, i64* %_offset.addr, align 8
  store i16 %_data, i16* %_data.addr, align 2
  %0 = load i16, i16* %_data.addr, align 2
  %call = call zeroext i16 @_OSSwapInt16(i16 noundef zeroext %0)
  %1 = load i8*, i8** %_base.addr, align 8
  %2 = ptrtoint i8* %1 to i64
  %3 = load i64, i64* %_offset.addr, align 8
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to %struct._OSUnalignedU16*
  %__val = getelementptr inbounds %struct._OSUnalignedU16, %struct._OSUnalignedU16* %4, i32 0, i32 0
  store volatile i16 %call, i16* %__val, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @OSWriteSwapInt32(i8* noundef %_base, i64 noundef %_offset, i32 noundef %_data) #0 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  %_data.addr = alloca i32, align 4
  store i8* %_base, i8** %_base.addr, align 8
  store i64 %_offset, i64* %_offset.addr, align 8
  store i32 %_data, i32* %_data.addr, align 4
  %0 = load i32, i32* %_data.addr, align 4
  %call = call i32 @_OSSwapInt32(i32 noundef %0)
  %1 = load i8*, i8** %_base.addr, align 8
  %2 = ptrtoint i8* %1 to i64
  %3 = load i64, i64* %_offset.addr, align 8
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to %struct._OSUnalignedU32*
  %__val = getelementptr inbounds %struct._OSUnalignedU32, %struct._OSUnalignedU32* %4, i32 0, i32 0
  store volatile i32 %call, i32* %__val, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @OSWriteSwapInt64(i8* noundef %_base, i64 noundef %_offset, i64 noundef %_data) #0 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  %_data.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  store i64 %_offset, i64* %_offset.addr, align 8
  store i64 %_data, i64* %_data.addr, align 8
  %0 = load i64, i64* %_data.addr, align 8
  %call = call i64 @_OSSwapInt64(i64 noundef %0)
  %1 = load i8*, i8** %_base.addr, align 8
  %2 = ptrtoint i8* %1 to i64
  %3 = load i64, i64* %_offset.addr, align 8
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to %struct._OSUnalignedU64*
  %__val = getelementptr inbounds %struct._OSUnalignedU64, %struct._OSUnalignedU64* %4, i32 0, i32 0
  store volatile i64 %call, i64* %__val, align 1
  ret void
}

declare i32 @__swbuf(i32 noundef, %struct.__sFILE* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @csv_error(%struct.csv_parser* noundef %p) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %lnot = xor i1 %1, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.csv_error, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0)) #5
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 6
  %4 = load i32, i32* %status, align 8
  ret i32 %4
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @csv_strerror(i32 noundef %status) #0 {
entry:
  %retval = alloca i8*, align 8
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  %cmp = icmp sge i32 %0, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %status.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @csv_errors, i64 0, i64 4), align 8
  store i8* %2, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* %status.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* @csv_errors, i64 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @csv_get_opts(%struct.csv_parser* noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.csv_parser*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %cmp = icmp eq %struct.csv_parser* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %1, i32 0, i32 7
  %2 = load i8, i8* %options, align 4
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @csv_set_opts(%struct.csv_parser* noundef %p, i8 noundef zeroext %options) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.csv_parser*, align 8
  %options.addr = alloca i8, align 1
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store i8 %options, i8* %options.addr, align 1
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %cmp = icmp eq %struct.csv_parser* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %options.addr, align 1
  %2 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options1 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %2, i32 0, i32 7
  store i8 %1, i8* %options1, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @csv_init(%struct.csv_parser* noundef %p, i8 noundef zeroext %options) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.csv_parser*, align 8
  %options.addr = alloca i8, align 1
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store i8 %options, i8* %options.addr, align 1
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %cmp = icmp eq %struct.csv_parser* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %1, i32 0, i32 3
  store i8* null, i8** %entry_buf, align 8
  %2 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %2, i32 0, i32 0
  store i32 0, i32* %pstate, align 8
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 1
  store i32 0, i32* %quoted, align 4
  %4 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %4, i32 0, i32 2
  store i64 0, i64* %spaces, align 8
  %5 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %5, i32 0, i32 4
  store i64 0, i64* %entry_pos, align 8
  %6 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %6, i32 0, i32 5
  store i64 0, i64* %entry_size, align 8
  %7 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %7, i32 0, i32 6
  store i32 0, i32* %status, align 8
  %8 = load i8, i8* %options.addr, align 1
  %9 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options1 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %9, i32 0, i32 7
  store i8 %8, i8* %options1, align 4
  %10 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quote_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %10, i32 0, i32 8
  store i8 34, i8* %quote_char, align 1
  %11 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %delim_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %11, i32 0, i32 9
  store i8 44, i8* %delim_char, align 2
  %12 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %is_space = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %12, i32 0, i32 10
  store i32 (i8)* null, i32 (i8)** %is_space, align 8
  %13 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %is_term = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %13, i32 0, i32 11
  store i32 (i8)* null, i32 (i8)** %is_term, align 8
  %14 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %blk_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %14, i32 0, i32 12
  store i64 128, i64* %blk_size, align 8
  %15 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %malloc_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %15, i32 0, i32 13
  store i8* (i64)* null, i8* (i64)** %malloc_func, align 8
  %16 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %realloc_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %16, i32 0, i32 14
  store i8* (i8*, i64)* @realloc, i8* (i8*, i64)** %realloc_func, align 8
  %17 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %free_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %17, i32 0, i32 15
  store void (i8*)* @free, void (i8*)** %free_func, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: allocsize(1)
declare i8* @realloc(i8* noundef, i64 noundef) #4

declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @csv_free(%struct.csv_parser* noundef %p) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %cmp = icmp eq %struct.csv_parser* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %1, i32 0, i32 3
  %2 = load i8*, i8** %entry_buf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %free_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 15
  %4 = load void (i8*)*, void (i8*)** %free_func, align 8
  %tobool1 = icmp ne void (i8*)* %4, null
  br i1 %tobool1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %land.lhs.true
  %5 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %free_func3 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %5, i32 0, i32 15
  %6 = load void (i8*)*, void (i8*)** %free_func3, align 8
  %7 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf4 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %7, i32 0, i32 3
  %8 = load i8*, i8** %entry_buf4, align 8
  call void %6(i8* noundef %8)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  %9 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf6 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %9, i32 0, i32 3
  store i8* null, i8** %entry_buf6, align 8
  %10 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %10, i32 0, i32 5
  store i64 0, i64* %entry_size, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @csv_fini(%struct.csv_parser* noundef %p, void (i8*, i64, i8*)* noundef %cb1, void (i32, i8*)* noundef %cb2, i8* noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.csv_parser*, align 8
  %cb1.addr = alloca void (i8*, i64, i8*)*, align 8
  %cb2.addr = alloca void (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %quoted = alloca i32, align 4
  %pstate = alloca i32, align 4
  %spaces = alloca i64, align 8
  %entry_pos = alloca i64, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store void (i8*, i64, i8*)* %cb1, void (i8*, i64, i8*)** %cb1.addr, align 8
  store void (i32, i8*)* %cb2, void (i32, i8*)** %cb2.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %cmp = icmp eq %struct.csv_parser* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted1 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %1, i32 0, i32 1
  %2 = load i32, i32* %quoted1, align 4
  store i32 %2, i32* %quoted, align 4
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate2 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 0
  %4 = load i32, i32* %pstate2, align 8
  store i32 %4, i32* %pstate, align 4
  %5 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces3 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %5, i32 0, i32 2
  %6 = load i64, i64* %spaces3, align 8
  store i64 %6, i64* %spaces, align 8
  %7 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos4 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %7, i32 0, i32 4
  %8 = load i64, i64* %entry_pos4, align 8
  store i64 %8, i64* %entry_pos, align 8
  %9 = load i32, i32* %pstate, align 4
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted6 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %10, i32 0, i32 1
  %11 = load i32, i32* %quoted6, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true7, label %if.end15

land.lhs.true7:                                   ; preds = %land.lhs.true
  %12 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %12, i32 0, i32 7
  %13 = load i8, i8* %options, align 4
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 1
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %land.lhs.true9, label %if.end15

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %14 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options10 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %14, i32 0, i32 7
  %15 = load i8, i8* %options10, align 4
  %conv11 = zext i8 %15 to i32
  %and12 = and i32 %conv11, 4
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true9
  %16 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %16, i32 0, i32 6
  store i32 1, i32* %status, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %land.lhs.true9, %land.lhs.true7, %land.lhs.true, %if.end
  %17 = load i32, i32* %pstate, align 4
  switch i32 %17, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb19
    i32 0, label %sw.bb52
  ]

sw.bb:                                            ; preds = %if.end15
  %18 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces16 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %18, i32 0, i32 2
  %19 = load i64, i64* %spaces16, align 8
  %add = add i64 %19, 1
  %20 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos17 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %20, i32 0, i32 4
  %21 = load i64, i64* %entry_pos17, align 8
  %sub = sub i64 %21, %add
  store i64 %sub, i64* %entry_pos17, align 8
  %22 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos18 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %22, i32 0, i32 4
  %23 = load i64, i64* %entry_pos18, align 8
  store i64 %23, i64* %entry_pos, align 8
  br label %sw.bb19

sw.bb19:                                          ; preds = %if.end15, %if.end15, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.bb19
  %24 = load i32, i32* %quoted, align 4
  %tobool20 = icmp ne i32 %24, 0
  br i1 %tobool20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %do.body
  %25 = load i64, i64* %spaces, align 8
  %26 = load i64, i64* %entry_pos, align 8
  %sub22 = sub i64 %26, %25
  store i64 %sub22, i64* %entry_pos, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body
  %27 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options24 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %27, i32 0, i32 7
  %28 = load i8, i8* %options24, align 4
  %conv25 = zext i8 %28 to i32
  %and26 = and i32 %conv25, 8
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  %29 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %29, i32 0, i32 3
  %30 = load i8*, i8** %entry_buf, align 8
  %31 = load i64, i64* %entry_pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 0, i8* %arrayidx, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end23
  %32 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool30 = icmp ne void (i8*, i64, i8*)* %32, null
  br i1 %tobool30, label %land.lhs.true31, label %if.else

land.lhs.true31:                                  ; preds = %if.end29
  %33 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options32 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %33, i32 0, i32 7
  %34 = load i8, i8* %options32, align 4
  %conv33 = zext i8 %34 to i32
  %and34 = and i32 %conv33, 16
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %if.else

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %35 = load i32, i32* %quoted, align 4
  %tobool37 = icmp ne i32 %35, 0
  br i1 %tobool37, label %if.else, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %36 = load i64, i64* %entry_pos, align 8
  %cmp39 = icmp eq i64 %36, 0
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %land.lhs.true38
  %37 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %38 = load i64, i64* %entry_pos, align 8
  %39 = load i8*, i8** %data.addr, align 8
  call void %37(i8* noundef null, i64 noundef %38, i8* noundef %39)
  br label %if.end46

if.else:                                          ; preds = %land.lhs.true38, %land.lhs.true36, %land.lhs.true31, %if.end29
  %40 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool42 = icmp ne void (i8*, i64, i8*)* %40, null
  br i1 %tobool42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.else
  %41 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %42 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf44 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %42, i32 0, i32 3
  %43 = load i8*, i8** %entry_buf44, align 8
  %44 = load i64, i64* %entry_pos, align 8
  %45 = load i8*, i8** %data.addr, align 8
  call void %41(i8* noundef %43, i64 noundef %44, i8* noundef %45)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then41
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end

do.end:                                           ; preds = %if.end46
  br label %do.body47

do.body47:                                        ; preds = %do.end
  %46 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %tobool48 = icmp ne void (i32, i8*)* %46, null
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body47
  %47 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %48 = load i8*, i8** %data.addr, align 8
  call void %47(i32 noundef -1, i8* noundef %48)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %do.body47
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end51

do.end51:                                         ; preds = %if.end50
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb52, %if.end15, %do.end51
  %49 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status53 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %49, i32 0, i32 6
  store i32 0, i32* %status53, align 8
  %50 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos54 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %50, i32 0, i32 4
  store i64 0, i64* %entry_pos54, align 8
  %51 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted55 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %51, i32 0, i32 1
  store i32 0, i32* %quoted55, align 4
  %52 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces56 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %52, i32 0, i32 2
  store i64 0, i64* %spaces56, align 8
  %53 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate57 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %53, i32 0, i32 0
  store i32 0, i32* %pstate57, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then14, %if.then
  %54 = load i32, i32* %retval, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @csv_set_delim(%struct.csv_parser* noundef %p, i8 noundef zeroext %c) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  %c.addr = alloca i8, align 1
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %2 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %delim_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %2, i32 0, i32 9
  store i8 %1, i8* %delim_char, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @csv_set_quote(%struct.csv_parser* noundef %p, i8 noundef zeroext %c) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  %c.addr = alloca i8, align 1
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %2 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quote_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %2, i32 0, i32 8
  store i8 %1, i8* %quote_char, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i8 @csv_get_delim(%struct.csv_parser* noundef %p) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %lnot = xor i1 %1, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.csv_get_delim, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0)) #5
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %delim_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 9
  %4 = load i8, i8* %delim_char, align 2
  ret i8 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i8 @csv_get_quote(%struct.csv_parser* noundef %p) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %lnot = xor i1 %1, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.csv_get_quote, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0)) #5
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quote_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 8
  %4 = load i8, i8* %quote_char, align 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @csv_set_space_func(%struct.csv_parser* noundef %p, i32 (i8)* noundef %f) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  %f.addr = alloca i32 (i8)*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store i32 (i8)* %f, i32 (i8)** %f.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32 (i8)*, i32 (i8)** %f.addr, align 8
  %2 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %is_space = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %2, i32 0, i32 10
  store i32 (i8)* %1, i32 (i8)** %is_space, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @csv_set_term_func(%struct.csv_parser* noundef %p, i32 (i8)* noundef %f) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  %f.addr = alloca i32 (i8)*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store i32 (i8)* %f, i32 (i8)** %f.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32 (i8)*, i32 (i8)** %f.addr, align 8
  %2 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %is_term = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %2, i32 0, i32 11
  store i32 (i8)* %1, i32 (i8)** %is_term, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @csv_set_realloc_func(%struct.csv_parser* noundef %p, i8* (i8*, i64)* noundef %f) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  %f.addr = alloca i8* (i8*, i64)*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store i8* (i8*, i64)* %f, i8* (i8*, i64)** %f.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** %f.addr, align 8
  %tobool1 = icmp ne i8* (i8*, i64)* %1, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8* (i8*, i64)*, i8* (i8*, i64)** %f.addr, align 8
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %realloc_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 14
  store i8* (i8*, i64)* %2, i8* (i8*, i64)** %realloc_func, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @csv_set_free_func(%struct.csv_parser* noundef %p, void (i8*)* noundef %f) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  %f.addr = alloca void (i8*)*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store void (i8*)* %f, void (i8*)** %f.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load void (i8*)*, void (i8*)** %f.addr, align 8
  %tobool1 = icmp ne void (i8*)* %1, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load void (i8*)*, void (i8*)** %f.addr, align 8
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %free_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 15
  store void (i8*)* %2, void (i8*)** %free_func, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @csv_set_blk_size(%struct.csv_parser* noundef %p, i64 noundef %size) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  %size.addr = alloca i64, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %2 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %blk_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %2, i32 0, i32 12
  store i64 %1, i64* %blk_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @csv_get_buffer_size(%struct.csv_parser* noundef %p) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca %struct.csv_parser*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %1, i32 0, i32 5
  %2 = load i64, i64* %entry_size, align 8
  store i64 %2, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csv_increase_buffer(%struct.csv_parser* noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.csv_parser*, align 8
  %to_add = alloca i64, align 8
  %vp = alloca i8*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %cmp = icmp eq %struct.csv_parser* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %realloc_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %1, i32 0, i32 14
  %2 = load i8* (i8*, i64)*, i8* (i8*, i64)** %realloc_func, align 8
  %cmp1 = icmp eq i8* (i8*, i64)* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %blk_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 12
  %4 = load i64, i64* %blk_size, align 8
  store i64 %4, i64* %to_add, align 8
  %5 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %5, i32 0, i32 5
  %6 = load i64, i64* %entry_size, align 8
  %7 = load i64, i64* %to_add, align 8
  %sub = sub i64 -1, %7
  %cmp4 = icmp uge i64 %6, %sub
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end3
  %8 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size6 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %8, i32 0, i32 5
  %9 = load i64, i64* %entry_size6, align 8
  %sub7 = sub i64 -1, %9
  store i64 %sub7, i64* %to_add, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3
  %10 = load i64, i64* %to_add, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end8
  %11 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %11, i32 0, i32 6
  store i32 3, i32* %status, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end8
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.end10
  %12 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %realloc_func11 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %12, i32 0, i32 14
  %13 = load i8* (i8*, i64)*, i8* (i8*, i64)** %realloc_func11, align 8
  %14 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %14, i32 0, i32 3
  %15 = load i8*, i8** %entry_buf, align 8
  %16 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size12 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %16, i32 0, i32 5
  %17 = load i64, i64* %entry_size12, align 8
  %18 = load i64, i64* %to_add, align 8
  %add = add i64 %17, %18
  %call = call i8* %13(i8* noundef %15, i64 noundef %add)
  store i8* %call, i8** %vp, align 8
  %cmp13 = icmp eq i8* %call, null
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i64, i64* %to_add, align 8
  %div = udiv i64 %19, 2
  store i64 %div, i64* %to_add, align 8
  %20 = load i64, i64* %to_add, align 8
  %tobool14 = icmp ne i64 %20, 0
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %while.body
  %21 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status16 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %21, i32 0, i32 6
  store i32 2, i32* %status16, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %22 = load i8*, i8** %vp, align 8
  %23 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf18 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %23, i32 0, i32 3
  store i8* %22, i8** %entry_buf18, align 8
  %24 = load i64, i64* %to_add, align 8
  %25 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size19 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %25, i32 0, i32 5
  %26 = load i64, i64* %entry_size19, align 8
  %add20 = add i64 %26, %24
  store i64 %add20, i64* %entry_size19, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then15, %if.then9, %if.then2, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @csv_parse(%struct.csv_parser* noundef %p, i8* noundef %s, i64 noundef %len, void (i8*, i64, i8*)* noundef %cb1, void (i32, i8*)* noundef %cb2, i8* noundef %data) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca %struct.csv_parser*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %cb1.addr = alloca void (i8*, i64, i8*)*, align 8
  %cb2.addr = alloca void (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %us = alloca i8*, align 8
  %c = alloca i8, align 1
  %pos = alloca i64, align 8
  %delim = alloca i8, align 1
  %quote = alloca i8, align 1
  %is_space = alloca i32 (i8)*, align 8
  %is_term = alloca i32 (i8)*, align 8
  %quoted = alloca i32, align 4
  %pstate = alloca i32, align 4
  %spaces = alloca i64, align 8
  %entry_pos = alloca i64, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store void (i8*, i64, i8*)* %cb1, void (i8*, i64, i8*)** %cb1.addr, align 8
  store void (i32, i8*)* %cb2, void (i32, i8*)** %cb2.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %lnot = xor i1 %1, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.csv_parse, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 noundef 321, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0)) #5
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load i8*, i8** %s.addr, align 8
  store i8* %4, i8** %us, align 8
  store i64 0, i64* %pos, align 8
  %5 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %delim_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %5, i32 0, i32 9
  %6 = load i8, i8* %delim_char, align 2
  store i8 %6, i8* %delim, align 1
  %7 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quote_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %7, i32 0, i32 8
  %8 = load i8, i8* %quote_char, align 1
  store i8 %8, i8* %quote, align 1
  %9 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %is_space3 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %9, i32 0, i32 10
  %10 = load i32 (i8)*, i32 (i8)** %is_space3, align 8
  store i32 (i8)* %10, i32 (i8)** %is_space, align 8
  %11 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %is_term4 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %11, i32 0, i32 11
  %12 = load i32 (i8)*, i32 (i8)** %is_term4, align 8
  store i32 (i8)* %12, i32 (i8)** %is_term, align 8
  %13 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted5 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %13, i32 0, i32 1
  %14 = load i32, i32* %quoted5, align 4
  store i32 %14, i32* %quoted, align 4
  %15 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate6 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %15, i32 0, i32 0
  %16 = load i32, i32* %pstate6, align 8
  store i32 %16, i32* %pstate, align 4
  %17 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces7 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %17, i32 0, i32 2
  %18 = load i64, i64* %spaces7, align 8
  store i64 %18, i64* %spaces, align 8
  %19 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos8 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %19, i32 0, i32 4
  %20 = load i64, i64* %entry_pos8, align 8
  store i64 %20, i64* %entry_pos, align 8
  %21 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %21, i32 0, i32 3
  %22 = load i8*, i8** %entry_buf, align 8
  %tobool9 = icmp ne i8* %22, null
  br i1 %tobool9, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %23 = load i64, i64* %pos, align 8
  %24 = load i64, i64* %len.addr, align 8
  %cmp10 = icmp ult i64 %23, %24
  br i1 %cmp10, label %if.then12, label %if.end21

if.then12:                                        ; preds = %land.lhs.true
  %25 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %call = call i32 @csv_increase_buffer(%struct.csv_parser* noundef %25)
  %cmp13 = icmp ne i32 %call, 0
  br i1 %cmp13, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.then12
  %26 = load i32, i32* %quoted, align 4
  %27 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted16 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %27, i32 0, i32 1
  store i32 %26, i32* %quoted16, align 4
  %28 = load i32, i32* %pstate, align 4
  %29 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate17 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %29, i32 0, i32 0
  store i32 %28, i32* %pstate17, align 8
  %30 = load i64, i64* %spaces, align 8
  %31 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces18 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %31, i32 0, i32 2
  store i64 %30, i64* %spaces18, align 8
  %32 = load i64, i64* %entry_pos, align 8
  %33 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos19 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %33, i32 0, i32 4
  store i64 %32, i64* %entry_pos19, align 8
  %34 = load i64, i64* %pos, align 8
  store i64 %34, i64* %retval, align 8
  br label %return

if.end20:                                         ; preds = %if.then12
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %land.lhs.true, %if.end
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end125, %if.then59, %if.end21
  %35 = load i64, i64* %pos, align 8
  %36 = load i64, i64* %len.addr, align 8
  %cmp22 = icmp ult i64 %35, %36
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i64, i64* %entry_pos, align 8
  %38 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %38, i32 0, i32 7
  %39 = load i8, i8* %options, align 4
  %conv24 = zext i8 %39 to i32
  %and = and i32 %conv24, 8
  %tobool25 = icmp ne i32 %and, 0
  br i1 %tobool25, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %while.body
  %40 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %40, i32 0, i32 5
  %41 = load i64, i64* %entry_size, align 8
  %sub = sub i64 %41, 1
  br label %cond.end29

cond.false27:                                     ; preds = %while.body
  %42 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size28 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %42, i32 0, i32 5
  %43 = load i64, i64* %entry_size28, align 8
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false27, %cond.true26
  %cond = phi i64 [ %sub, %cond.true26 ], [ %43, %cond.false27 ]
  %cmp30 = icmp eq i64 %37, %cond
  br i1 %cmp30, label %if.then32, label %if.end42

if.then32:                                        ; preds = %cond.end29
  %44 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %call33 = call i32 @csv_increase_buffer(%struct.csv_parser* noundef %44)
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.then32
  %45 = load i32, i32* %quoted, align 4
  %46 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted37 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %46, i32 0, i32 1
  store i32 %45, i32* %quoted37, align 4
  %47 = load i32, i32* %pstate, align 4
  %48 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate38 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %48, i32 0, i32 0
  store i32 %47, i32* %pstate38, align 8
  %49 = load i64, i64* %spaces, align 8
  %50 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces39 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %50, i32 0, i32 2
  store i64 %49, i64* %spaces39, align 8
  %51 = load i64, i64* %entry_pos, align 8
  %52 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos40 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %52, i32 0, i32 4
  store i64 %51, i64* %entry_pos40, align 8
  %53 = load i64, i64* %pos, align 8
  store i64 %53, i64* %retval, align 8
  br label %return

if.end41:                                         ; preds = %if.then32
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %cond.end29
  %54 = load i8*, i8** %us, align 8
  %55 = load i64, i64* %pos, align 8
  %inc = add i64 %55, 1
  store i64 %inc, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %54, i64 %55
  %56 = load i8, i8* %arrayidx, align 1
  store i8 %56, i8* %c, align 1
  %57 = load i32, i32* %pstate, align 4
  switch i32 %57, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb178
    i32 3, label %sw.bb337
  ]

sw.bb:                                            ; preds = %if.end42, %if.end42
  %58 = load i32 (i8)*, i32 (i8)** %is_space, align 8
  %tobool43 = icmp ne i32 (i8)* %58, null
  br i1 %tobool43, label %cond.true44, label %cond.false47

cond.true44:                                      ; preds = %sw.bb
  %59 = load i32 (i8)*, i32 (i8)** %is_space, align 8
  %60 = load i8, i8* %c, align 1
  %call45 = call i32 %59(i8 noundef zeroext %60)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %land.lhs.true54, label %if.else

cond.false47:                                     ; preds = %sw.bb
  %61 = load i8, i8* %c, align 1
  %conv48 = zext i8 %61 to i32
  %cmp49 = icmp eq i32 %conv48, 32
  br i1 %cmp49, label %land.lhs.true54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false47
  %62 = load i8, i8* %c, align 1
  %conv51 = zext i8 %62 to i32
  %cmp52 = icmp eq i32 %conv51, 9
  br i1 %cmp52, label %land.lhs.true54, label %if.else

land.lhs.true54:                                  ; preds = %lor.lhs.false, %cond.false47, %cond.true44
  %63 = load i8, i8* %c, align 1
  %conv55 = zext i8 %63 to i32
  %64 = load i8, i8* %delim, align 1
  %conv56 = zext i8 %64 to i32
  %cmp57 = icmp ne i32 %conv55, %conv56
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %land.lhs.true54
  br label %while.cond, !llvm.loop !12

if.else:                                          ; preds = %land.lhs.true54, %lor.lhs.false, %cond.true44
  %65 = load i32 (i8)*, i32 (i8)** %is_term, align 8
  %tobool60 = icmp ne i32 (i8)* %65, null
  br i1 %tobool60, label %cond.true61, label %cond.false64

cond.true61:                                      ; preds = %if.else
  %66 = load i32 (i8)*, i32 (i8)** %is_term, align 8
  %67 = load i8, i8* %c, align 1
  %call62 = call i32 %66(i8 noundef zeroext %67)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then72, label %if.else126

cond.false64:                                     ; preds = %if.else
  %68 = load i8, i8* %c, align 1
  %conv65 = zext i8 %68 to i32
  %cmp66 = icmp eq i32 %conv65, 13
  br i1 %cmp66, label %if.then72, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %cond.false64
  %69 = load i8, i8* %c, align 1
  %conv69 = zext i8 %69 to i32
  %cmp70 = icmp eq i32 %conv69, 10
  br i1 %cmp70, label %if.then72, label %if.else126

if.then72:                                        ; preds = %lor.lhs.false68, %cond.false64, %cond.true61
  %70 = load i32, i32* %pstate, align 4
  %cmp73 = icmp eq i32 %70, 1
  br i1 %cmp73, label %if.then75, label %if.else112

if.then75:                                        ; preds = %if.then72
  br label %do.body

do.body:                                          ; preds = %if.then75
  %71 = load i32, i32* %quoted, align 4
  %tobool76 = icmp ne i32 %71, 0
  br i1 %tobool76, label %if.end79, label %if.then77

if.then77:                                        ; preds = %do.body
  %72 = load i64, i64* %spaces, align 8
  %73 = load i64, i64* %entry_pos, align 8
  %sub78 = sub i64 %73, %72
  store i64 %sub78, i64* %entry_pos, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %do.body
  %74 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options80 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %74, i32 0, i32 7
  %75 = load i8, i8* %options80, align 4
  %conv81 = zext i8 %75 to i32
  %and82 = and i32 %conv81, 8
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end79
  %76 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf85 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %76, i32 0, i32 3
  %77 = load i8*, i8** %entry_buf85, align 8
  %78 = load i64, i64* %entry_pos, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 0, i8* %arrayidx86, align 1
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end79
  %79 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool88 = icmp ne void (i8*, i64, i8*)* %79, null
  br i1 %tobool88, label %land.lhs.true89, label %if.else100

land.lhs.true89:                                  ; preds = %if.end87
  %80 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options90 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %80, i32 0, i32 7
  %81 = load i8, i8* %options90, align 4
  %conv91 = zext i8 %81 to i32
  %and92 = and i32 %conv91, 16
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %land.lhs.true94, label %if.else100

land.lhs.true94:                                  ; preds = %land.lhs.true89
  %82 = load i32, i32* %quoted, align 4
  %tobool95 = icmp ne i32 %82, 0
  br i1 %tobool95, label %if.else100, label %land.lhs.true96

land.lhs.true96:                                  ; preds = %land.lhs.true94
  %83 = load i64, i64* %entry_pos, align 8
  %cmp97 = icmp eq i64 %83, 0
  br i1 %cmp97, label %if.then99, label %if.else100

if.then99:                                        ; preds = %land.lhs.true96
  %84 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %85 = load i64, i64* %entry_pos, align 8
  %86 = load i8*, i8** %data.addr, align 8
  call void %84(i8* noundef null, i64 noundef %85, i8* noundef %86)
  br label %if.end105

if.else100:                                       ; preds = %land.lhs.true96, %land.lhs.true94, %land.lhs.true89, %if.end87
  %87 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool101 = icmp ne void (i8*, i64, i8*)* %87, null
  br i1 %tobool101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.else100
  %88 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %89 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf103 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %89, i32 0, i32 3
  %90 = load i8*, i8** %entry_buf103, align 8
  %91 = load i64, i64* %entry_pos, align 8
  %92 = load i8*, i8** %data.addr, align 8
  call void %88(i8* noundef %90, i64 noundef %91, i8* noundef %92)
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.else100
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then99
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end

do.end:                                           ; preds = %if.end105
  br label %do.body106

do.body106:                                       ; preds = %do.end
  %93 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %tobool107 = icmp ne void (i32, i8*)* %93, null
  br i1 %tobool107, label %if.then108, label %if.end110

if.then108:                                       ; preds = %do.body106
  %94 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %95 = load i8, i8* %c, align 1
  %conv109 = zext i8 %95 to i32
  %96 = load i8*, i8** %data.addr, align 8
  call void %94(i32 noundef %conv109, i8* noundef %96)
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %do.body106
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end111

do.end111:                                        ; preds = %if.end110
  br label %if.end125

if.else112:                                       ; preds = %if.then72
  %97 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options113 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %97, i32 0, i32 7
  %98 = load i8, i8* %options113, align 4
  %conv114 = zext i8 %98 to i32
  %and115 = and i32 %conv114, 2
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then117, label %if.end124

if.then117:                                       ; preds = %if.else112
  br label %do.body118

do.body118:                                       ; preds = %if.then117
  %99 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %tobool119 = icmp ne void (i32, i8*)* %99, null
  br i1 %tobool119, label %if.then120, label %if.end122

if.then120:                                       ; preds = %do.body118
  %100 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %101 = load i8, i8* %c, align 1
  %conv121 = zext i8 %101 to i32
  %102 = load i8*, i8** %data.addr, align 8
  call void %100(i32 noundef %conv121, i8* noundef %102)
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %do.body118
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end123

do.end123:                                        ; preds = %if.end122
  br label %if.end124

if.end124:                                        ; preds = %do.end123, %if.else112
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %do.end111
  br label %while.cond, !llvm.loop !12

if.else126:                                       ; preds = %lor.lhs.false68, %cond.true61
  %103 = load i8, i8* %c, align 1
  %conv127 = zext i8 %103 to i32
  %104 = load i8, i8* %delim, align 1
  %conv128 = zext i8 %104 to i32
  %cmp129 = icmp eq i32 %conv127, %conv128
  br i1 %cmp129, label %if.then131, label %if.else164

if.then131:                                       ; preds = %if.else126
  br label %do.body132

do.body132:                                       ; preds = %if.then131
  %105 = load i32, i32* %quoted, align 4
  %tobool133 = icmp ne i32 %105, 0
  br i1 %tobool133, label %if.end136, label %if.then134

if.then134:                                       ; preds = %do.body132
  %106 = load i64, i64* %spaces, align 8
  %107 = load i64, i64* %entry_pos, align 8
  %sub135 = sub i64 %107, %106
  store i64 %sub135, i64* %entry_pos, align 8
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %do.body132
  %108 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options137 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %108, i32 0, i32 7
  %109 = load i8, i8* %options137, align 4
  %conv138 = zext i8 %109 to i32
  %and139 = and i32 %conv138, 8
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %if.then141, label %if.end144

if.then141:                                       ; preds = %if.end136
  %110 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf142 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %110, i32 0, i32 3
  %111 = load i8*, i8** %entry_buf142, align 8
  %112 = load i64, i64* %entry_pos, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8 0, i8* %arrayidx143, align 1
  br label %if.end144

if.end144:                                        ; preds = %if.then141, %if.end136
  %113 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool145 = icmp ne void (i8*, i64, i8*)* %113, null
  br i1 %tobool145, label %land.lhs.true146, label %if.else157

land.lhs.true146:                                 ; preds = %if.end144
  %114 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options147 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %114, i32 0, i32 7
  %115 = load i8, i8* %options147, align 4
  %conv148 = zext i8 %115 to i32
  %and149 = and i32 %conv148, 16
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %land.lhs.true151, label %if.else157

land.lhs.true151:                                 ; preds = %land.lhs.true146
  %116 = load i32, i32* %quoted, align 4
  %tobool152 = icmp ne i32 %116, 0
  br i1 %tobool152, label %if.else157, label %land.lhs.true153

land.lhs.true153:                                 ; preds = %land.lhs.true151
  %117 = load i64, i64* %entry_pos, align 8
  %cmp154 = icmp eq i64 %117, 0
  br i1 %cmp154, label %if.then156, label %if.else157

if.then156:                                       ; preds = %land.lhs.true153
  %118 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %119 = load i64, i64* %entry_pos, align 8
  %120 = load i8*, i8** %data.addr, align 8
  call void %118(i8* noundef null, i64 noundef %119, i8* noundef %120)
  br label %if.end162

if.else157:                                       ; preds = %land.lhs.true153, %land.lhs.true151, %land.lhs.true146, %if.end144
  %121 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool158 = icmp ne void (i8*, i64, i8*)* %121, null
  br i1 %tobool158, label %if.then159, label %if.end161

if.then159:                                       ; preds = %if.else157
  %122 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %123 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf160 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %123, i32 0, i32 3
  %124 = load i8*, i8** %entry_buf160, align 8
  %125 = load i64, i64* %entry_pos, align 8
  %126 = load i8*, i8** %data.addr, align 8
  call void %122(i8* noundef %124, i64 noundef %125, i8* noundef %126)
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.else157
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.then156
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end163

do.end163:                                        ; preds = %if.end162
  br label %sw.epilog

if.else164:                                       ; preds = %if.else126
  %127 = load i8, i8* %c, align 1
  %conv165 = zext i8 %127 to i32
  %128 = load i8, i8* %quote, align 1
  %conv166 = zext i8 %128 to i32
  %cmp167 = icmp eq i32 %conv165, %conv166
  br i1 %cmp167, label %if.then169, label %if.else170

if.then169:                                       ; preds = %if.else164
  store i32 2, i32* %pstate, align 4
  store i32 1, i32* %quoted, align 4
  br label %if.end174

if.else170:                                       ; preds = %if.else164
  store i32 2, i32* %pstate, align 4
  store i32 0, i32* %quoted, align 4
  %129 = load i8, i8* %c, align 1
  %130 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf171 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %130, i32 0, i32 3
  %131 = load i8*, i8** %entry_buf171, align 8
  %132 = load i64, i64* %entry_pos, align 8
  %inc172 = add i64 %132, 1
  store i64 %inc172, i64* %entry_pos, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8 %129, i8* %arrayidx173, align 1
  br label %if.end174

if.end174:                                        ; preds = %if.else170, %if.then169
  br label %if.end175

if.end175:                                        ; preds = %if.end174
  br label %if.end176

if.end176:                                        ; preds = %if.end175
  br label %if.end177

if.end177:                                        ; preds = %if.end176
  br label %sw.epilog

sw.bb178:                                         ; preds = %if.end42
  %133 = load i8, i8* %c, align 1
  %conv179 = zext i8 %133 to i32
  %134 = load i8, i8* %quote, align 1
  %conv180 = zext i8 %134 to i32
  %cmp181 = icmp eq i32 %conv179, %conv180
  br i1 %cmp181, label %if.then183, label %if.else205

if.then183:                                       ; preds = %sw.bb178
  %135 = load i32, i32* %quoted, align 4
  %tobool184 = icmp ne i32 %135, 0
  br i1 %tobool184, label %if.then185, label %if.else189

if.then185:                                       ; preds = %if.then183
  %136 = load i8, i8* %c, align 1
  %137 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf186 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %137, i32 0, i32 3
  %138 = load i8*, i8** %entry_buf186, align 8
  %139 = load i64, i64* %entry_pos, align 8
  %inc187 = add i64 %139, 1
  store i64 %inc187, i64* %entry_pos, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8 %136, i8* %arrayidx188, align 1
  store i32 3, i32* %pstate, align 4
  br label %if.end204

if.else189:                                       ; preds = %if.then183
  %140 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options190 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %140, i32 0, i32 7
  %141 = load i8, i8* %options190, align 4
  %conv191 = zext i8 %141 to i32
  %and192 = and i32 %conv191, 1
  %tobool193 = icmp ne i32 %and192, 0
  br i1 %tobool193, label %if.then194, label %if.end200

if.then194:                                       ; preds = %if.else189
  %142 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %142, i32 0, i32 6
  store i32 1, i32* %status, align 8
  %143 = load i32, i32* %quoted, align 4
  %144 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted195 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %144, i32 0, i32 1
  store i32 %143, i32* %quoted195, align 4
  %145 = load i32, i32* %pstate, align 4
  %146 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate196 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %146, i32 0, i32 0
  store i32 %145, i32* %pstate196, align 8
  %147 = load i64, i64* %spaces, align 8
  %148 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces197 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %148, i32 0, i32 2
  store i64 %147, i64* %spaces197, align 8
  %149 = load i64, i64* %entry_pos, align 8
  %150 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos198 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %150, i32 0, i32 4
  store i64 %149, i64* %entry_pos198, align 8
  %151 = load i64, i64* %pos, align 8
  %sub199 = sub i64 %151, 1
  store i64 %sub199, i64* %retval, align 8
  br label %return

if.end200:                                        ; preds = %if.else189
  %152 = load i8, i8* %c, align 1
  %153 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf201 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %153, i32 0, i32 3
  %154 = load i8*, i8** %entry_buf201, align 8
  %155 = load i64, i64* %entry_pos, align 8
  %inc202 = add i64 %155, 1
  store i64 %inc202, i64* %entry_pos, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8 %152, i8* %arrayidx203, align 1
  store i64 0, i64* %spaces, align 8
  br label %if.end204

if.end204:                                        ; preds = %if.end200, %if.then185
  br label %if.end336

if.else205:                                       ; preds = %sw.bb178
  %156 = load i8, i8* %c, align 1
  %conv206 = zext i8 %156 to i32
  %157 = load i8, i8* %delim, align 1
  %conv207 = zext i8 %157 to i32
  %cmp208 = icmp eq i32 %conv206, %conv207
  br i1 %cmp208, label %if.then210, label %if.else250

if.then210:                                       ; preds = %if.else205
  %158 = load i32, i32* %quoted, align 4
  %tobool211 = icmp ne i32 %158, 0
  br i1 %tobool211, label %if.then212, label %if.else216

if.then212:                                       ; preds = %if.then210
  %159 = load i8, i8* %c, align 1
  %160 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf213 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %160, i32 0, i32 3
  %161 = load i8*, i8** %entry_buf213, align 8
  %162 = load i64, i64* %entry_pos, align 8
  %inc214 = add i64 %162, 1
  store i64 %inc214, i64* %entry_pos, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8 %159, i8* %arrayidx215, align 1
  br label %if.end249

if.else216:                                       ; preds = %if.then210
  br label %do.body217

do.body217:                                       ; preds = %if.else216
  %163 = load i32, i32* %quoted, align 4
  %tobool218 = icmp ne i32 %163, 0
  br i1 %tobool218, label %if.end221, label %if.then219

if.then219:                                       ; preds = %do.body217
  %164 = load i64, i64* %spaces, align 8
  %165 = load i64, i64* %entry_pos, align 8
  %sub220 = sub i64 %165, %164
  store i64 %sub220, i64* %entry_pos, align 8
  br label %if.end221

if.end221:                                        ; preds = %if.then219, %do.body217
  %166 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options222 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %166, i32 0, i32 7
  %167 = load i8, i8* %options222, align 4
  %conv223 = zext i8 %167 to i32
  %and224 = and i32 %conv223, 8
  %tobool225 = icmp ne i32 %and224, 0
  br i1 %tobool225, label %if.then226, label %if.end229

if.then226:                                       ; preds = %if.end221
  %168 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf227 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %168, i32 0, i32 3
  %169 = load i8*, i8** %entry_buf227, align 8
  %170 = load i64, i64* %entry_pos, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8 0, i8* %arrayidx228, align 1
  br label %if.end229

if.end229:                                        ; preds = %if.then226, %if.end221
  %171 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool230 = icmp ne void (i8*, i64, i8*)* %171, null
  br i1 %tobool230, label %land.lhs.true231, label %if.else242

land.lhs.true231:                                 ; preds = %if.end229
  %172 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options232 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %172, i32 0, i32 7
  %173 = load i8, i8* %options232, align 4
  %conv233 = zext i8 %173 to i32
  %and234 = and i32 %conv233, 16
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %land.lhs.true236, label %if.else242

land.lhs.true236:                                 ; preds = %land.lhs.true231
  %174 = load i32, i32* %quoted, align 4
  %tobool237 = icmp ne i32 %174, 0
  br i1 %tobool237, label %if.else242, label %land.lhs.true238

land.lhs.true238:                                 ; preds = %land.lhs.true236
  %175 = load i64, i64* %entry_pos, align 8
  %cmp239 = icmp eq i64 %175, 0
  br i1 %cmp239, label %if.then241, label %if.else242

if.then241:                                       ; preds = %land.lhs.true238
  %176 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %177 = load i64, i64* %entry_pos, align 8
  %178 = load i8*, i8** %data.addr, align 8
  call void %176(i8* noundef null, i64 noundef %177, i8* noundef %178)
  br label %if.end247

if.else242:                                       ; preds = %land.lhs.true238, %land.lhs.true236, %land.lhs.true231, %if.end229
  %179 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool243 = icmp ne void (i8*, i64, i8*)* %179, null
  br i1 %tobool243, label %if.then244, label %if.end246

if.then244:                                       ; preds = %if.else242
  %180 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %181 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf245 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %181, i32 0, i32 3
  %182 = load i8*, i8** %entry_buf245, align 8
  %183 = load i64, i64* %entry_pos, align 8
  %184 = load i8*, i8** %data.addr, align 8
  call void %180(i8* noundef %182, i64 noundef %183, i8* noundef %184)
  br label %if.end246

if.end246:                                        ; preds = %if.then244, %if.else242
  br label %if.end247

if.end247:                                        ; preds = %if.end246, %if.then241
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end248

do.end248:                                        ; preds = %if.end247
  br label %if.end249

if.end249:                                        ; preds = %do.end248, %if.then212
  br label %if.end335

if.else250:                                       ; preds = %if.else205
  %185 = load i32 (i8)*, i32 (i8)** %is_term, align 8
  %tobool251 = icmp ne i32 (i8)* %185, null
  br i1 %tobool251, label %cond.true252, label %cond.false255

cond.true252:                                     ; preds = %if.else250
  %186 = load i32 (i8)*, i32 (i8)** %is_term, align 8
  %187 = load i8, i8* %c, align 1
  %call253 = call i32 %186(i8 noundef zeroext %187)
  %tobool254 = icmp ne i32 %call253, 0
  br i1 %tobool254, label %if.then263, label %if.else309

cond.false255:                                    ; preds = %if.else250
  %188 = load i8, i8* %c, align 1
  %conv256 = zext i8 %188 to i32
  %cmp257 = icmp eq i32 %conv256, 13
  br i1 %cmp257, label %if.then263, label %lor.lhs.false259

lor.lhs.false259:                                 ; preds = %cond.false255
  %189 = load i8, i8* %c, align 1
  %conv260 = zext i8 %189 to i32
  %cmp261 = icmp eq i32 %conv260, 10
  br i1 %cmp261, label %if.then263, label %if.else309

if.then263:                                       ; preds = %lor.lhs.false259, %cond.false255, %cond.true252
  %190 = load i32, i32* %quoted, align 4
  %tobool264 = icmp ne i32 %190, 0
  br i1 %tobool264, label %if.else304, label %if.then265

if.then265:                                       ; preds = %if.then263
  br label %do.body266

do.body266:                                       ; preds = %if.then265
  %191 = load i32, i32* %quoted, align 4
  %tobool267 = icmp ne i32 %191, 0
  br i1 %tobool267, label %if.end270, label %if.then268

if.then268:                                       ; preds = %do.body266
  %192 = load i64, i64* %spaces, align 8
  %193 = load i64, i64* %entry_pos, align 8
  %sub269 = sub i64 %193, %192
  store i64 %sub269, i64* %entry_pos, align 8
  br label %if.end270

if.end270:                                        ; preds = %if.then268, %do.body266
  %194 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options271 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %194, i32 0, i32 7
  %195 = load i8, i8* %options271, align 4
  %conv272 = zext i8 %195 to i32
  %and273 = and i32 %conv272, 8
  %tobool274 = icmp ne i32 %and273, 0
  br i1 %tobool274, label %if.then275, label %if.end278

if.then275:                                       ; preds = %if.end270
  %196 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf276 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %196, i32 0, i32 3
  %197 = load i8*, i8** %entry_buf276, align 8
  %198 = load i64, i64* %entry_pos, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8 0, i8* %arrayidx277, align 1
  br label %if.end278

if.end278:                                        ; preds = %if.then275, %if.end270
  %199 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool279 = icmp ne void (i8*, i64, i8*)* %199, null
  br i1 %tobool279, label %land.lhs.true280, label %if.else291

land.lhs.true280:                                 ; preds = %if.end278
  %200 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options281 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %200, i32 0, i32 7
  %201 = load i8, i8* %options281, align 4
  %conv282 = zext i8 %201 to i32
  %and283 = and i32 %conv282, 16
  %tobool284 = icmp ne i32 %and283, 0
  br i1 %tobool284, label %land.lhs.true285, label %if.else291

land.lhs.true285:                                 ; preds = %land.lhs.true280
  %202 = load i32, i32* %quoted, align 4
  %tobool286 = icmp ne i32 %202, 0
  br i1 %tobool286, label %if.else291, label %land.lhs.true287

land.lhs.true287:                                 ; preds = %land.lhs.true285
  %203 = load i64, i64* %entry_pos, align 8
  %cmp288 = icmp eq i64 %203, 0
  br i1 %cmp288, label %if.then290, label %if.else291

if.then290:                                       ; preds = %land.lhs.true287
  %204 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %205 = load i64, i64* %entry_pos, align 8
  %206 = load i8*, i8** %data.addr, align 8
  call void %204(i8* noundef null, i64 noundef %205, i8* noundef %206)
  br label %if.end296

if.else291:                                       ; preds = %land.lhs.true287, %land.lhs.true285, %land.lhs.true280, %if.end278
  %207 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool292 = icmp ne void (i8*, i64, i8*)* %207, null
  br i1 %tobool292, label %if.then293, label %if.end295

if.then293:                                       ; preds = %if.else291
  %208 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %209 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf294 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %209, i32 0, i32 3
  %210 = load i8*, i8** %entry_buf294, align 8
  %211 = load i64, i64* %entry_pos, align 8
  %212 = load i8*, i8** %data.addr, align 8
  call void %208(i8* noundef %210, i64 noundef %211, i8* noundef %212)
  br label %if.end295

if.end295:                                        ; preds = %if.then293, %if.else291
  br label %if.end296

if.end296:                                        ; preds = %if.end295, %if.then290
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end297

do.end297:                                        ; preds = %if.end296
  br label %do.body298

do.body298:                                       ; preds = %do.end297
  %213 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %tobool299 = icmp ne void (i32, i8*)* %213, null
  br i1 %tobool299, label %if.then300, label %if.end302

if.then300:                                       ; preds = %do.body298
  %214 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %215 = load i8, i8* %c, align 1
  %conv301 = zext i8 %215 to i32
  %216 = load i8*, i8** %data.addr, align 8
  call void %214(i32 noundef %conv301, i8* noundef %216)
  br label %if.end302

if.end302:                                        ; preds = %if.then300, %do.body298
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end303

do.end303:                                        ; preds = %if.end302
  br label %if.end308

if.else304:                                       ; preds = %if.then263
  %217 = load i8, i8* %c, align 1
  %218 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf305 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %218, i32 0, i32 3
  %219 = load i8*, i8** %entry_buf305, align 8
  %220 = load i64, i64* %entry_pos, align 8
  %inc306 = add i64 %220, 1
  store i64 %inc306, i64* %entry_pos, align 8
  %arrayidx307 = getelementptr inbounds i8, i8* %219, i64 %220
  store i8 %217, i8* %arrayidx307, align 1
  br label %if.end308

if.end308:                                        ; preds = %if.else304, %do.end303
  br label %if.end334

if.else309:                                       ; preds = %lor.lhs.false259, %cond.true252
  %221 = load i32, i32* %quoted, align 4
  %tobool310 = icmp ne i32 %221, 0
  br i1 %tobool310, label %if.else329, label %land.lhs.true311

land.lhs.true311:                                 ; preds = %if.else309
  %222 = load i32 (i8)*, i32 (i8)** %is_space, align 8
  %tobool312 = icmp ne i32 (i8)* %222, null
  br i1 %tobool312, label %cond.true313, label %cond.false316

cond.true313:                                     ; preds = %land.lhs.true311
  %223 = load i32 (i8)*, i32 (i8)** %is_space, align 8
  %224 = load i8, i8* %c, align 1
  %call314 = call i32 %223(i8 noundef zeroext %224)
  %tobool315 = icmp ne i32 %call314, 0
  br i1 %tobool315, label %if.then324, label %if.else329

cond.false316:                                    ; preds = %land.lhs.true311
  %225 = load i8, i8* %c, align 1
  %conv317 = zext i8 %225 to i32
  %cmp318 = icmp eq i32 %conv317, 32
  br i1 %cmp318, label %if.then324, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %cond.false316
  %226 = load i8, i8* %c, align 1
  %conv321 = zext i8 %226 to i32
  %cmp322 = icmp eq i32 %conv321, 9
  br i1 %cmp322, label %if.then324, label %if.else329

if.then324:                                       ; preds = %lor.lhs.false320, %cond.false316, %cond.true313
  %227 = load i8, i8* %c, align 1
  %228 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf325 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %228, i32 0, i32 3
  %229 = load i8*, i8** %entry_buf325, align 8
  %230 = load i64, i64* %entry_pos, align 8
  %inc326 = add i64 %230, 1
  store i64 %inc326, i64* %entry_pos, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8 %227, i8* %arrayidx327, align 1
  %231 = load i64, i64* %spaces, align 8
  %inc328 = add i64 %231, 1
  store i64 %inc328, i64* %spaces, align 8
  br label %if.end333

if.else329:                                       ; preds = %lor.lhs.false320, %cond.true313, %if.else309
  %232 = load i8, i8* %c, align 1
  %233 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf330 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %233, i32 0, i32 3
  %234 = load i8*, i8** %entry_buf330, align 8
  %235 = load i64, i64* %entry_pos, align 8
  %inc331 = add i64 %235, 1
  store i64 %inc331, i64* %entry_pos, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8 %232, i8* %arrayidx332, align 1
  store i64 0, i64* %spaces, align 8
  br label %if.end333

if.end333:                                        ; preds = %if.else329, %if.then324
  br label %if.end334

if.end334:                                        ; preds = %if.end333, %if.end308
  br label %if.end335

if.end335:                                        ; preds = %if.end334, %if.end249
  br label %if.end336

if.end336:                                        ; preds = %if.end335, %if.end204
  br label %sw.epilog

sw.bb337:                                         ; preds = %if.end42
  %236 = load i8, i8* %c, align 1
  %conv338 = zext i8 %236 to i32
  %237 = load i8, i8* %delim, align 1
  %conv339 = zext i8 %237 to i32
  %cmp340 = icmp eq i32 %conv338, %conv339
  br i1 %cmp340, label %if.then342, label %if.else376

if.then342:                                       ; preds = %sw.bb337
  %238 = load i64, i64* %spaces, align 8
  %add = add i64 %238, 1
  %239 = load i64, i64* %entry_pos, align 8
  %sub343 = sub i64 %239, %add
  store i64 %sub343, i64* %entry_pos, align 8
  br label %do.body344

do.body344:                                       ; preds = %if.then342
  %240 = load i32, i32* %quoted, align 4
  %tobool345 = icmp ne i32 %240, 0
  br i1 %tobool345, label %if.end348, label %if.then346

if.then346:                                       ; preds = %do.body344
  %241 = load i64, i64* %spaces, align 8
  %242 = load i64, i64* %entry_pos, align 8
  %sub347 = sub i64 %242, %241
  store i64 %sub347, i64* %entry_pos, align 8
  br label %if.end348

if.end348:                                        ; preds = %if.then346, %do.body344
  %243 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options349 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %243, i32 0, i32 7
  %244 = load i8, i8* %options349, align 4
  %conv350 = zext i8 %244 to i32
  %and351 = and i32 %conv350, 8
  %tobool352 = icmp ne i32 %and351, 0
  br i1 %tobool352, label %if.then353, label %if.end356

if.then353:                                       ; preds = %if.end348
  %245 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf354 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %245, i32 0, i32 3
  %246 = load i8*, i8** %entry_buf354, align 8
  %247 = load i64, i64* %entry_pos, align 8
  %arrayidx355 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8 0, i8* %arrayidx355, align 1
  br label %if.end356

if.end356:                                        ; preds = %if.then353, %if.end348
  %248 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool357 = icmp ne void (i8*, i64, i8*)* %248, null
  br i1 %tobool357, label %land.lhs.true358, label %if.else369

land.lhs.true358:                                 ; preds = %if.end356
  %249 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options359 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %249, i32 0, i32 7
  %250 = load i8, i8* %options359, align 4
  %conv360 = zext i8 %250 to i32
  %and361 = and i32 %conv360, 16
  %tobool362 = icmp ne i32 %and361, 0
  br i1 %tobool362, label %land.lhs.true363, label %if.else369

land.lhs.true363:                                 ; preds = %land.lhs.true358
  %251 = load i32, i32* %quoted, align 4
  %tobool364 = icmp ne i32 %251, 0
  br i1 %tobool364, label %if.else369, label %land.lhs.true365

land.lhs.true365:                                 ; preds = %land.lhs.true363
  %252 = load i64, i64* %entry_pos, align 8
  %cmp366 = icmp eq i64 %252, 0
  br i1 %cmp366, label %if.then368, label %if.else369

if.then368:                                       ; preds = %land.lhs.true365
  %253 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %254 = load i64, i64* %entry_pos, align 8
  %255 = load i8*, i8** %data.addr, align 8
  call void %253(i8* noundef null, i64 noundef %254, i8* noundef %255)
  br label %if.end374

if.else369:                                       ; preds = %land.lhs.true365, %land.lhs.true363, %land.lhs.true358, %if.end356
  %256 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool370 = icmp ne void (i8*, i64, i8*)* %256, null
  br i1 %tobool370, label %if.then371, label %if.end373

if.then371:                                       ; preds = %if.else369
  %257 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %258 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf372 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %258, i32 0, i32 3
  %259 = load i8*, i8** %entry_buf372, align 8
  %260 = load i64, i64* %entry_pos, align 8
  %261 = load i8*, i8** %data.addr, align 8
  call void %257(i8* noundef %259, i64 noundef %260, i8* noundef %261)
  br label %if.end373

if.end373:                                        ; preds = %if.then371, %if.else369
  br label %if.end374

if.end374:                                        ; preds = %if.end373, %if.then368
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end375

do.end375:                                        ; preds = %if.end374
  br label %if.end492

if.else376:                                       ; preds = %sw.bb337
  %262 = load i32 (i8)*, i32 (i8)** %is_term, align 8
  %tobool377 = icmp ne i32 (i8)* %262, null
  br i1 %tobool377, label %cond.true378, label %cond.false381

cond.true378:                                     ; preds = %if.else376
  %263 = load i32 (i8)*, i32 (i8)** %is_term, align 8
  %264 = load i8, i8* %c, align 1
  %call379 = call i32 %263(i8 noundef zeroext %264)
  %tobool380 = icmp ne i32 %call379, 0
  br i1 %tobool380, label %if.then389, label %if.else430

cond.false381:                                    ; preds = %if.else376
  %265 = load i8, i8* %c, align 1
  %conv382 = zext i8 %265 to i32
  %cmp383 = icmp eq i32 %conv382, 13
  br i1 %cmp383, label %if.then389, label %lor.lhs.false385

lor.lhs.false385:                                 ; preds = %cond.false381
  %266 = load i8, i8* %c, align 1
  %conv386 = zext i8 %266 to i32
  %cmp387 = icmp eq i32 %conv386, 10
  br i1 %cmp387, label %if.then389, label %if.else430

if.then389:                                       ; preds = %lor.lhs.false385, %cond.false381, %cond.true378
  %267 = load i64, i64* %spaces, align 8
  %add390 = add i64 %267, 1
  %268 = load i64, i64* %entry_pos, align 8
  %sub391 = sub i64 %268, %add390
  store i64 %sub391, i64* %entry_pos, align 8
  br label %do.body392

do.body392:                                       ; preds = %if.then389
  %269 = load i32, i32* %quoted, align 4
  %tobool393 = icmp ne i32 %269, 0
  br i1 %tobool393, label %if.end396, label %if.then394

if.then394:                                       ; preds = %do.body392
  %270 = load i64, i64* %spaces, align 8
  %271 = load i64, i64* %entry_pos, align 8
  %sub395 = sub i64 %271, %270
  store i64 %sub395, i64* %entry_pos, align 8
  br label %if.end396

if.end396:                                        ; preds = %if.then394, %do.body392
  %272 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options397 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %272, i32 0, i32 7
  %273 = load i8, i8* %options397, align 4
  %conv398 = zext i8 %273 to i32
  %and399 = and i32 %conv398, 8
  %tobool400 = icmp ne i32 %and399, 0
  br i1 %tobool400, label %if.then401, label %if.end404

if.then401:                                       ; preds = %if.end396
  %274 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf402 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %274, i32 0, i32 3
  %275 = load i8*, i8** %entry_buf402, align 8
  %276 = load i64, i64* %entry_pos, align 8
  %arrayidx403 = getelementptr inbounds i8, i8* %275, i64 %276
  store i8 0, i8* %arrayidx403, align 1
  br label %if.end404

if.end404:                                        ; preds = %if.then401, %if.end396
  %277 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool405 = icmp ne void (i8*, i64, i8*)* %277, null
  br i1 %tobool405, label %land.lhs.true406, label %if.else417

land.lhs.true406:                                 ; preds = %if.end404
  %278 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options407 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %278, i32 0, i32 7
  %279 = load i8, i8* %options407, align 4
  %conv408 = zext i8 %279 to i32
  %and409 = and i32 %conv408, 16
  %tobool410 = icmp ne i32 %and409, 0
  br i1 %tobool410, label %land.lhs.true411, label %if.else417

land.lhs.true411:                                 ; preds = %land.lhs.true406
  %280 = load i32, i32* %quoted, align 4
  %tobool412 = icmp ne i32 %280, 0
  br i1 %tobool412, label %if.else417, label %land.lhs.true413

land.lhs.true413:                                 ; preds = %land.lhs.true411
  %281 = load i64, i64* %entry_pos, align 8
  %cmp414 = icmp eq i64 %281, 0
  br i1 %cmp414, label %if.then416, label %if.else417

if.then416:                                       ; preds = %land.lhs.true413
  %282 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %283 = load i64, i64* %entry_pos, align 8
  %284 = load i8*, i8** %data.addr, align 8
  call void %282(i8* noundef null, i64 noundef %283, i8* noundef %284)
  br label %if.end422

if.else417:                                       ; preds = %land.lhs.true413, %land.lhs.true411, %land.lhs.true406, %if.end404
  %285 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool418 = icmp ne void (i8*, i64, i8*)* %285, null
  br i1 %tobool418, label %if.then419, label %if.end421

if.then419:                                       ; preds = %if.else417
  %286 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %287 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf420 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %287, i32 0, i32 3
  %288 = load i8*, i8** %entry_buf420, align 8
  %289 = load i64, i64* %entry_pos, align 8
  %290 = load i8*, i8** %data.addr, align 8
  call void %286(i8* noundef %288, i64 noundef %289, i8* noundef %290)
  br label %if.end421

if.end421:                                        ; preds = %if.then419, %if.else417
  br label %if.end422

if.end422:                                        ; preds = %if.end421, %if.then416
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end423

do.end423:                                        ; preds = %if.end422
  br label %do.body424

do.body424:                                       ; preds = %do.end423
  %291 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %tobool425 = icmp ne void (i32, i8*)* %291, null
  br i1 %tobool425, label %if.then426, label %if.end428

if.then426:                                       ; preds = %do.body424
  %292 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %293 = load i8, i8* %c, align 1
  %conv427 = zext i8 %293 to i32
  %294 = load i8*, i8** %data.addr, align 8
  call void %292(i32 noundef %conv427, i8* noundef %294)
  br label %if.end428

if.end428:                                        ; preds = %if.then426, %do.body424
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end429

do.end429:                                        ; preds = %if.end428
  br label %if.end491

if.else430:                                       ; preds = %lor.lhs.false385, %cond.true378
  %295 = load i32 (i8)*, i32 (i8)** %is_space, align 8
  %tobool431 = icmp ne i32 (i8)* %295, null
  br i1 %tobool431, label %cond.true432, label %cond.false435

cond.true432:                                     ; preds = %if.else430
  %296 = load i32 (i8)*, i32 (i8)** %is_space, align 8
  %297 = load i8, i8* %c, align 1
  %call433 = call i32 %296(i8 noundef zeroext %297)
  %tobool434 = icmp ne i32 %call433, 0
  br i1 %tobool434, label %if.then443, label %if.else448

cond.false435:                                    ; preds = %if.else430
  %298 = load i8, i8* %c, align 1
  %conv436 = zext i8 %298 to i32
  %cmp437 = icmp eq i32 %conv436, 32
  br i1 %cmp437, label %if.then443, label %lor.lhs.false439

lor.lhs.false439:                                 ; preds = %cond.false435
  %299 = load i8, i8* %c, align 1
  %conv440 = zext i8 %299 to i32
  %cmp441 = icmp eq i32 %conv440, 9
  br i1 %cmp441, label %if.then443, label %if.else448

if.then443:                                       ; preds = %lor.lhs.false439, %cond.false435, %cond.true432
  %300 = load i8, i8* %c, align 1
  %301 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf444 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %301, i32 0, i32 3
  %302 = load i8*, i8** %entry_buf444, align 8
  %303 = load i64, i64* %entry_pos, align 8
  %inc445 = add i64 %303, 1
  store i64 %inc445, i64* %entry_pos, align 8
  %arrayidx446 = getelementptr inbounds i8, i8* %302, i64 %303
  store i8 %300, i8* %arrayidx446, align 1
  %304 = load i64, i64* %spaces, align 8
  %inc447 = add i64 %304, 1
  store i64 %inc447, i64* %spaces, align 8
  br label %if.end490

if.else448:                                       ; preds = %lor.lhs.false439, %cond.true432
  %305 = load i8, i8* %c, align 1
  %conv449 = zext i8 %305 to i32
  %306 = load i8, i8* %quote, align 1
  %conv450 = zext i8 %306 to i32
  %cmp451 = icmp eq i32 %conv449, %conv450
  br i1 %cmp451, label %if.then453, label %if.else473

if.then453:                                       ; preds = %if.else448
  %307 = load i64, i64* %spaces, align 8
  %tobool454 = icmp ne i64 %307, 0
  br i1 %tobool454, label %if.then455, label %if.else471

if.then455:                                       ; preds = %if.then453
  %308 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options456 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %308, i32 0, i32 7
  %309 = load i8, i8* %options456, align 4
  %conv457 = zext i8 %309 to i32
  %and458 = and i32 %conv457, 1
  %tobool459 = icmp ne i32 %and458, 0
  br i1 %tobool459, label %if.then460, label %if.end467

if.then460:                                       ; preds = %if.then455
  %310 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status461 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %310, i32 0, i32 6
  store i32 1, i32* %status461, align 8
  %311 = load i32, i32* %quoted, align 4
  %312 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted462 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %312, i32 0, i32 1
  store i32 %311, i32* %quoted462, align 4
  %313 = load i32, i32* %pstate, align 4
  %314 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate463 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %314, i32 0, i32 0
  store i32 %313, i32* %pstate463, align 8
  %315 = load i64, i64* %spaces, align 8
  %316 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces464 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %316, i32 0, i32 2
  store i64 %315, i64* %spaces464, align 8
  %317 = load i64, i64* %entry_pos, align 8
  %318 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos465 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %318, i32 0, i32 4
  store i64 %317, i64* %entry_pos465, align 8
  %319 = load i64, i64* %pos, align 8
  %sub466 = sub i64 %319, 1
  store i64 %sub466, i64* %retval, align 8
  br label %return

if.end467:                                        ; preds = %if.then455
  store i64 0, i64* %spaces, align 8
  %320 = load i8, i8* %c, align 1
  %321 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf468 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %321, i32 0, i32 3
  %322 = load i8*, i8** %entry_buf468, align 8
  %323 = load i64, i64* %entry_pos, align 8
  %inc469 = add i64 %323, 1
  store i64 %inc469, i64* %entry_pos, align 8
  %arrayidx470 = getelementptr inbounds i8, i8* %322, i64 %323
  store i8 %320, i8* %arrayidx470, align 1
  br label %if.end472

if.else471:                                       ; preds = %if.then453
  store i32 2, i32* %pstate, align 4
  br label %if.end472

if.end472:                                        ; preds = %if.else471, %if.end467
  br label %if.end489

if.else473:                                       ; preds = %if.else448
  %324 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options474 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %324, i32 0, i32 7
  %325 = load i8, i8* %options474, align 4
  %conv475 = zext i8 %325 to i32
  %and476 = and i32 %conv475, 1
  %tobool477 = icmp ne i32 %and476, 0
  br i1 %tobool477, label %if.then478, label %if.end485

if.then478:                                       ; preds = %if.else473
  %326 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status479 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %326, i32 0, i32 6
  store i32 1, i32* %status479, align 8
  %327 = load i32, i32* %quoted, align 4
  %328 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted480 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %328, i32 0, i32 1
  store i32 %327, i32* %quoted480, align 4
  %329 = load i32, i32* %pstate, align 4
  %330 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate481 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %330, i32 0, i32 0
  store i32 %329, i32* %pstate481, align 8
  %331 = load i64, i64* %spaces, align 8
  %332 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces482 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %332, i32 0, i32 2
  store i64 %331, i64* %spaces482, align 8
  %333 = load i64, i64* %entry_pos, align 8
  %334 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos483 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %334, i32 0, i32 4
  store i64 %333, i64* %entry_pos483, align 8
  %335 = load i64, i64* %pos, align 8
  %sub484 = sub i64 %335, 1
  store i64 %sub484, i64* %retval, align 8
  br label %return

if.end485:                                        ; preds = %if.else473
  store i32 2, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  %336 = load i8, i8* %c, align 1
  %337 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf486 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %337, i32 0, i32 3
  %338 = load i8*, i8** %entry_buf486, align 8
  %339 = load i64, i64* %entry_pos, align 8
  %inc487 = add i64 %339, 1
  store i64 %inc487, i64* %entry_pos, align 8
  %arrayidx488 = getelementptr inbounds i8, i8* %338, i64 %339
  store i8 %336, i8* %arrayidx488, align 1
  br label %if.end489

if.end489:                                        ; preds = %if.end485, %if.end472
  br label %if.end490

if.end490:                                        ; preds = %if.end489, %if.then443
  br label %if.end491

if.end491:                                        ; preds = %if.end490, %do.end429
  br label %if.end492

if.end492:                                        ; preds = %if.end491, %do.end375
  br label %sw.epilog

sw.default:                                       ; preds = %if.end42
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end492, %if.end336, %if.end177, %do.end163
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %340 = load i32, i32* %quoted, align 4
  %341 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted493 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %341, i32 0, i32 1
  store i32 %340, i32* %quoted493, align 4
  %342 = load i32, i32* %pstate, align 4
  %343 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate494 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %343, i32 0, i32 0
  store i32 %342, i32* %pstate494, align 8
  %344 = load i64, i64* %spaces, align 8
  %345 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces495 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %345, i32 0, i32 2
  store i64 %344, i64* %spaces495, align 8
  %346 = load i64, i64* %entry_pos, align 8
  %347 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos496 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %347, i32 0, i32 4
  store i64 %346, i64* %entry_pos496, align 8
  %348 = load i64, i64* %pos, align 8
  store i64 %348, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then478, %if.then460, %if.then194, %if.then36, %if.then15, %if.then
  %349 = load i64, i64* %retval, align 8
  ret i64 %349
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @csv_write(i8* noundef %dest, i64 noundef %dest_size, i8* noundef %src, i64 noundef %src_size) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %dest_size.addr = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %src_size.addr = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %dest_size, i64* %dest_size.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %src_size, i64* %src_size.addr, align 8
  %0 = load i8*, i8** %dest.addr, align 8
  %1 = load i64, i64* %dest_size.addr, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i64, i64* %src_size.addr, align 8
  %call = call i64 @csv_write2(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i8 noundef zeroext 34)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @csv_write2(i8* noundef %dest, i64 noundef %dest_size, i8* noundef %src, i64 noundef %src_size, i8 noundef zeroext %quote) #0 {
entry:
  %retval = alloca i64, align 8
  %dest.addr = alloca i8*, align 8
  %dest_size.addr = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %src_size.addr = alloca i64, align 8
  %quote.addr = alloca i8, align 1
  %cdest = alloca i8*, align 8
  %csrc = alloca i8*, align 8
  %chars = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %dest_size, i64* %dest_size.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %src_size, i64* %src_size.addr, align 8
  store i8 %quote, i8* %quote.addr, align 1
  %0 = load i8*, i8** %dest.addr, align 8
  store i8* %0, i8** %cdest, align 8
  %1 = load i8*, i8** %src.addr, align 8
  store i8* %1, i8** %csrc, align 8
  store i64 0, i64* %chars, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %dest.addr, align 8
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i64 0, i64* %dest_size.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %dest_size.addr, align 8
  %cmp4 = icmp ugt i64 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %5 = load i8, i8* %quote.addr, align 1
  %6 = load i8*, i8** %cdest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cdest, align 8
  store i8 %5, i8* %6, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %7 = load i64, i64* %chars, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %chars, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %if.end6
  %8 = load i64, i64* %src_size.addr, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %csrc, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  %11 = load i8, i8* %quote.addr, align 1
  %conv7 = zext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv, %conv7
  br i1 %cmp8, label %if.then10, label %if.end21

if.then10:                                        ; preds = %while.body
  %12 = load i64, i64* %dest_size.addr, align 8
  %13 = load i64, i64* %chars, align 8
  %cmp11 = icmp ugt i64 %12, %13
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then10
  %14 = load i8, i8* %quote.addr, align 1
  %15 = load i8*, i8** %cdest, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr14, i8** %cdest, align 8
  store i8 %14, i8* %15, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10
  %16 = load i64, i64* %chars, align 8
  %cmp16 = icmp ult i64 %16, -1
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %17 = load i64, i64* %chars, align 8
  %inc19 = add i64 %17, 1
  store i64 %inc19, i64* %chars, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %while.body
  %18 = load i64, i64* %dest_size.addr, align 8
  %19 = load i64, i64* %chars, align 8
  %cmp22 = icmp ugt i64 %18, %19
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  %20 = load i8*, i8** %csrc, align 8
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %cdest, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr25, i8** %cdest, align 8
  store i8 %21, i8* %22, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21
  %23 = load i64, i64* %chars, align 8
  %cmp27 = icmp ult i64 %23, -1
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  %24 = load i64, i64* %chars, align 8
  %inc30 = add i64 %24, 1
  store i64 %inc30, i64* %chars, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26
  %25 = load i64, i64* %src_size.addr, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %src_size.addr, align 8
  %26 = load i8*, i8** %csrc, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr32, i8** %csrc, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %27 = load i64, i64* %dest_size.addr, align 8
  %28 = load i64, i64* %chars, align 8
  %cmp33 = icmp ugt i64 %27, %28
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %while.end
  %29 = load i8, i8* %quote.addr, align 1
  %30 = load i8*, i8** %cdest, align 8
  store i8 %29, i8* %30, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %while.end
  %31 = load i64, i64* %chars, align 8
  %cmp37 = icmp ult i64 %31, -1
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end36
  %32 = load i64, i64* %chars, align 8
  %inc40 = add i64 %32, 1
  store i64 %inc40, i64* %chars, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36
  %33 = load i64, i64* %chars, align 8
  store i64 %33, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end41, %if.then
  %34 = load i64, i64* %retval, align 8
  ret i64 %34
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @csv_fwrite(%struct.__sFILE* noundef %fp, i8* noundef %src, i64 noundef %src_size) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %src.addr = alloca i8*, align 8
  %src_size.addr = alloca i64, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %src_size, i64* %src_size.addr, align 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %1 = load i8*, i8** %src.addr, align 8
  %2 = load i64, i64* %src_size.addr, align 8
  %call = call i32 @csv_fwrite2(%struct.__sFILE* noundef %0, i8* noundef %1, i64 noundef %2, i8 noundef zeroext 34)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @csv_fwrite2(%struct.__sFILE* noundef %fp, i8* noundef %src, i64 noundef %src_size, i8 noundef zeroext %quote) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct.__sFILE*, align 8
  %src.addr = alloca i8*, align 8
  %src_size.addr = alloca i64, align 8
  %quote.addr = alloca i8, align 1
  %csrc = alloca i8*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %src_size, i64* %src_size.addr, align 8
  store i8 %quote, i8* %quote.addr, align 1
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %csrc, align 8
  %1 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %cmp = icmp eq %struct.__sFILE* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %src.addr, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8, i8* %quote.addr, align 1
  %conv = zext i8 %3 to i32
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call = call i32 @fputc(i32 noundef %conv, %struct.__sFILE* noundef %4)
  %cmp2 = icmp eq i32 %call, -1
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end23, %if.end5
  %5 = load i64, i64* %src_size.addr, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %csrc, align 8
  %7 = load i8, i8* %6, align 1
  %conv6 = zext i8 %7 to i32
  %8 = load i8, i8* %quote.addr, align 1
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv6, %conv7
  br i1 %cmp8, label %if.then10, label %if.end17

if.then10:                                        ; preds = %while.body
  %9 = load i8, i8* %quote.addr, align 1
  %conv11 = zext i8 %9 to i32
  %10 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call12 = call i32 @fputc(i32 noundef %conv11, %struct.__sFILE* noundef %10)
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then10
  store i32 -1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %while.body
  %11 = load i8*, i8** %csrc, align 8
  %12 = load i8, i8* %11, align 1
  %conv18 = zext i8 %12 to i32
  %13 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call19 = call i32 @fputc(i32 noundef %conv18, %struct.__sFILE* noundef %13)
  %cmp20 = icmp eq i32 %call19, -1
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end17
  store i32 -1, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end17
  %14 = load i64, i64* %src_size.addr, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %src_size.addr, align 8
  %15 = load i8*, i8** %csrc, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %csrc, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %16 = load i8, i8* %quote.addr, align 1
  %conv24 = zext i8 %16 to i32
  %17 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call25 = call i32 @fputc(i32 noundef %conv24, %struct.__sFILE* noundef %17)
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %while.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then28, %if.then22, %if.then15, %if.then4, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

declare i32 @fputc(i32 noundef, %struct.__sFILE* noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { cold noreturn }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
