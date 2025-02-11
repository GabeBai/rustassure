; ModuleID = 'inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memmoveb.i.bc'
source_filename = "inputs-complex/libzahl/src/individual-funcs_gpt-3.5-turbo_2025-02-04_16-19-41/libzahl_memmoveb.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @libzahl_memmoveb(i64* noundef %d, i64* noundef %s, i64 noundef %n) #0 {
entry:
  %d.addr = alloca i64*, align 8
  %s.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %d, i64** %d.addr, align 8
  store i64* %s, i64** %s.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  switch i64 %0, label %sw.default [
    i64 20, label %sw.bb
    i64 19, label %sw.bb2
    i64 18, label %sw.bb5
    i64 17, label %sw.bb8
    i64 16, label %sw.bb11
    i64 15, label %sw.bb14
    i64 14, label %sw.bb17
    i64 13, label %sw.bb20
    i64 12, label %sw.bb23
    i64 11, label %sw.bb26
    i64 10, label %sw.bb29
    i64 9, label %sw.bb32
    i64 8, label %sw.bb35
    i64 7, label %sw.bb38
    i64 6, label %sw.bb41
    i64 5, label %sw.bb44
    i64 4, label %sw.bb47
    i64 3, label %sw.bb50
    i64 2, label %sw.bb53
    i64 1, label %sw.bb56
    i64 0, label %sw.bb59
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64*, i64** %s.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 19
  %2 = load i64, i64* %arrayidx, align 8
  %3 = load i64*, i64** %d.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 19
  store i64 %2, i64* %arrayidx1, align 8
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb
  %4 = load i64*, i64** %s.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %4, i64 18
  %5 = load i64, i64* %arrayidx3, align 8
  %6 = load i64*, i64** %d.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %6, i64 18
  store i64 %5, i64* %arrayidx4, align 8
  br label %sw.bb5

sw.bb5:                                           ; preds = %entry, %sw.bb2
  %7 = load i64*, i64** %s.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %7, i64 17
  %8 = load i64, i64* %arrayidx6, align 8
  %9 = load i64*, i64** %d.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %9, i64 17
  store i64 %8, i64* %arrayidx7, align 8
  br label %sw.bb8

sw.bb8:                                           ; preds = %entry, %sw.bb5
  %10 = load i64*, i64** %s.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %10, i64 16
  %11 = load i64, i64* %arrayidx9, align 8
  %12 = load i64*, i64** %d.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %12, i64 16
  store i64 %11, i64* %arrayidx10, align 8
  br label %sw.bb11

sw.bb11:                                          ; preds = %entry, %sw.bb8
  %13 = load i64*, i64** %s.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %13, i64 15
  %14 = load i64, i64* %arrayidx12, align 8
  %15 = load i64*, i64** %d.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %15, i64 15
  store i64 %14, i64* %arrayidx13, align 8
  br label %sw.bb14

sw.bb14:                                          ; preds = %entry, %sw.bb11
  %16 = load i64*, i64** %s.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %16, i64 14
  %17 = load i64, i64* %arrayidx15, align 8
  %18 = load i64*, i64** %d.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %18, i64 14
  store i64 %17, i64* %arrayidx16, align 8
  br label %sw.bb17

sw.bb17:                                          ; preds = %entry, %sw.bb14
  %19 = load i64*, i64** %s.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %19, i64 13
  %20 = load i64, i64* %arrayidx18, align 8
  %21 = load i64*, i64** %d.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %21, i64 13
  store i64 %20, i64* %arrayidx19, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %entry, %sw.bb17
  %22 = load i64*, i64** %s.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, i64* %22, i64 12
  %23 = load i64, i64* %arrayidx21, align 8
  %24 = load i64*, i64** %d.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %24, i64 12
  store i64 %23, i64* %arrayidx22, align 8
  br label %sw.bb23

sw.bb23:                                          ; preds = %entry, %sw.bb20
  %25 = load i64*, i64** %s.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %25, i64 11
  %26 = load i64, i64* %arrayidx24, align 8
  %27 = load i64*, i64** %d.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %27, i64 11
  store i64 %26, i64* %arrayidx25, align 8
  br label %sw.bb26

sw.bb26:                                          ; preds = %entry, %sw.bb23
  %28 = load i64*, i64** %s.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %28, i64 10
  %29 = load i64, i64* %arrayidx27, align 8
  %30 = load i64*, i64** %d.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %30, i64 10
  store i64 %29, i64* %arrayidx28, align 8
  br label %sw.bb29

sw.bb29:                                          ; preds = %entry, %sw.bb26
  %31 = load i64*, i64** %s.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, i64* %31, i64 9
  %32 = load i64, i64* %arrayidx30, align 8
  %33 = load i64*, i64** %d.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %33, i64 9
  store i64 %32, i64* %arrayidx31, align 8
  br label %sw.bb32

sw.bb32:                                          ; preds = %entry, %sw.bb29
  %34 = load i64*, i64** %s.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, i64* %34, i64 8
  %35 = load i64, i64* %arrayidx33, align 8
  %36 = load i64*, i64** %d.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, i64* %36, i64 8
  store i64 %35, i64* %arrayidx34, align 8
  br label %sw.bb35

sw.bb35:                                          ; preds = %entry, %sw.bb32
  %37 = load i64*, i64** %s.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, i64* %37, i64 7
  %38 = load i64, i64* %arrayidx36, align 8
  %39 = load i64*, i64** %d.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, i64* %39, i64 7
  store i64 %38, i64* %arrayidx37, align 8
  br label %sw.bb38

sw.bb38:                                          ; preds = %entry, %sw.bb35
  %40 = load i64*, i64** %s.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, i64* %40, i64 6
  %41 = load i64, i64* %arrayidx39, align 8
  %42 = load i64*, i64** %d.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, i64* %42, i64 6
  store i64 %41, i64* %arrayidx40, align 8
  br label %sw.bb41

sw.bb41:                                          ; preds = %entry, %sw.bb38
  %43 = load i64*, i64** %s.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, i64* %43, i64 5
  %44 = load i64, i64* %arrayidx42, align 8
  %45 = load i64*, i64** %d.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, i64* %45, i64 5
  store i64 %44, i64* %arrayidx43, align 8
  br label %sw.bb44

sw.bb44:                                          ; preds = %entry, %sw.bb41
  %46 = load i64*, i64** %s.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, i64* %46, i64 4
  %47 = load i64, i64* %arrayidx45, align 8
  %48 = load i64*, i64** %d.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, i64* %48, i64 4
  store i64 %47, i64* %arrayidx46, align 8
  br label %sw.bb47

sw.bb47:                                          ; preds = %entry, %sw.bb44
  %49 = load i64*, i64** %s.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, i64* %49, i64 3
  %50 = load i64, i64* %arrayidx48, align 8
  %51 = load i64*, i64** %d.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, i64* %51, i64 3
  store i64 %50, i64* %arrayidx49, align 8
  br label %sw.bb50

sw.bb50:                                          ; preds = %entry, %sw.bb47
  %52 = load i64*, i64** %s.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %52, i64 2
  %53 = load i64, i64* %arrayidx51, align 8
  %54 = load i64*, i64** %d.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, i64* %54, i64 2
  store i64 %53, i64* %arrayidx52, align 8
  br label %sw.bb53

sw.bb53:                                          ; preds = %entry, %sw.bb50
  %55 = load i64*, i64** %s.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, i64* %55, i64 1
  %56 = load i64, i64* %arrayidx54, align 8
  %57 = load i64*, i64** %d.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, i64* %57, i64 1
  store i64 %56, i64* %arrayidx55, align 8
  br label %sw.bb56

sw.bb56:                                          ; preds = %entry, %sw.bb53
  %58 = load i64*, i64** %s.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, i64* %58, i64 0
  %59 = load i64, i64* %arrayidx57, align 8
  %60 = load i64*, i64** %d.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, i64* %60, i64 0
  store i64 %59, i64* %arrayidx58, align 8
  br label %sw.bb59

sw.bb59:                                          ; preds = %entry, %sw.bb56
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %61 = load i64, i64* %n.addr, align 8
  %add = add nsw i64 %61, 3
  %and = and i64 %add, -4
  store i64 %and, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.default
  %62 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %62, 4
  store i64 %sub, i64* %i, align 8
  %cmp = icmp sge i64 %sub, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load i64*, i64** %s.addr, align 8
  %64 = load i64, i64* %i, align 8
  %add60 = add nsw i64 %64, 3
  %arrayidx61 = getelementptr inbounds i64, i64* %63, i64 %add60
  %65 = load i64, i64* %arrayidx61, align 8
  %66 = load i64*, i64** %d.addr, align 8
  %67 = load i64, i64* %i, align 8
  %add62 = add nsw i64 %67, 3
  %arrayidx63 = getelementptr inbounds i64, i64* %66, i64 %add62
  store i64 %65, i64* %arrayidx63, align 8
  %68 = load i64*, i64** %s.addr, align 8
  %69 = load i64, i64* %i, align 8
  %add64 = add nsw i64 %69, 2
  %arrayidx65 = getelementptr inbounds i64, i64* %68, i64 %add64
  %70 = load i64, i64* %arrayidx65, align 8
  %71 = load i64*, i64** %d.addr, align 8
  %72 = load i64, i64* %i, align 8
  %add66 = add nsw i64 %72, 2
  %arrayidx67 = getelementptr inbounds i64, i64* %71, i64 %add66
  store i64 %70, i64* %arrayidx67, align 8
  %73 = load i64*, i64** %s.addr, align 8
  %74 = load i64, i64* %i, align 8
  %add68 = add nsw i64 %74, 1
  %arrayidx69 = getelementptr inbounds i64, i64* %73, i64 %add68
  %75 = load i64, i64* %arrayidx69, align 8
  %76 = load i64*, i64** %d.addr, align 8
  %77 = load i64, i64* %i, align 8
  %add70 = add nsw i64 %77, 1
  %arrayidx71 = getelementptr inbounds i64, i64* %76, i64 %add70
  store i64 %75, i64* %arrayidx71, align 8
  %78 = load i64*, i64** %s.addr, align 8
  %79 = load i64, i64* %i, align 8
  %add72 = add nsw i64 %79, 0
  %arrayidx73 = getelementptr inbounds i64, i64* %78, i64 %add72
  %80 = load i64, i64* %arrayidx73, align 8
  %81 = load i64*, i64** %d.addr, align 8
  %82 = load i64, i64* %i, align 8
  %add74 = add nsw i64 %82, 0
  %arrayidx75 = getelementptr inbounds i64, i64* %81, i64 %add74
  store i64 %80, i64* %arrayidx75, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %sw.bb59
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
