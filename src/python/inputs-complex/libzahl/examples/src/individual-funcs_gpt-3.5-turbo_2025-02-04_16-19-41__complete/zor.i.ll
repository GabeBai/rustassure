; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zor.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zor.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zor(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %n = alloca i64, align 8
  %m = alloca i64, align 8
  %a__ = alloca i64*, align 8
  %b__ = alloca i64*, align 8
  %c__ = alloca i64*, align 8
  %i__ = alloca i64, align 8
  %n__ = alloca i64, align 8
  %a__148 = alloca i64*, align 8
  %b__150 = alloca i64*, align 8
  %c__152 = alloca i64*, align 8
  %i__154 = alloca i64, align 8
  %n__155 = alloca i64, align 8
  %a__259 = alloca i64*, align 8
  %b__261 = alloca i64*, align 8
  %c__263 = alloca i64*, align 8
  %i__265 = alloca i64, align 8
  %n__266 = alloca i64, align 8
  %a__308 = alloca i64*, align 8
  %b__310 = alloca i64*, align 8
  %c__312 = alloca i64*, align 8
  %i__314 = alloca i64, align 8
  %n__315 = alloca i64, align 8
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
  br label %return

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
  br label %return

if.end20:                                         ; preds = %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  %10 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 2
  %11 = load i64, i64* %used, align 8
  %12 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used22 = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 2
  %13 = load i64, i64* %used22, align 8
  %cmp23 = icmp ult i64 %11, %13
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end21
  %14 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used25 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 2
  %15 = load i64, i64* %used25, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end21
  %16 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used26 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 2
  %17 = load i64, i64* %used26, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %15, %cond.true ], [ %17, %cond.false ]
  store i64 %cond, i64* %n, align 8
  %18 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used27 = getelementptr inbounds %struct.zahl, %struct.zahl* %18, i32 0, i32 2
  %19 = load i64, i64* %used27, align 8
  %20 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used28 = getelementptr inbounds %struct.zahl, %struct.zahl* %20, i32 0, i32 2
  %21 = load i64, i64* %used28, align 8
  %cmp29 = icmp ugt i64 %19, %21
  br i1 %cmp29, label %cond.true31, label %cond.false33

cond.true31:                                      ; preds = %cond.end
  %22 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used32 = getelementptr inbounds %struct.zahl, %struct.zahl* %22, i32 0, i32 2
  %23 = load i64, i64* %used32, align 8
  br label %cond.end35

cond.false33:                                     ; preds = %cond.end
  %24 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used34 = getelementptr inbounds %struct.zahl, %struct.zahl* %24, i32 0, i32 2
  %25 = load i64, i64* %used34, align 8
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false33, %cond.true31
  %cond36 = phi i64 [ %23, %cond.true31 ], [ %25, %cond.false33 ]
  store i64 %cond36, i64* %m, align 8
  br label %do.body37

do.body37:                                        ; preds = %cond.end35
  %26 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %26, i32 0, i32 3
  %27 = load i64, i64* %alloced, align 8
  %28 = load i64, i64* %m, align 8
  %cmp38 = icmp ult i64 %27, %28
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %do.body37
  %29 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %30 = load i64, i64* %m, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %29, i64 noundef %30)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %do.body37
  br label %do.end42

do.end42:                                         ; preds = %if.end41
  %31 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %32 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp43 = icmp eq %struct.zahl* %31, %32
  br i1 %cmp43, label %if.then45, label %if.else137

if.then45:                                        ; preds = %do.end42
  br label %do.body46

do.body46:                                        ; preds = %if.then45
  %33 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 4
  %34 = load i64*, i64** %chars, align 8
  store i64* %34, i64** %a__, align 8
  %35 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars47 = getelementptr inbounds %struct.zahl, %struct.zahl* %35, i32 0, i32 4
  %36 = load i64*, i64** %chars47, align 8
  store i64* %36, i64** %b__, align 8
  %37 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars48 = getelementptr inbounds %struct.zahl, %struct.zahl* %37, i32 0, i32 4
  %38 = load i64*, i64** %chars48, align 8
  store i64* %38, i64** %c__, align 8
  %39 = load i64, i64* %n, align 8
  store i64 %39, i64* %n__, align 8
  %40 = load i64, i64* %n__, align 8
  %cmp49 = icmp ule i64 %40, 4
  br i1 %cmp49, label %if.then51, label %if.else82

if.then51:                                        ; preds = %do.body46
  %41 = load i64, i64* %n__, align 8
  %cmp52 = icmp uge i64 %41, 1
  br i1 %cmp52, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.then51
  %42 = load i64*, i64** %b__, align 8
  %arrayidx = getelementptr inbounds i64, i64* %42, i64 0
  %43 = load i64, i64* %arrayidx, align 8
  %44 = load i64*, i64** %c__, align 8
  %arrayidx55 = getelementptr inbounds i64, i64* %44, i64 0
  %45 = load i64, i64* %arrayidx55, align 8
  %or = or i64 %43, %45
  %46 = load i64*, i64** %a__, align 8
  %arrayidx56 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 %or, i64* %arrayidx56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.then51
  %47 = load i64, i64* %n__, align 8
  %cmp58 = icmp uge i64 %47, 2
  br i1 %cmp58, label %if.then60, label %if.end65

