; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zand.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zand.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zand(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %a__ = alloca i64*, align 8
  %b__ = alloca i64*, align 8
  %c__ = alloca i64*, align 8
  %i__ = alloca i64, align 8
  %n__ = alloca i64, align 8
  %a__64 = alloca i64*, align 8
  %b__66 = alloca i64*, align 8
  %c__68 = alloca i64*, align 8
  %i__70 = alloca i64, align 8
  %n__71 = alloca i64, align 8
  %a__119 = alloca i64*, align 8
  %b__121 = alloca i64*, align 8
  %c__123 = alloca i64*, align 8
  %i__125 = alloca i64, align 8
  %n__126 = alloca i64, align 8
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
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %do.end197

if.else:                                          ; preds = %entry
  %2 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call3 = call i32 @zzero(%struct.zahl* noundef %2)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign12 = getelementptr inbounds %struct.zahl, %struct.zahl* %3, i32 0, i32 0
  store i32 0, i32* %sign12, align 8
  br label %do.end197

if.end:                                           ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end
  %4 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %4, i32 0, i32 2
  %5 = load i64, i64* %used, align 8
  %6 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used14 = getelementptr inbounds %struct.zahl, %struct.zahl* %6, i32 0, i32 2
  %7 = load i64, i64* %used14, align 8
  %cmp = icmp ult i64 %5, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end13
  %8 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used16 = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 2
  %9 = load i64, i64* %used16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end13
  %10 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used17 = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 2
  %11 = load i64, i64* %used17, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %11, %cond.false ]
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used18 = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 2
  store i64 %cond, i64* %used18, align 8
  %13 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %14 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp19 = icmp eq %struct.zahl* %13, %14
  br i1 %cmp19, label %if.then21, label %if.else53

if.then21:                                        ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.then21
  %15 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %15, i32 0, i32 4
  %16 = load i64*, i64** %chars, align 8
  store i64* %16, i64** %a__, align 8
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars22 = getelementptr inbounds %struct.zahl, %struct.zahl* %17, i32 0, i32 4
  %18 = load i64*, i64** %chars22, align 8
  store i64* %18, i64** %b__, align 8
  %19 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars23 = getelementptr inbounds %struct.zahl, %struct.zahl* %19, i32 0, i32 4
  %20 = load i64*, i64** %chars23, align 8
  store i64* %20, i64** %c__, align 8
  %21 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used24 = getelementptr inbounds %struct.zahl, %struct.zahl* %21, i32 0, i32 2
  %22 = load i64, i64* %used24, align 8
  store i64 %22, i64* %n__, align 8
  store i64 0, i64* %i__, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %23 = load i64, i64* %i__, align 8
  %24 = load i64, i64* %n__, align 8
  %cmp25 = icmp ult i64 %23, %24
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i64*, i64** %b__, align 8
  %26 = load i64, i64* %i__, align 8
  %add = add i64 %26, 0
  %arrayidx = getelementptr inbounds i64, i64* %25, i64 %add
  %27 = load i64, i64* %arrayidx, align 8
  %28 = load i64*, i64** %c__, align 8
  %29 = load i64, i64* %i__, align 8
  %add27 = add i64 %29, 0
  %arrayidx28 = getelementptr inbounds i64, i64* %28, i64 %add27
  %30 = load i64, i64* %arrayidx28, align 8
  %and = and i64 %27, %30
  %31 = load i64*, i64** %a__, align 8
  %32 = load i64, i64* %i__, align 8
  %add29 = add i64 %32, 0
  %arrayidx30 = getelementptr inbounds i64, i64* %31, i64 %add29
  store i64 %and, i64* %arrayidx30, align 8
  %33 = load i64*, i64** %b__, align 8
  %34 = load i64, i64* %i__, align 8
  %add31 = add i64 %34, 1
  %arrayidx32 = getelementptr inbounds i64, i64* %33, i64 %add31
  %35 = load i64, i64* %arrayidx32, align 8
  %36 = load i64*, i64** %c__, align 8
  %37 = load i64, i64* %i__, align 8
  %add33 = add i64 %37, 1
  %arrayidx34 = getelementptr inbounds i64, i64* %36, i64 %add33
  %38 = load i64, i64* %arrayidx34, align 8
  %and35 = and i64 %35, %38
  %39 = load i64*, i64** %a__, align 8
  %40 = load i64, i64* %i__, align 8
  %add36 = add i64 %40, 1
  %arrayidx37 = getelementptr inbounds i64, i64* %39, i64 %add36
  store i64 %and35, i64* %arrayidx37, align 8
  %41 = load i64*, i64** %b__, align 8
  %42 = load i64, i64* %i__, align 8
  %add38 = add i64 %42, 2
  %arrayidx39 = getelementptr inbounds i64, i64* %41, i64 %add38
  %43 = load i64, i64* %arrayidx39, align 8
  %44 = load i64*, i64** %c__, align 8
  %45 = load i64, i64* %i__, align 8
  %add40 = add i64 %45, 2
  %arrayidx41 = getelementptr inbounds i64, i64* %44, i64 %add40
  %46 = load i64, i64* %arrayidx41, align 8
  %and42 = and i64 %43, %46
  %47 = load i64*, i64** %a__, align 8
  %48 = load i64, i64* %i__, align 8
  %add43 = add i64 %48, 2
  %arrayidx44 = getelementptr inbounds i64, i64* %47, i64 %add43
  store i64 %and42, i64* %arrayidx44, align 8
  %49 = load i64*, i64** %b__, align 8
  %50 = load i64, i64* %i__, align 8
  %add45 = add i64 %50, 3
  %arrayidx46 = getelementptr inbounds i64, i64* %49, i64 %add45
  %51 = load i64, i64* %arrayidx46, align 8
  %52 = load i64*, i64** %c__, align 8
  %53 = load i64, i64* %i__, align 8
  %add47 = add i64 %53, 3
  %arrayidx48 = getelementptr inbounds i64, i64* %52, i64 %add47
  %54 = load i64, i64* %arrayidx48, align 8
  %and49 = and i64 %51, %54
  %55 = load i64*, i64** %a__, align 8
  %56 = load i64, i64* %i__, align 8
  %add50 = add i64 %56, 3
  %arrayidx51 = getelementptr inbounds i64, i64* %55, i64 %add50
  store i64 %and49, i64* %arrayidx51, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i64, i64* %i__, align 8
  %add52 = add i64 %57, 4
  store i64 %add52, i64* %i__, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end
  br label %if.end165

