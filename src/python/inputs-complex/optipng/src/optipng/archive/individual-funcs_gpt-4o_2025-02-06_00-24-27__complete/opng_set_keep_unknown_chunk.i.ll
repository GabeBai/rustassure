; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_set_keep_unknown_chunk.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/opng_set_keep_unknown_chunk.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.png_struct_def = type opaque

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @opng_set_keep_unknown_chunk(%struct.png_struct_def* noundef %png_ptr, i32 noundef %keep, i8* noundef %chunk_type) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %keep.addr = alloca i32, align 4
  %chunk_type.addr = alloca i8*, align 8
  %chunk_name = alloca [5 x i8], align 1
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %keep, i32* %keep.addr, align 4
  store i8* %chunk_type, i8** %chunk_type.addr, align 8
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %chunk_name, i64 0, i64 0
  %0 = load i8*, i8** %chunk_type.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arraydecay, i8* align 1 %0, i64 4, i1 false)
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %chunk_name, i64 0, i64 4
  store i8 0, i8* %arrayidx, align 1
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %chunk_name, i64 0, i64 0
  %call = call i32 @png_handle_as_unknown(%struct.png_struct_def* noundef %1, i8* noundef %arraydecay1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %3 = load i32, i32* %keep.addr, align 4
  %arraydecay2 = getelementptr inbounds [5 x i8], [5 x i8]* %chunk_name, i64 0, i64 0
  call void @png_set_keep_unknown_chunks(%struct.png_struct_def* noundef %2, i32 noundef %3, i8* noundef %arraydecay2, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @png_handle_as_unknown(%struct.png_struct_def* noundef, i8* noundef) #2

declare void @png_set_keep_unknown_chunks(%struct.png_struct_def* noundef, i32 noundef, i8* noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