if.then60:                                        ; preds = %if.end57
  %48 = load i64*, i64** %b__, align 8
  %arrayidx61 = getelementptr inbounds i64, i64* %48, i64 1
  %49 = load i64, i64* %arrayidx61, align 8
  %50 = load i64*, i64** %c__, align 8
  %arrayidx62 = getelementptr inbounds i64, i64* %50, i64 1
  %51 = load i64, i64* %arrayidx62, align 8
  %or63 = or i64 %49, %51
  %52 = load i64*, i64** %a__, align 8
  %arrayidx64 = getelementptr inbounds i64, i64* %52, i64 1
  store i64 %or63, i64* %arrayidx64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end57
  %53 = load i64, i64* %n__, align 8
  %cmp66 = icmp uge i64 %53, 3
  br i1 %cmp66, label %if.then68, label %if.end73

if.then68:                                        ; preds = %if.end65
  %54 = load i64*, i64** %b__, align 8
  %arrayidx69 = getelementptr inbounds i64, i64* %54, i64 2
  %55 = load i64, i64* %arrayidx69, align 8
  %56 = load i64*, i64** %c__, align 8
  %arrayidx70 = getelementptr inbounds i64, i64* %56, i64 2
  %57 = load i64, i64* %arrayidx70, align 8
  %or71 = or i64 %55, %57
  %58 = load i64*, i64** %a__, align 8
  %arrayidx72 = getelementptr inbounds i64, i64* %58, i64 2
  store i64 %or71, i64* %arrayidx72, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %if.end65
  %59 = load i64, i64* %n__, align 8
  %cmp74 = icmp uge i64 %59, 4
  br i1 %cmp74, label %if.then76, label %if.end81

if.then76:                                        ; preds = %if.end73
  %60 = load i64*, i64** %b__, align 8
  %arrayidx77 = getelementptr inbounds i64, i64* %60, i64 3
  %61 = load i64, i64* %arrayidx77, align 8
  %62 = load i64*, i64** %c__, align 8
  %arrayidx78 = getelementptr inbounds i64, i64* %62, i64 3
  %63 = load i64, i64* %arrayidx78, align 8
  %or79 = or i64 %61, %63
  %64 = load i64*, i64** %a__, align 8
  %arrayidx80 = getelementptr inbounds i64, i64* %64, i64 3
  store i64 %or79, i64* %arrayidx80, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.end73
  br label %if.end126

if.else82:                                        ; preds = %do.body46
  store i64 0, i64* %i__, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.else82
  %65 = load i64, i64* %i__, align 8
  %add = add i64 %65, 4
  store i64 %add, i64* %i__, align 8
  %66 = load i64, i64* %n__, align 8
  %cmp83 = icmp ult i64 %add, %66
  br i1 %cmp83, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load i64*, i64** %b__, align 8
  %68 = load i64, i64* %i__, align 8
  %sub = sub i64 %68, 1
  %arrayidx85 = getelementptr inbounds i64, i64* %67, i64 %sub
  %69 = load i64, i64* %arrayidx85, align 8
  %70 = load i64*, i64** %c__, align 8
  %71 = load i64, i64* %i__, align 8
  %sub86 = sub i64 %71, 1
  %arrayidx87 = getelementptr inbounds i64, i64* %70, i64 %sub86
  %72 = load i64, i64* %arrayidx87, align 8
  %or88 = or i64 %69, %72
  %73 = load i64*, i64** %a__, align 8
  %74 = load i64, i64* %i__, align 8
  %sub89 = sub i64 %74, 1
  %arrayidx90 = getelementptr inbounds i64, i64* %73, i64 %sub89
  store i64 %or88, i64* %arrayidx90, align 8
  %75 = load i64*, i64** %b__, align 8
  %76 = load i64, i64* %i__, align 8
  %sub91 = sub i64 %76, 2
  %arrayidx92 = getelementptr inbounds i64, i64* %75, i64 %sub91
  %77 = load i64, i64* %arrayidx92, align 8
  %78 = load i64*, i64** %c__, align 8
  %79 = load i64, i64* %i__, align 8
  %sub93 = sub i64 %79, 2
  %arrayidx94 = getelementptr inbounds i64, i64* %78, i64 %sub93
  %80 = load i64, i64* %arrayidx94, align 8
  %or95 = or i64 %77, %80
  %81 = load i64*, i64** %a__, align 8
  %82 = load i64, i64* %i__, align 8
  %sub96 = sub i64 %82, 2
  %arrayidx97 = getelementptr inbounds i64, i64* %81, i64 %sub96
  store i64 %or95, i64* %arrayidx97, align 8
  %83 = load i64*, i64** %b__, align 8
  %84 = load i64, i64* %i__, align 8
  %sub98 = sub i64 %84, 3
  %arrayidx99 = getelementptr inbounds i64, i64* %83, i64 %sub98
  %85 = load i64, i64* %arrayidx99, align 8
  %86 = load i64*, i64** %c__, align 8
  %87 = load i64, i64* %i__, align 8
  %sub100 = sub i64 %87, 3
  %arrayidx101 = getelementptr inbounds i64, i64* %86, i64 %sub100
  %88 = load i64, i64* %arrayidx101, align 8
  %or102 = or i64 %85, %88
  %89 = load i64*, i64** %a__, align 8
  %90 = load i64, i64* %i__, align 8
  %sub103 = sub i64 %90, 3
  %arrayidx104 = getelementptr inbounds i64, i64* %89, i64 %sub103
  store i64 %or102, i64* %arrayidx104, align 8
  %91 = load i64*, i64** %b__, align 8
  %92 = load i64, i64* %i__, align 8
  %sub105 = sub i64 %92, 4
  %arrayidx106 = getelementptr inbounds i64, i64* %91, i64 %sub105
  %93 = load i64, i64* %arrayidx106, align 8
  %94 = load i64*, i64** %c__, align 8
  %95 = load i64, i64* %i__, align 8
  %sub107 = sub i64 %95, 4
  %arrayidx108 = getelementptr inbounds i64, i64* %94, i64 %sub107
  %96 = load i64, i64* %arrayidx108, align 8
  %or109 = or i64 %93, %96
  %97 = load i64*, i64** %a__, align 8
  %98 = load i64, i64* %i__, align 8
  %sub110 = sub i64 %98, 4
  %arrayidx111 = getelementptr inbounds i64, i64* %97, i64 %sub110
  store i64 %or109, i64* %arrayidx111, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %99 = load i64, i64* %i__, align 8
  %100 = load i64, i64* %n__, align 8
  %cmp112 = icmp ugt i64 %99, %100
  br i1 %cmp112, label %if.then114, label %if.end125

