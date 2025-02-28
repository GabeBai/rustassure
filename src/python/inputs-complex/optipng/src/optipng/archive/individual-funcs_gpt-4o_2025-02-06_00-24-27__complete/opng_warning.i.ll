; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_warning.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_warning.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type opaque
%struct.opng_process_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@read_ptr = global %struct.png_struct_def* null, align 8
@process = global %struct.opng_process_struct zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_warning(%struct.png_struct_def* noundef %png_ptr, i8* noundef %msg) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %msg.addr = alloca i8*, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %or = or i32 %2, 8448
  store i32 %or, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %msg.addr, align 8
  %call = call i32 bitcast (i32 (...)* @opng_print_warning to i32 (i8*)*)(i8* noundef %3)
  ret void
}

declare i32 @opng_print_warning(...) #1

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
