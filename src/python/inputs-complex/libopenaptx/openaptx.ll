; ModuleID = 'openaptx.c'
source_filename = "openaptx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aptx_tables = type { i32*, i32*, i32*, i16*, i32, i32, i32 }
%struct.aptx_filter_signal = type { [32 x i32], i8 }
%struct.aptx_channel = type { i32, i32, [4 x i32], %struct.aptx_QMF_analysis, [4 x %struct.aptx_quantize], [4 x %struct.aptx_invert_quantize], [4 x %struct.aptx_prediction] }
%struct.aptx_QMF_analysis = type { [2 x %struct.aptx_filter_signal], [2 x [2 x %struct.aptx_filter_signal]] }
%struct.aptx_quantize = type { i32, i32, i32 }
%struct.aptx_invert_quantize = type { i32, i32, i32 }
%struct.aptx_prediction = type { [2 x i32], [2 x i32], [24 x i32], i32, [48 x i32], i32, i32, i32 }
%struct.aptx_context = type { i64, i64, [2 x %struct.aptx_channel], i8, i8, i8, i8, i8, [6 x i8] }

@quantize_intervals_LF = internal constant [65 x i32] [i32 -9948, i32 9948, i32 29860, i32 49808, i32 69822, i32 89926, i32 110144, i32 130502, i32 151026, i32 171738, i32 192666, i32 213832, i32 235264, i32 256982, i32 279014, i32 301384, i32 324118, i32 347244, i32 370790, i32 394782, i32 419250, i32 444226, i32 469742, i32 495832, i32 522536, i32 549890, i32 577936, i32 606720, i32 636290, i32 666700, i32 698006, i32 730270, i32 763562, i32 797958, i32 833538, i32 870398, i32 908640, i32 948376, i32 989740, i32 1032874, i32 1077948, i32 1125150, i32 1174700, i32 1226850, i32 1281900, i32 1340196, i32 1402156, i32 1468282, i32 1539182, i32 1615610, i32 1698514, i32 1789098, i32 1888944, i32 2000168, i32 2125700, i32 2269750, i32 2438670, i32 2642660, i32 2899462, i32 3243240, i32 3746078, i32 4535138, i32 5664098, i32 7102424, i32 8897462], align 16
@invert_quantize_dither_factors_LF = internal constant [65 x i32] [i32 9948, i32 9948, i32 9962, i32 9988, i32 10026, i32 10078, i32 10142, i32 10218, i32 10306, i32 10408, i32 10520, i32 10646, i32 10784, i32 10934, i32 11098, i32 11274, i32 11462, i32 11664, i32 11880, i32 12112, i32 12358, i32 12618, i32 12898, i32 13194, i32 13510, i32 13844, i32 14202, i32 14582, i32 14988, i32 15422, i32 15884, i32 16380, i32 16912, i32 17484, i32 18098, i32 18762, i32 19480, i32 20258, i32 21106, i32 22030, i32 23044, i32 24158, i32 25390, i32 26760, i32 28290, i32 30008, i32 31954, i32 34172, i32 36728, i32 39700, i32 43202, i32 47382, i32 52462, i32 58762, i32 66770, i32 77280, i32 91642, i32 112348, i32 144452, i32 199326, i32 303512, i32 485546, i32 643414, i32 794914, i32 1000124], align 16
@quantize_dither_factors_LF = internal constant [65 x i32] [i32 0, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 26, i32 28, i32 32, i32 35, i32 38, i32 41, i32 44, i32 47, i32 51, i32 54, i32 58, i32 62, i32 65, i32 70, i32 74, i32 79, i32 84, i32 90, i32 95, i32 102, i32 109, i32 116, i32 124, i32 133, i32 143, i32 154, i32 166, i32 180, i32 195, i32 212, i32 231, i32 254, i32 279, i32 308, i32 343, i32 383, i32 430, i32 487, i32 555, i32 639, i32 743, i32 876, i32 1045, i32 1270, i32 1575, i32 2002, i32 2628, i32 3591, i32 5177, i32 8026, i32 13719, i32 26047, i32 45509, i32 39467, i32 37875, i32 51303, i32 0], align 16
@quantize_factor_select_offset_LF = internal constant [65 x i16] [i16 0, i16 -21, i16 -19, i16 -17, i16 -15, i16 -12, i16 -10, i16 -8, i16 -6, i16 -4, i16 -1, i16 1, i16 3, i16 6, i16 8, i16 10, i16 13, i16 15, i16 18, i16 20, i16 23, i16 26, i16 29, i16 31, i16 34, i16 37, i16 40, i16 43, i16 47, i16 50, i16 53, i16 57, i16 60, i16 64, i16 68, i16 72, i16 76, i16 80, i16 85, i16 89, i16 94, i16 99, i16 105, i16 110, i16 116, i16 123, i16 129, i16 136, i16 144, i16 152, i16 161, i16 171, i16 182, i16 194, i16 207, i16 223, i16 241, i16 263, i16 291, i16 328, i16 382, i16 467, i16 522, i16 522, i16 522], align 16
@quantize_intervals_MLF = internal constant [9 x i32] [i32 -89806, i32 89806, i32 278502, i32 494338, i32 759442, i32 1113112, i32 1652322, i32 2720256, i32 5190186], align 16
@invert_quantize_dither_factors_MLF = internal constant [9 x i32] [i32 89806, i32 89806, i32 98890, i32 116946, i32 148158, i32 205512, i32 333698, i32 734236, i32 1735696], align 16
@quantize_dither_factors_MLF = internal constant [9 x i32] [i32 0, i32 2271, i32 4514, i32 7803, i32 14339, i32 32047, i32 100135, i32 250365, i32 0], align 16
@quantize_factor_select_offset_MLF = internal constant [9 x i16] [i16 0, i16 -14, i16 6, i16 29, i16 58, i16 96, i16 154, i16 270, i16 521], align 16
@quantize_intervals_MHF = internal constant [3 x i32] [i32 -194080, i32 194080, i32 890562], align 4
@invert_quantize_dither_factors_MHF = internal constant [3 x i32] [i32 194080, i32 194080, i32 502402], align 4
@quantize_dither_factors_MHF = internal constant [3 x i32] [i32 0, i32 77081, i32 0], align 4
@quantize_factor_select_offset_MHF = internal constant [3 x i16] [i16 0, i16 -33, i16 136], align 2
@quantize_intervals_HF = internal constant [5 x i32] [i32 -163006, i32 163006, i32 542708, i32 1120554, i32 2669238], align 16
@invert_quantize_dither_factors_HF = internal constant [5 x i32] [i32 163006, i32 163006, i32 216698, i32 361148, i32 1187538], align 16
@quantize_dither_factors_HF = internal constant [5 x i32] [i32 0, i32 13423, i32 36113, i32 206598, i32 0], align 16
@quantize_factor_select_offset_HF = internal constant [5 x i16] [i16 0, i16 -8, i16 33, i16 95, i16 262], align 2
@hd_quantize_intervals_LF = internal constant [257 x i32] [i32 -2436, i32 2436, i32 7308, i32 12180, i32 17054, i32 21930, i32 26806, i32 31686, i32 36566, i32 41450, i32 46338, i32 51230, i32 56124, i32 61024, i32 65928, i32 70836, i32 75750, i32 80670, i32 85598, i32 90530, i32 95470, i32 100418, i32 105372, i32 110336, i32 115308, i32 120288, i32 125278, i32 130276, i32 135286, i32 140304, i32 145334, i32 150374, i32 155426, i32 160490, i32 165566, i32 170654, i32 175756, i32 180870, i32 185998, i32 191138, i32 196294, i32 201466, i32 206650, i32 211850, i32 217068, i32 222300, i32 227548, i32 232814, i32 238096, i32 243396, i32 248714, i32 254050, i32 259406, i32 264778, i32 270172, i32 275584, i32 281018, i32 286470, i32 291944, i32 297440, i32 302956, i32 308496, i32 314056, i32 319640, i32 325248, i32 330878, i32 336532, i32 342212, i32 347916, i32 353644, i32 359398, i32 365178, i32 370986, i32 376820, i32 382680, i32 388568, i32 394486, i32 400430, i32 406404, i32 412408, i32 418442, i32 424506, i32 430600, i32 436726, i32 442884, i32 449074, i32 455298, i32 461554, i32 467844, i32 474168, i32 480528, i32 486922, i32 493354, i32 499820, i32 506324, i32 512866, i32 519446, i32 526064, i32 532722, i32 539420, i32 546160, i32 552940, i32 559760, i32 566624, i32 573532, i32 580482, i32 587478, i32 594520, i32 601606, i32 608740, i32 615920, i32 623148, i32 630426, i32 637754, i32 645132, i32 652560, i32 660042, i32 667576, i32 675164, i32 682808, i32 690506, i32 698262, i32 706074, i32 713946, i32 721876, i32 729868, i32 737920, i32 746036, i32 754216, i32 762460, i32 770770, i32 779148, i32 787594, i32 796108, i32 804694, i32 813354, i32 822086, i32 830892, i32 839774, i32 848736, i32 857776, i32 866896, i32 876100, i32 885386, i32 894758, i32 904218, i32 913766, i32 923406, i32 933138, i32 942964, i32 952886, i32 962908, i32 973030, i32 983254, i32 993582, i32 1004020, i32 1014566, i32 1025224, i32 1035996, i32 1046886, i32 1057894, i32 1069026, i32 1080284, i32 1091670, i32 1103186, i32 1114838, i32 1126628, i32 1138558, i32 1150634, i32 1162858, i32 1175236, i32 1187768, i32 1200462, i32 1213320, i32 1226346, i32 1239548, i32 1252928, i32 1266490, i32 1280242, i32 1294188, i32 1308334, i32 1322688, i32 1337252, i32 1352034, i32 1367044, i32 1382284, i32 1397766, i32 1413494, i32 1429478, i32 1445728, i32 1462252, i32 1479058, i32 1496158, i32 1513562, i32 1531280, i32 1549326, i32 1567710, i32 1586446, i32 1605550, i32 1625034, i32 1644914, i32 1665208, i32 1685932, i32 1707108, i32 1728754, i32 1750890, i32 1773542, i32 1796732, i32 1820488, i32 1844840, i32 1869816, i32 1895452, i32 1921780, i32 1948842, i32 1976680, i32 2005338, i32 2034868, i32 2065322, i32 2096766, i32 2129260, i32 2162880, i32 2197708, i32 2233832, i32 2271352, i32 2310384, i32 2351050, i32 2393498, i32 2437886, i32 2484404, i32 2533262, i32 2584710, i32 2639036, i32 2696578, i32 2757738, i32 2822998, i32 2892940, i32 2968278, i32 3049896, i32 3138912, i32 3236760, i32 3345312, i32 3467068, i32 3605434, i32 3765154, i32 3952904, i32 4177962, i32 4452178, i32 4787134, i32 5187290, i32 5647128, i32 6159120, i32 6720518, i32 7332904, i32 8000032, i32 8726664, i32 9518152, i32 10380372], align 16
@hd_invert_quantize_dither_factors_LF = internal constant [257 x i32] [i32 2436, i32 2436, i32 2436, i32 2436, i32 2438, i32 2438, i32 2438, i32 2440, i32 2442, i32 2442, i32 2444, i32 2446, i32 2448, i32 2450, i32 2454, i32 2456, i32 2458, i32 2462, i32 2464, i32 2468, i32 2472, i32 2476, i32 2480, i32 2484, i32 2488, i32 2492, i32 2498, i32 2502, i32 2506, i32 2512, i32 2518, i32 2524, i32 2528, i32 2534, i32 2540, i32 2548, i32 2554, i32 2560, i32 2568, i32 2574, i32 2582, i32 2588, i32 2596, i32 2604, i32 2612, i32 2620, i32 2628, i32 2636, i32 2646, i32 2654, i32 2664, i32 2672, i32 2682, i32 2692, i32 2702, i32 2712, i32 2722, i32 2732, i32 2742, i32 2752, i32 2764, i32 2774, i32 2786, i32 2798, i32 2810, i32 2822, i32 2834, i32 2846, i32 2858, i32 2870, i32 2884, i32 2896, i32 2910, i32 2924, i32 2938, i32 2952, i32 2966, i32 2980, i32 2994, i32 3010, i32 3024, i32 3040, i32 3056, i32 3070, i32 3086, i32 3104, i32 3120, i32 3136, i32 3154, i32 3170, i32 3188, i32 3206, i32 3224, i32 3242, i32 3262, i32 3280, i32 3300, i32 3320, i32 3338, i32 3360, i32 3380, i32 3400, i32 3422, i32 3442, i32 3464, i32 3486, i32 3508, i32 3532, i32 3554, i32 3578, i32 3602, i32 3626, i32 3652, i32 3676, i32 3702, i32 3728, i32 3754, i32 3780, i32 3808, i32 3836, i32 3864, i32 3892, i32 3920, i32 3950, i32 3980, i32 4010, i32 4042, i32 4074, i32 4106, i32 4138, i32 4172, i32 4206, i32 4240, i32 4276, i32 4312, i32 4348, i32 4384, i32 4422, i32 4460, i32 4500, i32 4540, i32 4580, i32 4622, i32 4664, i32 4708, i32 4752, i32 4796, i32 4842, i32 4890, i32 4938, i32 4986, i32 5036, i32 5086, i32 5138, i32 5192, i32 5246, i32 5300, i32 5358, i32 5416, i32 5474, i32 5534, i32 5596, i32 5660, i32 5726, i32 5792, i32 5860, i32 5930, i32 6002, i32 6074, i32 6150, i32 6226, i32 6306, i32 6388, i32 6470, i32 6556, i32 6644, i32 6736, i32 6828, i32 6924, i32 7022, i32 7124, i32 7228, i32 7336, i32 7448, i32 7562, i32 7680, i32 7802, i32 7928, i32 8058, i32 8192, i32 8332, i32 8476, i32 8624, i32 8780, i32 8940, i32 9106, i32 9278, i32 9458, i32 9644, i32 9840, i32 10042, i32 10252, i32 10472, i32 10702, i32 10942, i32 11194, i32 11458, i32 11734, i32 12024, i32 12328, i32 12648, i32 12986, i32 13342, i32 13720, i32 14118, i32 14540, i32 14990, i32 15466, i32 15976, i32 16520, i32 17102, i32 17726, i32 18398, i32 19124, i32 19908, i32 20760, i32 21688, i32 22702, i32 23816, i32 25044, i32 26404, i32 27922, i32 29622, i32 31540, i32 33720, i32 36222, i32 39116, i32 42502, i32 46514, i32 51334, i32 57218, i32 64536, i32 73830, i32 85890, i32 101860, i32 123198, i32 151020, i32 183936, i32 216220, i32 243618, i32 268374, i32 293022, i32 319362, i32 347768, i32 378864, i32 412626, i32 449596], align 16
@hd_quantize_dither_factors_LF = internal constant [256 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 2, i32 2, i32 2, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10, i32 10, i32 11, i32 11, i32 11, i32 11, i32 11, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15, i32 15, i32 16, i32 16, i32 17, i32 17, i32 17, i32 18, i32 18, i32 18, i32 19, i32 19, i32 20, i32 21, i32 21, i32 22, i32 22, i32 23, i32 23, i32 24, i32 25, i32 26, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 39, i32 40, i32 42, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 58, i32 60, i32 63, i32 66, i32 69, i32 73, i32 76, i32 80, i32 85, i32 89, i32 95, i32 100, i32 106, i32 113, i32 119, i32 128, i32 136, i32 146, i32 156, i32 168, i32 182, i32 196, i32 213, i32 232, i32 254, i32 279, i32 307, i32 340, i32 380, i32 425, i32 480, i32 545, i32 626, i32 724, i32 847, i32 1003, i32 1205, i32 1471, i32 1830, i32 2324, i32 3015, i32 3993, i32 5335, i32 6956, i32 8229, i32 8071, i32 6850, i32 6189, i32 6162, i32 6585, i32 7102, i32 7774, i32 8441, i32 9243], align 16
@hd_quantize_factor_select_offset_LF = internal constant [257 x i16] [i16 0, i16 -22, i16 -21, i16 -21, i16 -20, i16 -20, i16 -19, i16 -19, i16 -18, i16 -18, i16 -17, i16 -17, i16 -16, i16 -16, i16 -15, i16 -14, i16 -14, i16 -13, i16 -13, i16 -12, i16 -12, i16 -11, i16 -11, i16 -10, i16 -10, i16 -9, i16 -9, i16 -8, i16 -7, i16 -7, i16 -6, i16 -6, i16 -5, i16 -5, i16 -4, i16 -4, i16 -3, i16 -3, i16 -2, i16 -1, i16 -1, i16 0, i16 0, i16 1, i16 1, i16 2, i16 2, i16 3, i16 4, i16 4, i16 5, i16 5, i16 6, i16 6, i16 7, i16 8, i16 8, i16 9, i16 9, i16 10, i16 11, i16 11, i16 12, i16 12, i16 13, i16 14, i16 14, i16 15, i16 15, i16 16, i16 17, i16 17, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 22, i16 22, i16 23, i16 24, i16 24, i16 25, i16 26, i16 26, i16 27, i16 28, i16 28, i16 29, i16 30, i16 30, i16 31, i16 32, i16 33, i16 33, i16 34, i16 35, i16 35, i16 36, i16 37, i16 38, i16 38, i16 39, i16 40, i16 41, i16 41, i16 42, i16 43, i16 44, i16 44, i16 45, i16 46, i16 47, i16 48, i16 48, i16 49, i16 50, i16 51, i16 52, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 96, i16 97, i16 98, i16 99, i16 101, i16 102, i16 103, i16 105, i16 106, i16 107, i16 109, i16 110, i16 112, i16 113, i16 115, i16 116, i16 118, i16 119, i16 121, i16 122, i16 124, i16 125, i16 127, i16 129, i16 130, i16 132, i16 134, i16 136, i16 137, i16 139, i16 141, i16 143, i16 145, i16 147, i16 149, i16 151, i16 153, i16 155, i16 158, i16 160, i16 162, i16 164, i16 167, i16 169, i16 172, i16 174, i16 177, i16 180, i16 182, i16 185, i16 188, i16 191, i16 194, i16 197, i16 201, i16 204, i16 208, i16 211, i16 215, i16 219, i16 223, i16 227, i16 232, i16 236, i16 241, i16 246, i16 251, i16 257, i16 263, i16 269, i16 275, i16 283, i16 290, i16 298, i16 307, i16 317, i16 327, i16 339, i16 352, i16 367, i16 384, i16 404, i16 429, i16 458, i16 494, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522], align 16
@hd_quantize_intervals_MLF = internal constant [33 x i32] [i32 -21236, i32 21236, i32 63830, i32 106798, i32 150386, i32 194832, i32 240376, i32 287258, i32 335726, i32 386034, i32 438460, i32 493308, i32 550924, i32 611696, i32 676082, i32 744626, i32 817986, i32 896968, i32 982580, i32 1076118, i32 1179278, i32 1294344, i32 1424504, i32 1574386, i32 1751090, i32 1966260, i32 2240868, i32 2617662, i32 3196432, i32 4176450, i32 5658260, i32 7671068, i32 10380372], align 16
@hd_invert_quantize_dither_factors_MLF = internal constant [33 x i32] [i32 21236, i32 21236, i32 21360, i32 21608, i32 21978, i32 22468, i32 23076, i32 23806, i32 24660, i32 25648, i32 26778, i32 28070, i32 29544, i32 31228, i32 33158, i32 35386, i32 37974, i32 41008, i32 44606, i32 48934, i32 54226, i32 60840, i32 69320, i32 80564, i32 96140, i32 119032, i32 155576, i32 221218, i32 357552, i32 622468, i32 859344, i32 1153464, i32 1555840], align 16
@hd_quantize_dither_factors_MLF = internal constant [32 x i32] [i32 0, i32 31, i32 62, i32 93, i32 123, i32 152, i32 183, i32 214, i32 247, i32 283, i32 323, i32 369, i32 421, i32 483, i32 557, i32 647, i32 759, i32 900, i32 1082, i32 1323, i32 1654, i32 2120, i32 2811, i32 3894, i32 5723, i32 9136, i32 16411, i32 34084, i32 66229, i32 59219, i32 73530, i32 100594], align 16
@hd_quantize_factor_select_offset_MLF = internal constant [33 x i16] [i16 0, i16 -21, i16 -16, i16 -12, i16 -7, i16 -2, i16 3, i16 8, i16 13, i16 19, i16 24, i16 30, i16 36, i16 43, i16 50, i16 57, i16 65, i16 74, i16 83, i16 93, i16 104, i16 117, i16 131, i16 147, i16 166, i16 189, i16 219, i16 259, i16 322, i16 427, i16 521, i16 521, i16 521], align 16
@hd_quantize_intervals_MHF = internal constant [9 x i32] [i32 -95044, i32 95044, i32 295844, i32 528780, i32 821332, i32 1226438, i32 1890540, i32 3344850, i32 6450664], align 16
@hd_invert_quantize_dither_factors_MHF = internal constant [9 x i32] [i32 95044, i32 95044, i32 105754, i32 127180, i32 165372, i32 39736, i32 424366, i32 1029946, i32 2075866], align 16
@hd_quantize_dither_factors_MHF = internal constant [8 x i32] [i32 0, i32 2678, i32 5357, i32 9548, i32 -31409, i32 96158, i32 151395, i32 261480], align 16
@hd_quantize_factor_select_offset_MHF = internal constant [9 x i16] [i16 0, i16 -17, i16 5, i16 30, i16 62, i16 105, i16 177, i16 334, i16 518], align 16
@hd_quantize_intervals_HF = internal constant [17 x i32] [i32 -45754, i32 45754, i32 138496, i32 234896, i32 337336, i32 448310, i32 570738, i32 708380, i32 866534, i32 1053262, i32 1281958, i32 1577438, i32 1993050, i32 2665984, i32 3900982, i32 5902844, i32 8897462], align 16
@hd_invert_quantize_dither_factors_HF = internal constant [17 x i32] [i32 45754, i32 45754, i32 46988, i32 49412, i32 53026, i32 57950, i32 64478, i32 73164, i32 84988, i32 101740, i32 126958, i32 168522, i32 247092, i32 425842, i32 809154, i32 1192708, i32 1801910], align 16
@hd_quantize_dither_factors_HF = internal constant [16 x i32] [i32 0, i32 309, i32 606, i32 904, i32 1231, i32 1632, i32 2172, i32 2956, i32 4188, i32 6305, i32 10391, i32 19643, i32 44688, i32 95828, i32 95889, i32 152301], align 16
@hd_quantize_factor_select_offset_HF = internal constant [17 x i16] [i16 0, i16 -18, i16 -8, i16 2, i16 13, i16 25, i16 38, i16 53, i16 70, i16 90, i16 115, i16 147, i16 192, i16 264, i16 398, i16 521, i16 521], align 16
@all_tables = internal unnamed_addr constant [2 x [4 x %struct.aptx_tables]] [[4 x %struct.aptx_tables] [%struct.aptx_tables { i32* getelementptr inbounds ([65 x i32], [65 x i32]* @quantize_intervals_LF, i32 0, i32 0), i32* getelementptr inbounds ([65 x i32], [65 x i32]* @invert_quantize_dither_factors_LF, i32 0, i32 0), i32* getelementptr inbounds ([65 x i32], [65 x i32]* @quantize_dither_factors_LF, i32 0, i32 0), i16* getelementptr inbounds ([65 x i16], [65 x i16]* @quantize_factor_select_offset_LF, i32 0, i32 0), i32 65, i32 4607, i32 24 }, %struct.aptx_tables { i32* getelementptr inbounds ([9 x i32], [9 x i32]* @quantize_intervals_MLF, i32 0, i32 0), i32* getelementptr inbounds ([9 x i32], [9 x i32]* @invert_quantize_dither_factors_MLF, i32 0, i32 0), i32* getelementptr inbounds ([9 x i32], [9 x i32]* @quantize_dither_factors_MLF, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @quantize_factor_select_offset_MLF, i32 0, i32 0), i32 9, i32 5375, i32 12 }, %struct.aptx_tables { i32* getelementptr inbounds ([3 x i32], [3 x i32]* @quantize_intervals_MHF, i32 0, i32 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @invert_quantize_dither_factors_MHF, i32 0, i32 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @quantize_dither_factors_MHF, i32 0, i32 0), i16* getelementptr inbounds ([3 x i16], [3 x i16]* @quantize_factor_select_offset_MHF, i32 0, i32 0), i32 3, i32 5887, i32 6 }, %struct.aptx_tables { i32* getelementptr inbounds ([5 x i32], [5 x i32]* @quantize_intervals_HF, i32 0, i32 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @invert_quantize_dither_factors_HF, i32 0, i32 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @quantize_dither_factors_HF, i32 0, i32 0), i16* getelementptr inbounds ([5 x i16], [5 x i16]* @quantize_factor_select_offset_HF, i32 0, i32 0), i32 5, i32 5631, i32 12 }], [4 x %struct.aptx_tables] [%struct.aptx_tables { i32* getelementptr inbounds ([257 x i32], [257 x i32]* @hd_quantize_intervals_LF, i32 0, i32 0), i32* getelementptr inbounds ([257 x i32], [257 x i32]* @hd_invert_quantize_dither_factors_LF, i32 0, i32 0), i32* getelementptr inbounds ([256 x i32], [256 x i32]* @hd_quantize_dither_factors_LF, i32 0, i32 0), i16* getelementptr inbounds ([257 x i16], [257 x i16]* @hd_quantize_factor_select_offset_LF, i32 0, i32 0), i32 257, i32 4607, i32 24 }, %struct.aptx_tables { i32* getelementptr inbounds ([33 x i32], [33 x i32]* @hd_quantize_intervals_MLF, i32 0, i32 0), i32* getelementptr inbounds ([33 x i32], [33 x i32]* @hd_invert_quantize_dither_factors_MLF, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @hd_quantize_dither_factors_MLF, i32 0, i32 0), i16* getelementptr inbounds ([33 x i16], [33 x i16]* @hd_quantize_factor_select_offset_MLF, i32 0, i32 0), i32 33, i32 5375, i32 12 }, %struct.aptx_tables { i32* getelementptr inbounds ([9 x i32], [9 x i32]* @hd_quantize_intervals_MHF, i32 0, i32 0), i32* getelementptr inbounds ([9 x i32], [9 x i32]* @hd_invert_quantize_dither_factors_MHF, i32 0, i32 0), i32* getelementptr inbounds ([8 x i32], [8 x i32]* @hd_quantize_dither_factors_MHF, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @hd_quantize_factor_select_offset_MHF, i32 0, i32 0), i32 9, i32 5887, i32 6 }, %struct.aptx_tables { i32* getelementptr inbounds ([17 x i32], [17 x i32]* @hd_quantize_intervals_HF, i32 0, i32 0), i32* getelementptr inbounds ([17 x i32], [17 x i32]* @hd_invert_quantize_dither_factors_HF, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @hd_quantize_dither_factors_HF, i32 0, i32 0), i16* getelementptr inbounds ([17 x i16], [17 x i16]* @hd_quantize_factor_select_offset_HF, i32 0, i32 0), i32 17, i32 5631, i32 12 }]], align 16
@quantization_factors = internal unnamed_addr constant [32 x i16] [i16 2048, i16 2093, i16 2139, i16 2186, i16 2233, i16 2282, i16 2332, i16 2383, i16 2435, i16 2489, i16 2543, i16 2599, i16 2656, i16 2714, i16 2774, i16 2834, i16 2896, i16 2960, i16 3025, i16 3091, i16 3158, i16 3228, i16 3298, i16 3371, i16 3444, i16 3520, i16 3597, i16 3676, i16 3756, i16 3838, i16 3922, i16 4008], align 16
@aptx_qmf_outer_coeffs = internal constant [2 x [16 x i32]] [[16 x i32] [i32 730, i32 -413, i32 -9611, i32 43626, i32 -121026, i32 269973, i32 -585547, i32 2801966, i32 697128, i32 -160481, i32 27611, i32 8478, i32 -10043, i32 3511, i32 688, i32 -897], [16 x i32] [i32 -897, i32 688, i32 3511, i32 -10043, i32 8478, i32 27611, i32 -160481, i32 697128, i32 2801966, i32 -585547, i32 269973, i32 -121026, i32 43626, i32 -9611, i32 -413, i32 730]], align 16
@aptx_qmf_inner_coeffs = internal constant [2 x [16 x i32]] [[16 x i32] [i32 1033, i32 -584, i32 -13592, i32 61697, i32 -171156, i32 381799, i32 -828088, i32 3962579, i32 985888, i32 -226954, i32 39048, i32 11990, i32 -14203, i32 4966, i32 973, i32 -1268], [16 x i32] [i32 -1268, i32 973, i32 4966, i32 -14203, i32 11990, i32 39048, i32 -226954, i32 985888, i32 3962579, i32 -828088, i32 381799, i32 -171156, i32 61697, i32 -13592, i32 -584, i32 1033]], align 16
@aptx_major = dso_local local_unnamed_addr constant i32 0, align 4
@aptx_minor = dso_local local_unnamed_addr constant i32 2, align 4
@aptx_patch = dso_local local_unnamed_addr constant i32 1, align 4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: inlinehint nofree nosync nounwind uwtable
define internal fastcc void @aptx_qmf_polyphase_analysis(%struct.aptx_filter_signal* nocapture noundef %signal, [16 x i32]* nocapture noundef readonly %coeffs, i32* nocapture noundef readonly %samples, i32* nocapture noundef writeonly %low_subband_output, i32* nocapture noundef writeonly %high_subband_output) unnamed_addr #1 {
entry:
  %arrayidx2 = getelementptr inbounds i32, i32* %samples, i64 1
  %0 = load i32, i32* %arrayidx2, align 4, !tbaa !3
  %pos.i = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 0, i32 1
  %1 = load i8, i8* %pos.i, align 4, !tbaa !7
  %idxprom.i = zext i8 %1 to i64
  %arrayidx.i = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 0, i32 0, i64 %idxprom.i
  store i32 %0, i32* %arrayidx.i, align 4, !tbaa !3
  %add.i = add nuw nsw i64 %idxprom.i, 16
  %arrayidx4.i = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 0, i32 0, i64 %add.i
  store i32 %0, i32* %arrayidx4.i, align 4, !tbaa !3
  %2 = add i8 %1, 1
  %3 = and i8 %2, 15
  store i8 %3, i8* %pos.i, align 4, !tbaa !7
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 0
  %idxprom.i2 = zext i8 %3 to i64
  %arrayidx.i3 = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 0, i32 0, i64 %idxprom.i2
  %4 = load i32, i32* %arrayidx.i3, align 4, !tbaa !3
  %conv.i = sext i32 %4 to i64
  %5 = load i32, i32* %arraydecay, align 4, !tbaa !3
  %conv5.i = sext i32 %5 to i64
  %mul.i = mul nsw i64 %conv5.i, %conv.i
  %arrayidx2.1.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 1
  %6 = load i32, i32* %arrayidx2.1.i, align 4, !tbaa !3
  %conv.1.i = sext i32 %6 to i64
  %arrayidx4.1.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 1
  %7 = load i32, i32* %arrayidx4.1.i, align 4, !tbaa !3
  %conv5.1.i = sext i32 %7 to i64
  %mul.1.i = mul nsw i64 %conv5.1.i, %conv.1.i
  %add.1.i = add nsw i64 %mul.1.i, %mul.i
  %arrayidx2.2.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 2
  %8 = load i32, i32* %arrayidx2.2.i, align 4, !tbaa !3
  %conv.2.i = sext i32 %8 to i64
  %arrayidx4.2.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 2
  %9 = load i32, i32* %arrayidx4.2.i, align 4, !tbaa !3
  %conv5.2.i = sext i32 %9 to i64
  %mul.2.i = mul nsw i64 %conv5.2.i, %conv.2.i
  %add.2.i = add nsw i64 %add.1.i, %mul.2.i
  %arrayidx2.3.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 3
  %10 = load i32, i32* %arrayidx2.3.i, align 4, !tbaa !3
  %conv.3.i = sext i32 %10 to i64
  %arrayidx4.3.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 3
  %11 = load i32, i32* %arrayidx4.3.i, align 4, !tbaa !3
  %conv5.3.i = sext i32 %11 to i64
  %mul.3.i = mul nsw i64 %conv5.3.i, %conv.3.i
  %add.3.i = add nsw i64 %add.2.i, %mul.3.i
  %arrayidx2.4.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 4
  %12 = load i32, i32* %arrayidx2.4.i, align 4, !tbaa !3
  %conv.4.i = sext i32 %12 to i64
  %arrayidx4.4.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 4
  %13 = load i32, i32* %arrayidx4.4.i, align 4, !tbaa !3
  %conv5.4.i = sext i32 %13 to i64
  %mul.4.i = mul nsw i64 %conv5.4.i, %conv.4.i
  %add.4.i = add nsw i64 %add.3.i, %mul.4.i
  %arrayidx2.5.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 5
  %14 = load i32, i32* %arrayidx2.5.i, align 4, !tbaa !3
  %conv.5.i = sext i32 %14 to i64
  %arrayidx4.5.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 5
  %15 = load i32, i32* %arrayidx4.5.i, align 4, !tbaa !3
  %conv5.5.i = sext i32 %15 to i64
  %mul.5.i = mul nsw i64 %conv5.5.i, %conv.5.i
  %add.5.i = add nsw i64 %add.4.i, %mul.5.i
  %arrayidx2.6.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 6
  %16 = load i32, i32* %arrayidx2.6.i, align 4, !tbaa !3
  %conv.6.i = sext i32 %16 to i64
  %arrayidx4.6.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 6
  %17 = load i32, i32* %arrayidx4.6.i, align 4, !tbaa !3
  %conv5.6.i = sext i32 %17 to i64
  %mul.6.i = mul nsw i64 %conv5.6.i, %conv.6.i
  %add.6.i = add nsw i64 %add.5.i, %mul.6.i
  %arrayidx2.7.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 7
  %18 = load i32, i32* %arrayidx2.7.i, align 4, !tbaa !3
  %conv.7.i = sext i32 %18 to i64
  %arrayidx4.7.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 7
  %19 = load i32, i32* %arrayidx4.7.i, align 4, !tbaa !3
  %conv5.7.i = sext i32 %19 to i64
  %mul.7.i = mul nsw i64 %conv5.7.i, %conv.7.i
  %add.7.i = add nsw i64 %add.6.i, %mul.7.i
  %arrayidx2.8.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 8
  %20 = load i32, i32* %arrayidx2.8.i, align 4, !tbaa !3
  %conv.8.i = sext i32 %20 to i64
  %arrayidx4.8.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 8
  %21 = load i32, i32* %arrayidx4.8.i, align 4, !tbaa !3
  %conv5.8.i = sext i32 %21 to i64
  %mul.8.i = mul nsw i64 %conv5.8.i, %conv.8.i
  %add.8.i = add nsw i64 %add.7.i, %mul.8.i
  %arrayidx2.9.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 9
  %22 = load i32, i32* %arrayidx2.9.i, align 4, !tbaa !3
  %conv.9.i = sext i32 %22 to i64
  %arrayidx4.9.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 9
  %23 = load i32, i32* %arrayidx4.9.i, align 4, !tbaa !3
  %conv5.9.i = sext i32 %23 to i64
  %mul.9.i = mul nsw i64 %conv5.9.i, %conv.9.i
  %add.9.i = add nsw i64 %add.8.i, %mul.9.i
  %arrayidx2.10.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 10
  %24 = load i32, i32* %arrayidx2.10.i, align 4, !tbaa !3
  %conv.10.i = sext i32 %24 to i64
  %arrayidx4.10.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 10
  %25 = load i32, i32* %arrayidx4.10.i, align 4, !tbaa !3
  %conv5.10.i = sext i32 %25 to i64
  %mul.10.i = mul nsw i64 %conv5.10.i, %conv.10.i
  %add.10.i = add nsw i64 %add.9.i, %mul.10.i
  %arrayidx2.11.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 11
  %26 = load i32, i32* %arrayidx2.11.i, align 4, !tbaa !3
  %conv.11.i = sext i32 %26 to i64
  %arrayidx4.11.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 11
  %27 = load i32, i32* %arrayidx4.11.i, align 4, !tbaa !3
  %conv5.11.i = sext i32 %27 to i64
  %mul.11.i = mul nsw i64 %conv5.11.i, %conv.11.i
  %add.11.i = add nsw i64 %add.10.i, %mul.11.i
  %arrayidx2.12.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 12
  %28 = load i32, i32* %arrayidx2.12.i, align 4, !tbaa !3
  %conv.12.i = sext i32 %28 to i64
  %arrayidx4.12.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 12
  %29 = load i32, i32* %arrayidx4.12.i, align 4, !tbaa !3
  %conv5.12.i = sext i32 %29 to i64
  %mul.12.i = mul nsw i64 %conv5.12.i, %conv.12.i
  %add.12.i = add nsw i64 %add.11.i, %mul.12.i
  %arrayidx2.13.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 13
  %30 = load i32, i32* %arrayidx2.13.i, align 4, !tbaa !3
  %conv.13.i = sext i32 %30 to i64
  %arrayidx4.13.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 13
  %31 = load i32, i32* %arrayidx4.13.i, align 4, !tbaa !3
  %conv5.13.i = sext i32 %31 to i64
  %mul.13.i = mul nsw i64 %conv5.13.i, %conv.13.i
  %add.13.i = add nsw i64 %add.12.i, %mul.13.i
  %arrayidx2.14.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 14
  %32 = load i32, i32* %arrayidx2.14.i, align 4, !tbaa !3
  %conv.14.i = sext i32 %32 to i64
  %arrayidx4.14.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 14
  %33 = load i32, i32* %arrayidx4.14.i, align 4, !tbaa !3
  %conv5.14.i = sext i32 %33 to i64
  %mul.14.i = mul nsw i64 %conv5.14.i, %conv.14.i
  %add.14.i = add nsw i64 %add.13.i, %mul.14.i
  %arrayidx2.15.i = getelementptr inbounds i32, i32* %arrayidx.i3, i64 15
  %34 = load i32, i32* %arrayidx2.15.i, align 4, !tbaa !3
  %conv.15.i = sext i32 %34 to i64
  %arrayidx4.15.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 15
  %35 = load i32, i32* %arrayidx4.15.i, align 4, !tbaa !3
  %conv5.15.i = sext i32 %35 to i64
  %mul.15.i = mul nsw i64 %conv5.15.i, %conv.15.i
  %add.15.i = add nsw i64 %add.14.i, %mul.15.i
  %add4.i.i.i = add nsw i64 %add.15.i, 4194304
  %36 = lshr i64 %add4.i.i.i, 23
  %and.i.i.i = and i64 %add.15.i, 16777215
  %cmp.i.i.i = icmp eq i64 %and.i.i.i, 4194304
  %.neg.i.i.i = sext i1 %cmp.i.i.i to i64
  %sub7.i.i.i = add nsw i64 %36, %.neg.i.i.i
  %conv.i.i = trunc i64 %sub7.i.i.i to i32
  %37 = icmp sgt i32 %conv.i.i, -8388608
  %38 = select i1 %37, i32 %conv.i.i, i32 -8388608
  %39 = icmp slt i32 %38, 8388607
  %40 = select i1 %39, i32 %38, i32 8388607
  %41 = load i32, i32* %samples, align 4, !tbaa !3
  %pos.i.1 = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 1, i32 1
  %42 = load i8, i8* %pos.i.1, align 4, !tbaa !7
  %idxprom.i.1 = zext i8 %42 to i64
  %arrayidx.i.1 = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 1, i32 0, i64 %idxprom.i.1
  store i32 %41, i32* %arrayidx.i.1, align 4, !tbaa !3
  %add.i.1 = add nuw nsw i64 %idxprom.i.1, 16
  %arrayidx4.i.1 = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 1, i32 0, i64 %add.i.1
  store i32 %41, i32* %arrayidx4.i.1, align 4, !tbaa !3
  %43 = add i8 %42, 1
  %44 = and i8 %43, 15
  store i8 %44, i8* %pos.i.1, align 4, !tbaa !7
  %arraydecay.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 0
  %idxprom.i2.1 = zext i8 %44 to i64
  %arrayidx.i3.1 = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 1, i32 0, i64 %idxprom.i2.1
  %45 = load i32, i32* %arrayidx.i3.1, align 4, !tbaa !3
  %conv.i.1 = sext i32 %45 to i64
  %46 = load i32, i32* %arraydecay.1, align 4, !tbaa !3
  %conv5.i.1 = sext i32 %46 to i64
  %mul.i.1 = mul nsw i64 %conv5.i.1, %conv.i.1
  %arrayidx2.1.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 1
  %47 = load i32, i32* %arrayidx2.1.i.1, align 4, !tbaa !3
  %conv.1.i.1 = sext i32 %47 to i64
  %arrayidx4.1.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 1
  %48 = load i32, i32* %arrayidx4.1.i.1, align 4, !tbaa !3
  %conv5.1.i.1 = sext i32 %48 to i64
  %mul.1.i.1 = mul nsw i64 %conv5.1.i.1, %conv.1.i.1
  %add.1.i.1 = add nsw i64 %mul.1.i.1, %mul.i.1
  %arrayidx2.2.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 2
  %49 = load i32, i32* %arrayidx2.2.i.1, align 4, !tbaa !3
  %conv.2.i.1 = sext i32 %49 to i64
  %arrayidx4.2.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 2
  %50 = load i32, i32* %arrayidx4.2.i.1, align 4, !tbaa !3
  %conv5.2.i.1 = sext i32 %50 to i64
  %mul.2.i.1 = mul nsw i64 %conv5.2.i.1, %conv.2.i.1
  %add.2.i.1 = add nsw i64 %add.1.i.1, %mul.2.i.1
  %arrayidx2.3.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 3
  %51 = load i32, i32* %arrayidx2.3.i.1, align 4, !tbaa !3
  %conv.3.i.1 = sext i32 %51 to i64
  %arrayidx4.3.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 3
  %52 = load i32, i32* %arrayidx4.3.i.1, align 4, !tbaa !3
  %conv5.3.i.1 = sext i32 %52 to i64
  %mul.3.i.1 = mul nsw i64 %conv5.3.i.1, %conv.3.i.1
  %add.3.i.1 = add nsw i64 %add.2.i.1, %mul.3.i.1
  %arrayidx2.4.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 4
  %53 = load i32, i32* %arrayidx2.4.i.1, align 4, !tbaa !3
  %conv.4.i.1 = sext i32 %53 to i64
  %arrayidx4.4.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 4
  %54 = load i32, i32* %arrayidx4.4.i.1, align 4, !tbaa !3
  %conv5.4.i.1 = sext i32 %54 to i64
  %mul.4.i.1 = mul nsw i64 %conv5.4.i.1, %conv.4.i.1
  %add.4.i.1 = add nsw i64 %add.3.i.1, %mul.4.i.1
  %arrayidx2.5.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 5
  %55 = load i32, i32* %arrayidx2.5.i.1, align 4, !tbaa !3
  %conv.5.i.1 = sext i32 %55 to i64
  %arrayidx4.5.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 5
  %56 = load i32, i32* %arrayidx4.5.i.1, align 4, !tbaa !3
  %conv5.5.i.1 = sext i32 %56 to i64
  %mul.5.i.1 = mul nsw i64 %conv5.5.i.1, %conv.5.i.1
  %add.5.i.1 = add nsw i64 %add.4.i.1, %mul.5.i.1
  %arrayidx2.6.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 6
  %57 = load i32, i32* %arrayidx2.6.i.1, align 4, !tbaa !3
  %conv.6.i.1 = sext i32 %57 to i64
  %arrayidx4.6.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 6
  %58 = load i32, i32* %arrayidx4.6.i.1, align 4, !tbaa !3
  %conv5.6.i.1 = sext i32 %58 to i64
  %mul.6.i.1 = mul nsw i64 %conv5.6.i.1, %conv.6.i.1
  %add.6.i.1 = add nsw i64 %add.5.i.1, %mul.6.i.1
  %arrayidx2.7.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 7
  %59 = load i32, i32* %arrayidx2.7.i.1, align 4, !tbaa !3
  %conv.7.i.1 = sext i32 %59 to i64
  %arrayidx4.7.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 7
  %60 = load i32, i32* %arrayidx4.7.i.1, align 4, !tbaa !3
  %conv5.7.i.1 = sext i32 %60 to i64
  %mul.7.i.1 = mul nsw i64 %conv5.7.i.1, %conv.7.i.1
  %add.7.i.1 = add nsw i64 %add.6.i.1, %mul.7.i.1
  %arrayidx2.8.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 8
  %61 = load i32, i32* %arrayidx2.8.i.1, align 4, !tbaa !3
  %conv.8.i.1 = sext i32 %61 to i64
  %arrayidx4.8.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 8
  %62 = load i32, i32* %arrayidx4.8.i.1, align 4, !tbaa !3
  %conv5.8.i.1 = sext i32 %62 to i64
  %mul.8.i.1 = mul nsw i64 %conv5.8.i.1, %conv.8.i.1
  %add.8.i.1 = add nsw i64 %add.7.i.1, %mul.8.i.1
  %arrayidx2.9.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 9
  %63 = load i32, i32* %arrayidx2.9.i.1, align 4, !tbaa !3
  %conv.9.i.1 = sext i32 %63 to i64
  %arrayidx4.9.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 9
  %64 = load i32, i32* %arrayidx4.9.i.1, align 4, !tbaa !3
  %conv5.9.i.1 = sext i32 %64 to i64
  %mul.9.i.1 = mul nsw i64 %conv5.9.i.1, %conv.9.i.1
  %add.9.i.1 = add nsw i64 %add.8.i.1, %mul.9.i.1
  %arrayidx2.10.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 10
  %65 = load i32, i32* %arrayidx2.10.i.1, align 4, !tbaa !3
  %conv.10.i.1 = sext i32 %65 to i64
  %arrayidx4.10.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 10
  %66 = load i32, i32* %arrayidx4.10.i.1, align 4, !tbaa !3
  %conv5.10.i.1 = sext i32 %66 to i64
  %mul.10.i.1 = mul nsw i64 %conv5.10.i.1, %conv.10.i.1
  %add.10.i.1 = add nsw i64 %add.9.i.1, %mul.10.i.1
  %arrayidx2.11.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 11
  %67 = load i32, i32* %arrayidx2.11.i.1, align 4, !tbaa !3
  %conv.11.i.1 = sext i32 %67 to i64
  %arrayidx4.11.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 11
  %68 = load i32, i32* %arrayidx4.11.i.1, align 4, !tbaa !3
  %conv5.11.i.1 = sext i32 %68 to i64
  %mul.11.i.1 = mul nsw i64 %conv5.11.i.1, %conv.11.i.1
  %add.11.i.1 = add nsw i64 %add.10.i.1, %mul.11.i.1
  %arrayidx2.12.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 12
  %69 = load i32, i32* %arrayidx2.12.i.1, align 4, !tbaa !3
  %conv.12.i.1 = sext i32 %69 to i64
  %arrayidx4.12.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 12
  %70 = load i32, i32* %arrayidx4.12.i.1, align 4, !tbaa !3
  %conv5.12.i.1 = sext i32 %70 to i64
  %mul.12.i.1 = mul nsw i64 %conv5.12.i.1, %conv.12.i.1
  %add.12.i.1 = add nsw i64 %add.11.i.1, %mul.12.i.1
  %arrayidx2.13.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 13
  %71 = load i32, i32* %arrayidx2.13.i.1, align 4, !tbaa !3
  %conv.13.i.1 = sext i32 %71 to i64
  %arrayidx4.13.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 13
  %72 = load i32, i32* %arrayidx4.13.i.1, align 4, !tbaa !3
  %conv5.13.i.1 = sext i32 %72 to i64
  %mul.13.i.1 = mul nsw i64 %conv5.13.i.1, %conv.13.i.1
  %add.13.i.1 = add nsw i64 %add.12.i.1, %mul.13.i.1
  %arrayidx2.14.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 14
  %73 = load i32, i32* %arrayidx2.14.i.1, align 4, !tbaa !3
  %conv.14.i.1 = sext i32 %73 to i64
  %arrayidx4.14.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 14
  %74 = load i32, i32* %arrayidx4.14.i.1, align 4, !tbaa !3
  %conv5.14.i.1 = sext i32 %74 to i64
  %mul.14.i.1 = mul nsw i64 %conv5.14.i.1, %conv.14.i.1
  %add.14.i.1 = add nsw i64 %add.13.i.1, %mul.14.i.1
  %arrayidx2.15.i.1 = getelementptr inbounds i32, i32* %arrayidx.i3.1, i64 15
  %75 = load i32, i32* %arrayidx2.15.i.1, align 4, !tbaa !3
  %conv.15.i.1 = sext i32 %75 to i64
  %arrayidx4.15.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 15
  %76 = load i32, i32* %arrayidx4.15.i.1, align 4, !tbaa !3
  %conv5.15.i.1 = sext i32 %76 to i64
  %mul.15.i.1 = mul nsw i64 %conv5.15.i.1, %conv.15.i.1
  %add.15.i.1 = add nsw i64 %add.14.i.1, %mul.15.i.1
  %add4.i.i.i.1 = add nsw i64 %add.15.i.1, 4194304
  %77 = lshr i64 %add4.i.i.i.1, 23
  %and.i.i.i.1 = and i64 %add.15.i.1, 16777215
  %cmp.i.i.i.1 = icmp eq i64 %and.i.i.i.1, 4194304
  %.neg.i.i.i.1 = sext i1 %cmp.i.i.i.1 to i64
  %sub7.i.i.i.1 = add nsw i64 %77, %.neg.i.i.i.1
  %conv.i.i.1 = trunc i64 %sub7.i.i.i.1 to i32
  %78 = icmp sgt i32 %conv.i.i.1, -8388608
  %79 = select i1 %78, i32 %conv.i.i.1, i32 -8388608
  %80 = icmp slt i32 %79, 8388607
  %81 = select i1 %80, i32 %79, i32 8388607
  %add = add nsw i32 %81, %40
  %82 = icmp sgt i32 %add, -8388608
  %83 = select i1 %82, i32 %add, i32 -8388608
  %84 = icmp slt i32 %83, 8388607
  %85 = select i1 %84, i32 %83, i32 8388607
  store i32 %85, i32* %low_subband_output, align 4, !tbaa !3
  %sub14 = sub nsw i32 %40, %81
  %86 = icmp sgt i32 %sub14, -8388608
  %87 = select i1 %86, i32 %sub14, i32 -8388608
  %88 = icmp slt i32 %87, 8388607
  %89 = select i1 %88, i32 %87, i32 8388607
  store i32 %89, i32* %high_subband_output, align 4, !tbaa !3
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind uwtable
define internal fastcc void @aptx_qmf_polyphase_synthesis(%struct.aptx_filter_signal* nocapture noundef %signal, [16 x i32]* nocapture noundef readonly %coeffs, i32 noundef %shift, i32 noundef %low_subband_input, i32 noundef %high_subband_input, i32* nocapture noundef writeonly %samples) unnamed_addr #1 {
entry:
  %add = add nsw i32 %high_subband_input, %low_subband_input
  %sub = sub nsw i32 %low_subband_input, %high_subband_input
  %sub.i.i.i = add i32 %shift, -1
  %sh_prom.i.i.i = zext i32 %sub.i.i.i to i64
  %shl.i.i.i = shl nuw i64 1, %sh_prom.i.i.i
  %add.i.i.i = add i32 %shift, 1
  %sh_prom1.i.i.i = zext i32 %add.i.i.i to i64
  %notmask.i.i.i = shl nsw i64 -1, %sh_prom1.i.i.i
  %sub3.i.i.i = xor i64 %notmask.i.i.i, -1
  %sh_prom5.i.i.i = zext i32 %shift to i64
  %pos.i = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 0, i32 1
  %0 = load i8, i8* %pos.i, align 4, !tbaa !7
  %idxprom.i = zext i8 %0 to i64
  %arrayidx.i = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 0, i32 0, i64 %idxprom.i
  store i32 %sub, i32* %arrayidx.i, align 4, !tbaa !3
  %add.i = add nuw nsw i64 %idxprom.i, 16
  %arrayidx4.i = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 0, i32 0, i64 %add.i
  store i32 %sub, i32* %arrayidx4.i, align 4, !tbaa !3
  %1 = add i8 %0, 1
  %2 = and i8 %1, 15
  store i8 %2, i8* %pos.i, align 4, !tbaa !7
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 0
  %idxprom.i23 = zext i8 %2 to i64
  %arrayidx.i24 = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 0, i32 0, i64 %idxprom.i23
  %3 = load i32, i32* %arrayidx.i24, align 4, !tbaa !3
  %conv.i = sext i32 %3 to i64
  %4 = load i32, i32* %arraydecay, align 4, !tbaa !3
  %conv5.i = sext i32 %4 to i64
  %mul.i = mul nsw i64 %conv5.i, %conv.i
  %arrayidx2.1.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 1
  %5 = load i32, i32* %arrayidx2.1.i, align 4, !tbaa !3
  %conv.1.i = sext i32 %5 to i64
  %arrayidx4.1.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 1
  %6 = load i32, i32* %arrayidx4.1.i, align 4, !tbaa !3
  %conv5.1.i = sext i32 %6 to i64
  %mul.1.i = mul nsw i64 %conv5.1.i, %conv.1.i
  %add.1.i = add nsw i64 %mul.1.i, %mul.i
  %arrayidx2.2.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 2
  %7 = load i32, i32* %arrayidx2.2.i, align 4, !tbaa !3
  %conv.2.i = sext i32 %7 to i64
  %arrayidx4.2.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 2
  %8 = load i32, i32* %arrayidx4.2.i, align 4, !tbaa !3
  %conv5.2.i = sext i32 %8 to i64
  %mul.2.i = mul nsw i64 %conv5.2.i, %conv.2.i
  %add.2.i = add nsw i64 %add.1.i, %mul.2.i
  %arrayidx2.3.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 3
  %9 = load i32, i32* %arrayidx2.3.i, align 4, !tbaa !3
  %conv.3.i = sext i32 %9 to i64
  %arrayidx4.3.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 3
  %10 = load i32, i32* %arrayidx4.3.i, align 4, !tbaa !3
  %conv5.3.i = sext i32 %10 to i64
  %mul.3.i = mul nsw i64 %conv5.3.i, %conv.3.i
  %add.3.i = add nsw i64 %add.2.i, %mul.3.i
  %arrayidx2.4.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 4
  %11 = load i32, i32* %arrayidx2.4.i, align 4, !tbaa !3
  %conv.4.i = sext i32 %11 to i64
  %arrayidx4.4.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 4
  %12 = load i32, i32* %arrayidx4.4.i, align 4, !tbaa !3
  %conv5.4.i = sext i32 %12 to i64
  %mul.4.i = mul nsw i64 %conv5.4.i, %conv.4.i
  %add.4.i = add nsw i64 %add.3.i, %mul.4.i
  %arrayidx2.5.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 5
  %13 = load i32, i32* %arrayidx2.5.i, align 4, !tbaa !3
  %conv.5.i = sext i32 %13 to i64
  %arrayidx4.5.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 5
  %14 = load i32, i32* %arrayidx4.5.i, align 4, !tbaa !3
  %conv5.5.i = sext i32 %14 to i64
  %mul.5.i = mul nsw i64 %conv5.5.i, %conv.5.i
  %add.5.i = add nsw i64 %add.4.i, %mul.5.i
  %arrayidx2.6.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 6
  %15 = load i32, i32* %arrayidx2.6.i, align 4, !tbaa !3
  %conv.6.i = sext i32 %15 to i64
  %arrayidx4.6.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 6
  %16 = load i32, i32* %arrayidx4.6.i, align 4, !tbaa !3
  %conv5.6.i = sext i32 %16 to i64
  %mul.6.i = mul nsw i64 %conv5.6.i, %conv.6.i
  %add.6.i = add nsw i64 %add.5.i, %mul.6.i
  %arrayidx2.7.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 7
  %17 = load i32, i32* %arrayidx2.7.i, align 4, !tbaa !3
  %conv.7.i = sext i32 %17 to i64
  %arrayidx4.7.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 7
  %18 = load i32, i32* %arrayidx4.7.i, align 4, !tbaa !3
  %conv5.7.i = sext i32 %18 to i64
  %mul.7.i = mul nsw i64 %conv5.7.i, %conv.7.i
  %add.7.i = add nsw i64 %add.6.i, %mul.7.i
  %arrayidx2.8.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 8
  %19 = load i32, i32* %arrayidx2.8.i, align 4, !tbaa !3
  %conv.8.i = sext i32 %19 to i64
  %arrayidx4.8.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 8
  %20 = load i32, i32* %arrayidx4.8.i, align 4, !tbaa !3
  %conv5.8.i = sext i32 %20 to i64
  %mul.8.i = mul nsw i64 %conv5.8.i, %conv.8.i
  %add.8.i = add nsw i64 %add.7.i, %mul.8.i
  %arrayidx2.9.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 9
  %21 = load i32, i32* %arrayidx2.9.i, align 4, !tbaa !3
  %conv.9.i = sext i32 %21 to i64
  %arrayidx4.9.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 9
  %22 = load i32, i32* %arrayidx4.9.i, align 4, !tbaa !3
  %conv5.9.i = sext i32 %22 to i64
  %mul.9.i = mul nsw i64 %conv5.9.i, %conv.9.i
  %add.9.i = add nsw i64 %add.8.i, %mul.9.i
  %arrayidx2.10.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 10
  %23 = load i32, i32* %arrayidx2.10.i, align 4, !tbaa !3
  %conv.10.i = sext i32 %23 to i64
  %arrayidx4.10.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 10
  %24 = load i32, i32* %arrayidx4.10.i, align 4, !tbaa !3
  %conv5.10.i = sext i32 %24 to i64
  %mul.10.i = mul nsw i64 %conv5.10.i, %conv.10.i
  %add.10.i = add nsw i64 %add.9.i, %mul.10.i
  %arrayidx2.11.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 11
  %25 = load i32, i32* %arrayidx2.11.i, align 4, !tbaa !3
  %conv.11.i = sext i32 %25 to i64
  %arrayidx4.11.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 11
  %26 = load i32, i32* %arrayidx4.11.i, align 4, !tbaa !3
  %conv5.11.i = sext i32 %26 to i64
  %mul.11.i = mul nsw i64 %conv5.11.i, %conv.11.i
  %add.11.i = add nsw i64 %add.10.i, %mul.11.i
  %arrayidx2.12.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 12
  %27 = load i32, i32* %arrayidx2.12.i, align 4, !tbaa !3
  %conv.12.i = sext i32 %27 to i64
  %arrayidx4.12.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 12
  %28 = load i32, i32* %arrayidx4.12.i, align 4, !tbaa !3
  %conv5.12.i = sext i32 %28 to i64
  %mul.12.i = mul nsw i64 %conv5.12.i, %conv.12.i
  %add.12.i = add nsw i64 %add.11.i, %mul.12.i
  %arrayidx2.13.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 13
  %29 = load i32, i32* %arrayidx2.13.i, align 4, !tbaa !3
  %conv.13.i = sext i32 %29 to i64
  %arrayidx4.13.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 13
  %30 = load i32, i32* %arrayidx4.13.i, align 4, !tbaa !3
  %conv5.13.i = sext i32 %30 to i64
  %mul.13.i = mul nsw i64 %conv5.13.i, %conv.13.i
  %add.13.i = add nsw i64 %add.12.i, %mul.13.i
  %arrayidx2.14.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 14
  %31 = load i32, i32* %arrayidx2.14.i, align 4, !tbaa !3
  %conv.14.i = sext i32 %31 to i64
  %arrayidx4.14.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 14
  %32 = load i32, i32* %arrayidx4.14.i, align 4, !tbaa !3
  %conv5.14.i = sext i32 %32 to i64
  %mul.14.i = mul nsw i64 %conv5.14.i, %conv.14.i
  %add.14.i = add nsw i64 %add.13.i, %mul.14.i
  %arrayidx2.15.i = getelementptr inbounds i32, i32* %arrayidx.i24, i64 15
  %33 = load i32, i32* %arrayidx2.15.i, align 4, !tbaa !3
  %conv.15.i = sext i32 %33 to i64
  %arrayidx4.15.i = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 0, i64 15
  %34 = load i32, i32* %arrayidx4.15.i, align 4, !tbaa !3
  %conv5.15.i = sext i32 %34 to i64
  %mul.15.i = mul nsw i64 %conv5.15.i, %conv.15.i
  %add.15.i = add nsw i64 %add.14.i, %mul.15.i
  %add4.i.i.i = add nsw i64 %add.15.i, %shl.i.i.i
  %shr.i.i.i = ashr i64 %add4.i.i.i, %sh_prom5.i.i.i
  %and.i.i.i = and i64 %add.15.i, %sub3.i.i.i
  %cmp.i.i.i = icmp eq i64 %and.i.i.i, %shl.i.i.i
  %.neg.i.i.i = sext i1 %cmp.i.i.i to i64
  %sub7.i.i.i = add i64 %shr.i.i.i, %.neg.i.i.i
  %conv.i.i = trunc i64 %sub7.i.i.i to i32
  %35 = icmp sgt i32 %conv.i.i, -8388608
  %36 = select i1 %35, i32 %conv.i.i, i32 -8388608
  %37 = icmp slt i32 %36, 8388607
  %38 = select i1 %37, i32 %36, i32 8388607
  store i32 %38, i32* %samples, align 4, !tbaa !3
  %pos.i.1 = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 1, i32 1
  %39 = load i8, i8* %pos.i.1, align 4, !tbaa !7
  %idxprom.i.1 = zext i8 %39 to i64
  %arrayidx.i.1 = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 1, i32 0, i64 %idxprom.i.1
  store i32 %add, i32* %arrayidx.i.1, align 4, !tbaa !3
  %add.i.1 = add nuw nsw i64 %idxprom.i.1, 16
  %arrayidx4.i.1 = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 1, i32 0, i64 %add.i.1
  store i32 %add, i32* %arrayidx4.i.1, align 4, !tbaa !3
  %40 = add i8 %39, 1
  %41 = and i8 %40, 15
  store i8 %41, i8* %pos.i.1, align 4, !tbaa !7
  %arraydecay.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 0
  %idxprom.i23.1 = zext i8 %41 to i64
  %arrayidx.i24.1 = getelementptr inbounds %struct.aptx_filter_signal, %struct.aptx_filter_signal* %signal, i64 1, i32 0, i64 %idxprom.i23.1
  %42 = load i32, i32* %arrayidx.i24.1, align 4, !tbaa !3
  %conv.i.1 = sext i32 %42 to i64
  %43 = load i32, i32* %arraydecay.1, align 4, !tbaa !3
  %conv5.i.1 = sext i32 %43 to i64
  %mul.i.1 = mul nsw i64 %conv5.i.1, %conv.i.1
  %arrayidx2.1.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 1
  %44 = load i32, i32* %arrayidx2.1.i.1, align 4, !tbaa !3
  %conv.1.i.1 = sext i32 %44 to i64
  %arrayidx4.1.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 1
  %45 = load i32, i32* %arrayidx4.1.i.1, align 4, !tbaa !3
  %conv5.1.i.1 = sext i32 %45 to i64
  %mul.1.i.1 = mul nsw i64 %conv5.1.i.1, %conv.1.i.1
  %add.1.i.1 = add nsw i64 %mul.1.i.1, %mul.i.1
  %arrayidx2.2.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 2
  %46 = load i32, i32* %arrayidx2.2.i.1, align 4, !tbaa !3
  %conv.2.i.1 = sext i32 %46 to i64
  %arrayidx4.2.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 2
  %47 = load i32, i32* %arrayidx4.2.i.1, align 4, !tbaa !3
  %conv5.2.i.1 = sext i32 %47 to i64
  %mul.2.i.1 = mul nsw i64 %conv5.2.i.1, %conv.2.i.1
  %add.2.i.1 = add nsw i64 %add.1.i.1, %mul.2.i.1
  %arrayidx2.3.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 3
  %48 = load i32, i32* %arrayidx2.3.i.1, align 4, !tbaa !3
  %conv.3.i.1 = sext i32 %48 to i64
  %arrayidx4.3.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 3
  %49 = load i32, i32* %arrayidx4.3.i.1, align 4, !tbaa !3
  %conv5.3.i.1 = sext i32 %49 to i64
  %mul.3.i.1 = mul nsw i64 %conv5.3.i.1, %conv.3.i.1
  %add.3.i.1 = add nsw i64 %add.2.i.1, %mul.3.i.1
  %arrayidx2.4.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 4
  %50 = load i32, i32* %arrayidx2.4.i.1, align 4, !tbaa !3
  %conv.4.i.1 = sext i32 %50 to i64
  %arrayidx4.4.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 4
  %51 = load i32, i32* %arrayidx4.4.i.1, align 4, !tbaa !3
  %conv5.4.i.1 = sext i32 %51 to i64
  %mul.4.i.1 = mul nsw i64 %conv5.4.i.1, %conv.4.i.1
  %add.4.i.1 = add nsw i64 %add.3.i.1, %mul.4.i.1
  %arrayidx2.5.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 5
  %52 = load i32, i32* %arrayidx2.5.i.1, align 4, !tbaa !3
  %conv.5.i.1 = sext i32 %52 to i64
  %arrayidx4.5.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 5
  %53 = load i32, i32* %arrayidx4.5.i.1, align 4, !tbaa !3
  %conv5.5.i.1 = sext i32 %53 to i64
  %mul.5.i.1 = mul nsw i64 %conv5.5.i.1, %conv.5.i.1
  %add.5.i.1 = add nsw i64 %add.4.i.1, %mul.5.i.1
  %arrayidx2.6.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 6
  %54 = load i32, i32* %arrayidx2.6.i.1, align 4, !tbaa !3
  %conv.6.i.1 = sext i32 %54 to i64
  %arrayidx4.6.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 6
  %55 = load i32, i32* %arrayidx4.6.i.1, align 4, !tbaa !3
  %conv5.6.i.1 = sext i32 %55 to i64
  %mul.6.i.1 = mul nsw i64 %conv5.6.i.1, %conv.6.i.1
  %add.6.i.1 = add nsw i64 %add.5.i.1, %mul.6.i.1
  %arrayidx2.7.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 7
  %56 = load i32, i32* %arrayidx2.7.i.1, align 4, !tbaa !3
  %conv.7.i.1 = sext i32 %56 to i64
  %arrayidx4.7.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 7
  %57 = load i32, i32* %arrayidx4.7.i.1, align 4, !tbaa !3
  %conv5.7.i.1 = sext i32 %57 to i64
  %mul.7.i.1 = mul nsw i64 %conv5.7.i.1, %conv.7.i.1
  %add.7.i.1 = add nsw i64 %add.6.i.1, %mul.7.i.1
  %arrayidx2.8.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 8
  %58 = load i32, i32* %arrayidx2.8.i.1, align 4, !tbaa !3
  %conv.8.i.1 = sext i32 %58 to i64
  %arrayidx4.8.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 8
  %59 = load i32, i32* %arrayidx4.8.i.1, align 4, !tbaa !3
  %conv5.8.i.1 = sext i32 %59 to i64
  %mul.8.i.1 = mul nsw i64 %conv5.8.i.1, %conv.8.i.1
  %add.8.i.1 = add nsw i64 %add.7.i.1, %mul.8.i.1
  %arrayidx2.9.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 9
  %60 = load i32, i32* %arrayidx2.9.i.1, align 4, !tbaa !3
  %conv.9.i.1 = sext i32 %60 to i64
  %arrayidx4.9.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 9
  %61 = load i32, i32* %arrayidx4.9.i.1, align 4, !tbaa !3
  %conv5.9.i.1 = sext i32 %61 to i64
  %mul.9.i.1 = mul nsw i64 %conv5.9.i.1, %conv.9.i.1
  %add.9.i.1 = add nsw i64 %add.8.i.1, %mul.9.i.1
  %arrayidx2.10.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 10
  %62 = load i32, i32* %arrayidx2.10.i.1, align 4, !tbaa !3
  %conv.10.i.1 = sext i32 %62 to i64
  %arrayidx4.10.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 10
  %63 = load i32, i32* %arrayidx4.10.i.1, align 4, !tbaa !3
  %conv5.10.i.1 = sext i32 %63 to i64
  %mul.10.i.1 = mul nsw i64 %conv5.10.i.1, %conv.10.i.1
  %add.10.i.1 = add nsw i64 %add.9.i.1, %mul.10.i.1
  %arrayidx2.11.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 11
  %64 = load i32, i32* %arrayidx2.11.i.1, align 4, !tbaa !3
  %conv.11.i.1 = sext i32 %64 to i64
  %arrayidx4.11.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 11
  %65 = load i32, i32* %arrayidx4.11.i.1, align 4, !tbaa !3
  %conv5.11.i.1 = sext i32 %65 to i64
  %mul.11.i.1 = mul nsw i64 %conv5.11.i.1, %conv.11.i.1
  %add.11.i.1 = add nsw i64 %add.10.i.1, %mul.11.i.1
  %arrayidx2.12.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 12
  %66 = load i32, i32* %arrayidx2.12.i.1, align 4, !tbaa !3
  %conv.12.i.1 = sext i32 %66 to i64
  %arrayidx4.12.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 12
  %67 = load i32, i32* %arrayidx4.12.i.1, align 4, !tbaa !3
  %conv5.12.i.1 = sext i32 %67 to i64
  %mul.12.i.1 = mul nsw i64 %conv5.12.i.1, %conv.12.i.1
  %add.12.i.1 = add nsw i64 %add.11.i.1, %mul.12.i.1
  %arrayidx2.13.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 13
  %68 = load i32, i32* %arrayidx2.13.i.1, align 4, !tbaa !3
  %conv.13.i.1 = sext i32 %68 to i64
  %arrayidx4.13.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 13
  %69 = load i32, i32* %arrayidx4.13.i.1, align 4, !tbaa !3
  %conv5.13.i.1 = sext i32 %69 to i64
  %mul.13.i.1 = mul nsw i64 %conv5.13.i.1, %conv.13.i.1
  %add.13.i.1 = add nsw i64 %add.12.i.1, %mul.13.i.1
  %arrayidx2.14.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 14
  %70 = load i32, i32* %arrayidx2.14.i.1, align 4, !tbaa !3
  %conv.14.i.1 = sext i32 %70 to i64
  %arrayidx4.14.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 14
  %71 = load i32, i32* %arrayidx4.14.i.1, align 4, !tbaa !3
  %conv5.14.i.1 = sext i32 %71 to i64
  %mul.14.i.1 = mul nsw i64 %conv5.14.i.1, %conv.14.i.1
  %add.14.i.1 = add nsw i64 %add.13.i.1, %mul.14.i.1
  %arrayidx2.15.i.1 = getelementptr inbounds i32, i32* %arrayidx.i24.1, i64 15
  %72 = load i32, i32* %arrayidx2.15.i.1, align 4, !tbaa !3
  %conv.15.i.1 = sext i32 %72 to i64
  %arrayidx4.15.i.1 = getelementptr inbounds [16 x i32], [16 x i32]* %coeffs, i64 1, i64 15
  %73 = load i32, i32* %arrayidx4.15.i.1, align 4, !tbaa !3
  %conv5.15.i.1 = sext i32 %73 to i64
  %mul.15.i.1 = mul nsw i64 %conv5.15.i.1, %conv.15.i.1
  %add.15.i.1 = add nsw i64 %add.14.i.1, %mul.15.i.1
  %add4.i.i.i.1 = add nsw i64 %add.15.i.1, %shl.i.i.i
  %shr.i.i.i.1 = ashr i64 %add4.i.i.i.1, %sh_prom5.i.i.i
  %and.i.i.i.1 = and i64 %add.15.i.1, %sub3.i.i.i
  %cmp.i.i.i.1 = icmp eq i64 %and.i.i.i.1, %shl.i.i.i
  %.neg.i.i.i.1 = sext i1 %cmp.i.i.i.1 to i64
  %sub7.i.i.i.1 = add i64 %shr.i.i.i.1, %.neg.i.i.i.1
  %conv.i.i.1 = trunc i64 %sub7.i.i.i.1 to i32
  %74 = icmp sgt i32 %conv.i.i.1, -8388608
  %75 = select i1 %74, i32 %conv.i.i.1, i32 -8388608
  %76 = icmp slt i32 %75, 8388607
  %77 = select i1 %76, i32 %75, i32 8388607
  %arrayidx11.1 = getelementptr inbounds i32, i32* %samples, i64 1
  store i32 %77, i32* %arrayidx11.1, align 4, !tbaa !3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @aptx_invert_quantize_and_prediction(%struct.aptx_channel* nocapture noundef %channel, i32 noundef %hd) unnamed_addr #2 {