if.then114:                                       ; preds = %for.end
  %101 = load i64, i64* %i__, align 8
  %sub115 = sub i64 %101, 4
  store i64 %sub115, i64* %i__, align 8
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc, %if.then114
  %102 = load i64, i64* %i__, align 8
  %103 = load i64, i64* %n__, align 8
  %cmp117 = icmp ult i64 %102, %103
  br i1 %cmp117, label %for.body119, label %for.end124

for.body119:                                      ; preds = %for.cond116
  %104 = load i64*, i64** %b__, align 8
  %105 = load i64, i64* %i__, align 8
  %arrayidx120 = getelementptr inbounds i64, i64* %104, i64 %105
  %106 = load i64, i64* %arrayidx120, align 8
  %107 = load i64*, i64** %c__, align 8
  %108 = load i64, i64* %i__, align 8
  %arrayidx121 = getelementptr inbounds i64, i64* %107, i64 %108
  %109 = load i64, i64* %arrayidx121, align 8
  %or122 = or i64 %106, %109
  %110 = load i64*, i64** %a__, align 8
  %111 = load i64, i64* %i__, align 8
  %arrayidx123 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 %or122, i64* %arrayidx123, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body119
  %112 = load i64, i64* %i__, align 8
  %inc = add i64 %112, 1
  store i64 %inc, i64* %i__, align 8
  br label %for.cond116, !llvm.loop !12

for.end124:                                       ; preds = %for.cond116
  br label %if.end125

if.end125:                                        ; preds = %for.end124, %for.end
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.end81
  br label %do.end127

do.end127:                                        ; preds = %if.end126
  %113 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used128 = getelementptr inbounds %struct.zahl, %struct.zahl* %113, i32 0, i32 2
  %114 = load i64, i64* %used128, align 8
  %115 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used129 = getelementptr inbounds %struct.zahl, %struct.zahl* %115, i32 0, i32 2
  %116 = load i64, i64* %used129, align 8
  %cmp130 = icmp ult i64 %114, %116
  br i1 %cmp130, label %if.then132, label %if.end136

if.then132:                                       ; preds = %do.end127
  %117 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars133 = getelementptr inbounds %struct.zahl, %struct.zahl* %117, i32 0, i32 4
  %118 = load i64*, i64** %chars133, align 8
  %119 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars134 = getelementptr inbounds %struct.zahl, %struct.zahl* %119, i32 0, i32 4
  %120 = load i64*, i64** %chars134, align 8
  %121 = load i64, i64* %n, align 8
  %122 = load i64, i64* %m, align 8
  %call135 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %118, i64* noundef %120, i64 noundef %121, i64 noundef %122)
  br label %if.end136

if.end136:                                        ; preds = %if.then132, %do.end127
  br label %if.end357

if.else137:                                       ; preds = %do.end42
  %123 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %124 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %cmp138 = icmp eq %struct.zahl* %123, %124
  %lnot140 = xor i1 %cmp138, true
  %lnot142 = xor i1 %lnot140, true
  %lnot.ext143 = zext i1 %lnot142 to i32
  %conv144 = sext i32 %lnot.ext143 to i64
  %tobool145 = icmp ne i64 %conv144, 0
  br i1 %tobool145, label %if.then146, label %if.else253

if.then146:                                       ; preds = %if.else137
  br label %do.body147

