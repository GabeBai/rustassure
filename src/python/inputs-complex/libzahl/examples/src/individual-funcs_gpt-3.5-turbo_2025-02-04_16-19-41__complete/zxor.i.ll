; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zxor.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zxor.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zxor(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %n = alloca i64, align 8
  %m = alloca i64, align 8
  %bn = alloca i64, align 8
  %cn = alloca i64, align 8
  %bc = alloca i64*, align 8
  %cc = alloca i64*, align 8
  %a__ = alloca i64*, align 8
  %b__ = alloca i64*, align 8
  %c__ = alloca i64*, align 8
  %i__ = alloca i64, align 8
  %n__ = alloca i64, align 8
  %a__141 = alloca i64*, align 8
  %b__143 = alloca i64*, align 8
  %c__145 = alloca i64*, align 8
  %i__146 = alloca i64, align 8
  %n__147 = alloca i64, align 8
  %a__248 = alloca i64*, align 8
  %b__250 = alloca i64*, align 8
  %c__252 = alloca i64*, align 8
  %i__254 = alloca i64, align 8
  %n__255 = alloca i64, align 8
  %a__297 = alloca i64*, align 8
  %b__299 = alloca i64*, align 8
  %c__301 = alloca i64*, align 8
  %i__303 = alloca i64, align 8
  %n__304 = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store %struct.zahl* %c, %struct.zahl** %c.addr, align 8
  %0 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %2 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %cmp = icmp ne %struct.zahl* %1, %2
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %do.body
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %4 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zset(%struct.zahl* noundef %3, %struct.zahl* noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.end375

if.else:                                          ; preds = %entry
  %5 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call5 = call i32 @zzero(%struct.zahl* noundef %5)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot7 = xor i1 %tobool6, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %tobool12 = icmp ne i64 %conv11, 0
  br i1 %tobool12, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.else
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %7 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp15 = icmp ne %struct.zahl* %6, %7
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.body14
  %8 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %9 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zset(%struct.zahl* noundef %8, %struct.zahl* noundef %9)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.body14
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  br label %do.end375

if.end20:                                         ; preds = %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  %10 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 2
  %11 = load i64, i64* %used, align 8
  store i64 %11, i64* %bn, align 8
  %12 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 4
  %13 = load i64*, i64** %chars, align 8
  store i64* %13, i64** %bc, align 8
  %14 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used22 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 2
  %15 = load i64, i64* %used22, align 8
  store i64 %15, i64* %cn, align 8
  %16 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars23 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 4
  %17 = load i64*, i64** %chars23, align 8
  store i64* %17, i64** %cc, align 8
  %18 = load i64, i64* %bn, align 8
  %19 = load i64, i64* %cn, align 8
  %cmp24 = icmp ult i64 %18, %19
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end21
  %20 = load i64, i64* %bn, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end21
  %21 = load i64, i64* %cn, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %20, %cond.true ], [ %21, %cond.false ]
  store i64 %cond, i64* %n, align 8
  %22 = load i64, i64* %bn, align 8
  %23 = load i64, i64* %cn, align 8
  %cmp26 = icmp ugt i64 %22, %23
  br i1 %cmp26, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end
  %24 = load i64, i64* %bn, align 8
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end
  %25 = load i64, i64* %cn, align 8
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %cond.true28
  %cond31 = phi i64 [ %24, %cond.true28 ], [ %25, %cond.false29 ]
  store i64 %cond31, i64* %m, align 8
  br label %do.body32

do.body32:                                        ; preds = %cond.end30
  %26 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %26, i32 0, i32 3
  %27 = load i64, i64* %alloced, align 8
  %28 = load i64, i64* %m, align 8
  %cmp33 = icmp ult i64 %27, %28
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.body32
  %29 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %30 = load i64, i64* %m, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %29, i64 noundef %30)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %do.body32
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  %31 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %32 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp38 = icmp eq %struct.zahl* %31, %32
  br i1 %cmp38, label %if.then40, label %if.else130

if.then40:                                        ; preds = %do.end37
  br label %do.body41

do.body41:                                        ; preds = %if.then40
  %33 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars42 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 4
  %34 = load i64*, i64** %chars42, align 8
  store i64* %34, i64** %a__, align 8
  %35 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars43 = getelementptr inbounds %struct.zahl, %struct.zahl* %35, i32 0, i32 4
  %36 = load i64*, i64** %chars43, align 8
  store i64* %36, i64** %b__, align 8
  %37 = load i64*, i64** %cc, align 8
  store i64* %37, i64** %c__, align 8
  %38 = load i64, i64* %n, align 8
  store i64 %38, i64* %n__, align 8
  %39 = load i64, i64* %n__, align 8
  %cmp44 = icmp ule i64 %39, 4
  br i1 %cmp44, label %if.then46, label %if.else77

if.then46:                                        ; preds = %do.body41
  %40 = load i64, i64* %n__, align 8
  %cmp47 = icmp uge i64 %40, 1
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.then46
  %41 = load i64*, i64** %b__, align 8
  %arrayidx = getelementptr inbounds i64, i64* %41, i64 0
  %42 = load i64, i64* %arrayidx, align 8
  %43 = load i64*, i64** %c__, align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %43, i64 0
  %44 = load i64, i64* %arrayidx50, align 8
  %xor = xor i64 %42, %44
  %45 = load i64*, i64** %a__, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %xor, i64* %arrayidx51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then46
  %46 = load i64, i64* %n__, align 8
  %cmp53 = icmp uge i64 %46, 2
  br i1 %cmp53, label %if.then55, label %if.end60

