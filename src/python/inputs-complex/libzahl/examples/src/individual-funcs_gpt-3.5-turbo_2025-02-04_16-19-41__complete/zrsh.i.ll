; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zrsh.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/zrsh.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zrsh(%struct.zahl* noundef %a, %struct.zahl* noundef %b, i64 noundef %bits) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %bits.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %chars = alloca i64, align 8
  %cbits = alloca i64, align 8
  store %struct.zahl* %a, %struct.zahl** %a.addr, align 8
  store %struct.zahl* %b, %struct.zahl** %b.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  %0 = load i64, i64* %bits.addr, align 8
  %tobool = icmp ne i64 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool3 = icmp ne i64 %conv, 0
  br i1 %tobool3, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %2 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp = icmp ne %struct.zahl* %1, %2
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %do.body
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %4 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zset(%struct.zahl* noundef %3, %struct.zahl* noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %return

if.end6:                                          ; preds = %entry
  %5 = load i64, i64* %bits.addr, align 8
  %shr = lshr i64 %5, 6
  store i64 %shr, i64* %chars, align 8
  %6 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call = call i32 @zzero(%struct.zahl* noundef %6)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load i64, i64* %chars, align 8
  %8 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 2
  %9 = load i64, i64* %used, align 8
  %cmp8 = icmp uge i64 %7, %9
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %10 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call10 = call i64 @zbits(%struct.zahl* noundef %10)
  %11 = load i64, i64* %bits.addr, align 8
  %cmp11 = icmp ule i64 %call10, %11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end6
  %12 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end6 ], [ %cmp11, %lor.rhs ]
  %lnot13 = xor i1 %12, true
  %lnot15 = xor i1 %lnot13, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  %conv17 = sext i32 %lnot.ext16 to i64
  %tobool18 = icmp ne i64 %conv17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.end
  %13 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %13, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %return

if.end20:                                         ; preds = %lor.end
  %14 = load i64, i64* %bits.addr, align 8
  %and = and i64 %14, 63
  store i64 %and, i64* %bits.addr, align 8
  %15 = load i64, i64* %bits.addr, align 8
  %sub = sub i64 64, %15
  store i64 %sub, i64* %cbits, align 8
  %16 = load i64, i64* %chars, align 8
  %tobool21 = icmp ne i64 %16, 0
  %lnot22 = xor i1 %tobool21, true
  %lnot24 = xor i1 %lnot22, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %conv26 = sext i32 %lnot.ext25 to i64
  %tobool27 = icmp ne i64 %conv26, 0
  br i1 %tobool27, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end20
  %17 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %18 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp28 = icmp eq %struct.zahl* %17, %18
  %lnot30 = xor i1 %cmp28, true
  %lnot32 = xor i1 %lnot30, true
  %lnot.ext33 = zext i1 %lnot32 to i32
  %conv34 = sext i32 %lnot.ext33 to i64
  %tobool35 = icmp ne i64 %conv34, 0
  br i1 %tobool35, label %if.then36, label %if.else

if.then36:                                        ; preds = %land.lhs.true
  %19 = load i64, i64* %chars, align 8
  %20 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used37 = getelementptr inbounds %struct.zahl, %struct.zahl* %20, i32 0, i32 2
  %21 = load i64, i64* %used37, align 8
  %sub38 = sub i64 %21, %19
  store i64 %sub38, i64* %used37, align 8
  %22 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars39 = getelementptr inbounds %struct.zahl, %struct.zahl* %22, i32 0, i32 4
  %23 = load i64*, i64** %chars39, align 8
  %24 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars40 = getelementptr inbounds %struct.zahl, %struct.zahl* %24, i32 0, i32 4
  %25 = load i64*, i64** %chars40, align 8
  %26 = load i64, i64* %chars, align 8
  %add.ptr = getelementptr inbounds i64, i64* %25, i64 %26
  %27 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used41 = getelementptr inbounds %struct.zahl, %struct.zahl* %27, i32 0, i32 2
  %28 = load i64, i64* %used41, align 8
  %call42 = call i32 bitcast (i32 (...)* @libzahl_memmove to i32 (i64*, i64*, i64)*)(i64* noundef %23, i64* noundef %add.ptr, i64 noundef %28)
  br label %if.end69

if.else:                                          ; preds = %land.lhs.true, %if.end20
  %29 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %30 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp43 = icmp ne %struct.zahl* %29, %30
  %lnot45 = xor i1 %cmp43, true
  %lnot47 = xor i1 %lnot45, true
  %lnot.ext48 = zext i1 %lnot47 to i32
  %conv49 = sext i32 %lnot.ext48 to i64
  %tobool50 = icmp ne i64 %conv49, 0
  br i1 %tobool50, label %if.then51, label %if.end68

if.then51:                                        ; preds = %if.else
  %31 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used52 = getelementptr inbounds %struct.zahl, %struct.zahl* %31, i32 0, i32 2
  %32 = load i64, i64* %used52, align 8
  %33 = load i64, i64* %chars, align 8
  %sub53 = sub i64 %32, %33
  %34 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used54 = getelementptr inbounds %struct.zahl, %struct.zahl* %34, i32 0, i32 2
  store i64 %sub53, i64* %used54, align 8
  br label %do.body55

do.body55:                                        ; preds = %if.then51
  %35 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %35, i32 0, i32 3
  %36 = load i64, i64* %alloced, align 8
  %37 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used56 = getelementptr inbounds %struct.zahl, %struct.zahl* %37, i32 0, i32 2
  %38 = load i64, i64* %used56, align 8
  %cmp57 = icmp ult i64 %36, %38
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %do.body55
  %39 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %40 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used60 = getelementptr inbounds %struct.zahl, %struct.zahl* %40, i32 0, i32 2
  %41 = load i64, i64* %used60, align 8
  call void @libzahl_realloc(%struct.zahl* noundef %39, i64 noundef %41)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %do.body55
  br label %do.end62

