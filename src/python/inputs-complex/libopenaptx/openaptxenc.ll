; ModuleID = 'openaptxenc.c'
source_filename = "openaptxenc.c"
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
@.str.2 = private unnamed_addr constant [60 x i8] c"aptX encoder utility %d.%d.%d (using libopenaptx %d.%d.%d)\0A\00", align 1
@aptx_major = external dso_local local_unnamed_addr constant i32, align 4
@aptx_minor = external dso_local local_unnamed_addr constant i32, align 4
@aptx_patch = external dso_local local_unnamed_addr constant i32, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"This utility encodes a raw 24 bit signed stereo\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"samples from stdin to aptX or aptX HD on stdout\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"        %s [options]\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"        -h, --help   Display this help\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"        --hd         Encode to aptX HD\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Examples:\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"        %s < sample.s24le > sample.aptx\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"        %s --hd < sample.s24le > sample.aptxhd\0A\00", align 1
@.str.14 = private unnamed_addr constant [80 x i8] c"        sox sample.wav -t raw -r 44.1k -L -e s -b 24 -c 2 - | %s > sample.aptx\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"--hd\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"%s: Invalid option %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"%s: Cannot initialize aptX encoder\0A\00", align 1
@input_buffer = internal global [12288 x i8] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [45 x i8] c"%s: aptX encoding failed to read input data\0A\00", align 1
@output_buffer = internal global [3072 x i8] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [75 x i8] c"%s: aptX encoding stopped in the middle of the sample, dropped %lu byte%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"%s: aptX encoding failed to write encoded data\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %written = alloca i64, align 8
  %0 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %cmp134 = icmp sgt i32 %argc, 1
  br i1 %cmp134, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %argc to i64
  br label %for.body

for.cond:                                         ; preds = %if.else
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !3

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 %indvars.iv
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  %call = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call4 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #8
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %3 = load i32, i32* @aptx_major, align 4, !tbaa !9
  %4 = load i32, i32* @aptx_minor, align 4, !tbaa !9
  %5 = load i32, i32* @aptx_patch, align 4, !tbaa !9
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 noundef 0, i32 noundef 2, i32 noundef 1, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %7) #9
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %9) #9
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc125 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %12) #9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %15 = load i8*, i8** %argv, align 8, !tbaa !5
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* noundef %15) #9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc126 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %17) #9
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %19) #9
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %21) #9
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc127 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %24) #9
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc128 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %28 = load i8*, i8** %argv, align 8, !tbaa !5
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8* noundef %28) #9
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc129 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %31 = load i8*, i8** %argv, align 8, !tbaa !5
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i8* noundef %31) #9
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %fputc130 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %34 = load i8*, i8** %argv, align 8, !tbaa !5
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.14, i64 0, i64 0), i8* noundef %34) #9
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %call31 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #8
  %cmp32 = icmp eq i32 %call31, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp32, label %for.cond, label %if.else34

if.else34:                                        ; preds = %if.else
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %36 = load i8*, i8** %argv, align 8, !tbaa !5
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* noundef %36, i8* noundef %1) #9
  br label %cleanup

for.end:                                          ; preds = %for.cond, %entry
  %hd.0.lcssa = phi i32 [ 0, %entry ], [ 1, %for.cond ]
  %call40 = tail call %struct.aptx_context* @aptx_init(i32 noundef %hd.0.lcssa) #7
  %tobool.not = icmp eq %struct.aptx_context* %call40, null
  br i1 %tobool.not, label %if.then41, label %while.cond

if.then41:                                        ; preds = %for.end
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %38 = load i8*, i8** %argv, align 8, !tbaa !5
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i8* noundef %38) #9
  br label %cleanup

while.cond:                                       ; preds = %for.end, %if.end70
  %ret.0 = phi i32 [ %ret.2, %if.end70 ], [ 0, %for.end ]
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call45 = call i32 @feof(%struct._IO_FILE* noundef %39) #7
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call47 = call i64 @fread(i8* noundef getelementptr inbounds ([12288 x i8], [12288 x i8]* @input_buffer, i64 0, i64 0), i64 noundef 1, i64 noundef 12288, %struct._IO_FILE* noundef %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call48 = call i32 @ferror(%struct._IO_FILE* noundef %41) #7
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end53, label %if.then50

if.then50:                                        ; preds = %while.body
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %43 = load i8*, i8** %argv, align 8, !tbaa !5
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i8* noundef %43) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %while.body
  %ret.1 = phi i32 [ 1, %if.then50 ], [ %ret.0, %while.body ]
  %cmp54 = icmp eq i64 %call47, 0
  br i1 %cmp54, label %while.end, label %if.end56