if.then55:                                        ; preds = %if.end52
  %47 = load i64*, i64** %b__, align 8
  %arrayidx56 = getelementptr inbounds i64, i64* %47, i64 1
  %48 = load i64, i64* %arrayidx56, align 8
  %49 = load i64*, i64** %c__, align 8
  %arrayidx57 = getelementptr inbounds i64, i64* %49, i64 1
  %50 = load i64, i64* %arrayidx57, align 8
  %xor58 = xor i64 %48, %50
  %51 = load i64*, i64** %a__, align 8
  %arrayidx59 = getelementptr inbounds i64, i64* %51, i64 1
  store i64 %xor58, i64* %arrayidx59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end52
  %52 = load i64, i64* %n__, align 8
  %cmp61 = icmp uge i64 %52, 3
  br i1 %cmp61, label %if.then63, label %if.end68

if.then63:                                        ; preds = %if.end60
  %53 = load i64*, i64** %b__, align 8
  %arrayidx64 = getelementptr inbounds i64, i64* %53, i64 2
  %54 = load i64, i64* %arrayidx64, align 8
  %55 = load i64*, i64** %c__, align 8
  %arrayidx65 = getelementptr inbounds i64, i64* %55, i64 2
  %56 = load i64, i64* %arrayidx65, align 8
  %xor66 = xor i64 %54, %56
  %57 = load i64*, i64** %a__, align 8
  %arrayidx67 = getelementptr inbounds i64, i64* %57, i64 2
  store i64 %xor66, i64* %arrayidx67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %if.end60
  %58 = load i64, i64* %n__, align 8
  %cmp69 = icmp uge i64 %58, 4
  br i1 %cmp69, label %if.then71, label %if.end76

if.then71:                                        ; preds = %if.end68
  %59 = load i64*, i64** %b__, align 8
  %arrayidx72 = getelementptr inbounds i64, i64* %59, i64 3
  %60 = load i64, i64* %arrayidx72, align 8
  %61 = load i64*, i64** %c__, align 8
  %arrayidx73 = getelementptr inbounds i64, i64* %61, i64 3
  %62 = load i64, i64* %arrayidx73, align 8
  %xor74 = xor i64 %60, %62
  %63 = load i64*, i64** %a__, align 8
  %arrayidx75 = getelementptr inbounds i64, i64* %63, i64 3
  store i64 %xor74, i64* %arrayidx75, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.end68
  br label %if.end121

if.else77:                                        ; preds = %do.body41
  store i64 0, i64* %i__, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.else77
  %64 = load i64, i64* %i__, align 8
  %add = add i64 %64, 4
  store i64 %add, i64* %i__, align 8
  %65 = load i64, i64* %n__, align 8
  %cmp78 = icmp ult i64 %add, %65
  br i1 %cmp78, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i64*, i64** %b__, align 8
  %67 = load i64, i64* %i__, align 8
  %sub = sub i64 %67, 1
  %arrayidx80 = getelementptr inbounds i64, i64* %66, i64 %sub
  %68 = load i64, i64* %arrayidx80, align 8
  %69 = load i64*, i64** %c__, align 8
  %70 = load i64, i64* %i__, align 8
  %sub81 = sub i64 %70, 1
  %arrayidx82 = getelementptr inbounds i64, i64* %69, i64 %sub81
  %71 = load i64, i64* %arrayidx82, align 8
  %xor83 = xor i64 %68, %71
  %72 = load i64*, i64** %a__, align 8
  %73 = load i64, i64* %i__, align 8
  %sub84 = sub i64 %73, 1
  %arrayidx85 = getelementptr inbounds i64, i64* %72, i64 %sub84
  store i64 %xor83, i64* %arrayidx85, align 8
  %74 = load i64*, i64** %b__, align 8
  %75 = load i64, i64* %i__, align 8
  %sub86 = sub i64 %75, 2
  %arrayidx87 = getelementptr inbounds i64, i64* %74, i64 %sub86
  %76 = load i64, i64* %arrayidx87, align 8
  %77 = load i64*, i64** %c__, align 8
  %78 = load i64, i64* %i__, align 8
  %sub88 = sub i64 %78, 2
  %arrayidx89 = getelementptr inbounds i64, i64* %77, i64 %sub88
  %79 = load i64, i64* %arrayidx89, align 8
  %xor90 = xor i64 %76, %79
  %80 = load i64*, i64** %a__, align 8
  %81 = load i64, i64* %i__, align 8
  %sub91 = sub i64 %81, 2
  %arrayidx92 = getelementptr inbounds i64, i64* %80, i64 %sub91
  store i64 %xor90, i64* %arrayidx92, align 8
  %82 = load i64*, i64** %b__, align 8
  %83 = load i64, i64* %i__, align 8
  %sub93 = sub i64 %83, 3
  %arrayidx94 = getelementptr inbounds i64, i64* %82, i64 %sub93
  %84 = load i64, i64* %arrayidx94, align 8
  %85 = load i64*, i64** %c__, align 8
  %86 = load i64, i64* %i__, align 8
  %sub95 = sub i64 %86, 3
  %arrayidx96 = getelementptr inbounds i64, i64* %85, i64 %sub95
  %87 = load i64, i64* %arrayidx96, align 8
  %xor97 = xor i64 %84, %87
  %88 = load i64*, i64** %a__, align 8
  %89 = load i64, i64* %i__, align 8
  %sub98 = sub i64 %89, 3
  %arrayidx99 = getelementptr inbounds i64, i64* %88, i64 %sub98
  store i64 %xor97, i64* %arrayidx99, align 8
  %90 = load i64*, i64** %b__, align 8
  %91 = load i64, i64* %i__, align 8
  %sub100 = sub i64 %91, 4
  %arrayidx101 = getelementptr inbounds i64, i64* %90, i64 %sub100
  %92 = load i64, i64* %arrayidx101, align 8
  %93 = load i64*, i64** %c__, align 8
  %94 = load i64, i64* %i__, align 8
  %sub102 = sub i64 %94, 4
  %arrayidx103 = getelementptr inbounds i64, i64* %93, i64 %sub102
  %95 = load i64, i64* %arrayidx103, align 8
  %xor104 = xor i64 %92, %95
  %96 = load i64*, i64** %a__, align 8
  %97 = load i64, i64* %i__, align 8
  %sub105 = sub i64 %97, 4
  %arrayidx106 = getelementptr inbounds i64, i64* %96, i64 %sub105
  store i64 %xor104, i64* %arrayidx106, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %98 = load i64, i64* %i__, align 8
  %99 = load i64, i64* %n__, align 8
  %cmp107 = icmp ugt i64 %98, %99
  br i1 %cmp107, label %if.then109, label %if.end120

