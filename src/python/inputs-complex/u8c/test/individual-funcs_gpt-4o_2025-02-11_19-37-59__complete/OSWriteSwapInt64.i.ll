; ModuleID = 'inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/OSWriteSwapInt64.i.bc'
source_filename = "inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59/OSWriteSwapInt64.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._OSUnalignedU64 = type { i64 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @OSWriteSwapInt64(i8* noundef %_base, i64 noundef %_offset, i64 noundef %_data) #0 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  %_data.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  store i64 %_offset, i64* %_offset.addr, align 8
  store i64 %_data, i64* %_data.addr, align 8
  %0 = load i64, i64* %_data.addr, align 8
  %call = call i32 bitcast (i32 (...)* @_OSSwapInt64 to i32 (i64)*)(i64 noundef %0)
  %conv = sext i32 %call to i64
  %1 = load i8*, i8** %_base.addr, align 8
  %2 = ptrtoint i8* %1 to i64
  %3 = load i64, i64* %_offset.addr, align 8
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to %struct._OSUnalignedU64*
  %__val = getelementptr inbounds %struct._OSUnalignedU64, %struct._OSUnalignedU64* %4, i32 0, i32 0
  store volatile i64 %conv, i64* %__val, align 1
  ret void
}

declare i32 @_OSSwapInt64(...) #1

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
