; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsets.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zsets.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_str_num = external global [1 x %struct.zahl], align 8
@libzahl_const_1e19 = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @zsets(%struct.zahl* noundef %a, i8* noundef %str) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.zahl*, align 8
  %str.addr = alloca i8*, align 8
  %temp = alloca i64, align 8
  %neg = alloca i32, align 4
  %str_end = alloca i8*, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 0, i64* %temp, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %neg, align 4
  %2 = load i32, i32* %neg, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 43
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  %6 = load i8*, i8** %str.addr, align 8
  %idx.ext = sext i32 %lor.ext to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %str.addr, align 8
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %tobool5 = icmp ne i8 %8, 0
  %lnot = xor i1 %tobool5, true
  %lnot6 = xor i1 %lnot, true
  %lnot7 = xor i1 %lnot6, true
  %lnot.ext = zext i1 %lnot7 to i32
  %conv8 = sext i32 %lnot.ext to i64
  %tobool9 = icmp ne i64 %conv8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %call = call i32* @__error()
  store i32 22, i32* %call, align 4
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.end
  %9 = load i8*, i8** %str.addr, align 8
  store i8* %9, i8** %str_end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i8*, i8** %str_end, align 8
  %11 = load i8, i8* %10, align 1
  %tobool10 = icmp ne i8 %11, 0
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %str_end, align 8
  %13 = load i8, i8* %12, align 1
  %conv11 = sext i8 %13 to i32
  %call12 = call i32 @isdigit(i32 noundef %conv11) #3
  %tobool13 = icmp ne i32 %call12, 0
  %lnot14 = xor i1 %tobool13, true
  %lnot16 = xor i1 %lnot14, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.body
  %call23 = call i32* @__error()
  store i32 22, i32* %call23, align 4
  store i32 -1, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %14 = load i8*, i8** %str_end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %str_end, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %15 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %15, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0))
  %16 = load i8*, i8** %str_end, align 8
  %17 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %rem = srem i64 %sub.ptr.sub, 19
  switch i64 %rem, label %sw.epilog [
    i64 0, label %sw.bb
    i64 18, label %sw.bb29
    i64 17, label %sw.bb36
    i64 16, label %sw.bb43
    i64 15, label %sw.bb50
    i64 14, label %sw.bb57
    i64 13, label %sw.bb64
    i64 12, label %sw.bb71
    i64 11, label %sw.bb78
    i64 10, label %sw.bb85
    i64 9, label %sw.bb92
    i64 8, label %sw.bb99
    i64 7, label %sw.bb106
    i64 6, label %sw.bb113
    i64 5, label %sw.bb120
    i64 4, label %sw.bb127
    i64 3, label %sw.bb134
    i64 2, label %sw.bb141
    i64 1, label %sw.bb148
  ]

18:                                               ; No predecessors!
  br label %while.cond

while.cond:                                       ; preds = %if.end157, %if.then156, %18
  %19 = load i8*, i8** %str.addr, align 8
  %20 = load i8, i8* %19, align 1
  %tobool25 = icmp ne i8 %20, 0
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %22 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zmul(%struct.zahl* noundef %21, %struct.zahl* noundef %22, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0))
  store i64 0, i64* %temp, align 8
  br label %sw.bb

sw.bb:                                            ; preds = %for.end, %while.body
  %23 = load i64, i64* %temp, align 8
  %mul = mul i64 %23, 10
  store i64 %mul, i64* %temp, align 8
  %24 = load i8*, i8** %str.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr26, i8** %str.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv27 = sext i8 %25 to i32
  %and = and i32 %conv27, 15
  %conv28 = sext i32 %and to i64
  %26 = load i64, i64* %temp, align 8
  %add = add i64 %26, %conv28
  store i64 %add, i64* %temp, align 8
  br label %sw.bb29

sw.bb29:                                          ; preds = %for.end, %sw.bb
  %27 = load i64, i64* %temp, align 8
  %mul30 = mul i64 %27, 10
  store i64 %mul30, i64* %temp, align 8
  %28 = load i8*, i8** %str.addr, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr31, i8** %str.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv32 = sext i8 %29 to i32
  %and33 = and i32 %conv32, 15
  %conv34 = sext i32 %and33 to i64
  %30 = load i64, i64* %temp, align 8
  %add35 = add i64 %30, %conv34
  store i64 %add35, i64* %temp, align 8
  br label %sw.bb36