if.then109:                                       ; preds = %for.end
  %100 = load i64, i64* %i__, align 8
  %sub110 = sub i64 %100, 4
  store i64 %sub110, i64* %i__, align 8
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc, %if.then109
  %101 = load i64, i64* %i__, align 8
  %102 = load i64, i64* %n__, align 8
  %cmp112 = icmp ult i64 %101, %102
  br i1 %cmp112, label %for.body114, label %for.end119

for.body114:                                      ; preds = %for.cond111
  %103 = load i64*, i64** %b__, align 8
  %104 = load i64, i64* %i__, align 8
  %arrayidx115 = getelementptr inbounds i64, i64* %103, i64 %104
  %105 = load i64, i64* %arrayidx115, align 8
  %106 = load i64*, i64** %c__, align 8
  %107 = load i64, i64* %i__, align 8
  %arrayidx116 = getelementptr inbounds i64, i64* %106, i64 %107
  %108 = load i64, i64* %arrayidx116, align 8
  %xor117 = xor i64 %105, %108
  %109 = load i64*, i64** %a__, align 8
  %110 = load i64, i64* %i__, align 8
  %arrayidx118 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %xor117, i64* %arrayidx118, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body114
  %111 = load i64, i64* %i__, align 8
  %inc = add i64 %111, 1
  store i64 %inc, i64* %i__, align 8
  br label %for.cond111, !llvm.loop !12

for.end119:                                       ; preds = %for.cond111
  br label %if.end120

if.end120:                                        ; preds = %for.end119, %for.end
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end76
  br label %do.end122

do.end122:                                        ; preds = %if.end121
  %112 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used123 = getelementptr inbounds %struct.zahl, %struct.zahl* %112, i32 0, i32 2
  %113 = load i64, i64* %used123, align 8
  %114 = load i64, i64* %cn, align 8
  %cmp124 = icmp ult i64 %113, %114
  br i1 %cmp124, label %if.then126, label %if.end129

if.then126:                                       ; preds = %do.end122
  %115 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars127 = getelementptr inbounds %struct.zahl, %struct.zahl* %115, i32 0, i32 4
  %116 = load i64*, i64** %chars127, align 8
  %117 = load i64*, i64** %cc, align 8
  %118 = load i64, i64* %n, align 8
  %119 = load i64, i64* %m, align 8
  %call128 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %116, i64* noundef %117, i64 noundef %118, i64 noundef %119)
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %do.end122
  br label %if.end346

if.else130:                                       ; preds = %do.end37
  %120 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %121 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %cmp131 = icmp eq %struct.zahl* %120, %121
  %lnot133 = xor i1 %cmp131, true
  %lnot135 = xor i1 %lnot133, true
  %lnot.ext136 = zext i1 %lnot135 to i32
  %conv137 = sext i32 %lnot.ext136 to i64
  %tobool138 = icmp ne i64 %conv137, 0
  br i1 %tobool138, label %if.then139, label %if.else243

if.then139:                                       ; preds = %if.else130
  br label %do.body140

do.body140:                                       ; preds = %if.then139
  %122 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars142 = getelementptr inbounds %struct.zahl, %struct.zahl* %122, i32 0, i32 4
  %123 = load i64*, i64** %chars142, align 8
  store i64* %123, i64** %a__141, align 8
  %124 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars144 = getelementptr inbounds %struct.zahl, %struct.zahl* %124, i32 0, i32 4
  %125 = load i64*, i64** %chars144, align 8
  store i64* %125, i64** %b__143, align 8
  %126 = load i64*, i64** %bc, align 8
  store i64* %126, i64** %c__145, align 8
  %127 = load i64, i64* %n, align 8
  store i64 %127, i64* %n__147, align 8
  %128 = load i64, i64* %n__147, align 8
  %cmp148 = icmp ule i64 %128, 4
  br i1 %cmp148, label %if.then150, label %if.else183

