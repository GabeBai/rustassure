; ModuleID = 'inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/parse_args.i.bc'
source_filename = "inputs-complex/optipng/src/optipng/individual-funcs_gpt-4o_2025-02-06_00-24-27/parse_args.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32 }

@options = global %struct.opng_options zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"fio\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@local_options = global %struct.anon zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"clobber\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"fix\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"np\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"preserve\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"simulate\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"snip\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"No argument allowed for option: %s\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"Multiple optimization levels are not permitted\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"Multiple interlace types are not permitted\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"zc\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"-zc\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"zm\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"-zm\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"zs\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"-zs\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"zw\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"-zw\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"Multiple window sizes are not permitted\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"-strip\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"Multiple output file names are not permitted\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"-out\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"Multiple output dir names are not permitted\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"-dir\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"Multiple log file names are not permitted\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"-log\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"Unrecognized option: %s\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"The option -out requires one input file\00", align 1
@.str.56 = private unnamed_addr constant [49 x i8] c"The options -out and -dir are mutually exclusive\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c".log\00", align 1
@.str.58 = private unnamed_addr constant [78 x i8] c"To prevent accidental data corruption, the log file name must end with \22.log\22\00", align 1
@operation = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @parse_args(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %arg = alloca i8*, align 8
  %opt = alloca [16 x i8], align 1
  %opt_len = alloca i64, align 8
  %xopt = alloca i8*, align 8
  %simple_opt = alloca i32, align 4
  %stop_switch = alloca i32, align 4
  %set = alloca i32, align 4
  %val = alloca i32, align 4
  %file_count = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.opng_options* @options to i8*), i8 0, i64 120, i1 false)
  store i32 -1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  store i32 0, i32* %file_count, align 4
  store i32 0, i32* %stop_switch, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %argv.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %arg, align 8
  %5 = load i32, i32* %stop_switch, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i8*, i8** %arg, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call = call i32 bitcast (i32 (...)* @scan_option to i32 (i8*, i8*, i64, i8**)*)(i8* noundef %6, i8* noundef %arraydecay, i64 noundef 16, i8** noundef %xopt)
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %7 = load i32, i32* %file_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %file_count, align 4
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call3 = call i64 @strlen(i8* noundef %arraydecay2)
  store i64 %call3, i64* %opt_len, align 8
  %8 = load i8**, i8*** %argv.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 %idxprom4
  store i8* null, i8** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %10 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %10 to i32
  %call7 = call i8* @strchr(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %conv)
  %cmp8 = icmp ne i8* %call7, null
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false14

land.lhs.true:                                    ; preds = %if.end
  %arrayidx10 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 1
  %11 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %11 to i32
  %call12 = call i32 @isdigit(i32 noundef %conv11) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then29, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %land.lhs.true, %if.end
  %arrayidx15 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %12 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %12 to i32
  %cmp17 = icmp eq i32 %conv16, 122
  br i1 %cmp17, label %land.lhs.true19, label %if.end35

land.lhs.true19:                                  ; preds = %lor.lhs.false14
  %arrayidx20 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 1
  %13 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %13 to i32
  %call22 = call i32 @isalpha(i32 noundef %conv21) #4
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true24, label %if.end35

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %arrayidx25 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 2
  %14 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %14 to i32
  %call27 = call i32 @isdigit(i32 noundef %conv26) #4
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end35

if.then29:                                        ; preds = %land.lhs.true24, %land.lhs.true
  %arraydecay30 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call31 = call i8* @opng_strpbrk_digit(i8* noundef %arraydecay30)
  %arraydecay32 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint i8* %call31 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %opt_len, align 8
  %15 = load i64, i64* %opt_len, align 8
  %arrayidx33 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 %15
  store i8 0, i8* %arrayidx33, align 1
  %16 = load i8*, i8** %arg, align 8
  %call34 = call i8* @opng_strpbrk_digit(i8* noundef %16)
  store i8* %call34, i8** %xopt, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %land.lhs.true24, %land.lhs.true19, %lor.lhs.false14
  store i32 1, i32* %simple_opt, align 4
  %arraydecay36 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call37 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef %arraydecay36)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end35
  store i32 1, i32* %stop_switch, align 4
  br label %if.end227

