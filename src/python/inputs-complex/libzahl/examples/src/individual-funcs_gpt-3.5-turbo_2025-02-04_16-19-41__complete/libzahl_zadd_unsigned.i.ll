; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_zadd_unsigned.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_zadd_unsigned.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_zadd_unsigned(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %size = alloca i64, align 8
  %n = alloca i64, align 8
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
  %2 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zabs(%struct.zahl* noundef %1, %struct.zahl* noundef %2)
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call3 = call i32 @zzero(%struct.zahl* noundef %3)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else
  %4 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %5 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zabs(%struct.zahl* noundef %4, %struct.zahl* noundef %5)
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end
  %6 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %6, i32 0, i32 2
  %7 = load i64, i64* %used, align 8
  %8 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used13 = getelementptr inbounds %struct.zahl, %struct.zahl* %8, i32 0, i32 2
  %9 = load i64, i64* %used13, align 8
  %cmp = icmp ugt i64 %7, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end12
  %10 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used15 = getelementptr inbounds %struct.zahl, %struct.zahl* %10, i32 0, i32 2
  %11 = load i64, i64* %used15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  %12 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used16 = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 2
  %13 = load i64, i64* %used16, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %13, %cond.false ]
  store i64 %cond, i64* %size, align 8
  %14 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used17 = getelementptr inbounds %struct.zahl, %struct.zahl* %14, i32 0, i32 2
  %15 = load i64, i64* %used17, align 8
  %16 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used18 = getelementptr inbounds %struct.zahl, %struct.zahl* %16, i32 0, i32 2
  %17 = load i64, i64* %used18, align 8
  %add = add i64 %15, %17
  %18 = load i64, i64* %size, align 8
  %sub = sub i64 %add, %18
  store i64 %sub, i64* %n, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  %19 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %alloced = getelementptr inbounds %struct.zahl, %struct.zahl* %19, i32 0, i32 3
  %20 = load i64, i64* %alloced, align 8
  %21 = load i64, i64* %size, align 8
  %add19 = add i64 %21, 1
  %cmp20 = icmp ult i64 %20, %add19
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %do.body
  %22 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %23 = load i64, i64* %size, align 8
  %add23 = add i64 %23, 1
  call void @libzahl_realloc(%struct.zahl* noundef %22, i64 noundef %add23)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end24
  %24 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars = getelementptr inbounds %struct.zahl, %struct.zahl* %24, i32 0, i32 4
  %25 = load i64*, i64** %chars, align 8
  %26 = load i64, i64* %size, align 8
  %arrayidx = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 0, i64* %arrayidx, align 8
  %27 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %28 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp25 = icmp eq %struct.zahl* %27, %28
  br i1 %cmp25, label %if.then27, label %if.else41

if.then27:                                        ; preds = %do.end
  %29 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used28 = getelementptr inbounds %struct.zahl, %struct.zahl* %29, i32 0, i32 2
  %30 = load i64, i64* %used28, align 8
  %31 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used29 = getelementptr inbounds %struct.zahl, %struct.zahl* %31, i32 0, i32 2
  %32 = load i64, i64* %used29, align 8
  %cmp30 = icmp ult i64 %30, %32
  br i1 %cmp30, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.then27
  %33 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used33 = getelementptr inbounds %struct.zahl, %struct.zahl* %33, i32 0, i32 2
  %34 = load i64, i64* %used33, align 8
  store i64 %34, i64* %n, align 8
  %35 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars34 = getelementptr inbounds %struct.zahl, %struct.zahl* %35, i32 0, i32 4
  %36 = load i64*, i64** %chars34, align 8
  %37 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used35 = getelementptr inbounds %struct.zahl, %struct.zahl* %37, i32 0, i32 2
  %38 = load i64, i64* %used35, align 8
  %add.ptr = getelementptr inbounds i64, i64* %36, i64 %38
  %39 = load i64, i64* %n, align 8
  %40 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used36 = getelementptr inbounds %struct.zahl, %struct.zahl* %40, i32 0, i32 2
  %41 = load i64, i64* %used36, align 8
  %sub37 = sub i64 %39, %41
  %call38 = call i32 bitcast (i32 (...)* @libzahl_memset to i32 (i64*, i32, i64)*)(i64* noundef %add.ptr, i32 noundef 0, i64 noundef %sub37)
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.then27
  %42 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %43 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %44 = load i64, i64* %n, align 8
  %call40 = call i32 bitcast (i32 (...)* @zadd_impl_3 to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %42, %struct.zahl* noundef %43, i64 noundef %44)
  br label %if.end96

if.else41:                                        ; preds = %do.end
  %45 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %46 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %cmp42 = icmp eq %struct.zahl* %45, %46
  %lnot44 = xor i1 %cmp42, true
  %lnot46 = xor i1 %lnot44, true
  %lnot.ext47 = zext i1 %lnot46 to i32
  %conv48 = sext i32 %lnot.ext47 to i64
  %tobool49 = icmp ne i64 %conv48, 0
  br i1 %tobool49, label %if.then50, label %if.else65

if.then50:                                        ; preds = %if.else41
  %47 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used51 = getelementptr inbounds %struct.zahl, %struct.zahl* %47, i32 0, i32 2
  %48 = load i64, i64* %used51, align 8
  %49 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used52 = getelementptr inbounds %struct.zahl, %struct.zahl* %49, i32 0, i32 2
  %50 = load i64, i64* %used52, align 8
  %cmp53 = icmp ult i64 %48, %50
  br i1 %cmp53, label %if.then55, label %if.end63