if.else53:                                        ; preds = %cond.end
  %58 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %59 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %cmp54 = icmp eq %struct.zahl* %58, %59
  %lnot56 = xor i1 %cmp54, true
  %lnot58 = xor i1 %lnot56, true
  %lnot.ext59 = zext i1 %lnot58 to i32
  %conv60 = sext i32 %lnot.ext59 to i64
  %tobool61 = icmp ne i64 %conv60, 0
  br i1 %tobool61, label %if.then62, label %if.else109

if.then62:                                        ; preds = %if.else53
  br label %do.body63

do.body63:                                        ; preds = %if.then62
  %60 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars65 = getelementptr inbounds %struct.zahl, %struct.zahl* %60, i32 0, i32 4
  %61 = load i64*, i64** %chars65, align 8
  store i64* %61, i64** %a__64, align 8
  %62 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars67 = getelementptr inbounds %struct.zahl, %struct.zahl* %62, i32 0, i32 4
  %63 = load i64*, i64** %chars67, align 8
  store i64* %63, i64** %b__66, align 8
  %64 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars69 = getelementptr inbounds %struct.zahl, %struct.zahl* %64, i32 0, i32 4
  %65 = load i64*, i64** %chars69, align 8
  store i64* %65, i64** %c__68, align 8
  %66 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used72 = getelementptr inbounds %struct.zahl, %struct.zahl* %66, i32 0, i32 2
  %67 = load i64, i64* %used72, align 8
  store i64 %67, i64* %n__71, align 8
  store i64 0, i64* %i__70, align 8
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc105, %do.body63
  %68 = load i64, i64* %i__70, align 8
  %69 = load i64, i64* %n__71, align 8
  %cmp74 = icmp ult i64 %68, %69
  br i1 %cmp74, label %for.body76, label %for.end107