if.else:                                          ; preds = %if.end35
  %arraydecay41 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call42 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef %arraydecay41)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then50, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.else
  %arraydecay46 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %17 = load i64, i64* %opt_len, align 8
  %call47 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %arraydecay46, i64 noundef %17)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.else51

if.then50:                                        ; preds = %lor.lhs.false45, %if.else
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 0), align 4
  br label %if.end226

if.else51:                                        ; preds = %lor.lhs.false45
  %arraydecay52 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %18 = load i64, i64* %opt_len, align 8
  %call53 = call i32 @strncmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* noundef %arraydecay52, i64 noundef %18)
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then61, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.else51
  %arraydecay57 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %19 = load i64, i64* %opt_len, align 8
  %call58 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef %arraydecay57, i64 noundef %19)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.else62

if.then61:                                        ; preds = %lor.lhs.false56, %if.else51
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 0), align 8
  br label %if.end225

if.else62:                                        ; preds = %lor.lhs.false56
  %arraydecay63 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %20 = load i64, i64* %opt_len, align 8
  %call64 = call i32 @strncmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef %arraydecay63, i64 noundef %20)
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.else68

if.then67:                                        ; preds = %if.else62
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 1), align 4
  br label %if.end224

if.else68:                                        ; preds = %if.else62
  %arraydecay69 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call70 = call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* noundef %arraydecay69)
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.else68
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 2), align 8
  br label %if.end223

if.else74:                                        ; preds = %if.else68
  %arraydecay75 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %21 = load i64, i64* %opt_len, align 8
  %call76 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %arraydecay75, i64 noundef %21)
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %land.lhs.true79, label %if.else83

land.lhs.true79:                                  ; preds = %if.else74
  %22 = load i64, i64* %opt_len, align 8
  %cmp80 = icmp uge i64 %22, 2
  br i1 %cmp80, label %if.then82, label %if.else83

if.then82:                                        ; preds = %land.lhs.true79
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 3), align 4
  br label %if.end222

if.else83:                                        ; preds = %land.lhs.true79, %if.else74
  %arraydecay84 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %23 = load i64, i64* %opt_len, align 8
  %call85 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* noundef %arraydecay84, i64 noundef %23)
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %land.lhs.true88, label %if.else92

land.lhs.true88:                                  ; preds = %if.else83
  %24 = load i64, i64* %opt_len, align 8
  %cmp89 = icmp uge i64 %24, 2
  br i1 %cmp89, label %if.then91, label %if.else92

if.then91:                                        ; preds = %land.lhs.true88
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 4), align 8
  br label %if.end221

if.else92:                                        ; preds = %land.lhs.true88, %if.else83
  %arraydecay93 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %25 = load i64, i64* %opt_len, align 8
  %call94 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* noundef %arraydecay93, i64 noundef %25)
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %land.lhs.true97, label %if.else101

land.lhs.true97:                                  ; preds = %if.else92
  %26 = load i64, i64* %opt_len, align 8
  %cmp98 = icmp uge i64 %26, 2
  br i1 %cmp98, label %if.then100, label %if.else101

if.then100:                                       ; preds = %land.lhs.true97
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 5), align 4
  br label %if.end220

if.else101:                                       ; preds = %land.lhs.true97, %if.else92
  %arraydecay102 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call103 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* noundef %arraydecay102)
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %if.else101
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 14), align 4
  br label %if.end219

if.else107:                                       ; preds = %if.else101
  %arraydecay108 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call109 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* noundef %arraydecay108)
  %cmp110 = icmp eq i32 %call109, 0
  br i1 %cmp110, label %if.then112, label %if.else113

if.then112:                                       ; preds = %if.else107
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 15), align 8
  br label %if.end218

if.else113:                                       ; preds = %if.else107
  %arraydecay114 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call115 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %arraydecay114)
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then118, label %if.else119

if.then118:                                       ; preds = %if.else113
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 16), align 4
  br label %if.end217

if.else119:                                       ; preds = %if.else113
  %arraydecay120 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call121 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* noundef %arraydecay120)
  %cmp122 = icmp eq i32 %call121, 0
  br i1 %cmp122, label %if.then124, label %if.else125

if.then124:                                       ; preds = %if.else119
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 16), align 4
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 15), align 8
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 14), align 4
  br label %if.end216