if.then150:                                       ; preds = %do.body140
  %129 = load i64, i64* %n__147, align 8
  %cmp151 = icmp uge i64 %129, 1
  br i1 %cmp151, label %if.then153, label %if.end158

if.then153:                                       ; preds = %if.then150
  %130 = load i64*, i64** %b__143, align 8
  %arrayidx154 = getelementptr inbounds i64, i64* %130, i64 0
  %131 = load i64, i64* %arrayidx154, align 8
  %132 = load i64*, i64** %c__145, align 8
  %arrayidx155 = getelementptr inbounds i64, i64* %132, i64 0
  %133 = load i64, i64* %arrayidx155, align 8
  %xor156 = xor i64 %131, %133
  %134 = load i64*, i64** %a__141, align 8
  %arrayidx157 = getelementptr inbounds i64, i64* %134, i64 0
  store i64 %xor156, i64* %arrayidx157, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then153, %if.then150
  %135 = load i64, i64* %n__147, align 8
  %cmp159 = icmp uge i64 %135, 2
  br i1 %cmp159, label %if.then161, label %if.end166

if.then161:                                       ; preds = %if.end158
  %136 = load i64*, i64** %b__143, align 8
  %arrayidx162 = getelementptr inbounds i64, i64* %136, i64 1
  %137 = load i64, i64* %arrayidx162, align 8
  %138 = load i64*, i64** %c__145, align 8
  %arrayidx163 = getelementptr inbounds i64, i64* %138, i64 1
  %139 = load i64, i64* %arrayidx163, align 8
  %xor164 = xor i64 %137, %139
  %140 = load i64*, i64** %a__141, align 8
  %arrayidx165 = getelementptr inbounds i64, i64* %140, i64 1
  store i64 %xor164, i64* %arrayidx165, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %if.end158
  %141 = load i64, i64* %n__147, align 8
  %cmp167 = icmp uge i64 %141, 3
  br i1 %cmp167, label %if.then169, label %if.end174

if.then169:                                       ; preds = %if.end166
  %142 = load i64*, i64** %b__143, align 8
  %arrayidx170 = getelementptr inbounds i64, i64* %142, i64 2
  %143 = load i64, i64* %arrayidx170, align 8
  %144 = load i64*, i64** %c__145, align 8
  %arrayidx171 = getelementptr inbounds i64, i64* %144, i64 2
  %145 = load i64, i64* %arrayidx171, align 8
  %xor172 = xor i64 %143, %145
  %146 = load i64*, i64** %a__141, align 8
  %arrayidx173 = getelementptr inbounds i64, i64* %146, i64 2
  store i64 %xor172, i64* %arrayidx173, align 8
  br label %if.end174

if.end174:                                        ; preds = %if.then169, %if.end166
  %147 = load i64, i64* %n__147, align 8
  %cmp175 = icmp uge i64 %147, 4
  br i1 %cmp175, label %if.then177, label %if.end182

if.then177:                                       ; preds = %if.end174
  %148 = load i64*, i64** %b__143, align 8
  %arrayidx178 = getelementptr inbounds i64, i64* %148, i64 3
  %149 = load i64, i64* %arrayidx178, align 8
  %150 = load i64*, i64** %c__145, align 8
  %arrayidx179 = getelementptr inbounds i64, i64* %150, i64 3
  %151 = load i64, i64* %arrayidx179, align 8
  %xor180 = xor i64 %149, %151
  %152 = load i64*, i64** %a__141, align 8
  %arrayidx181 = getelementptr inbounds i64, i64* %152, i64 3
  store i64 %xor180, i64* %arrayidx181, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then177, %if.end174
  br label %if.end234

if.else183:                                       ; preds = %do.body140
  store i64 0, i64* %i__146, align 8
  br label %for.cond184

for.cond184:                                      ; preds = %for.body188, %if.else183
  %153 = load i64, i64* %i__146, align 8
  %add185 = add i64 %153, 4
  store i64 %add185, i64* %i__146, align 8
  %154 = load i64, i64* %n__147, align 8
  %cmp186 = icmp ult i64 %add185, %154
  br i1 %cmp186, label %for.body188, label %for.end217