if.end56:                                         ; preds = %if.end53
  %call57 = call i64 @aptx_encode(%struct.aptx_context* noundef nonnull %call40, i8* noundef getelementptr inbounds ([12288 x i8], [12288 x i8]* @input_buffer, i64 0, i64 0), i64 noundef %call47, i8* noundef getelementptr inbounds ([3072 x i8], [3072 x i8]* @output_buffer, i64 0, i64 0), i64 noundef 3072, i64* noundef nonnull %written) #7
  %cmp58.not = icmp eq i64 %call47, %call57
  br i1 %cmp58.not, label %if.end64, label %if.then59

if.then59:                                        ; preds = %if.end56
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %45 = load i8*, i8** %argv, align 8, !tbaa !5
  %sub = sub i64 %call47, %call57
  %cmp62.not = icmp eq i64 %sub, 1
  %cond = select i1 %cmp62.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i8* noundef %45, i64 noundef %sub, i8* noundef %cond) #9
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end56
  %ret.2 = phi i32 [ 1, %if.then59 ], [ %ret.1, %if.end56 ]
  %46 = load i64, i64* %written, align 8, !tbaa !11
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %call65 = call i64 @fwrite(i8* noundef getelementptr inbounds ([3072 x i8], [3072 x i8]* @output_buffer, i64 0, i64 0), i64 noundef 1, i64 noundef %46, %struct._IO_FILE* noundef %47)
  %48 = load i64, i64* %written, align 8, !tbaa !11
  %cmp66.not = icmp eq i64 %call65, %48
  br i1 %cmp66.not, label %if.end70, label %if.then67

if.then67:                                        ; preds = %if.end64
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %50 = load i8*, i8** %argv, align 8, !tbaa !5
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i64 0, i64 0), i8* noundef %50) #9
  br label %while.end

if.end70:                                         ; preds = %if.end64
  br i1 %cmp58.not, label %while.cond, label %while.end, !llvm.loop !13

while.end:                                        ; preds = %if.end70, %if.end53, %while.cond, %if.then67
  %ret.3 = phi i32 [ 1, %if.then67 ], [ %ret.0, %while.cond ], [ %ret.2, %if.end70 ], [ %ret.1, %if.end53 ]
  %call74 = call i32 @aptx_encode_finish(%struct.aptx_context* noundef nonnull %call40, i8* noundef getelementptr inbounds ([3072 x i8], [3072 x i8]* @output_buffer, i64 0, i64 0), i64 noundef 3072, i64* noundef nonnull %written) #7
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end83, label %if.then76

if.then76:                                        ; preds = %while.end
  %51 = load i64, i64* %written, align 8, !tbaa !11
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %call77 = call i64 @fwrite(i8* noundef getelementptr inbounds ([3072 x i8], [3072 x i8]* @output_buffer, i64 0, i64 0), i64 noundef 1, i64 noundef %51, %struct._IO_FILE* noundef %52)
  %53 = load i64, i64* %written, align 8, !tbaa !11
  %cmp78.not = icmp eq i64 %call77, %53
  br i1 %cmp78.not, label %if.end83, label %if.then79

if.then79:                                        ; preds = %if.then76
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %55 = load i8*, i8** %argv, align 8, !tbaa !5
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i64 0, i64 0), i8* noundef %55) #9
  br label %if.end83

if.end83:                                         ; preds = %if.then76, %if.then79, %while.end
  %ret.4 = phi i32 [ 1, %if.then79 ], [ %ret.3, %if.then76 ], [ %ret.3, %while.end ]
  call void @aptx_finish(%struct.aptx_context* noundef nonnull %call40) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then41, %if.else34, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.else34 ], [ %ret.4, %if.end83 ], [ 1, %if.then41 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
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
declare dso_local noundef i32 @feof(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare dso_local noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

declare dso_local i64 @aptx_encode(%struct.aptx_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

declare dso_local i32 @aptx_encode_finish(%struct.aptx_context* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #4

declare dso_local void @aptx_finish(%struct.aptx_context* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { cold }

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
