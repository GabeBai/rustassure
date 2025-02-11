; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/error.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/error.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"** Error: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @error(i8* noundef %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %arg_ptr = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %arg_ptr1 = bitcast i8** %arg_ptr to i8*
  call void @llvm.va_start(i8* %arg_ptr1)
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %2 = load i8*, i8** %fmt.addr, align 8
  %3 = load i8*, i8** %arg_ptr, align 8
  %call2 = call i32 @vfprintf(%struct.__sFILE* noundef %1, i8* noundef %2, i8* noundef %3)
  %arg_ptr3 = bitcast i8** %arg_ptr to i8*
  call void @llvm.va_end(i8* %arg_ptr3)
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable
}

declare i32 @fprintf(%struct.__sFILE* noundef, i8* noundef, ...) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare i32 @vfprintf(%struct.__sFILE* noundef, i8* noundef, i8* noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn }

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
