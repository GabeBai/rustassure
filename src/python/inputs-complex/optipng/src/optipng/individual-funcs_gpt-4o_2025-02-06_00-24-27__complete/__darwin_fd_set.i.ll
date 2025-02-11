; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_fd_set.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/__darwin_fd_set.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.fd_set = type { [32 x i32] }

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @__darwin_fd_set(i32 noundef %_fd, %struct.fd_set* noundef %_p) #0 {
entry:
  %_fd.addr = alloca i32, align 4
  %_p.addr = alloca %struct.fd_set*, align 8
  store i32 %_fd, i32* %_fd.addr, align 4
  store %struct.fd_set* %_p, %struct.fd_set** %_p.addr, align 8
  %0 = load i32, i32* %_fd.addr, align 4
  %1 = load %struct.fd_set*, %struct.fd_set** %_p.addr, align 8
  %2 = bitcast %struct.fd_set* %1 to i8*
  %call = call i32 bitcast (i32 (...)* @__darwin_check_fd_set to i32 (i32, i8*)*)(i32 noundef %0, i8* noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %_fd.addr, align 4
  %conv = sext i32 %3 to i64
  %rem = urem i64 %conv, 32
  %shl = shl i64 1, %rem
  %conv1 = trunc i64 %shl to i32
  %4 = load %struct.fd_set*, %struct.fd_set** %_p.addr, align 8
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %4, i32 0, i32 0
  %5 = load i32, i32* %_fd.addr, align 4
  %conv2 = sext i32 %5 to i64
  %div = udiv i64 %conv2, 32
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %fds_bits, i64 0, i64 %div
  %6 = load i32, i32* %arrayidx, align 4
  %or = or i32 %6, %conv1
  store i32 %or, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @__darwin_check_fd_set(...) #1

attributes #0 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
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