for.body76:                                       ; preds = %for.cond73
  %70 = load i64*, i64** %b__66, align 8
  %71 = load i64, i64* %i__70, align 8
  %add77 = add i64 %71, 0
  %arrayidx78 = getelementptr inbounds i64, i64* %70, i64 %add77
  %72 = load i64, i64* %arrayidx78, align 8
  %73 = load i64*, i64** %c__68, align 8
  %74 = load i64, i64* %i__70, align 8
  %add79 = add i64 %74, 0
  %arrayidx80 = getelementptr inbounds i64, i64* %73, i64 %add79
  %75 = load i64, i64* %arrayidx80, align 8
  %and81 = and i64 %72, %75
  %76 = load i64*, i64** %a__64, align 8
  %77 = load i64, i64* %i__70, align 8
  %add82 = add i64 %77, 0
  %arrayidx83 = getelementptr inbounds i64, i64* %76, i64 %add82
  store i64 %and81, i64* %arrayidx83, align 8
  %78 = load i64*, i64** %b__66, align 8
  %79 = load i64, i64* %i__70, align 8
  %add84 = add i64 %79, 1
  %arrayidx85 = getelementptr inbounds i64, i64* %78, i64 %add84
  %80 = load i64, i64* %arrayidx85, align 8
  %81 = load i64*, i64** %c__68, align 8
  %82 = load i64, i64* %i__70, align 8
  %add86 = add i64 %82, 1
  %arrayidx87 = getelementptr inbounds i64, i64* %81, i64 %add86
  %83 = load i64, i64* %arrayidx87, align 8
  %and88 = and i64 %80, %83
  %84 = load i64*, i64** %a__64, align 8
  %85 = load i64, i64* %i__70, align 8
  %add89 = add i64 %85, 1
  %arrayidx90 = getelementptr inbounds i64, i64* %84, i64 %add89
  store i64 %and88, i64* %arrayidx90, align 8
  %86 = load i64*, i64** %b__66, align 8
  %87 = load i64, i64* %i__70, align 8
  %add91 = add i64 %87, 2
  %arrayidx92 = getelementptr inbounds i64, i64* %86, i64 %add91
  %88 = load i64, i64* %arrayidx92, align 8
  %89 = load i64*, i64** %c__68, align 8
  %90 = load i64, i64* %i__70, align 8
  %add93 = add i64 %90, 2
  %arrayidx94 = getelementptr inbounds i64, i64* %89, i64 %add93
  %91 = load i64, i64* %arrayidx94, align 8
  %and95 = and i64 %88, %91
  %92 = load i64*, i64** %a__64, align 8
  %93 = load i64, i64* %i__70, align 8
  %add96 = add i64 %93, 2
  %arrayidx97 = getelementptr inbounds i64, i64* %92, i64 %add96
  store i64 %and95, i64* %arrayidx97, align 8
  %94 = load i64*, i64** %b__66, align 8
  %95 = load i64, i64* %i__70, align 8
  %add98 = add i64 %95, 3
  %arrayidx99 = getelementptr inbounds i64, i64* %94, i64 %add98
  %96 = load i64, i64* %arrayidx99, align 8
  %97 = load i64*, i64** %c__68, align 8
  %98 = load i64, i64* %i__70, align 8
  %add100 = add i64 %98, 3
  %arrayidx101 = getelementptr inbounds i64, i64* %97, i64 %add100
  %99 = load i64, i64* %arrayidx101, align 8
  %and102 = and i64 %96, %99
  %100 = load i64*, i64** %a__64, align 8
  %101 = load i64, i64* %i__70, align 8
  %add103 = add i64 %101, 3
  %arrayidx104 = getelementptr inbounds i64, i64* %100, i64 %add103
  store i64 %and102, i64* %arrayidx104, align 8
  br label %for.inc105

for.inc105:                                       ; preds = %for.body76
  %102 = load i64, i64* %i__70, align 8
  %add106 = add i64 %102, 4
  store i64 %add106, i64* %i__70, align 8
  br label %for.cond73, !llvm.loop !12

for.end107:                                       ; preds = %for.cond73
  br label %do.end108

do.end108:                                        ; preds = %for.end107
  br label %if.end164

if.else109:                                       ; preds = %if.else53
  br label %do.body110

do.body110:                                       ; preds = %if.else109
  %103 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %103, i32 0, i32 3
  %104 = load i64, i64* %alloced, align 8
  %105 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used111 = getelementptr inbounds %struct.zahl, %struct.zahl* %105, i32 0, i32 2
  %106 = load i64, i64* %used111, align 8
  %cmp112 = icmp ult i64 %104, %106
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %do.body110
  %107 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %108 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used115 = getelementptr inbounds %struct.zahl, %struct.zahl* %108, i32 0, i32 2
  %109 = load i64, i64* %used115, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %107, i64 noundef %109)
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %do.body110
  br label %do.end117