entry:
  %0 = zext i32 %hd to i64
  br label %for.body

for.body:                                         ; preds = %entry, %aptx_process_subband.exit
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %aptx_process_subband.exit ]
  %quantized_sample = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 4, i64 %indvars.iv, i32 0
  %1 = load i32, i32* %quantized_sample, align 4, !tbaa !9
  %arrayidx6 = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 2, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx6, align 4, !tbaa !3
  %cmp.i.i = icmp slt i32 %1, 0
  %quantized_sample.lobit.neg.i.i = ashr i32 %1, 31
  %xor.i.i = xor i32 %quantized_sample.lobit.neg.i.i, %1
  %add.i.i = add nsw i32 %xor.i.i, 1
  %quantize_intervals.i.i = getelementptr inbounds [2 x [4 x %struct.aptx_tables]], [2 x [4 x %struct.aptx_tables]]* @all_tables, i64 0, i64 %0, i64 %indvars.iv, i32 0
  %3 = load i32*, i32** %quantize_intervals.i.i, align 16, !tbaa !11
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds i32, i32* %3, i64 %idxprom.i.i
  %4 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !3
  %div.i.i = sdiv i32 %4, 2
  %sub3.i.i = sub nsw i32 0, %div.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub3.i.i, i32 %div.i.i
  %conv4.i.i = sext i32 %spec.select.i.i to i64
  %mul.i.i = shl nsw i64 %conv4.i.i, 32
  %conv5.i.i = sext i32 %2 to i64
  %invert_quantize_dither_factors.i.i = getelementptr inbounds [2 x [4 x %struct.aptx_tables]], [2 x [4 x %struct.aptx_tables]]* @all_tables, i64 0, i64 %0, i64 %indvars.iv, i32 1
  %5 = load i32*, i32** %invert_quantize_dither_factors.i.i, align 8, !tbaa !14
  %arrayidx7.i.i = getelementptr inbounds i32, i32* %5, i64 %idxprom.i.i
  %6 = load i32, i32* %arrayidx7.i.i, align 4, !tbaa !3
  %conv8.i.i = sext i32 %6 to i64
  %mul9.i.i = mul nsw i64 %conv8.i.i, %conv5.i.i
  %add10.i.i = add nsw i64 %mul.i.i, %mul9.i.i
  %add4.i.i.i.i = add nsw i64 %add10.i.i, 2147483648
  %7 = lshr i64 %add4.i.i.i.i, 32
  %and.i.i.i.i = and i64 %add10.i.i, 8589934591
  %cmp.i.i.i.i = icmp eq i64 %and.i.i.i.i, 2147483648
  %.neg.i.i.i.i = sext i1 %cmp.i.i.i.i to i64
  %sub7.i.i.i.i = add nsw i64 %7, %.neg.i.i.i.i
  %conv.i.i.i = trunc i64 %sub7.i.i.i.i to i32
  %8 = icmp sgt i32 %conv.i.i.i, -8388608
  %9 = select i1 %8, i32 %conv.i.i.i, i32 -8388608
  %10 = icmp slt i32 %9, 8388607
  %11 = select i1 %10, i32 %9, i32 8388607
  %quantization_factor.i.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 5, i64 %indvars.iv, i32 0
  %12 = load i32, i32* %quantization_factor.i.i, align 4, !tbaa !15
  %conv11.i.i = sext i32 %12 to i64
  %conv12.i.i = sext i32 %11 to i64
  %mul13.i.i = mul nsw i64 %conv12.i.i, %conv11.i.i
  %13 = lshr i64 %mul13.i.i, 19
  %conv14.i.i = trunc i64 %13 to i32
  %reconstructed_difference.i.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 5, i64 %indvars.iv, i32 2
  store i32 %conv14.i.i, i32* %reconstructed_difference.i.i, align 4, !tbaa !17
  %factor_select15.i.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 5, i64 %indvars.iv, i32 1
  %14 = load i32, i32* %factor_select15.i.i, align 4, !tbaa !18
  %mul16.i.i = mul nsw i32 %14, 32620
  %quantize_factor_select_offset.i.i = getelementptr inbounds [2 x [4 x %struct.aptx_tables]], [2 x [4 x %struct.aptx_tables]]* @all_tables, i64 0, i64 %0, i64 %indvars.iv, i32 3
  %15 = load i16*, i16** %quantize_factor_select_offset.i.i, align 8, !tbaa !19
  %arrayidx18.i.i = getelementptr inbounds i16, i16* %15, i64 %idxprom.i.i
  %16 = load i16, i16* %arrayidx18.i.i, align 2, !tbaa !20
  %conv19.i.i = sext i16 %16 to i32
  %mul20.i.i = shl nsw i32 %conv19.i.i, 15
  %add21.i.i = add nsw i32 %mul20.i.i, %mul16.i.i
  %add3.i.i.i = add nsw i32 %add21.i.i, 16384
  %shr.i.i.i = ashr i32 %add3.i.i.i, 15
  %and.i.i.i = and i32 %add21.i.i, 65532
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 16384
  %conv.neg.i.i.i = sext i1 %cmp.i.i.i to i32
  %sub4.i.i.i = add nsw i32 %shr.i.i.i, %conv.neg.i.i.i
  %factor_max.i.i = getelementptr inbounds [2 x [4 x %struct.aptx_tables]], [2 x [4 x %struct.aptx_tables]]* @all_tables, i64 0, i64 %0, i64 %indvars.iv, i32 5
  %17 = load i32, i32* %factor_max.i.i, align 4, !tbaa !22
  %cmp.i58.i.i = icmp slt i32 %sub4.i.i.i, 0
  %cmp1.i.i.i = icmp sgt i32 %sub4.i.i.i, %17
  %amax.a.i.i.i = select i1 %cmp1.i.i.i, i32 %17, i32 %sub4.i.i.i
  %retval.0.i.i.i = select i1 %cmp.i58.i.i, i32 0, i32 %amax.a.i.i.i
  store i32 %retval.0.i.i.i, i32* %factor_select15.i.i, align 4, !tbaa !18
  %and.i.i = lshr i32 %retval.0.i.i.i, 3
  %18 = and i32 %and.i.i, 31
  %sub29.i.i = sub nsw i32 %17, %retval.0.i.i.i
  %shr30.i.i = ashr i32 %sub29.i.i, 8
  %19 = zext i32 %18 to i64
  %arrayidx32.i.i = getelementptr inbounds [32 x i16], [32 x i16]* @quantization_factors, i64 0, i64 %19
  %20 = load i16, i16* %arrayidx32.i.i, align 2, !tbaa !20
  %conv33.i.i = sext i16 %20 to i32
  %shl.i.i = shl nsw i32 %conv33.i.i, 11
  %shr34.i.i = ashr i32 %shl.i.i, %shr30.i.i
  store i32 %shr34.i.i, i32* %quantization_factor.i.i, align 4, !tbaa !15
  %predicted_difference.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 6, i64 %indvars.iv, i32 6
  %21 = load i32, i32* %predicted_difference.i, align 4, !tbaa !23
  %sub.i = sub nsw i32 0, %21
  %cmp.i = icmp sgt i32 %conv14.i.i, %sub.i
  %conv.i = zext i1 %cmp.i to i32
  %cmp4.i = icmp slt i32 %conv14.i.i, %sub.i
  %conv5.neg.i = sext i1 %cmp4.i to i32
  %sub6.i = add nsw i32 %conv5.neg.i, %conv.i
  %arrayidx.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 6, i64 %indvars.iv, i32 0, i64 0
  %22 = load i32, i32* %arrayidx.i, align 4, !tbaa !3
  %arrayidx9.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 6, i64 %indvars.iv, i32 0, i64 1
  %23 = load i32, i32* %arrayidx9.i, align 4, !tbaa !3
  %mul10.i = mul nsw i32 %sub6.i, %23
  store i32 %23, i32* %arrayidx.i, align 4, !tbaa !3
  %or.i = or i32 %sub6.i, 1
  store i32 %or.i, i32* %arrayidx9.i, align 4, !tbaa !3
  %arrayidx20.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 6, i64 %indvars.iv, i32 1, i64 1
  %24 = load i32, i32* %arrayidx20.i, align 4, !tbaa !3
  %25 = mul i32 %mul10.i, %24
  %mul21.i = sub i32 0, %25
  %add3.i.i = sub i32 1, %25
  %shr.i.i = ashr i32 %add3.i.i, 1
  %and.i88.i = and i32 %mul21.i, 3
  %cmp.i89.i = icmp eq i32 %and.i88.i, 1
  %conv.neg.i.i = sext i1 %cmp.i89.i to i32
  %sub4.i.i = add nsw i32 %shr.i.i, %conv.neg.i.i
  %26 = icmp slt i32 %sub4.i.i, 1048576
  %amax.a.i.i = select i1 %26, i32 %sub4.i.i, i32 1048576
  %27 = icmp sgt i32 %amax.a.i.i, -1048576
  %retval.0.i.i = select i1 %27, i32 %amax.a.i.i, i32 -1048576
  %and.i = shl nsw i32 %retval.0.i.i, 4
  %mul24.i = and i32 %and.i, -256
  %arrayidx26.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 6, i64 %indvars.iv, i32 1, i64 0
  %28 = load i32, i32* %arrayidx26.i, align 4, !tbaa !3
  %mul27.i = mul nsw i32 %28, 254
  %mul.i = shl i32 %22, 23
  %mul29.i = mul i32 %mul.i, %sub6.i
  %add.i = add nsw i32 %mul29.i, %mul27.i
  %add30.i = add nsw i32 %add.i, %mul24.i
  %add3.i91.i = add nsw i32 %add30.i, 128
  %shr.i92.i = ashr i32 %add3.i91.i, 8
  %and.i93.i = and i32 %add30.i, 510
  %cmp.i94.i = icmp eq i32 %and.i93.i, 128
  %conv.neg.i95.i = sext i1 %cmp.i94.i to i32
  %sub4.i96.i = add nsw i32 %shr.i92.i, %conv.neg.i95.i
  %29 = icmp slt i32 %sub4.i96.i, 3145728
  %amax.a.i99.i = select i1 %29, i32 %sub4.i96.i, i32 3145728
  %30 = icmp sgt i32 %amax.a.i99.i, -3145728
  %retval.0.i100.i = select i1 %30, i32 %amax.a.i99.i, i32 -3145728
  store i32 %retval.0.i100.i, i32* %arrayidx26.i, align 4, !tbaa !3
  %sub40.neg.i = add nsw i32 %retval.0.i100.i, -3932160
  %sub40.i = sub nsw i32 3932160, %retval.0.i100.i
  %mul43.i = mul nsw i32 %24, 255
  %mul45.i = mul nsw i32 %mul10.i, 12582912
  %add46.i = add nsw i32 %mul45.i, %mul43.i
  %add3.i101.i = add nsw i32 %add46.i, 128
  %shr.i102.i = ashr i32 %add3.i101.i, 8
  %and.i103.i = and i32 %add46.i, 511
  %cmp.i104.i = icmp eq i32 %and.i103.i, 128
  %conv.neg.i105.i = sext i1 %cmp.i104.i to i32
  %sub4.i106.i = add nsw i32 %shr.i102.i, %conv.neg.i105.i
  %cmp.i107.i = icmp slt i32 %sub4.i106.i, %sub40.neg.i
  %cmp1.i108.i = icmp sgt i32 %sub4.i106.i, %sub40.i
  %amax.a.i109.i = select i1 %cmp1.i108.i, i32 %sub40.i, i32 %sub4.i106.i
  %retval.0.i110.i = select i1 %cmp.i107.i, i32 %sub40.neg.i, i32 %amax.a.i109.i
  store i32 %retval.0.i110.i, i32* %arrayidx20.i, align 4, !tbaa !3
  %prediction_order.i = getelementptr inbounds [2 x [4 x %struct.aptx_tables]], [2 x [4 x %struct.aptx_tables]]* @all_tables, i64 0, i64 %0, i64 %indvars.iv, i32 6
  %31 = load i32, i32* %prediction_order.i, align 8, !tbaa !25
  %predicted_sample.i.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 6, i64 %indvars.iv, i32 7
  %32 = load i32, i32* %predicted_sample.i.i, align 4, !tbaa !26
  %add.i111.i = add nsw i32 %32, %conv14.i.i
  %33 = icmp sgt i32 %add.i111.i, -8388608
  %34 = select i1 %33, i32 %add.i111.i, i32 -8388608
  %35 = icmp slt i32 %34, 8388607
  %36 = select i1 %35, i32 %34, i32 8388607
  %conv.i.i = sext i32 %retval.0.i100.i to i64
  %previous_reconstructed_sample.i.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 6, i64 %indvars.iv, i32 5
  %37 = load i32, i32* %previous_reconstructed_sample.i.i, align 4, !tbaa !27
  %conv1.i.i = sext i32 %37 to i64
  %mul.i113.i = mul nsw i64 %conv.i.i, %conv1.i.i
  %conv4.i114.i = sext i32 %retval.0.i110.i to i64
  %conv5.i115.i = sext i32 %36 to i64
  %mul6.i.i = mul nsw i64 %conv4.i114.i, %conv5.i115.i
  %add7.i.i = add nsw i64 %mul6.i.i, %mul.i113.i
  %38 = lshr i64 %add7.i.i, 22
  %conv8.i116.i = trunc i64 %38 to i32
  %39 = icmp sgt i32 %conv8.i116.i, -8388608
  %40 = select i1 %39, i32 %conv8.i116.i, i32 -8388608
  store i32 %36, i32* %previous_reconstructed_sample.i.i, align 4, !tbaa !27
  %idx.ext.i.i.i = sext i32 %31 to i64
  %add.ptr.i.i.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 6, i64 %indvars.iv, i32 4, i64 %idx.ext.i.i.i
  %pos.i.i.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 6, i64 %indvars.iv, i32 3
  %41 = load i32, i32* %pos.i.i.i, align 4, !tbaa !28
  %idxprom.i.i.i = sext i32 %41 to i64
  %arrayidx.i.i.i = getelementptr inbounds i32, i32* %add.ptr.i.i.i, i64 %idxprom.i.i.i
  %42 = load i32, i32* %arrayidx.i.i.i, align 4, !tbaa !3
  %arrayidx2.i.i.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 6, i64 %indvars.iv, i32 4, i64 %idxprom.i.i.i
  store i32 %42, i32* %arrayidx2.i.i.i, align 4, !tbaa !3
  %add.i.i.i = add nsw i32 %41, 1
  %rem.i.i.i = srem i32 %add.i.i.i, %31
  store i32 %rem.i.i.i, i32* %pos.i.i.i, align 4, !tbaa !28
  %idxprom4.i.i.i = sext i32 %rem.i.i.i to i64
  %arrayidx5.i.i.i = getelementptr inbounds i32, i32* %add.ptr.i.i.i, i64 %idxprom4.i.i.i
  store i32 %conv14.i.i, i32* %arrayidx5.i.i.i, align 4, !tbaa !3
  %cmp.i117.i = icmp sgt i32 %conv14.i.i, 0
  %conv12.neg.i.i = sext i1 %cmp.i117.i to i32
  %reconstructed_difference.lobit.neg.neg.i.i = lshr i32 %conv14.i.i, 31
  %sub.neg.i.i = add nsw i32 %reconstructed_difference.lobit.neg.neg.i.i, %conv12.neg.i.i
  %mul15.neg.i.i = shl nsw i32 %sub.neg.i.i, 23
  %cmp1680.i.i = icmp sgt i32 %31, 0
  br i1 %cmp1680.i.i, label %for.body.preheader.i.i, label %.thread89.i.i

