; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/main.i.bc'
source_filename = "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/main.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [63 x i8] c"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@alnum = constant i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"-._~\00", align 1
@unreserved = constant i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"!$&'()*+,;=\00", align 1
@subdelim = constant i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"+-.\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c":/?#[]@\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c":@/%\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"abcdefABCDEF\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"/?:@%\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c":%\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"abcdefABCDEF:\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
entry:
  %call = call i32 bitcast (i32 (...)* @fill to i32 (i32, i8*, i8*)*)(i32 noundef 1, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %call1 = call i32 bitcast (i32 (...)* @fill to i32 (i32, i8*, i8*)*)(i32 noundef 2, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %call2 = call i32 bitcast (i32 (...)* @fill to i32 (i32, i8*, i8*)*)(i32 noundef 4, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %call3 = call i32 bitcast (i32 (...)* @fill to i32 (i32, i8*, i8*)*)(i32 noundef 8, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %call4 = call i32 bitcast (i32 (...)* @fill to i32 (i32, i8*, i8*)*)(i32 noundef 16, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %call5 = call i32 bitcast (i32 (...)* @fill to i32 (i32, i8*, i8*)*)(i32 noundef 16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %call6 = call i32 bitcast (i32 (...)* @fill to i32 (i32, i8*, i8*)*)(i32 noundef 32, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %call7 = call i32 bitcast (i32 (...)* @fill to i32 (i32, i8*, i8*)*)(i32 noundef 64, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %call8 = call i32 bitcast (i32 (...)* @fill to i32 (i32, i8*, i8*)*)(i32 noundef 64, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %call9 = call i32 bitcast (i32 (...)* @fill to i32 (i32, i8*, i8*)*)(i32 noundef 128, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %call10 = call i32 bitcast (i32 (...)* @fill to i32 (i32, i8*, i8*)*)(i32 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %call11 = call i32 bitcast (i32 (...)* @fill to i32 (i32, i8*, i8*)*)(i32 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %call12 = call i32 bitcast (i32 (...)* @print_table to i32 ()*)()
  ret i32 0
}

declare i32 @fill(...) #1

declare i32 @print_table(...) #1

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