if.else125:                                       ; preds = %if.else119
  %arraydecay126 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call127 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* noundef %arraydecay126)
  %cmp128 = icmp eq i32 %call127, 0
  br i1 %cmp128, label %if.then130, label %if.else131

if.then130:                                       ; preds = %if.else125
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 17), align 8
  br label %if.end215

if.else131:                                       ; preds = %if.else125
  %arraydecay132 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %27 = load i64, i64* %opt_len, align 8
  %call133 = call i32 @strncmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* noundef %arraydecay132, i64 noundef %27)
  %cmp134 = icmp eq i32 %call133, 0
  br i1 %cmp134, label %if.then136, label %if.else137

if.then136:                                       ; preds = %if.else131
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 6), align 8
  br label %if.end214

if.else137:                                       ; preds = %if.else131
  %arraydecay138 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %28 = load i64, i64* %opt_len, align 8
  %call139 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* noundef %arraydecay138, i64 noundef %28)
  %cmp140 = icmp eq i32 %call139, 0
  br i1 %cmp140, label %if.then150, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %if.else137
  %arraydecay143 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %29 = load i64, i64* %opt_len, align 8
  %call144 = call i32 @strncmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* noundef %arraydecay143, i64 noundef %29)
  %cmp145 = icmp eq i32 %call144, 0
  br i1 %cmp145, label %land.lhs.true147, label %if.else151

land.lhs.true147:                                 ; preds = %lor.lhs.false142
  %30 = load i64, i64* %opt_len, align 8
  %cmp148 = icmp uge i64 %30, 3
  br i1 %cmp148, label %if.then150, label %if.else151

if.then150:                                       ; preds = %land.lhs.true147, %if.else137
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 7), align 4
  br label %if.end213

if.else151:                                       ; preds = %land.lhs.true147, %lor.lhs.false142
  %arraydecay152 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %31 = load i64, i64* %opt_len, align 8
  %call153 = call i32 @strncmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* noundef %arraydecay152, i64 noundef %31)
  %cmp154 = icmp eq i32 %call153, 0
  br i1 %cmp154, label %land.lhs.true156, label %if.else160

land.lhs.true156:                                 ; preds = %if.else151
  %32 = load i64, i64* %opt_len, align 8
  %cmp157 = icmp uge i64 %32, 3
  br i1 %cmp157, label %if.then159, label %if.else160

if.then159:                                       ; preds = %land.lhs.true156
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 8), align 8
  br label %if.end212

if.else160:                                       ; preds = %land.lhs.true156, %if.else151
  %arraydecay161 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %33 = load i64, i64* %opt_len, align 8
  %call162 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* noundef %arraydecay161, i64 noundef %33)
  %cmp163 = icmp eq i32 %call162, 0
  br i1 %cmp163, label %land.lhs.true165, label %if.else169

land.lhs.true165:                                 ; preds = %if.else160
  %34 = load i64, i64* %opt_len, align 8
  %cmp166 = icmp uge i64 %34, 2
  br i1 %cmp166, label %if.then168, label %if.else169

if.then168:                                       ; preds = %land.lhs.true165
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  br label %if.end211

if.else169:                                       ; preds = %land.lhs.true165, %if.else160
  %arraydecay170 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call171 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* noundef %arraydecay170)
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %if.then174, label %if.else175

if.then174:                                       ; preds = %if.else169
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 9), align 4
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 1), align 4
  br label %if.end210

if.else175:                                       ; preds = %if.else169
  %arraydecay176 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %35 = load i64, i64* %opt_len, align 8
  %call177 = call i32 @strncmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* noundef %arraydecay176, i64 noundef %35)
  %cmp178 = icmp eq i32 %call177, 0
  br i1 %cmp178, label %land.lhs.true180, label %if.else184

land.lhs.true180:                                 ; preds = %if.else175
  %36 = load i64, i64* %opt_len, align 8
  %cmp181 = icmp uge i64 %36, 4
  br i1 %cmp181, label %if.then183, label %if.else184

if.then183:                                       ; preds = %land.lhs.true180
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 9), align 4
  br label %if.end209

