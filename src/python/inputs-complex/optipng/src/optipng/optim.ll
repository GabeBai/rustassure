; ModuleID = 'optim.c'
source_filename = "optim.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.opng_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_summary_struct = type { i32, i32, i32, i32 }
%struct.opng_engine_struct = type { i32 }
%struct.exception_context = type { [48 x i32]*, i32, %struct.anon }
%struct.anon = type { i8* }
%struct.opng_process_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opng_image_struct = type { i32, i32, i32, i32, i32, i32, i32, i8**, %struct.png_color_struct*, i32, %struct.png_color_16_struct*, %struct.png_color_16_struct, i16*, %struct.png_color_8_struct*, %struct.png_color_8_struct, i8*, i32, %struct.png_color_16_struct*, %struct.png_color_16_struct, %struct.png_unknown_chunk_t*, i32 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.opng_preset = type { i8*, i8*, i8*, i8* }
%struct.opng_ui = type { void (i8*, ...)*, void (i32)*, void (i64, i64)*, void (i8*)* }
%struct.opng_ulratio = type { i64, i64 }

@usr_printf = internal global void (i8*, ...)* null, align 8
@usr_print_cntrl = internal global void (i32)* null, align 8
@usr_progress = internal global void (i64, i64)* null, align 8
@usr_panic = internal global void (i8*)* null, align 8
@options = internal global %struct.opng_options zeroinitializer, align 8
@summary = internal global %struct.opng_summary_struct zeroinitializer, align 4
@engine = internal global %struct.opng_engine_struct zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c"The OptiPNG engine is not running\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"** Processing: %s\0A\00", align 1
@the_exception_context = global [1 x %struct.exception_context] zeroinitializer, align 8
@process = internal global %struct.opng_process_struct zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"** Status report\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%u file(s) have been processed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"%u multi-image file(s) have been snipped.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"%u error(s) have been encountered.\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"%u erroneous file(s) have been fixed.\0A\00", align 1
@image = internal global %struct.opng_image_struct zeroinitializer, align 8
@opng_optimize_impl.infile = internal global %struct.__sFILE* null, align 8
@opng_optimize_impl.outfile = internal global %struct.__sFILE* null, align 8
@opng_optimize_impl.infile_name_local = internal global i8* null, align 8
@opng_optimize_impl.outfile_name = internal global i8* null, align 8
@opng_optimize_impl.bakfile_name = internal global i8* null, align 8
@opng_optimize_impl.new_outfile = internal global i32 0, align 4
@opng_optimize_impl.has_backup = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Can't open the input file\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Mysterious error in opng_read_file\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Recoverable errors found in input.\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" Fixing...\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c" Rerun OptiPNG with -fix enabled.\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Previous error(s) not fixed\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"IDAT recoding is necessary, but is disabled by the user.\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Can't continue\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Digital signature found in input.\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c" Erasing...\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c" Rerun OptiPNG with -force enabled.\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Can't optimize digitally-signed files\00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"Conversion to PNG requires snipping. Rerun OptiPNG with -snip enabled.\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Incompatible input format\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Stripping metadata...\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"Can't create the output file (name too long)\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"Can't create backup file (name too long)\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"The output file exists. Rerun OptiPNG with -backup enabled.\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Can't overwrite the output file\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"fw\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"Can't back up the existing output file\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"Input IDAT size = %lu bytes\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Input file size = %lu bytes\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"\0A%s is already optimized.\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"\0ANo output: simulation mode.\0A\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"\0AOutput file: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Can't back up the output file\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"Can't back up the input file\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"Can't open the output file\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Can't reopen the input file\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"Can't reposition the input file\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"Mysterious error in opng_copy_file\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"Can't recover the original file from backup\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"Overwrote input with no temporary backup\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"Can't remove the broken output file\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"Can't remove the backup file\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"\0AOutput IDAT size = %lu bytes\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"\0AOutput file size = %lu bytes (\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"1.6.21\00", align 1
@read_ptr = internal global %struct.png_struct_def* null, align 8
@read_info_ptr = internal global %struct.png_info_def* null, align 8
@.str.54 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"Unrecognized image file format\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"APNG\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"APNG datastream\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"No format name from pngxtern\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"Can't get the correct file size\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"Importing %s\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c" (multi-image or animation)\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"; snipping...\00", align 1
@.str.64 = private unnamed_addr constant [110 x i8] c"Can't reliably reduce APNG file; disabling reductions.\0A(Did you want to -snip and optimize the first frame?)\0A\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"Reducing image to \00", align 1
@.str.66 = private unnamed_addr constant [52 x i8] c"Can't read the input file or unexpected end of file\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"PNG I/O must start with the first 8 bytes\00", align 1
@.str.68 = private unnamed_addr constant [52 x i8] c"Can't get the file-position indicator in input file\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"Incorrect info in png_ptr->io_state\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"Reading chunk header, expecting 8 bytes\00", align 1
@sig_IDAT = internal constant [4 x i8] c"IDAT", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"Incorrect I/O handler setup\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"Found IDAT with no rows\00", align 1
@.str.73 = private unnamed_addr constant [57 x i8] c"Failed allocation of image rows; unsafe libpng allocator\00", align 1
@sig_PLTE = internal constant [4 x i8] c"PLTE", align 1
@sig_tRNS = internal constant [4 x i8] c"tRNS", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"Reading chunk CRC, expecting 4 bytes\00", align 1
@sig_bKGD = internal constant [4 x i8] c"bKGD", align 1
@sig_hIST = internal constant [4 x i8] c"hIST", align 1
@sig_sBIT = internal constant [4 x i8] c"sBIT", align 1
@sig_dSIG = internal constant [4 x i8] c"dSIG", align 1
@sig_fdAT = internal constant [4 x i8] c"fdAT", align 1
@sig_acTL = internal constant [4 x i8] c"acTL", align 1
@sig_fcTL = internal constant [4 x i8] c"fcTL", align 1
@opng_print_image_info.type_channels = internal constant [8 x i32] [i32 1, i32 0, i32 3, i32 1, i32 2, i32 0, i32 4, i32 0], align 4
@.str.75 = private unnamed_addr constant [15 x i8] c"%lux%lu pixels\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"%dx%d bits/pixel\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"%d bits/pixel\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"1 bit/pixel\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"1 color\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"%d colors\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c" (%d transparent)\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c" in palette\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"+alpha\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"+transparency\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"No IDAT in input\00", align 1
@presets = internal constant [8 x %struct.opng_preset] [%struct.opng_preset { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0) }, %struct.opng_preset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0) }], align 8
@.str.90 = private unnamed_addr constant [29 x i8] c"Invalid iteration parameters\00", align 1
@.str.91 = private unnamed_addr constant [36 x i8] c"Iteration parameter(s) out of range\00", align 1
@.str.92 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"0-\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"0,5\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"8-9\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"1-9\00", align 1
@.str.99 = private unnamed_addr constant [27 x i8] c"Iterations not initialized\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"\0ATrying:\0A\00", align 1
@.str.101 = private unnamed_addr constant [36 x i8] c"  zc = %d  zm = %d  zs = %d  f = %d\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"\09\09IDAT too big\0A\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"\09\09IDAT size = %lu\0A\00", align 1
@.str.104 = private unnamed_addr constant [31 x i8] c"Inconsistent iteration counter\00", align 1
@.str.105 = private unnamed_addr constant [24 x i8] c"\0ASelecting parameters:\0A\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"\09\09IDAT size = %lu\00", align 1
@.str.107 = private unnamed_addr constant [49 x i8] c"  zc = *  zm = *  zs = *  f = *\09\09IDAT size > %s\0A\00", align 1
@idat_size_max_string = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), align 8
@.str.108 = private unnamed_addr constant [4 x i8] c"2GB\00", align 1
@.str.109 = private unnamed_addr constant [72 x i8] c"IDAT sizes larger than the maximum chunk size are currently unsupported\00", align 1
@.str.110 = private unnamed_addr constant [28 x i8] c"Invalid encoding parameters\00", align 1
@write_ptr = internal global %struct.png_struct_def* null, align 8
@write_info_ptr = internal global %struct.png_info_def* null, align 8
@filter_table = internal constant [6 x i32] [i32 8, i32 16, i32 32, i32 64, i32 128, i32 248], align 4
@.str.111 = private unnamed_addr constant [17 x i8] c"No info in image\00", align 1
@opng_write_data.allow_crt_chunk = internal global i32 0, align 4
@opng_write_data.crt_chunk_is_idat = internal global i32 0, align 4
@opng_write_data.crt_idat_offset = internal global i64 0, align 8
@opng_write_data.crt_idat_size = internal global i64 0, align 8
@opng_write_data.crt_idat_crc = internal global i32 0, align 4
@.str.112 = private unnamed_addr constant [40 x i8] c"Writing chunk header, expecting 8 bytes\00", align 1
@.str.113 = private unnamed_addr constant [37 x i8] c"Writing chunk CRC, expecting 4 bytes\00", align 1
@.str.114 = private unnamed_addr constant [36 x i8] c"Wrong guess of the output IDAT size\00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"Can't finalize IDAT\00", align 1
@.str.116 = private unnamed_addr constant [28 x i8] c"Can't write the output file\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"Data error\00", align 1
@sig_IEND = internal constant [4 x i8] c"IEND", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"Warning: %s\0A\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"no change\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"1 byte\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"%lu bytes\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c" increase\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c" decrease\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_initialize(%struct.opng_options* noundef %0, %struct.opng_ui* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opng_options*, align 8
  %5 = alloca %struct.opng_ui*, align 8
  store %struct.opng_options* %0, %struct.opng_options** %4, align 8
  store %struct.opng_ui* %1, %struct.opng_ui** %5, align 8
  %6 = load %struct.opng_ui*, %struct.opng_ui** %5, align 8
  %7 = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %6, i32 0, i32 0
  %8 = load void (i8*, ...)*, void (i8*, ...)** %7, align 8
  store void (i8*, ...)* %8, void (i8*, ...)** @usr_printf, align 8
  %9 = load %struct.opng_ui*, %struct.opng_ui** %5, align 8
  %10 = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %9, i32 0, i32 1
  %11 = load void (i32)*, void (i32)** %10, align 8
  store void (i32)* %11, void (i32)** @usr_print_cntrl, align 8
  %12 = load %struct.opng_ui*, %struct.opng_ui** %5, align 8
  %13 = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %12, i32 0, i32 2
  %14 = load void (i64, i64)*, void (i64, i64)** %13, align 8
  store void (i64, i64)* %14, void (i64, i64)** @usr_progress, align 8
  %15 = load %struct.opng_ui*, %struct.opng_ui** %5, align 8
  %16 = getelementptr inbounds %struct.opng_ui, %struct.opng_ui* %15, i32 0, i32 3
  %17 = load void (i8*)*, void (i8*)** %16, align 8
  store void (i8*)* %17, void (i8*)** @usr_panic, align 8
  %18 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %19 = icmp eq void (i8*, ...)* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load void (i32)*, void (i32)** @usr_print_cntrl, align 8
  %22 = icmp eq void (i32)* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load void (i64, i64)*, void (i64, i64)** @usr_progress, align 8
  %25 = icmp eq void (i64, i64)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  %28 = icmp eq void (i8*)* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %20, %2
  store i32 -1, i32* %3, align 4
  br label %37

30:                                               ; preds = %26
  %31 = load %struct.opng_options*, %struct.opng_options** %4, align 8
  %32 = bitcast %struct.opng_options* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.opng_options* @options to i8*), i8* align 8 %32, i64 120, i1 false)
  %33 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 16), align 4
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 15), align 8
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 14), align 4
  store i32 1, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 17), align 8
  br label %36

36:                                               ; preds = %35, %30
  call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (%struct.opng_summary_struct* @summary to i8*), i8 0, i64 16, i1 false)
  store i32 1, i32* getelementptr inbounds (%struct.opng_engine_struct, %struct.opng_engine_struct* @engine, i32 0, i32 0), align 4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_optimize(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [48 x i32]*, align 8
  %6 = alloca [48 x i32], align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.opng_engine_struct, %struct.opng_engine_struct* @engine, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %10(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %13 = load i8*, i8** %2, align 8
  call void (i8*, ...) %12(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef %13)
  %14 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 0), align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 0), align 4
  call void @opng_clear_image_info()
  %16 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %16, [48 x i32]** %5, align 8
  store [48 x i32]* %6, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %17 = getelementptr inbounds [48 x i32], [48 x i32]* %6, i64 0, i64 0
  %18 = call i32 @setjmp(i32* noundef %17) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i8*, i8** %2, align 8
  call void @opng_optimize_impl(i8* noundef %22)
  %23 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %24 = and i32 %23, 256
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 2), align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 2), align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %33 = and i32 %32, 16
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 3), align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 3), align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %31
  store volatile i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %44 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %21, label %46, !llvm.loop !10

46:                                               ; preds = %43
  br label %48

47:                                               ; preds = %11
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %48

48:                                               ; preds = %47, %46
  %49 = load volatile [48 x i32]*, [48 x i32]** %5, align 8
  store [48 x i32]* %49, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %50 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store i8* %53, i8** %3, align 8
  br i1 false, label %54, label %55

54:                                               ; preds = %52, %48
  br label %59

