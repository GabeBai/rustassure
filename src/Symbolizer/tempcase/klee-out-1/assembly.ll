; ModuleID = 'c.ll'
source_filename = "c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@_DefaultRuneLocale = external dso_local global %struct._RuneLocale, align 8
@free_function_call_count = global i32 0
@klee_sym_arg_name = private global [1 x i8] zeroinitializer, align 1
@klee_sym_arg_name.1 = private global [1 x i8] zeroinitializer, align 1
@0 = private unnamed_addr constant [26 x i8] c"SYM VALUE: arg_value_0 : \00", align 1
@1 = private unnamed_addr constant [26 x i8] c"SYM VALUE: arg_value_1 : \00", align 1
@2 = private unnamed_addr constant [24 x i8] c"SYM VALUE: ret_value : \00", align 1
@3 = private unnamed_addr constant [31 x i8] c"SYM VALUE: free_call_counts : \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c(i32 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 256
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %23

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %11, %10
  %24 = phi i32 [ 0, %10 ], [ %22, %11 ]
  ret i32 %24
}

declare void @klee_make_symbolic(i8*, i64, i8*)

declare void @klee_print_expr(i8*, ...)

define void @main() {
entry:
  %0 = alloca [100 x i32], align 4
  %1 = bitcast [100 x i32]* %0 to i8*
  call void @klee_make_symbolic(i8* %1, i64 400, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @klee_sym_arg_name, i32 0, i32 0))
  %2 = bitcast [100 x i32]* %0 to i32*
  %3 = load i32, i32* %2, align 4
  %4 = alloca [100 x i64], align 8
  %5 = bitcast [100 x i64]* %4 to i8*
  call void @klee_make_symbolic(i8* %5, i64 800, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @klee_sym_arg_name.1, i32 0, i32 0))
  %6 = bitcast [100 x i64]* %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @c(i32 %3, i64 %7)
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i32 %3)
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1, i32 0, i32 0), i64 %7)
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i32 %8)
  %oldVal = load i32, i32* @free_function_call_count, align 4
  call void (i8*, ...) @klee_print_expr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3, i32 0, i32 0), i32 %oldVal)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