.thread89.i.i:                                    ; preds = %for.body
  %43 = icmp slt i32 %40, 8388607
  %44 = select i1 %43, i32 %40, i32 8388607
  br label %.thread.i.i

for.body.preheader.i.i:                           ; preds = %for.body
  %wide.trip.count.i.i = zext i32 %31 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  %predicted_difference.081.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %add40.i.i, %for.body.i.i ]
  %45 = sub nsw i64 0, %indvars.iv.i.i
  %46 = xor i64 %indvars.iv.i.i, -1
  %arrayidx20.i.i = getelementptr inbounds i32, i32* %arrayidx5.i.i.i, i64 %46
  %47 = load i32, i32* %arrayidx20.i.i, align 4, !tbaa !3
  %shr21.i.i = ashr i32 %47, 31
  %or.i.i = or i32 %shr21.i.i, 1
  %arrayidx23.i.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %channel, i64 0, i32 6, i64 %indvars.iv, i32 2, i64 %indvars.iv.i.i
  %48 = load i32, i32* %arrayidx23.i.i, align 4, !tbaa !3
  %mul24.neg.i.i = mul nsw i32 %mul15.neg.i.i, %or.i.i
  %sub25.i.i = add i32 %mul24.neg.i.i, %48
  %add3.i.i118.i = add nsw i32 %sub25.i.i, 128
  %shr.i.i119.i = ashr i32 %add3.i.i118.i, 8
  %and.i.i120.i = and i32 %sub25.i.i, 511
  %cmp.i.i121.i = icmp eq i32 %and.i.i120.i, 128
  %conv.neg.i.neg83.i.i = zext i1 %cmp.i.i121.i to i32
  %sub4.i.neg.i.i = sub i32 %48, %shr.i.i119.i
  %sub30.i.i = add i32 %sub4.i.neg.i.i, %conv.neg.i.neg83.i.i
  store i32 %sub30.i.i, i32* %arrayidx23.i.i, align 4, !tbaa !3
  %arrayidx33.i.i = getelementptr inbounds i32, i32* %arrayidx5.i.i.i, i64 %45
  %49 = load i32, i32* %arrayidx33.i.i, align 4, !tbaa !3
  %conv34.i.i = sext i32 %49 to i64
  %conv38.i.i = sext i32 %sub30.i.i to i64
  %mul39.i.i = mul nsw i64 %conv38.i.i, %conv34.i.i
  %add40.i.i = add nsw i64 %mul39.i.i, %predicted_difference.081.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i, !llvm.loop !29