if.then55:                                        ; preds = %if.then50
  %51 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used56 = getelementptr inbounds %struct.zahl, %struct.zahl* %51, i32 0, i32 2
  %52 = load i64, i64* %used56, align 8
  store i64 %52, i64* %n, align 8
  %53 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars57 = getelementptr inbounds %struct.zahl, %struct.zahl* %53, i32 0, i32 4
  %54 = load i64*, i64** %chars57, align 8
  %55 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used58 = getelementptr inbounds %struct.zahl, %struct.zahl* %55, i32 0, i32 2
  %56 = load i64, i64* %used58, align 8
  %add.ptr59 = getelementptr inbounds i64, i64* %54, i64 %56
  %57 = load i64, i64* %n, align 8
  %58 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used60 = getelementptr inbounds %struct.zahl, %struct.zahl* %58, i32 0, i32 2
  %59 = load i64, i64* %used60, align 8
  %sub61 = sub i64 %57, %59
  %call62 = call i32 bitcast (i32 (...)* @libzahl_memset to i32 (i64*, i32, i64)*)(i64* noundef %add.ptr59, i32 noundef 0, i64 noundef %sub61)
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %if.then50
  %60 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %61 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %62 = load i64, i64* %n, align 8
  %call64 = call i32 bitcast (i32 (...)* @zadd_impl_3 to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %60, %struct.zahl* noundef %61, i64 noundef %62)
  br label %if.end95

if.else65:                                        ; preds = %if.else41
  %63 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used66 = getelementptr inbounds %struct.zahl, %struct.zahl* %63, i32 0, i32 2
  %64 = load i64, i64* %used66, align 8
  %65 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used67 = getelementptr inbounds %struct.zahl, %struct.zahl* %65, i32 0, i32 2
  %66 = load i64, i64* %used67, align 8
  %cmp68 = icmp ugt i64 %64, %66
  %lnot70 = xor i1 %cmp68, true
  %lnot72 = xor i1 %lnot70, true
  %lnot.ext73 = zext i1 %lnot72 to i32
  %conv74 = sext i32 %lnot.ext73 to i64
  %tobool75 = icmp ne i64 %conv74, 0
  br i1 %tobool75, label %if.then76, label %if.else85

if.then76:                                        ; preds = %if.else65
  %67 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars77 = getelementptr inbounds %struct.zahl, %struct.zahl* %67, i32 0, i32 4
  %68 = load i64*, i64** %chars77, align 8
  %69 = load i64, i64* %n, align 8
  %add.ptr78 = getelementptr inbounds i64, i64* %68, i64 %69
  %70 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %chars79 = getelementptr inbounds %struct.zahl, %struct.zahl* %70, i32 0, i32 4
  %71 = load i64*, i64** %chars79, align 8
  %72 = load i64, i64* %n, align 8
  %add.ptr80 = getelementptr inbounds i64, i64* %71, i64 %72
  %73 = load i64, i64* %size, align 8
  %74 = load i64, i64* %n, align 8
  %sub81 = sub i64 %73, %74
  %call82 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %add.ptr78, i64* noundef %add.ptr80, i64 noundef %sub81)
  %75 = load i64, i64* %size, align 8
  %76 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used83 = getelementptr inbounds %struct.zahl, %struct.zahl* %76, i32 0, i32 2
  store i64 %75, i64* %used83, align 8
  %77 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %78 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %79 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %80 = load i64, i64* %n, align 8
  %call84 = call i32 bitcast (i32 (...)* @zadd_impl_4 to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %77, %struct.zahl* noundef %78, %struct.zahl* noundef %79, i64 noundef %80)
  br label %if.end94

if.else85:                                        ; preds = %if.else65
  %81 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %chars86 = getelementptr inbounds %struct.zahl, %struct.zahl* %81, i32 0, i32 4
  %82 = load i64*, i64** %chars86, align 8
  %83 = load i64, i64* %n, align 8
  %add.ptr87 = getelementptr inbounds i64, i64* %82, i64 %83
  %84 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %chars88 = getelementptr inbounds %struct.zahl, %struct.zahl* %84, i32 0, i32 4
  %85 = load i64*, i64** %chars88, align 8
  %86 = load i64, i64* %n, align 8
  %add.ptr89 = getelementptr inbounds i64, i64* %85, i64 %86
  %87 = load i64, i64* %size, align 8
  %88 = load i64, i64* %n, align 8
  %sub90 = sub i64 %87, %88
  %call91 = call i32 bitcast (i32 (...)* @libzahl_memcpy to i32 (i64*, i64*, i64)*)(i64* noundef %add.ptr87, i64* noundef %add.ptr89, i64 noundef %sub90)
  %89 = load i64, i64* %size, align 8
  %90 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %used92 = getelementptr inbounds %struct.zahl, %struct.zahl* %90, i32 0, i32 2
  store i64 %89, i64* %used92, align 8
  %91 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %92 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %93 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %94 = load i64, i64* %n, align 8
  %call93 = call i32 bitcast (i32 (...)* @zadd_impl_4 to i32 (%struct.zahl*, %struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %91, %struct.zahl* noundef %92, %struct.zahl* noundef %93, i64 noundef %94)
  br label %if.end94

if.end94:                                         ; preds = %if.else85, %if.then76
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end63
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end39
  %95 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %95, i32 0, i32 0
  store i32 1, i32* %sign, align 8
  br label %return

return:                                           ; preds = %if.end96, %if.then11, %if.then
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) #1

declare i32 @libzahl_memset(...) #1

declare i32 @zadd_impl_3(...) #1

declare i32 @libzahl_memcpy(...) #1

declare i32 @zadd_impl_4(...) #1

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