55:                                               ; preds = %52
  %56 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  %58 = load i8*, i8** %3, align 8
  call void @opng_print_error(i8* noundef %58)
  store volatile i32 -1, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %54
  call void @opng_destroy_image_info()
  %60 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %60(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %61 = load volatile i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_clear_image_info() #0 {
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.opng_image_struct* @image to i8*), i8 0, i64 160, i1 false)
  ret void
}

; Function Attrs: returns_twice
declare i32 @setjmp(i32* noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_optimize_impl(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 1
  %4 = alloca [1024 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca [48 x i32]*, align 8
  %7 = alloca [48 x i32], align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [48 x i32]*, align 8
  %11 = alloca [48 x i32], align 4
  %12 = alloca [48 x i32]*, align 8
  %13 = alloca [48 x i32], align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.opng_process_struct* @process to i8*), i8 0, i64 112, i1 false)
  %14 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 4), align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %18 = or i32 %17, 8192
  store i32 %18, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %19

19:                                               ; preds = %16, %1
  store volatile i8* null, i8** %5, align 8
  %20 = load i8*, i8** %2, align 8
  store i8* %20, i8** @opng_optimize_impl.infile_name_local, align 8
  %21 = load i8*, i8** @opng_optimize_impl.infile_name_local, align 8
  %22 = call %struct.__sFILE* @"\01_fopen"(i8* noundef %21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store %struct.__sFILE* %22, %struct.__sFILE** @opng_optimize_impl.infile, align 8
  %23 = icmp eq %struct.__sFILE* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  store volatile i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %26

26:                                               ; preds = %25
  %27 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %28 = getelementptr inbounds [48 x i32], [48 x i32]* %27, i64 0, i64 0
  call void @longjmp(i32* noundef %28, i32 noundef 1) #8
  unreachable

29:                                               ; preds = %19
  %30 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %30, [48 x i32]** %6, align 8
  store [48 x i32]* %7, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %31 = getelementptr inbounds [48 x i32], [48 x i32]* %7, i64 0, i64 0
  %32 = call i32 @setjmp(i32* noundef %31) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %37, %34
  %36 = load %struct.__sFILE*, %struct.__sFILE** @opng_optimize_impl.infile, align 8
  call void @opng_read_file(%struct.__sFILE* noundef %36)
  br label %37

37:                                               ; preds = %35
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %38 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %35, label %40, !llvm.loop !12

40:                                               ; preds = %37
  br label %42

41:                                               ; preds = %29
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %42

42:                                               ; preds = %41, %40
  %43 = load volatile [48 x i32]*, [48 x i32]** %6, align 8
  store [48 x i32]* %43, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %44 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %47, i8** %5, align 8
  br i1 false, label %48, label %49

48:                                               ; preds = %46, %42
  br label %55

49:                                               ; preds = %46
  %50 = load volatile i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %53(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  br label %55

55:                                               ; preds = %54, %48
  %56 = load %struct.__sFILE*, %struct.__sFILE** @opng_optimize_impl.infile, align 8
  %57 = call i32 @fclose(%struct.__sFILE* noundef %56)
  %58 = load volatile i8*, i8** %5, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60
  %62 = load volatile i8*, i8** %5, align 8
  store volatile i8* %62, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %63

63:                                               ; preds = %61
  %64 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %65 = getelementptr inbounds [48 x i32], [48 x i32]* %64, i64 0, i64 0
  call void @longjmp(i32* noundef %65, i32 noundef 1) #8
  unreachable

66:                                               ; preds = %55
  %67 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %68 = and i32 %67, 256
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %71(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %72 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 3), align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %75(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %76 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %77 = or i32 %76, 4096
  store i32 %77, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %84

78:                                               ; preds = %70
  %79 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %79(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78
  store volatile i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %81

81:                                               ; preds = %80
  %82 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %83 = getelementptr inbounds [48 x i32], [48 x i32]* %82, i64 0, i64 0
  call void @longjmp(i32* noundef %83, i32 noundef 1) #8
  unreachable

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %66
  %86 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %91 = or i32 %90, 4096
  store i32 %91, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %92

92:                                               ; preds = %89, %85
  %93 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %94 = and i32 %93, 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %98 = or i32 %97, 4096
  store i32 %98, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %101 = and i32 %100, 2
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 17), align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %108 = and i32 %107, 8192
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %111(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110
  store volatile i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %113

113:                                              ; preds = %112
  %114 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %115 = getelementptr inbounds [48 x i32], [48 x i32]* %114, i64 0, i64 0
  call void @longjmp(i32* noundef %115, i32 noundef 1) #8
  unreachable

116:                                              ; preds = %106, %103
  br label %120

117:                                              ; preds = %99
  %118 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %119 = or i32 %118, 8192
  store i32 %119, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %120

120:                                              ; preds = %117, %116
  %121 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %122 = and i32 %121, 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %120
  %125 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %125(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  %126 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 4), align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %129(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %130 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %131 = or i32 %130, 4096
  store i32 %131, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %138

132:                                              ; preds = %124
  %133 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %133(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132
  store volatile i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %135

135:                                              ; preds = %134
  %136 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %137 = getelementptr inbounds [48 x i32], [48 x i32]* %136, i64 0, i64 0
  call void @longjmp(i32* noundef %137, i32 noundef 1) #8
  unreachable

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %120
  %140 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %141 = and i32 %140, 16
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  %144 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %148 = and i32 %147, 1
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %146
  %151 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %151(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.21, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150
  store volatile i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %153

153:                                              ; preds = %152
  %154 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %155 = getelementptr inbounds [48 x i32], [48 x i32]* %154, i64 0, i64 0
  call void @longjmp(i32* noundef %155, i32 noundef 1) #8
  unreachable

156:                                              ; preds = %146, %143
  br label %157

157:                                              ; preds = %156, %139
  %158 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %159 = and i32 %158, 32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %166 = or i32 %165, 4096
  store i32 %166, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %167

167:                                              ; preds = %164, %161, %157
  %168 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %169 = and i32 %168, 64
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %172(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %167
  store i8* null, i8** @opng_optimize_impl.outfile_name, align 8
  %174 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %175 = and i32 %174, 1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %189, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %179 = load i8*, i8** @opng_optimize_impl.infile_name_local, align 8
  %180 = call i8* @osys_path_chext(i8* noundef %178, i64 noundef 1024, i8* noundef %179, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  br label %183

183:                                              ; preds = %182
  store volatile i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %184

184:                                              ; preds = %183
  %185 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %186 = getelementptr inbounds [48 x i32], [48 x i32]* %185, i64 0, i64 0
  call void @longjmp(i32* noundef %186, i32 noundef 1) #8
  unreachable

187:                                              ; preds = %177
  %188 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %188, i8** @opng_optimize_impl.outfile_name, align 8
  br label %189

189:                                              ; preds = %187, %173
  %190 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 10), align 8
  store i8* %193, i8** @opng_optimize_impl.outfile_name, align 8
  br label %194

194:                                              ; preds = %192, %189
  %195 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %220

197:                                              ; preds = %194
  %198 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %202 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %203 = call i8* @__strcpy_chk(i8* noundef %201, i8* noundef %202, i64 noundef 1024) #9
  %204 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  store i8* %204, i8** %8, align 8
  br label %207

205:                                              ; preds = %197
  %206 = load i8*, i8** @opng_optimize_impl.infile_name_local, align 8
  store i8* %206, i8** %8, align 8
  br label %207

207:                                              ; preds = %205, %200
  %208 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %209 = load i8*, i8** %8, align 8
  %210 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %211 = call i8* @osys_path_chdir(i8* noundef %208, i64 noundef 1024, i8* noundef %209, i8* noundef %210)
  %212 = icmp eq i8* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213
  store volatile i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %215

215:                                              ; preds = %214
  %216 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %217 = getelementptr inbounds [48 x i32], [48 x i32]* %216, i64 0, i64 0
  call void @longjmp(i32* noundef %217, i32 noundef 1) #8
  unreachable

218:                                              ; preds = %207
  %219 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %219, i8** @opng_optimize_impl.outfile_name, align 8
  br label %220

220:                                              ; preds = %218, %194
  %221 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %222 = icmp eq i8* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i8*, i8** @opng_optimize_impl.infile_name_local, align 8
  store i8* %224, i8** @opng_optimize_impl.outfile_name, align 8
  store i32 0, i32* @opng_optimize_impl.new_outfile, align 4
  br label %242

225:                                              ; preds = %220
  %226 = load i8*, i8** @opng_optimize_impl.infile_name_local, align 8
  %227 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %228 = call i32 @osys_test_eq(i8* noundef %226, i8* noundef %227)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %225
  %232 = load i32, i32* %9, align 4
  %233 = icmp eq i32 %232, 0
  %234 = zext i1 %233 to i32
  store i32 %234, i32* @opng_optimize_impl.new_outfile, align 4
  br label %241

235:                                              ; preds = %225
  %236 = load i8*, i8** @opng_optimize_impl.infile_name_local, align 8
  %237 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %238 = call i32 @strcmp(i8* noundef %236, i8* noundef %237)
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i32
  store i32 %240, i32* @opng_optimize_impl.new_outfile, align 4
  br label %241

241:                                              ; preds = %235, %231
  br label %242

242:                                              ; preds = %241, %223
  %243 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  store i8* %243, i8** @opng_optimize_impl.bakfile_name, align 8
  %244 = load i32, i32* @opng_optimize_impl.new_outfile, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %242
  %247 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %248 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %249 = call i8* @osys_path_mkbak(i8* noundef %247, i64 noundef 1024, i8* noundef %248)
  %250 = icmp eq i8* %249, null
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  store i8* null, i8** @opng_optimize_impl.bakfile_name, align 8
  br label %252

252:                                              ; preds = %251, %246
  br label %260

253:                                              ; preds = %242
  %254 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %255 = load i8*, i8** @opng_optimize_impl.infile_name_local, align 8
  %256 = call i8* @osys_path_mkbak(i8* noundef %254, i64 noundef 1024, i8* noundef %255)
  %257 = icmp eq i8* %256, null
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  store i8* null, i8** @opng_optimize_impl.bakfile_name, align 8
  br label %259

259:                                              ; preds = %258, %253
  br label %260

260:                                              ; preds = %259, %252
  %261 = load i8*, i8** @opng_optimize_impl.bakfile_name, align 8
  %262 = icmp eq i8* %261, null
  br i1 %262, label %263, label %268

263:                                              ; preds = %260
  br label %264

264:                                              ; preds = %263
  store volatile i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %265

265:                                              ; preds = %264
  %266 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %267 = getelementptr inbounds [48 x i32], [48 x i32]* %266, i64 0, i64 0
  call void @longjmp(i32* noundef %267, i32 noundef 1) #8
  unreachable

268:                                              ; preds = %260
  %269 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 8), align 8
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %307, label %271

271:                                              ; preds = %268
  %272 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %273 = call i32 @osys_test(i8* noundef %272, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %307

275:                                              ; preds = %271
  %276 = load i32, i32* @opng_optimize_impl.new_outfile, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %290

278:                                              ; preds = %275
  %279 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 0), align 8
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %290, label %281

281:                                              ; preds = %278
  %282 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 1), align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %290, label %284

284:                                              ; preds = %281
  %285 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %285(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.28, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284
  store volatile i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %287

287:                                              ; preds = %286
  %288 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %289 = getelementptr inbounds [48 x i32], [48 x i32]* %288, i64 0, i64 0
  call void @longjmp(i32* noundef %289, i32 noundef 1) #8
  unreachable

290:                                              ; preds = %281, %278, %275
  %291 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %292 = call i32 @osys_test(i8* noundef %291, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %301, label %294

294:                                              ; preds = %290
  %295 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 1), align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %306, label %297

297:                                              ; preds = %294
  %298 = load i8*, i8** @opng_optimize_impl.bakfile_name, align 8
  %299 = call i32 @osys_test(i8* noundef %298, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %297, %290
  br label %302

302:                                              ; preds = %301
  store volatile i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %303

303:                                              ; preds = %302
  %304 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %305 = getelementptr inbounds [48 x i32], [48 x i32]* %304, i64 0, i64 0
  call void @longjmp(i32* noundef %305, i32 noundef 1) #8
  unreachable

306:                                              ; preds = %297, %294
  br label %307

307:                                              ; preds = %306, %271, %268
  %308 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %309 = and i32 %308, 2
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %313 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  call void (i8*, ...) %312(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i64 noundef %313)
  br label %314

314:                                              ; preds = %311, %307
  %315 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %316 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  call void (i8*, ...) %315(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0), i64 noundef %316)
  %317 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 17), align 8
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %314
  %320 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %321 = and i32 %320, 8192
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %319, %314
  call void @opng_init_iterations()
  call void @opng_iterate()
  call void @opng_finish_iterations()
  br label %324

324:                                              ; preds = %323, %319
  %325 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %326 = and i32 %325, 8192
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %324
  %329 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %330 = or i32 %329, 4096
  store i32 %330, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %331 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  call void @opng_check_idat_size(i64 noundef %331)
  br label %332

332:                                              ; preds = %328, %324
  %333 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %334 = and i32 %333, 4096
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %343, label %336

336:                                              ; preds = %332
  %337 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %338 = load i8*, i8** @opng_optimize_impl.infile_name_local, align 8
  call void (i8*, ...) %337(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i8* noundef %338)
  %339 = load i32, i32* @opng_optimize_impl.new_outfile, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %342, label %341

341:                                              ; preds = %336
  br label %582

342:                                              ; preds = %336
  br label %343

343:                                              ; preds = %342, %332
  %344 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 8), align 8
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %343
  %347 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %347(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0))
  br label %582

348:                                              ; preds = %343
  %349 = load i32, i32* @opng_optimize_impl.new_outfile, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %376

351:                                              ; preds = %348
  %352 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %353 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  call void (i8*, ...) %352(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i8* noundef %353)
  %354 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %355 = icmp ne i8* %354, null
  br i1 %355, label %356, label %359

356:                                              ; preds = %351
  %357 = load i8*, i8** getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 11), align 8
  %358 = call i32 @osys_create_dir(i8* noundef %357)
  br label %359

359:                                              ; preds = %356, %351
  store i32 0, i32* @opng_optimize_impl.has_backup, align 4
  %360 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %361 = call i32 @osys_test(i8* noundef %360, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %375

363:                                              ; preds = %359
  %364 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %365 = load i8*, i8** @opng_optimize_impl.bakfile_name, align 8
  %366 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 1), align 4
  %367 = call i32 @osys_rename(i8* noundef %364, i8* noundef %365, i32 noundef %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %374

369:                                              ; preds = %363
  br label %370

370:                                              ; preds = %369
  store volatile i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %371

371:                                              ; preds = %370
  %372 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %373 = getelementptr inbounds [48 x i32], [48 x i32]* %372, i64 0, i64 0
  call void @longjmp(i32* noundef %373, i32 noundef 1) #8
  unreachable

374:                                              ; preds = %363
  store i32 1, i32* @opng_optimize_impl.has_backup, align 4
  br label %375

375:                                              ; preds = %374, %359
  br label %388

376:                                              ; preds = %348
  %377 = load i8*, i8** @opng_optimize_impl.infile_name_local, align 8
  %378 = load i8*, i8** @opng_optimize_impl.bakfile_name, align 8
  %379 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 1), align 4
  %380 = call i32 @osys_rename(i8* noundef %377, i8* noundef %378, i32 noundef %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %387

382:                                              ; preds = %376
  br label %383

383:                                              ; preds = %382
  store volatile i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %384

384:                                              ; preds = %383
  %385 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %386 = getelementptr inbounds [48 x i32], [48 x i32]* %385, i64 0, i64 0
  call void @longjmp(i32* noundef %386, i32 noundef 1) #8
  unreachable

387:                                              ; preds = %376
  store i32 1, i32* @opng_optimize_impl.has_backup, align 4
  br label %388

388:                                              ; preds = %387, %375
  %389 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %390 = call %struct.__sFILE* @"\01_fopen"(i8* noundef %389, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0))
  store %struct.__sFILE* %390, %struct.__sFILE** @opng_optimize_impl.outfile, align 8
  %391 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %391, [48 x i32]** %10, align 8
  store [48 x i32]* %11, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %392 = getelementptr inbounds [48 x i32], [48 x i32]* %11, i64 0, i64 0
  %393 = call i32 @setjmp(i32* noundef %392) #7
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %489

395:                                              ; preds = %388
  br label %396

396:                                              ; preds = %485, %395
  %397 = load %struct.__sFILE*, %struct.__sFILE** @opng_optimize_impl.outfile, align 8
  %398 = icmp eq %struct.__sFILE* %397, null
  br i1 %398, label %399, label %404

399:                                              ; preds = %396
  br label %400

400:                                              ; preds = %399
  store volatile i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %401

401:                                              ; preds = %400
  %402 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %403 = getelementptr inbounds [48 x i32], [48 x i32]* %402, i64 0, i64 0
  call void @longjmp(i32* noundef %403, i32 noundef 1) #8
  unreachable

404:                                              ; preds = %396
  %405 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %406 = and i32 %405, 8192
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %414

408:                                              ; preds = %404
  %409 = load %struct.__sFILE*, %struct.__sFILE** @opng_optimize_impl.outfile, align 8
  %410 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 16), align 4
  %411 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 17), align 8
  %412 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 18), align 4
  %413 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 19), align 8
  call void @opng_write_file(%struct.__sFILE* noundef %409, i32 noundef %410, i32 noundef %411, i32 noundef %412, i32 noundef %413)
  br label %484