for.end.i.i:                                      ; preds = %for.body.i.i
  %phi.bo.i.i = lshr i64 %add40.i.i, 22
  %phi.cast.i.i = trunc i64 %phi.bo.i.i to i32
  %50 = icmp slt i32 %40, 8388607
  %51 = select i1 %50, i32 %40, i32 8388607
  %52 = icmp sgt i32 %phi.cast.i.i, -8388608
  br i1 %52, label %53, label %.thread.i.i

53:                                               ; preds = %for.end.i.i
  %54 = icmp slt i32 %phi.cast.i.i, 8388607
  br i1 %54, label %.thread.i.i, label %aptx_process_subband.exit

.thread.i.i:                                      ; preds = %53, %for.end.i.i, %.thread89.i.i
  %55 = phi i32 [ %phi.cast.i.i, %53 ], [ 0, %.thread89.i.i ], [ -8388608, %for.end.i.i ]
  %56 = phi i32 [ %51, %53 ], [ %44, %.thread89.i.i ], [ %51, %for.end.i.i ]
  br label %aptx_process_subband.exit

aptx_process_subband.exit:                        ; preds = %53, %.thread.i.i
  %57 = phi i32 [ %56, %.thread.i.i ], [ %51, %53 ]
  %58 = phi i32 [ %55, %.thread.i.i ], [ 8388607, %53 ]
  store i32 %58, i32* %predicted_difference.i, align 4, !tbaa !23
  %add46.i.i = add nsw i32 %58, %57
  %59 = icmp sgt i32 %add46.i.i, -8388608
  %60 = select i1 %59, i32 %add46.i.i, i32 -8388608
  %61 = icmp slt i32 %60, 8388607
  %62 = select i1 %61, i32 %60, i32 8388607
  store i32 %62, i32* %predicted_sample.i.i, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !31

for.end:                                          ; preds = %aptx_process_subband.exit
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @aptx_encode_samples(%struct.aptx_context* noundef %ctx, [4 x i32]* nocapture noundef readonly %samples, i8* nocapture noundef writeonly %output) unnamed_addr #3 {
entry:
  %intermediate_samples.i.i = alloca [4 x i32], align 16
  %subband_samples.i = alloca [4 x i32], align 16
  %hd = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 3
  %0 = bitcast [4 x i32]* %subband_samples.i to i8*
  %arraydecay.i = getelementptr inbounds [4 x i32], [4 x i32]* %subband_samples.i, i64 0, i64 0
  %1 = bitcast [4 x i32]* %intermediate_samples.i.i to i8*
  %arrayidx2.i.i = getelementptr inbounds [4 x i32], [4 x i32]* %intermediate_samples.i.i, i64 0, i64 0
  %arrayidx5.i.i = getelementptr inbounds [4 x i32], [4 x i32]* %intermediate_samples.i.i, i64 0, i64 2
  %arrayidx2.1.i.i = getelementptr inbounds [4 x i32], [4 x i32]* %intermediate_samples.i.i, i64 0, i64 1
  %arrayidx5.1.i.i = getelementptr inbounds [4 x i32], [4 x i32]* %intermediate_samples.i.i, i64 0, i64 3
  %arrayidx22.i.i = getelementptr inbounds [4 x i32], [4 x i32]* %subband_samples.i, i64 0, i64 1
  %arrayidx18.1.i.i = getelementptr inbounds [4 x i32], [4 x i32]* %subband_samples.i, i64 0, i64 2
  %arrayidx22.1.i.i = getelementptr inbounds [4 x i32], [4 x i32]* %subband_samples.i, i64 0, i64 3
  br label %for.body

for.body:                                         ; preds = %entry, %aptx_encode_channel.exit
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %aptx_encode_channel.exit ]
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %samples, i64 %indvars.iv, i64 0
  %2 = load i8, i8* %hd, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %arraydecay.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 3, i32 0, i64 0
  call fastcc void @aptx_qmf_polyphase_analysis(%struct.aptx_filter_signal* noundef nonnull %arraydecay.i.i, [16 x i32]* noundef getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @aptx_qmf_outer_coeffs, i64 0, i64 0), i32* noundef %arraydecay, i32* noundef nonnull %arrayidx2.i.i, i32* noundef nonnull %arrayidx5.i.i) #12
  %arrayidx.1.i.i = getelementptr inbounds [4 x i32], [4 x i32]* %samples, i64 %indvars.iv, i64 2
  call fastcc void @aptx_qmf_polyphase_analysis(%struct.aptx_filter_signal* noundef nonnull %arraydecay.i.i, [16 x i32]* noundef getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @aptx_qmf_outer_coeffs, i64 0, i64 0), i32* noundef nonnull %arrayidx.1.i.i, i32* noundef nonnull %arrayidx2.1.i.i, i32* noundef nonnull %arrayidx5.1.i.i) #12
  %arraydecay11.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 3, i32 1, i64 0, i64 0
  call fastcc void @aptx_qmf_polyphase_analysis(%struct.aptx_filter_signal* noundef nonnull %arraydecay11.i.i, [16 x i32]* noundef getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @aptx_qmf_inner_coeffs, i64 0, i64 0), i32* noundef nonnull %arrayidx2.i.i, i32* noundef nonnull %arraydecay.i, i32* noundef nonnull %arrayidx22.i.i) #12
  %arraydecay11.1.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 3, i32 1, i64 1, i64 0
  call fastcc void @aptx_qmf_polyphase_analysis(%struct.aptx_filter_signal* noundef nonnull %arraydecay11.1.i.i, [16 x i32]* noundef getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @aptx_qmf_inner_coeffs, i64 0, i64 0), i32* noundef nonnull %arrayidx5.i.i, i32* noundef nonnull %arrayidx18.1.i.i, i32* noundef nonnull %arrayidx22.1.i.i) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  %quantized_sample.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 4, i64 0, i32 0
  %3 = load i32, i32* %quantized_sample.i.i.i, align 4, !tbaa !9
  %and.i.i.i = and i32 %3, 3
  %quantized_sample3.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 4, i64 1, i32 0
  %4 = load i32, i32* %quantized_sample3.i.i.i, align 4, !tbaa !9
  %and4.i.i.i = shl i32 %4, 1
  %shl5.i.i.i = and i32 %and4.i.i.i, 4
  %add.i.i.i = or i32 %and.i.i.i, %shl5.i.i.i
  %quantized_sample8.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 4, i64 2, i32 0
  %5 = load i32, i32* %quantized_sample8.i.i.i, align 4, !tbaa !9
  %and9.i.i.i = shl i32 %5, 3
  %shl10.i.i.i = and i32 %and9.i.i.i, 8
  %add11.i.i.i = or i32 %add.i.i.i, %shl10.i.i.i
  %shl12.i.i.i = shl nuw nsw i32 %add11.i.i.i, 8
  %codeword_history.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 0
  %6 = load i32, i32* %codeword_history.i.i.i, align 4, !tbaa !35
  %shl13.i.i.i = shl i32 %6, 4
  %add14.i.i.i = add nsw i32 %shl12.i.i.i, %shl13.i.i.i
  store i32 %add14.i.i.i, i32* %codeword_history.i.i.i, align 4, !tbaa !35
  %shr.i.i = ashr i32 %add14.i.i.i, 7
  %conv.i.i = sext i32 %shr.i.i to i64
  %mul.i.i = mul nsw i64 %conv.i.i, 5184443
  %mul1.i.i = mul nsw i64 %conv.i.i, 20737772
  %shr2.i.i = ashr i64 %mul.i.i, 22
  %add.i.i = add nsw i64 %shr2.i.i, %mul1.i.i
  %conv3.i.i = trunc i64 %add.i.i to i32
  %shl.i.i = shl i32 %conv3.i.i, 23
  %arrayidx.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 2, i64 0
  store i32 %shl.i.i, i32* %arrayidx.i.i, align 4, !tbaa !3
  %shl.1.i.i = shl i32 %conv3.i.i, 18
  %arrayidx.1.i27.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 2, i64 1
  store i32 %shl.1.i.i, i32* %arrayidx.1.i27.i, align 4, !tbaa !3
  %shl.2.i.i = shl i32 %conv3.i.i, 13
  %arrayidx.2.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 2, i64 2
  store i32 %shl.2.i.i, i32* %arrayidx.2.i.i, align 4, !tbaa !3
  %shl.3.i.i = shl i32 %conv3.i.i, 8
  %arrayidx.3.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 2, i64 3
  store i32 %shl.3.i.i, i32* %arrayidx.3.i.i, align 4, !tbaa !3
  %shr618.i.i = lshr i32 %conv3.i.i, 25
  %and.i.i = and i32 %shr618.i.i, 1
  %dither_parity.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 1
  store i32 %and.i.i, i32* %dither_parity.i.i, align 4, !tbaa !38
  %7 = zext i8 %2 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %aptx_quantize_difference.exit.for.body_crit_edge.i, %for.body
  %8 = phi i32 [ %shl.i.i, %for.body ], [ %.pre.i, %aptx_quantize_difference.exit.for.body_crit_edge.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body ], [ %indvars.iv.next.i, %aptx_quantize_difference.exit.for.body_crit_edge.i ]
  %arrayidx.i = getelementptr inbounds [4 x i32], [4 x i32]* %subband_samples.i, i64 0, i64 %indvars.iv.i
  %9 = load i32, i32* %arrayidx.i, align 4, !tbaa !3
  %predicted_sample.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 6, i64 %indvars.iv.i, i32 7
  %10 = load i32, i32* %predicted_sample.i, align 4, !tbaa !26
  %sub.i = sub nsw i32 %9, %10
  %11 = icmp sgt i32 %sub.i, -8388608
  %12 = select i1 %11, i32 %sub.i, i32 -8388608
  %13 = icmp slt i32 %12, 8388607
  %14 = select i1 %13, i32 %12, i32 8388607
  %quantization_factor.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 5, i64 %indvars.iv.i, i32 0
  %15 = load i32, i32* %quantization_factor.i, align 4, !tbaa !15
  %quantize_intervals.i.i = getelementptr inbounds [2 x [4 x %struct.aptx_tables]], [2 x [4 x %struct.aptx_tables]]* @all_tables, i64 0, i64 %7, i64 %indvars.iv.i, i32 0
  %16 = load i32*, i32** %quantize_intervals.i.i, align 16, !tbaa !11
  %17 = tail call i32 @llvm.abs.i32(i32 %14, i1 true) #12
  %18 = icmp ult i32 %17, 8388607
  %spec.store.select.i.i = select i1 %18, i32 %17, i32 8388607
  %tables_size.i.i = getelementptr inbounds [2 x [4 x %struct.aptx_tables]], [2 x [4 x %struct.aptx_tables]]* @all_tables, i64 0, i64 %7, i64 %indvars.iv.i, i32 4
  %19 = load i32, i32* %tables_size.i.i, align 16, !tbaa !39
  %cmp15.i.i.i = icmp sgt i32 %19, 1
  br i1 %cmp15.i.i.i, label %for.body.lr.ph.i.i.i, label %entry.aptx_bin_search.exit_crit_edge.i.i

entry.aptx_bin_search.exit_crit_edge.i.i:         ; preds = %for.body.i
  %.pre.i.i = sext i32 %15 to i64
  br label %aptx_quantize_difference.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %for.body.i
  %20 = lshr i32 %spec.store.select.i.i, 4
  %conv.i.i.i = sext i32 %15 to i64
  %conv2.i.i.i = zext i32 %20 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 24
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %for.body.lr.ph.i.i.i
  %i.017.in.i.i.i = phi i32 [ %19, %for.body.lr.ph.i.i.i ], [ %i.017.i.i.i, %for.body.i.i.i ]
  %idx.016.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %spec.select.i.i.i, %for.body.i.i.i ]
  %i.017.i.i.i = ashr i32 %i.017.in.i.i.i, 1
  %add.i.i28.i = add nsw i32 %i.017.i.i.i, %idx.016.i.i.i
  %idxprom.i.i.i = sext i32 %add.i.i28.i to i64
  %arrayidx.i.i.i = getelementptr inbounds i32, i32* %16, i64 %idxprom.i.i.i
  %21 = load i32, i32* %arrayidx.i.i.i, align 4, !tbaa !3
  %conv1.i.i.i = sext i32 %21 to i64
  %mul.i.i.i = mul nsw i64 %conv1.i.i.i, %conv.i.i.i
  %cmp3.not.i.i.i = icmp sgt i64 %mul.i.i.i, %shl.i.i.i
  %spec.select.i.i.i = select i1 %cmp3.not.i.i.i, i32 %idx.016.i.i.i, i32 %add.i.i28.i
  %cmp.i.i.i = icmp sgt i32 %i.017.in.i.i.i, 3
  br i1 %cmp.i.i.i, label %for.body.i.i.i, label %aptx_quantize_difference.exit.i, !llvm.loop !40