do.body147:                                       ; preds = %if.then146
  %125 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars149 = getelementptr inbounds %struct.zahl, %struct.zahl* %125, i32 0, i32 4
  %126 = load i64*, i64** %chars149, align 8
  store i64* %126, i64** %a__148, align 8
  %127 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars151 = getelementptr inbounds %struct.zahl, %struct.zahl* %127, i32 0, i32 4
  %128 = load i64*, i64** %chars151, align 8
  store i64* %128, i64** %b__150, align 8
  %129 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars153 = getelementptr inbounds %struct.zahl, %struct.zahl* %129, i32 0, i32 4
  %130 = load i64*, i64** %chars153, align 8
  store i64* %130, i64** %c__152, align 8
  %131 = load i64, i64* %n, align 8
  store i64 %131, i64* %n__155, align 8
  %132 = load i64, i64* %n__155, align 8
  %cmp156 = icmp ule i64 %132, 4
  br i1 %cmp156, label %if.then158, label %if.else191

if.then158:                                       ; preds = %do.body147
  %133 = load i64, i64* %n__155, align 8
  %cmp159 = icmp uge i64 %133, 1
  br i1 %cmp159, label %if.then161, label %if.end166

if.then161:                                       ; preds = %if.then158
  %134 = load i64*, i64** %b__150, align 8
  %arrayidx162 = getelementptr inbounds i64, i64* %134, i64 0
  %135 = load i64, i64* %arrayidx162, align 8
  %136 = load i64*, i64** %c__152, align 8
  %arrayidx163 = getelementptr inbounds i64, i64* %136, i64 0
  %137 = load i64, i64* %arrayidx163, align 8
  %or164 = or i64 %135, %137
  %138 = load i64*, i64** %a__148, align 8
  %arrayidx165 = getelementptr inbounds i64, i64* %138, i64 0
  store i64 %or164, i64* %arrayidx165, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %if.then158
  %139 = load i64, i64* %n__155, align 8
  %cmp167 = icmp uge i64 %139, 2
  br i1 %cmp167, label %if.then169, label %if.end174

if.then169:                                       ; preds = %if.end166
  %140 = load i64*, i64** %b__150, align 8
  %arrayidx170 = getelementptr inbounds i64, i64* %140, i64 1
  %141 = load i64, i64* %arrayidx170, align 8
  %142 = load i64*, i64** %c__152, align 8
  %arrayidx171 = getelementptr inbounds i64, i64* %142, i64 1
  %143 = load i64, i64* %arrayidx171, align 8
  %or172 = or i64 %141, %143
  %144 = load i64*, i64** %a__148, align 8
  %arrayidx173 = getelementptr inbounds i64, i64* %144, i64 1
  store i64 %or172, i64* %arrayidx173, align 8
  br label %if.end174

if.end174:                                        ; preds = %if.then169, %if.end166
  %145 = load i64, i64* %n__155, align 8
  %cmp175 = icmp uge i64 %145, 3
  br i1 %cmp175, label %if.then177, label %if.end182

if.then177:                                       ; preds = %if.end174
  %146 = load i64*, i64** %b__150, align 8
  %arrayidx178 = getelementptr inbounds i64, i64* %146, i64 2
  %147 = load i64, i64* %arrayidx178, align 8
  %148 = load i64*, i64** %c__152, align 8
  %arrayidx179 = getelementptr inbounds i64, i64* %148, i64 2
  %149 = load i64, i64* %arrayidx179, align 8
  %or180 = or i64 %147, %149
  %150 = load i64*, i64** %a__148, align 8
  %arrayidx181 = getelementptr inbounds i64, i64* %150, i64 2
  store i64 %or180, i64* %arrayidx181, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then177, %if.end174
  %151 = load i64, i64* %n__155, align 8
  %cmp183 = icmp uge i64 %151, 4
  br i1 %cmp183, label %if.then185, label %if.end190

if.then185:                                       ; preds = %if.end182
  %152 = load i64*, i64** %b__150, align 8
  %arrayidx186 = getelementptr inbounds i64, i64* %152, i64 3
  %153 = load i64, i64* %arrayidx186, align 8
  %154 = load i64*, i64** %c__152, align 8
  %arrayidx187 = getelementptr inbounds i64, i64* %154, i64 3
  %155 = load i64, i64* %arrayidx187, align 8
  %or188 = or i64 %153, %155
  %156 = load i64*, i64** %a__148, align 8
  %arrayidx189 = getelementptr inbounds i64, i64* %156, i64 3
  store i64 %or188, i64* %arrayidx189, align 8
  br label %if.end190

if.end190:                                        ; preds = %if.then185, %if.end182
  br label %if.end242

if.else191:                                       ; preds = %do.body147
  store i64 0, i64* %i__154, align 8
  br label %for.cond192

for.cond192:                                      ; preds = %for.body196, %if.else191
  %157 = load i64, i64* %i__154, align 8
  %add193 = add i64 %157, 4
  store i64 %add193, i64* %i__154, align 8
  %158 = load i64, i64* %n__155, align 8
  %cmp194 = icmp ult i64 %add193, %158
  br i1 %cmp194, label %for.body196, label %for.end225