414:                                              ; preds = %404
  %415 = load i32, i32* @opng_optimize_impl.new_outfile, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %414
  %418 = load i8*, i8** @opng_optimize_impl.infile_name_local, align 8
  br label %421

419:                                              ; preds = %414
  %420 = load i8*, i8** @opng_optimize_impl.bakfile_name, align 8
  br label %421

421:                                              ; preds = %419, %417
  %422 = phi i8* [ %418, %417 ], [ %420, %419 ]
  %423 = call %struct.__sFILE* @"\01_fopen"(i8* noundef %422, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store %struct.__sFILE* %423, %struct.__sFILE** @opng_optimize_impl.infile, align 8
  %424 = load %struct.__sFILE*, %struct.__sFILE** @opng_optimize_impl.infile, align 8
  %425 = icmp eq %struct.__sFILE* %424, null
  br i1 %425, label %426, label %431

426:                                              ; preds = %421
  br label %427

427:                                              ; preds = %426
  store volatile i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %428

428:                                              ; preds = %427
  %429 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %430 = getelementptr inbounds [48 x i32], [48 x i32]* %429, i64 0, i64 0
  call void @longjmp(i32* noundef %430, i32 noundef 1) #8
  unreachable

431:                                              ; preds = %421
  %432 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %432, [48 x i32]** %12, align 8
  store [48 x i32]* %13, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %433 = getelementptr inbounds [48 x i32], [48 x i32]* %13, i64 0, i64 0
  %434 = call i32 @setjmp(i32* noundef %433) #7
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %458

436:                                              ; preds = %431
  br label %437

437:                                              ; preds = %454, %436
  %438 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 2), align 8
  %439 = icmp sgt i64 %438, 0
  br i1 %439, label %440, label %450

440:                                              ; preds = %437
  %441 = load %struct.__sFILE*, %struct.__sFILE** @opng_optimize_impl.infile, align 8
  %442 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 2), align 8
  %443 = call i32 @osys_fseeko(%struct.__sFILE* noundef %441, i64 noundef %442, i32 noundef 0)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %450

445:                                              ; preds = %440
  br label %446

446:                                              ; preds = %445
  store volatile i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %447

447:                                              ; preds = %446
  %448 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %449 = getelementptr inbounds [48 x i32], [48 x i32]* %448, i64 0, i64 0
  call void @longjmp(i32* noundef %449, i32 noundef 1) #8
  unreachable

450:                                              ; preds = %440, %437
  %451 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  store i64 %451, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %452 = load %struct.__sFILE*, %struct.__sFILE** @opng_optimize_impl.infile, align 8
  %453 = load %struct.__sFILE*, %struct.__sFILE** @opng_optimize_impl.outfile, align 8
  call void @opng_copy_file(%struct.__sFILE* noundef %452, %struct.__sFILE* noundef %453)
  br label %454

454:                                              ; preds = %450
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %455 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %437, label %457, !llvm.loop !13

457:                                              ; preds = %454
  br label %459

458:                                              ; preds = %431
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %459

459:                                              ; preds = %458, %457
  %460 = load volatile [48 x i32]*, [48 x i32]** %12, align 8
  store [48 x i32]* %460, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %461 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %465

463:                                              ; preds = %459
  %464 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %464, i8** %5, align 8
  br i1 false, label %465, label %466

465:                                              ; preds = %463, %459
  br label %472

466:                                              ; preds = %463
  %467 = load volatile i8*, i8** %5, align 8
  %468 = icmp ne i8* %467, null
  br i1 %468, label %471, label %469

469:                                              ; preds = %466
  %470 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %470(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0))
  br label %471

471:                                              ; preds = %469, %466
  br label %472

472:                                              ; preds = %471, %465
  %473 = load %struct.__sFILE*, %struct.__sFILE** @opng_optimize_impl.infile, align 8
  %474 = call i32 @fclose(%struct.__sFILE* noundef %473)
  %475 = load volatile i8*, i8** %5, align 8
  %476 = icmp ne i8* %475, null
  br i1 %476, label %477, label %483

477:                                              ; preds = %472
  br label %478

478:                                              ; preds = %477
  %479 = load volatile i8*, i8** %5, align 8
  store volatile i8* %479, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %480

480:                                              ; preds = %478
  %481 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %482 = getelementptr inbounds [48 x i32], [48 x i32]* %481, i64 0, i64 0
  call void @longjmp(i32* noundef %482, i32 noundef 1) #8
  unreachable

483:                                              ; preds = %472
  br label %484

484:                                              ; preds = %483, %408
  br label %485

485:                                              ; preds = %484
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %486 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %396, label %488, !llvm.loop !14

488:                                              ; preds = %485
  br label %490

489:                                              ; preds = %388
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %490

490:                                              ; preds = %489, %488
  %491 = load volatile [48 x i32]*, [48 x i32]** %10, align 8
  store [48 x i32]* %491, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %492 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %496

494:                                              ; preds = %490
  %495 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %495, i8** %5, align 8
  br i1 false, label %496, label %497

496:                                              ; preds = %494, %490
  br label %537

497:                                              ; preds = %494
  %498 = load %struct.__sFILE*, %struct.__sFILE** @opng_optimize_impl.outfile, align 8
  %499 = icmp ne %struct.__sFILE* %498, null
  br i1 %499, label %500, label %503

500:                                              ; preds = %497
  %501 = load %struct.__sFILE*, %struct.__sFILE** @opng_optimize_impl.outfile, align 8
  %502 = call i32 @fclose(%struct.__sFILE* noundef %501)
  br label %503

503:                                              ; preds = %500, %497
  %504 = load i32, i32* @opng_optimize_impl.has_backup, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %520

506:                                              ; preds = %503
  %507 = load i8*, i8** @opng_optimize_impl.bakfile_name, align 8
  %508 = load i32, i32* @opng_optimize_impl.new_outfile, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %512

510:                                              ; preds = %506
  %511 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  br label %514

512:                                              ; preds = %506
  %513 = load i8*, i8** @opng_optimize_impl.infile_name_local, align 8
  br label %514

514:                                              ; preds = %512, %510
  %515 = phi i8* [ %511, %510 ], [ %513, %512 ]
  %516 = call i32 @osys_rename(i8* noundef %507, i8* noundef %515, i32 noundef 1)
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %519

518:                                              ; preds = %514
  call void @opng_print_warning(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i64 0, i64 0))
  br label %519

519:                                              ; preds = %518, %514
  br label %531

520:                                              ; preds = %503
  %521 = load i32, i32* @opng_optimize_impl.new_outfile, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %525, label %523

523:                                              ; preds = %520
  %524 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %524(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i64 0, i64 0))
  br label %525

525:                                              ; preds = %523, %520
  %526 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %527 = call i32 @osys_unlink(i8* noundef %526)
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %530

529:                                              ; preds = %525
  call void @opng_print_warning(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i64 0, i64 0))
  br label %530

530:                                              ; preds = %529, %525
  br label %531

531:                                              ; preds = %530, %519
  br label %532

532:                                              ; preds = %531
  %533 = load volatile i8*, i8** %5, align 8
  store volatile i8* %533, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %534

534:                                              ; preds = %532
  %535 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %536 = getelementptr inbounds [48 x i32], [48 x i32]* %535, i64 0, i64 0
  call void @longjmp(i32* noundef %536, i32 noundef 1) #8
  unreachable

537:                                              ; preds = %496
  %538 = load %struct.__sFILE*, %struct.__sFILE** @opng_optimize_impl.outfile, align 8
  %539 = call i32 @fclose(%struct.__sFILE* noundef %538)
  %540 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 6), align 8
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %553

542:                                              ; preds = %537
  %543 = load i32, i32* @opng_optimize_impl.new_outfile, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %547

545:                                              ; preds = %542
  %546 = load i8*, i8** @opng_optimize_impl.infile_name_local, align 8
  br label %549

547:                                              ; preds = %542
  %548 = load i8*, i8** @opng_optimize_impl.bakfile_name, align 8
  br label %549

549:                                              ; preds = %547, %545
  %550 = phi i8* [ %546, %545 ], [ %548, %547 ]
  %551 = load i8*, i8** @opng_optimize_impl.outfile_name, align 8
  %552 = call i32 @osys_copy_attr(i8* noundef %550, i8* noundef %551)
  br label %553

553:                                              ; preds = %549, %537
  %554 = load i32, i32* @opng_optimize_impl.new_outfile, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %565, label %556

556:                                              ; preds = %553
  %557 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 0), align 8
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %556
  %560 = load i8*, i8** @opng_optimize_impl.bakfile_name, align 8
  %561 = call i32 @osys_unlink(i8* noundef %560)
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %559
  call void @opng_print_warning(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i64 0, i64 0))
  br label %564

564:                                              ; preds = %563, %559
  br label %565

565:                                              ; preds = %564, %556, %553
  %566 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %567 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  call void (i8*, ...) %566(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i64 0, i64 0), i64 noundef %567)
  %568 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %569 = and i32 %568, 2
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %576