aptx_quantize_difference.exit.i:                  ; preds = %for.body.i.i.i, %entry.aptx_bin_search.exit_crit_edge.i.i
  %conv34.pre-phi.i.i = phi i64 [ %.pre.i.i, %entry.aptx_bin_search.exit_crit_edge.i.i ], [ %conv.i.i.i, %for.body.i.i.i ]
  %idx.0.lcssa.i.i.i = phi i32 [ 0, %entry.aptx_bin_search.exit_crit_edge.i.i ], [ %spec.select.i.i.i, %for.body.i.i.i ]
  %conv.i29.i = sext i32 %8 to i64
  %mul.i30.i = mul nsw i64 %conv.i29.i, %conv.i29.i
  %22 = lshr i64 %mul.i30.i, 32
  %conv6.i.i = trunc i64 %22 to i32
  %add3.i.i.i.i = add nuw nsw i32 %conv6.i.i, 64
  %23 = lshr i32 %add3.i.i.i.i, 7
  %and.i.i.i.i = and i32 %conv6.i.i, 255
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 64
  %conv.neg.i.i.i.i = sext i1 %cmp.i.i.i.i to i32
  %sub4.i.i.i.i = add nsw i32 %23, %conv.neg.i.i.i.i
  %24 = icmp slt i32 %sub4.i.i.i.i, 8388607
  %25 = select i1 %24, i32 %sub4.i.i.i.i, i32 8388607
  %sub8.i.i = add nsw i32 %25, -8388608
  %conv9.i.i = sext i32 %sub8.i.i to i64
  %quantize_dither_factors.i.i = getelementptr inbounds [2 x [4 x %struct.aptx_tables]], [2 x [4 x %struct.aptx_tables]]* @all_tables, i64 0, i64 %7, i64 %indvars.iv.i, i32 2
  %26 = load i32*, i32** %quantize_dither_factors.i.i, align 16, !tbaa !41
  %idxprom.i.i = sext i32 %idx.0.lcssa.i.i.i to i64
  %arrayidx.i31.i = getelementptr inbounds i32, i32* %26, i64 %idxprom.i.i
  %27 = load i32, i32* %arrayidx.i31.i, align 4, !tbaa !3
  %conv10.i.i = sext i32 %27 to i64
  %mul11.i.i = mul nsw i64 %conv10.i.i, %conv9.i.i
  %add4.i.i.i = add nsw i64 %mul11.i.i, 4194304
  %28 = lshr i64 %add4.i.i.i, 23
  %and.i.i32.i = and i64 %mul11.i.i, 16777215
  %cmp.i98.i.i = icmp eq i64 %and.i.i32.i, 4194304
  %.neg.i.i.i = sext i1 %cmp.i98.i.i to i64
  %sub7.i.i.i = add nsw i64 %28, %.neg.i.i.i
  %conv13.i.i = trunc i64 %sub7.i.i.i to i32
  %add.ptr.i.i = getelementptr inbounds i32, i32* %16, i64 %idxprom.i.i
  %arrayidx14.i.i = getelementptr inbounds i32, i32* %add.ptr.i.i, i64 1
  %29 = load i32, i32* %arrayidx14.i.i, align 4, !tbaa !3
  %30 = load i32, i32* %add.ptr.i.i, align 4, !tbaa !3
  %add.i33.i = add nsw i32 %30, %29
  %div.i.i = sdiv i32 %add.i33.i, 2
  %sub18.i.i = sub nsw i32 %29, %30
  %sample_difference.lobit.neg.i.i = ashr i32 %14, 31
  %or.i.i = or i32 %sample_difference.lobit.neg.i.i, 1
  %mul22.i.i = mul nsw i32 %sub18.i.i, %or.i.i
  %conv24.i.i = sext i32 %mul22.i.i to i64
  %mul25.i.i = mul nsw i64 %conv24.i.i, %conv.i29.i
  %add26.i.i = add nsw i32 %div.i.i, %conv13.i.i
  %31 = icmp sgt i32 %add26.i.i, -8388608
  %32 = select i1 %31, i32 %add26.i.i, i32 -8388608
  %33 = icmp slt i32 %32, 8388607
  %34 = select i1 %33, i32 %32, i32 8388607
  %conv2897.i.i = zext i32 %34 to i64
  %shl.i34.i = shl nuw i64 %conv2897.i.i, 32
  %add29.i.i = add nsw i64 %shl.i34.i, %mul25.i.i
  %add4.i.i.i.i = add nsw i64 %add29.i.i, 2147483648
  %35 = lshr i64 %add4.i.i.i.i, 32
  %and.i.i100.i.i = and i64 %add29.i.i, 8589934591
  %cmp.i.i101.i.i = icmp eq i64 %and.i.i100.i.i, 2147483648
  %.neg.i.i.i.i = sext i1 %cmp.i.i101.i.i to i64
  %sub7.i.i.i.i = add nsw i64 %35, %.neg.i.i.i.i
  %conv.i102.i.i = trunc i64 %sub7.i.i.i.i to i32
  %36 = icmp sgt i32 %conv.i102.i.i, -8388608
  %37 = select i1 %36, i32 %conv.i102.i.i, i32 -8388608
  %38 = icmp slt i32 %37, 8388607
  %39 = select i1 %38, i32 %37, i32 8388607
  %conv31.i.i = zext i32 %spec.store.select.i.i to i64
  %shl32.i.i = shl nuw nsw i64 %conv31.i.i, 20
  %conv33.i.i = sext i32 %39 to i64
  %mul35.i.i = mul nsw i64 %conv34.pre-phi.i.i, %conv33.i.i
  %sub36.i.i = sub nsw i64 %shl32.i.i, %mul35.i.i
  %add4.i103.i.i = add nsw i64 %sub36.i.i, 4194304
  %40 = lshr i64 %add4.i103.i.i, 23
  %and.i105.i.i = and i64 %sub36.i.i, 16777215
  %cmp.i106.i.i = icmp eq i64 %and.i105.i.i, 4194304
  %.neg.i107.i.i = sext i1 %cmp.i106.i.i to i64
  %sub7.i108.i.i = add nsw i64 %40, %.neg.i107.i.i
  %conv38.i.i = trunc i64 %sub7.i108.i.i to i32
  %error39.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 4, i64 %indvars.iv.i, i32 2
  %41 = tail call i32 @llvm.abs.i32(i32 %conv38.i.i, i1 true) #12
  store i32 %41, i32* %error39.i.i, align 4, !tbaa !42
  %cmp48.i.i = icmp slt i64 %sub36.i.i, 0
  %dec.i.i = add nsw i32 %idx.0.lcssa.i.i.i, -1
  %parity_change.0.i.i = select i1 %cmp48.i.i, i32 %idx.0.lcssa.i.i.i, i32 %dec.i.i
  %quantized_sample.0.i.i = select i1 %cmp48.i.i, i32 %dec.i.i, i32 %idx.0.lcssa.i.i.i
  %xor.i.i = xor i32 %quantized_sample.0.i.i, %sample_difference.lobit.neg.i.i
  %quantized_sample56.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 4, i64 %indvars.iv.i, i32 0
  store i32 %xor.i.i, i32* %quantized_sample56.i.i, align 4, !tbaa !9
  %xor57.i.i = xor i32 %parity_change.0.i.i, %sample_difference.lobit.neg.i.i
  %quantized_sample_parity_change.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 4, i64 %indvars.iv.i, i32 1
  store i32 %xor57.i.i, i32* %quantized_sample_parity_change.i.i, align 4, !tbaa !43
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %aptx_encode_channel.exit, label %aptx_quantize_difference.exit.for.body_crit_edge.i, !llvm.loop !44

aptx_quantize_difference.exit.for.body_crit_edge.i: ; preds = %aptx_quantize_difference.exit.i
  %arrayidx6.phi.trans.insert.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 %indvars.iv, i32 2, i64 %indvars.iv.next.i
  %.pre.i = load i32, i32* %arrayidx6.phi.trans.insert.i, align 4, !tbaa !3
  br label %for.body.i

aptx_encode_channel.exit:                         ; preds = %aptx_quantize_difference.exit.i
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !45

for.end:                                          ; preds = %aptx_encode_channel.exit
  %arraydecay4 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0
  %sync_idx = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 4
  %dither_parity.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 1
  %42 = load i32, i32* %dither_parity.i.i.i, align 4, !tbaa !38
  %quantized_sample.i.i.i90 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 4, i64 0, i32 0
  %43 = load i32, i32* %quantized_sample.i.i.i90, align 4, !tbaa !9
  %quantized_sample.1.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 4, i64 1, i32 0
  %44 = load i32, i32* %quantized_sample.1.i.i.i, align 4, !tbaa !9
  %quantized_sample.2.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 4, i64 2, i32 0
  %45 = load i32, i32* %quantized_sample.2.i.i.i, align 4, !tbaa !9
  %quantized_sample.3.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 4, i64 3, i32 0
  %46 = load i32, i32* %quantized_sample.3.i.i.i, align 4, !tbaa !9
  %dither_parity.i12.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 1
  %47 = load i32, i32* %dither_parity.i12.i.i, align 4, !tbaa !38
  %quantized_sample.i13.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 4, i64 0, i32 0
  %48 = load i32, i32* %quantized_sample.i13.i.i, align 4, !tbaa !9
  %quantized_sample.1.i15.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 4, i64 1, i32 0
  %49 = load i32, i32* %quantized_sample.1.i15.i.i, align 4, !tbaa !9
  %quantized_sample.2.i17.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 4, i64 2, i32 0
  %50 = load i32, i32* %quantized_sample.2.i17.i.i, align 4, !tbaa !9
  %quantized_sample.3.i19.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 4, i64 3, i32 0
  %51 = load i32, i32* %quantized_sample.3.i19.i.i, align 4, !tbaa !9
  %xor.i14.i.i = xor i32 %43, %42
  %xor.1.i16.i.i = xor i32 %xor.i14.i.i, %44
  %xor.2.i18.i.i = xor i32 %xor.1.i16.i.i, %45
  %xor.3.i20.i.i = xor i32 %xor.2.i18.i.i, %46
  %xor.i.i.i = xor i32 %xor.3.i20.i.i, %47
  %xor.1.i.i.i = xor i32 %xor.i.i.i, %48
  %xor.2.i.i.i = xor i32 %xor.1.i.i.i, %49
  %xor.3.i.i.i = xor i32 %xor.2.i.i.i, %50
  %and.i22.i.i = xor i32 %xor.3.i.i.i, %51
  %52 = load i8, i8* %sync_idx, align 1, !tbaa !46
  %cmp.i.i = icmp ne i8 %52, 7
  %53 = add i8 %52, 1
  %54 = and i8 %53, 7
  store i8 %54, i8* %sync_idx, align 1, !tbaa !46
  %55 = and i32 %and.i22.i.i, 1
  %56 = icmp ne i32 %55, 0
  %tobool.not.i = xor i1 %cmp.i.i, %56
  br i1 %tobool.not.i, label %aptx_insert_sync.exit, label %if.then.i

if.then.i:                                        ; preds = %for.end
  %arrayidx1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 4, i64 1
  %arrayidx.i91 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.cond3.preheader.i, %if.then.i
  %min.039.i = phi %struct.aptx_quantize* [ %arrayidx1.i, %if.then.i ], [ %spec.select.3.i, %for.cond3.preheader.i ]
  %c.038.i = phi %struct.aptx_channel* [ %arrayidx.i91, %if.then.i ], [ %incdec.ptr.i, %for.cond3.preheader.i ]
  %error.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %c.038.i, i64 0, i32 4, i64 1, i32 2
  %57 = load i32, i32* %error.i, align 4, !tbaa !42
  %error11.i = getelementptr inbounds %struct.aptx_quantize, %struct.aptx_quantize* %min.039.i, i64 0, i32 2
  %58 = load i32, i32* %error11.i, align 4, !tbaa !42
  %cmp12.i = icmp slt i32 %57, %58
  %arrayidx10.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %c.038.i, i64 0, i32 4, i64 1
  %spec.select.i = select i1 %cmp12.i, %struct.aptx_quantize* %arrayidx10.i, %struct.aptx_quantize* %min.039.i
  %error.1.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %c.038.i, i64 0, i32 4, i64 2, i32 2
  %59 = load i32, i32* %error.1.i, align 4, !tbaa !42
  %error11.1.i = getelementptr inbounds %struct.aptx_quantize, %struct.aptx_quantize* %spec.select.i, i64 0, i32 2
  %60 = load i32, i32* %error11.1.i, align 4, !tbaa !42
  %cmp12.1.i = icmp slt i32 %59, %60
  %arrayidx10.1.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %c.038.i, i64 0, i32 4, i64 2
  %spec.select.1.i = select i1 %cmp12.1.i, %struct.aptx_quantize* %arrayidx10.1.i, %struct.aptx_quantize* %spec.select.i
  %error.2.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %c.038.i, i64 0, i32 4, i64 0, i32 2
  %61 = load i32, i32* %error.2.i, align 4, !tbaa !42
  %error11.2.i = getelementptr inbounds %struct.aptx_quantize, %struct.aptx_quantize* %spec.select.1.i, i64 0, i32 2
  %62 = load i32, i32* %error11.2.i, align 4, !tbaa !42
  %cmp12.2.i = icmp slt i32 %61, %62
  %arrayidx10.2.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %c.038.i, i64 0, i32 4, i64 0
  %spec.select.2.i = select i1 %cmp12.2.i, %struct.aptx_quantize* %arrayidx10.2.i, %struct.aptx_quantize* %spec.select.1.i
  %error.3.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %c.038.i, i64 0, i32 4, i64 3, i32 2
  %63 = load i32, i32* %error.3.i, align 4, !tbaa !42
  %error11.3.i = getelementptr inbounds %struct.aptx_quantize, %struct.aptx_quantize* %spec.select.2.i, i64 0, i32 2
  %64 = load i32, i32* %error11.3.i, align 4, !tbaa !42
  %cmp12.3.i = icmp slt i32 %63, %64
  %arrayidx10.3.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %c.038.i, i64 0, i32 4, i64 3
  %spec.select.3.i = select i1 %cmp12.3.i, %struct.aptx_quantize* %arrayidx10.3.i, %struct.aptx_quantize* %spec.select.2.i
  %incdec.ptr.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %c.038.i, i64 -1
  %cmp.not.i = icmp ult %struct.aptx_channel* %incdec.ptr.i, %arraydecay4
  br i1 %cmp.not.i, label %for.end20.i, label %for.cond3.preheader.i, !llvm.loop !47

for.end20.i:                                      ; preds = %for.cond3.preheader.i
  %quantized_sample_parity_change.i = getelementptr inbounds %struct.aptx_quantize, %struct.aptx_quantize* %spec.select.3.i, i64 0, i32 1
  %65 = load i32, i32* %quantized_sample_parity_change.i, align 4, !tbaa !43
  %quantized_sample.i = getelementptr inbounds %struct.aptx_quantize, %struct.aptx_quantize* %spec.select.3.i, i64 0, i32 0
  store i32 %65, i32* %quantized_sample.i, align 4, !tbaa !9
  br label %aptx_insert_sync.exit

aptx_insert_sync.exit:                            ; preds = %for.end, %for.end20.i
  %66 = load i8, i8* %hd, align 8, !tbaa !32
  %conv13 = zext i8 %66 to i32
  tail call fastcc void @aptx_invert_quantize_and_prediction(%struct.aptx_channel* noundef nonnull %arraydecay4, i32 noundef %conv13)
  %67 = load i8, i8* %hd, align 8, !tbaa !32
  %tobool.not = icmp eq i8 %67, 0
  %68 = load i32, i32* %dither_parity.i.i.i, align 4, !tbaa !38
  %69 = load i32, i32* %quantized_sample.i.i.i90, align 4, !tbaa !9
  %xor.i.i97 = xor i32 %69, %68
  %70 = load i32, i32* %quantized_sample.1.i.i.i, align 4, !tbaa !9
  %xor.1.i.i99 = xor i32 %xor.i.i97, %70
  %71 = load i32, i32* %quantized_sample.2.i.i.i, align 4, !tbaa !9
  %xor.2.i.i101 = xor i32 %xor.1.i.i99, %71
  %72 = load i32, i32* %quantized_sample.3.i.i.i, align 4, !tbaa !9
  %xor.3.i.i103 = xor i32 %xor.2.i.i101, %72
  %and.i.i104 = and i32 %xor.3.i.i103, 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %aptx_insert_sync.exit
  %and.i = and i32 %72, 30
  %or.i = or i32 %and.i.i104, %and.i
  %shl.i = shl nuw nsw i32 %or.i, 19
  %and4.i = shl i32 %71, 15
  %shl5.i = and i32 %and4.i, 458752
  %or6.i = or i32 %shl.i, %shl5.i
  %and10.i = shl i32 %70, 9
  %shl11.i = and i32 %and10.i, 32256
  %and16.i = and i32 %69, 256
  %or12.i = or i32 %shl11.i, %and16.i
  %or18.i = or i32 %or12.i, %and4.i
  %shr = lshr exact i32 %or6.i, 16
  %conv18 = trunc i32 %shr to i8
  store i8 %conv18, i8* %output, align 1, !tbaa !46
  %shr21 = lshr exact i32 %or18.i, 8
  %conv30 = trunc i32 %69 to i8
  %arrayidx34 = getelementptr inbounds i8, i8* %output, i64 2
  store i8 %conv30, i8* %arrayidx34, align 1, !tbaa !46
  br label %for.inc56

if.else:                                          ; preds = %aptx_insert_sync.exit
  %and.i105 = and i32 %72, 6
  %or.i106 = or i32 %and.i.i104, %and.i105
  %shl.i107 = shl nuw nsw i32 %or.i106, 13
  %and4.i108 = shl i32 %71, 11
  %shl5.i109 = and i32 %and4.i108, 6144
  %or6.i110 = or i32 %shl.i107, %shl5.i109
  %and10.i111 = shl i32 %70, 7
  %shl11.i112 = and i32 %and10.i111, 1792
  %or12.i113 = or i32 %or6.i110, %shl11.i112
  %and16.i114 = and i32 %69, 127
  %or18.i115 = or i32 %and10.i111, %and16.i114
  %73 = lshr exact i32 %or12.i113, 8
  %conv43 = trunc i32 %73 to i8
  store i8 %conv43, i8* %output, align 1, !tbaa !46
  br label %for.inc56

for.inc56:                                        ; preds = %if.then, %if.else
  %conv23.sink.in = phi i32 [ %or18.i115, %if.else ], [ %shr21, %if.then ]
  %conv23.sink = trunc i32 %conv23.sink.in to i8
  %74 = getelementptr inbounds i8, i8* %output, i64 1
  store i8 %conv23.sink, i8* %74, align 1
  %arrayidx11.1 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1
  %75 = load i8, i8* %hd, align 8, !tbaa !32
  %conv13.1 = zext i8 %75 to i32
  tail call fastcc void @aptx_invert_quantize_and_prediction(%struct.aptx_channel* noundef nonnull %arrayidx11.1, i32 noundef %conv13.1)
  %76 = load i8, i8* %hd, align 8, !tbaa !32
  %tobool.not.1 = icmp eq i8 %76, 0
  %77 = load i32, i32* %dither_parity.i12.i.i, align 4, !tbaa !38
  %78 = load i32, i32* %quantized_sample.i13.i.i, align 4, !tbaa !9
  %xor.i.i97.1 = xor i32 %78, %77
  %79 = load i32, i32* %quantized_sample.1.i15.i.i, align 4, !tbaa !9
  %xor.1.i.i99.1 = xor i32 %xor.i.i97.1, %79
  %80 = load i32, i32* %quantized_sample.2.i17.i.i, align 4, !tbaa !9
  %xor.2.i.i101.1 = xor i32 %xor.1.i.i99.1, %80
  %81 = load i32, i32* %quantized_sample.3.i19.i.i, align 4, !tbaa !9
  %xor.3.i.i103.1 = xor i32 %xor.2.i.i101.1, %81
  %and.i.i104.1 = and i32 %xor.3.i.i103.1, 1
  br i1 %tobool.not.1, label %if.else.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc56
  %and.i.1 = and i32 %81, 30
  %or.i.1 = or i32 %and.i.i104.1, %and.i.1
  %shl.i.1 = shl nuw nsw i32 %or.i.1, 19
  %and4.i.1 = shl i32 %80, 15
  %shl5.i.1 = and i32 %and4.i.1, 458752
  %or6.i.1 = or i32 %shl.i.1, %shl5.i.1
  %and10.i.1 = shl i32 %79, 9
  %shl11.i.1 = and i32 %and10.i.1, 32256
  %and16.i.1 = and i32 %78, 256
  %or12.i.1 = or i32 %shl11.i.1, %and16.i.1
  %or18.i.1 = or i32 %or12.i.1, %and4.i.1
  %shr.1 = lshr exact i32 %or6.i.1, 16
  %shr21.1 = lshr exact i32 %or18.i.1, 8
  %conv23.1 = trunc i32 %shr21.1 to i8
  %arrayidx27.1 = getelementptr inbounds i8, i8* %output, i64 4
  store i8 %conv23.1, i8* %arrayidx27.1, align 1, !tbaa !46
  br label %for.inc56.1

if.else.1:                                        ; preds = %for.inc56
  %and.i105.1 = and i32 %81, 6
  %or.i106.1 = or i32 %and.i.i104.1, %and.i105.1
  %shl.i107.1 = shl nuw nsw i32 %or.i106.1, 13
  %and4.i108.1 = shl i32 %80, 11
  %shl5.i109.1 = and i32 %and4.i108.1, 6144
  %or6.i110.1 = or i32 %shl.i107.1, %shl5.i109.1
  %and10.i111.1 = shl i32 %79, 7
  %shl11.i112.1 = and i32 %and10.i111.1, 1792
  %or12.i113.1 = or i32 %or6.i110.1, %shl11.i112.1
  %and16.i114.1 = and i32 %78, 127
  %or18.i115.1 = or i32 %and10.i111.1, %and16.i114.1
  %82 = lshr exact i32 %or12.i113.1, 8
  br label %for.inc56.1

for.inc56.1:                                      ; preds = %if.else.1, %if.then.1
  %.sink128 = phi i32 [ %82, %if.else.1 ], [ %78, %if.then.1 ]
  %.sink = phi i64 [ 2, %if.else.1 ], [ 5, %if.then.1 ]
  %conv18.1.sink.in = phi i32 [ %or18.i115.1, %if.else.1 ], [ %shr.1, %if.then.1 ]
  %conv43.1 = trunc i32 %.sink128 to i8
  %arrayidx47.1 = getelementptr inbounds i8, i8* %output, i64 %.sink
  store i8 %conv43.1, i8* %arrayidx47.1, align 1, !tbaa !46
  %conv18.1.sink = trunc i32 %conv18.1.sink.in to i8
  %83 = getelementptr inbounds i8, i8* %output, i64 3
  store i8 %conv18.1.sink, i8* %83, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @aptx_reset(%struct.aptx_context* nocapture noundef %ctx) local_unnamed_addr #2 {
entry:
  %ctx46 = bitcast %struct.aptx_context* %ctx to i8*
  %hd1 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 3
  %0 = load i8, i8* %hd1, align 8, !tbaa !32
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(4416) %ctx46, i8 0, i64 4416, i1 false), !tbaa !46
  store i8 %0, i8* %hd1, align 8, !tbaa !32
  %decode_skip_leading = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 6
  store i8 23, i8* %decode_skip_leading, align 1, !tbaa !48
  %encode_remaining = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 5
  store i8 23, i8* %encode_remaining, align 2, !tbaa !49
  %arrayidx17 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 0, i32 0, i64 0
  store i32 1, i32* %arrayidx17, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 0, i32 0, i64 1
  store i32 1, i32* %arrayidx19, align 4, !tbaa !3
  %arrayidx17.1 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 1, i32 0, i64 0
  store i32 1, i32* %arrayidx17.1, align 4, !tbaa !3
  %arrayidx19.1 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 1, i32 0, i64 1
  store i32 1, i32* %arrayidx19.1, align 4, !tbaa !3
  %arrayidx17.2 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 2, i32 0, i64 0
  store i32 1, i32* %arrayidx17.2, align 4, !tbaa !3
  %arrayidx19.2 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 2, i32 0, i64 1
  store i32 1, i32* %arrayidx19.2, align 4, !tbaa !3
  %arrayidx17.3 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 3, i32 0, i64 0
  store i32 1, i32* %arrayidx17.3, align 4, !tbaa !3
  %arrayidx19.3 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 3, i32 0, i64 1
  store i32 1, i32* %arrayidx19.3, align 4, !tbaa !3
  %arrayidx17.150 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 0, i32 0, i64 0
  store i32 1, i32* %arrayidx17.150, align 4, !tbaa !3
  %arrayidx19.151 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 0, i32 0, i64 1
  store i32 1, i32* %arrayidx19.151, align 4, !tbaa !3
  %arrayidx17.1.1 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 1, i32 0, i64 0
  store i32 1, i32* %arrayidx17.1.1, align 4, !tbaa !3
  %arrayidx19.1.1 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 1, i32 0, i64 1
  store i32 1, i32* %arrayidx19.1.1, align 4, !tbaa !3
  %arrayidx17.2.1 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 2, i32 0, i64 0
  store i32 1, i32* %arrayidx17.2.1, align 4, !tbaa !3
  %arrayidx19.2.1 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 2, i32 0, i64 1
  store i32 1, i32* %arrayidx19.2.1, align 4, !tbaa !3
  %arrayidx17.3.1 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 3, i32 0, i64 0
  store i32 1, i32* %arrayidx17.3.1, align 4, !tbaa !3
  %arrayidx19.3.1 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 3, i32 0, i64 1
  store i32 1, i32* %arrayidx19.3.1, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local %struct.aptx_context* @aptx_init(i32 noundef %hd) local_unnamed_addr #4 {
entry:
  %calloc = call dereferenceable_or_null(4416) i8* @calloc(i64 1, i64 4416)
  %0 = bitcast i8* %calloc to %struct.aptx_context*
  %tobool.not = icmp eq i8* %calloc, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp ne i32 %hd, 0
  %conv = zext i1 %tobool1.not to i8
  %hd2 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 3
  store i8 %conv, i8* %hd2, align 8, !tbaa !32
  %decode_skip_leading.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 6
  store i8 23, i8* %decode_skip_leading.i, align 1, !tbaa !48
  %encode_remaining.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 5
  store i8 23, i8* %encode_remaining.i, align 2, !tbaa !49
  %arrayidx17.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 0, i32 6, i64 0, i32 0, i64 0
  store i32 1, i32* %arrayidx17.i, align 4, !tbaa !3
  %arrayidx19.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 0, i32 6, i64 0, i32 0, i64 1
  store i32 1, i32* %arrayidx19.i, align 4, !tbaa !3
  %arrayidx17.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 0, i32 6, i64 1, i32 0, i64 0
  store i32 1, i32* %arrayidx17.1.i, align 4, !tbaa !3
  %arrayidx19.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 0, i32 6, i64 1, i32 0, i64 1
  store i32 1, i32* %arrayidx19.1.i, align 4, !tbaa !3
  %arrayidx17.2.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 0, i32 6, i64 2, i32 0, i64 0
  store i32 1, i32* %arrayidx17.2.i, align 4, !tbaa !3
  %arrayidx19.2.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 0, i32 6, i64 2, i32 0, i64 1
  store i32 1, i32* %arrayidx19.2.i, align 4, !tbaa !3
  %arrayidx17.3.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 0, i32 6, i64 3, i32 0, i64 0
  store i32 1, i32* %arrayidx17.3.i, align 4, !tbaa !3
  %arrayidx19.3.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 0, i32 6, i64 3, i32 0, i64 1
  store i32 1, i32* %arrayidx19.3.i, align 4, !tbaa !3
  %arrayidx17.150.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 1, i32 6, i64 0, i32 0, i64 0
  store i32 1, i32* %arrayidx17.150.i, align 4, !tbaa !3
  %arrayidx19.151.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 1, i32 6, i64 0, i32 0, i64 1
  store i32 1, i32* %arrayidx19.151.i, align 4, !tbaa !3
  %arrayidx17.1.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 1, i32 6, i64 1, i32 0, i64 0
  store i32 1, i32* %arrayidx17.1.1.i, align 4, !tbaa !3
  %arrayidx19.1.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 1, i32 6, i64 1, i32 0, i64 1
  store i32 1, i32* %arrayidx19.1.1.i, align 4, !tbaa !3
  %arrayidx17.2.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 1, i32 6, i64 2, i32 0, i64 0
  store i32 1, i32* %arrayidx17.2.1.i, align 4, !tbaa !3
  %arrayidx19.2.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 1, i32 6, i64 2, i32 0, i64 1
  store i32 1, i32* %arrayidx19.2.1.i, align 4, !tbaa !3
  %arrayidx17.3.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 1, i32 6, i64 3, i32 0, i64 0
  store i32 1, i32* %arrayidx17.3.1.i, align 4, !tbaa !3
  %arrayidx19.3.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %0, i64 0, i32 2, i64 1, i32 6, i64 3, i32 0, i64 1
  store i32 1, i32* %arrayidx19.3.1.i, align 4, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.aptx_context* [ %0, %if.end ], [ null, %entry ]
  ret %struct.aptx_context* %retval.0
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @aptx_finish(%struct.aptx_context* nocapture noundef %ctx) local_unnamed_addr #5 {
entry:
  %0 = bitcast %struct.aptx_context* %ctx to i8*
  tail call void @free(i8* noundef %0) #12
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i64 @aptx_encode(%struct.aptx_context* noundef %ctx, i8* nocapture noundef readonly %input, i64 noundef %input_size, i8* nocapture noundef writeonly %output, i64 noundef %output_size, i64* nocapture noundef writeonly %written) local_unnamed_addr #3 {
entry:
  %samples = alloca [2 x [4 x i32]], align 16
  %hd = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 3
  %0 = load i8, i8* %hd, align 8, !tbaa !32
  %tobool.not = icmp eq i8 %0, 0
  %1 = select i1 %tobool.not, i64 4, i64 6
  %2 = bitcast [2 x [4 x i32]]* %samples to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #12
  %cmp.not60 = icmp ult i64 %input_size, 24
  br i1 %cmp.not60, label %for.end34, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 0
  %arrayidx27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 0, i64 0
  %arrayidx27.1 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 1, i64 0
  %arrayidx27.180 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 0, i64 1
  %arrayidx27.1.1 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 1, i64 1
  %arrayidx27.2 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 0, i64 2
  %arrayidx27.1.2 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 1, i64 2
  %arrayidx27.3 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 0, i64 3
  %arrayidx27.1.3 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 1, i64 3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.cond10.preheader.preheader
  %opos.062 = phi i64 [ 0, %land.rhs.lr.ph ], [ %add3, %for.cond10.preheader.preheader ]
  %ipos.061 = phi i64 [ 0, %land.rhs.lr.ph ], [ %add28.1.3, %for.cond10.preheader.preheader ]
  %add3 = add i64 %opos.062, %1
  %cmp4.not = icmp ugt i64 %add3, %output_size
  br i1 %cmp4.not, label %for.end34, label %for.cond10.preheader.preheader