for.body196:                                      ; preds = %for.cond192
  %159 = load i64*, i64** %b__150, align 8
  %160 = load i64, i64* %i__154, align 8
  %sub197 = sub i64 %160, 1
  %arrayidx198 = getelementptr inbounds i64, i64* %159, i64 %sub197
  %161 = load i64, i64* %arrayidx198, align 8
  %162 = load i64*, i64** %c__152, align 8
  %163 = load i64, i64* %i__154, align 8
  %sub199 = sub i64 %163, 1
  %arrayidx200 = getelementptr inbounds i64, i64* %162, i64 %sub199
  %164 = load i64, i64* %arrayidx200, align 8
  %or201 = or i64 %161, %164
  %165 = load i64*, i64** %a__148, align 8
  %166 = load i64, i64* %i__154, align 8
  %sub202 = sub i64 %166, 1
  %arrayidx203 = getelementptr inbounds i64, i64* %165, i64 %sub202
  store i64 %or201, i64* %arrayidx203, align 8
  %167 = load i64*, i64** %b__150, align 8
  %168 = load i64, i64* %i__154, align 8
  %sub204 = sub i64 %168, 2
  %arrayidx205 = getelementptr inbounds i64, i64* %167, i64 %sub204
  %169 = load i64, i64* %arrayidx205, align 8
  %170 = load i64*, i64** %c__152, align 8
  %171 = load i64, i64* %i__154, align 8
  %sub206 = sub i64 %171, 2
  %arrayidx207 = getelementptr inbounds i64, i64* %170, i64 %sub206
  %172 = load i64, i64* %arrayidx207, align 8
  %or208 = or i64 %169, %172
  %173 = load i64*, i64** %a__148, align 8
  %174 = load i64, i64* %i__154, align 8
  %sub209 = sub i64 %174, 2
  %arrayidx210 = getelementptr inbounds i64, i64* %173, i64 %sub209
  store i64 %or208, i64* %arrayidx210, align 8
  %175 = load i64*, i64** %b__150, align 8
  %176 = load i64, i64* %i__154, align 8
  %sub211 = sub i64 %176, 3
  %arrayidx212 = getelementptr inbounds i64, i64* %175, i64 %sub211
  %177 = load i64, i64* %arrayidx212, align 8
  %178 = load i64*, i64** %c__152, align 8
  %179 = load i64, i64* %i__154, align 8
  %sub213 = sub i64 %179, 3
  %arrayidx214 = getelementptr inbounds i64, i64* %178, i64 %sub213
  %180 = load i64, i64* %arrayidx214, align 8
  %or215 = or i64 %177, %180
  %181 = load i64*, i64** %a__148, align 8
  %182 = load i64, i64* %i__154, align 8
  %sub216 = sub i64 %182, 3
  %arrayidx217 = getelementptr inbounds i64, i64* %181, i64 %sub216
  store i64 %or215, i64* %arrayidx217, align 8
  %183 = load i64*, i64** %b__150, align 8
  %184 = load i64, i64* %i__154, align 8
  %sub218 = sub i64 %184, 4
  %arrayidx219 = getelementptr inbounds i64, i64* %183, i64 %sub218
  %185 = load i64, i64* %arrayidx219, align 8
  %186 = load i64*, i64** %c__152, align 8
  %187 = load i64, i64* %i__154, align 8
  %sub220 = sub i64 %187, 4
  %arrayidx221 = getelementptr inbounds i64, i64* %186, i64 %sub220
  %188 = load i64, i64* %arrayidx221, align 8
  %or222 = or i64 %185, %188
  %189 = load i64*, i64** %a__148, align 8
  %190 = load i64, i64* %i__154, align 8
  %sub223 = sub i64 %190, 4
  %arrayidx224 = getelementptr inbounds i64, i64* %189, i64 %sub223
  store i64 %or222, i64* %arrayidx224, align 8
  br label %for.cond192, !llvm.loop !13

for.end225:                                       ; preds = %for.cond192
  %191 = load i64, i64* %i__154, align 8
  %192 = load i64, i64* %n__155, align 8
  %cmp226 = icmp ugt i64 %191, %192
  br i1 %cmp226, label %if.then228, label %if.end241

if.then228:                                       ; preds = %for.end225
  %193 = load i64, i64* %i__154, align 8
  %sub229 = sub i64 %193, 4
  store i64 %sub229, i64* %i__154, align 8
  br label %for.cond230

for.cond230:                                      ; preds = %for.inc238, %if.then228
  %194 = load i64, i64* %i__154, align 8
  %195 = load i64, i64* %n__155, align 8
  %cmp231 = icmp ult i64 %194, %195
  br i1 %cmp231, label %for.body233, label %for.end240

for.body233:                                      ; preds = %for.cond230
  %196 = load i64*, i64** %b__150, align 8
  %197 = load i64, i64* %i__154, align 8
  %arrayidx234 = getelementptr inbounds i64, i64* %196, i64 %197
  %198 = load i64, i64* %arrayidx234, align 8
  %199 = load i64*, i64** %c__152, align 8
  %200 = load i64, i64* %i__154, align 8
  %arrayidx235 = getelementptr inbounds i64, i64* %199, i64 %200
  %201 = load i64, i64* %arrayidx235, align 8
  %or236 = or i64 %198, %201
  %202 = load i64*, i64** %a__148, align 8
  %203 = load i64, i64* %i__154, align 8
  %arrayidx237 = getelementptr inbounds i64, i64* %202, i64 %203
  store i64 %or236, i64* %arrayidx237, align 8
  br label %for.inc238