for.body188:                                      ; preds = %for.cond184
  %155 = load i64*, i64** %b__143, align 8
  %156 = load i64, i64* %i__146, align 8
  %sub189 = sub i64 %156, 1
  %arrayidx190 = getelementptr inbounds i64, i64* %155, i64 %sub189
  %157 = load i64, i64* %arrayidx190, align 8
  %158 = load i64*, i64** %c__145, align 8
  %159 = load i64, i64* %i__146, align 8
  %sub191 = sub i64 %159, 1
  %arrayidx192 = getelementptr inbounds i64, i64* %158, i64 %sub191
  %160 = load i64, i64* %arrayidx192, align 8
  %xor193 = xor i64 %157, %160
  %161 = load i64*, i64** %a__141, align 8
  %162 = load i64, i64* %i__146, align 8
  %sub194 = sub i64 %162, 1
  %arrayidx195 = getelementptr inbounds i64, i64* %161, i64 %sub194
  store i64 %xor193, i64* %arrayidx195, align 8
  %163 = load i64*, i64** %b__143, align 8
  %164 = load i64, i64* %i__146, align 8
  %sub196 = sub i64 %164, 2
  %arrayidx197 = getelementptr inbounds i64, i64* %163, i64 %sub196
  %165 = load i64, i64* %arrayidx197, align 8
  %166 = load i64*, i64** %c__145, align 8
  %167 = load i64, i64* %i__146, align 8
  %sub198 = sub i64 %167, 2
  %arrayidx199 = getelementptr inbounds i64, i64* %166, i64 %sub198
  %168 = load i64, i64* %arrayidx199, align 8
  %xor200 = xor i64 %165, %168
  %169 = load i64*, i64** %a__141, align 8
  %170 = load i64, i64* %i__146, align 8
  %sub201 = sub i64 %170, 2
  %arrayidx202 = getelementptr inbounds i64, i64* %169, i64 %sub201
  store i64 %xor200, i64* %arrayidx202, align 8
  %171 = load i64*, i64** %b__143, align 8
  %172 = load i64, i64* %i__146, align 8
  %sub203 = sub i64 %172, 3
  %arrayidx204 = getelementptr inbounds i64, i64* %171, i64 %sub203
  %173 = load i64, i64* %arrayidx204, align 8
  %174 = load i64*, i64** %c__145, align 8
  %175 = load i64, i64* %i__146, align 8
  %sub205 = sub i64 %175, 3
  %arrayidx206 = getelementptr inbounds i64, i64* %174, i64 %sub205
  %176 = load i64, i64* %arrayidx206, align 8
  %xor207 = xor i64 %173, %176
  %177 = load i64*, i64** %a__141, align 8
  %178 = load i64, i64* %i__146, align 8
  %sub208 = sub i64 %178, 3
  %arrayidx209 = getelementptr inbounds i64, i64* %177, i64 %sub208
  store i64 %xor207, i64* %arrayidx209, align 8
  %179 = load i64*, i64** %b__143, align 8
  %180 = load i64, i64* %i__146, align 8
  %sub210 = sub i64 %180, 4
  %arrayidx211 = getelementptr inbounds i64, i64* %179, i64 %sub210
  %181 = load i64, i64* %arrayidx211, align 8
  %182 = load i64*, i64** %c__145, align 8
  %183 = load i64, i64* %i__146, align 8
  %sub212 = sub i64 %183, 4
  %arrayidx213 = getelementptr inbounds i64, i64* %182, i64 %sub212
  %184 = load i64, i64* %arrayidx213, align 8
  %xor214 = xor i64 %181, %184
  %185 = load i64*, i64** %a__141, align 8
  %186 = load i64, i64* %i__146, align 8
  %sub215 = sub i64 %186, 4
  %arrayidx216 = getelementptr inbounds i64, i64* %185, i64 %sub215
  store i64 %xor214, i64* %arrayidx216, align 8
  br label %for.cond184, !llvm.loop !13

for.end217:                                       ; preds = %for.cond184
  %187 = load i64, i64* %i__146, align 8
  %188 = load i64, i64* %n__147, align 8
  %cmp218 = icmp ugt i64 %187, %188
  br i1 %cmp218, label %if.then220, label %if.end233

if.then220:                                       ; preds = %for.end217
  %189 = load i64, i64* %i__146, align 8
  %sub221 = sub i64 %189, 4
  store i64 %sub221, i64* %i__146, align 8
  br label %for.cond222

for.cond222:                                      ; preds = %for.inc230, %if.then220
  %190 = load i64, i64* %i__146, align 8
  %191 = load i64, i64* %n__147, align 8
  %cmp223 = icmp ult i64 %190, %191
  br i1 %cmp223, label %for.body225, label %for.end232

for.body225:                                      ; preds = %for.cond222
  %192 = load i64*, i64** %b__143, align 8
  %193 = load i64, i64* %i__146, align 8
  %arrayidx226 = getelementptr inbounds i64, i64* %192, i64 %193
  %194 = load i64, i64* %arrayidx226, align 8
  %195 = load i64*, i64** %c__145, align 8
  %196 = load i64, i64* %i__146, align 8
  %arrayidx227 = getelementptr inbounds i64, i64* %195, i64 %196
  %197 = load i64, i64* %arrayidx227, align 8
  %xor228 = xor i64 %194, %197
  %198 = load i64*, i64** %a__141, align 8
  %199 = load i64, i64* %i__146, align 8
  %arrayidx229 = getelementptr inbounds i64, i64* %198, i64 %199
  store i64 %xor228, i64* %arrayidx229, align 8
  br label %for.inc230

for.inc230:                                       ; preds = %for.body225
  %200 = load i64, i64* %i__146, align 8
  %inc231 = add i64 %200, 1
  store i64 %inc231, i64* %i__146, align 8
  br label %for.cond222, !llvm.loop !14

for.end232:                                       ; preds = %for.cond222
  br label %if.end233

if.end233:                                        ; preds = %for.end232, %for.end217
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %if.end182
  br label %do.end235

do.end235:                                        ; preds = %if.end234
  %201 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used236 = getelementptr inbounds %struct.zahl, %struct.zahl* %201, i32 0, i32 2
  %202 = load i64, i64* %used236, align 8
  %203 = load i64, i64* %bn, align 8
  %cmp237 = icmp ult i64 %202, %203
  br i1 %cmp237, label %if.then239, label %if.end242

if.then239:                                       ; preds = %do.end235
  %204 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars240 = getelementptr inbounds %struct.zahl, %struct.zahl* %204, i32 0, i32 4
  %205 = load i64*, i64** %chars240, align 8
  %206 = load i64*, i64** %bc, align 8
  %207 = load i64, i64* %n, align 8
  %208 = load i64, i64* %m, align 8
  %call241 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %205, i64* noundef %206, i64 noundef %207, i64 noundef %208)
  br label %if.end242