for.cond10.preheader.preheader:                   ; preds = %land.rhs
  %arrayidx = getelementptr inbounds i8, i8* %input, i64 %ipos.061
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !46
  %conv15 = zext i8 %3 to i32
  %add16 = or i64 %ipos.061, 1
  %arrayidx17 = getelementptr inbounds i8, i8* %input, i64 %add16
  %4 = load i8, i8* %arrayidx17, align 1, !tbaa !46
  %conv18 = zext i8 %4 to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %or = or i32 %shl19, %conv15
  %add20 = or i64 %ipos.061, 2
  %arrayidx21 = getelementptr inbounds i8, i8* %input, i64 %add20
  %5 = load i8, i8* %arrayidx21, align 1, !tbaa !46
  %conv22 = sext i8 %5 to i32
  %shl23 = shl nsw i32 %conv22, 16
  %or24 = or i32 %or, %shl23
  store i32 %or24, i32* %arrayidx27, align 16, !tbaa !3
  %add28 = or i64 %ipos.061, 3
  %arrayidx.1 = getelementptr inbounds i8, i8* %input, i64 %add28
  %6 = load i8, i8* %arrayidx.1, align 1, !tbaa !46
  %conv15.1 = zext i8 %6 to i32
  %add16.1 = or i64 %ipos.061, 4
  %arrayidx17.1 = getelementptr inbounds i8, i8* %input, i64 %add16.1
  %7 = load i8, i8* %arrayidx17.1, align 1, !tbaa !46
  %conv18.1 = zext i8 %7 to i32
  %shl19.1 = shl nuw nsw i32 %conv18.1, 8
  %or.1 = or i32 %shl19.1, %conv15.1
  %add20.1 = or i64 %ipos.061, 5
  %arrayidx21.1 = getelementptr inbounds i8, i8* %input, i64 %add20.1
  %8 = load i8, i8* %arrayidx21.1, align 1, !tbaa !46
  %conv22.1 = sext i8 %8 to i32
  %shl23.1 = shl nsw i32 %conv22.1, 16
  %or24.1 = or i32 %or.1, %shl23.1
  store i32 %or24.1, i32* %arrayidx27.1, align 16, !tbaa !3
  %add28.1 = or i64 %ipos.061, 6
  %arrayidx.168 = getelementptr inbounds i8, i8* %input, i64 %add28.1
  %9 = load i8, i8* %arrayidx.168, align 1, !tbaa !46
  %conv15.169 = zext i8 %9 to i32
  %add16.170 = or i64 %ipos.061, 7
  %arrayidx17.171 = getelementptr inbounds i8, i8* %input, i64 %add16.170
  %10 = load i8, i8* %arrayidx17.171, align 1, !tbaa !46
  %conv18.172 = zext i8 %10 to i32
  %shl19.173 = shl nuw nsw i32 %conv18.172, 8
  %or.174 = or i32 %shl19.173, %conv15.169
  %add20.175 = add i64 %ipos.061, 8
  %arrayidx21.176 = getelementptr inbounds i8, i8* %input, i64 %add20.175
  %11 = load i8, i8* %arrayidx21.176, align 1, !tbaa !46
  %conv22.177 = sext i8 %11 to i32
  %shl23.178 = shl nsw i32 %conv22.177, 16
  %or24.179 = or i32 %or.174, %shl23.178
  store i32 %or24.179, i32* %arrayidx27.180, align 4, !tbaa !3
  %add28.181 = add i64 %ipos.061, 9
  %arrayidx.1.1 = getelementptr inbounds i8, i8* %input, i64 %add28.181
  %12 = load i8, i8* %arrayidx.1.1, align 1, !tbaa !46
  %conv15.1.1 = zext i8 %12 to i32
  %add16.1.1 = add i64 %ipos.061, 10
  %arrayidx17.1.1 = getelementptr inbounds i8, i8* %input, i64 %add16.1.1
  %13 = load i8, i8* %arrayidx17.1.1, align 1, !tbaa !46
  %conv18.1.1 = zext i8 %13 to i32
  %shl19.1.1 = shl nuw nsw i32 %conv18.1.1, 8
  %or.1.1 = or i32 %shl19.1.1, %conv15.1.1
  %add20.1.1 = add i64 %ipos.061, 11
  %arrayidx21.1.1 = getelementptr inbounds i8, i8* %input, i64 %add20.1.1
  %14 = load i8, i8* %arrayidx21.1.1, align 1, !tbaa !46
  %conv22.1.1 = sext i8 %14 to i32
  %shl23.1.1 = shl nsw i32 %conv22.1.1, 16
  %or24.1.1 = or i32 %or.1.1, %shl23.1.1
  store i32 %or24.1.1, i32* %arrayidx27.1.1, align 4, !tbaa !3
  %add28.1.1 = add i64 %ipos.061, 12
  %arrayidx.2 = getelementptr inbounds i8, i8* %input, i64 %add28.1.1
  %15 = load i8, i8* %arrayidx.2, align 1, !tbaa !46
  %conv15.2 = zext i8 %15 to i32
  %add16.2 = add i64 %ipos.061, 13
  %arrayidx17.2 = getelementptr inbounds i8, i8* %input, i64 %add16.2
  %16 = load i8, i8* %arrayidx17.2, align 1, !tbaa !46
  %conv18.2 = zext i8 %16 to i32
  %shl19.2 = shl nuw nsw i32 %conv18.2, 8
  %or.2 = or i32 %shl19.2, %conv15.2
  %add20.2 = add i64 %ipos.061, 14
  %arrayidx21.2 = getelementptr inbounds i8, i8* %input, i64 %add20.2
  %17 = load i8, i8* %arrayidx21.2, align 1, !tbaa !46
  %conv22.2 = sext i8 %17 to i32
  %shl23.2 = shl nsw i32 %conv22.2, 16
  %or24.2 = or i32 %or.2, %shl23.2
  store i32 %or24.2, i32* %arrayidx27.2, align 8, !tbaa !3
  %add28.2 = add i64 %ipos.061, 15
  %arrayidx.1.2 = getelementptr inbounds i8, i8* %input, i64 %add28.2
  %18 = load i8, i8* %arrayidx.1.2, align 1, !tbaa !46
  %conv15.1.2 = zext i8 %18 to i32
  %add16.1.2 = add i64 %ipos.061, 16
  %arrayidx17.1.2 = getelementptr inbounds i8, i8* %input, i64 %add16.1.2
  %19 = load i8, i8* %arrayidx17.1.2, align 1, !tbaa !46
  %conv18.1.2 = zext i8 %19 to i32
  %shl19.1.2 = shl nuw nsw i32 %conv18.1.2, 8
  %or.1.2 = or i32 %shl19.1.2, %conv15.1.2
  %add20.1.2 = add i64 %ipos.061, 17
  %arrayidx21.1.2 = getelementptr inbounds i8, i8* %input, i64 %add20.1.2
  %20 = load i8, i8* %arrayidx21.1.2, align 1, !tbaa !46
  %conv22.1.2 = sext i8 %20 to i32
  %shl23.1.2 = shl nsw i32 %conv22.1.2, 16
  %or24.1.2 = or i32 %or.1.2, %shl23.1.2
  store i32 %or24.1.2, i32* %arrayidx27.1.2, align 8, !tbaa !3
  %add28.1.2 = add i64 %ipos.061, 18
  %arrayidx.3 = getelementptr inbounds i8, i8* %input, i64 %add28.1.2
  %21 = load i8, i8* %arrayidx.3, align 1, !tbaa !46
  %conv15.3 = zext i8 %21 to i32
  %add16.3 = add i64 %ipos.061, 19
  %arrayidx17.3 = getelementptr inbounds i8, i8* %input, i64 %add16.3
  %22 = load i8, i8* %arrayidx17.3, align 1, !tbaa !46
  %conv18.3 = zext i8 %22 to i32
  %shl19.3 = shl nuw nsw i32 %conv18.3, 8
  %or.3 = or i32 %shl19.3, %conv15.3
  %add20.3 = add i64 %ipos.061, 20
  %arrayidx21.3 = getelementptr inbounds i8, i8* %input, i64 %add20.3
  %23 = load i8, i8* %arrayidx21.3, align 1, !tbaa !46
  %conv22.3 = sext i8 %23 to i32
  %shl23.3 = shl nsw i32 %conv22.3, 16
  %or24.3 = or i32 %or.3, %shl23.3
  store i32 %or24.3, i32* %arrayidx27.3, align 4, !tbaa !3
  %add28.3 = add i64 %ipos.061, 21
  %arrayidx.1.3 = getelementptr inbounds i8, i8* %input, i64 %add28.3
  %24 = load i8, i8* %arrayidx.1.3, align 1, !tbaa !46
  %conv15.1.3 = zext i8 %24 to i32
  %add16.1.3 = add i64 %ipos.061, 22
  %arrayidx17.1.3 = getelementptr inbounds i8, i8* %input, i64 %add16.1.3
  %25 = load i8, i8* %arrayidx17.1.3, align 1, !tbaa !46
  %conv18.1.3 = zext i8 %25 to i32
  %shl19.1.3 = shl nuw nsw i32 %conv18.1.3, 8
  %or.1.3 = or i32 %shl19.1.3, %conv15.1.3
  %add20.1.3 = add i64 %ipos.061, 23
  %arrayidx21.1.3 = getelementptr inbounds i8, i8* %input, i64 %add20.1.3
  %26 = load i8, i8* %arrayidx21.1.3, align 1, !tbaa !46
  %conv22.1.3 = sext i8 %26 to i32
  %shl23.1.3 = shl nsw i32 %conv22.1.3, 16
  %or24.1.3 = or i32 %or.1.3, %shl23.1.3
  store i32 %or24.1.3, i32* %arrayidx27.1.3, align 4, !tbaa !3
  %add28.1.3 = add i64 %ipos.061, 24
  %add.ptr = getelementptr inbounds i8, i8* %output, i64 %opos.062
  call fastcc void @aptx_encode_samples(%struct.aptx_context* noundef %ctx, [4 x i32]* noundef nonnull %arraydecay, i8* noundef %add.ptr)
  %add = add i64 %ipos.061, 48
  %cmp.not = icmp ugt i64 %add, %input_size
  br i1 %cmp.not, label %for.end34, label %land.rhs, !llvm.loop !50

for.end34:                                        ; preds = %land.rhs, %for.cond10.preheader.preheader, %entry
  %ipos.0.lcssa = phi i64 [ 0, %entry ], [ %add28.1.3, %for.cond10.preheader.preheader ], [ %ipos.061, %land.rhs ]
  %opos.0.lcssa = phi i64 [ 0, %entry ], [ %add3, %for.cond10.preheader.preheader ], [ %opos.062, %land.rhs ]
  store i64 %opos.0.lcssa, i64* %written, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #12
  ret i64 %ipos.0.lcssa
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @aptx_encode_finish(%struct.aptx_context* noundef %ctx, i8* nocapture noundef writeonly %output, i64 noundef %output_size, i64* nocapture noundef writeonly %written) local_unnamed_addr #3 {
entry:
  %samples = alloca [2 x [4 x i32]], align 16
  %hd = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 3
  %0 = load i8, i8* %hd, align 8, !tbaa !32
  %tobool.not = icmp eq i8 %0, 0
  %1 = select i1 %tobool.not, i64 4, i64 6
  %2 = bitcast [2 x [4 x i32]]* %samples to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %encode_remaining = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 5
  %3 = load i8, i8* %encode_remaining, align 2, !tbaa !49
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 0
  br label %land.rhs

if.then:                                          ; preds = %entry
  store i64 0, i64* %written, align 8, !tbaa !51
  br label %cleanup

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body
  %opos.035 = phi i64 [ 0, %land.rhs.lr.ph ], [ %add, %for.body ]
  %add = add i64 %opos.035, %1
  %cmp8.not = icmp ugt i64 %add, %output_size
  br i1 %cmp8.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %add.ptr = getelementptr inbounds i8, i8* %output, i64 %opos.035
  call fastcc void @aptx_encode_samples(%struct.aptx_context* noundef nonnull %ctx, [4 x i32]* noundef nonnull %arraydecay, i8* noundef %add.ptr)
  %4 = load i8, i8* %encode_remaining, align 2, !tbaa !49
  %dec = add i8 %4, -1
  store i8 %dec, i8* %encode_remaining, align 2, !tbaa !49
  %cmp6.not = icmp eq i8 %dec, 0
  br i1 %cmp6.not, label %if.end17, label %land.rhs, !llvm.loop !52

for.end:                                          ; preds = %land.rhs
  store i64 %opos.035, i64* %written, align 8, !tbaa !51
  br label %cleanup

if.end17:                                         ; preds = %for.body
  store i64 %add, i64* %written, align 8, !tbaa !51
  %ctx46.i = bitcast %struct.aptx_context* %ctx to i8*
  %5 = load i8, i8* %hd, align 8, !tbaa !32
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(4416) %ctx46.i, i8 0, i64 4416, i1 false) #12, !tbaa !46
  store i8 %5, i8* %hd, align 8, !tbaa !32
  %decode_skip_leading.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 6
  store i8 23, i8* %decode_skip_leading.i, align 1, !tbaa !48
  store i8 23, i8* %encode_remaining, align 2, !tbaa !49
  %arrayidx17.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 0, i32 0, i64 0
  store i32 1, i32* %arrayidx17.i, align 4, !tbaa !3
  %arrayidx19.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 0, i32 0, i64 1
  store i32 1, i32* %arrayidx19.i, align 4, !tbaa !3
  %arrayidx17.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 1, i32 0, i64 0
  store i32 1, i32* %arrayidx17.1.i, align 4, !tbaa !3
  %arrayidx19.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 1, i32 0, i64 1
  store i32 1, i32* %arrayidx19.1.i, align 4, !tbaa !3
  %arrayidx17.2.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 2, i32 0, i64 0
  store i32 1, i32* %arrayidx17.2.i, align 4, !tbaa !3
  %arrayidx19.2.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 2, i32 0, i64 1
  store i32 1, i32* %arrayidx19.2.i, align 4, !tbaa !3
  %arrayidx17.3.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 3, i32 0, i64 0
  store i32 1, i32* %arrayidx17.3.i, align 4, !tbaa !3
  %arrayidx19.3.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 3, i32 0, i64 1
  store i32 1, i32* %arrayidx19.3.i, align 4, !tbaa !3
  %arrayidx17.150.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 0, i32 0, i64 0
  store i32 1, i32* %arrayidx17.150.i, align 4, !tbaa !3
  %arrayidx19.151.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 0, i32 0, i64 1
  store i32 1, i32* %arrayidx19.151.i, align 4, !tbaa !3
  %arrayidx17.1.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 1, i32 0, i64 0
  store i32 1, i32* %arrayidx17.1.1.i, align 4, !tbaa !3
  %arrayidx19.1.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 1, i32 0, i64 1
  store i32 1, i32* %arrayidx19.1.1.i, align 4, !tbaa !3
  %arrayidx17.2.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 2, i32 0, i64 0
  store i32 1, i32* %arrayidx17.2.1.i, align 4, !tbaa !3
  %arrayidx19.2.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 2, i32 0, i64 1
  store i32 1, i32* %arrayidx19.2.1.i, align 4, !tbaa !3
  %arrayidx17.3.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 3, i32 0, i64 0
  store i32 1, i32* %arrayidx17.3.1.i, align 4, !tbaa !3
  %arrayidx19.3.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 3, i32 0, i64 1
  store i32 1, i32* %arrayidx19.3.1.i, align 4, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end17, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.end17 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i64 @aptx_decode(%struct.aptx_context* noundef %ctx, i8* nocapture noundef readonly %input, i64 noundef %input_size, i8* nocapture noundef writeonly %output, i64 noundef %output_size, i64* nocapture noundef writeonly %written) local_unnamed_addr #3 {
entry:
  %intermediate_samples.i.i.i = alloca [4 x i32], align 16
  %samples = alloca [2 x [4 x i32]], align 16
  %hd = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 3
  %0 = load i8, i8* %hd, align 8, !tbaa !32
  %tobool.not = icmp eq i8 %0, 0
  %1 = select i1 %tobool.not, i64 4, i64 6
  %2 = bitcast [2 x [4 x i32]]* %samples to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #12
  %decode_skip_leading = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 6
  %cmp.not94 = icmp ugt i64 %1, %input_size
  br i1 %cmp.not94, label %for.end60, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %arrayidx.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0
  %quantized_sample.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 4, i64 0, i32 0
  %quantized_sample3.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 4, i64 1, i32 0
  %quantized_sample8.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 4, i64 2, i32 0
  %codeword_history.i.i.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %arrayidx.i, i64 0, i32 0
  %arrayidx.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 2, i64 0
  %arrayidx.1.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 2, i64 1
  %arrayidx.2.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 2, i64 2
  %arrayidx.3.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 2, i64 3
  %dither_parity.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 1
  %3 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 4, i64 3, i32 0
  %arrayidx.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1
  %quantized_sample.i.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 4, i64 0, i32 0
  %quantized_sample3.i.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 4, i64 1, i32 0
  %quantized_sample8.i.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 4, i64 2, i32 0
  %codeword_history.i.i.1.i = getelementptr inbounds %struct.aptx_channel, %struct.aptx_channel* %arrayidx.1.i, i64 0, i32 0
  %arrayidx.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 2, i64 0
  %arrayidx.1.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 2, i64 1
  %arrayidx.2.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 2, i64 2
  %arrayidx.3.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 2, i64 3
  %dither_parity.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 1
  %4 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 4, i64 3, i32 0
  %sync_idx.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 4
  %5 = bitcast [4 x i32]* %intermediate_samples.i.i.i to i8*
  %arrayidx9.i.i.i = getelementptr inbounds [4 x i32], [4 x i32]* %intermediate_samples.i.i.i, i64 0, i64 0
  %arrayidx9.1.i.i.i = getelementptr inbounds [4 x i32], [4 x i32]* %intermediate_samples.i.i.i, i64 0, i64 2
  %arrayidx16.1.i.i.i = getelementptr inbounds [4 x i32], [4 x i32]* %intermediate_samples.i.i.i, i64 0, i64 1
  %arrayidx19.1.i.i.i = getelementptr inbounds [4 x i32], [4 x i32]* %intermediate_samples.i.i.i, i64 0, i64 3
  %arraydecay53.i = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 0, i64 0
  %previous_reconstructed_sample.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 0, i32 5
  %previous_reconstructed_sample.1.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 1, i32 5
  %previous_reconstructed_sample.2.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 2, i32 5
  %previous_reconstructed_sample.3.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 3, i32 5
  %arraydecay.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 3, i32 1, i64 0, i64 0
  %arraydecay.1.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 3, i32 1, i64 1, i64 0
  %arraydecay13.i.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 3, i32 0, i64 0
  %arrayidx22.1.i.i.i = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 0, i64 2
  %arraydecay53.1.i = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 1, i64 0
  %previous_reconstructed_sample.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 0, i32 5
  %previous_reconstructed_sample.1.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 1, i32 5
  %previous_reconstructed_sample.2.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 2, i32 5
  %previous_reconstructed_sample.3.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 3, i32 5
  %arraydecay.i.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 3, i32 1, i64 0, i64 0
  %arraydecay.1.i.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 3, i32 1, i64 1, i64 0
  %arraydecay13.i.i.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 3, i32 0, i64 0
  %arrayidx22.1.i.i.1.i = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 1, i64 2
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc58
  %add99 = phi i64 [ %1, %land.rhs.lr.ph ], [ %add, %for.inc58 ]
  %opos.097 = phi i64 [ 0, %land.rhs.lr.ph ], [ %opos.3, %for.inc58 ]
  %ipos.095 = phi i64 [ 0, %land.rhs.lr.ph ], [ %add99, %for.inc58 ]
  %add3 = add i64 %opos.097, 24
  %cmp4.not = icmp ugt i64 %add3, %output_size
  br i1 %cmp4.not, label %lor.rhs, label %for.body

lor.rhs:                                          ; preds = %land.rhs
  %6 = load i8, i8* %decode_skip_leading, align 1, !tbaa !48
  %cmp7.not = icmp eq i8 %6, 0
  br i1 %cmp7.not, label %for.end60, label %for.body

for.body:                                         ; preds = %land.rhs, %lor.rhs
  %add.ptr = getelementptr inbounds i8, i8* %input, i64 %ipos.095
  %7 = load i32, i32* %quantized_sample.i.i.i, align 4, !tbaa !9
  %and.i.i.i = and i32 %7, 3
  %8 = load i32, i32* %quantized_sample3.i.i.i, align 4, !tbaa !9
  %and4.i.i.i = shl i32 %8, 1
  %shl5.i.i.i = and i32 %and4.i.i.i, 4
  %add.i.i.i = or i32 %and.i.i.i, %shl5.i.i.i
  %9 = load i32, i32* %quantized_sample8.i.i.i, align 4, !tbaa !9
  %and9.i.i.i = shl i32 %9, 3
  %shl10.i.i.i = and i32 %and9.i.i.i, 8
  %add11.i.i.i = or i32 %add.i.i.i, %shl10.i.i.i
  %shl12.i.i.i = shl nuw nsw i32 %add11.i.i.i, 8
  %10 = load i32, i32* %codeword_history.i.i.i, align 4, !tbaa !35
  %shl13.i.i.i = shl i32 %10, 4
  %add14.i.i.i = add nsw i32 %shl12.i.i.i, %shl13.i.i.i
  store i32 %add14.i.i.i, i32* %codeword_history.i.i.i, align 4, !tbaa !35
  %shr.i.i = ashr i32 %add14.i.i.i, 7
  %conv.i.i = sext i32 %shr.i.i to i64
  %mul.i.i = mul nsw i64 %conv.i.i, 5184443
  %mul1.i.i = mul nsw i64 %conv.i.i, 20737772
  %shr2.i.i = ashr i64 %mul.i.i, 22
  %add.i.i = add nsw i64 %shr2.i.i, %mul1.i.i
  %conv3.i.i = trunc i64 %add.i.i to i32
  %shl.i.i = shl i32 %conv3.i.i, 23
  store i32 %shl.i.i, i32* %arrayidx.i.i, align 4, !tbaa !3
  %shl.1.i.i = shl i32 %conv3.i.i, 18
  store i32 %shl.1.i.i, i32* %arrayidx.1.i.i, align 4, !tbaa !3
  %shl.2.i.i = shl i32 %conv3.i.i, 13
  store i32 %shl.2.i.i, i32* %arrayidx.2.i.i, align 4, !tbaa !3
  %shl.3.i.i = shl i32 %conv3.i.i, 8
  store i32 %shl.3.i.i, i32* %arrayidx.3.i.i, align 4, !tbaa !3
  %shr618.i.i = lshr i32 %conv3.i.i, 25
  %and.i.i = and i32 %shr618.i.i, 1
  store i32 %and.i.i, i32* %dither_parity.i.i, align 4, !tbaa !38
  %11 = load i8, i8* %hd, align 8, !tbaa !32
  %tobool.not.i = icmp eq i8 %11, 0
  %12 = load i8, i8* %add.ptr, align 1, !tbaa !46
  %conv27.i = zext i8 %12 to i32
  %arrayidx32.i = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %13 = load i8, i8* %arrayidx32.i, align 1, !tbaa !46
  %conv34.i = zext i8 %13 to i32
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %arrayidx15.i = getelementptr inbounds i8, i8* %add.ptr, i64 2
  %14 = load i8, i8* %arrayidx15.i, align 1, !tbaa !46
  %conv16.i = zext i8 %14 to i32
  %15 = shl i32 %conv34.i, 31
  %16 = shl nuw nsw i32 %conv16.i, 23
  %shl.i.i.i = or i32 %16, %15
  %shr.i.i.i = ashr exact i32 %shl.i.i.i, 23
  store i32 %shr.i.i.i, i32* %quantized_sample.i.i.i, align 4, !tbaa !9
  %17 = shl i32 %conv34.i, 25
  %shr.i33.i.i = ashr i32 %17, 26
  store i32 %shr.i33.i.i, i32* %quantized_sample3.i.i.i, align 4, !tbaa !9
  %18 = shl i32 %conv27.i, 29
  %19 = shl nuw nsw i32 %conv34.i, 21
  %20 = or i32 %19, %18
  %shr.i35.i.i = ashr i32 %20, 28
  store i32 %shr.i35.i.i, i32* %quantized_sample8.i.i.i, align 4, !tbaa !9
  %21 = shl nuw i32 %conv27.i, 24
  %shr.i37.i.i = ashr i32 %21, 27
  %xor.i.i.i = xor i32 %shr.i33.i.i, %shr618.i.i
  %xor.1.i.i.i = xor i32 %xor.i.i.i, %shr.i35.i.i
  %xor.2.i.i.i = xor i32 %xor.1.i.i.i, %conv16.i
  br label %if.end.i