sw.bb36:                                          ; preds = %for.end, %sw.bb29
  %31 = load i64, i64* %temp, align 8
  %mul37 = mul i64 %31, 10
  store i64 %mul37, i64* %temp, align 8
  %32 = load i8*, i8** %str.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr38, i8** %str.addr, align 8
  %33 = load i8, i8* %32, align 1
  %conv39 = sext i8 %33 to i32
  %and40 = and i32 %conv39, 15
  %conv41 = sext i32 %and40 to i64
  %34 = load i64, i64* %temp, align 8
  %add42 = add i64 %34, %conv41
  store i64 %add42, i64* %temp, align 8
  br label %sw.bb43

sw.bb43:                                          ; preds = %for.end, %sw.bb36
  %35 = load i64, i64* %temp, align 8
  %mul44 = mul i64 %35, 10
  store i64 %mul44, i64* %temp, align 8
  %36 = load i8*, i8** %str.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr45, i8** %str.addr, align 8
  %37 = load i8, i8* %36, align 1
  %conv46 = sext i8 %37 to i32
  %and47 = and i32 %conv46, 15
  %conv48 = sext i32 %and47 to i64
  %38 = load i64, i64* %temp, align 8
  %add49 = add i64 %38, %conv48
  store i64 %add49, i64* %temp, align 8
  br label %sw.bb50

sw.bb50:                                          ; preds = %for.end, %sw.bb43
  %39 = load i64, i64* %temp, align 8
  %mul51 = mul i64 %39, 10
  store i64 %mul51, i64* %temp, align 8
  %40 = load i8*, i8** %str.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr52, i8** %str.addr, align 8
  %41 = load i8, i8* %40, align 1
  %conv53 = sext i8 %41 to i32
  %and54 = and i32 %conv53, 15
  %conv55 = sext i32 %and54 to i64
  %42 = load i64, i64* %temp, align 8
  %add56 = add i64 %42, %conv55
  store i64 %add56, i64* %temp, align 8
  br label %sw.bb57

sw.bb57:                                          ; preds = %for.end, %sw.bb50
  %43 = load i64, i64* %temp, align 8
  %mul58 = mul i64 %43, 10
  store i64 %mul58, i64* %temp, align 8
  %44 = load i8*, i8** %str.addr, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr59, i8** %str.addr, align 8
  %45 = load i8, i8* %44, align 1
  %conv60 = sext i8 %45 to i32
  %and61 = and i32 %conv60, 15
  %conv62 = sext i32 %and61 to i64
  %46 = load i64, i64* %temp, align 8
  %add63 = add i64 %46, %conv62
  store i64 %add63, i64* %temp, align 8
  br label %sw.bb64

sw.bb64:                                          ; preds = %for.end, %sw.bb57
  %47 = load i64, i64* %temp, align 8
  %mul65 = mul i64 %47, 10
  store i64 %mul65, i64* %temp, align 8
  %48 = load i8*, i8** %str.addr, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr66, i8** %str.addr, align 8
  %49 = load i8, i8* %48, align 1
  %conv67 = sext i8 %49 to i32
  %and68 = and i32 %conv67, 15
  %conv69 = sext i32 %and68 to i64
  %50 = load i64, i64* %temp, align 8
  %add70 = add i64 %50, %conv69
  store i64 %add70, i64* %temp, align 8
  br label %sw.bb71

sw.bb71:                                          ; preds = %for.end, %sw.bb64
  %51 = load i64, i64* %temp, align 8
  %mul72 = mul i64 %51, 10
  store i64 %mul72, i64* %temp, align 8
  %52 = load i8*, i8** %str.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr73, i8** %str.addr, align 8
  %53 = load i8, i8* %52, align 1
  %conv74 = sext i8 %53 to i32
  %and75 = and i32 %conv74, 15
  %conv76 = sext i32 %and75 to i64
  %54 = load i64, i64* %temp, align 8
  %add77 = add i64 %54, %conv76
  store i64 %add77, i64* %temp, align 8
  br label %sw.bb78

sw.bb78:                                          ; preds = %for.end, %sw.bb71
  %55 = load i64, i64* %temp, align 8
  %mul79 = mul i64 %55, 10
  store i64 %mul79, i64* %temp, align 8
  %56 = load i8*, i8** %str.addr, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr80, i8** %str.addr, align 8
  %57 = load i8, i8* %56, align 1
  %conv81 = sext i8 %57 to i32
  %and82 = and i32 %conv81, 15
  %conv83 = sext i32 %and82 to i64
  %58 = load i64, i64* %temp, align 8
  %add84 = add i64 %58, %conv83
  store i64 %add84, i64* %temp, align 8
  br label %sw.bb85