if.end242:                                        ; preds = %if.then239, %do.end235
  br label %if.end345

if.else243:                                       ; preds = %if.else130
  %209 = load i64, i64* %m, align 8
  %210 = load i64, i64* %bn, align 8
  %cmp244 = icmp eq i64 %209, %210
  br i1 %cmp244, label %if.then246, label %if.else295

if.then246:                                       ; preds = %if.else243
  br label %do.body247

do.body247:                                       ; preds = %if.then246
  %211 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars249 = getelementptr inbounds %struct.zahl, %struct.zahl* %211, i32 0, i32 4
  %212 = load i64*, i64** %chars249, align 8
  store i64* %212, i64** %a__248, align 8
  %213 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars251 = getelementptr inbounds %struct.zahl, %struct.zahl* %213, i32 0, i32 4
  %214 = load i64*, i64** %chars251, align 8
  store i64* %214, i64** %b__250, align 8
  %215 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars253 = getelementptr inbounds %struct.zahl, %struct.zahl* %215, i32 0, i32 4
  %216 = load i64*, i64** %chars253, align 8
  store i64* %216, i64** %c__252, align 8
  %217 = load i64, i64* %n, align 8
  store i64 %217, i64* %n__255, align 8
  store i64 0, i64* %i__254, align 8
  br label %for.cond256

for.cond256:                                      ; preds = %for.inc288, %do.body247
  %218 = load i64, i64* %i__254, align 8
  %219 = load i64, i64* %n__255, align 8
  %cmp257 = icmp ult i64 %218, %219
  br i1 %cmp257, label %for.body259, label %for.end290

for.body259:                                      ; preds = %for.cond256
  %220 = load i64*, i64** %b__250, align 8
  %221 = load i64, i64* %i__254, align 8
  %add260 = add i64 %221, 0
  %arrayidx261 = getelementptr inbounds i64, i64* %220, i64 %add260
  %222 = load i64, i64* %arrayidx261, align 8
  %223 = load i64*, i64** %c__252, align 8
  %224 = load i64, i64* %i__254, align 8
  %add262 = add i64 %224, 0
  %arrayidx263 = getelementptr inbounds i64, i64* %223, i64 %add262
  %225 = load i64, i64* %arrayidx263, align 8
  %xor264 = xor i64 %222, %225
  %226 = load i64*, i64** %a__248, align 8
  %227 = load i64, i64* %i__254, align 8
  %add265 = add i64 %227, 0
  %arrayidx266 = getelementptr inbounds i64, i64* %226, i64 %add265
  store i64 %xor264, i64* %arrayidx266, align 8
  %228 = load i64*, i64** %b__250, align 8
  %229 = load i64, i64* %i__254, align 8
  %add267 = add i64 %229, 1
  %arrayidx268 = getelementptr inbounds i64, i64* %228, i64 %add267
  %230 = load i64, i64* %arrayidx268, align 8
  %231 = load i64*, i64** %c__252, align 8
  %232 = load i64, i64* %i__254, align 8
  %add269 = add i64 %232, 1
  %arrayidx270 = getelementptr inbounds i64, i64* %231, i64 %add269
  %233 = load i64, i64* %arrayidx270, align 8
  %xor271 = xor i64 %230, %233
  %234 = load i64*, i64** %a__248, align 8
  %235 = load i64, i64* %i__254, align 8
  %add272 = add i64 %235, 1
  %arrayidx273 = getelementptr inbounds i64, i64* %234, i64 %add272
  store i64 %xor271, i64* %arrayidx273, align 8
  %236 = load i64*, i64** %b__250, align 8
  %237 = load i64, i64* %i__254, align 8
  %add274 = add i64 %237, 2
  %arrayidx275 = getelementptr inbounds i64, i64* %236, i64 %add274
  %238 = load i64, i64* %arrayidx275, align 8
  %239 = load i64*, i64** %c__252, align 8
  %240 = load i64, i64* %i__254, align 8
  %add276 = add i64 %240, 2
  %arrayidx277 = getelementptr inbounds i64, i64* %239, i64 %add276
  %241 = load i64, i64* %arrayidx277, align 8
  %xor278 = xor i64 %238, %241
  %242 = load i64*, i64** %a__248, align 8
  %243 = load i64, i64* %i__254, align 8
  %add279 = add i64 %243, 2
  %arrayidx280 = getelementptr inbounds i64, i64* %242, i64 %add279
  store i64 %xor278, i64* %arrayidx280, align 8
  %244 = load i64*, i64** %b__250, align 8
  %245 = load i64, i64* %i__254, align 8
  %add281 = add i64 %245, 3
  %arrayidx282 = getelementptr inbounds i64, i64* %244, i64 %add281
  %246 = load i64, i64* %arrayidx282, align 8
  %247 = load i64*, i64** %c__252, align 8
  %248 = load i64, i64* %i__254, align 8
  %add283 = add i64 %248, 3
  %arrayidx284 = getelementptr inbounds i64, i64* %247, i64 %add283
  %249 = load i64, i64* %arrayidx284, align 8
  %xor285 = xor i64 %246, %249
  %250 = load i64*, i64** %a__248, align 8
  %251 = load i64, i64* %i__254, align 8
  %add286 = add i64 %251, 3
  %arrayidx287 = getelementptr inbounds i64, i64* %250, i64 %add286
  store i64 %xor285, i64* %arrayidx287, align 8
  br label %for.inc288

