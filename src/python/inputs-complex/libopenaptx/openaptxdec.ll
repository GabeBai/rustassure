; ModuleID = 'openaptxdec.c'
source_filename = "openaptxdec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.aptx_context = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"aptX decoder utility %d.%d.%d (using libopenaptx %d.%d.%d)\0A\00", align 1
@aptx_major = external dso_local local_unnamed_addr constant i32, align 4
@aptx_minor = external dso_local local_unnamed_addr constant i32, align 4
@aptx_patch = external dso_local local_unnamed_addr constant i32, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"This utility decodes aptX or aptX HD audio stream\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"from stdin to a raw 24 bit signed stereo on stdout\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"When input is damaged it tries to synchronize and recover\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Non-zero return value indicates that input was damaged\0A\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"and some bytes from input aptX audio stream were dropped\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"        %s [options]\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"        -h, --help   Display this help\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"        --hd         Decode from aptX HD\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Examples:\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"        %s < sample.aptx > sample.s24le\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"        %s --hd < sample.aptxhd > sample.s24le\0A\00", align 1
@.str.17 = private unnamed_addr constant [70 x i8] c"        %s < sample.aptx | play -t raw -r 44.1k -L -e s -b 24 -c 2 -\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"--hd\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"%s: Invalid option %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"%s: Cannot initialize aptX decoder\0A\00", align 1
@input_buffer = internal global [3072 x i8] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [81 x i8] c"%s: Input looks like start of aptX audio stream (not aptX HD), try without --hd\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"s\BE\FFs\BE\FF\00", align 1
@.str.24 = private unnamed_addr constant [67 x i8] c"%s: Input looks like start of aptX HD audio stream, try with --hd\0A\00", align 1
@.str.26 = private unnamed_addr constant [86 x i8] c"%s: Input looks like start of standard aptX audio stream, which is not supported yet\0A\00", align 1
@.str.27 = private unnamed_addr constant [69 x i8] c"%s: Input does not look like start of aptX nor aptX HD audio stream\0A\00", align 1
@output_buffer = internal global [18456 x i8] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [41 x i8] c"%s: aptX decoding failed, synchronizing\0A\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"%s: aptX synchronization successful, dropped %lu byte%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"%s: aptX synchronization successful\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"%s: aptX decoding failed\0A\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"%s: aptX decoding failed to read input data\0A\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"%s: aptX decoding failed to write decoded data\0A\00", align 1
@.str.36 = private unnamed_addr constant [75 x i8] c"%s: aptX decoding stopped in the middle of the sample, dropped %lu byte%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"%s: aptX synchronization failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %written = alloca i64, align 8
  %dropped = alloca i64, align 8
  %synced = alloca i32, align 4
  %0 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = bitcast i64* %dropped to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %2 = bitcast i32* %synced to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  %cmp269 = icmp sgt i32 %argc, 1
  br i1 %cmp269, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %argc to i64
  br label %for.body

for.cond:                                         ; preds = %if.else
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !3

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 %indvars.iv
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  %call = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #9
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call4 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %5 = load i32, i32* @aptx_major, align 4, !tbaa !9
  %6 = load i32, i32* @aptx_minor, align 4, !tbaa !9
  %7 = load i32, i32* @aptx_patch, align 4, !tbaa !9
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 noundef 0, i32 noundef 2, i32 noundef 1, i32 noundef %5, i32 noundef %6, i32 noundef %7) #10
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %9) #10
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %11) #10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc241 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %14) #10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc242 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %17) #10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %19) #10
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc243 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %22) #10
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %25 = load i8*, i8** %argv, align 8, !tbaa !5
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* noundef %25) #10
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc244 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %27) #10
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %29) #10
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %31) #10
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc245 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %34) #10
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc246 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %38 = load i8*, i8** %argv, align 8, !tbaa !5
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i8* noundef %38) #10
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc247 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %41 = load i8*, i8** %argv, align 8, !tbaa !5
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i8* noundef %41) #10
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc248 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %44 = load i8*, i8** %argv, align 8, !tbaa !5
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.17, i64 0, i64 0), i8* noundef %44) #10
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %call36 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #9
  %cmp37 = icmp eq i32 %call36, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp37, label %for.cond, label %if.else39

if.else39:                                        ; preds = %if.else
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %46 = load i8*, i8** %argv, align 8, !tbaa !5
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* noundef %46, i8* noundef %3) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond, %entry
  %hd.0.lcssa = phi i32 [ 0, %entry ], [ 1, %for.cond ]
  %call45 = tail call %struct.aptx_context* @aptx_init(i32 noundef %hd.0.lcssa) #8
  %tobool.not = icmp eq %struct.aptx_context* %call45, null
  br i1 %tobool.not, label %if.then46, label %if.end49