if.else184:                                       ; preds = %land.lhs.true180, %if.else175
  %arraydecay185 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %37 = load i64, i64* %opt_len, align 8
  %call186 = call i32 @strncmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* noundef %arraydecay185, i64 noundef %37)
  %cmp187 = icmp eq i32 %call186, 0
  br i1 %cmp187, label %land.lhs.true189, label %if.else193

land.lhs.true189:                                 ; preds = %if.else184
  %38 = load i64, i64* %opt_len, align 8
  %cmp190 = icmp uge i64 %38, 4
  br i1 %cmp190, label %if.then192, label %if.else193

if.then192:                                       ; preds = %land.lhs.true189
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 1), align 4
  br label %if.end208

if.else193:                                       ; preds = %land.lhs.true189, %if.else184
  store i32 0, i32* %simple_opt, align 4
  %39 = load i8*, i8** %xopt, align 8
  %cmp194 = icmp eq i8* %39, null
  br i1 %cmp194, label %if.then196, label %if.end207

if.then196:                                       ; preds = %if.else193
  %40 = load i32, i32* %i, align 4
  %inc197 = add nsw i32 %40, 1
  store i32 %inc197, i32* %i, align 4
  %41 = load i32, i32* %argc.addr, align 4
  %cmp198 = icmp slt i32 %inc197, %41
  br i1 %cmp198, label %if.then200, label %if.else205

if.then200:                                       ; preds = %if.then196
  %42 = load i8**, i8*** %argv.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %43 to i64
  %arrayidx202 = getelementptr inbounds i8*, i8** %42, i64 %idxprom201
  %44 = load i8*, i8** %arrayidx202, align 8
  store i8* %44, i8** %xopt, align 8
  %45 = load i8**, i8*** %argv.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %46 to i64
  %arrayidx204 = getelementptr inbounds i8*, i8** %45, i64 %idxprom203
  store i8* null, i8** %arrayidx204, align 8
  br label %if.end206

if.else205:                                       ; preds = %if.then196
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), i8** %xopt, align 8
  br label %if.end206

if.end206:                                        ; preds = %if.else205, %if.then200
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %if.else193
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.then192
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.then183
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.then174
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %if.then168
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %if.then159
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %if.then150
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.then136
  br label %if.end215

if.end215:                                        ; preds = %if.end214, %if.then130
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.then124
  br label %if.end217

if.end217:                                        ; preds = %if.end216, %if.then118
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %if.then112
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.then106
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %if.then100
  br label %if.end221

if.end221:                                        ; preds = %if.end220, %if.then91
  br label %if.end222

if.end222:                                        ; preds = %if.end221, %if.then82
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %if.then73
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %if.then67
  br label %if.end225

if.end225:                                        ; preds = %if.end224, %if.then61
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %if.then50
  br label %if.end227

if.end227:                                        ; preds = %if.end226, %if.then40
  %47 = load i32, i32* %simple_opt, align 4
  %tobool228 = icmp ne i32 %47, 0
  br i1 %tobool228, label %if.then229, label %if.else235

if.then229:                                       ; preds = %if.end227
  %48 = load i8*, i8** %xopt, align 8
  %cmp230 = icmp ne i8* %48, null
  br i1 %cmp230, label %if.then232, label %if.end234

if.then232:                                       ; preds = %if.then229
  %49 = load i8*, i8** %arg, align 8
  %call233 = call i32 bitcast (i32 (...)* @error to i32 (i8*, i8*)*)(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0), i8* noundef %49)
  br label %if.end234

if.end234:                                        ; preds = %if.then232, %if.then229
  br label %if.end397

if.else235:                                       ; preds = %if.end227
  %arraydecay236 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call237 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8* noundef %arraydecay236)
  %cmp238 = icmp eq i32 %call237, 0
  br i1 %cmp238, label %if.then240, label %if.else252

if.then240:                                       ; preds = %if.else235
  %50 = load i8*, i8** %xopt, align 8
  %call241 = call i32 bitcast (i32 (...)* @check_num_option to i32 (i8*, i8*, i32, i32)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* noundef %50, i32 noundef 0, i32 noundef 2147483647)
  store i32 %call241, i32* %val, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  %cmp242 = icmp slt i32 %51, 0
  br i1 %cmp242, label %if.then244, label %if.else245

if.then244:                                       ; preds = %if.then240
  %52 = load i32, i32* %val, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  br label %if.end251