for.inc288:                                       ; preds = %for.body259
  %252 = load i64, i64* %i__254, align 8
  %add289 = add i64 %252, 4
  store i64 %add289, i64* %i__254, align 8
  br label %for.cond256, !llvm.loop !15

for.end290:                                       ; preds = %for.cond256
  br label %do.end291

do.end291:                                        ; preds = %for.end290
  %253 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars292 = getelementptr inbounds %struct.zahl, %struct.zahl* %253, i32 0, i32 4
  %254 = load i64*, i64** %chars292, align 8
  %255 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars293 = getelementptr inbounds %struct.zahl, %struct.zahl* %255, i32 0, i32 4
  %256 = load i64*, i64** %chars293, align 8
  %257 = load i64, i64* %n, align 8
  %258 = load i64, i64* %m, align 8
  %call294 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %254, i64* noundef %256, i64 noundef %257, i64 noundef %258)
  br label %if.end344

if.else295:                                       ; preds = %if.else243
  br label %do.body296

do.body296:                                       ; preds = %if.else295
  %259 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars298 = getelementptr inbounds %struct.zahl, %struct.zahl* %259, i32 0, i32 4
  %260 = load i64*, i64** %chars298, align 8
  store i64* %260, i64** %a__297, align 8
  %261 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars300 = getelementptr inbounds %struct.zahl, %struct.zahl* %261, i32 0, i32 4
  %262 = load i64*, i64** %chars300, align 8
  store i64* %262, i64** %b__299, align 8
  %263 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars302 = getelementptr inbounds %struct.zahl, %struct.zahl* %263, i32 0, i32 4
  %264 = load i64*, i64** %chars302, align 8
  store i64* %264, i64** %c__301, align 8
  %265 = load i64, i64* %n, align 8
  store i64 %265, i64* %n__304, align 8
  store i64 0, i64* %i__303, align 8
  br label %for.cond305

for.cond305:                                      ; preds = %for.inc337, %do.body296
  %266 = load i64, i64* %i__303, align 8
  %267 = load i64, i64* %n__304, align 8
  %cmp306 = icmp ult i64 %266, %267
  br i1 %cmp306, label %for.body308, label %for.end339

for.body308:                                      ; preds = %for.cond305
  %268 = load i64*, i64** %b__299, align 8
  %269 = load i64, i64* %i__303, align 8
  %add309 = add i64 %269, 0
  %arrayidx310 = getelementptr inbounds i64, i64* %268, i64 %add309
  %270 = load i64, i64* %arrayidx310, align 8
  %271 = load i64*, i64** %c__301, align 8
  %272 = load i64, i64* %i__303, align 8
  %add311 = add i64 %272, 0
  %arrayidx312 = getelementptr inbounds i64, i64* %271, i64 %add311
  %273 = load i64, i64* %arrayidx312, align 8
  %xor313 = xor i64 %270, %273
  %274 = load i64*, i64** %a__297, align 8
  %275 = load i64, i64* %i__303, align 8
  %add314 = add i64 %275, 0
  %arrayidx315 = getelementptr inbounds i64, i64* %274, i64 %add314
  store i64 %xor313, i64* %arrayidx315, align 8
  %276 = load i64*, i64** %b__299, align 8
  %277 = load i64, i64* %i__303, align 8
  %add316 = add i64 %277, 1
  %arrayidx317 = getelementptr inbounds i64, i64* %276, i64 %add316
  %278 = load i64, i64* %arrayidx317, align 8
  %279 = load i64*, i64** %c__301, align 8
  %280 = load i64, i64* %i__303, align 8
  %add318 = add i64 %280, 1
  %arrayidx319 = getelementptr inbounds i64, i64* %279, i64 %add318
  %281 = load i64, i64* %arrayidx319, align 8
  %xor320 = xor i64 %278, %281
  %282 = load i64*, i64** %a__297, align 8
  %283 = load i64, i64* %i__303, align 8
  %add321 = add i64 %283, 1
  %arrayidx322 = getelementptr inbounds i64, i64* %282, i64 %add321
  store i64 %xor320, i64* %arrayidx322, align 8
  %284 = load i64*, i64** %b__299, align 8
  %285 = load i64, i64* %i__303, align 8
  %add323 = add i64 %285, 2
  %arrayidx324 = getelementptr inbounds i64, i64* %284, i64 %add323
  %286 = load i64, i64* %arrayidx324, align 8
  %287 = load i64*, i64** %c__301, align 8
  %288 = load i64, i64* %i__303, align 8
  %add325 = add i64 %288, 2
  %arrayidx326 = getelementptr inbounds i64, i64* %287, i64 %add325
  %289 = load i64, i64* %arrayidx326, align 8
  %xor327 = xor i64 %286, %289
  %290 = load i64*, i64** %a__297, align 8
  %291 = load i64, i64* %i__303, align 8
  %add328 = add i64 %291, 2
  %arrayidx329 = getelementptr inbounds i64, i64* %290, i64 %add328
  store i64 %xor327, i64* %arrayidx329, align 8
  %292 = load i64*, i64** %b__299, align 8
  %293 = load i64, i64* %i__303, align 8
  %add330 = add i64 %293, 3
  %arrayidx331 = getelementptr inbounds i64, i64* %292, i64 %add330
  %294 = load i64, i64* %arrayidx331, align 8
  %295 = load i64*, i64** %c__301, align 8
  %296 = load i64, i64* %i__303, align 8
  %add332 = add i64 %296, 3
  %arrayidx333 = getelementptr inbounds i64, i64* %295, i64 %add332
  %297 = load i64, i64* %arrayidx333, align 8
  %xor334 = xor i64 %294, %297
  %298 = load i64*, i64** %a__297, align 8
  %299 = load i64, i64* %i__303, align 8
  %add335 = add i64 %299, 3
  %arrayidx336 = getelementptr inbounds i64, i64* %298, i64 %add335
  store i64 %xor334, i64* %arrayidx336, align 8
  br label %for.inc337