if.else.i:                                        ; preds = %for.body
  %shl.i.i86.i = shl i32 %conv34.i, 25
  %shr.i.i87.i = ashr exact i32 %shl.i.i86.i, 25
  store i32 %shr.i.i87.i, i32* %quantized_sample.i.i.i, align 4, !tbaa !9
  %22 = shl i32 %conv27.i, 29
  %23 = shl nuw nsw i32 %conv34.i, 21
  %24 = or i32 %23, %22
  %shr.i36.i.i = ashr i32 %24, 28
  store i32 %shr.i36.i.i, i32* %quantized_sample3.i.i.i, align 4, !tbaa !9
  %25 = shl i32 %conv27.i, 27
  %shr.i38.i.i = ashr i32 %25, 30
  store i32 %shr.i38.i.i, i32* %quantized_sample8.i.i.i, align 4, !tbaa !9
  %26 = shl nuw i32 %conv27.i, 24
  %shr.i40.i.i = ashr i32 %26, 29
  %xor.i.i90.i = xor i32 %shr618.i.i, %conv34.i
  %xor.1.i.i91.i = xor i32 %xor.i.i90.i, %shr.i38.i.i
  %xor.2.i.i92.i = xor i32 %xor.1.i.i91.i, %shr.i36.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %xor.2.i.i92.sink.i = phi i32 [ %xor.2.i.i92.i, %if.else.i ], [ %xor.2.i.i.i, %if.then.i ]
  %shr.i40.i.sink.i = phi i32 [ %shr.i40.i.i, %if.else.i ], [ %shr.i37.i.i, %if.then.i ]
  %27 = and i32 %xor.2.i.i92.sink.i, 1
  %or.i93.i = xor i32 %27, %shr.i40.i.sink.i
  store i32 %or.i93.i, i32* %3, align 4
  %conv42.i = zext i8 %11 to i32
  tail call fastcc void @aptx_invert_quantize_and_prediction(%struct.aptx_channel* noundef nonnull %arrayidx.i, i32 noundef %conv42.i) #12
  %28 = load i32, i32* %quantized_sample.i.i.1.i, align 4, !tbaa !9
  %and.i.i.1.i = and i32 %28, 3
  %29 = load i32, i32* %quantized_sample3.i.i.1.i, align 4, !tbaa !9
  %and4.i.i.1.i = shl i32 %29, 1
  %shl5.i.i.1.i = and i32 %and4.i.i.1.i, 4
  %add.i.i.1.i = or i32 %and.i.i.1.i, %shl5.i.i.1.i
  %30 = load i32, i32* %quantized_sample8.i.i.1.i, align 4, !tbaa !9
  %and9.i.i.1.i = shl i32 %30, 3
  %shl10.i.i.1.i = and i32 %and9.i.i.1.i, 8
  %add11.i.i.1.i = or i32 %add.i.i.1.i, %shl10.i.i.1.i
  %shl12.i.i.1.i = shl nuw nsw i32 %add11.i.i.1.i, 8
  %31 = load i32, i32* %codeword_history.i.i.1.i, align 4, !tbaa !35
  %shl13.i.i.1.i = shl i32 %31, 4
  %add14.i.i.1.i = add nsw i32 %shl12.i.i.1.i, %shl13.i.i.1.i
  store i32 %add14.i.i.1.i, i32* %codeword_history.i.i.1.i, align 4, !tbaa !35
  %shr.i.1.i = ashr i32 %add14.i.i.1.i, 7
  %conv.i.1.i = sext i32 %shr.i.1.i to i64
  %mul.i.1.i = mul nsw i64 %conv.i.1.i, 5184443
  %mul1.i.1.i = mul nsw i64 %conv.i.1.i, 20737772
  %shr2.i.1.i = ashr i64 %mul.i.1.i, 22
  %add.i.1.i = add nsw i64 %shr2.i.1.i, %mul1.i.1.i
  %conv3.i.1.i = trunc i64 %add.i.1.i to i32
  %shl.i.1.i = shl i32 %conv3.i.1.i, 23
  store i32 %shl.i.1.i, i32* %arrayidx.i.1.i, align 4, !tbaa !3
  %shl.1.i.1.i = shl i32 %conv3.i.1.i, 18
  store i32 %shl.1.i.1.i, i32* %arrayidx.1.i.1.i, align 4, !tbaa !3
  %shl.2.i.1.i = shl i32 %conv3.i.1.i, 13
  store i32 %shl.2.i.1.i, i32* %arrayidx.2.i.1.i, align 4, !tbaa !3
  %shl.3.i.1.i = shl i32 %conv3.i.1.i, 8
  store i32 %shl.3.i.1.i, i32* %arrayidx.3.i.1.i, align 4, !tbaa !3
  %shr618.i.1.i = lshr i32 %conv3.i.1.i, 25
  %and.i.1.i = and i32 %shr618.i.1.i, 1
  store i32 %and.i.1.i, i32* %dither_parity.i.1.i, align 4, !tbaa !38
  %32 = load i8, i8* %hd, align 8, !tbaa !32
  %tobool.not.1.i = icmp eq i8 %32, 0
  br i1 %tobool.not.1.i, label %if.else.1.i, label %if.then.1.i

if.then.1.i:                                      ; preds = %if.end.i
  %arrayidx5.1.i = getelementptr inbounds i8, i8* %add.ptr, i64 3
  %33 = load i8, i8* %arrayidx5.1.i, align 1, !tbaa !46
  %conv.1.i = zext i8 %33 to i32
  %arrayidx9.1.i = getelementptr inbounds i8, i8* %add.ptr, i64 4
  %34 = load i8, i8* %arrayidx9.1.i, align 1, !tbaa !46
  %conv10.1.i = zext i8 %34 to i32
  %arrayidx15.1.i = getelementptr inbounds i8, i8* %add.ptr, i64 5
  %35 = load i8, i8* %arrayidx15.1.i, align 1, !tbaa !46
  %conv16.1.i = zext i8 %35 to i32
  %36 = shl i32 %conv10.1.i, 31
  %37 = shl nuw nsw i32 %conv16.1.i, 23
  %shl.i.i.1.i = or i32 %37, %36
  %shr.i.i.1.i = ashr exact i32 %shl.i.i.1.i, 23
  store i32 %shr.i.i.1.i, i32* %quantized_sample.i.i.1.i, align 4, !tbaa !9
  %38 = shl i32 %conv10.1.i, 25
  %shr.i33.i.1.i = ashr i32 %38, 26
  store i32 %shr.i33.i.1.i, i32* %quantized_sample3.i.i.1.i, align 4, !tbaa !9
  %39 = shl i32 %conv.1.i, 29
  %40 = shl nuw nsw i32 %conv10.1.i, 21
  %41 = or i32 %40, %39
  %shr.i35.i.1.i = ashr i32 %41, 28
  br label %aptx_decode_samples.exit

if.else.1.i:                                      ; preds = %if.end.i
  %arrayidx25.1.i = getelementptr inbounds i8, i8* %add.ptr, i64 2
  %42 = load i8, i8* %arrayidx25.1.i, align 1, !tbaa !46
  %conv27.1.i = zext i8 %42 to i32
  %arrayidx32.1.i = getelementptr inbounds i8, i8* %add.ptr, i64 3
  %43 = load i8, i8* %arrayidx32.1.i, align 1, !tbaa !46
  %conv34.1.i = zext i8 %43 to i32
  %shl.i.i86.1.i = shl i32 %conv34.1.i, 25
  %shr.i.i87.1.i = ashr exact i32 %shl.i.i86.1.i, 25
  store i32 %shr.i.i87.1.i, i32* %quantized_sample.i.i.1.i, align 4, !tbaa !9
  %44 = shl i32 %conv27.1.i, 29
  %45 = shl nuw nsw i32 %conv34.1.i, 21
  %46 = or i32 %45, %44
  %shr.i36.i.1.i = ashr i32 %46, 28
  store i32 %shr.i36.i.1.i, i32* %quantized_sample3.i.i.1.i, align 4, !tbaa !9
  %47 = shl i32 %conv27.1.i, 27
  %shr.i38.i.1.i = ashr i32 %47, 30
  br label %aptx_decode_samples.exit

aptx_decode_samples.exit:                         ; preds = %if.then.1.i, %if.else.1.i
  %shr.i35.i.1.i.sink108 = phi i32 [ %shr.i35.i.1.i, %if.then.1.i ], [ %shr.i38.i.1.i, %if.else.1.i ]
  %conv.1.i.sink = phi i32 [ %conv.1.i, %if.then.1.i ], [ %conv27.1.i, %if.else.1.i ]
  %.sink107 = phi i32 [ 27, %if.then.1.i ], [ 29, %if.else.1.i ]
  %conv16.1.i.sink = phi i32 [ %conv16.1.i, %if.then.1.i ], [ %conv34.1.i, %if.else.1.i ]
  %shr.i33.i.1.i.sink = phi i32 [ %shr.i33.i.1.i, %if.then.1.i ], [ %shr.i38.i.1.i, %if.else.1.i ]
  %shr.i35.i.1.i.sink = phi i32 [ %shr.i35.i.1.i, %if.then.1.i ], [ %shr.i36.i.1.i, %if.else.1.i ]
  store i32 %shr.i35.i.1.i.sink108, i32* %quantized_sample8.i.i.1.i, align 4, !tbaa !9
  %48 = shl nuw i32 %conv.1.i.sink, 24
  %shr.i37.i.1.i = ashr i32 %48, %.sink107
  %xor.i.i.1.i = xor i32 %shr618.i.1.i, %conv16.1.i.sink
  %xor.1.i.i.1.i = xor i32 %xor.i.i.1.i, %shr.i33.i.1.i.sink
  %xor.2.i.i.1.i = xor i32 %xor.1.i.i.1.i, %shr.i35.i.1.i.sink
  %49 = and i32 %xor.2.i.i.1.i, 1
  %or.i93.1.i = xor i32 %49, %shr.i37.i.1.i
  store i32 %or.i93.1.i, i32* %4, align 4
  %conv42.1.i = zext i8 %32 to i32
  tail call fastcc void @aptx_invert_quantize_and_prediction(%struct.aptx_channel* noundef nonnull %arrayidx.1.i, i32 noundef %conv42.1.i) #12
  %50 = load i32, i32* %dither_parity.i.i, align 4, !tbaa !38
  %51 = load i32, i32* %quantized_sample.i.i.i, align 4, !tbaa !9
  %52 = load i32, i32* %quantized_sample3.i.i.i, align 4, !tbaa !9
  %53 = load i32, i32* %quantized_sample8.i.i.i, align 4, !tbaa !9
  %54 = load i32, i32* %3, align 4, !tbaa !9
  %55 = load i32, i32* %dither_parity.i.1.i, align 4, !tbaa !38
  %56 = load i32, i32* %quantized_sample.i.i.1.i, align 4, !tbaa !9
  %57 = load i32, i32* %quantized_sample3.i.i.1.i, align 4, !tbaa !9
  %58 = load i32, i32* %quantized_sample8.i.i.1.i, align 4, !tbaa !9
  %59 = load i32, i32* %4, align 4, !tbaa !9
  %60 = load i8, i8* %sync_idx.i, align 1, !tbaa !46
  %61 = add i8 %60, 1
  %62 = and i8 %61, 7
  store i8 %62, i8* %sync_idx.i, align 1, !tbaa !46
  %63 = load i32, i32* %previous_reconstructed_sample.i.i, align 4, !tbaa !27
  %64 = load i32, i32* %previous_reconstructed_sample.1.i.i, align 4, !tbaa !27
  %65 = load i32, i32* %previous_reconstructed_sample.2.i.i, align 4, !tbaa !27
  %66 = load i32, i32* %previous_reconstructed_sample.3.i.i, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #12
  call fastcc void @aptx_qmf_polyphase_synthesis(%struct.aptx_filter_signal* noundef nonnull %arraydecay.i.i.i, [16 x i32]* noundef getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @aptx_qmf_inner_coeffs, i64 0, i64 0), i32 noundef 22, i32 noundef %63, i32 noundef %64, i32* noundef nonnull %arrayidx9.i.i.i) #12
  call fastcc void @aptx_qmf_polyphase_synthesis(%struct.aptx_filter_signal* noundef nonnull %arraydecay.1.i.i.i, [16 x i32]* noundef getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @aptx_qmf_inner_coeffs, i64 0, i64 0), i32 noundef 22, i32 noundef %65, i32 noundef %66, i32* noundef nonnull %arrayidx9.1.i.i.i) #12
  %67 = load i32, i32* %arrayidx9.i.i.i, align 16, !tbaa !3
  %68 = load i32, i32* %arrayidx9.1.i.i.i, align 8, !tbaa !3
  call fastcc void @aptx_qmf_polyphase_synthesis(%struct.aptx_filter_signal* noundef nonnull %arraydecay13.i.i.i, [16 x i32]* noundef getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @aptx_qmf_outer_coeffs, i64 0, i64 0), i32 noundef 21, i32 noundef %67, i32 noundef %68, i32* noundef nonnull %arraydecay53.i) #12
  %69 = load i32, i32* %arrayidx16.1.i.i.i, align 4, !tbaa !3
  %70 = load i32, i32* %arrayidx19.1.i.i.i, align 4, !tbaa !3
  call fastcc void @aptx_qmf_polyphase_synthesis(%struct.aptx_filter_signal* noundef nonnull %arraydecay13.i.i.i, [16 x i32]* noundef getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @aptx_qmf_outer_coeffs, i64 0, i64 0), i32 noundef 21, i32 noundef %69, i32 noundef %70, i32* noundef nonnull %arrayidx22.1.i.i.i) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #12
  %71 = load i32, i32* %previous_reconstructed_sample.i.1.i, align 4, !tbaa !27
  %72 = load i32, i32* %previous_reconstructed_sample.1.i.1.i, align 4, !tbaa !27
  %73 = load i32, i32* %previous_reconstructed_sample.2.i.1.i, align 4, !tbaa !27
  %74 = load i32, i32* %previous_reconstructed_sample.3.i.1.i, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #12
  call fastcc void @aptx_qmf_polyphase_synthesis(%struct.aptx_filter_signal* noundef nonnull %arraydecay.i.i.1.i, [16 x i32]* noundef getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @aptx_qmf_inner_coeffs, i64 0, i64 0), i32 noundef 22, i32 noundef %71, i32 noundef %72, i32* noundef nonnull %arrayidx9.i.i.i) #12
  call fastcc void @aptx_qmf_polyphase_synthesis(%struct.aptx_filter_signal* noundef nonnull %arraydecay.1.i.i.1.i, [16 x i32]* noundef getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @aptx_qmf_inner_coeffs, i64 0, i64 0), i32 noundef 22, i32 noundef %73, i32 noundef %74, i32* noundef nonnull %arrayidx9.1.i.i.i) #12
  %75 = load i32, i32* %arrayidx9.i.i.i, align 16, !tbaa !3
  %76 = load i32, i32* %arrayidx9.1.i.i.i, align 8, !tbaa !3
  call fastcc void @aptx_qmf_polyphase_synthesis(%struct.aptx_filter_signal* noundef nonnull %arraydecay13.i.i.1.i, [16 x i32]* noundef getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @aptx_qmf_outer_coeffs, i64 0, i64 0), i32 noundef 21, i32 noundef %75, i32 noundef %76, i32* noundef nonnull %arraydecay53.1.i) #12
  %77 = load i32, i32* %arrayidx16.1.i.i.i, align 4, !tbaa !3
  %78 = load i32, i32* %arrayidx19.1.i.i.i, align 4, !tbaa !3
  call fastcc void @aptx_qmf_polyphase_synthesis(%struct.aptx_filter_signal* noundef nonnull %arraydecay13.i.i.1.i, [16 x i32]* noundef getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @aptx_qmf_outer_coeffs, i64 0, i64 0), i32 noundef 21, i32 noundef %77, i32 noundef %78, i32* noundef nonnull %arrayidx22.1.i.i.1.i) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #12
  %xor.i14.i.i = xor i32 %51, %50
  %xor.1.i16.i.i = xor i32 %xor.i14.i.i, %52
  %xor.2.i18.i.i = xor i32 %xor.1.i16.i.i, %53
  %xor.3.i20.i.i = xor i32 %xor.2.i18.i.i, %54
  %xor.i.i96.i = xor i32 %xor.3.i20.i.i, %55
  %xor.1.i.i97.i = xor i32 %xor.i.i96.i, %56
  %xor.2.i.i98.i = xor i32 %xor.1.i.i97.i, %57
  %xor.3.i.i.i = xor i32 %xor.2.i.i98.i, %58
  %and.i22.i.i = xor i32 %xor.3.i.i.i, %59
  %cmp.i.i = icmp ne i8 %60, 7
  %79 = and i32 %and.i22.i.i, 1
  %80 = icmp ne i32 %79, 0
  %tobool9.not = xor i1 %cmp.i.i, %80
  br i1 %tobool9.not, label %if.end, label %for.end60

if.end:                                           ; preds = %aptx_decode_samples.exit
  %81 = load i8, i8* %decode_skip_leading, align 1, !tbaa !48
  %cmp12.not = icmp eq i8 %81, 0
  br i1 %cmp12.not, label %for.cond27.preheader.preheader, label %if.then14

if.then14:                                        ; preds = %if.end
  %dec = add i8 %81, -1
  store i8 %dec, i8* %decode_skip_leading, align 1, !tbaa !48
  %cmp18.not = icmp eq i8 %dec, 0
  br i1 %cmp18.not, label %for.cond27.preheader.preheader, label %for.inc58

for.cond27.preheader.preheader:                   ; preds = %if.then14, %if.end
  %indvars.iv.ph = phi i64 [ 2, %if.then14 ], [ 0, %if.end ]
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.cond27.preheader.preheader, %for.cond27.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond27.preheader ], [ %indvars.iv.ph, %for.cond27.preheader.preheader ]
  %opos.193 = phi i64 [ %add54.1, %for.cond27.preheader ], [ %opos.097, %for.cond27.preheader.preheader ]
  %arrayidx32 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 0, i64 %indvars.iv
  %82 = load i32, i32* %arrayidx32, align 4, !tbaa !3
  %conv33 = trunc i32 %82 to i8
  %arrayidx35 = getelementptr inbounds i8, i8* %output, i64 %opos.193
  store i8 %conv33, i8* %arrayidx35, align 1, !tbaa !46
  %shr40 = lshr i32 %82, 8
  %conv42 = trunc i32 %shr40 to i8
  %add43 = add i64 %opos.193, 1
  %arrayidx44 = getelementptr inbounds i8, i8* %output, i64 %add43
  store i8 %conv42, i8* %arrayidx44, align 1, !tbaa !46
  %shr49 = lshr i32 %82, 16
  %conv51 = trunc i32 %shr49 to i8
  %add52 = add i64 %opos.193, 2
  %arrayidx53 = getelementptr inbounds i8, i8* %output, i64 %add52
  store i8 %conv51, i8* %arrayidx53, align 1, !tbaa !46
  %add54 = add i64 %opos.193, 3
  %arrayidx32.1 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %samples, i64 0, i64 1, i64 %indvars.iv
  %83 = load i32, i32* %arrayidx32.1, align 4, !tbaa !3
  %conv33.1 = trunc i32 %83 to i8
  %arrayidx35.1 = getelementptr inbounds i8, i8* %output, i64 %add54
  store i8 %conv33.1, i8* %arrayidx35.1, align 1, !tbaa !46
  %shr40.1 = lshr i32 %83, 8
  %conv42.1 = trunc i32 %shr40.1 to i8
  %add43.1 = add i64 %opos.193, 4
  %arrayidx44.1 = getelementptr inbounds i8, i8* %output, i64 %add43.1
  store i8 %conv42.1, i8* %arrayidx44.1, align 1, !tbaa !46
  %shr49.1 = lshr i32 %83, 16
  %conv51.1 = trunc i32 %shr49.1 to i8
  %add52.1 = add i64 %opos.193, 5
  %arrayidx53.1 = getelementptr inbounds i8, i8* %output, i64 %add52.1
  store i8 %conv51.1, i8* %arrayidx53.1, align 1, !tbaa !46
  %add54.1 = add i64 %opos.193, 6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.inc58, label %for.cond27.preheader, !llvm.loop !53

for.inc58:                                        ; preds = %for.cond27.preheader, %if.then14
  %opos.3 = phi i64 [ %opos.097, %if.then14 ], [ %add54.1, %for.cond27.preheader ]
  %add = add i64 %add99, %1
  %cmp.not = icmp ugt i64 %add, %input_size
  br i1 %cmp.not, label %for.end60, label %land.rhs, !llvm.loop !54

for.end60:                                        ; preds = %lor.rhs, %aptx_decode_samples.exit, %for.inc58, %entry
  %ipos.0.lcssa = phi i64 [ 0, %entry ], [ %add99, %for.inc58 ], [ %ipos.095, %aptx_decode_samples.exit ], [ %ipos.095, %lor.rhs ]
  %opos.0.lcssa = phi i64 [ 0, %entry ], [ %opos.3, %for.inc58 ], [ %opos.097, %aptx_decode_samples.exit ], [ %opos.097, %lor.rhs ]
  store i64 %opos.0.lcssa, i64* %written, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #12
  ret i64 %ipos.0.lcssa
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i64 @aptx_decode_sync(%struct.aptx_context* noundef %ctx, i8* nocapture noundef readonly %input, i64 noundef %input_size, i8* nocapture noundef writeonly %output, i64 noundef %output_size, i64* nocapture noundef writeonly %written, i32* nocapture noundef writeonly %synced, i64* nocapture noundef %dropped) local_unnamed_addr #3 {
entry:
  %decode_sync_buffer.i350 = alloca [6 x i8], align 1
  %decode_sync_buffer.i = alloca [6 x i8], align 1
  %written_step = alloca i64, align 8
  %hd = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 3
  %0 = load i8, i8* %hd, align 8, !tbaa !32
  %tobool.not = icmp eq i8 %0, 0
  %1 = select i1 %tobool.not, i64 4, i64 6
  %2 = bitcast i64* %written_step to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  store i32 0, i32* %synced, align 4, !tbaa !3
  store i64 0, i64* %dropped, align 8, !tbaa !51
  %decode_sync_buffer_len = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 7
  %3 = load i8, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  %cmp.not = icmp eq i8 %3, 0
  %.pre424 = add nsw i64 %1, -1
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %conv5 = zext i8 %3 to i64
  %sub6 = sub nsw i64 %.pre424, %conv5
  %cmp7.not = icmp ule i64 %sub6, %input_size
  %cmp12383 = icmp ugt i64 %.pre424, %conv5
  %or.cond432 = and i1 %cmp7.not, %cmp12383
  br i1 %or.cond432, label %while.body.preheader, label %if.end

while.body.preheader:                             ; preds = %land.lhs.true
  %4 = add nsw i64 %1, -2
  %xtraiter = and i64 %sub6, 1
  %5 = icmp eq i64 %4, %conv5
  br i1 %5, label %if.end.loopexit.unr-lcssa, label %while.body.preheader.new

while.body.preheader.new:                         ; preds = %while.body.preheader
  %unroll_iter = and i64 %sub6, -2
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader.new
  %conv10385 = phi i64 [ %conv5, %while.body.preheader.new ], [ %conv10.1, %while.body ]
  %ipos.0384 = phi i64 [ 0, %while.body.preheader.new ], [ %inc.1, %while.body ]
  %niter = phi i64 [ 0, %while.body.preheader.new ], [ %niter.next.1, %while.body ]
  %indvars = trunc i64 %conv10385 to i8
  %inc = or i64 %ipos.0384, 1
  %arrayidx = getelementptr inbounds i8, i8* %input, i64 %ipos.0384
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !46
  %inc15 = add nuw nsw i8 %indvars, 1
  store i8 %inc15, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  %arrayidx16 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 8, i64 %conv10385
  store i8 %6, i8* %arrayidx16, align 1, !tbaa !46
  %conv10 = zext i8 %inc15 to i64
  %inc.1 = add nuw nsw i64 %ipos.0384, 2
  %arrayidx.1 = getelementptr inbounds i8, i8* %input, i64 %inc
  %7 = load i8, i8* %arrayidx.1, align 1, !tbaa !46
  %inc15.1 = add nuw nsw i8 %indvars, 2
  store i8 %inc15.1, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  %arrayidx16.1 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 8, i64 %conv10
  store i8 %7, i8* %arrayidx16.1, align 1, !tbaa !46
  %conv10.1 = zext i8 %inc15.1 to i64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %if.end.loopexit.unr-lcssa, label %while.body, !llvm.loop !56