571:                                              ; preds = %565
  %572 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %572(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  %573 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  %574 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  call void @opng_print_fsize_difference(i64 noundef %573, i64 noundef %574, i32 noundef 0)
  %575 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %575(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0))
  br label %576

576:                                              ; preds = %571, %565
  %577 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %578 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  call void (i8*, ...) %577(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i64 0, i64 0), i64 noundef %578)
  %579 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  %580 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  call void @opng_print_fsize_difference(i64 noundef %579, i64 noundef %580, i32 noundef 1)
  %581 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %581(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0))
  br label %582

582:                                              ; preds = %576, %346, %341
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_print_error(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load void (i32)*, void (i32)** @usr_print_cntrl, align 8
  call void %3(i32 noundef 11)
  %4 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %5 = load i8*, i8** %2, align 8
  call void (i8*, ...) %4(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i64 0, i64 0), i8* noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_destroy_image_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8**, i8*** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 7), align 8
  %4 = icmp eq i8** %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %45

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %17, %6
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 1), align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load i8**, i8*** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 7), align 8
  %13 = load i32, i32* %1, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  call void @opng_free(i8* noundef %16)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %1, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %7, !llvm.loop !15

20:                                               ; preds = %7
  %21 = load i8**, i8*** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 7), align 8
  %22 = bitcast i8** %21 to i8*
  call void @opng_free(i8* noundef %22)
  %23 = load %struct.png_color_struct*, %struct.png_color_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 8), align 8
  %24 = bitcast %struct.png_color_struct* %23 to i8*
  call void @opng_free(i8* noundef %24)
  %25 = load i8*, i8** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 15), align 8
  call void @opng_free(i8* noundef %25)
  %26 = load i16*, i16** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 12), align 8
  %27 = bitcast i16* %26 to i8*
  call void @opng_free(i8* noundef %27)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %39, %20
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 20), align 8
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 19), align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %33, i64 %35
  %37 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  call void @opng_free(i8* noundef %38)
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %28, !llvm.loop !16

42:                                               ; preds = %28
  %43 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 19), align 8
  %44 = bitcast %struct.png_unknown_chunk_t* %43 to i8*
  call void @opng_free(i8* noundef %44)
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.opng_image_struct* @image to i8*), i8 0, i64 160, i1 false)
  br label %45

45:                                               ; preds = %42, %5
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @opng_finalize() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 9), align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 3), align 4
  %5 = icmp ugt i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  %8 = icmp ugt i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %6, %3, %0
  %10 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %10(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %11 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 0), align 4
  call void (i8*, ...) %11(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 noundef %12)
  %13 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 3), align 4
  %14 = icmp ugt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 3), align 4
  call void (i8*, ...) %16(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 noundef %17)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 1), align 4
  call void (i8*, ...) %22(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 noundef %23)
  %24 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 2), align 4
  %25 = icmp ugt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.opng_summary_struct, %struct.opng_summary_struct* @summary, i32 0, i32 2), align 4
  call void (i8*, ...) %27(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 noundef %28)
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %18
  br label %31

31:                                               ; preds = %30, %6
  store i32 0, i32* getelementptr inbounds (%struct.opng_engine_struct, %struct.opng_engine_struct* @engine, i32 0, i32 0), align 4
  ret i32 0
}

declare %struct.__sFILE* @"\01_fopen"(i8* noundef, i8* noundef) #4

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_read_file(%struct.__sFILE* noundef %0) #0 {
  %2 = alloca %struct.__sFILE*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [48 x i32]*, align 8
  %8 = alloca [48 x i32], align 4
  %9 = alloca [48 x i32]*, align 8
  %10 = alloca [48 x i32], align 4
  store %struct.__sFILE* %0, %struct.__sFILE** %2, align 8
  %11 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %11, [48 x i32]** %7, align 8
  store [48 x i32]* %8, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %12 = getelementptr inbounds [48 x i32], [48 x i32]* %8, i64 0, i64 0
  %13 = call i32 @setjmp(i32* noundef %12) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %82

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %78, %15
  %17 = call noalias %struct.png_struct_def* @png_create_read_struct(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i8* noundef null, void (%struct.png_struct_def*, i8*)* noundef @opng_error, void (%struct.png_struct_def*, i8*)* noundef @opng_warning)
  store %struct.png_struct_def* %17, %struct.png_struct_def** @read_ptr, align 8
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %19 = call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* noundef %18)
  store %struct.png_info_def* %19, %struct.png_info_def** @read_info_ptr, align 8
  %20 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %21 = icmp eq %struct.png_info_def* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  store volatile i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %24

24:                                               ; preds = %23
  %25 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %26 = getelementptr inbounds [48 x i32], [48 x i32]* %25, i64 0, i64 0
  call void @longjmp(i32* noundef %26, i32 noundef 1) #8
  unreachable

27:                                               ; preds = %16
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  call void @png_set_keep_unknown_chunks(%struct.png_struct_def* noundef %28, i32 noundef 3, i8* noundef null, i32 noundef 0)
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  call void @png_set_user_limits(%struct.png_struct_def* noundef %29, i32 noundef 2147483647, i32 noundef 2147483647)
  call void @opng_init_read_data()
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %31 = load %struct.__sFILE*, %struct.__sFILE** %2, align 8
  %32 = bitcast %struct.__sFILE* %31 to i8*
  call void @png_set_read_fn(%struct.png_struct_def* noundef %30, i8* noundef %32, void (%struct.png_struct_def*, i8*, i64)* noundef @opng_read_data)
  store i8* null, i8** %3, align 8
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %34 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %35 = call i32 @pngx_read_image(%struct.png_struct_def* noundef %33, %struct.png_info_def* noundef %34, i8** noundef %3, i8** noundef null)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  store volatile i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.55, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %40

40:                                               ; preds = %39
  %41 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %42 = getelementptr inbounds [48 x i32], [48 x i32]* %41, i64 0, i64 0
  call void @longjmp(i32* noundef %42, i32 noundef 1) #8
  unreachable

43:                                               ; preds = %27
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %48 = or i32 %47, 16
  store i32 %48, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %55 = and i32 %54, 16
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %59 = and i32 %58, 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i64 0, i64 0)
  store i8* %62, i8** %3, align 8
  br label %63

63:                                               ; preds = %57, %53, %49
  %64 = load i8*, i8** %3, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %67(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.__sFILE*, %struct.__sFILE** %2, align 8
  %73 = call i32 @osys_fgetsize(%struct.__sFILE* noundef %72, i64* noundef getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3))
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  call void @opng_print_warning(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0))
  store i64 0, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  br label %76

76:                                               ; preds = %75, %71
  br label %77

77:                                               ; preds = %76, %68
  store volatile i8* null, i8** %6, align 8
  br label %78

78:                                               ; preds = %77
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %79 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %16, label %81, !llvm.loop !17

81:                                               ; preds = %78
  br label %83

82:                                               ; preds = %1
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %83

83:                                               ; preds = %82, %81
  %84 = load volatile [48 x i32]*, [48 x i32]** %7, align 8
  store [48 x i32]* %84, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %85 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %88, i8** %6, align 8
  br i1 false, label %89, label %90

89:                                               ; preds = %87, %83
  br label %99

90:                                               ; preds = %87
  %91 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %92 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %93 = call i32 @opng_validate_image(%struct.png_struct_def* noundef %91, %struct.png_info_def* noundef %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %97 = load volatile i8*, i8** %6, align 8
  call void @png_warning(%struct.png_struct_def* noundef %96, i8* noundef %97)
  store volatile i8* null, i8** %6, align 8
  br label %98

98:                                               ; preds = %95, %90
  br label %99

99:                                               ; preds = %98, %89
  %100 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %100, [48 x i32]** %9, align 8
  store [48 x i32]* %10, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %101 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 0
  %102 = call i32 @setjmp(i32* noundef %101) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %216

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %212, %104
  %106 = load volatile i8*, i8** %6, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  br label %109

109:                                              ; preds = %108
  %110 = load volatile i8*, i8** %6, align 8
  store volatile i8* %110, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %111

111:                                              ; preds = %109
  %112 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %113 = getelementptr inbounds [48 x i32], [48 x i32]* %112, i64 0, i64 0
  call void @longjmp(i32* noundef %113, i32 noundef 1) #8
  unreachable

114:                                              ; preds = %105
  %115 = load i8*, i8** %3, align 8
  %116 = call i32 @strcmp(i8* noundef %115, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %114
  %119 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %120 = load i8*, i8** %3, align 8
  call void (i8*, ...) %119(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0), i8* noundef %120)
  %121 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %122 = and i32 %121, 16
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %118
  %125 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %126 = and i32 %125, 1
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %129(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %134(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %130
  br label %136

136:                                              ; preds = %135, %118
  %137 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %137(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %114
  %139 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %140 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  call void @opng_load_image_info(%struct.png_struct_def* noundef %139, %struct.png_info_def* noundef %140, i32 noundef 1)
  call void @opng_print_image_info(i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  %141 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %141(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 1023, i32* %5, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 14), align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* %5, align 4
  %146 = and i32 %145, -4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %144, %138
  %148 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 15), align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* %5, align 4
  %152 = and i32 %151, -253
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 16), align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %5, align 4
  %158 = and i32 %157, -769
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 17), align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %164 = and i32 %163, 2
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %162, %159
  %168 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %169 = and i32 %168, 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %171, %167
  %173 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %174 = and i32 %173, 1
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %178 = and i32 %177, 16
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %183
  %187 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %187(i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.64, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %188

188:                                              ; preds = %186, %183, %180, %176, %172
  %189 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %190 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @opng_reduce_image(%struct.png_struct_def* noundef %189, %struct.png_info_def* noundef %190, i32 noundef %191)
  store i32 %192, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 11), align 8
  %193 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 11), align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %188
  %196 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %197 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  call void @opng_load_image_info(%struct.png_struct_def* noundef %196, %struct.png_info_def* noundef %197, i32 noundef 1)
  %198 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %198(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i64 0, i64 0))
  call void @opng_print_image_info(i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  %199 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %199(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %200

200:                                              ; preds = %195, %188
  %201 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  %202 = icmp sge i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %200
  %204 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 6), align 8
  %205 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 13), align 8
  store i32 %208, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 6), align 8
  %209 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %210 = or i32 %209, 8192
  store i32 %210, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %211

211:                                              ; preds = %207, %203, %200
  br label %212

212:                                              ; preds = %211
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %213 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %105, label %215, !llvm.loop !18

215:                                              ; preds = %212
  br label %217

216:                                              ; preds = %99
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %217

217:                                              ; preds = %216, %215
  %218 = load volatile [48 x i32]*, [48 x i32]** %9, align 8
  store [48 x i32]* %218, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %219 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %222, i8** %6, align 8
  br i1 false, label %223, label %224

223:                                              ; preds = %221, %217
  br label %232

224:                                              ; preds = %221
  %225 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %226 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  call void @png_data_freer(%struct.png_struct_def* noundef %225, %struct.png_info_def* noundef %226, i32 noundef 1, i32 noundef 32767)
  call void @png_destroy_read_struct(%struct.png_struct_def** noundef @read_ptr, %struct.png_info_def** noundef @read_info_ptr, %struct.png_info_def** noundef null)
  br label %227

227:                                              ; preds = %224
  %228 = load volatile i8*, i8** %6, align 8
  store volatile i8* %228, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %229

229:                                              ; preds = %227
  %230 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %231 = getelementptr inbounds [48 x i32], [48 x i32]* %230, i64 0, i64 0
  call void @longjmp(i32* noundef %231, i32 noundef 1) #8
  unreachable

232:                                              ; preds = %223
  %233 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %234 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  call void @png_data_freer(%struct.png_struct_def* noundef %233, %struct.png_info_def* noundef %234, i32 noundef 2, i32 noundef 32767)
  call void @png_destroy_read_struct(%struct.png_struct_def** noundef @read_ptr, %struct.png_info_def** noundef @read_info_ptr, %struct.png_info_def** noundef null)
  ret void
}

declare i32 @fclose(%struct.__sFILE* noundef) #4

declare i8* @osys_path_chext(i8* noundef, i64 noundef, i8* noundef, i8* noundef) #4

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #6

declare i8* @osys_path_chdir(i8* noundef, i64 noundef, i8* noundef, i8* noundef) #4

declare i32 @osys_test_eq(i8* noundef, i8* noundef) #4

declare i32 @strcmp(i8* noundef, i8* noundef) #4

declare i8* @osys_path_mkbak(i8* noundef, i64 noundef, i8* noundef) #4

declare i32 @osys_test(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_init_iterations() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %10 = and i32 %9, 8192
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 5), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %0
  store i64 2147483647, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 8), align 8
  br label %26