for.inc337:                                       ; preds = %for.body308
  %300 = load i64, i64* %i__303, align 8
  %add338 = add i64 %300, 4
  store i64 %add338, i64* %i__303, align 8
  br label %for.cond305, !llvm.loop !16

for.end339:                                       ; preds = %for.cond305
  br label %do.end340

do.end340:                                        ; preds = %for.end339
  %301 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars341 = getelementptr inbounds %struct.zahl, %struct.zahl* %301, i32 0, i32 4
  %302 = load i64*, i64** %chars341, align 8
  %303 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars342 = getelementptr inbounds %struct.zahl, %struct.zahl* %303, i32 0, i32 4
  %304 = load i64*, i64** %chars342, align 8
  %305 = load i64, i64* %n, align 8
  %306 = load i64, i64* %m, align 8
  %call343 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %302, i64* noundef %304, i64 noundef %305, i64 noundef %306)
  br label %if.end344

if.end344:                                        ; preds = %do.end340, %do.end291
  br label %if.end345

if.end345:                                        ; preds = %if.end344, %if.end242
  br label %if.end346

if.end346:                                        ; preds = %if.end345, %if.end129
  %307 = load i64, i64* %m, align 8
  %308 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used347 = getelementptr inbounds %struct.zahl, %struct.zahl* %308, i32 0, i32 2
  store i64 %307, i64* %used347, align 8
  br label %do.body348

do.body348:                                       ; preds = %if.end346
  br label %for.cond349

for.cond349:                                      ; preds = %for.inc360, %do.body348
  %309 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used350 = getelementptr inbounds %struct.zahl, %struct.zahl* %309, i32 0, i32 2
  %310 = load i64, i64* %used350, align 8
  %tobool351 = icmp ne i64 %310, 0
  br i1 %tobool351, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond349
  %311 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars352 = getelementptr inbounds %struct.zahl, %struct.zahl* %311, i32 0, i32 4
  %312 = load i64*, i64** %chars352, align 8
  %313 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used353 = getelementptr inbounds %struct.zahl, %struct.zahl* %313, i32 0, i32 2
  %314 = load i64, i64* %used353, align 8
  %sub354 = sub i64 %314, 1
  %arrayidx355 = getelementptr inbounds i64, i64* %312, i64 %sub354
  %315 = load i64, i64* %arrayidx355, align 8
  %tobool356 = icmp ne i64 %315, 0
  %lnot357 = xor i1 %tobool356, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond349
  %316 = phi i1 [ false, %for.cond349 ], [ %lnot357, %land.rhs ]
  br i1 %316, label %for.body359, label %for.end362

for.body359:                                      ; preds = %land.end
  br label %for.inc360

for.inc360:                                       ; preds = %for.body359
  %317 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used361 = getelementptr inbounds %struct.zahl, %struct.zahl* %317, i32 0, i32 2
  %318 = load i64, i64* %used361, align 8
  %dec = add i64 %318, -1
  store i64 %dec, i64* %used361, align 8
  br label %for.cond349, !llvm.loop !17

for.end362:                                       ; preds = %land.end
  %319 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used363 = getelementptr inbounds %struct.zahl, %struct.zahl* %319, i32 0, i32 2
  %320 = load i64, i64* %used363, align 8
  %tobool364 = icmp ne i64 %320, 0
  br i1 %tobool364, label %cond.true365, label %cond.false372

cond.true365:                                     ; preds = %for.end362
  %321 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call366 = call i32 @zsignum(%struct.zahl* noundef %321)
  %322 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call367 = call i32 @zsignum(%struct.zahl* noundef %322)
  %xor368 = xor i32 %call366, %call367
  %cmp369 = icmp slt i32 %xor368, 0
  %conv370 = zext i1 %cmp369 to i32
  %mul = mul nsw i32 2, %conv370
  %sub371 = sub nsw i32 1, %mul
  br label %cond.end373

cond.false372:                                    ; preds = %for.end362
  br label %cond.end373

cond.end373:                                      ; preds = %cond.false372, %cond.true365
  %cond374 = phi i32 [ %sub371, %cond.true365 ], [ 0, %cond.false372 ]
  %323 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %323, i32 0, i32 0
  store i32 %cond374, i32* %sign, align 8
  br label %do.end375

do.end375:                                        ; preds = %do.end, %do.end19, %cond.end373
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @zmemcpy_range(...) #1

declare i32 @zsignum(%struct.zahl* noundef) #1

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
!9 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git 6fd4c483fd129052982b4c7498e7ea910578ab6c)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