do.end117:                                        ; preds = %if.end116
  br label %do.body118

do.body118:                                       ; preds = %do.end117
  %110 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars120 = getelementptr inbounds %struct.zahl, %struct.zahl* %110, i32 0, i32 4
  %111 = load i64*, i64** %chars120, align 8
  store i64* %111, i64** %a__119, align 8
  %112 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars122 = getelementptr inbounds %struct.zahl, %struct.zahl* %112, i32 0, i32 4
  %113 = load i64*, i64** %chars122, align 8
  store i64* %113, i64** %b__121, align 8
  %114 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars124 = getelementptr inbounds %struct.zahl, %struct.zahl* %114, i32 0, i32 4
  %115 = load i64*, i64** %chars124, align 8
  store i64* %115, i64** %c__123, align 8
  %116 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used127 = getelementptr inbounds %struct.zahl, %struct.zahl* %116, i32 0, i32 2
  %117 = load i64, i64* %used127, align 8
  store i64 %117, i64* %n__126, align 8
  store i64 0, i64* %i__125, align 8
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc160, %do.body118
  %118 = load i64, i64* %i__125, align 8
  %119 = load i64, i64* %n__126, align 8
  %cmp129 = icmp ult i64 %118, %119
  br i1 %cmp129, label %for.body131, label %for.end162

for.body131:                                      ; preds = %for.cond128
  %120 = load i64*, i64** %b__121, align 8
  %121 = load i64, i64* %i__125, align 8
  %add132 = add i64 %121, 0
  %arrayidx133 = getelementptr inbounds i64, i64* %120, i64 %add132
  %122 = load i64, i64* %arrayidx133, align 8
  %123 = load i64*, i64** %c__123, align 8
  %124 = load i64, i64* %i__125, align 8
  %add134 = add i64 %124, 0
  %arrayidx135 = getelementptr inbounds i64, i64* %123, i64 %add134
  %125 = load i64, i64* %arrayidx135, align 8
  %and136 = and i64 %122, %125
  %126 = load i64*, i64** %a__119, align 8
  %127 = load i64, i64* %i__125, align 8
  %add137 = add i64 %127, 0
  %arrayidx138 = getelementptr inbounds i64, i64* %126, i64 %add137
  store i64 %and136, i64* %arrayidx138, align 8
  %128 = load i64*, i64** %b__121, align 8
  %129 = load i64, i64* %i__125, align 8
  %add139 = add i64 %129, 1
  %arrayidx140 = getelementptr inbounds i64, i64* %128, i64 %add139
  %130 = load i64, i64* %arrayidx140, align 8
  %131 = load i64*, i64** %c__123, align 8
  %132 = load i64, i64* %i__125, align 8
  %add141 = add i64 %132, 1
  %arrayidx142 = getelementptr inbounds i64, i64* %131, i64 %add141
  %133 = load i64, i64* %arrayidx142, align 8
  %and143 = and i64 %130, %133
  %134 = load i64*, i64** %a__119, align 8
  %135 = load i64, i64* %i__125, align 8
  %add144 = add i64 %135, 1
  %arrayidx145 = getelementptr inbounds i64, i64* %134, i64 %add144
  store i64 %and143, i64* %arrayidx145, align 8
  %136 = load i64*, i64** %b__121, align 8
  %137 = load i64, i64* %i__125, align 8
  %add146 = add i64 %137, 2
  %arrayidx147 = getelementptr inbounds i64, i64* %136, i64 %add146
  %138 = load i64, i64* %arrayidx147, align 8
  %139 = load i64*, i64** %c__123, align 8
  %140 = load i64, i64* %i__125, align 8
  %add148 = add i64 %140, 2
  %arrayidx149 = getelementptr inbounds i64, i64* %139, i64 %add148
  %141 = load i64, i64* %arrayidx149, align 8
  %and150 = and i64 %138, %141
  %142 = load i64*, i64** %a__119, align 8
  %143 = load i64, i64* %i__125, align 8
  %add151 = add i64 %143, 2
  %arrayidx152 = getelementptr inbounds i64, i64* %142, i64 %add151
  store i64 %and150, i64* %arrayidx152, align 8
  %144 = load i64*, i64** %b__121, align 8
  %145 = load i64, i64* %i__125, align 8
  %add153 = add i64 %145, 3
  %arrayidx154 = getelementptr inbounds i64, i64* %144, i64 %add153
  %146 = load i64, i64* %arrayidx154, align 8
  %147 = load i64*, i64** %c__123, align 8
  %148 = load i64, i64* %i__125, align 8
  %add155 = add i64 %148, 3
  %arrayidx156 = getelementptr inbounds i64, i64* %147, i64 %add155
  %149 = load i64, i64* %arrayidx156, align 8
  %and157 = and i64 %146, %149
  %150 = load i64*, i64** %a__119, align 8
  %151 = load i64, i64* %i__125, align 8
  %add158 = add i64 %151, 3
  %arrayidx159 = getelementptr inbounds i64, i64* %150, i64 %add158
  store i64 %and157, i64* %arrayidx159, align 8
  br label %for.inc160