if.else245:                                       ; preds = %if.then240
  %53 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  %54 = load i32, i32* %val, align 4
  %cmp246 = icmp ne i32 %53, %54
  br i1 %cmp246, label %if.then248, label %if.end250

if.then248:                                       ; preds = %if.else245
  %call249 = call i32 bitcast (i32 (...)* @error to i32 (i8*)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0))
  br label %if.end250

if.end250:                                        ; preds = %if.then248, %if.else245
  br label %if.end251

if.end251:                                        ; preds = %if.end250, %if.then244
  br label %if.end396

if.else252:                                       ; preds = %if.else235
  %arraydecay253 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call254 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay253)
  %cmp255 = icmp eq i32 %call254, 0
  br i1 %cmp255, label %if.then257, label %if.else269

if.then257:                                       ; preds = %if.else252
  %55 = load i8*, i8** %xopt, align 8
  %call258 = call i32 bitcast (i32 (...)* @check_num_option to i32 (i8*, i8*, i32, i32)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* noundef %55, i32 noundef 0, i32 noundef 1)
  store i32 %call258, i32* %val, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  %cmp259 = icmp slt i32 %56, 0
  br i1 %cmp259, label %if.then261, label %if.else262

if.then261:                                       ; preds = %if.then257
  %57 = load i32, i32* %val, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  br label %if.end268

if.else262:                                       ; preds = %if.then257
  %58 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  %59 = load i32, i32* %val, align 4
  %cmp263 = icmp ne i32 %58, %59
  br i1 %cmp263, label %if.then265, label %if.end267

if.then265:                                       ; preds = %if.else262
  %call266 = call i32 bitcast (i32 (...)* @error to i32 (i8*)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0))
  br label %if.end267

if.end267:                                        ; preds = %if.then265, %if.else262
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %if.then261
  br label %if.end395

if.else269:                                       ; preds = %if.else252
  %arraydecay270 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call271 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8* noundef %arraydecay270)
  %cmp272 = icmp eq i32 %call271, 0
  br i1 %cmp272, label %if.then274, label %if.else276

if.then274:                                       ; preds = %if.else269
  %60 = load i8*, i8** %xopt, align 8
  %call275 = call i32 bitcast (i32 (...)* @check_rangeset_option to i32 (i8*, i8*, i32)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* noundef %60, i32 noundef 63)
  store i32 %call275, i32* %set, align 4
  %61 = load i32, i32* %set, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 22), align 4
  %or = or i32 %62, %61
  store i32 %or, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 22), align 4
  br label %if.end394

if.else276:                                       ; preds = %if.else269
  %arraydecay277 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call278 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* noundef %arraydecay277)
  %cmp279 = icmp eq i32 %call278, 0
  br i1 %cmp279, label %if.then281, label %if.else284

if.then281:                                       ; preds = %if.else276
  %63 = load i8*, i8** %xopt, align 8
  %call282 = call i32 bitcast (i32 (...)* @check_rangeset_option to i32 (i8*, i8*, i32)*)(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i8* noundef %63, i32 noundef 1022)
  store i32 %call282, i32* %set, align 4
  %64 = load i32, i32* %set, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 19), align 8
  %or283 = or i32 %65, %64
  store i32 %or283, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 19), align 8
  br label %if.end393

if.else284:                                       ; preds = %if.else276
  %arraydecay285 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call286 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* noundef %arraydecay285)
  %cmp287 = icmp eq i32 %call286, 0
  br i1 %cmp287, label %if.then289, label %if.else292

if.then289:                                       ; preds = %if.else284
  %66 = load i8*, i8** %xopt, align 8
  %call290 = call i32 bitcast (i32 (...)* @check_rangeset_option to i32 (i8*, i8*, i32)*)(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i8* noundef %66, i32 noundef 1022)
  store i32 %call290, i32* %set, align 4
  %67 = load i32, i32* %set, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 20), align 4
  %or291 = or i32 %68, %67
  store i32 %or291, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 20), align 4
  br label %if.end392

if.else292:                                       ; preds = %if.else284
  %arraydecay293 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call294 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* noundef %arraydecay293)
  %cmp295 = icmp eq i32 %call294, 0
  br i1 %cmp295, label %if.then297, label %if.else300