16:                                               ; preds = %12
  %17 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %20(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 9), align 8
  %24 = zext i32 %23 to i64
  %25 = add i64 %22, %24
  store i64 %25, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 8), align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 2, i32* %6, align 4
  br label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 7
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 7, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %31
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 19), align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x %struct.opng_preset], [8 x %struct.opng_preset]* @presets, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.opng_preset, %struct.opng_preset* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  call void @opng_init_iteration(i32 noundef %37, i32 noundef 1022, i8* noundef %42, i32* noundef %1)
  %43 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 20), align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x %struct.opng_preset], [8 x %struct.opng_preset]* @presets, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.opng_preset, %struct.opng_preset* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  call void @opng_init_iteration(i32 noundef %43, i32 noundef 1022, i8* noundef %48, i32* noundef %2)
  %49 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 21), align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x %struct.opng_preset], [8 x %struct.opng_preset]* @presets, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.opng_preset, %struct.opng_preset* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  call void @opng_init_iteration(i32 noundef %49, i32 noundef 15, i8* noundef %54, i32* noundef %3)
  %55 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 22), align 4
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x %struct.opng_preset], [8 x %struct.opng_preset]* @presets, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.opng_preset, %struct.opng_preset* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  call void @opng_init_iteration(i32 noundef %55, i32 noundef 63, i8* noundef %60, i32* noundef %4)
  %61 = load i32, i32* %1, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %36
  %64 = load i32, i32* %1, align 4
  %65 = or i32 %64, 512
  store i32 %65, i32* %1, align 4
  br label %66

66:                                               ; preds = %63, %36
  %67 = load i32, i32* %2, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %2, align 4
  %71 = or i32 %70, 256
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 2), align 8
  %74 = icmp slt i32 %73, 8
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load %struct.png_color_struct*, %struct.png_color_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 8), align 8
  %77 = icmp ne %struct.png_color_struct* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %104

91:                                               ; preds = %75
  %92 = load i32, i32* %3, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %3, align 4
  %96 = or i32 %95, 2
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, 32
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i32, i32* %1, align 4
  store i32 %105, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 12), align 4
  %106 = load i32, i32* %2, align 4
  store i32 %106, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 13), align 8
  %107 = load i32, i32* %3, align 4
  store i32 %107, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 14), align 4
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 15), align 8
  store i32 12, i32* %5, align 4
  %109 = load i32, i32* %1, align 4
  %110 = call i32 @opng_bitset_count(i32 noundef %109)
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %5, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = call i32 @opng_bitset_count(i32 noundef %114)
  %116 = mul i32 %110, %115
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* %5, align 4
  %119 = and i32 %117, %118
  %120 = call i32 @opng_bitset_count(i32 noundef %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %2, align 4
  %125 = call i32 @opng_bitset_count(i32 noundef %124)
  %126 = mul i32 %123, %125
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @opng_bitset_count(i32 noundef %127)
  %129 = mul i32 %126, %128
  store i32 %129, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %104
  %133 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %133(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.90, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %104
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_iterate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %15(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.99, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %21 = and i32 %20, 8192
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  store i64 0, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 12), align 4
  %25 = call i32 @opng_bitset_find_first(i32 noundef %24)
  store i32 %25, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 16), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 13), align 8
  %27 = call i32 @opng_bitset_find_first(i32 noundef %26)
  store i32 %27, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 17), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 14), align 4
  %29 = call i32 @opng_bitset_find_first(i32 noundef %28)
  store i32 %29, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 18), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 15), align 8
  %31 = call i32 @opng_bitset_find_first(i32 noundef %30)
  store i32 %31, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 19), align 8
  br label %181

32:                                               ; preds = %19, %16
  %33 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 12), align 4
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 13), align 8
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 14), align 4
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 15), align 8
  store i32 %36, i32* %4, align 4
  store i64 2147483648, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 16), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 17), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 18), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 19), align 8
  %37 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %37(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %161, %32
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 %39, 5
  br i1 %40, label %41, label %164

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %160

47:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %156, %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %49, 3
  br i1 %50, label %51, label %159

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %155

57:                                               ; preds = %51
  %58 = load i32, i32* %1, align 4
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  store i32 0, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = or i32 %62, 2
  store i32 %63, i32* %1, align 4
  br label %71

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  store i32 0, i32* %1, align 4
  %68 = load i32, i32* %1, align 4
  %69 = or i32 %68, 512
  store i32 %69, i32* %1, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %61
  store i32 9, i32* %6, align 4
  br label %72

72:                                               ; preds = %150, %71
  %73 = load i32, i32* %6, align 4
  %74 = icmp sge i32 %73, 1
  br i1 %74, label %75, label %153

75:                                               ; preds = %72
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %149

81:                                               ; preds = %75
  store i32 9, i32* %7, align 4
  br label %82

82:                                               ; preds = %145, %81
  %83 = load i32, i32* %7, align 4
  %84 = icmp sge i32 %83, 1
  br i1 %84, label %85, label %148

85:                                               ; preds = %82
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* %7, align 4
  %88 = shl i32 1, %87
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %144

91:                                               ; preds = %85
  %92 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  call void (i8*, ...) %92(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.101, i64 0, i64 0), i32 noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %96)
  %97 = load void (i64, i64)*, void (i64, i64)** @usr_progress, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %101 = sext i32 %100 to i64
  call void %97(i64 noundef %99, i64 noundef %101)
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  call void @opng_write_file(%struct.__sFILE* noundef null, i32 noundef %104, i32 noundef %105, i32 noundef %106, i32 noundef %107)
  %108 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %109 = icmp ugt i64 %108, 2147483647
  br i1 %109, label %110, label %118

110:                                              ; preds = %91
  %111 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 9), align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %114(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %117

115:                                              ; preds = %110
  %116 = load void (i32)*, void (i32)** @usr_print_cntrl, align 8
  call void %116(i32 noundef 13)
  store i32 1, i32* %11, align 4
  br label %117

117:                                              ; preds = %115, %113
  br label %145

118:                                              ; preds = %91
  %119 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %120 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  call void (i8*, ...) %119(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.103, i64 0, i64 0), i64 noundef %120)
  store i32 0, i32* %11, align 4
  %121 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %122 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %145

125:                                              ; preds = %118
  %126 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %127 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 18), align 4
  %131 = icmp sge i32 %130, 2
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %145

133:                                              ; preds = %129, %125
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 16), align 4
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 17), align 8
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 18), align 4
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 19), align 8
  %138 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  store i64 %138, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 5), align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %133
  %142 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  store i64 %142, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 8), align 8
  br label %143

143:                                              ; preds = %141, %133
  br label %144

144:                                              ; preds = %143, %85
  br label %145

145:                                              ; preds = %144, %132, %124, %117
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %7, align 4
  br label %82, !llvm.loop !19

148:                                              ; preds = %82
  br label %149

149:                                              ; preds = %148, %75
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %6, align 4
  br label %72, !llvm.loop !20

153:                                              ; preds = %72
  %154 = load i32, i32* %5, align 4
  store i32 %154, i32* %1, align 4
  br label %155

155:                                              ; preds = %153, %51
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %48, !llvm.loop !21

159:                                              ; preds = %48
  br label %160

160:                                              ; preds = %159, %41
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %38, !llvm.loop !22

164:                                              ; preds = %38
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load void (i32)*, void (i32)** @usr_print_cntrl, align 8
  call void %168(i32 noundef -31)
  br label %169

169:                                              ; preds = %167, %164
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %174(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.104, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %169
  %176 = load void (i64, i64)*, void (i64, i64)** @usr_progress, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 1), align 4
  %180 = sext i32 %179 to i64
  call void %176(i64 noundef %178, i64 noundef %180)
  br label %181

181:                                              ; preds = %175, %23
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_finish_iterations() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 10), align 4
  %3 = zext i32 %2 to i64
  %4 = add i64 %1, %3
  %5 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 9), align 8
  %7 = zext i32 %6 to i64
  %8 = add i64 %5, %7
  %9 = icmp ult i64 %4, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %12 = or i32 %11, 8192
  store i32 %12, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %15 = and i32 %14, 8192
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %19 = icmp ule i64 %18, 2147483647
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %21(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.105, i64 0, i64 0))
  %22 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 16), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 17), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 18), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 19), align 8
  call void (i8*, ...) %22(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.101, i64 0, i64 0), i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26)
  %27 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  call void (i8*, ...) %30(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.106, i64 0, i64 0), i64 noundef %31)
  br label %32

32:                                               ; preds = %29, %20
  %33 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %33(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %37

34:                                               ; preds = %17
  %35 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %36 = load i8*, i8** @idat_size_max_string, align 8
  call void (i8*, ...) %35(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.107, i64 0, i64 0), i8* noundef %36)
  br label %37

37:                                               ; preds = %34, %32
  br label %38

38:                                               ; preds = %37, %13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_check_idat_size(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ugt i64 %3, 2147483647
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5
  store volatile i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.109, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %7

7:                                                ; preds = %6
  %8 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %9 = getelementptr inbounds [48 x i32], [48 x i32]* %8, i64 0, i64 0
  call void @longjmp(i32* noundef %9, i32 noundef 1) #8
  unreachable

10:                                               ; preds = %1
  ret void
}

declare i32 @osys_create_dir(i8* noundef) #4

declare i32 @osys_rename(i8* noundef, i8* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_write_file(%struct.__sFILE* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.__sFILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [48 x i32]*, align 8
  %13 = alloca [48 x i32], align 4
  store %struct.__sFILE* %0, %struct.__sFILE** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 1
  br i1 %15, label %16, label %37

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %17, 9
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 1
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 9
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp sle i32 %29, 3
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp sle i32 %35, 5
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %31, %28, %25, %22, %19, %16, %5
  %38 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %38(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.110, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  %40 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %40, [48 x i32]** %12, align 8
  store [48 x i32]* %13, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %41 = getelementptr inbounds [48 x i32], [48 x i32]* %13, i64 0, i64 0
  %42 = call i32 @setjmp(i32* noundef %41) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %99

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %95, %44
  %46 = call noalias %struct.png_struct_def* @png_create_write_struct(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i8* noundef null, void (%struct.png_struct_def*, i8*)* noundef @opng_error, void (%struct.png_struct_def*, i8*)* noundef @opng_warning)
  store %struct.png_struct_def* %46, %struct.png_struct_def** @write_ptr, align 8
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %48 = call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* noundef %47)
  store %struct.png_info_def* %48, %struct.png_info_def** @write_info_ptr, align 8
  %49 = load %struct.png_info_def*, %struct.png_info_def** @write_info_ptr, align 8
  %50 = icmp eq %struct.png_info_def* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  store volatile i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %53

53:                                               ; preds = %52
  %54 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %55 = getelementptr inbounds [48 x i32], [48 x i32]* %54, i64 0, i64 0
  call void @longjmp(i32* noundef %55, i32 noundef 1) #8
  unreachable

56:                                               ; preds = %45
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %58 = load i32, i32* %7, align 4
  call void @png_set_compression_level(%struct.png_struct_def* noundef %57, i32 noundef %58)
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %60 = load i32, i32* %8, align 4
  call void @png_set_compression_mem_level(%struct.png_struct_def* noundef %59, i32 noundef %60)
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %62 = load i32, i32* %9, align 4
  call void @png_set_compression_strategy(%struct.png_struct_def* noundef %61, i32 noundef %62)
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* @filter_table, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  call void @png_set_filter(%struct.png_struct_def* noundef %63, i32 noundef 0, i32 noundef %67)
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %70, label %80

70:                                               ; preds = %56
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 23), align 8
  call void @png_set_compression_window_bits(%struct.png_struct_def* noundef %77, i32 noundef %78)
  br label %79

79:                                               ; preds = %76, %73
  br label %82

80:                                               ; preds = %70, %56
  %81 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  call void @png_set_compression_window_bits(%struct.png_struct_def* noundef %81, i32 noundef 9)
  br label %82

82:                                               ; preds = %80, %79
  %83 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  call void @png_set_keep_unknown_chunks(%struct.png_struct_def* noundef %83, i32 noundef 3, i8* noundef null, i32 noundef 0)
  %84 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  call void @png_set_user_limits(%struct.png_struct_def* noundef %84, i32 noundef 2147483647, i32 noundef 2147483647)
  %85 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %86 = load %struct.png_info_def*, %struct.png_info_def** @write_info_ptr, align 8
  %87 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %88 = icmp ne %struct.__sFILE* %87, null
  %89 = zext i1 %88 to i32
  call void @opng_store_image_info(%struct.png_struct_def* noundef %85, %struct.png_info_def* noundef %86, i32 noundef %89)
  call void @opng_init_write_data()
  %90 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %91 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8
  %92 = bitcast %struct.__sFILE* %91 to i8*
  call void @png_set_write_fn(%struct.png_struct_def* noundef %90, i8* noundef %92, void (%struct.png_struct_def*, i8*, i64)* noundef @opng_write_data, void (%struct.png_struct_def*)* noundef null)
  %93 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %94 = load %struct.png_info_def*, %struct.png_info_def** @write_info_ptr, align 8
  call void @png_write_png(%struct.png_struct_def* noundef %93, %struct.png_info_def* noundef %94, i32 noundef 0, i8* noundef null)
  store volatile i8* null, i8** %11, align 8
  br label %95

95:                                               ; preds = %82
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %96 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %45, label %98, !llvm.loop !23

98:                                               ; preds = %95
  br label %100

99:                                               ; preds = %39
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %100

100:                                              ; preds = %99, %98
  %101 = load volatile [48 x i32]*, [48 x i32]** %12, align 8
  store [48 x i32]* %101, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %102 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %105, i8** %11, align 8
  br i1 false, label %106, label %107

106:                                              ; preds = %104, %100
  br label %108

107:                                              ; preds = %104
  store i64 2147483648, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  br label %108

108:                                              ; preds = %107, %106
  call void @png_destroy_write_struct(%struct.png_struct_def** noundef @write_ptr, %struct.png_info_def** noundef @write_info_ptr)
  %109 = load volatile i8*, i8** %11, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111
  %113 = load volatile i8*, i8** %11, align 8
  store volatile i8* %113, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %114

114:                                              ; preds = %112
  %115 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %116 = getelementptr inbounds [48 x i32], [48 x i32]* %115, i64 0, i64 0
  call void @longjmp(i32* noundef %116, i32 noundef 1) #8
  unreachable

117:                                              ; preds = %108
  ret void
}

