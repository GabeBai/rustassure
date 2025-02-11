; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_zsub_unsigned.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_zsub_unsigned.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_sub = external global [1 x %struct.zahl], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_zsub_unsigned(%struct.zahl* noundef %a, %struct.zahl* noundef %b, %struct.zahl* noundef %c) #0 {
entry:
  %a.addr = alloca %struct.zahl*, align 8
  %b.addr = alloca %struct.zahl*, align 8
  %c.addr = alloca %struct.zahl*, align 8
  %magcmp = alloca i32, align 4
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
  %3 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %4 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  call void @zneg(%struct.zahl* noundef %3, %struct.zahl* noundef %4)
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call3 = call i32 @zzero(%struct.zahl* noundef %5)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else
  %6 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %7 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zabs(%struct.zahl* noundef %6, %struct.zahl* noundef %7)
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end
  %8 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %9 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %call13 = call i32 @zcmpmag(%struct.zahl* noundef %8, %struct.zahl* noundef %9)
  store i32 %call13, i32* %magcmp, align 4
  %10 = load i32, i32* %magcmp, align 4
  %cmp = icmp sle i32 %10, 0
  %lnot15 = xor i1 %cmp, true
  %lnot17 = xor i1 %lnot15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %tobool20 = icmp ne i64 %conv19, 0
  br i1 %tobool20, label %if.then21, label %if.else49

if.then21:                                        ; preds = %if.end12
  %11 = load i32, i32* %magcmp, align 4
  %cmp22 = icmp eq i32 %11, 0
  %lnot24 = xor i1 %cmp22, true
  %lnot26 = xor i1 %lnot24, true
  %lnot.ext27 = zext i1 %lnot26 to i32
  %conv28 = sext i32 %lnot.ext27 to i64
  %tobool29 = icmp ne i64 %conv28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then21
  %12 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign = getelementptr inbounds %struct.zahl, %struct.zahl* %12, i32 0, i32 0
  store i32 0, i32* %sign, align 8
  br label %return

if.end31:                                         ; preds = %if.then21
  %13 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %used = getelementptr inbounds %struct.zahl, %struct.zahl* %13, i32 0, i32 2
  %14 = load i64, i64* %used, align 8
  store i64 %14, i64* %n, align 8
  %15 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %16 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp32 = icmp eq %struct.zahl* %15, %16
  br i1 %cmp32, label %if.then34, label %if.else40

if.then34:                                        ; preds = %if.end31
  %17 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0), %struct.zahl* noundef %17)
  br label %do.body

do.body:                                          ; preds = %if.then34
  %18 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %19 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %cmp35 = icmp ne %struct.zahl* %18, %19
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.body
  %20 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %21 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zset(%struct.zahl* noundef %20, %struct.zahl* noundef %21)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end38
  %22 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %23 = load i64, i64* %n, align 8
  %call39 = call i32 bitcast (i32 (...)* @zsub_impl to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %22, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0), i64 noundef %23)
  br label %if.end48

if.else40:                                        ; preds = %if.end31
  br label %do.body41

do.body41:                                        ; preds = %if.else40
  %24 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %25 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %cmp42 = icmp ne %struct.zahl* %24, %25
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %do.body41
  %26 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %27 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zset(%struct.zahl* noundef %26, %struct.zahl* noundef %27)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %do.body41
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  %28 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %29 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %30 = load i64, i64* %n, align 8
  %call47 = call i32 bitcast (i32 (...)* @zsub_impl to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %28, %struct.zahl* noundef %29, i64 noundef %30)
  br label %if.end48

if.end48:                                         ; preds = %do.end46, %do.end
  br label %if.end76

if.else49:                                        ; preds = %if.end12
  %31 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %used50 = getelementptr inbounds %struct.zahl, %struct.zahl* %31, i32 0, i32 2
  %32 = load i64, i64* %used50, align 8
  store i64 %32, i64* %n, align 8
  %33 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %34 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %cmp51 = icmp eq %struct.zahl* %33, %34
  %lnot53 = xor i1 %cmp51, true
  %lnot55 = xor i1 %lnot53, true
  %lnot.ext56 = zext i1 %lnot55 to i32
  %conv57 = sext i32 %lnot.ext56 to i64
  %tobool58 = icmp ne i64 %conv57, 0
  br i1 %tobool58, label %if.then59, label %if.else67

if.then59:                                        ; preds = %if.else49
  %35 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  call void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0), %struct.zahl* noundef %35)
  br label %do.body60

do.body60:                                        ; preds = %if.then59
  %36 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %37 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp61 = icmp ne %struct.zahl* %36, %37
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %do.body60
  %38 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %39 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zset(%struct.zahl* noundef %38, %struct.zahl* noundef %39)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %do.body60
  br label %do.end65

do.end65:                                         ; preds = %if.end64
  %40 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %41 = load i64, i64* %n, align 8
  %call66 = call i32 bitcast (i32 (...)* @zsub_impl to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %40, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_sub, i64 0, i64 0), i64 noundef %41)
  br label %if.end75

if.else67:                                        ; preds = %if.else49
  br label %do.body68

do.body68:                                        ; preds = %if.else67
  %42 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %43 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  %cmp69 = icmp ne %struct.zahl* %42, %43
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %do.body68
  %44 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %45 = load %struct.zahl*, %struct.zahl** %b.addr, align 8
  call void @zset(%struct.zahl* noundef %44, %struct.zahl* noundef %45)
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %do.body68
  br label %do.end73

do.end73:                                         ; preds = %if.end72
  %46 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %47 = load %struct.zahl*, %struct.zahl** %c.addr, align 8
  %48 = load i64, i64* %n, align 8
  %call74 = call i32 bitcast (i32 (...)* @zsub_impl to i32 (%struct.zahl*, %struct.zahl*, i64)*)(%struct.zahl* noundef %46, %struct.zahl* noundef %47, i64 noundef %48)
  br label %if.end75

if.end75:                                         ; preds = %do.end73, %do.end65
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end48
  %49 = load i32, i32* %magcmp, align 4
  %50 = load %struct.zahl*, %struct.zahl** %a.addr, align 8
  %sign77 = getelementptr inbounds %struct.zahl, %struct.zahl* %50, i32 0, i32 0
  store i32 %49, i32* %sign77, align 8
  br label %return

return:                                           ; preds = %if.end76, %if.then30, %if.then11, %if.then
  ret void
}

declare i32 @zzero(%struct.zahl* noundef) #1

declare void @zabs(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zneg(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zcmpmag(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare void @zset(%struct.zahl* noundef, %struct.zahl* noundef) #1

declare i32 @zsub_impl(...) #1

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