for.inc238:                                       ; preds = %for.body233
  %204 = load i64, i64* %i__154, align 8
  %inc239 = add i64 %204, 1
  store i64 %inc239, i64* %i__154, align 8
  br label %for.cond230, !llvm.loop !14

for.end240:                                       ; preds = %for.cond230
  br label %if.end241

if.end241:                                        ; preds = %for.end240, %for.end225
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.end190
  br label %do.end243

do.end243:                                        ; preds = %if.end242
  %205 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used244 = getelementptr inbounds %struct.zahl, %struct.zahl* %205, i32 0, i32 2
  %206 = load i64, i64* %used244, align 8
  %207 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used245 = getelementptr inbounds %struct.zahl, %struct.zahl* %207, i32 0, i32 2
  %208 = load i64, i64* %used245, align 8
  %cmp246 = icmp ult i64 %206, %208
  br i1 %cmp246, label %if.then248, label %if.end252

if.then248:                                       ; preds = %do.end243
  %209 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars249 = getelementptr inbounds %struct.zahl, %struct.zahl* %209, i32 0, i32 4
  %210 = load i64*, i64** %chars249, align 8
  %211 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars250 = getelementptr inbounds %struct.zahl, %struct.zahl* %211, i32 0, i32 4
  %212 = load i64*, i64** %chars250, align 8
  %213 = load i64, i64* %n, align 8
  %214 = load i64, i64* %m, align 8
  %call251 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %210, i64* noundef %212, i64 noundef %213, i64 noundef %214)
  br label %if.end252

if.end252:                                        ; preds = %if.then248, %do.end243
  br label %if.end356

if.else253:                                       ; preds = %if.else137
  %215 = load i64, i64* %m, align 8
  %216 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used254 = getelementptr inbounds %struct.zahl, %struct.zahl* %216, i32 0, i32 2
  %217 = load i64, i64* %used254, align 8
  %cmp255 = icmp eq i64 %215, %217
  br i1 %cmp255, label %if.then257, label %if.else306

if.then257:                                       ; preds = %if.else253
  br label %do.body258

do.body258:                                       ; preds = %if.then257
  %218 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars260 = getelementptr inbounds %struct.zahl, %struct.zahl* %218, i32 0, i32 4
  %219 = load i64*, i64** %chars260, align 8
  store i64* %219, i64** %a__259, align 8
  %220 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars262 = getelementptr inbounds %struct.zahl, %struct.zahl* %220, i32 0, i32 4
  %221 = load i64*, i64** %chars262, align 8
  store i64* %221, i64** %b__261, align 8
  %222 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars264 = getelementptr inbounds %struct.zahl, %struct.zahl* %222, i32 0, i32 4
  %223 = load i64*, i64** %chars264, align 8
  store i64* %223, i64** %c__263, align 8
  %224 = load i64, i64* %n, align 8
  store i64 %224, i64* %n__266, align 8
  store i64 0, i64* %i__265, align 8
  br label %for.cond267

for.cond267:                                      ; preds = %for.inc299, %do.body258
  %225 = load i64, i64* %i__265, align 8
  %226 = load i64, i64* %n__266, align 8
  %cmp268 = icmp ult i64 %225, %226
  br i1 %cmp268, label %for.body270, label %for.end301