sw.bb85:                                          ; preds = %for.end, %sw.bb78
  %59 = load i64, i64* %temp, align 8
  %mul86 = mul i64 %59, 10
  store i64 %mul86, i64* %temp, align 8
  %60 = load i8*, i8** %str.addr, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr87, i8** %str.addr, align 8
  %61 = load i8, i8* %60, align 1
  %conv88 = sext i8 %61 to i32
  %and89 = and i32 %conv88, 15
  %conv90 = sext i32 %and89 to i64
  %62 = load i64, i64* %temp, align 8
  %add91 = add i64 %62, %conv90
  store i64 %add91, i64* %temp, align 8
  br label %sw.bb92

sw.bb92:                                          ; preds = %for.end, %sw.bb85
  %63 = load i64, i64* %temp, align 8
  %mul93 = mul i64 %63, 10
  store i64 %mul93, i64* %temp, align 8
  %64 = load i8*, i8** %str.addr, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr94, i8** %str.addr, align 8
  %65 = load i8, i8* %64, align 1
  %conv95 = sext i8 %65 to i32
  %and96 = and i32 %conv95, 15
  %conv97 = sext i32 %and96 to i64
  %66 = load i64, i64* %temp, align 8
  %add98 = add i64 %66, %conv97
  store i64 %add98, i64* %temp, align 8
  br label %sw.bb99

sw.bb99:                                          ; preds = %for.end, %sw.bb92
  %67 = load i64, i64* %temp, align 8
  %mul100 = mul i64 %67, 10
  store i64 %mul100, i64* %temp, align 8
  %68 = load i8*, i8** %str.addr, align 8
  %incdec.ptr101 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr101, i8** %str.addr, align 8
  %69 = load i8, i8* %68, align 1
  %conv102 = sext i8 %69 to i32
  %and103 = and i32 %conv102, 15
  %conv104 = sext i32 %and103 to i64
  %70 = load i64, i64* %temp, align 8
  %add105 = add i64 %70, %conv104
  store i64 %add105, i64* %temp, align 8
  br label %sw.bb106

sw.bb106:                                         ; preds = %for.end, %sw.bb99
  %71 = load i64, i64* %temp, align 8
  %mul107 = mul i64 %71, 10
  store i64 %mul107, i64* %temp, align 8
  %72 = load i8*, i8** %str.addr, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr108, i8** %str.addr, align 8
  %73 = load i8, i8* %72, align 1
  %conv109 = sext i8 %73 to i32
  %and110 = and i32 %conv109, 15
  %conv111 = sext i32 %and110 to i64
  %74 = load i64, i64* %temp, align 8
  %add112 = add i64 %74, %conv111
  store i64 %add112, i64* %temp, align 8
  br label %sw.bb113

sw.bb113:                                         ; preds = %for.end, %sw.bb106
  %75 = load i64, i64* %temp, align 8
  %mul114 = mul i64 %75, 10
  store i64 %mul114, i64* %temp, align 8
  %76 = load i8*, i8** %str.addr, align 8
  %incdec.ptr115 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr115, i8** %str.addr, align 8
  %77 = load i8, i8* %76, align 1
  %conv116 = sext i8 %77 to i32
  %and117 = and i32 %conv116, 15
  %conv118 = sext i32 %and117 to i64
  %78 = load i64, i64* %temp, align 8
  %add119 = add i64 %78, %conv118
  store i64 %add119, i64* %temp, align 8
  br label %sw.bb120

sw.bb120:                                         ; preds = %for.end, %sw.bb113
  %79 = load i64, i64* %temp, align 8
  %mul121 = mul i64 %79, 10
  store i64 %mul121, i64* %temp, align 8
  %80 = load i8*, i8** %str.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr122, i8** %str.addr, align 8
  %81 = load i8, i8* %80, align 1
  %conv123 = sext i8 %81 to i32
  %and124 = and i32 %conv123, 15
  %conv125 = sext i32 %and124 to i64
  %82 = load i64, i64* %temp, align 8
  %add126 = add i64 %82, %conv125
  store i64 %add126, i64* %temp, align 8
  br label %sw.bb127

