; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_printf.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/app_printf.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@start_of_line = global i32 0, align 4
@con_file = global %struct.__sFILE* null, align 8
@log_file = global %struct.__sFILE* null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @app_printf(i8* noundef %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %arg_ptr = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load i8*, i8** %fmt.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end19

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %fmt.addr, align 8
  %3 = load i8*, i8** %fmt.addr, align 8
  %call = call i64 @strlen(i8* noundef %3)
  %sub = sub i64 %call, 1
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 %sub
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 10
  %5 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i32 1, i32 0
  store i32 %cond, i32* @start_of_line, align 4
  %6 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %cmp6 = icmp ne %struct.__sFILE* %6, null
  br i1 %cmp6, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  %arg_ptr9 = bitcast i8** %arg_ptr to i8*
  call void @llvm.va_start(i8* %arg_ptr9)
  %7 = load %struct.__sFILE*, %struct.__sFILE** @con_file, align 8
  %8 = load i8*, i8** %fmt.addr, align 8
  %9 = load i8*, i8** %arg_ptr, align 8
  %call10 = call i32 @vfprintf(%struct.__sFILE* noundef %7, i8* noundef %8, i8* noundef %9)
  %arg_ptr11 = bitcast i8** %arg_ptr to i8*
  call void @llvm.va_end(i8* %arg_ptr11)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end
  %10 = load %struct.__sFILE*, %struct.__sFILE** @log_file, align 8
  %cmp13 = icmp ne %struct.__sFILE* %10, null
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end12
  %arg_ptr16 = bitcast i8** %arg_ptr to i8*
  call void @llvm.va_start(i8* %arg_ptr16)
  %11 = load %struct.__sFILE*, %struct.__sFILE** @log_file, align 8
  %12 = load i8*, i8** %fmt.addr, align 8
  %13 = load i8*, i8** %arg_ptr, align 8
  %call17 = call i32 @vfprintf(%struct.__sFILE* noundef %11, i8* noundef %12, i8* noundef %13)
  %arg_ptr18 = bitcast i8** %arg_ptr to i8*
  call void @llvm.va_end(i8* %arg_ptr18)
  br label %if.end19

if.end19:                                         ; preds = %if.then, %if.then15, %if.end12
  ret void
}

declare i64 @strlen(i8* noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare i32 @vfprintf(%struct.__sFILE* noundef, i8* noundef, i8* noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nosync nounwind willreturn }

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