if.then297:                                       ; preds = %if.else292
  %69 = load i8*, i8** %xopt, align 8
  %call298 = call i32 bitcast (i32 (...)* @check_rangeset_option to i32 (i8*, i8*, i32)*)(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* noundef %69, i32 noundef 15)
  store i32 %call298, i32* %set, align 4
  %70 = load i32, i32* %set, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 21), align 8
  %or299 = or i32 %71, %70
  store i32 %or299, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 21), align 8
  br label %if.end391

if.else300:                                       ; preds = %if.else292
  %arraydecay301 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %call302 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* noundef %arraydecay301)
  %cmp303 = icmp eq i32 %call302, 0
  br i1 %cmp303, label %if.then305, label %if.else317

if.then305:                                       ; preds = %if.else300
  %72 = load i8*, i8** %xopt, align 8
  %call306 = call i32 bitcast (i32 (...)* @check_power2_option to i32 (i8*, i8*, i32, i32)*)(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i8* noundef %72, i32 noundef 8, i32 noundef 15)
  store i32 %call306, i32* %val, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  %cmp307 = icmp eq i32 %73, 0
  br i1 %cmp307, label %if.then309, label %if.else310

if.then309:                                       ; preds = %if.then305
  %74 = load i32, i32* %val, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  br label %if.end316

if.else310:                                       ; preds = %if.then305
  %75 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  %76 = load i32, i32* %val, align 4
  %cmp311 = icmp ne i32 %75, %76
  br i1 %cmp311, label %if.then313, label %if.end315

if.then313:                                       ; preds = %if.else310
  %call314 = call i32 bitcast (i32 (...)* @error to i32 (i8*)*)(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0))
  br label %if.end315

if.end315:                                        ; preds = %if.then313, %if.else310
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.then309
  br label %if.end390

if.else317:                                       ; preds = %if.else300
  %arraydecay318 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %77 = load i64, i64* %opt_len, align 8
  %call319 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i8* noundef %arraydecay318, i64 noundef %77)
  %cmp320 = icmp eq i32 %call319, 0
  br i1 %cmp320, label %land.lhs.true322, label %if.else327

land.lhs.true322:                                 ; preds = %if.else317
  %78 = load i64, i64* %opt_len, align 8
  %cmp323 = icmp uge i64 %78, 2
  br i1 %cmp323, label %if.then325, label %if.else327

if.then325:                                       ; preds = %land.lhs.true322
  %79 = load i8*, i8** %xopt, align 8
  %call326 = call i32 bitcast (i32 (...)* @check_obj_option to i32 (i8*, i8*)*)(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* noundef %79)
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 25), align 8
  br label %if.end389

if.else327:                                       ; preds = %land.lhs.true322, %if.else317
  %arraydecay328 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %80 = load i64, i64* %opt_len, align 8
  %call329 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef %arraydecay328, i64 noundef %80)
  %cmp330 = icmp eq i32 %call329, 0
  br i1 %cmp330, label %land.lhs.true332, label %if.else348

land.lhs.true332:                                 ; preds = %if.else327
  %81 = load i64, i64* %opt_len, align 8
  %cmp333 = icmp uge i64 %81, 2
  br i1 %cmp333, label %if.then335, label %if.else348

if.then335:                                       ; preds = %land.lhs.true332
  %82 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  %cmp336 = icmp ne i8* %82, null
  br i1 %cmp336, label %if.then338, label %if.end340

if.then338:                                       ; preds = %if.then335
  %call339 = call i32 bitcast (i32 (...)* @error to i32 (i8*)*)(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i64 0, i64 0))
  br label %if.end340

if.end340:                                        ; preds = %if.then338, %if.then335
  %83 = load i8*, i8** %xopt, align 8
  %arrayidx341 = getelementptr inbounds i8, i8* %83, i64 0
  %84 = load i8, i8* %arrayidx341, align 1
  %conv342 = sext i8 %84 to i32
  %cmp343 = icmp eq i32 %conv342, 0
  br i1 %cmp343, label %if.then345, label %if.end347

if.then345:                                       ; preds = %if.end340
  %call346 = call i32 bitcast (i32 (...)* @err_option_arg to i32 (i8*, i8*)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* noundef null)
  br label %if.end347

if.end347:                                        ; preds = %if.then345, %if.end340
  %85 = load i8*, i8** %xopt, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  br label %if.end388