sw.bb127:                                         ; preds = %for.end, %sw.bb120
  %83 = load i64, i64* %temp, align 8
  %mul128 = mul i64 %83, 10
  store i64 %mul128, i64* %temp, align 8
  %84 = load i8*, i8** %str.addr, align 8
  %incdec.ptr129 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr129, i8** %str.addr, align 8
  %85 = load i8, i8* %84, align 1
  %conv130 = sext i8 %85 to i32
  %and131 = and i32 %conv130, 15
  %conv132 = sext i32 %and131 to i64
  %86 = load i64, i64* %temp, align 8
  %add133 = add i64 %86, %conv132
  store i64 %add133, i64* %temp, align 8
  br label %sw.bb134

sw.bb134:                                         ; preds = %for.end, %sw.bb127
  %87 = load i64, i64* %temp, align 8
  %mul135 = mul i64 %87, 10
  store i64 %mul135, i64* %temp, align 8
  %88 = load i8*, i8** %str.addr, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr136, i8** %str.addr, align 8
  %89 = load i8, i8* %88, align 1
  %conv137 = sext i8 %89 to i32
  %and138 = and i32 %conv137, 15
  %conv139 = sext i32 %and138 to i64
  %90 = load i64, i64* %temp, align 8
  %add140 = add i64 %90, %conv139
  store i64 %add140, i64* %temp, align 8
  br label %sw.bb141

sw.bb141:                                         ; preds = %for.end, %sw.bb134
  %91 = load i64, i64* %temp, align 8
  %mul142 = mul i64 %91, 10
  store i64 %mul142, i64* %temp, align 8
  %92 = load i8*, i8** %str.addr, align 8
  %incdec.ptr143 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr143, i8** %str.addr, align 8
  %93 = load i8, i8* %92, align 1
  %conv144 = sext i8 %93 to i32
  %and145 = and i32 %conv144, 15
  %conv146 = sext i32 %and145 to i64
  %94 = load i64, i64* %temp, align 8
  %add147 = add i64 %94, %conv146
  store i64 %add147, i64* %temp, align 8
  br label %sw.bb148

sw.bb148:                                         ; preds = %for.end, %sw.bb141
  %95 = load i64, i64* %temp, align 8
  %mul149 = mul i64 %95, 10
  store i64 %mul149, i64* %temp, align 8
  %96 = load i8*, i8** %str.addr, align 8
  %incdec.ptr150 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr150, i8** %str.addr, align 8
  %97 = load i8, i8* %96, align 1
  %conv151 = sext i8 %97 to i32
  %and152 = and i32 %conv151, 15
  %conv153 = sext i32 %and152 to i64
  %98 = load i64, i64* %temp, align 8
  %add154 = add i64 %98, %conv153
  store i64 %add154, i64* %temp, align 8
  %99 = load i64, i64* %temp, align 8
  %tobool155 = icmp ne i64 %99, 0
  br i1 %tobool155, label %if.end157, label %if.then156

if.then156:                                       ; preds = %sw.bb148
  br label %while.cond, !llvm.loop !12

if.end157:                                        ; preds = %sw.bb148
  %100 = load i64, i64* %temp, align 8
  %101 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 4), align 8
  %arrayidx = getelementptr inbounds i64, i64* %101, i64 0
  store i64 %100, i64* %arrayidx, align 8
  %102 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %103 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zadd(%struct.zahl* noundef %102, %struct.zahl* noundef %103, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0))
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %for.end
  %104 = load i32, i32* %neg, align 4
  %tobool158 = icmp ne i32 %104, 0
  %lnot159 = xor i1 %tobool158, true
  %lnot161 = xor i1 %lnot159, true
  %lnot.ext162 = zext i1 %lnot161 to i32
  %conv163 = sext i32 %lnot.ext162 to i64
  %tobool164 = icmp ne i64 %conv163, 0
  br i1 %tobool164, label %if.then165, label %if.end168

if.then165:                                       ; preds = %sw.epilog
  %105 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %call166 = call i32 @zsignum(%struct.zahl* noundef %105)
  %sub = sub nsw i32 0, %call166
  %106 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign167 = getelementptr inbounds %struct.zahl, %struct.zahl* %106, i32 0, i32 0
  store i32 %sub, i32* %sign167, align 8
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %sw.epilog
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end168, %if.then22, %if.then
  %107 = load i32, i32* %retval, align 4
  ret i32 %107
}

declare i32* @__error() #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isdigit(i32 noundef) #2

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zmul(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zadd(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn }

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