for.body270:                                      ; preds = %for.cond267
  %227 = load i64*, i64** %b__261, align 8
  %228 = load i64, i64* %i__265, align 8
  %add271 = add i64 %228, 0
  %arrayidx272 = getelementptr inbounds i64, i64* %227, i64 %add271
  %229 = load i64, i64* %arrayidx272, align 8
  %230 = load i64*, i64** %c__263, align 8
  %231 = load i64, i64* %i__265, align 8
  %add273 = add i64 %231, 0
  %arrayidx274 = getelementptr inbounds i64, i64* %230, i64 %add273
  %232 = load i64, i64* %arrayidx274, align 8
  %or275 = or i64 %229, %232
  %233 = load i64*, i64** %a__259, align 8
  %234 = load i64, i64* %i__265, align 8
  %add276 = add i64 %234, 0
  %arrayidx277 = getelementptr inbounds i64, i64* %233, i64 %add276
  store i64 %or275, i64* %arrayidx277, align 8
  %235 = load i64*, i64** %b__261, align 8
  %236 = load i64, i64* %i__265, align 8
  %add278 = add i64 %236, 1
  %arrayidx279 = getelementptr inbounds i64, i64* %235, i64 %add278
  %237 = load i64, i64* %arrayidx279, align 8
  %238 = load i64*, i64** %c__263, align 8
  %239 = load i64, i64* %i__265, align 8
  %add280 = add i64 %239, 1
  %arrayidx281 = getelementptr inbounds i64, i64* %238, i64 %add280
  %240 = load i64, i64* %arrayidx281, align 8
  %or282 = or i64 %237, %240
  %241 = load i64*, i64** %a__259, align 8
  %242 = load i64, i64* %i__265, align 8
  %add283 = add i64 %242, 1
  %arrayidx284 = getelementptr inbounds i64, i64* %241, i64 %add283
  store i64 %or282, i64* %arrayidx284, align 8
  %243 = load i64*, i64** %b__261, align 8
  %244 = load i64, i64* %i__265, align 8
  %add285 = add i64 %244, 2
  %arrayidx286 = getelementptr inbounds i64, i64* %243, i64 %add285
  %245 = load i64, i64* %arrayidx286, align 8
  %246 = load i64*, i64** %c__263, align 8
  %247 = load i64, i64* %i__265, align 8
  %add287 = add i64 %247, 2
  %arrayidx288 = getelementptr inbounds i64, i64* %246, i64 %add287
  %248 = load i64, i64* %arrayidx288, align 8
  %or289 = or i64 %245, %248
  %249 = load i64*, i64** %a__259, align 8
  %250 = load i64, i64* %i__265, align 8
  %add290 = add i64 %250, 2
  %arrayidx291 = getelementptr inbounds i64, i64* %249, i64 %add290
  store i64 %or289, i64* %arrayidx291, align 8
  %251 = load i64*, i64** %b__261, align 8
  %252 = load i64, i64* %i__265, align 8
  %add292 = add i64 %252, 3
  %arrayidx293 = getelementptr inbounds i64, i64* %251, i64 %add292
  %253 = load i64, i64* %arrayidx293, align 8
  %254 = load i64*, i64** %c__263, align 8
  %255 = load i64, i64* %i__265, align 8
  %add294 = add i64 %255, 3
  %arrayidx295 = getelementptr inbounds i64, i64* %254, i64 %add294
  %256 = load i64, i64* %arrayidx295, align 8
  %or296 = or i64 %253, %256
  %257 = load i64*, i64** %a__259, align 8
  %258 = load i64, i64* %i__265, align 8
  %add297 = add i64 %258, 3
  %arrayidx298 = getelementptr inbounds i64, i64* %257, i64 %add297
  store i64 %or296, i64* %arrayidx298, align 8
  br label %for.inc299

for.inc299:                                       ; preds = %for.body270
  %259 = load i64, i64* %i__265, align 8
  %add300 = add i64 %259, 4
  store i64 %add300, i64* %i__265, align 8
  br label %for.cond267, !llvm.loop !15

for.end301:                                       ; preds = %for.cond267
  br label %do.end302

do.end302:                                        ; preds = %for.end301
  %260 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars303 = getelementptr inbounds %struct.zahl, %struct.zahl* %260, i32 0, i32 4
  %261 = load i64*, i64** %chars303, align 8
  %262 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars304 = getelementptr inbounds %struct.zahl, %struct.zahl* %262, i32 0, i32 4
  %263 = load i64*, i64** %chars304, align 8
  %264 = load i64, i64* %n, align 8
  %265 = load i64, i64* %m, align 8
  %call305 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %261, i64* noundef %263, i64 noundef %264, i64 noundef %265)
  br label %if.end355

if.else306:                                       ; preds = %if.else253
  br label %do.body307

do.body307:                                       ; preds = %if.else306
  %266 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars309 = getelementptr inbounds %struct.zahl, %struct.zahl* %266, i32 0, i32 4
  %267 = load i64*, i64** %chars309, align 8
  store i64* %267, i64** %a__308, align 8
  %268 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars311 = getelementptr inbounds %struct.zahl, %struct.zahl* %268, i32 0, i32 4
  %269 = load i64*, i64** %chars311, align 8
  store i64* %269, i64** %b__310, align 8
  %270 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars313 = getelementptr inbounds %struct.zahl, %struct.zahl* %270, i32 0, i32 4
  %271 = load i64*, i64** %chars313, align 8
  store i64* %271, i64** %c__312, align 8
  %272 = load i64, i64* %n, align 8
  store i64 %272, i64* %n__315, align 8
  store i64 0, i64* %i__314, align 8
  br label %for.cond316

for.cond316:                                      ; preds = %for.inc348, %do.body307
  %273 = load i64, i64* %i__314, align 8
  %274 = load i64, i64* %n__315, align 8
  %cmp317 = icmp ult i64 %273, %274
  br i1 %cmp317, label %for.body319, label %for.end350