if.else348:                                       ; preds = %land.lhs.true332, %if.else327
  %arraydecay349 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %86 = load i64, i64* %opt_len, align 8
  %call350 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* noundef %arraydecay349, i64 noundef %86)
  %cmp351 = icmp eq i32 %call350, 0
  br i1 %cmp351, label %if.then353, label %if.else366

if.then353:                                       ; preds = %if.else348
  %87 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %cmp354 = icmp ne i8* %87, null
  br i1 %cmp354, label %if.then356, label %if.end358

if.then356:                                       ; preds = %if.then353
  %call357 = call i32 bitcast (i32 (...)* @error to i32 (i8*)*)(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i64 0, i64 0))
  br label %if.end358

if.end358:                                        ; preds = %if.then356, %if.then353
  %88 = load i8*, i8** %xopt, align 8
  %arrayidx359 = getelementptr inbounds i8, i8* %88, i64 0
  %89 = load i8, i8* %arrayidx359, align 1
  %conv360 = sext i8 %89 to i32
  %cmp361 = icmp eq i32 %conv360, 0
  br i1 %cmp361, label %if.then363, label %if.end365

if.then363:                                       ; preds = %if.end358
  %call364 = call i32 bitcast (i32 (...)* @err_option_arg to i32 (i8*, i8*)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i8* noundef null)
  br label %if.end365

if.end365:                                        ; preds = %if.then363, %if.end358
  %90 = load i8*, i8** %xopt, align 8
  store i8* %90, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  br label %if.end387

if.else366:                                       ; preds = %if.else348
  %arraydecay367 = getelementptr inbounds [16 x i8], [16 x i8]* %opt, i64 0, i64 0
  %91 = load i64, i64* %opt_len, align 8
  %call368 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i8* noundef %arraydecay367, i64 noundef %91)
  %cmp369 = icmp eq i32 %call368, 0
  br i1 %cmp369, label %if.then371, label %if.else384

if.then371:                                       ; preds = %if.else366
  %92 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %cmp372 = icmp ne i8* %92, null
  br i1 %cmp372, label %if.then374, label %if.end376

if.then374:                                       ; preds = %if.then371
  %call375 = call i32 bitcast (i32 (...)* @error to i32 (i8*)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i64 0, i64 0))
  br label %if.end376

if.end376:                                        ; preds = %if.then374, %if.then371
  %93 = load i8*, i8** %xopt, align 8
  %arrayidx377 = getelementptr inbounds i8, i8* %93, i64 0
  %94 = load i8, i8* %arrayidx377, align 1
  %conv378 = sext i8 %94 to i32
  %cmp379 = icmp eq i32 %conv378, 0
  br i1 %cmp379, label %if.then381, label %if.end383

if.then381:                                       ; preds = %if.end376
  %call382 = call i32 bitcast (i32 (...)* @err_option_arg to i32 (i8*, i8*)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* noundef null)
  br label %if.end383

if.end383:                                        ; preds = %if.then381, %if.end376
  %95 = load i8*, i8** %xopt, align 8
  store i8* %95, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  br label %if.end386

if.else384:                                       ; preds = %if.else366
  %96 = load i8*, i8** %arg, align 8
  %call385 = call i32 bitcast (i32 (...)* @error to i32 (i8*, i8*)*)(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i64 0, i64 0), i8* noundef %96)
  br label %if.end386

if.end386:                                        ; preds = %if.else384, %if.end383
  br label %if.end387

if.end387:                                        ; preds = %if.end386, %if.end365
  br label %if.end388

if.end388:                                        ; preds = %if.end387, %if.end347
  br label %if.end389

if.end389:                                        ; preds = %if.end388, %if.then325
  br label %if.end390

if.end390:                                        ; preds = %if.end389, %if.end316
  br label %if.end391

if.end391:                                        ; preds = %if.end390, %if.then297
  br label %if.end392

if.end392:                                        ; preds = %if.end391, %if.then289
  br label %if.end393

if.end393:                                        ; preds = %if.end392, %if.then281
  br label %if.end394

if.end394:                                        ; preds = %if.end393, %if.then274
  br label %if.end395

if.end395:                                        ; preds = %if.end394, %if.end268
  br label %if.end396