declare i32 @osys_fseeko(%struct.__sFILE* noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_copy_file(%struct.__sFILE* noundef %0, %struct.__sFILE* noundef %1) #0 {
  %3 = alloca %struct.__sFILE*, align 8
  %4 = alloca %struct.__sFILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca [48 x i32]*, align 8
  %12 = alloca [48 x i32], align 4
  store %struct.__sFILE* %0, %struct.__sFILE** %3, align 8
  store %struct.__sFILE* %1, %struct.__sFILE** %4, align 8
  store i32 4096, i32* %6, align 4
  %13 = call noalias %struct.png_struct_def* @png_create_write_struct(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i8* noundef null, void (%struct.png_struct_def*, i8*)* noundef @opng_error, void (%struct.png_struct_def*, i8*)* noundef @opng_warning)
  store %struct.png_struct_def* %13, %struct.png_struct_def** @write_ptr, align 8
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %15 = icmp eq %struct.png_struct_def* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16
  store volatile i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %18

18:                                               ; preds = %17
  %19 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %20 = getelementptr inbounds [48 x i32], [48 x i32]* %19, i64 0, i64 0
  call void @longjmp(i32* noundef %20, i32 noundef 1) #8
  unreachable

21:                                               ; preds = %2
  call void @opng_init_write_data()
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %23 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8
  %24 = bitcast %struct.__sFILE* %23 to i8*
  call void @png_set_write_fn(%struct.png_struct_def* noundef %22, i8* noundef %24, void (%struct.png_struct_def*, i8*, i64)* noundef @opng_write_data, void (%struct.png_struct_def*)* noundef null)
  %25 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  store volatile [48 x i32]* %25, [48 x i32]** %11, align 8
  store [48 x i32]* %12, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %26 = getelementptr inbounds [48 x i32], [48 x i32]* %12, i64 0, i64 0
  %27 = call i32 @setjmp(i32* noundef %26) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %126

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %122, %29
  store volatile i8* null, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  call void @png_write_sig(%struct.png_struct_def* noundef %31)
  br label %32

32:                                               ; preds = %116, %30
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %34 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8
  %35 = call i64 @fread(i8* noundef %33, i64 noundef 8, i64 noundef 1, %struct.__sFILE* noundef %34)
  %36 = icmp ne i64 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  store volatile i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %39

39:                                               ; preds = %38
  %40 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %41 = getelementptr inbounds [48 x i32], [48 x i32]* %40, i64 0, i64 0
  call void @longjmp(i32* noundef %41, i32 noundef 1) #8
  unreachable

42:                                               ; preds = %32
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 24
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 16
  %52 = add i32 %46, %51
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 8
  %58 = add i32 %52, %57
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = add i32 %58, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ugt i32 %64, 2147483647
  br i1 %65, label %66, label %79

66:                                               ; preds = %42
  %67 = load volatile i8*, i8** %5, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = icmp eq i64 %71, 2303741511
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %116

74:                                               ; preds = %69, %66
  br label %75

75:                                               ; preds = %74
  store volatile i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %76

76:                                               ; preds = %75
  %77 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %78 = getelementptr inbounds [48 x i32], [48 x i32]* %77, i64 0, i64 0
  call void @longjmp(i32* noundef %78, i32 noundef 1) #8
  unreachable

79:                                               ; preds = %42
  %80 = load i32, i32* %8, align 4
  %81 = add i32 %80, 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %86 = load volatile i8*, i8** %5, align 8
  call void @png_free(%struct.png_struct_def* noundef %85, i8* noundef %86)
  %87 = load i32, i32* %8, align 4
  %88 = add i32 %87, 4
  %89 = add i32 %88, 4095
  %90 = udiv i32 %89, 4096
  %91 = mul i32 %90, 4096
  store i32 %91, i32* %7, align 4
  %92 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = call noalias i8* @png_malloc(%struct.png_struct_def* noundef %92, i64 noundef %94)
  store volatile i8* %95, i8** %5, align 8
  br label %96

96:                                               ; preds = %84, %79
  %97 = load volatile i8*, i8** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 4
  %100 = zext i32 %99 to i64
  %101 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8
  %102 = call i64 @fread(i8* noundef %97, i64 noundef %100, i64 noundef 1, %struct.__sFILE* noundef %101)
  %103 = icmp ne i64 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104
  store volatile i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %106

106:                                              ; preds = %105
  %107 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %108 = getelementptr inbounds [48 x i32], [48 x i32]* %107, i64 0, i64 0
  call void @longjmp(i32* noundef %108, i32 noundef 1) #8
  unreachable

109:                                              ; preds = %96
  %110 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %111 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  %113 = load volatile i8*, i8** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  call void @png_write_chunk(%struct.png_struct_def* noundef %110, i8* noundef %112, i8* noundef %113, i64 noundef %115)
  br label %116

116:                                              ; preds = %109, %73
  %117 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %118 = getelementptr inbounds i8, i8* %117, i64 4
  %119 = call i32 @memcmp(i8* noundef %118, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_IEND, i64 0, i64 0), i64 noundef 4)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %32, label %121, !llvm.loop !24

121:                                              ; preds = %116
  store volatile i8* null, i8** %10, align 8
  br label %122

122:                                              ; preds = %121
  store i32 0, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %123 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %30, label %125, !llvm.loop !25

125:                                              ; preds = %122
  br label %127

126:                                              ; preds = %21
  store i32 1, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  br label %127

127:                                              ; preds = %126, %125
  %128 = load volatile [48 x i32]*, [48 x i32]** %11, align 8
  store [48 x i32]* %128, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %129 = load i32, i32* getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 1), align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load volatile i8*, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  store volatile i8* %132, i8** %10, align 8
  br i1 false, label %133, label %134

133:                                              ; preds = %131, %127
  br label %135

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %134, %133
  %136 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %137 = load volatile i8*, i8** %5, align 8
  call void @png_free(%struct.png_struct_def* noundef %136, i8* noundef %137)
  call void @png_destroy_write_struct(%struct.png_struct_def** noundef @write_ptr, %struct.png_info_def** noundef null)
  %138 = load volatile i8*, i8** %10, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %140
  %142 = load volatile i8*, i8** %10, align 8
  store volatile i8* %142, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %143

143:                                              ; preds = %141
  %144 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %145 = getelementptr inbounds [48 x i32], [48 x i32]* %144, i64 0, i64 0
  call void @longjmp(i32* noundef %145, i32 noundef 1) #8
  unreachable

146:                                              ; preds = %135
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_print_warning(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load void (i32)*, void (i32)** @usr_print_cntrl, align 8
  call void %3(i32 noundef 11)
  %4 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %5 = load i8*, i8** %2, align 8
  call void (i8*, ...) %4(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i64 0, i64 0), i8* noundef %5)
  ret void
}

declare i32 @osys_unlink(i8* noundef) #4

declare i32 @osys_copy_attr(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_print_fsize_difference(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = sub i64 %13, %14
  store i64 %15, i64* %7, align 8
  br label %20

16:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub i64 %17, %18
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %24(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i64 0, i64 0))
  br label %49

25:                                               ; preds = %20
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %29(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i64 0, i64 0))
  br label %33

30:                                               ; preds = %25
  %31 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %32 = load i64, i64* %7, align 8
  call void (i8*, ...) %31(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i64 0, i64 0), i64 noundef %32)
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i64, i64* %4, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %40(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i64 0, i64 0))
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %4, align 8
  call void @opng_print_fsize_ratio(i64 noundef %41, i64 noundef %42)
  br label %43

43:                                               ; preds = %39, %36, %33
  %44 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i64 0, i64 0)
  call void (i8*, ...) %44(i8* noundef %48)
  br label %49

49:                                               ; preds = %43, %23
  ret void
}

declare noalias %struct.png_struct_def* @png_create_read_struct(i8* noundef, i8* noundef, void (%struct.png_struct_def*, i8*)* noundef, void (%struct.png_struct_def*, i8*)* noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_error(%struct.png_struct_def* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %7 = icmp eq %struct.png_struct_def* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %10 = or i32 %9, 8448
  store i32 %10, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %11

11:                                               ; preds = %8, %2
  br label %12

12:                                               ; preds = %11
  %13 = load i8*, i8** %4, align 8
  store volatile i8* %13, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %14

14:                                               ; preds = %12
  %15 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %16 = getelementptr inbounds [48 x i32], [48 x i32]* %15, i64 0, i64 0
  call void @longjmp(i32* noundef %16, i32 noundef 1) #8
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_warning(%struct.png_struct_def* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %7 = icmp eq %struct.png_struct_def* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %10 = or i32 %9, 8448
  store i32 %10, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i8*, i8** %4, align 8
  call void @opng_print_warning(i8* noundef %12)
  ret void
}

declare noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* noundef) #4

declare void @png_set_keep_unknown_chunks(%struct.png_struct_def* noundef, i32 noundef, i8* noundef, i32 noundef) #4

declare void @png_set_user_limits(%struct.png_struct_def* noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_init_read_data() #0 {
  ret void
}

declare void @png_set_read_fn(%struct.png_struct_def* noundef, i8* noundef, void (%struct.png_struct_def*, i8*, i64)* noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_read_data(%struct.png_struct_def* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.__sFILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %12 = call i8* @png_get_io_ptr(%struct.png_struct_def* noundef %11)
  %13 = bitcast i8* %12 to %struct.__sFILE*
  store %struct.__sFILE* %13, %struct.__sFILE** %7, align 8
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %15 = call i32 @png_get_io_state(%struct.png_struct_def* noundef %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 240
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %21 = call i64 @fread(i8* noundef %18, i64 noundef 1, i64 noundef %19, %struct.__sFILE* noundef %20)
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %25, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.66, i64 0, i64 0)) #8
  unreachable

26:                                               ; preds = %3
  %27 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %33(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %36 = call i64 @osys_ftello(%struct.__sFILE* noundef %35)
  %37 = sub nsw i64 %36, 8
  store i64 %37, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 2), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %39 = or i32 %38, 2
  store i32 %39, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %44 = or i32 %43, 4
  store i32 %44, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %45

45:                                               ; preds = %42, %34
  %46 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 2), align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %50 = or i32 %49, 1
  store i32 %50, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %57

51:                                               ; preds = %45
  %52 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 2), align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %55, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.68, i64 0, i64 0)) #8
  unreachable

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %48
  %58 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 2), align 8
  store i64 %58, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  br label %59

59:                                               ; preds = %57, %26
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 3), align 8
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66, %59
  %70 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %70(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.69, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 32
  br i1 %73, label %74, label %183

74:                                               ; preds = %71
  %75 = load i64, i64* %6, align 8
  %76 = icmp eq i64 %75, 8
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %78(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @memcmp(i8* noundef %82, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_IDAT, i64 0, i64 0), i64 noundef 4)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %145

85:                                               ; preds = %79
  %86 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %87 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %88 = icmp eq %struct.png_struct_def* %86, %87
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %90(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %85
  %92 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %93 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %94 = call i8** @png_get_rows(%struct.png_struct_def* noundef %92, %struct.png_info_def* noundef %93)
  %95 = icmp eq i8** %94, null
  br i1 %95, label %96, label %117

96:                                               ; preds = %91
  %97 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %100(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.72, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96
  %102 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %103 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %104 = call i32 @png_get_image_height(%struct.png_struct_def* noundef %102, %struct.png_info_def* noundef %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %193

107:                                              ; preds = %101
  %108 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %109 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  %110 = call i8** @pngx_malloc_rows(%struct.png_struct_def* noundef %108, %struct.png_info_def* noundef %109, i32 noundef 0)
  %111 = icmp ne i8** %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %113(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.73, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = load %struct.png_struct_def*, %struct.png_struct_def** @read_ptr, align 8
  %116 = load %struct.png_info_def*, %struct.png_info_def** @read_info_ptr, align 8
  call void @png_data_freer(%struct.png_struct_def* noundef %115, %struct.png_info_def* noundef %116, i32 noundef 2, i32 noundef 64)
  br label %120

117:                                              ; preds = %91
  %118 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %119 = or i32 %118, 128
  store i32 %119, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i8*, i8** %5, align 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 24
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = shl i32 %128, 16
  %130 = add i32 %124, %129
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = shl i32 %134, 8
  %136 = add i32 %130, %135
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 3
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = add i32 %136, %140
  %142 = zext i32 %141 to i64
  %143 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  %144 = add i64 %143, %142
  store i64 %144, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 5), align 8
  br label %182

145:                                              ; preds = %79
  %146 = load i8*, i8** %10, align 8
  %147 = call i32 @memcmp(i8* noundef %146, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_PLTE, i64 0, i64 0), i64 noundef 4)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @memcmp(i8* noundef %150, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_tRNS, i64 0, i64 0), i64 noundef 4)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %149, %145
  %154 = load i8*, i8** %5, align 8
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = shl i32 %156, 24
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = shl i32 %161, 16
  %163 = add i32 %157, %162
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 2
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = shl i32 %167, 8
  %169 = add i32 %163, %168
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 3
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = add i32 %169, %173
  %175 = add i32 %174, 12
  %176 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 9), align 8
  %177 = add i32 %176, %175
  store i32 %177, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 9), align 8
  br label %181