do.end62:                                         ; preds = %if.end61
  %42 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars63 = getelementptr inbounds %struct.zahl, %struct.zahl* %42, i32 0, i32 4
  %43 = load i64*, i64** %chars63, align 8
  %44 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars64 = getelementptr inbounds %struct.zahl, %struct.zahl* %44, i32 0, i32 4
  %45 = load i64*, i64** %chars64, align 8
  %46 = load i64, i64* %chars, align 8
  %add.ptr65 = getelementptr inbounds i64, i64* %45, i64 %46
  %47 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used66 = getelementptr inbounds %struct.zahl, %struct.zahl* %47, i32 0, i32 2
  %48 = load i64, i64* %used66, align 8
  %call67 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %43, i64* noundef %add.ptr65, i64 noundef %48)
  br label %if.end68

if.end68:                                         ; preds = %do.end62, %if.else
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then36
  %49 = load i64, i64* %bits.addr, align 8
  %tobool70 = icmp ne i64 %49, 0
  %lnot71 = xor i1 %tobool70, true
  %lnot73 = xor i1 %lnot71, true
  %lnot.ext74 = zext i1 %lnot73 to i32
  %conv75 = sext i32 %lnot.ext74 to i64
  %tobool76 = icmp ne i64 %conv75, 0
  br i1 %tobool76, label %if.then77, label %if.end103

if.then77:                                        ; preds = %if.end69
  %50 = load i64, i64* %bits.addr, align 8
  %51 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars78 = getelementptr inbounds %struct.zahl, %struct.zahl* %51, i32 0, i32 4
  %52 = load i64*, i64** %chars78, align 8
  %arrayidx = getelementptr inbounds i64, i64* %52, i64 0
  %53 = load i64, i64* %arrayidx, align 8
  %shr79 = lshr i64 %53, %50
  store i64 %shr79, i64* %arrayidx, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then77
  %54 = load i64, i64* %i, align 8
  %55 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used80 = getelementptr inbounds %struct.zahl, %struct.zahl* %55, i32 0, i32 2
  %56 = load i64, i64* %used80, align 8
  %cmp81 = icmp ult i64 %54, %56
  br i1 %cmp81, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars83 = getelementptr inbounds %struct.zahl, %struct.zahl* %57, i32 0, i32 4
  %58 = load i64*, i64** %chars83, align 8
  %59 = load i64, i64* %i, align 8
  %arrayidx84 = getelementptr inbounds i64, i64* %58, i64 %59
  %60 = load i64, i64* %arrayidx84, align 8
  %61 = load i64, i64* %cbits, align 8
  %shl = shl i64 %60, %61
  %62 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars85 = getelementptr inbounds %struct.zahl, %struct.zahl* %62, i32 0, i32 4
  %63 = load i64*, i64** %chars85, align 8
  %64 = load i64, i64* %i, align 8
  %sub86 = sub i64 %64, 1
  %arrayidx87 = getelementptr inbounds i64, i64* %63, i64 %sub86
  %65 = load i64, i64* %arrayidx87, align 8
  %or = or i64 %65, %shl
  store i64 %or, i64* %arrayidx87, align 8
  %66 = load i64, i64* %bits.addr, align 8
  %67 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars88 = getelementptr inbounds %struct.zahl, %struct.zahl* %67, i32 0, i32 4
  %68 = load i64*, i64** %chars88, align 8
  %69 = load i64, i64* %i, align 8
  %arrayidx89 = getelementptr inbounds i64, i64* %68, i64 %69
  %70 = load i64, i64* %arrayidx89, align 8
  %shr90 = lshr i64 %70, %66
  store i64 %shr90, i64* %arrayidx89, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %71 = load i64, i64* %i, align 8
  %inc = add i64 %71, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc100, %for.end
  %72 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars92 = getelementptr inbounds %struct.zahl, %struct.zahl* %72, i32 0, i32 4
  %73 = load i64*, i64** %chars92, align 8
  %74 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used93 = getelementptr inbounds %struct.zahl, %struct.zahl* %74, i32 0, i32 2
  %75 = load i64, i64* %used93, align 8
  %sub94 = sub i64 %75, 1
  %arrayidx95 = getelementptr inbounds i64, i64* %73, i64 %sub94
  %76 = load i64, i64* %arrayidx95, align 8
  %tobool96 = icmp ne i64 %76, 0
  %lnot97 = xor i1 %tobool96, true
  br i1 %lnot97, label %for.body99, label %for.end102

for.body99:                                       ; preds = %for.cond91
  br label %for.inc100

for.inc100:                                       ; preds = %for.body99
  %77 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used101 = getelementptr inbounds %struct.zahl, %struct.zahl* %77, i32 0, i32 2
  %78 = load i64, i64* %used101, align 8
  %dec = add i64 %78, -1
  store i64 %dec, i64* %used101, align 8
  br label %for.cond91, !llvm.loop !12

for.end102:                                       ; preds = %for.cond91
  br label %if.end103

if.end103:                                        ; preds = %for.end102, %if.end69
  %79 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %call104 = call i32 @zsignum(%struct.zahl* noundef %79)
  %80 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign105 = getelementptr inbounds %struct.zahl, %struct.zahl* %80, i32 0, i32 0
  store i32 %call104, i32* %sign105, align 8
  br label %return

return:                                           ; preds = %if.end103, %if.then19, %do.end
  ret void
}

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zzero(%struct.zahl* noundef) #1

declare i64 @zbits(%struct.zahl* noundef) #1

declare i32 @libzahl_memmove(...) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memcpy(...) #1

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