if.end396:                                        ; preds = %if.end395, %if.end251
  br label %if.end397

if.end397:                                        ; preds = %if.end396, %if.end234
  br label %for.inc

for.inc:                                          ; preds = %if.end397, %if.then
  %97 = load i32, i32* %i, align 4
  %inc398 = add nsw i32 %97, 1
  store i32 %inc398, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %98 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  %cmp399 = icmp ne i8* %98, null
  br i1 %cmp399, label %if.then401, label %if.end412

if.then401:                                       ; preds = %for.end
  %99 = load i32, i32* %file_count, align 4
  %cmp402 = icmp ugt i32 %99, 1
  br i1 %cmp402, label %if.then404, label %if.end406

if.then404:                                       ; preds = %if.then401
  %call405 = call i32 bitcast (i32 (...)* @error to i32 (i8*)*)(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i64 0, i64 0))
  br label %if.end406

if.end406:                                        ; preds = %if.then404, %if.then401
  %100 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %cmp407 = icmp ne i8* %100, null
  br i1 %cmp407, label %if.then409, label %if.end411

if.then409:                                       ; preds = %if.end406
  %call410 = call i32 bitcast (i32 (...)* @error to i32 (i8*)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end411

if.end411:                                        ; preds = %if.then409, %if.end406
  br label %if.end412

if.end412:                                        ; preds = %if.end411, %for.end
  %101 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %cmp413 = icmp ne i8* %101, null
  br i1 %cmp413, label %if.then415, label %if.end423

if.then415:                                       ; preds = %if.end412
  %102 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 12), align 8
  %call416 = call i32 bitcast (i32 (...)* @opng_strtail to i32 (i8*, i32)*)(i8* noundef %102, i32 noundef 4)
  %call417 = call i32 bitcast (i32 (...)* @opng_strcasecmp to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i32 noundef %call416)
  %cmp418 = icmp ne i32 %call417, 0
  br i1 %cmp418, label %if.then420, label %if.end422

if.then420:                                       ; preds = %if.then415
  %call421 = call i32 bitcast (i32 (...)* @error to i32 (i8*)*)(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.58, i64 0, i64 0))
  br label %if.end422

if.end422:                                        ; preds = %if.then420, %if.then415
  br label %if.end423

if.end423:                                        ; preds = %if.end422, %if.end412
  %103 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 0), align 4
  %tobool424 = icmp ne i32 %103, 0
  br i1 %tobool424, label %if.then425, label %if.else426

if.then425:                                       ; preds = %if.end423
  store i32 1, i32* @operation, align 4
  br label %if.end436

if.else426:                                       ; preds = %if.end423
  %104 = load i32, i32* %file_count, align 4
  %cmp427 = icmp ne i32 %104, 0
  br i1 %cmp427, label %if.then429, label %if.else430

if.then429:                                       ; preds = %if.else426
  store i32 0, i32* @operation, align 4
  br label %if.end435

if.else430:                                       ; preds = %if.else426
  %105 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @local_options, i32 0, i32 1), align 4
  %tobool431 = icmp ne i32 %105, 0
  br i1 %tobool431, label %if.then432, label %if.else433

if.then432:                                       ; preds = %if.else430
  store i32 2, i32* @operation, align 4
  br label %if.end434

if.else433:                                       ; preds = %if.else430
  store i32 1, i32* @operation, align 4
  br label %if.end434

if.end434:                                        ; preds = %if.else433, %if.then432
  br label %if.end435

if.end435:                                        ; preds = %if.end434, %if.then429
  br label %if.end436

if.end436:                                        ; preds = %if.end435, %if.then425
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @scan_option(...) #2

declare i64 @strlen(i8* noundef) #2

declare i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @isdigit(i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @isalpha(i32 noundef) #3

declare i8* @opng_strpbrk_digit(i8* noundef) #2

declare i32 @strcmp(i8* noundef, i8* noundef) #2

declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

declare i32 @error(...) #2

declare i32 @check_num_option(...) #2

declare i32 @check_rangeset_option(...) #2

declare i32 @check_power2_option(...) #2

declare i32 @check_obj_option(...) #2

declare i32 @err_option_arg(...) #2

declare i32 @opng_strcasecmp(...) #2

declare i32 @opng_strtail(...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind readonly willreturn }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