for.body319:                                      ; preds = %for.cond316
  %275 = load i64*, i64** %b__310, align 8
  %276 = load i64, i64* %i__314, align 8
  %add320 = add i64 %276, 0
  %arrayidx321 = getelementptr inbounds i64, i64* %275, i64 %add320
  %277 = load i64, i64* %arrayidx321, align 8
  %278 = load i64*, i64** %c__312, align 8
  %279 = load i64, i64* %i__314, align 8
  %add322 = add i64 %279, 0
  %arrayidx323 = getelementptr inbounds i64, i64* %278, i64 %add322
  %280 = load i64, i64* %arrayidx323, align 8
  %or324 = or i64 %277, %280
  %281 = load i64*, i64** %a__308, align 8
  %282 = load i64, i64* %i__314, align 8
  %add325 = add i64 %282, 0
  %arrayidx326 = getelementptr inbounds i64, i64* %281, i64 %add325
  store i64 %or324, i64* %arrayidx326, align 8
  %283 = load i64*, i64** %b__310, align 8
  %284 = load i64, i64* %i__314, align 8
  %add327 = add i64 %284, 1
  %arrayidx328 = getelementptr inbounds i64, i64* %283, i64 %add327
  %285 = load i64, i64* %arrayidx328, align 8
  %286 = load i64*, i64** %c__312, align 8
  %287 = load i64, i64* %i__314, align 8
  %add329 = add i64 %287, 1
  %arrayidx330 = getelementptr inbounds i64, i64* %286, i64 %add329
  %288 = load i64, i64* %arrayidx330, align 8
  %or331 = or i64 %285, %288
  %289 = load i64*, i64** %a__308, align 8
  %290 = load i64, i64* %i__314, align 8
  %add332 = add i64 %290, 1
  %arrayidx333 = getelementptr inbounds i64, i64* %289, i64 %add332
  store i64 %or331, i64* %arrayidx333, align 8
  %291 = load i64*, i64** %b__310, align 8
  %292 = load i64, i64* %i__314, align 8
  %add334 = add i64 %292, 2
  %arrayidx335 = getelementptr inbounds i64, i64* %291, i64 %add334
  %293 = load i64, i64* %arrayidx335, align 8
  %294 = load i64*, i64** %c__312, align 8
  %295 = load i64, i64* %i__314, align 8
  %add336 = add i64 %295, 2
  %arrayidx337 = getelementptr inbounds i64, i64* %294, i64 %add336
  %296 = load i64, i64* %arrayidx337, align 8
  %or338 = or i64 %293, %296
  %297 = load i64*, i64** %a__308, align 8
  %298 = load i64, i64* %i__314, align 8
  %add339 = add i64 %298, 2
  %arrayidx340 = getelementptr inbounds i64, i64* %297, i64 %add339
  store i64 %or338, i64* %arrayidx340, align 8
  %299 = load i64*, i64** %b__310, align 8
  %300 = load i64, i64* %i__314, align 8
  %add341 = add i64 %300, 3
  %arrayidx342 = getelementptr inbounds i64, i64* %299, i64 %add341
  %301 = load i64, i64* %arrayidx342, align 8
  %302 = load i64*, i64** %c__312, align 8
  %303 = load i64, i64* %i__314, align 8
  %add343 = add i64 %303, 3
  %arrayidx344 = getelementptr inbounds i64, i64* %302, i64 %add343
  %304 = load i64, i64* %arrayidx344, align 8
  %or345 = or i64 %301, %304
  %305 = load i64*, i64** %a__308, align 8
  %306 = load i64, i64* %i__314, align 8
  %add346 = add i64 %306, 3
  %arrayidx347 = getelementptr inbounds i64, i64* %305, i64 %add346
  store i64 %or345, i64* %arrayidx347, align 8
  br label %for.inc348

for.inc348:                                       ; preds = %for.body319
  %307 = load i64, i64* %i__314, align 8
  %add349 = add i64 %307, 4
  store i64 %add349, i64* %i__314, align 8
  br label %for.cond316, !llvm.loop !16

for.end350:                                       ; preds = %for.cond316
  br label %do.end351

do.end351:                                        ; preds = %for.end350
  %308 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars352 = getelementptr inbounds %struct.zahl, %struct.zahl* %308, i32 0, i32 4
  %309 = load i64*, i64** %chars352, align 8
  %310 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars353 = getelementptr inbounds %struct.zahl, %struct.zahl* %310, i32 0, i32 4
  %311 = load i64*, i64** %chars353, align 8
  %312 = load i64, i64* %n, align 8
  %313 = load i64, i64* %m, align 8
  %call354 = call i32 bitcast (i32 (...)* @zmemcpy_range to i32 (i64*, i64*, i64, i64)*)(i64* noundef %309, i64* noundef %311, i64 noundef %312, i64 noundef %313)
  br label %if.end355

if.end355:                                        ; preds = %do.end351, %do.end302
  br label %if.end356

if.end356:                                        ; preds = %if.end355, %if.end252
  br label %if.end357

if.end357:                                        ; preds = %if.end356, %if.end136
  %314 = load i64, i64* %m, align 8
  %315 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used358 = getelementptr inbounds %struct.zahl, %struct.zahl* %315, i32 0, i32 2
  store i64 %314, i64* %used358, align 8
  %316 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call359 = call i32 @zsignum(%struct.zahl* noundef %316)
  %317 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call360 = call i32 @zsignum(%struct.zahl* noundef %317)
  %add361 = add nsw i32 %call359, %call360
  %cmp362 = icmp eq i32 %add361, 2
  %conv363 = zext i1 %cmp362 to i32
  %mul = mul nsw i32 %conv363, 2
  %sub364 = sub nsw i32 %mul, 1
  %318 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %318, i32 0, i32 0
  store i32 %sub364, i32* %sign, align 8
  br label %return

return:                                           ; preds = %if.end357, %do.end19, %do.end
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