if.then46:                                        ; preds = %for.end
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %48 = load i8*, i8** %argv, align 8, !tbaa !5
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* noundef %48) #10
  br label %cleanup

if.end49:                                         ; preds = %for.end
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call50 = tail call i64 @fread(i8* noundef getelementptr inbounds ([3072 x i8], [3072 x i8]* @input_buffer, i64 0, i64 0), i64 noundef 1, i64 noundef 6, %struct._IO_FILE* noundef %49)
  %cmp51 = icmp ugt i64 %call50, 3
  %lhsv239 = load i32, i32* bitcast ([3072 x i8]* @input_buffer to i32*), align 16
  %.not240 = icmp eq i32 %lhsv239, -1085554869
  %or.cond249 = select i1 %cmp51, i1 %.not240, i1 false
  br i1 %or.cond249, label %if.then54, label %if.else60

if.then54:                                        ; preds = %if.end49
  br i1 %cmp269, label %if.then56, label %while.body.preheader

if.then56:                                        ; preds = %if.then54
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %51 = load i8*, i8** %argv, align 8, !tbaa !5
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.22, i64 0, i64 0), i8* noundef %51) #10
  br label %while.body.preheader

if.else60:                                        ; preds = %if.end49
  %cmp61 = icmp ugt i64 %call50, 5
  br i1 %cmp61, label %land.lhs.true62, label %if.else71

land.lhs.true62:                                  ; preds = %if.else60
  %bcmp = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([3072 x i8], [3072 x i8]* @input_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i64 6)
  %cmp64 = icmp eq i32 %bcmp, 0
  br i1 %cmp64, label %if.then65, label %if.else71

if.then65:                                        ; preds = %land.lhs.true62
  br i1 %cmp269, label %while.body.preheader, label %if.then67

if.then67:                                        ; preds = %if.then65
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %53 = load i8*, i8** %argv, align 8, !tbaa !5
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.24, i64 0, i64 0), i8* noundef %53) #10
  br label %while.body.preheader

if.else71:                                        ; preds = %land.lhs.true62, %if.else60
  %.not = icmp eq i32 %lhsv239, -1083457685
  %or.cond250 = select i1 %cmp51, i1 %.not, i1 false
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %55 = load i8*, i8** %argv, align 8, !tbaa !5
  br i1 %or.cond250, label %if.then76, label %if.end84

if.then76:                                        ; preds = %if.else71
  %call78 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.26, i64 0, i64 0), i8* noundef %55) #10
  br label %while.body.preheader

if.end84:                                         ; preds = %if.else71
  %call81 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.27, i64 0, i64 0), i8* noundef %55) #10
  %cmp85.not272 = icmp eq i64 %call50, 0
  br i1 %cmp85.not272, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.then56, %if.then54, %if.then76, %if.then65, %if.then67, %if.end84
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end158
  %syncing.0275 = phi i32 [ %syncing.3, %if.end158 ], [ 0, %while.body.preheader ]
  %length.0274 = phi i64 [ %length.1257, %if.end158 ], [ %call50, %while.body.preheader ]
  %ret.0273 = phi i32 [ %ret.4255, %if.end158 ], [ 0, %while.body.preheader ]
  %call86 = call i64 @aptx_decode_sync(%struct.aptx_context* noundef nonnull %call45, i8* noundef getelementptr inbounds ([3072 x i8], [3072 x i8]* @input_buffer, i64 0, i64 0), i64 noundef %length.0274, i8* noundef getelementptr inbounds ([18456 x i8], [18456 x i8]* @output_buffer, i64 0, i64 0), i64 noundef 18456, i64* noundef nonnull %written, i32* noundef nonnull %synced, i64* noundef nonnull %dropped) #8
  %56 = load i32, i32* %synced, align 4, !tbaa !9
  %tobool87.not = icmp eq i32 %56, 0
  br i1 %tobool87.not, label %if.then88, label %if.else105

if.then88:                                        ; preds = %while.body
  %tobool89.not = icmp eq i32 %syncing.0275, 0
  br i1 %tobool89.not, label %if.then90, label %if.end93