if.end.loopexit.unr-lcssa:                        ; preds = %while.body, %while.body.preheader
  %inc15.lcssa.ph = phi i8 [ undef, %while.body.preheader ], [ %inc15.1, %while.body ]
  %conv10385.unr = phi i64 [ %conv5, %while.body.preheader ], [ %conv10.1, %while.body ]
  %ipos.0384.unr = phi i64 [ 0, %while.body.preheader ], [ %inc.1, %while.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end, label %while.body.epil

while.body.epil:                                  ; preds = %if.end.loopexit.unr-lcssa
  %indvars.epil = trunc i64 %conv10385.unr to i8
  %arrayidx.epil = getelementptr inbounds i8, i8* %input, i64 %ipos.0384.unr
  %8 = load i8, i8* %arrayidx.epil, align 1, !tbaa !46
  %inc15.epil = add nuw nsw i8 %indvars.epil, 1
  store i8 %inc15.epil, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  %arrayidx16.epil = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 8, i64 %conv10385.unr
  store i8 %8, i8* %arrayidx16.epil, align 1, !tbaa !46
  br label %if.end

if.end:                                           ; preds = %while.body.epil, %if.end.loopexit.unr-lcssa, %entry, %land.lhs.true
  %9 = phi i8 [ %3, %land.lhs.true ], [ 0, %entry ], [ %inc15.lcssa.ph, %if.end.loopexit.unr-lcssa ], [ %inc15.epil, %while.body.epil ]
  %ipos.1 = phi i64 [ 0, %land.lhs.true ], [ 0, %entry ], [ %sub6, %if.end.loopexit.unr-lcssa ], [ %sub6, %while.body.epil ]
  %decode_dropped = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 1
  %conv19387 = zext i8 %9 to i64
  %cmp21388 = icmp eq i64 %.pre424, %conv19387
  %cmp24389 = icmp ult i64 %ipos.1, %1
  %or.cond390 = select i1 %cmp21388, i1 %cmp24389, i1 false
  %cmp27391 = icmp ult i64 %ipos.1, %input_size
  %or.cond345392 = select i1 %or.cond390, i1 %cmp27391, i1 false
  br i1 %or.cond345392, label %land.rhs.lr.ph, label %while.end87

land.rhs.lr.ph:                                   ; preds = %if.end
  %decode_skip_leading = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 6
  %arrayidx41 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 8, i64 %.pre424
  %arraydecay = getelementptr %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 8, i64 0
  %decode_sync_packets = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 0
  %decode_sync_buffer41.i = getelementptr inbounds [6 x i8], [6 x i8]* %decode_sync_buffer.i, i64 0, i64 0
  %10 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2
  %11 = bitcast [2 x %struct.aptx_channel]* %10 to i8*
  %encode_remaining.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 5
  %arrayidx17.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 0, i32 0, i64 0
  %arrayidx19.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 0, i32 0, i64 1
  %arrayidx17.1.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 1, i32 0, i64 0
  %arrayidx19.1.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 1, i32 0, i64 1
  %arrayidx17.2.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 2, i32 0, i64 0
  %arrayidx19.2.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 2, i32 0, i64 1
  %arrayidx17.3.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 3, i32 0, i64 0
  %arrayidx19.3.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 3, i32 0, i64 1
  %arrayidx17.150.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 0, i32 0, i64 0
  %arrayidx19.151.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 0, i32 0, i64 1
  %arrayidx17.1.1.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 1, i32 0, i64 0
  %arrayidx19.1.1.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 1, i32 0, i64 1
  %arrayidx17.2.1.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 2, i32 0, i64 0
  %arrayidx19.2.1.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 2, i32 0, i64 1
  %arrayidx17.3.1.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 3, i32 0, i64 0
  %arrayidx19.3.1.i.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 3, i32 0, i64 1
  %scevgep419 = getelementptr %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 8, i64 1
  %12 = bitcast %struct.aptx_context* %ctx to i8*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end86
  %opos.0395 = phi i64 [ 0, %land.rhs.lr.ph ], [ %add44, %if.end86 ]
  %ipos.2393 = phi i64 [ %ipos.1, %land.rhs.lr.ph ], [ %inc37, %if.end86 ]
  %add = add i64 %opos.0395, 24
  %cmp29.not = icmp ugt i64 %add, %output_size
  br i1 %cmp29.not, label %lor.lhs.false, label %while.body36

lor.lhs.false:                                    ; preds = %land.rhs
  %13 = load i8, i8* %decode_skip_leading, align 1, !tbaa !48
  %cmp32.not = icmp eq i8 %13, 0
  br i1 %cmp32.not, label %lor.rhs, label %while.body36

lor.rhs:                                          ; preds = %lor.lhs.false
  %14 = load i64, i64* %decode_dropped, align 8, !tbaa !57
  %cmp34.not = icmp eq i64 %14, 0
  br i1 %cmp34.not, label %while.end87, label %while.body36

while.body36:                                     ; preds = %land.rhs, %lor.lhs.false, %lor.rhs
  %inc37 = add nuw nsw i64 %ipos.2393, 1
  %arrayidx38 = getelementptr inbounds i8, i8* %input, i64 %ipos.2393
  %15 = load i8, i8* %arrayidx38, align 1, !tbaa !46
  store i8 %15, i8* %arrayidx41, align 1, !tbaa !46
  %add.ptr = getelementptr inbounds i8, i8* %output, i64 %opos.0395
  %sub43 = sub i64 %output_size, %opos.0395
  %call = call i64 @aptx_decode(%struct.aptx_context* noundef nonnull %ctx, i8* noundef nonnull %arraydecay, i64 noundef %1, i8* noundef %add.ptr, i64 noundef %sub43, i64* noundef nonnull %written_step)
  %16 = load i64, i64* %written_step, align 8, !tbaa !51
  %add44 = add i64 %16, %opos.0395
  %17 = load i64, i64* %decode_dropped, align 8, !tbaa !57
  %cmp46.not = icmp ne i64 %17, 0
  %cmp49 = icmp eq i64 %call, %1
  %or.cond346 = select i1 %cmp46.not, i1 %cmp49, i1 false
  br i1 %or.cond346, label %if.then51, label %if.end64

if.then51:                                        ; preds = %while.body36
  %add53 = add i64 %17, %1
  store i64 %add53, i64* %decode_dropped, align 8, !tbaa !57
  %18 = load i64, i64* %decode_sync_packets, align 8, !tbaa !58
  %inc54 = add i64 %18, 1
  store i64 %inc54, i64* %decode_sync_packets, align 8, !tbaa !58
  %cmp56 = icmp ugt i64 %inc54, 22
  br i1 %cmp56, label %if.else.thread, label %if.end64

if.end64:                                         ; preds = %if.then51, %while.body36
  %19 = phi i64 [ %add53, %if.then51 ], [ %17, %while.body36 ]
  %cmp65 = icmp ult i64 %call, %1
  br i1 %cmp65, label %if.then67, label %if.else

if.else.thread:                                   ; preds = %if.then51
  %20 = load i64, i64* %dropped, align 8, !tbaa !51
  %add60 = add i64 %20, %add53
  store i64 %add60, i64* %dropped, align 8, !tbaa !51
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %if.then83

if.then67:                                        ; preds = %if.end64
  %21 = load i8, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %decode_sync_buffer41.i)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %decode_sync_buffer41.i, i8* noundef nonnull align 1 dereferenceable(6) %arraydecay, i64 6, i1 false) #12, !tbaa !46
  %22 = load i8, i8* %hd, align 8, !tbaa !32
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(4416) %11, i8 0, i64 4400, i1 false) #12, !tbaa !46
  store i8 %22, i8* %hd, align 8, !tbaa !32
  store i8 23, i8* %decode_skip_leading, align 1, !tbaa !48
  store i8 23, i8* %encode_remaining.i.i, align 2, !tbaa !49
  store i32 1, i32* %arrayidx17.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.1.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.1.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.2.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.2.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.3.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.3.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.150.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.151.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.1.1.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.1.1.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.2.1.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.2.1.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.3.1.i.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.3.1.i.i, align 4, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %arraydecay, i8* noundef nonnull align 1 dereferenceable(6) %decode_sync_buffer41.i, i64 6, i1 false) #12, !tbaa !46
  store i8 %21, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %decode_sync_buffer41.i)
  store i32 0, i32* %synced, align 4, !tbaa !3
  %inc69 = add i64 %19, 1
  store i64 %inc69, i64* %decode_dropped, align 8, !tbaa !57
  store i64 0, i64* %decode_sync_packets, align 8, !tbaa !58
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1) %arraydecay, i8* noundef nonnull align 1 dereferenceable(1) %scevgep419, i64 %.pre424, i1 false), !tbaa !46
  br label %if.end86

if.else:                                          ; preds = %if.end64
  %cmp81 = icmp eq i64 %19, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.else.thread, %if.else
  store i32 1, i32* %synced, align 4, !tbaa !3
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.else
  store i8 0, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  br label %if.end86

if.end86:                                         ; preds = %if.then67, %if.end84
  %23 = phi i8 [ %21, %if.then67 ], [ 0, %if.end84 ]
  %conv19 = zext i8 %23 to i64
  %cmp21 = icmp eq i64 %.pre424, %conv19
  %cmp24 = icmp ult i64 %inc37, %1
  %or.cond = select i1 %cmp21, i1 %cmp24, i1 false
  %cmp27 = icmp ult i64 %inc37, %input_size
  %or.cond345 = select i1 %or.cond, i1 %cmp27, i1 false
  br i1 %or.cond345, label %land.rhs, label %while.end87, !llvm.loop !59

while.end87:                                      ; preds = %lor.rhs, %if.end86, %if.end
  %ipos.2.lcssa = phi i64 [ %ipos.1, %if.end ], [ %inc37, %if.end86 ], [ %ipos.2393, %lor.rhs ]
  %opos.0.lcssa = phi i64 [ 0, %if.end ], [ %add44, %if.end86 ], [ %opos.0395, %lor.rhs ]
  %cmp21.lcssa = phi i1 [ %cmp21388, %if.end ], [ %cmp21, %if.end86 ], [ true, %lor.rhs ]
  %cmp94 = icmp eq i64 %ipos.2.lcssa, %1
  %or.cond347 = select i1 %cmp21.lcssa, i1 %cmp94, i1 false
  br i1 %or.cond347, label %if.then96, label %if.end98

if.then96:                                        ; preds = %while.end87
  store i8 0, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %while.end87
  %ipos.3 = phi i64 [ 0, %if.then96 ], [ %ipos.2.lcssa, %while.end87 ]
  %add100404 = add i64 %ipos.3, %1
  %cmp101.not405 = icmp ugt i64 %add100404, %input_size
  br i1 %cmp101.not405, label %while.cond197.preheader, label %land.rhs103.lr.ph

land.rhs103.lr.ph:                                ; preds = %if.end98
  %decode_skip_leading108 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 6
  %decode_sync_packets135 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 0
  %decode_sync_buffer41.i351 = getelementptr inbounds [6 x i8], [6 x i8]* %decode_sync_buffer.i350, i64 0, i64 0
  %scevgep.i356 = getelementptr %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 8, i64 0
  %24 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2
  %25 = bitcast [2 x %struct.aptx_channel]* %24 to i8*
  %encode_remaining.i.i359 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 5
  %arrayidx17.i.i360 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 0, i32 0, i64 0
  %arrayidx19.i.i361 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 0, i32 0, i64 1
  %arrayidx17.1.i.i362 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 1, i32 0, i64 0
  %arrayidx19.1.i.i363 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 1, i32 0, i64 1
  %arrayidx17.2.i.i364 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 2, i32 0, i64 0
  %arrayidx19.2.i.i365 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 2, i32 0, i64 1
  %arrayidx17.3.i.i366 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 3, i32 0, i64 0
  %arrayidx19.3.i.i367 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 3, i32 0, i64 1
  %arrayidx17.150.i.i368 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 0, i32 0, i64 0
  %arrayidx19.151.i.i369 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 0, i32 0, i64 1
  %arrayidx17.1.1.i.i370 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 1, i32 0, i64 0
  %arrayidx19.1.1.i.i371 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 1, i32 0, i64 1
  %arrayidx17.2.1.i.i372 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 2, i32 0, i64 0
  %arrayidx19.2.1.i.i373 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 2, i32 0, i64 1
  %arrayidx17.3.1.i.i374 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 3, i32 0, i64 0
  %arrayidx19.3.1.i.i375 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 3, i32 0, i64 1
  %26 = bitcast %struct.aptx_context* %ctx to i8*
  br label %land.rhs103

while.cond197.preheader:                          ; preds = %if.end191, %if.end98
  %ipos.4.lcssa = phi i64 [ %ipos.3, %if.end98 ], [ %ipos.5, %if.end191 ]
  %opos.1.lcssa = phi i64 [ %opos.0.lcssa, %if.end98 ], [ %add154, %if.end191 ]
  %cmp198412 = icmp ult i64 %ipos.4.lcssa, %input_size
  br i1 %cmp198412, label %while.body200.preheader, label %if.end209

while.body200.preheader:                          ; preds = %while.cond197.preheader
  %.pre423 = load i8, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  %27 = sub i64 %input_size, %ipos.4.lcssa
  %28 = xor i64 %ipos.4.lcssa, -1
  %xtraiter441 = and i64 %27, 1
  %lcmp.mod442.not = icmp eq i64 %xtraiter441, 0
  br i1 %lcmp.mod442.not, label %while.body200.prol.loopexit, label %while.body200.prol

while.body200.prol:                               ; preds = %while.body200.preheader
  %inc201.prol = add nuw i64 %ipos.4.lcssa, 1
  %arrayidx202.prol = getelementptr inbounds i8, i8* %input, i64 %ipos.4.lcssa
  %29 = load i8, i8* %arrayidx202.prol, align 1, !tbaa !46
  %inc205.prol = add i8 %.pre423, 1
  store i8 %inc205.prol, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  %idxprom206.prol = zext i8 %.pre423 to i64
  %arrayidx207.prol = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 8, i64 %idxprom206.prol
  store i8 %29, i8* %arrayidx207.prol, align 1, !tbaa !46
  br label %while.body200.prol.loopexit

while.body200.prol.loopexit:                      ; preds = %while.body200.prol, %while.body200.preheader
  %.unr = phi i8 [ %.pre423, %while.body200.preheader ], [ %inc205.prol, %while.body200.prol ]
  %ipos.6413.unr = phi i64 [ %ipos.4.lcssa, %while.body200.preheader ], [ %inc201.prol, %while.body200.prol ]
  %30 = sub i64 0, %input_size
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %if.end209, label %while.body200

land.rhs103:                                      ; preds = %land.rhs103.lr.ph, %if.end191
  %opos.1408 = phi i64 [ %opos.0.lcssa, %land.rhs103.lr.ph ], [ %add154, %if.end191 ]
  %ipos.4406 = phi i64 [ %ipos.3, %land.rhs103.lr.ph ], [ %ipos.5, %if.end191 ]
  %add104 = add i64 %opos.1408, 24
  %cmp105.not = icmp ugt i64 %add104, %output_size
  %32 = load i8, i8* %decode_skip_leading108, align 1, !tbaa !48
  %cmp110.not = icmp eq i8 %32, 0
  %or.cond433 = select i1 %cmp105.not, i1 %cmp110.not, i1 false
  br i1 %or.cond433, label %lor.rhs112, label %while.body118

lor.rhs112:                                       ; preds = %land.rhs103
  %33 = load i64, i64* %decode_dropped, align 8, !tbaa !57
  %cmp114.not = icmp eq i64 %33, 0
  br i1 %cmp114.not, label %if.end209, label %while.body118

while.body118:                                    ; preds = %land.rhs103, %lor.rhs112
  %34 = phi i8 [ 0, %lor.rhs112 ], [ %32, %land.rhs103 ]
  %sub119 = sub i64 %output_size, %opos.1408
  %div = udiv i64 %sub119, 3
  %mul120 = shl i64 %div, 3
  %conv122 = zext i8 %34 to i64
  %add123 = add i64 %mul120, %conv122
  %mul124 = mul i64 %add123, %1
  %sub125 = sub i64 %input_size, %ipos.4406
  %35 = urem i64 %sub125, %1
  %mul127 = sub i64 %sub125, %35
  %cmp128 = icmp ugt i64 %mul124, %mul127
  %spec.select = select i1 %cmp128, i64 %mul127, i64 %mul124
  %36 = load i64, i64* %decode_sync_packets135, align 8, !tbaa !58
  %sub136 = sub i64 23, %36
  %mul137 = mul i64 %sub136, %1
  %cmp138 = icmp ugt i64 %spec.select, %mul137
  br i1 %cmp138, label %land.lhs.true140, label %if.end148

land.lhs.true140:                                 ; preds = %while.body118
  %37 = load i64, i64* %decode_dropped, align 8, !tbaa !57
  %cmp142.not = icmp eq i64 %37, 0
  %spec.select348 = select i1 %cmp142.not, i64 %spec.select, i64 %mul137
  br label %if.end148

if.end148:                                        ; preds = %land.lhs.true140, %while.body118
  %input_size_step.1 = phi i64 [ %spec.select, %while.body118 ], [ %spec.select348, %land.lhs.true140 ]
  %add.ptr149 = getelementptr inbounds i8, i8* %input, i64 %ipos.4406
  %add.ptr150 = getelementptr inbounds i8, i8* %output, i64 %opos.1408
  %call152 = call i64 @aptx_decode(%struct.aptx_context* noundef nonnull %ctx, i8* noundef %add.ptr149, i64 noundef %input_size_step.1, i8* noundef %add.ptr150, i64 noundef %sub119, i64* noundef nonnull %written_step)
  %add153 = add i64 %call152, %ipos.4406
  %38 = load i64, i64* %written_step, align 8, !tbaa !51
  %add154 = add i64 %38, %opos.1408
  %39 = load i64, i64* %decode_dropped, align 8, !tbaa !57
  %cmp156.not = icmp eq i64 %39, 0
  %cmp160.not = icmp ugt i64 %1, %call152
  %or.cond349 = select i1 %cmp156.not, i1 true, i1 %cmp160.not
  br i1 %or.cond349, label %if.end177, label %if.then162

if.then162:                                       ; preds = %if.end148
  %div159 = udiv i64 %call152, %1
  %add164 = add i64 %39, %call152
  store i64 %add164, i64* %decode_dropped, align 8, !tbaa !57
  %40 = load i64, i64* %decode_sync_packets135, align 8, !tbaa !58
  %add167 = add i64 %40, %div159
  store i64 %add167, i64* %decode_sync_packets135, align 8, !tbaa !58
  %cmp169 = icmp ugt i64 %add167, 22
  br i1 %cmp169, label %if.end177.thread, label %if.end177

if.end177:                                        ; preds = %if.then162, %if.end148
  %41 = phi i64 [ %add164, %if.then162 ], [ %39, %if.end148 ]
  %cmp178 = icmp ult i64 %call152, %input_size_step.1
  br i1 %cmp178, label %if.then180, label %if.else185

if.end177.thread:                                 ; preds = %if.then162
  %42 = load i64, i64* %dropped, align 8, !tbaa !51
  %add173 = add i64 %42, %add164
  store i64 %add173, i64* %dropped, align 8, !tbaa !51
  %cmp178427 = icmp ult i64 %call152, %input_size_step.1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  br i1 %cmp178427, label %if.then180, label %if.then189

if.then180:                                       ; preds = %if.end177.thread, %if.end177
  %43 = phi i64 [ 0, %if.end177.thread ], [ %41, %if.end177 ]
  %44 = load i8, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %decode_sync_buffer41.i351)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %decode_sync_buffer41.i351, i8* noundef nonnull align 1 dereferenceable(6) %scevgep.i356, i64 6, i1 false) #12, !tbaa !46
  %45 = load i8, i8* %hd, align 8, !tbaa !32
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(4416) %25, i8 0, i64 4400, i1 false) #12, !tbaa !46
  store i8 %45, i8* %hd, align 8, !tbaa !32
  store i8 23, i8* %decode_skip_leading108, align 1, !tbaa !48
  store i8 23, i8* %encode_remaining.i.i359, align 2, !tbaa !49
  store i32 1, i32* %arrayidx17.i.i360, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.i.i361, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.1.i.i362, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.1.i.i363, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.2.i.i364, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.2.i.i365, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.3.i.i366, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.3.i.i367, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.150.i.i368, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.151.i.i369, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.1.1.i.i370, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.1.1.i.i371, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.2.1.i.i372, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.2.1.i.i373, align 4, !tbaa !3
  store i32 1, i32* %arrayidx17.3.1.i.i374, align 4, !tbaa !3
  store i32 1, i32* %arrayidx19.3.1.i.i375, align 4, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %scevgep.i356, i8* noundef nonnull align 1 dereferenceable(6) %decode_sync_buffer41.i351, i64 6, i1 false) #12, !tbaa !46
  store i8 %44, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %decode_sync_buffer41.i351)
  store i32 0, i32* %synced, align 4, !tbaa !3
  %inc181 = add i64 %add153, 1
  %inc183 = add i64 %43, 1
  store i64 %inc183, i64* %decode_dropped, align 8, !tbaa !57
  store i64 0, i64* %decode_sync_packets135, align 8, !tbaa !58
  br label %if.end191

if.else185:                                       ; preds = %if.end177
  %cmp187 = icmp eq i64 %41, 0
  br i1 %cmp187, label %if.then189, label %if.end191

if.then189:                                       ; preds = %if.end177.thread, %if.else185
  store i32 1, i32* %synced, align 4, !tbaa !3
  br label %if.end191

if.end191:                                        ; preds = %if.else185, %if.then189, %if.then180
  %ipos.5 = phi i64 [ %inc181, %if.then180 ], [ %add153, %if.then189 ], [ %add153, %if.else185 ]
  %add100 = add i64 %ipos.5, %1
  %cmp101.not = icmp ugt i64 %add100, %input_size
  br i1 %cmp101.not, label %while.cond197.preheader, label %land.rhs103, !llvm.loop !60

while.body200:                                    ; preds = %while.body200.prol.loopexit, %while.body200
  %46 = phi i8 [ %inc205.1, %while.body200 ], [ %.unr, %while.body200.prol.loopexit ]
  %ipos.6413 = phi i64 [ %inc201.1, %while.body200 ], [ %ipos.6413.unr, %while.body200.prol.loopexit ]
  %inc201 = add nuw i64 %ipos.6413, 1
  %arrayidx202 = getelementptr inbounds i8, i8* %input, i64 %ipos.6413
  %47 = load i8, i8* %arrayidx202, align 1, !tbaa !46
  %inc205 = add i8 %46, 1
  store i8 %inc205, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  %idxprom206 = zext i8 %46 to i64
  %arrayidx207 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 8, i64 %idxprom206
  store i8 %47, i8* %arrayidx207, align 1, !tbaa !46
  %inc201.1 = add nuw i64 %ipos.6413, 2
  %arrayidx202.1 = getelementptr inbounds i8, i8* %input, i64 %inc201
  %48 = load i8, i8* %arrayidx202.1, align 1, !tbaa !46
  %inc205.1 = add i8 %46, 2
  store i8 %inc205.1, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  %idxprom206.1 = zext i8 %inc205 to i64
  %arrayidx207.1 = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 8, i64 %idxprom206.1
  store i8 %48, i8* %arrayidx207.1, align 1, !tbaa !46
  %exitcond420.not.1 = icmp eq i64 %inc201.1, %input_size
  br i1 %exitcond420.not.1, label %if.end209, label %while.body200, !llvm.loop !61

if.end209:                                        ; preds = %lor.rhs112, %while.body200.prol.loopexit, %while.body200, %while.cond197.preheader
  %opos.1380 = phi i64 [ %opos.1.lcssa, %while.cond197.preheader ], [ %opos.1.lcssa, %while.body200 ], [ %opos.1.lcssa, %while.body200.prol.loopexit ], [ %opos.1408, %lor.rhs112 ]
  %ipos.7 = phi i64 [ %ipos.4.lcssa, %while.cond197.preheader ], [ %input_size, %while.body200 ], [ %input_size, %while.body200.prol.loopexit ], [ %ipos.4406, %lor.rhs112 ]
  store i64 %opos.1380, i64* %written, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  ret i64 %ipos.7
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local i64 @aptx_decode_sync_finish(%struct.aptx_context* noundef %ctx) local_unnamed_addr #8 {
entry:
  %decode_sync_buffer_len = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 7
  %0 = load i8, i8* %decode_sync_buffer_len, align 4, !tbaa !55
  %ctx46.i = bitcast %struct.aptx_context* %ctx to i8*
  %hd1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 3
  %1 = load i8, i8* %hd1.i, align 8, !tbaa !32
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(4416) %ctx46.i, i8 0, i64 4416, i1 false) #12, !tbaa !46
  store i8 %1, i8* %hd1.i, align 8, !tbaa !32
  %decode_skip_leading.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 6
  store i8 23, i8* %decode_skip_leading.i, align 1, !tbaa !48
  %encode_remaining.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 5
  store i8 23, i8* %encode_remaining.i, align 2, !tbaa !49
  %arrayidx17.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 0, i32 0, i64 0
  store i32 1, i32* %arrayidx17.i, align 4, !tbaa !3
  %arrayidx19.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 0, i32 0, i64 1
  store i32 1, i32* %arrayidx19.i, align 4, !tbaa !3
  %arrayidx17.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 1, i32 0, i64 0
  store i32 1, i32* %arrayidx17.1.i, align 4, !tbaa !3
  %arrayidx19.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 1, i32 0, i64 1
  store i32 1, i32* %arrayidx19.1.i, align 4, !tbaa !3
  %arrayidx17.2.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 2, i32 0, i64 0
  store i32 1, i32* %arrayidx17.2.i, align 4, !tbaa !3
  %arrayidx19.2.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 2, i32 0, i64 1
  store i32 1, i32* %arrayidx19.2.i, align 4, !tbaa !3
  %arrayidx17.3.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 3, i32 0, i64 0
  store i32 1, i32* %arrayidx17.3.i, align 4, !tbaa !3
  %arrayidx19.3.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 0, i32 6, i64 3, i32 0, i64 1
  store i32 1, i32* %arrayidx19.3.i, align 4, !tbaa !3
  %arrayidx17.150.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 0, i32 0, i64 0
  store i32 1, i32* %arrayidx17.150.i, align 4, !tbaa !3
  %arrayidx19.151.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 0, i32 0, i64 1
  store i32 1, i32* %arrayidx19.151.i, align 4, !tbaa !3
  %arrayidx17.1.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 1, i32 0, i64 0
  store i32 1, i32* %arrayidx17.1.1.i, align 4, !tbaa !3
  %arrayidx19.1.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 1, i32 0, i64 1
  store i32 1, i32* %arrayidx19.1.1.i, align 4, !tbaa !3
  %arrayidx17.2.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 2, i32 0, i64 0
  store i32 1, i32* %arrayidx17.2.1.i, align 4, !tbaa !3
  %arrayidx19.2.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 2, i32 0, i64 1
  store i32 1, i32* %arrayidx19.2.1.i, align 4, !tbaa !3
  %arrayidx17.3.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 3, i32 0, i64 0
  store i32 1, i32* %arrayidx17.3.1.i, align 4, !tbaa !3
  %arrayidx19.3.1.i = getelementptr inbounds %struct.aptx_context, %struct.aptx_context* %ctx, i64 0, i32 2, i64 1, i32 6, i64 3, i32 0, i64 1
  store i32 1, i32* %arrayidx19.3.1.i, align 4, !tbaa !3
  %conv = zext i8 %0 to i64
  ret i64 %conv
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #11

attributes #0 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #1 = { inlinehint nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblememonly nofree nounwind willreturn }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git 1f81a77ddc1383c698b3afc5ce9a053c03ed731b)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !5, i64 128}
!8 = !{!"aptx_filter_signal", !5, i64 0, !5, i64 128}
!9 = !{!10, !4, i64 0}
!10 = !{!"aptx_quantize", !4, i64 0, !4, i64 4, !4, i64 8}
!11 = !{!12, !13, i64 0}
!12 = !{!"aptx_tables", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !4, i64 32, !4, i64 36, !4, i64 40}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!16, !4, i64 0}
!16 = !{!"aptx_invert_quantize", !4, i64 0, !4, i64 4, !4, i64 8}
!17 = !{!16, !4, i64 8}
!18 = !{!16, !4, i64 4}
!19 = !{!12, !13, i64 24}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !5, i64 0}
!22 = !{!12, !4, i64 36}
!23 = !{!24, !4, i64 312}
!24 = !{!"aptx_prediction", !5, i64 0, !5, i64 8, !5, i64 16, !4, i64 112, !5, i64 116, !4, i64 308, !4, i64 312, !4, i64 316}
!25 = !{!12, !4, i64 40}
!26 = !{!24, !4, i64 316}
!27 = !{!24, !4, i64 308}
!28 = !{!24, !4, i64 112}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = distinct !{!31, !30}
!32 = !{!33, !5, i64 4400}
!33 = !{!"aptx_context", !34, i64 0, !34, i64 8, !5, i64 16, !5, i64 4400, !5, i64 4401, !5, i64 4402, !5, i64 4403, !5, i64 4404, !5, i64 4405}
!34 = !{!"long", !5, i64 0}
!35 = !{!36, !4, i64 0}
!36 = !{!"aptx_channel", !4, i64 0, !4, i64 4, !5, i64 8, !37, i64 24, !5, i64 816, !5, i64 864, !5, i64 912}
!37 = !{!"aptx_QMF_analysis", !5, i64 0, !5, i64 264}
!38 = !{!36, !4, i64 4}
!39 = !{!12, !4, i64 32}
!40 = distinct !{!40, !30}
!41 = !{!12, !13, i64 16}
!42 = !{!10, !4, i64 8}
!43 = !{!10, !4, i64 4}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = !{!5, !5, i64 0}
!47 = distinct !{!47, !30}
!48 = !{!33, !5, i64 4403}
!49 = !{!33, !5, i64 4402}
!50 = distinct !{!50, !30}
!51 = !{!34, !34, i64 0}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !30}
!54 = distinct !{!54, !30}
!55 = !{!33, !5, i64 4404}
!56 = distinct !{!56, !30}
!57 = !{!33, !34, i64 8}
!58 = !{!33, !34, i64 0}
!59 = distinct !{!59, !30}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