for.inc160:                                       ; preds = %for.body131
  %152 = load i64, i64* %i__125, align 8
  %add161 = add i64 %152, 4
  store i64 %add161, i64* %i__125, align 8
  br label %for.cond128, !llvm.loop !13

for.end162:                                       ; preds = %for.cond128
  br label %do.end163

do.end163:                                        ; preds = %for.end162
  br label %if.end164

if.end164:                                        ; preds = %do.end163, %do.end108
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %do.end
  br label %do.body166

do.body166:                                       ; preds = %if.end165
  br label %for.cond167

for.cond167:                                      ; preds = %for.inc177, %do.body166
  %153 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used168 = getelementptr inbounds %struct.zahl, %struct.zahl* %153, i32 0, i32 2
  %154 = load i64, i64* %used168, align 8
  %tobool169 = icmp ne i64 %154, 0
  br i1 %tobool169, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond167
  %155 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars170 = getelementptr inbounds %struct.zahl, %struct.zahl* %155, i32 0, i32 4
  %156 = load i64*, i64** %chars170, align 8
  %157 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used171 = getelementptr inbounds %struct.zahl, %struct.zahl* %157, i32 0, i32 2
  %158 = load i64, i64* %used171, align 8
  %sub = sub i64 %158, 1
  %arrayidx172 = getelementptr inbounds i64, i64* %156, i64 %sub
  %159 = load i64, i64* %arrayidx172, align 8
  %tobool173 = icmp ne i64 %159, 0
  %lnot174 = xor i1 %tobool173, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond167
  %160 = phi i1 [ false, %for.cond167 ], [ %lnot174, %land.rhs ]
  br i1 %160, label %for.body176, label %for.end179

for.body176:                                      ; preds = %land.end
  br label %for.inc177

for.inc177:                                       ; preds = %for.body176
  %161 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used178 = getelementptr inbounds %struct.zahl, %struct.zahl* %161, i32 0, i32 2
  %162 = load i64, i64* %used178, align 8
  %dec = add i64 %162, -1
  store i64 %dec, i64* %used178, align 8
  br label %for.cond167, !llvm.loop !14

for.end179:                                       ; preds = %land.end
  %163 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used180 = getelementptr inbounds %struct.zahl, %struct.zahl* %163, i32 0, i32 2
  %164 = load i64, i64* %used180, align 8
  %tobool181 = icmp ne i64 %164, 0
  br i1 %tobool181, label %cond.true182, label %cond.false193

cond.true182:                                     ; preds = %for.end179
  %165 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call183 = call i32 @zsignum(%struct.zahl* noundef %165)
  %cmp184 = icmp sgt i32 %call183, 0
  %conv185 = zext i1 %cmp184 to i32
  %166 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call186 = call i32 @zsignum(%struct.zahl* noundef %166)
  %cmp187 = icmp sgt i32 %call186, 0
  %conv188 = zext i1 %cmp187 to i32
  %add189 = add nsw i32 %conv185, %conv188
  %cmp190 = icmp sgt i32 %add189, 0
  %conv191 = zext i1 %cmp190 to i32
  %mul = mul nsw i32 %conv191, 2
  %sub192 = sub nsw i32 %mul, 1
  br label %cond.end194

cond.false193:                                    ; preds = %for.end179
  br label %cond.end194

cond.end194:                                      ; preds = %cond.false193, %cond.true182
  %cond195 = phi i32 [ %sub192, %cond.true182 ], [ 0, %cond.false193 ]
  %167 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign196 = getelementptr inbounds %struct.zahl, %struct.zahl* %167, i32 0, i32 0
  store i32 %cond195, i32* %sign196, align 8
  br label %do.end197

do.end197:                                        ; preds = %if.then, %if.then11, %cond.end194
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

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