178:                                              ; preds = %149
  %179 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %180 = load i8*, i8** %10, align 8
  call void @opng_handle_chunk(%struct.png_struct_def* noundef %179, i8* noundef %180)
  br label %181

181:                                              ; preds = %178, %153
  br label %182

182:                                              ; preds = %181, %120
  br label %193

183:                                              ; preds = %71
  %184 = load i32, i32* %9, align 4
  %185 = icmp eq i32 %184, 128
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load i64, i64* %6, align 8
  %188 = icmp eq i64 %187, 4
  br i1 %188, label %191, label %189

189:                                              ; preds = %186
  %190 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %190(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %186
  br label %192

192:                                              ; preds = %191, %183
  br label %193

193:                                              ; preds = %106, %192, %182
  ret void
}

declare i32 @pngx_read_image(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8** noundef, i8** noundef) #4

declare i32 @osys_fgetsize(%struct.__sFILE* noundef, i64* noundef) #4

declare i32 @opng_validate_image(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #4

declare void @png_warning(%struct.png_struct_def* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_load_image_info(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.opng_image_struct* @image to i8*), i8 0, i64 160, i1 false)
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %8 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %9 = call i32 @png_get_IHDR(%struct.png_struct_def* noundef %7, %struct.png_info_def* noundef %8, i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 0), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 1), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 2), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 3), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 6), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 4), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 5))
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %11 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %12 = call i8** @png_get_rows(%struct.png_struct_def* noundef %10, %struct.png_info_def* noundef %11)
  store i8** %12, i8*** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 7), align 8
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %14 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %15 = call i32 @png_get_PLTE(%struct.png_struct_def* noundef %13, %struct.png_info_def* noundef %14, %struct.png_color_struct** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 8), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 9))
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %17 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %18 = call i32 @png_get_tRNS(%struct.png_struct_def* noundef %16, %struct.png_info_def* noundef %17, i8** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 15), i32* noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 16), %struct.png_color_16_struct** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17), align 8
  %22 = icmp ne %struct.png_color_16_struct* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17), align 8
  %25 = bitcast %struct.png_color_16_struct* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 18, i32 0), i8* align 2 %25, i64 10, i1 false)
  store %struct.png_color_16_struct* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 18), %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17), align 8
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %54

31:                                               ; preds = %27
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %33 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %34 = call i32 @png_get_bKGD(%struct.png_struct_def* noundef %32, %struct.png_info_def* noundef %33, %struct.png_color_16_struct** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 10))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 10), align 8
  %38 = bitcast %struct.png_color_16_struct* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 11, i32 0), i8* align 2 %38, i64 10, i1 false)
  store %struct.png_color_16_struct* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 11), %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 10), align 8
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %41 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %42 = call i32 @png_get_hIST(%struct.png_struct_def* noundef %40, %struct.png_info_def* noundef %41, i16** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 12))
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %44 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %45 = call i32 @png_get_sBIT(%struct.png_struct_def* noundef %43, %struct.png_info_def* noundef %44, %struct.png_color_8_struct** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 13))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 13), align 8
  %49 = bitcast %struct.png_color_8_struct* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 14, i32 0), i8* align 1 %49, i64 5, i1 false)
  store %struct.png_color_8_struct* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 14), %struct.png_color_8_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 13), align 8
  br label %50

50:                                               ; preds = %47, %39
  %51 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %52 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %53 = call i32 @png_get_unknown_chunks(%struct.png_struct_def* noundef %51, %struct.png_info_def* noundef %52, %struct.png_unknown_chunk_t** noundef getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 19))
  store i32 %53, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 20), align 8
  br label %54

54:                                               ; preds = %50, %30
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_print_image_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  %14 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 0), align 8
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 1), align 4
  %18 = zext i32 %17 to i64
  call void (i8*, ...) %14(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i64 0, i64 0), i64 noundef %16, i64 noundef %18)
  br label %19

19:                                               ; preds = %13, %4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %26(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  store i32 1, i32* %10, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 3), align 4
  %29 = and i32 %28, 7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* @opng_print_image_info.type_channels, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 2), align 8
  call void (i8*, ...) %36(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0), i32 noundef %37, i32 noundef %38)
  br label %48

39:                                               ; preds = %27
  %40 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 2), align 8
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 2), align 8
  call void (i8*, ...) %43(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i64 0, i64 0), i32 noundef %44)
  br label %47

45:                                               ; preds = %39
  %46 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %46(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48, %19
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %97

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %56(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  store i32 1, i32* %10, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 3), align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 9), align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %65(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0))
  br label %69

66:                                               ; preds = %61
  %67 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 9), align 8
  call void (i8*, ...) %67(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 noundef %68)
  br label %69

69:                                               ; preds = %66, %64
  %70 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 16), align 8
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 16), align 8
  call void (i8*, ...) %73(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i64 0, i64 0), i32 noundef %74)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %76(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0))
  br label %96

77:                                               ; preds = %57
  %78 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 3), align 4
  %80 = and i32 %79, 2
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i64 0, i64 0)
  call void (i8*, ...) %78(i8* noundef %83)
  %84 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 3), align 4
  %85 = and i32 %84, 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %88(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0))
  br label %95

89:                                               ; preds = %77
  %90 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17), align 8
  %91 = icmp ne %struct.png_color_16_struct* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %93(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  br label %95

95:                                               ; preds = %94, %87
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96, %49
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 6), align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %107(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103
  %109 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  call void (i8*, ...) %109(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %100
  br label %111

111:                                              ; preds = %110, %97
  ret void
}

declare i32 @opng_reduce_image(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #4

declare void @png_data_freer(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) #4

declare void @png_destroy_read_struct(%struct.png_struct_def** noundef, %struct.png_info_def** noundef, %struct.png_info_def** noundef) #4

declare i8* @png_get_io_ptr(%struct.png_struct_def* noundef) #4

declare i32 @png_get_io_state(%struct.png_struct_def* noundef) #4

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #4

; Function Attrs: noreturn
declare void @png_error(%struct.png_struct_def* noundef, i8* noundef) #5

declare i64 @osys_ftello(%struct.__sFILE* noundef) #4

declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

declare i8** @png_get_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #4

declare i32 @png_get_image_height(%struct.png_struct_def* noundef, %struct.png_info_def* noundef) #4

declare i8** @pngx_malloc_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_handle_chunk(%struct.png_struct_def* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.png_struct_def*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @opng_is_image_chunk(i8* noundef %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %63

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 25), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %15 = or i32 %14, 192
  store i32 %15, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %17 = load i8*, i8** %4, align 8
  call void @opng_set_keep_unknown_chunk(%struct.png_struct_def* noundef %16, i32 noundef 1, i8* noundef %17)
  br label %63

18:                                               ; preds = %10
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @memcmp(i8* noundef %19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_bKGD, i64 0, i64 0), i64 noundef 4)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @memcmp(i8* noundef %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_hIST, i64 0, i64 0), i64 noundef 4)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @memcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_sBIT, i64 0, i64 0), i64 noundef 4)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22, %18
  br label %63

31:                                               ; preds = %26
  store i32 3, i32* %5, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @memcmp(i8* noundef %32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_dSIG, i64 0, i64 0), i64 noundef 4)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %37 = or i32 %36, 8
  store i32 %37, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %59

38:                                               ; preds = %31
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @opng_is_apng_chunk(i8* noundef %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %44 = or i32 %43, 32
  store i32 %44, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @memcmp(i8* noundef %45, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_fdAT, i64 0, i64 0), i64 noundef 4)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %50 = or i32 %49, 16
  store i32 %50, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  br label %51

51:                                               ; preds = %48, %42
  %52 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  %56 = or i32 %55, 128
  store i32 %56, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 0), align 8
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %58, %35
  %60 = load %struct.png_struct_def*, %struct.png_struct_def** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i8*, i8** %4, align 8
  call void @opng_set_keep_unknown_chunk(%struct.png_struct_def* noundef %60, i32 noundef %61, i8* noundef %62)
  br label %63

63:                                               ; preds = %59, %30, %13, %9
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @opng_is_image_chunk(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @memcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_tRNS, i64 0, i64 0), i64 noundef 4)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %15, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_set_keep_unknown_chunk(%struct.png_struct_def* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [5 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %9 = load i8*, i8** %6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %9, i64 4, i1 false)
  %10 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 4
  store i8 0, i8* %10, align 1
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %13 = call i32 @png_handle_as_unknown(%struct.png_struct_def* noundef %11, i8* noundef %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  call void @png_set_keep_unknown_chunks(%struct.png_struct_def* noundef %16, i32 noundef %17, i8* noundef %18, i32 noundef 1)
  br label %19

19:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @opng_is_apng_chunk(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @memcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_acTL, i64 0, i64 0), i64 noundef 4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @memcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_fcTL, i64 0, i64 0), i64 noundef 4)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @memcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_fdAT, i64 0, i64 0), i64 noundef 4)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7, %1
  store i32 1, i32* %2, align 4
  br label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare i32 @png_handle_as_unknown(%struct.png_struct_def* noundef, i8* noundef) #4

declare i32 @png_get_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef) #4

declare i32 @png_get_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_struct** noundef, i32* noundef) #4

declare i32 @png_get_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8** noundef, i32* noundef, %struct.png_color_16_struct** noundef) #4

declare i32 @png_get_bKGD(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_16_struct** noundef) #4

declare i32 @png_get_hIST(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i16** noundef) #4

declare i32 @png_get_sBIT(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_8_struct** noundef) #4

declare i32 @png_get_unknown_chunks(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_unknown_chunk_t** noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_init_iteration(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %10, %11
  %13 = load i32*, i32** %8, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20
  store volatile i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.91, i64 0, i64 0), i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %22

22:                                               ; preds = %21
  %23 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %24 = getelementptr inbounds [48 x i32], [48 x i32]* %23, i64 0, i64 0
  call void @longjmp(i32* noundef %24, i32 noundef 1) #8
  unreachable

25:                                               ; preds = %17, %4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 18), align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29, %25
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @opng_rangeset_string_to_bitset(i8* noundef %33, i64* noundef null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %35, %36
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %32, %29
  ret void
}

declare i32 @opng_bitset_count(i32 noundef) #4

declare i32 @opng_rangeset_string_to_bitset(i8* noundef, i64* noundef) #4

declare i32 @opng_bitset_find_first(i32 noundef) #4

declare noalias %struct.png_struct_def* @png_create_write_struct(i8* noundef, i8* noundef, void (%struct.png_struct_def*, i8*)* noundef, void (%struct.png_struct_def*, i8*)* noundef) #4

declare void @png_set_compression_level(%struct.png_struct_def* noundef, i32 noundef) #4

declare void @png_set_compression_mem_level(%struct.png_struct_def* noundef, i32 noundef) #4

declare void @png_set_compression_strategy(%struct.png_struct_def* noundef, i32 noundef) #4

declare void @png_set_filter(%struct.png_struct_def* noundef, i32 noundef, i32 noundef) #4

declare void @png_set_compression_window_bits(%struct.png_struct_def* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_store_image_info(%struct.png_struct_def* noundef %0, %struct.png_info_def* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca %struct.png_info_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store %struct.png_info_def* %1, %struct.png_info_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8**, i8*** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 7), align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %11(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %3
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %14 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 0), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 1), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 2), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 3), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 6), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 4), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 5), align 4
  call void @png_set_IHDR(%struct.png_struct_def* noundef %13, %struct.png_info_def* noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21)
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** @write_ptr, align 8
  %23 = load %struct.png_info_def*, %struct.png_info_def** @write_info_ptr, align 8
  %24 = load i8**, i8*** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 7), align 8
  call void @png_set_rows(%struct.png_struct_def* noundef %22, %struct.png_info_def* noundef %23, i8** noundef %24)
  %25 = load %struct.png_color_struct*, %struct.png_color_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 8), align 8
  %26 = icmp ne %struct.png_color_struct* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %12
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %29 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %30 = load %struct.png_color_struct*, %struct.png_color_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 8), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 9), align 8
  call void @png_set_PLTE(%struct.png_struct_def* noundef %28, %struct.png_info_def* noundef %29, %struct.png_color_struct* noundef %30, i32 noundef %31)
  br label %32

32:                                               ; preds = %27, %12
  %33 = load i8*, i8** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 15), align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17), align 8
  %37 = icmp ne %struct.png_color_16_struct* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35, %32
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %40 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %41 = load i8*, i8** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 15), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 16), align 8
  %43 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 17), align 8
  call void @png_set_tRNS(%struct.png_struct_def* noundef %39, %struct.png_info_def* noundef %40, i8* noundef %41, i32 noundef %42, %struct.png_color_16_struct* noundef %43)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %96

