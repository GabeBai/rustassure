; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/OSWriteSwapInt16.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/OSWriteSwapInt16.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._OSUnalignedU16 = type { i16 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @OSWriteSwapInt16(i8* noundef %_base, i64 noundef %_offset, i16 noundef zeroext %_data) #0 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  %_data.addr = alloca i16, align 2
  store i8* %_base, i8** %_base.addr, align 8
  store i64 %_offset, i64* %_offset.addr, align 8
  store i16 %_data, i16* %_data.addr, align 2
  %0 = load i16, i16* %_data.addr, align 2
  %conv = zext i16 %0 to i32
  %call = call i32 bitcast (i32 (...)* @_OSSwapInt16 to i32 (i32)*)(i32 noundef %conv)
  %conv1 = trunc i32 %call to i16
  %1 = load i8*, i8** %_base.addr, align 8
  %2 = ptrtoint i8* %1 to i64
  %3 = load i64, i64* %_offset.addr, align 8
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to %struct._OSUnalignedU16*
  %__val = getelementptr inbounds %struct._OSUnalignedU16, %struct._OSUnalignedU16* %4, i32 0, i32 0
  store volatile i16 %conv1, i16* %__val, align 1
  ret void
}

declare i32 @_OSSwapInt16(...) #1

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
!9 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git dfb083149f45185bece93228f47a1ca85d4c12a0)"}