if.then90:                                        ; preds = %if.then88
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %58 = load i8*, i8** %argv, align 8, !tbaa !5
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i8* noundef %58) #10
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.then88
  %ret.1 = phi i32 [ %ret.0273, %if.then88 ], [ 1, %if.then90 ]
  %59 = load i64, i64* %dropped, align 8, !tbaa !11
  %tobool94.not = icmp eq i64 %59, 0
  br i1 %tobool94.not, label %if.end124, label %if.then101

if.then101:                                       ; preds = %if.end93
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %61 = load i8*, i8** %argv, align 8, !tbaa !5
  %cmp97.not = icmp eq i64 %59, 1
  %cond = select i1 %cmp97.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i8* noundef %61, i64 noundef %59, i8* noundef %cond) #10
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %63 = load i8*, i8** %argv, align 8, !tbaa !5
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i8* noundef %63) #10
  br label %if.end124

if.else105:                                       ; preds = %while.body
  %64 = load i64, i64* %dropped, align 8, !tbaa !11
  %tobool106.not = icmp eq i64 %64, 0
  %tobool118.not = icmp eq i32 %syncing.0275, 0
  br i1 %tobool106.not, label %if.else117, label %if.then107

if.then107:                                       ; preds = %if.else105
  br i1 %tobool118.not, label %if.then109, label %if.end112

if.then109:                                       ; preds = %if.then107
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %66 = load i8*, i8** %argv, align 8, !tbaa !5
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i8* noundef %66) #10
  %.pre = load i64, i64* %dropped, align 8, !tbaa !11
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.then107
  %67 = phi i64 [ %.pre, %if.then109 ], [ %64, %if.then107 ]
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %69 = load i8*, i8** %argv, align 8, !tbaa !5
  %cmp114.not = icmp eq i64 %67, 1
  %cond115 = select i1 %cmp114.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i8* noundef %69, i64 noundef %67, i8* noundef %cond115) #10
  br label %if.end124

if.else117:                                       ; preds = %if.else105
  br i1 %tobool118.not, label %if.end124, label %if.then119

if.then119:                                       ; preds = %if.else117
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %71 = load i8*, i8** %argv, align 8, !tbaa !5
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0), i8* noundef %71) #10
  br label %if.end124

if.end124:                                        ; preds = %if.end93, %if.end112, %if.then119, %if.else117, %if.then101
  %ret.3 = phi i32 [ 1, %if.end112 ], [ 1, %if.then119 ], [ %ret.0273, %if.else117 ], [ 1, %if.then101 ], [ %ret.1, %if.end93 ]
  %syncing.3 = phi i32 [ 0, %if.end112 ], [ 0, %if.then119 ], [ 0, %if.else117 ], [ 1, %if.then101 ], [ 1, %if.end93 ]
  %cmp125.not = icmp eq i64 %call86, %length.0274
  br i1 %cmp125.not, label %if.end129, label %while.end.sink.split

if.end129:                                        ; preds = %if.end124
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call130 = call i32 @feof(%struct._IO_FILE* noundef %72) #8
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then132, label %land.lhs.true143

if.then132:                                       ; preds = %if.end129
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call133 = call i64 @fread(i8* noundef getelementptr inbounds ([3072 x i8], [3072 x i8]* @input_buffer, i64 0, i64 0), i64 noundef 1, i64 noundef 3072, %struct._IO_FILE* noundef %73)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call134 = call i32 @ferror(%struct._IO_FILE* noundef %74) #8
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end141, label %if.then136

if.then136:                                       ; preds = %if.then132
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %76 = load i8*, i8** %argv, align 8, !tbaa !5
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %75, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i64 0, i64 0), i8* noundef %76) #10
  br label %land.lhs.true143

if.end141:                                        ; preds = %if.then132
  %cmp142 = icmp eq i64 %call133, 0
  br i1 %cmp142, label %land.lhs.true143, label %if.end149thread-pre-split

land.lhs.true143:                                 ; preds = %if.end129, %if.then136, %if.end141
  %ret.4256 = phi i32 [ %ret.3, %if.end141 ], [ %ret.3, %if.end129 ], [ 1, %if.then136 ]
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call144 = call i32 @ferror(%struct._IO_FILE* noundef %77) #8
  %tobool145 = icmp eq i32 %call144, 0
  %78 = load i64, i64* %written, align 8
  %cmp147 = icmp ugt i64 %78, 11
  %or.cond = select i1 %tobool145, i1 %cmp147, i1 false
  br i1 %or.cond, label %if.then148, label %if.end149

if.then148:                                       ; preds = %land.lhs.true143
  %sub = add i64 %78, -12
  store i64 %sub, i64* %written, align 8, !tbaa !11
  br label %if.end149