48:                                               ; preds = %44
  %49 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 10), align 8
  %50 = icmp ne %struct.png_color_16_struct* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %53 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %54 = load %struct.png_color_16_struct*, %struct.png_color_16_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 10), align 8
  call void @png_set_bKGD(%struct.png_struct_def* noundef %52, %struct.png_info_def* noundef %53, %struct.png_color_16_struct* noundef %54)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i16*, i16** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 12), align 8
  %57 = icmp ne i16* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %60 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %61 = load i16*, i16** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 12), align 8
  call void @png_set_hIST(%struct.png_struct_def* noundef %59, %struct.png_info_def* noundef %60, i16* noundef %61)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 13), align 8
  %64 = icmp ne %struct.png_color_8_struct* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %67 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %68 = load %struct.png_color_8_struct*, %struct.png_color_8_struct** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 13), align 8
  call void @png_set_sBIT(%struct.png_struct_def* noundef %66, %struct.png_info_def* noundef %67, %struct.png_color_8_struct* noundef %68)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 20), align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %74 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %75 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 19), align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 20), align 8
  call void @png_set_unknown_chunks(%struct.png_struct_def* noundef %73, %struct.png_info_def* noundef %74, %struct.png_unknown_chunk_t* noundef %75, i32 noundef %76)
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %92, %72
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 20), align 8
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %83 = load %struct.png_info_def*, %struct.png_info_def** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** getelementptr inbounds (%struct.opng_image_struct, %struct.opng_image_struct* @image, i32 0, i32 19), align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %85, i64 %87
  %89 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %88, i32 0, i32 3
  %90 = load i8, i8* %89, align 8
  %91 = zext i8 %90 to i32
  call void @png_set_unknown_chunk_location(%struct.png_struct_def* noundef %82, %struct.png_info_def* noundef %83, i32 noundef %84, i32 noundef %91)
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %77, !llvm.loop !26

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %47, %95, %69
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_init_write_data() #0 {
  store i64 0, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 10), align 4
  store i64 0, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  ret void
}

declare void @png_set_write_fn(%struct.png_struct_def* noundef, i8* noundef, void (%struct.png_struct_def*, i8*, i64)* noundef, void (%struct.png_struct_def*)* noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_write_data(%struct.png_struct_def* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.png_struct_def*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.__sFILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [4 x i8], align 1
  store %struct.png_struct_def* %0, %struct.png_struct_def** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %13 = call i8* @png_get_io_ptr(%struct.png_struct_def* noundef %12)
  %14 = bitcast i8* %13 to %struct.__sFILE*
  store %struct.__sFILE* %14, %struct.__sFILE** %7, align 8
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  %16 = call i32 @png_get_io_state(%struct.png_struct_def* noundef %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 240
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %3
  %26 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %26(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.69, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %116

30:                                               ; preds = %27
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %34(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.112, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @opng_allow_chunk(i8* noundef %38)
  store i32 %39, i32* @opng_write_data.allow_crt_chunk, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @memcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_IDAT, i64 0, i64 0), i64 noundef 4)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %35
  store i32 1, i32* @opng_write_data.crt_chunk_is_idat, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 24
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 16
  %53 = add i32 %47, %52
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 8
  %59 = add i32 %53, %58
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = add i32 %59, %63
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %68 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %69 = icmp eq %struct.__sFILE* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %43
  %71 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 8), align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74
  store volatile i8* null, i8** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 2, i32 0), align 8
  br label %76

76:                                               ; preds = %75
  %77 = load [48 x i32]*, [48 x i32]** getelementptr inbounds ([1 x %struct.exception_context], [1 x %struct.exception_context]* @the_exception_context, i64 0, i64 0, i32 0), align 8
  %78 = getelementptr inbounds [48 x i32], [48 x i32]* %77, i64 0, i64 0
  call void @longjmp(i32* noundef %78, i32 noundef 1) #8
  unreachable

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %43
  br label %115

81:                                               ; preds = %35
  store i32 0, i32* @opng_write_data.crt_chunk_is_idat, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @memcmp(i8* noundef %82, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_PLTE, i64 0, i64 0), i64 noundef 4)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @memcmp(i8* noundef %86, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_tRNS, i64 0, i64 0), i64 noundef 4)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %85, %81
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 24
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 16
  %99 = add i32 %93, %98
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 8
  %105 = add i32 %99, %104
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 3
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = add i32 %105, %109
  %111 = add i32 %110, 12
  %112 = load i32, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 10), align 4
  %113 = add i32 %112, %111
  store i32 %113, i32* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 10), align 4
  br label %114

114:                                              ; preds = %89, %85
  br label %115

115:                                              ; preds = %114, %80
  br label %126

116:                                              ; preds = %27
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 128
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i64, i64* %6, align 8
  %121 = icmp eq i64 %120, 4
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %123(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.113, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %119
  br label %125

125:                                              ; preds = %124, %116
  br label %126

126:                                              ; preds = %125, %115
  %127 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %128 = icmp eq %struct.__sFILE* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %234

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 16
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32, i32* @opng_write_data.allow_crt_chunk, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  br label %234

137:                                              ; preds = %133, %130
  %138 = load i32, i32* %9, align 4
  switch i32 %138, label %221 [
    i32 32, label %139
    i32 64, label %204
    i32 128, label %216
  ]

139:                                              ; preds = %137
  %140 = load i32, i32* @opng_write_data.crt_chunk_is_idat, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %139
  %143 = load i64, i64* @opng_write_data.crt_idat_offset, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  %146 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %147 = call i64 @osys_ftello(%struct.__sFILE* noundef %146)
  store i64 %147, i64* @opng_write_data.crt_idat_offset, align 8
  %148 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %149 = icmp ugt i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  store i64 %151, i64* @opng_write_data.crt_idat_size, align 8
  br label %154

152:                                              ; preds = %145
  %153 = load i64, i64* %6, align 8
  store i64 %153, i64* @opng_write_data.crt_idat_size, align 8
  br label %154

154:                                              ; preds = %152, %150
  %155 = load i8*, i8** %5, align 8
  %156 = load i64, i64* @opng_write_data.crt_idat_size, align 8
  %157 = trunc i64 %156 to i32
  call void @png_save_uint_32(i8* noundef %155, i32 noundef %157)
  %158 = call i64 @crc32(i64 noundef 0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_IDAT, i64 0, i64 0), i32 noundef 4)
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* @opng_write_data.crt_idat_crc, align 4
  br label %161

160:                                              ; preds = %142
  br label %234

161:                                              ; preds = %154
  br label %203

162:                                              ; preds = %139
  %163 = load i64, i64* @opng_write_data.crt_idat_offset, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %202

165:                                              ; preds = %162
  %166 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %167 = load i32, i32* @opng_write_data.crt_idat_crc, align 4
  call void @png_save_uint_32(i8* noundef %166, i32 noundef %167)
  %168 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %169 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %170 = call i64 @"\01_fwrite"(i8* noundef %168, i64 noundef 1, i64 noundef 4, %struct.__sFILE* noundef %169)
  %171 = icmp ne i64 %170, 4
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %172, %165
  %174 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  %175 = add i64 %174, 4
  store i64 %175, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  %176 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %177 = load i64, i64* @opng_write_data.crt_idat_size, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %173
  %180 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 7), align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = load void (i8*)*, void (i8*)** @usr_panic, align 8
  call void %183(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.114, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %179
  %185 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  call void @opng_check_idat_size(i64 noundef %185)
  %186 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %187 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 6), align 8
  %188 = trunc i64 %187 to i32
  call void @png_save_uint_32(i8* noundef %186, i32 noundef %188)
  %189 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %190 = load i64, i64* @opng_write_data.crt_idat_offset, align 8
  %191 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %192 = call i64 @osys_fwrite_at(%struct.__sFILE* noundef %189, i64 noundef %190, i32 noundef 0, i8* noundef %191, i64 noundef 4)
  %193 = icmp ne i64 %192, 4
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  store i32 0, i32* %8, align 4
  br label %195

195:                                              ; preds = %194, %184
  br label %196

196:                                              ; preds = %195, %173
  %197 = load i32, i32* %8, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %200, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.115, i64 0, i64 0)) #8
  unreachable

201:                                              ; preds = %196
  store i64 0, i64* @opng_write_data.crt_idat_offset, align 8
  br label %202

202:                                              ; preds = %201, %162
  br label %203

203:                                              ; preds = %202, %161
  br label %221

204:                                              ; preds = %137
  %205 = load i32, i32* @opng_write_data.crt_chunk_is_idat, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load i32, i32* @opng_write_data.crt_idat_crc, align 4
  %209 = zext i32 %208 to i64
  %210 = load i8*, i8** %5, align 8
  %211 = load i64, i64* %6, align 8
  %212 = trunc i64 %211 to i32
  %213 = call i64 @crc32(i64 noundef %209, i8* noundef %210, i32 noundef %212)
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* @opng_write_data.crt_idat_crc, align 4
  br label %215

215:                                              ; preds = %207, %204
  br label %221

216:                                              ; preds = %137
  %217 = load i32, i32* @opng_write_data.crt_chunk_is_idat, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  br label %234

220:                                              ; preds = %216
  br label %221

221:                                              ; preds = %137, %220, %215, %203
  %222 = load i8*, i8** %5, align 8
  %223 = load i64, i64* %6, align 8
  %224 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %225 = call i64 @"\01_fwrite"(i8* noundef %222, i64 noundef 1, i64 noundef %223, %struct.__sFILE* noundef %224)
  %226 = load i64, i64* %6, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = load %struct.png_struct_def*, %struct.png_struct_def** %4, align 8
  call void @png_error(%struct.png_struct_def* noundef %229, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.116, i64 0, i64 0)) #8
  unreachable

230:                                              ; preds = %221
  %231 = load i64, i64* %6, align 8
  %232 = load i64, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  %233 = add i64 %232, %231
  store i64 %233, i64* getelementptr inbounds (%struct.opng_process_struct, %struct.opng_process_struct* @process, i32 0, i32 4), align 8
  br label %234

234:                                              ; preds = %230, %219, %160, %136, %129
  ret void
}

declare void @png_write_png(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i8* noundef) #4

declare void @png_destroy_write_struct(%struct.png_struct_def** noundef, %struct.png_info_def** noundef) #4

declare void @png_set_IHDR(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare void @png_set_rows(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8** noundef) #4

declare void @png_set_PLTE(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_struct* noundef, i32 noundef) #4

declare void @png_set_tRNS(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i8* noundef, i32 noundef, %struct.png_color_16_struct* noundef) #4

declare void @png_set_bKGD(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_16_struct* noundef) #4

declare void @png_set_hIST(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i16* noundef) #4

declare void @png_set_sBIT(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_color_8_struct* noundef) #4

declare void @png_set_unknown_chunks(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, %struct.png_unknown_chunk_t* noundef, i32 noundef) #4

declare void @png_set_unknown_chunk_location(%struct.png_struct_def* noundef, %struct.png_info_def* noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @opng_allow_chunk(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @opng_is_image_chunk(i8* noundef %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 25), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %26

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @memcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @sig_dSIG, i64 0, i64 0), i64 noundef 4)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %26

17:                                               ; preds = %12
  %18 = load i32, i32* getelementptr inbounds (%struct.opng_options, %struct.opng_options* @options, i32 0, i32 24), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @opng_is_apng_chunk(i8* noundef %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %26

25:                                               ; preds = %20, %17
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %16, %11, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare void @png_save_uint_32(i8* noundef, i32 noundef) #4

declare i64 @crc32(i64 noundef, i8* noundef, i32 noundef) #4

declare i64 @"\01_fwrite"(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #4

declare i64 @osys_fwrite_at(%struct.__sFILE* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef) #4

declare void @png_write_sig(%struct.png_struct_def* noundef) #4

declare void @png_free(%struct.png_struct_def* noundef, i8* noundef) #4

declare noalias i8* @png_malloc(%struct.png_struct_def* noundef, i64 noundef) #4

declare void @png_write_chunk(%struct.png_struct_def* noundef, i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_print_fsize_ratio(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [32 x i8], align 1
  %6 = alloca %struct.opng_ulratio, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.opng_ulratio, %struct.opng_ulratio* %6, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.opng_ulratio, %struct.opng_ulratio* %6, i32 0, i32 1
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %13 = call i32 @opng_ulratio_to_factor_string(i8* noundef %12, i64 noundef 32, %struct.opng_ulratio* noundef %6)
  store i32 %13, i32* %7, align 4
  %14 = load void (i8*, ...)*, void (i8*, ...)** @usr_printf, align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i64 0, i64 0)
  call void (i8*, ...) %14(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i64 0, i64 0), i8* noundef %15, i8* noundef %19)
  ret void
}

declare i32 @opng_ulratio_to_factor_string(i8* noundef, i64 noundef, %struct.opng_ulratio* noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @opng_free(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %3)
  ret void
}

declare void @free(i8* noundef) #4

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { returns_twice "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #7 = { returns_twice }
attributes #8 = { noreturn }
attributes #9 = { nounwind }

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
!9 = !{!"clang version 14.0.0"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