if.end149thread-pre-split:                        ; preds = %if.end141
  %.pr = load i64, i64* %written, align 8, !tbaa !11
  br label %if.end149

if.end149:                                        ; preds = %if.end149thread-pre-split, %if.then148, %land.lhs.true143
  %79 = phi i64 [ %.pr, %if.end149thread-pre-split ], [ %sub, %if.then148 ], [ %78, %land.lhs.true143 ]
  %length.1257 = phi i64 [ %call133, %if.end149thread-pre-split ], [ 0, %if.then148 ], [ 0, %land.lhs.true143 ]
  %ret.4255 = phi i32 [ %ret.3, %if.end149thread-pre-split ], [ %ret.4256, %if.then148 ], [ %ret.4256, %land.lhs.true143 ]
  %cmp150.not = icmp eq i64 %79, 0
  br i1 %cmp150.not, label %if.end158, label %if.then151

if.then151:                                       ; preds = %if.end149
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %call152 = call i64 @fwrite(i8* noundef getelementptr inbounds ([18456 x i8], [18456 x i8]* @output_buffer, i64 0, i64 0), i64 noundef 1, i64 noundef %79, %struct._IO_FILE* noundef %80)
  %81 = load i64, i64* %written, align 8, !tbaa !11
  %cmp153.not = icmp eq i64 %call152, %81
  br i1 %cmp153.not, label %if.end158, label %while.end.sink.split

if.end158:                                        ; preds = %if.then151, %if.end149
  %cmp85.not = icmp eq i64 %length.1257, 0
  br i1 %cmp85.not, label %while.end, label %while.body, !llvm.loop !13

while.end.sink.split:                             ; preds = %if.then151, %if.end124
  %.sink290 = phi i8* [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0), %if.end124 ], [ getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i64 0, i64 0), %if.then151 ]
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %83 = load i8*, i8** %argv, align 8, !tbaa !5
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %82, i8* noundef %.sink290, i8* noundef %83) #10
  br label %while.end

while.end:                                        ; preds = %if.end158, %while.end.sink.split, %if.end84
  %ret.5 = phi i32 [ 0, %if.end84 ], [ 1, %while.end.sink.split ], [ %ret.4255, %if.end158 ]
  %syncing.4 = phi i32 [ 0, %if.end84 ], [ %syncing.3, %while.end.sink.split ], [ %syncing.3, %if.end158 ]
  %call159 = call i64 @aptx_decode_sync_finish(%struct.aptx_context* noundef nonnull %call45) #8
  store i64 %call159, i64* %dropped, align 8, !tbaa !11
  %tobool160 = icmp eq i64 %call159, 0
  %tobool162 = icmp ne i32 %syncing.4, 0
  %or.cond184 = or i1 %tobool162, %tobool160
  br i1 %or.cond184, label %if.else168, label %if.then163

if.then163:                                       ; preds = %while.end
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %85 = load i8*, i8** %argv, align 8, !tbaa !5
  %cmp165.not = icmp eq i64 %call159, 1
  %cond166 = select i1 %cmp165.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %84, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.36, i64 0, i64 0), i8* noundef %85, i64 noundef %call159, i8* noundef %cond166) #10
  br label %if.end174

if.else168:                                       ; preds = %while.end
  br i1 %tobool162, label %if.then170, label %if.end174

if.then170:                                       ; preds = %if.else168
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %87 = load i8*, i8** %argv, align 8, !tbaa !5
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i64 0, i64 0), i8* noundef %87) #10
  br label %if.end174

if.end174:                                        ; preds = %if.else168, %if.then170, %if.then163
  %ret.6 = phi i32 [ 1, %if.then170 ], [ %ret.5, %if.else168 ], [ 1, %if.then163 ]
  call void @aptx_finish(%struct.aptx_context* noundef nonnull %call45) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end174, %if.then46, %if.else39, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.else39 ], [ %ret.6, %if.end174 ], [ 1, %if.then46 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

declare dso_local %struct.aptx_context* @aptx_init(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

declare dso_local i64 @aptx_decode_sync(%struct.aptx_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i32* noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @feof(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare dso_local noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

declare dso_local i64 @aptx_decode_sync_finish(%struct.aptx_context* noundef) local_unnamed_addr #4

declare dso_local void @aptx_finish(%struct.aptx_context* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git 1f81a77ddc1383c698b3afc5ce9a053c03ed731b)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = distinct !{!13, !4}
