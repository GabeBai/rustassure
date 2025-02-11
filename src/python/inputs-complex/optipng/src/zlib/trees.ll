; ModuleID = 'trees.c'
source_filename = "trees.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.static_tree_desc_s = type { %struct.ct_data_s*, i32*, i32, i32, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.internal_state = type { %struct.z_stream_s*, i32, i8*, i64, i8*, i32, i32, %struct.gz_header_s*, i32, i8, i32, i32, i32, i32, i8*, i64, i16*, i16*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], i8*, i32, i32, i16*, i64, i64, i32, i32, i16, i32, i64 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.gz_header_s = type { i32, i64, i32, i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i32 }
%struct.tree_desc_s = type { %struct.ct_data_s*, i32, %struct.static_tree_desc_s* }

@_dist_code = hidden constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\10\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 1
@_length_code = hidden constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C", align 1
@static_l_desc = internal global %struct.static_tree_desc_s { %struct.ct_data_s* getelementptr inbounds ([288 x %struct.ct_data_s], [288 x %struct.ct_data_s]* @static_ltree, i32 0, i32 0), i32* getelementptr inbounds ([29 x i32], [29 x i32]* @extra_lbits, i32 0, i32 0), i32 257, i32 286, i32 15 }, align 8
@static_d_desc = internal global %struct.static_tree_desc_s { %struct.ct_data_s* getelementptr inbounds ([30 x %struct.ct_data_s], [30 x %struct.ct_data_s]* @static_dtree, i32 0, i32 0), i32* getelementptr inbounds ([30 x i32], [30 x i32]* @extra_dbits, i32 0, i32 0), i32 0, i32 30, i32 15 }, align 8
@static_bl_desc = internal global %struct.static_tree_desc_s { %struct.ct_data_s* null, i32* getelementptr inbounds ([19 x i32], [19 x i32]* @extra_blbits, i32 0, i32 0), i32 0, i32 19, i32 7 }, align 8
@static_ltree = internal constant [288 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 140 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 76 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 204 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 44 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 172 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 108 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 236 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 156 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 92 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 220 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 60 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 188 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 124 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 252 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 130 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 66 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 194 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 34 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 162 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 98 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 226 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 146 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 82 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 210 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 50 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 178 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 114 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 242 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 138 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 74 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 202 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 42 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 170 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 106 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 234 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 154 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 90 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 218 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 58 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 186 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 122 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 250 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 134 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 70 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 198 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 38 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 166 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 102 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 230 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 150 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 86 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 214 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 54 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 182 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 118 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 246 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 142 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 78 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 206 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 46 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 174 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 110 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 238 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 158 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 94 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 222 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 62 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 190 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 126 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 254 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 129 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 65 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 193 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 33 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 161 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 97 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 225 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 145 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 81 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 209 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 49 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 177 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 113 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 241 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 137 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 73 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 201 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 41 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 169 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 105 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 233 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 153 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 89 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 217 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 57 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 185 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 121 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 249 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 133 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 69 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 197 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 37 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 165 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 101 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 229 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 149 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 85 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 213 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 53 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 181 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 117 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 245 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 141 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 77 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 205 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 45 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 173 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 109 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 237 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 157 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 93 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 221 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 61 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 189 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 125 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 253 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 275 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 147 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 403 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 83 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 339 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 211 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 467 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 51 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 307 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 179 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 435 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 115 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 371 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 243 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 499 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 267 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 139 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 395 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 75 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 331 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 203 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 459 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 43 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 299 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 171 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 427 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 107 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 363 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 235 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 491 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 283 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 155 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 411 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 91 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 347 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 219 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 475 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 59 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 315 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 187 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 443 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 123 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 379 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 251 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 507 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 263 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 135 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 391 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 71 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 327 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 199 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 455 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 39 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 295 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 167 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 423 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 103 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 359 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 231 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 487 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 279 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 151 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 407 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 87 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 343 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 215 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 471 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 55 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 311 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 183 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 439 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 119 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 375 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 247 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 503 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 15 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 271 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 143 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 399 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 79 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 335 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 207 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 463 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 47 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 303 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 175 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 431 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 111 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 367 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 239 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 495 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 31 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 287 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 159 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 415 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 95 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 351 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 223 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 479 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 63 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 319 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 191 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 447 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 127 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 383 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 255 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 511 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 64 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 32 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 96 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 80 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 48 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 112 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 72 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 40 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 104 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 88 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 56 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 120 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 68 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 36 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 100 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 84 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 52 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 116 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 131 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 67 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 195 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 35 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 163 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 99 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 227 }, %union.anon.0 { i16 8 } }], align 2
@static_dtree = internal constant [30 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 5 } }], align 2
@extra_lbits = internal constant [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 4
@extra_dbits = internal constant [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 4
@extra_blbits = internal constant [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 4
@bl_order = internal constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 1
@base_length = internal constant [29 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 12, i32 14, i32 16, i32 20, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 0], align 4
@base_dist = internal constant [30 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define hidden void @_tr_init(%struct.internal_state* noundef %0) #0 {
  %2 = alloca %struct.internal_state*, align 8
  store %struct.internal_state* %0, %struct.internal_state** %2, align 8
  call void @tr_static_init()
  %3 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %4 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %3, i32 0, i32 37
  %5 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %4, i64 0, i64 0
  %6 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %7 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %6, i32 0, i32 40
  %8 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %7, i32 0, i32 0
  store %struct.ct_data_s* %5, %struct.ct_data_s** %8, align 8
  %9 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %10 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %9, i32 0, i32 40
  %11 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %10, i32 0, i32 2
  store %struct.static_tree_desc_s* @static_l_desc, %struct.static_tree_desc_s** %11, align 8
  %12 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %13 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %12, i32 0, i32 38
  %14 = getelementptr inbounds [61 x %struct.ct_data_s], [61 x %struct.ct_data_s]* %13, i64 0, i64 0
  %15 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %16 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %15, i32 0, i32 41
  %17 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %16, i32 0, i32 0
  store %struct.ct_data_s* %14, %struct.ct_data_s** %17, align 8
  %18 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %19 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %18, i32 0, i32 41
  %20 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %19, i32 0, i32 2
  store %struct.static_tree_desc_s* @static_d_desc, %struct.static_tree_desc_s** %20, align 8
  %21 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %22 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %21, i32 0, i32 39
  %23 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %22, i64 0, i64 0
  %24 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %25 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %24, i32 0, i32 42
  %26 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %25, i32 0, i32 0
  store %struct.ct_data_s* %23, %struct.ct_data_s** %26, align 8
  %27 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %28 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %27, i32 0, i32 42
  %29 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %28, i32 0, i32 2
  store %struct.static_tree_desc_s* @static_bl_desc, %struct.static_tree_desc_s** %29, align 8
  %30 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %31 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %30, i32 0, i32 56
  store i16 0, i16* %31, align 8
  %32 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %33 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %32, i32 0, i32 57
  store i32 0, i32* %33, align 4
  %34 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  call void @init_block(%struct.internal_state* noundef %34)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @tr_static_init() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @init_block(%struct.internal_state* noundef %0) #0 {
  %2 = alloca %struct.internal_state*, align 8
  %3 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 286
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %9 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %8, i32 0, i32 37
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %9, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %12, i32 0, i32 0
  %14 = bitcast %union.anon* %13 to i16*
  store i16 0, i16* %14, align 4
  br label %15

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4, !llvm.loop !10

18:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 30
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %24 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %23, i32 0, i32 38
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [61 x %struct.ct_data_s], [61 x %struct.ct_data_s]* %24, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %27, i32 0, i32 0
  %29 = bitcast %union.anon* %28 to i16*
  store i16 0, i16* %29, align 4
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %19, !llvm.loop !12

33:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %45, %33
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 19
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %39 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %38, i32 0, i32 39
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %39, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %42, i32 0, i32 0
  %44 = bitcast %union.anon* %43 to i16*
  store i16 0, i16* %44, align 4
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %34, !llvm.loop !13

48:                                               ; preds = %34
  %49 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %50 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %49, i32 0, i32 37
  %51 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %50, i64 0, i64 256
  %52 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %51, i32 0, i32 0
  %53 = bitcast %union.anon* %52 to i16*
  store i16 1, i16* %53, align 4
  %54 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %55 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %54, i32 0, i32 53
  store i64 0, i64* %55, align 8
  %56 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %57 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %56, i32 0, i32 52
  store i64 0, i64* %57, align 8
  %58 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %59 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %58, i32 0, i32 54
  store i32 0, i32* %59, align 8
  %60 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %61 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %60, i32 0, i32 50
  store i32 0, i32* %61, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define hidden void @_tr_stored_block(%struct.internal_state* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.internal_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 3, i32* %9, align 4
  %11 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %12 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %11, i32 0, i32 57
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = sub nsw i32 16, %14
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %80

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = trunc i32 %20 to i16
  %22 = zext i16 %21 to i32
  %23 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %24 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %23, i32 0, i32 57
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %22, %25
  %27 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %28 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %27, i32 0, i32 56
  %29 = load i16, i16* %28, align 8
  %30 = zext i16 %29 to i32
  %31 = or i32 %30, %26
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %28, align 8
  %33 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %34 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %33, i32 0, i32 56
  %35 = load i16, i16* %34, align 8
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %40 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %43 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %41, i64 %46
  store i8 %38, i8* %47, align 1
  %48 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %49 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %48, i32 0, i32 56
  %50 = load i16, i16* %49, align 8
  %51 = zext i16 %50 to i32
  %52 = ashr i32 %51, 8
  %53 = trunc i32 %52 to i8
  %54 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %55 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %58 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = add i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  store i8 %53, i8* %62, align 1
  %63 = load i32, i32* %10, align 4
  %64 = trunc i32 %63 to i16
  %65 = zext i16 %64 to i32
  %66 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %67 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %66, i32 0, i32 57
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 16, %68
  %70 = ashr i32 %65, %69
  %71 = trunc i32 %70 to i16
  %72 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %73 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %72, i32 0, i32 56
  store i16 %71, i16* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, 16
  %76 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %77 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %76, i32 0, i32 57
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %100

80:                                               ; preds = %4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 0, %81
  %83 = trunc i32 %82 to i16
  %84 = zext i16 %83 to i32
  %85 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %86 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %85, i32 0, i32 57
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %84, %87
  %89 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %90 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %89, i32 0, i32 56
  %91 = load i16, i16* %90, align 8
  %92 = zext i16 %91 to i32
  %93 = or i32 %92, %88
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %90, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %97 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %96, i32 0, i32 57
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %80, %17
  %101 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = trunc i64 %103 to i32
  call void @copy_block(%struct.internal_state* noundef %101, i8* noundef %102, i32 noundef %104, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copy_block(%struct.internal_state* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.internal_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  call void @bi_windup(%struct.internal_state* noundef %9)
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %71

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = trunc i32 %13 to i16
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i8
  %18 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %19 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %22 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = add i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  store i8 %17, i8* %26, align 1
  %27 = load i32, i32* %7, align 4
  %28 = trunc i32 %27 to i16
  %29 = zext i16 %28 to i32
  %30 = ashr i32 %29, 8
  %31 = trunc i32 %30 to i8
  %32 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %33 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %36 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = add i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  store i8 %31, i8* %40, align 1
  %41 = load i32, i32* %7, align 4
  %42 = xor i32 %41, -1
  %43 = trunc i32 %42 to i16
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, 255
  %46 = trunc i32 %45 to i8
  %47 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %48 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %51 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = add i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  store i8 %46, i8* %55, align 1
  %56 = load i32, i32* %7, align 4
  %57 = xor i32 %56, -1
  %58 = trunc i32 %57 to i16
  %59 = zext i16 %58 to i32
  %60 = ashr i32 %59, 8
  %61 = trunc i32 %60 to i8
  %62 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %63 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %66 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %64, i64 %69
  store i8 %61, i8* %70, align 1
  br label %71

71:                                               ; preds = %12, %4
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %7, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  %79 = load i8, i8* %77, align 1
  %80 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %81 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %84 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = add i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %82, i64 %87
  store i8 %79, i8* %88, align 1
  br label %72, !llvm.loop !14

89:                                               ; preds = %72
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define hidden void @_tr_flush_bits(%struct.internal_state* noundef %0) #0 {
  %2 = alloca %struct.internal_state*, align 8
  store %struct.internal_state* %0, %struct.internal_state** %2, align 8
  %3 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  call void @bi_flush(%struct.internal_state* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @bi_flush(%struct.internal_state* noundef %0) #0 {
  %2 = alloca %struct.internal_state*, align 8
  store %struct.internal_state* %0, %struct.internal_state** %2, align 8
  %3 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %4 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %3, i32 0, i32 57
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  %8 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %9 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %8, i32 0, i32 56
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 255
  %13 = trunc i32 %12 to i8
  %14 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %15 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %18 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = add i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %16, i64 %21
  store i8 %13, i8* %22, align 1
  %23 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %24 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %23, i32 0, i32 56
  %25 = load i16, i16* %24, align 8
  %26 = zext i16 %25 to i32
  %27 = ashr i32 %26, 8
  %28 = trunc i32 %27 to i8
  %29 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %30 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %33 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = add i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  store i8 %28, i8* %37, align 1
  %38 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %39 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %38, i32 0, i32 56
  store i16 0, i16* %39, align 8
  %40 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %41 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %40, i32 0, i32 57
  store i32 0, i32* %41, align 4
  br label %72

42:                                               ; preds = %1
  %43 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %44 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %43, i32 0, i32 57
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 8
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %49 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %48, i32 0, i32 56
  %50 = load i16, i16* %49, align 8
  %51 = trunc i16 %50 to i8
  %52 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %53 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %56 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %54, i64 %59
  store i8 %51, i8* %60, align 1
  %61 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %62 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %61, i32 0, i32 56
  %63 = load i16, i16* %62, align 8
  %64 = zext i16 %63 to i32
  %65 = ashr i32 %64, 8
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %62, align 8
  %67 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %68 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %67, i32 0, i32 57
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 8
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %47, %42
  br label %72

72:                                               ; preds = %71, %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define hidden void @_tr_align(%struct.internal_state* noundef %0) #0 {
  %2 = alloca %struct.internal_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %2, align 8
  store i32 3, i32* %3, align 4
  %7 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %8 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %7, i32 0, i32 57
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 16, %10
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = trunc i32 %14 to i16
  %16 = zext i16 %15 to i32
  %17 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %18 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %17, i32 0, i32 57
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %16, %19
  %21 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %22 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %21, i32 0, i32 56
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = or i32 %24, %20
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %22, align 8
  %27 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %28 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %27, i32 0, i32 56
  %29 = load i16, i16* %28, align 8
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 255
  %32 = trunc i32 %31 to i8
  %33 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %34 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %37 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = add i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  store i8 %32, i8* %41, align 1
  %42 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %43 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %42, i32 0, i32 56
  %44 = load i16, i16* %43, align 8
  %45 = zext i16 %44 to i32
  %46 = ashr i32 %45, 8
  %47 = trunc i32 %46 to i8
  %48 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %49 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %52 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  store i8 %47, i8* %56, align 1
  %57 = load i32, i32* %4, align 4
  %58 = trunc i32 %57 to i16
  %59 = zext i16 %58 to i32
  %60 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %61 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %60, i32 0, i32 57
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 16, %62
  %64 = ashr i32 %59, %63
  %65 = trunc i32 %64 to i16
  %66 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %67 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %66, i32 0, i32 56
  store i16 %65, i16* %67, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sub nsw i32 %68, 16
  %70 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %71 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %70, i32 0, i32 57
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %90

74:                                               ; preds = %1
  %75 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %76 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %75, i32 0, i32 57
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 2, %77
  %79 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %80 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %79, i32 0, i32 56
  %81 = load i16, i16* %80, align 8
  %82 = zext i16 %81 to i32
  %83 = or i32 %82, %78
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %80, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %87 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %86, i32 0, i32 57
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %74, %13
  %91 = load i16, i16* getelementptr inbounds ([288 x %struct.ct_data_s], [288 x %struct.ct_data_s]* @static_ltree, i64 0, i64 256, i32 1, i32 0), align 2
  %92 = zext i16 %91 to i32
  store i32 %92, i32* %5, align 4
  %93 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %94 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %93, i32 0, i32 57
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %5, align 4
  %97 = sub nsw i32 16, %96
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %162

99:                                               ; preds = %90
  %100 = load i16, i16* getelementptr inbounds ([288 x %struct.ct_data_s], [288 x %struct.ct_data_s]* @static_ltree, i64 0, i64 256, i32 0, i32 0), align 2
  %101 = zext i16 %100 to i32
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = trunc i32 %102 to i16
  %104 = zext i16 %103 to i32
  %105 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %106 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %105, i32 0, i32 57
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %104, %107
  %109 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %110 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %109, i32 0, i32 56
  %111 = load i16, i16* %110, align 8
  %112 = zext i16 %111 to i32
  %113 = or i32 %112, %108
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %110, align 8
  %115 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %116 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %115, i32 0, i32 56
  %117 = load i16, i16* %116, align 8
  %118 = zext i16 %117 to i32
  %119 = and i32 %118, 255
  %120 = trunc i32 %119 to i8
  %121 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %122 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %125 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = add i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = zext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %123, i64 %128
  store i8 %120, i8* %129, align 1
  %130 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %131 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %130, i32 0, i32 56
  %132 = load i16, i16* %131, align 8
  %133 = zext i16 %132 to i32
  %134 = ashr i32 %133, 8
  %135 = trunc i32 %134 to i8
  %136 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %137 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %140 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = add i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = zext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %138, i64 %143
  store i8 %135, i8* %144, align 1
  %145 = load i32, i32* %6, align 4
  %146 = trunc i32 %145 to i16
  %147 = zext i16 %146 to i32
  %148 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %149 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %148, i32 0, i32 57
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 16, %150
  %152 = ashr i32 %147, %151
  %153 = trunc i32 %152 to i16
  %154 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %155 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %154, i32 0, i32 56
  store i16 %153, i16* %155, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sub nsw i32 %156, 16
  %158 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %159 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %158, i32 0, i32 57
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %180

162:                                              ; preds = %90
  %163 = load i16, i16* getelementptr inbounds ([288 x %struct.ct_data_s], [288 x %struct.ct_data_s]* @static_ltree, i64 0, i64 256, i32 0, i32 0), align 2
  %164 = zext i16 %163 to i32
  %165 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %166 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %165, i32 0, i32 57
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %164, %167
  %169 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %170 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %169, i32 0, i32 56
  %171 = load i16, i16* %170, align 8
  %172 = zext i16 %171 to i32
  %173 = or i32 %172, %168
  %174 = trunc i32 %173 to i16
  store i16 %174, i16* %170, align 8
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %177 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %176, i32 0, i32 57
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %162, %99
  %181 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  call void @bi_flush(%struct.internal_state* noundef %181)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define hidden void @_tr_flush_block(%struct.internal_state* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.internal_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %17 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %16, i32 0, i32 33
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %4
  %21 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %22 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %21, i32 0, i32 0
  %23 = load %struct.z_stream_s*, %struct.z_stream_s** %22, align 8
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %29 = call i32 @detect_data_type(%struct.internal_state* noundef %28)
  %30 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %31 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %30, i32 0, i32 0
  %32 = load %struct.z_stream_s*, %struct.z_stream_s** %31, align 8
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %32, i32 0, i32 11
  store i32 %29, i32* %33, align 8
  br label %34

34:                                               ; preds = %27, %20
  %35 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %36 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %37 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %36, i32 0, i32 40
  call void @build_tree(%struct.internal_state* noundef %35, %struct.tree_desc_s* noundef %37)
  %38 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %39 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %40 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %39, i32 0, i32 41
  call void @build_tree(%struct.internal_state* noundef %38, %struct.tree_desc_s* noundef %40)
  %41 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %42 = call i32 @build_bl_tree(%struct.internal_state* noundef %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %44 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %43, i32 0, i32 52
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 3
  %47 = add i64 %46, 7
  %48 = lshr i64 %47, 3
  store i64 %48, i64* %9, align 8
  %49 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %50 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %49, i32 0, i32 53
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 3
  %53 = add i64 %52, 7
  %54 = lshr i64 %53, 3
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %34
  %59 = load i64, i64* %10, align 8
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %58, %34
  br label %64

61:                                               ; preds = %4
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 5
  store i64 %63, i64* %10, align 8
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %61, %60
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, 4
  %67 = load i64, i64* %9, align 8
  %68 = icmp ule i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i8*, i8** %6, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* %8, align 4
  call void @_tr_stored_block(%struct.internal_state* noundef %73, i8* noundef %74, i64 noundef %75, i32 noundef %76)
  br label %290

77:                                               ; preds = %69, %64
  %78 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %79 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %78, i32 0, i32 34
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %9, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %178

86:                                               ; preds = %82, %77
  store i32 3, i32* %12, align 4
  %87 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %88 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %87, i32 0, i32 57
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 16, %90
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %156

93:                                               ; preds = %86
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 2, %94
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = trunc i32 %96 to i16
  %98 = zext i16 %97 to i32
  %99 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %100 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %99, i32 0, i32 57
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %98, %101
  %103 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %104 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %103, i32 0, i32 56
  %105 = load i16, i16* %104, align 8
  %106 = zext i16 %105 to i32
  %107 = or i32 %106, %102
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %104, align 8
  %109 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %110 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %109, i32 0, i32 56
  %111 = load i16, i16* %110, align 8
  %112 = zext i16 %111 to i32
  %113 = and i32 %112, 255
  %114 = trunc i32 %113 to i8
  %115 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %116 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %119 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = add i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %117, i64 %122
  store i8 %114, i8* %123, align 1
  %124 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %125 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %124, i32 0, i32 56
  %126 = load i16, i16* %125, align 8
  %127 = zext i16 %126 to i32
  %128 = ashr i32 %127, 8
  %129 = trunc i32 %128 to i8
  %130 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %131 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %134 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = add i32 %135, 1
  store i32 %136, i32* %134, align 8
  %137 = zext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %132, i64 %137
  store i8 %129, i8* %138, align 1
  %139 = load i32, i32* %13, align 4
  %140 = trunc i32 %139 to i16
  %141 = zext i16 %140 to i32
  %142 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %143 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %142, i32 0, i32 57
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 16, %144
  %146 = ashr i32 %141, %145
  %147 = trunc i32 %146 to i16
  %148 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %149 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %148, i32 0, i32 56
  store i16 %147, i16* %149, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sub nsw i32 %150, 16
  %152 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %153 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %152, i32 0, i32 57
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %176

156:                                              ; preds = %86
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 2, %157
  %159 = trunc i32 %158 to i16
  %160 = zext i16 %159 to i32
  %161 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %162 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %161, i32 0, i32 57
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %160, %163
  %165 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %166 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %165, i32 0, i32 56
  %167 = load i16, i16* %166, align 8
  %168 = zext i16 %167 to i32
  %169 = or i32 %168, %164
  %170 = trunc i32 %169 to i16
  store i16 %170, i16* %166, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %173 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %172, i32 0, i32 57
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %156, %93
  %177 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  call void @compress_block(%struct.internal_state* noundef %177, %struct.ct_data_s* noundef getelementptr inbounds ([288 x %struct.ct_data_s], [288 x %struct.ct_data_s]* @static_ltree, i64 0, i64 0), %struct.ct_data_s* noundef getelementptr inbounds ([30 x %struct.ct_data_s], [30 x %struct.ct_data_s]* @static_dtree, i64 0, i64 0))
  br label %289

178:                                              ; preds = %82
  store i32 3, i32* %14, align 4
  %179 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %180 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %179, i32 0, i32 57
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %14, align 4
  %183 = sub nsw i32 16, %182
  %184 = icmp sgt i32 %181, %183
  br i1 %184, label %185, label %248

185:                                              ; preds = %178
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 4, %186
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* %15, align 4
  %189 = trunc i32 %188 to i16
  %190 = zext i16 %189 to i32
  %191 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %192 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %191, i32 0, i32 57
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 %190, %193
  %195 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %196 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %195, i32 0, i32 56
  %197 = load i16, i16* %196, align 8
  %198 = zext i16 %197 to i32
  %199 = or i32 %198, %194
  %200 = trunc i32 %199 to i16
  store i16 %200, i16* %196, align 8
  %201 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %202 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %201, i32 0, i32 56
  %203 = load i16, i16* %202, align 8
  %204 = zext i16 %203 to i32
  %205 = and i32 %204, 255
  %206 = trunc i32 %205 to i8
  %207 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %208 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %211 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = add i32 %212, 1
  store i32 %213, i32* %211, align 8
  %214 = zext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %209, i64 %214
  store i8 %206, i8* %215, align 1
  %216 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %217 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %216, i32 0, i32 56
  %218 = load i16, i16* %217, align 8
  %219 = zext i16 %218 to i32
  %220 = ashr i32 %219, 8
  %221 = trunc i32 %220 to i8
  %222 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %223 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %222, i32 0, i32 2
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %226 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 8
  %228 = add i32 %227, 1
  store i32 %228, i32* %226, align 8
  %229 = zext i32 %227 to i64
  %230 = getelementptr inbounds i8, i8* %224, i64 %229
  store i8 %221, i8* %230, align 1
  %231 = load i32, i32* %15, align 4
  %232 = trunc i32 %231 to i16
  %233 = zext i16 %232 to i32
  %234 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %235 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %234, i32 0, i32 57
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 16, %236
  %238 = ashr i32 %233, %237
  %239 = trunc i32 %238 to i16
  %240 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %241 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %240, i32 0, i32 56
  store i16 %239, i16* %241, align 8
  %242 = load i32, i32* %14, align 4
  %243 = sub nsw i32 %242, 16
  %244 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %245 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %244, i32 0, i32 57
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, %243
  store i32 %247, i32* %245, align 4
  br label %268

248:                                              ; preds = %178
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 4, %249
  %251 = trunc i32 %250 to i16
  %252 = zext i16 %251 to i32
  %253 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %254 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %253, i32 0, i32 57
  %255 = load i32, i32* %254, align 4
  %256 = shl i32 %252, %255
  %257 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %258 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %257, i32 0, i32 56
  %259 = load i16, i16* %258, align 8
  %260 = zext i16 %259 to i32
  %261 = or i32 %260, %256
  %262 = trunc i32 %261 to i16
  store i16 %262, i16* %258, align 8
  %263 = load i32, i32* %14, align 4
  %264 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %265 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %264, i32 0, i32 57
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %248, %185
  %269 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %270 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %271 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %270, i32 0, i32 40
  %272 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = add nsw i32 %273, 1
  %275 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %276 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %275, i32 0, i32 41
  %277 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = add nsw i32 %278, 1
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  call void @send_all_trees(%struct.internal_state* noundef %269, i32 noundef %274, i32 noundef %279, i32 noundef %281)
  %282 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %283 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %284 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %283, i32 0, i32 37
  %285 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %284, i64 0, i64 0
  %286 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %287 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %286, i32 0, i32 38
  %288 = getelementptr inbounds [61 x %struct.ct_data_s], [61 x %struct.ct_data_s]* %287, i64 0, i64 0
  call void @compress_block(%struct.internal_state* noundef %282, %struct.ct_data_s* noundef %285, %struct.ct_data_s* noundef %288)
  br label %289

289:                                              ; preds = %268, %176
  br label %290

290:                                              ; preds = %289, %72
  %291 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  call void @init_block(%struct.internal_state* noundef %291)
  %292 = load i32, i32* %8, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %290
  %295 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  call void @bi_windup(%struct.internal_state* noundef %295)
  br label %296

296:                                              ; preds = %294, %290
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @detect_data_type(%struct.internal_state* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.internal_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %3, align 8
  store i64 4093624447, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 31
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 1
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %15 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %14, i32 0, i32 37
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %15, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %18, i32 0, i32 0
  %20 = bitcast %union.anon* %19 to i16*
  %21 = load i16, i16* %20, align 4
  %22 = zext i16 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %80

25:                                               ; preds = %13, %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i64, i64* %4, align 8
  %30 = lshr i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %6, !llvm.loop !15

31:                                               ; preds = %6
  %32 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %33 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %32, i32 0, i32 37
  %34 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %33, i64 0, i64 9
  %35 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %34, i32 0, i32 0
  %36 = bitcast %union.anon* %35 to i16*
  %37 = load i16, i16* %36, align 4
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %31
  %41 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %42 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %41, i32 0, i32 37
  %43 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %42, i64 0, i64 10
  %44 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %43, i32 0, i32 0
  %45 = bitcast %union.anon* %44 to i16*
  %46 = load i16, i16* %45, align 4
  %47 = zext i16 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %40
  %50 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %51 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %50, i32 0, i32 37
  %52 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %51, i64 0, i64 13
  %53 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %52, i32 0, i32 0
  %54 = bitcast %union.anon* %53 to i16*
  %55 = load i16, i16* %54, align 4
  %56 = zext i16 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49, %40, %31
  store i32 1, i32* %2, align 4
  br label %80

59:                                               ; preds = %49
  store i32 32, i32* %5, align 4
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 256
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %65 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %64, i32 0, i32 37
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %65, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %68, i32 0, i32 0
  %70 = bitcast %union.anon* %69 to i16*
  %71 = load i16, i16* %70, align 4
  %72 = zext i16 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i32 1, i32* %2, align 4
  br label %80

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %60, !llvm.loop !16

79:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %74, %58, %24
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @build_tree(%struct.internal_state* noundef %0, %struct.tree_desc_s* noundef %1) #0 {
  %3 = alloca %struct.internal_state*, align 8
  %4 = alloca %struct.tree_desc_s*, align 8
  %5 = alloca %struct.ct_data_s*, align 8
  %6 = alloca %struct.ct_data_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %3, align 8
  store %struct.tree_desc_s* %1, %struct.tree_desc_s** %4, align 8
  %12 = load %struct.tree_desc_s*, %struct.tree_desc_s** %4, align 8
  %13 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %12, i32 0, i32 0
  %14 = load %struct.ct_data_s*, %struct.ct_data_s** %13, align 8
  store %struct.ct_data_s* %14, %struct.ct_data_s** %5, align 8
  %15 = load %struct.tree_desc_s*, %struct.tree_desc_s** %4, align 8
  %16 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %15, i32 0, i32 2
  %17 = load %struct.static_tree_desc_s*, %struct.static_tree_desc_s** %16, align 8
  %18 = getelementptr inbounds %struct.static_tree_desc_s, %struct.static_tree_desc_s* %17, i32 0, i32 0
  %19 = load %struct.ct_data_s*, %struct.ct_data_s** %18, align 8
  store %struct.ct_data_s* %19, %struct.ct_data_s** %6, align 8
  %20 = load %struct.tree_desc_s*, %struct.tree_desc_s** %4, align 8
  %21 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %20, i32 0, i32 2
  %22 = load %struct.static_tree_desc_s*, %struct.static_tree_desc_s** %21, align 8
  %23 = getelementptr inbounds %struct.static_tree_desc_s, %struct.static_tree_desc_s* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  %25 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %26 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %25, i32 0, i32 45
  store i32 0, i32* %26, align 4
  %27 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %28 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %27, i32 0, i32 46
  store i32 573, i32* %28, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %66, %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %29
  %34 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %34, i64 %36
  %38 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %37, i32 0, i32 0
  %39 = bitcast %union.anon* %38 to i16*
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %46 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %45, i32 0, i32 44
  %47 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %48 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %47, i32 0, i32 45
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [573 x i32], [573 x i32]* %46, i64 0, i64 %51
  store i32 %44, i32* %52, align 4
  %53 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %54 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %53, i32 0, i32 47
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [573 x i8], [573 x i8]* %54, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  br label %65

58:                                               ; preds = %33
  %59 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %59, i64 %61
  %63 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %62, i32 0, i32 1
  %64 = bitcast %union.anon.0* %63 to i16*
  store i16 0, i16* %64, align 2
  br label %65

65:                                               ; preds = %58, %43
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %29, !llvm.loop !17

69:                                               ; preds = %29
  br label %70

70:                                               ; preds = %122, %69
  %71 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %72 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %71, i32 0, i32 45
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %75, label %123

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %82

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 0, %81 ]
  %84 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %85 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %84, i32 0, i32 44
  %86 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %87 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %86, i32 0, i32 45
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [573 x i32], [573 x i32]* %85, i64 0, i64 %90
  store i32 %83, i32* %91, align 4
  store i32 %83, i32* %11, align 4
  %92 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %92, i64 %94
  %96 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %95, i32 0, i32 0
  %97 = bitcast %union.anon* %96 to i16*
  store i16 1, i16* %97, align 2
  %98 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %99 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %98, i32 0, i32 47
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [573 x i8], [573 x i8]* %99, i64 0, i64 %101
  store i8 0, i8* %102, align 1
  %103 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %104 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %103, i32 0, i32 52
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, -1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.ct_data_s*, %struct.ct_data_s** %6, align 8
  %108 = icmp ne %struct.ct_data_s* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %82
  %110 = load %struct.ct_data_s*, %struct.ct_data_s** %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %110, i64 %112
  %114 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %113, i32 0, i32 1
  %115 = bitcast %union.anon.0* %114 to i16*
  %116 = load i16, i16* %115, align 2
  %117 = zext i16 %116 to i64
  %118 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %119 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %118, i32 0, i32 53
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %109, %82
  br label %70, !llvm.loop !18

123:                                              ; preds = %70
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.tree_desc_s*, %struct.tree_desc_s** %4, align 8
  %126 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %128 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %127, i32 0, i32 45
  %129 = load i32, i32* %128, align 4
  %130 = sdiv i32 %129, 2
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %138, %123
  %132 = load i32, i32* %8, align 4
  %133 = icmp sge i32 %132, 1
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %136 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %137 = load i32, i32* %8, align 4
  call void @pqdownheap(%struct.internal_state* noundef %135, %struct.ct_data_s* noundef %136, i32 noundef %137)
  br label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %8, align 4
  br label %131, !llvm.loop !19

141:                                              ; preds = %131
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %269, %141
  %144 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %145 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %144, i32 0, i32 44
  %146 = getelementptr inbounds [573 x i32], [573 x i32]* %145, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %8, align 4
  %148 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %149 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %148, i32 0, i32 44
  %150 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %151 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %150, i32 0, i32 45
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %151, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds [573 x i32], [573 x i32]* %149, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %158 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %157, i32 0, i32 44
  %159 = getelementptr inbounds [573 x i32], [573 x i32]* %158, i64 0, i64 1
  store i32 %156, i32* %159, align 4
  %160 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %161 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  call void @pqdownheap(%struct.internal_state* noundef %160, %struct.ct_data_s* noundef %161, i32 noundef 1)
  %162 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %163 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %162, i32 0, i32 44
  %164 = getelementptr inbounds [573 x i32], [573 x i32]* %163, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %168 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %167, i32 0, i32 44
  %169 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %170 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %169, i32 0, i32 46
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %170, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [573 x i32], [573 x i32]* %168, i64 0, i64 %173
  store i32 %166, i32* %174, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %177 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %176, i32 0, i32 44
  %178 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %179 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %178, i32 0, i32 46
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %179, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [573 x i32], [573 x i32]* %177, i64 0, i64 %182
  store i32 %175, i32* %183, align 4
  %184 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %184, i64 %186
  %188 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %187, i32 0, i32 0
  %189 = bitcast %union.anon* %188 to i16*
  %190 = load i16, i16* %189, align 2
  %191 = zext i16 %190 to i32
  %192 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %192, i64 %194
  %196 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %195, i32 0, i32 0
  %197 = bitcast %union.anon* %196 to i16*
  %198 = load i16, i16* %197, align 2
  %199 = zext i16 %198 to i32
  %200 = add nsw i32 %191, %199
  %201 = trunc i32 %200 to i16
  %202 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %202, i64 %204
  %206 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %205, i32 0, i32 0
  %207 = bitcast %union.anon* %206 to i16*
  store i16 %201, i16* %207, align 2
  %208 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %209 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %208, i32 0, i32 47
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [573 x i8], [573 x i8]* %209, i64 0, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %216 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %215, i32 0, i32 47
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [573 x i8], [573 x i8]* %216, i64 0, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = icmp sge i32 %214, %221
  br i1 %222, label %223, label %231

223:                                              ; preds = %143
  %224 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %225 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %224, i32 0, i32 47
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [573 x i8], [573 x i8]* %225, i64 0, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  br label %239

231:                                              ; preds = %143
  %232 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %233 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %232, i32 0, i32 47
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [573 x i8], [573 x i8]* %233, i64 0, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  br label %239

239:                                              ; preds = %231, %223
  %240 = phi i32 [ %230, %223 ], [ %238, %231 ]
  %241 = add nsw i32 %240, 1
  %242 = trunc i32 %241 to i8
  %243 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %244 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %243, i32 0, i32 47
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [573 x i8], [573 x i8]* %244, i64 0, i64 %246
  store i8 %242, i8* %247, align 1
  %248 = load i32, i32* %11, align 4
  %249 = trunc i32 %248 to i16
  %250 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %250, i64 %252
  %254 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %253, i32 0, i32 1
  %255 = bitcast %union.anon.0* %254 to i16*
  store i16 %249, i16* %255, align 2
  %256 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %256, i64 %258
  %260 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %259, i32 0, i32 1
  %261 = bitcast %union.anon.0* %260 to i16*
  store i16 %249, i16* %261, align 2
  %262 = load i32, i32* %11, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %11, align 4
  %264 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %265 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %264, i32 0, i32 44
  %266 = getelementptr inbounds [573 x i32], [573 x i32]* %265, i64 0, i64 1
  store i32 %262, i32* %266, align 4
  %267 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %268 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  call void @pqdownheap(%struct.internal_state* noundef %267, %struct.ct_data_s* noundef %268, i32 noundef 1)
  br label %269

269:                                              ; preds = %239
  %270 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %271 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %270, i32 0, i32 45
  %272 = load i32, i32* %271, align 4
  %273 = icmp sge i32 %272, 2
  br i1 %273, label %143, label %274, !llvm.loop !20

274:                                              ; preds = %269
  %275 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %276 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %275, i32 0, i32 44
  %277 = getelementptr inbounds [573 x i32], [573 x i32]* %276, i64 0, i64 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %280 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %279, i32 0, i32 44
  %281 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %282 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %281, i32 0, i32 46
  %283 = load i32, i32* %282, align 8
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %282, align 8
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [573 x i32], [573 x i32]* %280, i64 0, i64 %285
  store i32 %278, i32* %286, align 4
  %287 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %288 = load %struct.tree_desc_s*, %struct.tree_desc_s** %4, align 8
  call void @gen_bitlen(%struct.internal_state* noundef %287, %struct.tree_desc_s* noundef %288)
  %289 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %290 = load i32, i32* %10, align 4
  %291 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %292 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %291, i32 0, i32 43
  %293 = getelementptr inbounds [16 x i16], [16 x i16]* %292, i64 0, i64 0
  call void @gen_codes(%struct.ct_data_s* noundef %289, i32 noundef %290, i16* noundef %293)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @build_bl_tree(%struct.internal_state* noundef %0) #0 {
  %2 = alloca %struct.internal_state*, align 8
  %3 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %2, align 8
  %4 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %5 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %6 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %5, i32 0, i32 37
  %7 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %6, i64 0, i64 0
  %8 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %9 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %8, i32 0, i32 40
  %10 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  call void @scan_tree(%struct.internal_state* noundef %4, %struct.ct_data_s* noundef %7, i32 noundef %11)
  %12 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %13 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %14 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %13, i32 0, i32 38
  %15 = getelementptr inbounds [61 x %struct.ct_data_s], [61 x %struct.ct_data_s]* %14, i64 0, i64 0
  %16 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %17 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %16, i32 0, i32 41
  %18 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  call void @scan_tree(%struct.internal_state* noundef %12, %struct.ct_data_s* noundef %15, i32 noundef %19)
  %20 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %21 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %22 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %21, i32 0, i32 42
  call void @build_tree(%struct.internal_state* noundef %20, %struct.tree_desc_s* noundef %22)
  store i32 18, i32* %3, align 4
  br label %23

23:                                               ; preds = %42, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %28 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %27, i32 0, i32 39
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x i8], [19 x i8]* @bl_order, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %28, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %34, i32 0, i32 1
  %36 = bitcast %union.anon.0* %35 to i16*
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %45

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %3, align 4
  br label %23, !llvm.loop !21

45:                                               ; preds = %40, %23
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  %48 = mul nsw i32 3, %47
  %49 = add nsw i32 %48, 5
  %50 = add nsw i32 %49, 5
  %51 = add nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %54 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %53, i32 0, i32 52
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @compress_block(%struct.internal_state* noundef %0, %struct.ct_data_s* noundef %1, %struct.ct_data_s* noundef %2) #0 {
  %4 = alloca %struct.internal_state*, align 8
  %5 = alloca %struct.ct_data_s*, align 8
  %6 = alloca %struct.ct_data_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %4, align 8
  store %struct.ct_data_s* %1, %struct.ct_data_s** %5, align 8
  store %struct.ct_data_s* %2, %struct.ct_data_s** %6, align 8
  store i32 0, i32* %9, align 4
  %24 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %25 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %24, i32 0, i32 50
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %620

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %613, %28
  %30 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %31 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %30, i32 0, i32 51
  %32 = load i16*, i16** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %39 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %38, i32 0, i32 48
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %158

49:                                               ; preds = %29
  %50 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %50, i64 %52
  %54 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %53, i32 0, i32 1
  %55 = bitcast %union.anon.0* %54 to i16*
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i32
  store i32 %57, i32* %12, align 4
  %58 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %59 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %58, i32 0, i32 57
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 16, %61
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %133

64:                                               ; preds = %49
  %65 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %65, i64 %67
  %69 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %68, i32 0, i32 0
  %70 = bitcast %union.anon* %69 to i16*
  %71 = load i16, i16* %70, align 2
  %72 = zext i16 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = trunc i32 %73 to i16
  %75 = zext i16 %74 to i32
  %76 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %77 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %76, i32 0, i32 57
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %75, %78
  %80 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %81 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %80, i32 0, i32 56
  %82 = load i16, i16* %81, align 8
  %83 = zext i16 %82 to i32
  %84 = or i32 %83, %79
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %81, align 8
  %86 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %87 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %86, i32 0, i32 56
  %88 = load i16, i16* %87, align 8
  %89 = zext i16 %88 to i32
  %90 = and i32 %89, 255
  %91 = trunc i32 %90 to i8
  %92 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %93 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %96 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = add i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %94, i64 %99
  store i8 %91, i8* %100, align 1
  %101 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %102 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %101, i32 0, i32 56
  %103 = load i16, i16* %102, align 8
  %104 = zext i16 %103 to i32
  %105 = ashr i32 %104, 8
  %106 = trunc i32 %105 to i8
  %107 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %108 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %111 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = add i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = zext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %109, i64 %114
  store i8 %106, i8* %115, align 1
  %116 = load i32, i32* %13, align 4
  %117 = trunc i32 %116 to i16
  %118 = zext i16 %117 to i32
  %119 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %120 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %119, i32 0, i32 57
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 16, %121
  %123 = ashr i32 %118, %122
  %124 = trunc i32 %123 to i16
  %125 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %126 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %125, i32 0, i32 56
  store i16 %124, i16* %126, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 %127, 16
  %129 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %130 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %129, i32 0, i32 57
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %157

133:                                              ; preds = %49
  %134 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %134, i64 %136
  %138 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %137, i32 0, i32 0
  %139 = bitcast %union.anon* %138 to i16*
  %140 = load i16, i16* %139, align 2
  %141 = zext i16 %140 to i32
  %142 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %143 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %142, i32 0, i32 57
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %141, %144
  %146 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %147 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %146, i32 0, i32 56
  %148 = load i16, i16* %147, align 8
  %149 = zext i16 %148 to i32
  %150 = or i32 %149, %145
  %151 = trunc i32 %150 to i16
  store i16 %151, i16* %147, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %154 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %153, i32 0, i32 57
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %133, %64
  br label %612

158:                                              ; preds = %29
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [256 x i8], [256 x i8]* @_length_code, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  store i32 %163, i32* %10, align 4
  %164 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %165 = load i32, i32* %10, align 4
  %166 = add i32 %165, 256
  %167 = add i32 %166, 1
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %164, i64 %168
  %170 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %169, i32 0, i32 1
  %171 = bitcast %union.anon.0* %170 to i16*
  %172 = load i16, i16* %171, align 2
  %173 = zext i16 %172 to i32
  store i32 %173, i32* %14, align 4
  %174 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %175 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %174, i32 0, i32 57
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %14, align 4
  %178 = sub nsw i32 16, %177
  %179 = icmp sgt i32 %176, %178
  br i1 %179, label %180, label %251

180:                                              ; preds = %158
  %181 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %182 = load i32, i32* %10, align 4
  %183 = add i32 %182, 256
  %184 = add i32 %183, 1
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %181, i64 %185
  %187 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %186, i32 0, i32 0
  %188 = bitcast %union.anon* %187 to i16*
  %189 = load i16, i16* %188, align 2
  %190 = zext i16 %189 to i32
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %15, align 4
  %192 = trunc i32 %191 to i16
  %193 = zext i16 %192 to i32
  %194 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %195 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %194, i32 0, i32 57
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %193, %196
  %198 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %199 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %198, i32 0, i32 56
  %200 = load i16, i16* %199, align 8
  %201 = zext i16 %200 to i32
  %202 = or i32 %201, %197
  %203 = trunc i32 %202 to i16
  store i16 %203, i16* %199, align 8
  %204 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %205 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %204, i32 0, i32 56
  %206 = load i16, i16* %205, align 8
  %207 = zext i16 %206 to i32
  %208 = and i32 %207, 255
  %209 = trunc i32 %208 to i8
  %210 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %211 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %210, i32 0, i32 2
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %214 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = add i32 %215, 1
  store i32 %216, i32* %214, align 8
  %217 = zext i32 %215 to i64
  %218 = getelementptr inbounds i8, i8* %212, i64 %217
  store i8 %209, i8* %218, align 1
  %219 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %220 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %219, i32 0, i32 56
  %221 = load i16, i16* %220, align 8
  %222 = zext i16 %221 to i32
  %223 = ashr i32 %222, 8
  %224 = trunc i32 %223 to i8
  %225 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %226 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %225, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %229 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = add i32 %230, 1
  store i32 %231, i32* %229, align 8
  %232 = zext i32 %230 to i64
  %233 = getelementptr inbounds i8, i8* %227, i64 %232
  store i8 %224, i8* %233, align 1
  %234 = load i32, i32* %15, align 4
  %235 = trunc i32 %234 to i16
  %236 = zext i16 %235 to i32
  %237 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %238 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %237, i32 0, i32 57
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 16, %239
  %241 = ashr i32 %236, %240
  %242 = trunc i32 %241 to i16
  %243 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %244 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %243, i32 0, i32 56
  store i16 %242, i16* %244, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sub nsw i32 %245, 16
  %247 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %248 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %247, i32 0, i32 57
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, %246
  store i32 %250, i32* %248, align 4
  br label %277

251:                                              ; preds = %158
  %252 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %253 = load i32, i32* %10, align 4
  %254 = add i32 %253, 256
  %255 = add i32 %254, 1
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %252, i64 %256
  %258 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %257, i32 0, i32 0
  %259 = bitcast %union.anon* %258 to i16*
  %260 = load i16, i16* %259, align 2
  %261 = zext i16 %260 to i32
  %262 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %263 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %262, i32 0, i32 57
  %264 = load i32, i32* %263, align 4
  %265 = shl i32 %261, %264
  %266 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %267 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %266, i32 0, i32 56
  %268 = load i16, i16* %267, align 8
  %269 = zext i16 %268 to i32
  %270 = or i32 %269, %265
  %271 = trunc i32 %270 to i16
  store i16 %271, i16* %267, align 8
  %272 = load i32, i32* %14, align 4
  %273 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %274 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %273, i32 0, i32 57
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, %272
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %251, %180
  %278 = load i32, i32* %10, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds [29 x i32], [29 x i32]* @extra_lbits, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %11, align 4
  %282 = load i32, i32* %11, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %380

284:                                              ; preds = %277
  %285 = load i32, i32* %10, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [29 x i32], [29 x i32]* @base_length, i64 0, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %8, align 4
  %290 = sub nsw i32 %289, %288
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %11, align 4
  store i32 %291, i32* %16, align 4
  %292 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %293 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %292, i32 0, i32 57
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %16, align 4
  %296 = sub nsw i32 16, %295
  %297 = icmp sgt i32 %294, %296
  br i1 %297, label %298, label %360

298:                                              ; preds = %284
  %299 = load i32, i32* %8, align 4
  store i32 %299, i32* %17, align 4
  %300 = load i32, i32* %17, align 4
  %301 = trunc i32 %300 to i16
  %302 = zext i16 %301 to i32
  %303 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %304 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %303, i32 0, i32 57
  %305 = load i32, i32* %304, align 4
  %306 = shl i32 %302, %305
  %307 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %308 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %307, i32 0, i32 56
  %309 = load i16, i16* %308, align 8
  %310 = zext i16 %309 to i32
  %311 = or i32 %310, %306
  %312 = trunc i32 %311 to i16
  store i16 %312, i16* %308, align 8
  %313 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %314 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %313, i32 0, i32 56
  %315 = load i16, i16* %314, align 8
  %316 = zext i16 %315 to i32
  %317 = and i32 %316, 255
  %318 = trunc i32 %317 to i8
  %319 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %320 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %319, i32 0, i32 2
  %321 = load i8*, i8** %320, align 8
  %322 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %323 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 8
  %325 = add i32 %324, 1
  store i32 %325, i32* %323, align 8
  %326 = zext i32 %324 to i64
  %327 = getelementptr inbounds i8, i8* %321, i64 %326
  store i8 %318, i8* %327, align 1
  %328 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %329 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %328, i32 0, i32 56
  %330 = load i16, i16* %329, align 8
  %331 = zext i16 %330 to i32
  %332 = ashr i32 %331, 8
  %333 = trunc i32 %332 to i8
  %334 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %335 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %334, i32 0, i32 2
  %336 = load i8*, i8** %335, align 8
  %337 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %338 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 8
  %340 = add i32 %339, 1
  store i32 %340, i32* %338, align 8
  %341 = zext i32 %339 to i64
  %342 = getelementptr inbounds i8, i8* %336, i64 %341
  store i8 %333, i8* %342, align 1
  %343 = load i32, i32* %17, align 4
  %344 = trunc i32 %343 to i16
  %345 = zext i16 %344 to i32
  %346 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %347 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %346, i32 0, i32 57
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 16, %348
  %350 = ashr i32 %345, %349
  %351 = trunc i32 %350 to i16
  %352 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %353 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %352, i32 0, i32 56
  store i16 %351, i16* %353, align 8
  %354 = load i32, i32* %16, align 4
  %355 = sub nsw i32 %354, 16
  %356 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %357 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %356, i32 0, i32 57
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %358, %355
  store i32 %359, i32* %357, align 4
  br label %379

360:                                              ; preds = %284
  %361 = load i32, i32* %8, align 4
  %362 = trunc i32 %361 to i16
  %363 = zext i16 %362 to i32
  %364 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %365 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %364, i32 0, i32 57
  %366 = load i32, i32* %365, align 4
  %367 = shl i32 %363, %366
  %368 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %369 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %368, i32 0, i32 56
  %370 = load i16, i16* %369, align 8
  %371 = zext i16 %370 to i32
  %372 = or i32 %371, %367
  %373 = trunc i32 %372 to i16
  store i16 %373, i16* %369, align 8
  %374 = load i32, i32* %16, align 4
  %375 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %376 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %375, i32 0, i32 57
  %377 = load i32, i32* %376, align 4
  %378 = add nsw i32 %377, %374
  store i32 %378, i32* %376, align 4
  br label %379

379:                                              ; preds = %360, %298
  br label %380

380:                                              ; preds = %379, %277
  %381 = load i32, i32* %7, align 4
  %382 = add i32 %381, -1
  store i32 %382, i32* %7, align 4
  %383 = load i32, i32* %7, align 4
  %384 = icmp ult i32 %383, 256
  br i1 %384, label %385, label %391

385:                                              ; preds = %380
  %386 = load i32, i32* %7, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds [512 x i8], [512 x i8]* @_dist_code, i64 0, i64 %387
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i32
  br label %399

391:                                              ; preds = %380
  %392 = load i32, i32* %7, align 4
  %393 = lshr i32 %392, 7
  %394 = add i32 256, %393
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds [512 x i8], [512 x i8]* @_dist_code, i64 0, i64 %395
  %397 = load i8, i8* %396, align 1
  %398 = zext i8 %397 to i32
  br label %399

399:                                              ; preds = %391, %385
  %400 = phi i32 [ %390, %385 ], [ %398, %391 ]
  store i32 %400, i32* %10, align 4
  %401 = load %struct.ct_data_s*, %struct.ct_data_s** %6, align 8
  %402 = load i32, i32* %10, align 4
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %401, i64 %403
  %405 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %404, i32 0, i32 1
  %406 = bitcast %union.anon.0* %405 to i16*
  %407 = load i16, i16* %406, align 2
  %408 = zext i16 %407 to i32
  store i32 %408, i32* %18, align 4
  %409 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %410 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %409, i32 0, i32 57
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* %18, align 4
  %413 = sub nsw i32 16, %412
  %414 = icmp sgt i32 %411, %413
  br i1 %414, label %415, label %484

415:                                              ; preds = %399
  %416 = load %struct.ct_data_s*, %struct.ct_data_s** %6, align 8
  %417 = load i32, i32* %10, align 4
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %416, i64 %418
  %420 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %419, i32 0, i32 0
  %421 = bitcast %union.anon* %420 to i16*
  %422 = load i16, i16* %421, align 2
  %423 = zext i16 %422 to i32
  store i32 %423, i32* %19, align 4
  %424 = load i32, i32* %19, align 4
  %425 = trunc i32 %424 to i16
  %426 = zext i16 %425 to i32
  %427 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %428 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %427, i32 0, i32 57
  %429 = load i32, i32* %428, align 4
  %430 = shl i32 %426, %429
  %431 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %432 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %431, i32 0, i32 56
  %433 = load i16, i16* %432, align 8
  %434 = zext i16 %433 to i32
  %435 = or i32 %434, %430
  %436 = trunc i32 %435 to i16
  store i16 %436, i16* %432, align 8
  %437 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %438 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %437, i32 0, i32 56
  %439 = load i16, i16* %438, align 8
  %440 = zext i16 %439 to i32
  %441 = and i32 %440, 255
  %442 = trunc i32 %441 to i8
  %443 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %444 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %443, i32 0, i32 2
  %445 = load i8*, i8** %444, align 8
  %446 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %447 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %446, i32 0, i32 5
  %448 = load i32, i32* %447, align 8
  %449 = add i32 %448, 1
  store i32 %449, i32* %447, align 8
  %450 = zext i32 %448 to i64
  %451 = getelementptr inbounds i8, i8* %445, i64 %450
  store i8 %442, i8* %451, align 1
  %452 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %453 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %452, i32 0, i32 56
  %454 = load i16, i16* %453, align 8
  %455 = zext i16 %454 to i32
  %456 = ashr i32 %455, 8
  %457 = trunc i32 %456 to i8
  %458 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %459 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %458, i32 0, i32 2
  %460 = load i8*, i8** %459, align 8
  %461 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %462 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %461, i32 0, i32 5
  %463 = load i32, i32* %462, align 8
  %464 = add i32 %463, 1
  store i32 %464, i32* %462, align 8
  %465 = zext i32 %463 to i64
  %466 = getelementptr inbounds i8, i8* %460, i64 %465
  store i8 %457, i8* %466, align 1
  %467 = load i32, i32* %19, align 4
  %468 = trunc i32 %467 to i16
  %469 = zext i16 %468 to i32
  %470 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %471 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %470, i32 0, i32 57
  %472 = load i32, i32* %471, align 4
  %473 = sub nsw i32 16, %472
  %474 = ashr i32 %469, %473
  %475 = trunc i32 %474 to i16
  %476 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %477 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %476, i32 0, i32 56
  store i16 %475, i16* %477, align 8
  %478 = load i32, i32* %18, align 4
  %479 = sub nsw i32 %478, 16
  %480 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %481 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %480, i32 0, i32 57
  %482 = load i32, i32* %481, align 4
  %483 = add nsw i32 %482, %479
  store i32 %483, i32* %481, align 4
  br label %508

484:                                              ; preds = %399
  %485 = load %struct.ct_data_s*, %struct.ct_data_s** %6, align 8
  %486 = load i32, i32* %10, align 4
  %487 = zext i32 %486 to i64
  %488 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %485, i64 %487
  %489 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %488, i32 0, i32 0
  %490 = bitcast %union.anon* %489 to i16*
  %491 = load i16, i16* %490, align 2
  %492 = zext i16 %491 to i32
  %493 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %494 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %493, i32 0, i32 57
  %495 = load i32, i32* %494, align 4
  %496 = shl i32 %492, %495
  %497 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %498 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %497, i32 0, i32 56
  %499 = load i16, i16* %498, align 8
  %500 = zext i16 %499 to i32
  %501 = or i32 %500, %496
  %502 = trunc i32 %501 to i16
  store i16 %502, i16* %498, align 8
  %503 = load i32, i32* %18, align 4
  %504 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %505 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %504, i32 0, i32 57
  %506 = load i32, i32* %505, align 4
  %507 = add nsw i32 %506, %503
  store i32 %507, i32* %505, align 4
  br label %508

508:                                              ; preds = %484, %415
  %509 = load i32, i32* %10, align 4
  %510 = zext i32 %509 to i64
  %511 = getelementptr inbounds [30 x i32], [30 x i32]* @extra_dbits, i64 0, i64 %510
  %512 = load i32, i32* %511, align 4
  store i32 %512, i32* %11, align 4
  %513 = load i32, i32* %11, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %611

515:                                              ; preds = %508
  %516 = load i32, i32* %10, align 4
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds [30 x i32], [30 x i32]* @base_dist, i64 0, i64 %517
  %519 = load i32, i32* %518, align 4
  %520 = load i32, i32* %7, align 4
  %521 = sub i32 %520, %519
  store i32 %521, i32* %7, align 4
  %522 = load i32, i32* %11, align 4
  store i32 %522, i32* %20, align 4
  %523 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %524 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %523, i32 0, i32 57
  %525 = load i32, i32* %524, align 4
  %526 = load i32, i32* %20, align 4
  %527 = sub nsw i32 16, %526
  %528 = icmp sgt i32 %525, %527
  br i1 %528, label %529, label %591

529:                                              ; preds = %515
  %530 = load i32, i32* %7, align 4
  store i32 %530, i32* %21, align 4
  %531 = load i32, i32* %21, align 4
  %532 = trunc i32 %531 to i16
  %533 = zext i16 %532 to i32
  %534 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %535 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %534, i32 0, i32 57
  %536 = load i32, i32* %535, align 4
  %537 = shl i32 %533, %536
  %538 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %539 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %538, i32 0, i32 56
  %540 = load i16, i16* %539, align 8
  %541 = zext i16 %540 to i32
  %542 = or i32 %541, %537
  %543 = trunc i32 %542 to i16
  store i16 %543, i16* %539, align 8
  %544 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %545 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %544, i32 0, i32 56
  %546 = load i16, i16* %545, align 8
  %547 = zext i16 %546 to i32
  %548 = and i32 %547, 255
  %549 = trunc i32 %548 to i8
  %550 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %551 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %550, i32 0, i32 2
  %552 = load i8*, i8** %551, align 8
  %553 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %554 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %553, i32 0, i32 5
  %555 = load i32, i32* %554, align 8
  %556 = add i32 %555, 1
  store i32 %556, i32* %554, align 8
  %557 = zext i32 %555 to i64
  %558 = getelementptr inbounds i8, i8* %552, i64 %557
  store i8 %549, i8* %558, align 1
  %559 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %560 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %559, i32 0, i32 56
  %561 = load i16, i16* %560, align 8
  %562 = zext i16 %561 to i32
  %563 = ashr i32 %562, 8
  %564 = trunc i32 %563 to i8
  %565 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %566 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %565, i32 0, i32 2
  %567 = load i8*, i8** %566, align 8
  %568 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %569 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %568, i32 0, i32 5
  %570 = load i32, i32* %569, align 8
  %571 = add i32 %570, 1
  store i32 %571, i32* %569, align 8
  %572 = zext i32 %570 to i64
  %573 = getelementptr inbounds i8, i8* %567, i64 %572
  store i8 %564, i8* %573, align 1
  %574 = load i32, i32* %21, align 4
  %575 = trunc i32 %574 to i16
  %576 = zext i16 %575 to i32
  %577 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %578 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %577, i32 0, i32 57
  %579 = load i32, i32* %578, align 4
  %580 = sub nsw i32 16, %579
  %581 = ashr i32 %576, %580
  %582 = trunc i32 %581 to i16
  %583 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %584 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %583, i32 0, i32 56
  store i16 %582, i16* %584, align 8
  %585 = load i32, i32* %20, align 4
  %586 = sub nsw i32 %585, 16
  %587 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %588 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %587, i32 0, i32 57
  %589 = load i32, i32* %588, align 4
  %590 = add nsw i32 %589, %586
  store i32 %590, i32* %588, align 4
  br label %610

591:                                              ; preds = %515
  %592 = load i32, i32* %7, align 4
  %593 = trunc i32 %592 to i16
  %594 = zext i16 %593 to i32
  %595 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %596 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %595, i32 0, i32 57
  %597 = load i32, i32* %596, align 4
  %598 = shl i32 %594, %597
  %599 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %600 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %599, i32 0, i32 56
  %601 = load i16, i16* %600, align 8
  %602 = zext i16 %601 to i32
  %603 = or i32 %602, %598
  %604 = trunc i32 %603 to i16
  store i16 %604, i16* %600, align 8
  %605 = load i32, i32* %20, align 4
  %606 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %607 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %606, i32 0, i32 57
  %608 = load i32, i32* %607, align 4
  %609 = add nsw i32 %608, %605
  store i32 %609, i32* %607, align 4
  br label %610

610:                                              ; preds = %591, %529
  br label %611

611:                                              ; preds = %610, %508
  br label %612

612:                                              ; preds = %611, %157
  br label %613

613:                                              ; preds = %612
  %614 = load i32, i32* %9, align 4
  %615 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %616 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %615, i32 0, i32 50
  %617 = load i32, i32* %616, align 4
  %618 = icmp ult i32 %614, %617
  br i1 %618, label %29, label %619, !llvm.loop !22

619:                                              ; preds = %613
  br label %620

620:                                              ; preds = %619, %3
  %621 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %622 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %621, i64 256
  %623 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %622, i32 0, i32 1
  %624 = bitcast %union.anon.0* %623 to i16*
  %625 = load i16, i16* %624, align 2
  %626 = zext i16 %625 to i32
  store i32 %626, i32* %22, align 4
  %627 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %628 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %627, i32 0, i32 57
  %629 = load i32, i32* %628, align 4
  %630 = load i32, i32* %22, align 4
  %631 = sub nsw i32 16, %630
  %632 = icmp sgt i32 %629, %631
  br i1 %632, label %633, label %700

633:                                              ; preds = %620
  %634 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %635 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %634, i64 256
  %636 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %635, i32 0, i32 0
  %637 = bitcast %union.anon* %636 to i16*
  %638 = load i16, i16* %637, align 2
  %639 = zext i16 %638 to i32
  store i32 %639, i32* %23, align 4
  %640 = load i32, i32* %23, align 4
  %641 = trunc i32 %640 to i16
  %642 = zext i16 %641 to i32
  %643 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %644 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %643, i32 0, i32 57
  %645 = load i32, i32* %644, align 4
  %646 = shl i32 %642, %645
  %647 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %648 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %647, i32 0, i32 56
  %649 = load i16, i16* %648, align 8
  %650 = zext i16 %649 to i32
  %651 = or i32 %650, %646
  %652 = trunc i32 %651 to i16
  store i16 %652, i16* %648, align 8
  %653 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %654 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %653, i32 0, i32 56
  %655 = load i16, i16* %654, align 8
  %656 = zext i16 %655 to i32
  %657 = and i32 %656, 255
  %658 = trunc i32 %657 to i8
  %659 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %660 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %659, i32 0, i32 2
  %661 = load i8*, i8** %660, align 8
  %662 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %663 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %662, i32 0, i32 5
  %664 = load i32, i32* %663, align 8
  %665 = add i32 %664, 1
  store i32 %665, i32* %663, align 8
  %666 = zext i32 %664 to i64
  %667 = getelementptr inbounds i8, i8* %661, i64 %666
  store i8 %658, i8* %667, align 1
  %668 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %669 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %668, i32 0, i32 56
  %670 = load i16, i16* %669, align 8
  %671 = zext i16 %670 to i32
  %672 = ashr i32 %671, 8
  %673 = trunc i32 %672 to i8
  %674 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %675 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %674, i32 0, i32 2
  %676 = load i8*, i8** %675, align 8
  %677 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %678 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %677, i32 0, i32 5
  %679 = load i32, i32* %678, align 8
  %680 = add i32 %679, 1
  store i32 %680, i32* %678, align 8
  %681 = zext i32 %679 to i64
  %682 = getelementptr inbounds i8, i8* %676, i64 %681
  store i8 %673, i8* %682, align 1
  %683 = load i32, i32* %23, align 4
  %684 = trunc i32 %683 to i16
  %685 = zext i16 %684 to i32
  %686 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %687 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %686, i32 0, i32 57
  %688 = load i32, i32* %687, align 4
  %689 = sub nsw i32 16, %688
  %690 = ashr i32 %685, %689
  %691 = trunc i32 %690 to i16
  %692 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %693 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %692, i32 0, i32 56
  store i16 %691, i16* %693, align 8
  %694 = load i32, i32* %22, align 4
  %695 = sub nsw i32 %694, 16
  %696 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %697 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %696, i32 0, i32 57
  %698 = load i32, i32* %697, align 4
  %699 = add nsw i32 %698, %695
  store i32 %699, i32* %697, align 4
  br label %722

700:                                              ; preds = %620
  %701 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %702 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %701, i64 256
  %703 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %702, i32 0, i32 0
  %704 = bitcast %union.anon* %703 to i16*
  %705 = load i16, i16* %704, align 2
  %706 = zext i16 %705 to i32
  %707 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %708 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %707, i32 0, i32 57
  %709 = load i32, i32* %708, align 4
  %710 = shl i32 %706, %709
  %711 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %712 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %711, i32 0, i32 56
  %713 = load i16, i16* %712, align 8
  %714 = zext i16 %713 to i32
  %715 = or i32 %714, %710
  %716 = trunc i32 %715 to i16
  store i16 %716, i16* %712, align 8
  %717 = load i32, i32* %22, align 4
  %718 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %719 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %718, i32 0, i32 57
  %720 = load i32, i32* %719, align 4
  %721 = add nsw i32 %720, %717
  store i32 %721, i32* %719, align 4
  br label %722

722:                                              ; preds = %700, %633
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @send_all_trees(%struct.internal_state* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.internal_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 5, i32* %10, align 4
  %18 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %19 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %18, i32 0, i32 57
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 16, %21
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %87

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 257
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = trunc i32 %27 to i16
  %29 = zext i16 %28 to i32
  %30 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %31 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %30, i32 0, i32 57
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %29, %32
  %34 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %35 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %34, i32 0, i32 56
  %36 = load i16, i16* %35, align 8
  %37 = zext i16 %36 to i32
  %38 = or i32 %37, %33
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %35, align 8
  %40 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %41 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %40, i32 0, i32 56
  %42 = load i16, i16* %41, align 8
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %47 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %50 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = add i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %48, i64 %53
  store i8 %45, i8* %54, align 1
  %55 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %56 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %55, i32 0, i32 56
  %57 = load i16, i16* %56, align 8
  %58 = zext i16 %57 to i32
  %59 = ashr i32 %58, 8
  %60 = trunc i32 %59 to i8
  %61 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %62 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %65 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = add i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  store i8 %60, i8* %69, align 1
  %70 = load i32, i32* %11, align 4
  %71 = trunc i32 %70 to i16
  %72 = zext i16 %71 to i32
  %73 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %74 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %73, i32 0, i32 57
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 16, %75
  %77 = ashr i32 %72, %76
  %78 = trunc i32 %77 to i16
  %79 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %80 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %79, i32 0, i32 56
  store i16 %78, i16* %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %81, 16
  %83 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %84 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %83, i32 0, i32 57
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %107

87:                                               ; preds = %4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 257
  %90 = trunc i32 %89 to i16
  %91 = zext i16 %90 to i32
  %92 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %93 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %92, i32 0, i32 57
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %91, %94
  %96 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %97 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %96, i32 0, i32 56
  %98 = load i16, i16* %97, align 8
  %99 = zext i16 %98 to i32
  %100 = or i32 %99, %95
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %97, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %104 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %103, i32 0, i32 57
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %87, %24
  store i32 5, i32* %12, align 4
  %108 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %109 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %108, i32 0, i32 57
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 16, %111
  %113 = icmp sgt i32 %110, %112
  br i1 %113, label %114, label %177

114:                                              ; preds = %107
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = trunc i32 %117 to i16
  %119 = zext i16 %118 to i32
  %120 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %121 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %120, i32 0, i32 57
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %119, %122
  %124 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %125 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %124, i32 0, i32 56
  %126 = load i16, i16* %125, align 8
  %127 = zext i16 %126 to i32
  %128 = or i32 %127, %123
  %129 = trunc i32 %128 to i16
  store i16 %129, i16* %125, align 8
  %130 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %131 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %130, i32 0, i32 56
  %132 = load i16, i16* %131, align 8
  %133 = zext i16 %132 to i32
  %134 = and i32 %133, 255
  %135 = trunc i32 %134 to i8
  %136 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %137 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %140 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = add i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = zext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %138, i64 %143
  store i8 %135, i8* %144, align 1
  %145 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %146 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %145, i32 0, i32 56
  %147 = load i16, i16* %146, align 8
  %148 = zext i16 %147 to i32
  %149 = ashr i32 %148, 8
  %150 = trunc i32 %149 to i8
  %151 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %152 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %155 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = add i32 %156, 1
  store i32 %157, i32* %155, align 8
  %158 = zext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %153, i64 %158
  store i8 %150, i8* %159, align 1
  %160 = load i32, i32* %13, align 4
  %161 = trunc i32 %160 to i16
  %162 = zext i16 %161 to i32
  %163 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %164 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %163, i32 0, i32 57
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 16, %165
  %167 = ashr i32 %162, %166
  %168 = trunc i32 %167 to i16
  %169 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %170 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %169, i32 0, i32 56
  store i16 %168, i16* %170, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sub nsw i32 %171, 16
  %173 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %174 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %173, i32 0, i32 57
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %197

177:                                              ; preds = %107
  %178 = load i32, i32* %7, align 4
  %179 = sub nsw i32 %178, 1
  %180 = trunc i32 %179 to i16
  %181 = zext i16 %180 to i32
  %182 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %183 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %182, i32 0, i32 57
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %181, %184
  %186 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %187 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %186, i32 0, i32 56
  %188 = load i16, i16* %187, align 8
  %189 = zext i16 %188 to i32
  %190 = or i32 %189, %185
  %191 = trunc i32 %190 to i16
  store i16 %191, i16* %187, align 8
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %194 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %193, i32 0, i32 57
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, %192
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %177, %114
  store i32 4, i32* %14, align 4
  %198 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %199 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %198, i32 0, i32 57
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %14, align 4
  %202 = sub nsw i32 16, %201
  %203 = icmp sgt i32 %200, %202
  br i1 %203, label %204, label %267

204:                                              ; preds = %197
  %205 = load i32, i32* %8, align 4
  %206 = sub nsw i32 %205, 4
  store i32 %206, i32* %15, align 4
  %207 = load i32, i32* %15, align 4
  %208 = trunc i32 %207 to i16
  %209 = zext i16 %208 to i32
  %210 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %211 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %210, i32 0, i32 57
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 %209, %212
  %214 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %215 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %214, i32 0, i32 56
  %216 = load i16, i16* %215, align 8
  %217 = zext i16 %216 to i32
  %218 = or i32 %217, %213
  %219 = trunc i32 %218 to i16
  store i16 %219, i16* %215, align 8
  %220 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %221 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %220, i32 0, i32 56
  %222 = load i16, i16* %221, align 8
  %223 = zext i16 %222 to i32
  %224 = and i32 %223, 255
  %225 = trunc i32 %224 to i8
  %226 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %227 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %226, i32 0, i32 2
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %230 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = add i32 %231, 1
  store i32 %232, i32* %230, align 8
  %233 = zext i32 %231 to i64
  %234 = getelementptr inbounds i8, i8* %228, i64 %233
  store i8 %225, i8* %234, align 1
  %235 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %236 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %235, i32 0, i32 56
  %237 = load i16, i16* %236, align 8
  %238 = zext i16 %237 to i32
  %239 = ashr i32 %238, 8
  %240 = trunc i32 %239 to i8
  %241 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %242 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %241, i32 0, i32 2
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %245 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = add i32 %246, 1
  store i32 %247, i32* %245, align 8
  %248 = zext i32 %246 to i64
  %249 = getelementptr inbounds i8, i8* %243, i64 %248
  store i8 %240, i8* %249, align 1
  %250 = load i32, i32* %15, align 4
  %251 = trunc i32 %250 to i16
  %252 = zext i16 %251 to i32
  %253 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %254 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %253, i32 0, i32 57
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 16, %255
  %257 = ashr i32 %252, %256
  %258 = trunc i32 %257 to i16
  %259 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %260 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %259, i32 0, i32 56
  store i16 %258, i16* %260, align 8
  %261 = load i32, i32* %14, align 4
  %262 = sub nsw i32 %261, 16
  %263 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %264 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %263, i32 0, i32 57
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, %262
  store i32 %266, i32* %264, align 4
  br label %287

267:                                              ; preds = %197
  %268 = load i32, i32* %8, align 4
  %269 = sub nsw i32 %268, 4
  %270 = trunc i32 %269 to i16
  %271 = zext i16 %270 to i32
  %272 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %273 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %272, i32 0, i32 57
  %274 = load i32, i32* %273, align 4
  %275 = shl i32 %271, %274
  %276 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %277 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %276, i32 0, i32 56
  %278 = load i16, i16* %277, align 8
  %279 = zext i16 %278 to i32
  %280 = or i32 %279, %275
  %281 = trunc i32 %280 to i16
  store i16 %281, i16* %277, align 8
  %282 = load i32, i32* %14, align 4
  %283 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %284 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %283, i32 0, i32 57
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, %282
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %267, %204
  store i32 0, i32* %9, align 4
  br label %288

288:                                              ; preds = %401, %287
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* %8, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %404

292:                                              ; preds = %288
  store i32 3, i32* %16, align 4
  %293 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %294 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %293, i32 0, i32 57
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %16, align 4
  %297 = sub nsw i32 16, %296
  %298 = icmp sgt i32 %295, %297
  br i1 %298, label %299, label %372

299:                                              ; preds = %292
  %300 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %301 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %300, i32 0, i32 39
  %302 = load i32, i32* %9, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [19 x i8], [19 x i8]* @bl_order, i64 0, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i64
  %307 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %301, i64 0, i64 %306
  %308 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %307, i32 0, i32 1
  %309 = bitcast %union.anon.0* %308 to i16*
  %310 = load i16, i16* %309, align 2
  %311 = zext i16 %310 to i32
  store i32 %311, i32* %17, align 4
  %312 = load i32, i32* %17, align 4
  %313 = trunc i32 %312 to i16
  %314 = zext i16 %313 to i32
  %315 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %316 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %315, i32 0, i32 57
  %317 = load i32, i32* %316, align 4
  %318 = shl i32 %314, %317
  %319 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %320 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %319, i32 0, i32 56
  %321 = load i16, i16* %320, align 8
  %322 = zext i16 %321 to i32
  %323 = or i32 %322, %318
  %324 = trunc i32 %323 to i16
  store i16 %324, i16* %320, align 8
  %325 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %326 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %325, i32 0, i32 56
  %327 = load i16, i16* %326, align 8
  %328 = zext i16 %327 to i32
  %329 = and i32 %328, 255
  %330 = trunc i32 %329 to i8
  %331 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %332 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %331, i32 0, i32 2
  %333 = load i8*, i8** %332, align 8
  %334 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %335 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 8
  %337 = add i32 %336, 1
  store i32 %337, i32* %335, align 8
  %338 = zext i32 %336 to i64
  %339 = getelementptr inbounds i8, i8* %333, i64 %338
  store i8 %330, i8* %339, align 1
  %340 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %341 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %340, i32 0, i32 56
  %342 = load i16, i16* %341, align 8
  %343 = zext i16 %342 to i32
  %344 = ashr i32 %343, 8
  %345 = trunc i32 %344 to i8
  %346 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %347 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %346, i32 0, i32 2
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %350 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 8
  %352 = add i32 %351, 1
  store i32 %352, i32* %350, align 8
  %353 = zext i32 %351 to i64
  %354 = getelementptr inbounds i8, i8* %348, i64 %353
  store i8 %345, i8* %354, align 1
  %355 = load i32, i32* %17, align 4
  %356 = trunc i32 %355 to i16
  %357 = zext i16 %356 to i32
  %358 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %359 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %358, i32 0, i32 57
  %360 = load i32, i32* %359, align 4
  %361 = sub nsw i32 16, %360
  %362 = ashr i32 %357, %361
  %363 = trunc i32 %362 to i16
  %364 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %365 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %364, i32 0, i32 56
  store i16 %363, i16* %365, align 8
  %366 = load i32, i32* %16, align 4
  %367 = sub nsw i32 %366, 16
  %368 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %369 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %368, i32 0, i32 57
  %370 = load i32, i32* %369, align 4
  %371 = add nsw i32 %370, %367
  store i32 %371, i32* %369, align 4
  br label %400

372:                                              ; preds = %292
  %373 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %374 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %373, i32 0, i32 39
  %375 = load i32, i32* %9, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [19 x i8], [19 x i8]* @bl_order, i64 0, i64 %376
  %378 = load i8, i8* %377, align 1
  %379 = zext i8 %378 to i64
  %380 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %374, i64 0, i64 %379
  %381 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %380, i32 0, i32 1
  %382 = bitcast %union.anon.0* %381 to i16*
  %383 = load i16, i16* %382, align 2
  %384 = zext i16 %383 to i32
  %385 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %386 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %385, i32 0, i32 57
  %387 = load i32, i32* %386, align 4
  %388 = shl i32 %384, %387
  %389 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %390 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %389, i32 0, i32 56
  %391 = load i16, i16* %390, align 8
  %392 = zext i16 %391 to i32
  %393 = or i32 %392, %388
  %394 = trunc i32 %393 to i16
  store i16 %394, i16* %390, align 8
  %395 = load i32, i32* %16, align 4
  %396 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %397 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %396, i32 0, i32 57
  %398 = load i32, i32* %397, align 4
  %399 = add nsw i32 %398, %395
  store i32 %399, i32* %397, align 4
  br label %400

400:                                              ; preds = %372, %299
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %9, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %9, align 4
  br label %288, !llvm.loop !23

404:                                              ; preds = %288
  %405 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %406 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %407 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %406, i32 0, i32 37
  %408 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %407, i64 0, i64 0
  %409 = load i32, i32* %6, align 4
  %410 = sub nsw i32 %409, 1
  call void @send_tree(%struct.internal_state* noundef %405, %struct.ct_data_s* noundef %408, i32 noundef %410)
  %411 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %412 = load %struct.internal_state*, %struct.internal_state** %5, align 8
  %413 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %412, i32 0, i32 38
  %414 = getelementptr inbounds [61 x %struct.ct_data_s], [61 x %struct.ct_data_s]* %413, i64 0, i64 0
  %415 = load i32, i32* %7, align 4
  %416 = sub nsw i32 %415, 1
  call void @send_tree(%struct.internal_state* noundef %411, %struct.ct_data_s* noundef %414, i32 noundef %416)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @bi_windup(%struct.internal_state* noundef %0) #0 {
  %2 = alloca %struct.internal_state*, align 8
  store %struct.internal_state* %0, %struct.internal_state** %2, align 8
  %3 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %4 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %3, i32 0, i32 57
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 8
  br i1 %6, label %7, label %38

7:                                                ; preds = %1
  %8 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %9 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %8, i32 0, i32 56
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 255
  %13 = trunc i32 %12 to i8
  %14 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %15 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %18 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = add i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %16, i64 %21
  store i8 %13, i8* %22, align 1
  %23 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %24 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %23, i32 0, i32 56
  %25 = load i16, i16* %24, align 8
  %26 = zext i16 %25 to i32
  %27 = ashr i32 %26, 8
  %28 = trunc i32 %27 to i8
  %29 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %30 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %33 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = add i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  store i8 %28, i8* %37, align 1
  br label %58

38:                                               ; preds = %1
  %39 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %40 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %39, i32 0, i32 57
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %45 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %44, i32 0, i32 56
  %46 = load i16, i16* %45, align 8
  %47 = trunc i16 %46 to i8
  %48 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %49 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %52 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  store i8 %47, i8* %56, align 1
  br label %57

57:                                               ; preds = %43, %38
  br label %58

58:                                               ; preds = %57, %7
  %59 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %60 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %59, i32 0, i32 56
  store i16 0, i16* %60, align 8
  %61 = load %struct.internal_state*, %struct.internal_state** %2, align 8
  %62 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %61, i32 0, i32 57
  store i32 0, i32* %62, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define hidden i32 @_tr_tally(%struct.internal_state* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.internal_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = trunc i32 %7 to i16
  %9 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %10 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %9, i32 0, i32 51
  %11 = load i16*, i16** %10, align 8
  %12 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %13 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %12, i32 0, i32 50
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %11, i64 %15
  store i16 %8, i16* %16, align 2
  %17 = load i32, i32* %6, align 4
  %18 = trunc i32 %17 to i8
  %19 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %20 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %19, i32 0, i32 48
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %23 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %22, i32 0, i32 50
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %21, i64 %26
  store i8 %18, i8* %27, align 1
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %32 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %31, i32 0, i32 37
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %32, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %35, i32 0, i32 0
  %37 = bitcast %union.anon* %36 to i16*
  %38 = load i16, i16* %37, align 4
  %39 = add i16 %38, 1
  store i16 %39, i16* %37, align 4
  br label %88

40:                                               ; preds = %3
  %41 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %42 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %41, i32 0, i32 54
  %43 = load i32, i32* %42, align 8
  %44 = add i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %5, align 4
  %47 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %48 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %47, i32 0, i32 37
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* @_length_code, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, 256
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [573 x %struct.ct_data_s], [573 x %struct.ct_data_s]* %48, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %57, i32 0, i32 0
  %59 = bitcast %union.anon* %58 to i16*
  %60 = load i16, i16* %59, align 4
  %61 = add i16 %60, 1
  store i16 %61, i16* %59, align 4
  %62 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %63 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %62, i32 0, i32 38
  %64 = load i32, i32* %5, align 4
  %65 = icmp ult i32 %64, 256
  br i1 %65, label %66, label %72

66:                                               ; preds = %40
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* @_dist_code, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  br label %80

72:                                               ; preds = %40
  %73 = load i32, i32* %5, align 4
  %74 = lshr i32 %73, 7
  %75 = add i32 256, %74
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [512 x i8], [512 x i8]* @_dist_code, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  br label %80

80:                                               ; preds = %72, %66
  %81 = phi i32 [ %71, %66 ], [ %79, %72 ]
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [61 x %struct.ct_data_s], [61 x %struct.ct_data_s]* %63, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %83, i32 0, i32 0
  %85 = bitcast %union.anon* %84 to i16*
  %86 = load i16, i16* %85, align 4
  %87 = add i16 %86, 1
  store i16 %87, i16* %85, align 4
  br label %88

88:                                               ; preds = %80, %30
  %89 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %90 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %89, i32 0, i32 50
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %93 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %92, i32 0, i32 49
  %94 = load i32, i32* %93, align 8
  %95 = sub i32 %94, 1
  %96 = icmp eq i32 %91, %95
  %97 = zext i1 %96 to i32
  ret i32 %97
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pqdownheap(%struct.internal_state* noundef %0, %struct.ct_data_s* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.internal_state*, align 8
  %5 = alloca %struct.ct_data_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %4, align 8
  store %struct.ct_data_s* %1, %struct.ct_data_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %10 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %9, i32 0, i32 44
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [573 x i32], [573 x i32]* %10, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 1
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %185, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %20 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %19, i32 0, i32 45
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %200

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %26 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %25, i32 0, i32 45
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %117

29:                                               ; preds = %23
  %30 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %31 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %32 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %31, i32 0, i32 44
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [573 x i32], [573 x i32]* %32, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %30, i64 %38
  %40 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %39, i32 0, i32 0
  %41 = bitcast %union.anon* %40 to i16*
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %45 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %46 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %45, i32 0, i32 44
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [573 x i32], [573 x i32]* %46, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %44, i64 %51
  %53 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %52, i32 0, i32 0
  %54 = bitcast %union.anon* %53 to i16*
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp slt i32 %43, %56
  br i1 %57, label %114, label %58

58:                                               ; preds = %29
  %59 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %60 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %61 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %60, i32 0, i32 44
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [573 x i32], [573 x i32]* %61, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %59, i64 %67
  %69 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %68, i32 0, i32 0
  %70 = bitcast %union.anon* %69 to i16*
  %71 = load i16, i16* %70, align 2
  %72 = zext i16 %71 to i32
  %73 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %74 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %75 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %74, i32 0, i32 44
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [573 x i32], [573 x i32]* %75, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %73, i64 %80
  %82 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %81, i32 0, i32 0
  %83 = bitcast %union.anon* %82 to i16*
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i32
  %86 = icmp eq i32 %72, %85
  br i1 %86, label %87, label %117

87:                                               ; preds = %58
  %88 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %89 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %88, i32 0, i32 47
  %90 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %91 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %90, i32 0, i32 44
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [573 x i32], [573 x i32]* %91, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [573 x i8], [573 x i8]* %89, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %102 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %101, i32 0, i32 47
  %103 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %104 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %103, i32 0, i32 44
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [573 x i32], [573 x i32]* %104, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [573 x i8], [573 x i8]* %102, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp sle i32 %100, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %87, %29
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %114, %87, %58, %23
  %118 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %118, i64 %120
  %122 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %121, i32 0, i32 0
  %123 = bitcast %union.anon* %122 to i16*
  %124 = load i16, i16* %123, align 2
  %125 = zext i16 %124 to i32
  %126 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %127 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %128 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %127, i32 0, i32 44
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [573 x i32], [573 x i32]* %128, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %126, i64 %133
  %135 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %134, i32 0, i32 0
  %136 = bitcast %union.anon* %135 to i16*
  %137 = load i16, i16* %136, align 2
  %138 = zext i16 %137 to i32
  %139 = icmp slt i32 %125, %138
  br i1 %139, label %184, label %140

140:                                              ; preds = %117
  %141 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %141, i64 %143
  %145 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %144, i32 0, i32 0
  %146 = bitcast %union.anon* %145 to i16*
  %147 = load i16, i16* %146, align 2
  %148 = zext i16 %147 to i32
  %149 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %150 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %151 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %150, i32 0, i32 44
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [573 x i32], [573 x i32]* %151, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %149, i64 %156
  %158 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %157, i32 0, i32 0
  %159 = bitcast %union.anon* %158 to i16*
  %160 = load i16, i16* %159, align 2
  %161 = zext i16 %160 to i32
  %162 = icmp eq i32 %148, %161
  br i1 %162, label %163, label %185

163:                                              ; preds = %140
  %164 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %165 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %164, i32 0, i32 47
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [573 x i8], [573 x i8]* %165, i64 0, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %172 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %171, i32 0, i32 47
  %173 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %174 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %173, i32 0, i32 44
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [573 x i32], [573 x i32]* %174, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [573 x i8], [573 x i8]* %172, i64 0, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp sle i32 %170, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %163, %117
  br label %200

185:                                              ; preds = %163, %140
  %186 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %187 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %186, i32 0, i32 44
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [573 x i32], [573 x i32]* %187, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %193 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %192, i32 0, i32 44
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [573 x i32], [573 x i32]* %193, i64 0, i64 %195
  store i32 %191, i32* %196, align 4
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %8, align 4
  %199 = shl i32 %198, 1
  store i32 %199, i32* %8, align 4
  br label %17, !llvm.loop !24

200:                                              ; preds = %184, %17
  %201 = load i32, i32* %7, align 4
  %202 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %203 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %202, i32 0, i32 44
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [573 x i32], [573 x i32]* %203, i64 0, i64 %205
  store i32 %201, i32* %206, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @gen_bitlen(%struct.internal_state* noundef %0, %struct.tree_desc_s* noundef %1) #0 {
  %3 = alloca %struct.internal_state*, align 8
  %4 = alloca %struct.tree_desc_s*, align 8
  %5 = alloca %struct.ct_data_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ct_data_s*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %3, align 8
  store %struct.tree_desc_s* %1, %struct.tree_desc_s** %4, align 8
  %18 = load %struct.tree_desc_s*, %struct.tree_desc_s** %4, align 8
  %19 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %18, i32 0, i32 0
  %20 = load %struct.ct_data_s*, %struct.ct_data_s** %19, align 8
  store %struct.ct_data_s* %20, %struct.ct_data_s** %5, align 8
  %21 = load %struct.tree_desc_s*, %struct.tree_desc_s** %4, align 8
  %22 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.tree_desc_s*, %struct.tree_desc_s** %4, align 8
  %25 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %24, i32 0, i32 2
  %26 = load %struct.static_tree_desc_s*, %struct.static_tree_desc_s** %25, align 8
  %27 = getelementptr inbounds %struct.static_tree_desc_s, %struct.static_tree_desc_s* %26, i32 0, i32 0
  %28 = load %struct.ct_data_s*, %struct.ct_data_s** %27, align 8
  store %struct.ct_data_s* %28, %struct.ct_data_s** %7, align 8
  %29 = load %struct.tree_desc_s*, %struct.tree_desc_s** %4, align 8
  %30 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %29, i32 0, i32 2
  %31 = load %struct.static_tree_desc_s*, %struct.static_tree_desc_s** %30, align 8
  %32 = getelementptr inbounds %struct.static_tree_desc_s, %struct.static_tree_desc_s* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %8, align 8
  %34 = load %struct.tree_desc_s*, %struct.tree_desc_s** %4, align 8
  %35 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %34, i32 0, i32 2
  %36 = load %struct.static_tree_desc_s*, %struct.static_tree_desc_s** %35, align 8
  %37 = getelementptr inbounds %struct.static_tree_desc_s, %struct.static_tree_desc_s* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.tree_desc_s*, %struct.tree_desc_s** %4, align 8
  %40 = getelementptr inbounds %struct.tree_desc_s, %struct.tree_desc_s* %39, i32 0, i32 2
  %41 = load %struct.static_tree_desc_s*, %struct.static_tree_desc_s** %40, align 8
  %42 = getelementptr inbounds %struct.static_tree_desc_s, %struct.static_tree_desc_s* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %10, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %53, %2
  %45 = load i32, i32* %14, align 4
  %46 = icmp sle i32 %45, 15
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %49 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %48, i32 0, i32 43
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [16 x i16], [16 x i16]* %49, i64 0, i64 %51
  store i16 0, i16* %52, align 2
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %44, !llvm.loop !25

56:                                               ; preds = %44
  %57 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %58 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %59 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %58, i32 0, i32 44
  %60 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %61 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %60, i32 0, i32 46
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [573 x i32], [573 x i32]* %59, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %57, i64 %66
  %68 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %67, i32 0, i32 1
  %69 = bitcast %union.anon.0* %68 to i16*
  store i16 0, i16* %69, align 2
  %70 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %71 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %70, i32 0, i32 46
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %179, %56
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 573
  br i1 %76, label %77, label %182

77:                                               ; preds = %74
  %78 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %79 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %78, i32 0, i32 44
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [573 x i32], [573 x i32]* %79, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %12, align 4
  %84 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %85 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %85, i64 %87
  %89 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %88, i32 0, i32 1
  %90 = bitcast %union.anon.0* %89 to i16*
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i64
  %93 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %84, i64 %92
  %94 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %93, i32 0, i32 1
  %95 = bitcast %union.anon.0* %94 to i16*
  %96 = load i16, i16* %95, align 2
  %97 = zext i16 %96 to i32
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %77
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %17, align 4
  br label %106

106:                                              ; preds = %102, %77
  %107 = load i32, i32* %14, align 4
  %108 = trunc i32 %107 to i16
  %109 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %109, i64 %111
  %113 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %112, i32 0, i32 1
  %114 = bitcast %union.anon.0* %113 to i16*
  store i16 %108, i16* %114, align 2
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %179

119:                                              ; preds = %106
  %120 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %121 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %120, i32 0, i32 43
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [16 x i16], [16 x i16]* %121, i64 0, i64 %123
  %125 = load i16, i16* %124, align 2
  %126 = add i16 %125, 1
  store i16 %126, i16* %124, align 2
  store i32 0, i32* %15, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %119
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %130, %119
  %139 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %139, i64 %141
  %143 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %142, i32 0, i32 0
  %144 = bitcast %union.anon* %143 to i16*
  %145 = load i16, i16* %144, align 2
  store i16 %145, i16* %16, align 2
  %146 = load i16, i16* %16, align 2
  %147 = zext i16 %146 to i64
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = mul i64 %147, %151
  %153 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %154 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %153, i32 0, i32 52
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, %152
  store i64 %156, i64* %154, align 8
  %157 = load %struct.ct_data_s*, %struct.ct_data_s** %7, align 8
  %158 = icmp ne %struct.ct_data_s* %157, null
  br i1 %158, label %159, label %178

159:                                              ; preds = %138
  %160 = load i16, i16* %16, align 2
  %161 = zext i16 %160 to i64
  %162 = load %struct.ct_data_s*, %struct.ct_data_s** %7, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %162, i64 %164
  %166 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %165, i32 0, i32 1
  %167 = bitcast %union.anon.0* %166 to i16*
  %168 = load i16, i16* %167, align 2
  %169 = zext i16 %168 to i32
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = mul i64 %161, %172
  %174 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %175 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %174, i32 0, i32 53
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %176, %173
  store i64 %177, i64* %175, align 8
  br label %178

178:                                              ; preds = %159, %138
  br label %179

179:                                              ; preds = %178, %118
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %74, !llvm.loop !26

182:                                              ; preds = %74
  %183 = load i32, i32* %17, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  br label %311

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %229, %186
  %188 = load i32, i32* %10, align 4
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %190

190:                                              ; preds = %199, %187
  %191 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %192 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %191, i32 0, i32 43
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [16 x i16], [16 x i16]* %192, i64 0, i64 %194
  %196 = load i16, i16* %195, align 2
  %197 = zext i16 %196 to i32
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %190
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %14, align 4
  br label %190, !llvm.loop !27

202:                                              ; preds = %190
  %203 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %204 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %203, i32 0, i32 43
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [16 x i16], [16 x i16]* %204, i64 0, i64 %206
  %208 = load i16, i16* %207, align 2
  %209 = add i16 %208, -1
  store i16 %209, i16* %207, align 2
  %210 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %211 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %210, i32 0, i32 43
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [16 x i16], [16 x i16]* %211, i64 0, i64 %214
  %216 = load i16, i16* %215, align 2
  %217 = zext i16 %216 to i32
  %218 = add nsw i32 %217, 2
  %219 = trunc i32 %218 to i16
  store i16 %219, i16* %215, align 2
  %220 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %221 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %220, i32 0, i32 43
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [16 x i16], [16 x i16]* %221, i64 0, i64 %223
  %225 = load i16, i16* %224, align 2
  %226 = add i16 %225, -1
  store i16 %226, i16* %224, align 2
  %227 = load i32, i32* %17, align 4
  %228 = sub nsw i32 %227, 2
  store i32 %228, i32* %17, align 4
  br label %229

229:                                              ; preds = %202
  %230 = load i32, i32* %17, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %187, label %232, !llvm.loop !28

232:                                              ; preds = %229
  %233 = load i32, i32* %10, align 4
  store i32 %233, i32* %14, align 4
  br label %234

234:                                              ; preds = %308, %232
  %235 = load i32, i32* %14, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %311

237:                                              ; preds = %234
  %238 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %239 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %238, i32 0, i32 43
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [16 x i16], [16 x i16]* %239, i64 0, i64 %241
  %243 = load i16, i16* %242, align 2
  %244 = zext i16 %243 to i32
  store i32 %244, i32* %12, align 4
  br label %245

245:                                              ; preds = %304, %259, %237
  %246 = load i32, i32* %12, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %307

248:                                              ; preds = %245
  %249 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %250 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %249, i32 0, i32 44
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [573 x i32], [573 x i32]* %250, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %13, align 4
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* %6, align 4
  %258 = icmp sgt i32 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %248
  br label %245, !llvm.loop !29

260:                                              ; preds = %248
  %261 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %261, i64 %263
  %265 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %264, i32 0, i32 1
  %266 = bitcast %union.anon.0* %265 to i16*
  %267 = load i16, i16* %266, align 2
  %268 = zext i16 %267 to i32
  %269 = load i32, i32* %14, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %304

271:                                              ; preds = %260
  %272 = load i32, i32* %14, align 4
  %273 = sext i32 %272 to i64
  %274 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %274, i64 %276
  %278 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %277, i32 0, i32 1
  %279 = bitcast %union.anon.0* %278 to i16*
  %280 = load i16, i16* %279, align 2
  %281 = zext i16 %280 to i64
  %282 = sub nsw i64 %273, %281
  %283 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %283, i64 %285
  %287 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %286, i32 0, i32 0
  %288 = bitcast %union.anon* %287 to i16*
  %289 = load i16, i16* %288, align 2
  %290 = zext i16 %289 to i64
  %291 = mul nsw i64 %282, %290
  %292 = load %struct.internal_state*, %struct.internal_state** %3, align 8
  %293 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %292, i32 0, i32 52
  %294 = load i64, i64* %293, align 8
  %295 = add i64 %294, %291
  store i64 %295, i64* %293, align 8
  %296 = load i32, i32* %14, align 4
  %297 = trunc i32 %296 to i16
  %298 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %299 = load i32, i32* %13, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %298, i64 %300
  %302 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %301, i32 0, i32 1
  %303 = bitcast %union.anon.0* %302 to i16*
  store i16 %297, i16* %303, align 2
  br label %304

304:                                              ; preds = %271, %260
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %12, align 4
  br label %245, !llvm.loop !29

307:                                              ; preds = %245
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %14, align 4
  %310 = add nsw i32 %309, -1
  store i32 %310, i32* %14, align 4
  br label %234, !llvm.loop !30

311:                                              ; preds = %185, %234
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @gen_codes(%struct.ct_data_s* noundef %0, i32 noundef %1, i16* noundef %2) #0 {
  %4 = alloca %struct.ct_data_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca [16 x i16], align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ct_data_s* %0, %struct.ct_data_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16* %2, i16** %6, align 8
  store i16 0, i16* %8, align 2
  store i32 1, i32* %9, align 4
  br label %12

12:                                               ; preds = %31, %3
  %13 = load i32, i32* %9, align 4
  %14 = icmp sle i32 %13, 15
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load i16, i16* %8, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16*, i16** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, i16* %18, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = add nsw i32 %17, %24
  %26 = shl i32 %25, 1
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %8, align 2
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [16 x i16], [16 x i16]* %7, i64 0, i64 %29
  store i16 %27, i16* %30, align 2
  br label %31

31:                                               ; preds = %15
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %12, !llvm.loop !31

34:                                               ; preds = %12
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %67, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %35
  %40 = load %struct.ct_data_s*, %struct.ct_data_s** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %40, i64 %42
  %44 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %43, i32 0, i32 1
  %45 = bitcast %union.anon.0* %44 to i16*
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %67

51:                                               ; preds = %39
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [16 x i16], [16 x i16]* %7, i64 0, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = add i16 %55, 1
  store i16 %56, i16* %54, align 2
  %57 = zext i16 %55 to i32
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @bi_reverse(i32 noundef %57, i32 noundef %58)
  %60 = trunc i32 %59 to i16
  %61 = load %struct.ct_data_s*, %struct.ct_data_s** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %61, i64 %63
  %65 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %64, i32 0, i32 0
  %66 = bitcast %union.anon* %65 to i16*
  store i16 %60, i16* %66, align 2
  br label %67

67:                                               ; preds = %51, %50
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %35, !llvm.loop !32

70:                                               ; preds = %35
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @bi_reverse(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %15, %2
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 1
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = lshr i32 %11, 1
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %6
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %6, label %19, !llvm.loop !33

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = lshr i32 %20, 1
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @scan_tree(%struct.internal_state* noundef %0, %struct.ct_data_s* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.internal_state*, align 8
  %5 = alloca %struct.ct_data_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %4, align 8
  store %struct.ct_data_s* %1, %struct.ct_data_s** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  %14 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %15 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %14, i64 0
  %16 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %15, i32 0, i32 1
  %17 = bitcast %union.anon.0* %16 to i16*
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 7, i32* %12, align 4
  store i32 4, i32* %13, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 138, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %24, i64 %27
  %29 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %28, i32 0, i32 1
  %30 = bitcast %union.anon.0* %29 to i16*
  store i16 -1, i16* %30, align 2
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %132, %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %135

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %37, i64 %40
  %42 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %41, i32 0, i32 1
  %43 = bitcast %union.anon.0* %42 to i16*
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %132

55:                                               ; preds = %50, %35
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %62 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %61, i32 0, i32 39
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %62, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %65, i32 0, i32 0
  %67 = bitcast %union.anon* %66 to i16*
  %68 = load i16, i16* %67, align 4
  %69 = zext i16 %68 to i32
  %70 = add nsw i32 %69, %60
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %67, align 4
  br label %118

72:                                               ; preds = %55
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %81 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %80, i32 0, i32 39
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %81, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %84, i32 0, i32 0
  %86 = bitcast %union.anon* %85 to i16*
  %87 = load i16, i16* %86, align 4
  %88 = add i16 %87, 1
  store i16 %88, i16* %86, align 4
  br label %89

89:                                               ; preds = %79, %75
  %90 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %91 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %90, i32 0, i32 39
  %92 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %91, i64 0, i64 16
  %93 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %92, i32 0, i32 0
  %94 = bitcast %union.anon* %93 to i16*
  %95 = load i16, i16* %94, align 4
  %96 = add i16 %95, 1
  store i16 %96, i16* %94, align 4
  br label %117

97:                                               ; preds = %72
  %98 = load i32, i32* %11, align 4
  %99 = icmp sle i32 %98, 10
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %102 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %101, i32 0, i32 39
  %103 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %102, i64 0, i64 17
  %104 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %103, i32 0, i32 0
  %105 = bitcast %union.anon* %104 to i16*
  %106 = load i16, i16* %105, align 4
  %107 = add i16 %106, 1
  store i16 %107, i16* %105, align 4
  br label %116

108:                                              ; preds = %97
  %109 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %110 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %109, i32 0, i32 39
  %111 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %110, i64 0, i64 18
  %112 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %111, i32 0, i32 0
  %113 = bitcast %union.anon* %112 to i16*
  %114 = load i16, i16* %113, align 4
  %115 = add i16 %114, 1
  store i16 %115, i16* %113, align 4
  br label %116

116:                                              ; preds = %108, %100
  br label %117

117:                                              ; preds = %116, %89
  br label %118

118:                                              ; preds = %117, %59
  br label %119

119:                                              ; preds = %118
  store i32 0, i32* %11, align 4
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 138, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %131

124:                                              ; preds = %119
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 6, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %130

129:                                              ; preds = %124
  store i32 7, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %130

130:                                              ; preds = %129, %128
  br label %131

131:                                              ; preds = %130, %123
  br label %132

132:                                              ; preds = %131, %54
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %31, !llvm.loop !34

135:                                              ; preds = %31
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @send_tree(%struct.internal_state* noundef %0, %struct.ct_data_s* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.internal_state*, align 8
  %5 = alloca %struct.ct_data_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.internal_state* %0, %struct.internal_state** %4, align 8
  store %struct.ct_data_s* %1, %struct.ct_data_s** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  %30 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %31 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %30, i64 0
  %32 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %31, i32 0, i32 1
  %33 = bitcast %union.anon.0* %32 to i16*
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 7, i32* %12, align 4
  store i32 4, i32* %13, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store i32 138, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %39

39:                                               ; preds = %38, %3
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %914, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %917

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %9, align 4
  %46 = load %struct.ct_data_s*, %struct.ct_data_s** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %46, i64 %49
  %51 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %50, i32 0, i32 1
  %52 = bitcast %union.anon.0* %51 to i16*
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %44
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %914

64:                                               ; preds = %59, %44
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %186

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %181, %68
  %70 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %71 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %70, i32 0, i32 39
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %71, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %74, i32 0, i32 1
  %76 = bitcast %union.anon.0* %75 to i16*
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  store i32 %78, i32* %14, align 4
  %79 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %80 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %79, i32 0, i32 57
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 16, %82
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %155

85:                                               ; preds = %69
  %86 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %87 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %86, i32 0, i32 39
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %87, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %90, i32 0, i32 0
  %92 = bitcast %union.anon* %91 to i16*
  %93 = load i16, i16* %92, align 4
  %94 = zext i16 %93 to i32
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = trunc i32 %95 to i16
  %97 = zext i16 %96 to i32
  %98 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %99 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %98, i32 0, i32 57
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %97, %100
  %102 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %103 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %102, i32 0, i32 56
  %104 = load i16, i16* %103, align 8
  %105 = zext i16 %104 to i32
  %106 = or i32 %105, %101
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %103, align 8
  %108 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %109 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %108, i32 0, i32 56
  %110 = load i16, i16* %109, align 8
  %111 = zext i16 %110 to i32
  %112 = and i32 %111, 255
  %113 = trunc i32 %112 to i8
  %114 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %115 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %118 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = add i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %116, i64 %121
  store i8 %113, i8* %122, align 1
  %123 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %124 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %123, i32 0, i32 56
  %125 = load i16, i16* %124, align 8
  %126 = zext i16 %125 to i32
  %127 = ashr i32 %126, 8
  %128 = trunc i32 %127 to i8
  %129 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %130 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %133 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = add i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %131, i64 %136
  store i8 %128, i8* %137, align 1
  %138 = load i32, i32* %15, align 4
  %139 = trunc i32 %138 to i16
  %140 = zext i16 %139 to i32
  %141 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %142 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %141, i32 0, i32 57
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 16, %143
  %145 = ashr i32 %140, %144
  %146 = trunc i32 %145 to i16
  %147 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %148 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %147, i32 0, i32 56
  store i16 %146, i16* %148, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sub nsw i32 %149, 16
  %151 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %152 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %151, i32 0, i32 57
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %180

155:                                              ; preds = %69
  %156 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %157 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %156, i32 0, i32 39
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %157, i64 0, i64 %159
  %161 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %160, i32 0, i32 0
  %162 = bitcast %union.anon* %161 to i16*
  %163 = load i16, i16* %162, align 4
  %164 = zext i16 %163 to i32
  %165 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %166 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %165, i32 0, i32 57
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %164, %167
  %169 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %170 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %169, i32 0, i32 56
  %171 = load i16, i16* %170, align 8
  %172 = zext i16 %171 to i32
  %173 = or i32 %172, %168
  %174 = trunc i32 %173 to i16
  store i16 %174, i16* %170, align 8
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %177 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %176, i32 0, i32 57
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %155, %85
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %69, label %185, !llvm.loop !35

185:                                              ; preds = %181
  br label %900

186:                                              ; preds = %64
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %503

189:                                              ; preds = %186
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %307

193:                                              ; preds = %189
  %194 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %195 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %194, i32 0, i32 39
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %195, i64 0, i64 %197
  %199 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %198, i32 0, i32 1
  %200 = bitcast %union.anon.0* %199 to i16*
  %201 = load i16, i16* %200, align 2
  %202 = zext i16 %201 to i32
  store i32 %202, i32* %16, align 4
  %203 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %204 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %203, i32 0, i32 57
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %16, align 4
  %207 = sub nsw i32 16, %206
  %208 = icmp sgt i32 %205, %207
  br i1 %208, label %209, label %279

209:                                              ; preds = %193
  %210 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %211 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %210, i32 0, i32 39
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %211, i64 0, i64 %213
  %215 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %214, i32 0, i32 0
  %216 = bitcast %union.anon* %215 to i16*
  %217 = load i16, i16* %216, align 4
  %218 = zext i16 %217 to i32
  store i32 %218, i32* %17, align 4
  %219 = load i32, i32* %17, align 4
  %220 = trunc i32 %219 to i16
  %221 = zext i16 %220 to i32
  %222 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %223 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %222, i32 0, i32 57
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 %221, %224
  %226 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %227 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %226, i32 0, i32 56
  %228 = load i16, i16* %227, align 8
  %229 = zext i16 %228 to i32
  %230 = or i32 %229, %225
  %231 = trunc i32 %230 to i16
  store i16 %231, i16* %227, align 8
  %232 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %233 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %232, i32 0, i32 56
  %234 = load i16, i16* %233, align 8
  %235 = zext i16 %234 to i32
  %236 = and i32 %235, 255
  %237 = trunc i32 %236 to i8
  %238 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %239 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %242 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 8
  %244 = add i32 %243, 1
  store i32 %244, i32* %242, align 8
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds i8, i8* %240, i64 %245
  store i8 %237, i8* %246, align 1
  %247 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %248 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %247, i32 0, i32 56
  %249 = load i16, i16* %248, align 8
  %250 = zext i16 %249 to i32
  %251 = ashr i32 %250, 8
  %252 = trunc i32 %251 to i8
  %253 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %254 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %253, i32 0, i32 2
  %255 = load i8*, i8** %254, align 8
  %256 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %257 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = add i32 %258, 1
  store i32 %259, i32* %257, align 8
  %260 = zext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %255, i64 %260
  store i8 %252, i8* %261, align 1
  %262 = load i32, i32* %17, align 4
  %263 = trunc i32 %262 to i16
  %264 = zext i16 %263 to i32
  %265 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %266 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %265, i32 0, i32 57
  %267 = load i32, i32* %266, align 4
  %268 = sub nsw i32 16, %267
  %269 = ashr i32 %264, %268
  %270 = trunc i32 %269 to i16
  %271 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %272 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %271, i32 0, i32 56
  store i16 %270, i16* %272, align 8
  %273 = load i32, i32* %16, align 4
  %274 = sub nsw i32 %273, 16
  %275 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %276 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %275, i32 0, i32 57
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, %274
  store i32 %278, i32* %276, align 4
  br label %304

279:                                              ; preds = %193
  %280 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %281 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %280, i32 0, i32 39
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %281, i64 0, i64 %283
  %285 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %284, i32 0, i32 0
  %286 = bitcast %union.anon* %285 to i16*
  %287 = load i16, i16* %286, align 4
  %288 = zext i16 %287 to i32
  %289 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %290 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %289, i32 0, i32 57
  %291 = load i32, i32* %290, align 4
  %292 = shl i32 %288, %291
  %293 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %294 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %293, i32 0, i32 56
  %295 = load i16, i16* %294, align 8
  %296 = zext i16 %295 to i32
  %297 = or i32 %296, %292
  %298 = trunc i32 %297 to i16
  store i16 %298, i16* %294, align 8
  %299 = load i32, i32* %16, align 4
  %300 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %301 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %300, i32 0, i32 57
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, %299
  store i32 %303, i32* %301, align 4
  br label %304

304:                                              ; preds = %279, %209
  %305 = load i32, i32* %11, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %11, align 4
  br label %307

307:                                              ; preds = %304, %189
  %308 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %309 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %308, i32 0, i32 39
  %310 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %309, i64 0, i64 16
  %311 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %310, i32 0, i32 1
  %312 = bitcast %union.anon.0* %311 to i16*
  %313 = load i16, i16* %312, align 2
  %314 = zext i16 %313 to i32
  store i32 %314, i32* %18, align 4
  %315 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %316 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %315, i32 0, i32 57
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %18, align 4
  %319 = sub nsw i32 16, %318
  %320 = icmp sgt i32 %317, %319
  br i1 %320, label %321, label %389

321:                                              ; preds = %307
  %322 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %323 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %322, i32 0, i32 39
  %324 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %323, i64 0, i64 16
  %325 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %324, i32 0, i32 0
  %326 = bitcast %union.anon* %325 to i16*
  %327 = load i16, i16* %326, align 4
  %328 = zext i16 %327 to i32
  store i32 %328, i32* %19, align 4
  %329 = load i32, i32* %19, align 4
  %330 = trunc i32 %329 to i16
  %331 = zext i16 %330 to i32
  %332 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %333 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %332, i32 0, i32 57
  %334 = load i32, i32* %333, align 4
  %335 = shl i32 %331, %334
  %336 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %337 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %336, i32 0, i32 56
  %338 = load i16, i16* %337, align 8
  %339 = zext i16 %338 to i32
  %340 = or i32 %339, %335
  %341 = trunc i32 %340 to i16
  store i16 %341, i16* %337, align 8
  %342 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %343 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %342, i32 0, i32 56
  %344 = load i16, i16* %343, align 8
  %345 = zext i16 %344 to i32
  %346 = and i32 %345, 255
  %347 = trunc i32 %346 to i8
  %348 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %349 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %348, i32 0, i32 2
  %350 = load i8*, i8** %349, align 8
  %351 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %352 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 8
  %354 = add i32 %353, 1
  store i32 %354, i32* %352, align 8
  %355 = zext i32 %353 to i64
  %356 = getelementptr inbounds i8, i8* %350, i64 %355
  store i8 %347, i8* %356, align 1
  %357 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %358 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %357, i32 0, i32 56
  %359 = load i16, i16* %358, align 8
  %360 = zext i16 %359 to i32
  %361 = ashr i32 %360, 8
  %362 = trunc i32 %361 to i8
  %363 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %364 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %363, i32 0, i32 2
  %365 = load i8*, i8** %364, align 8
  %366 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %367 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %366, i32 0, i32 5
  %368 = load i32, i32* %367, align 8
  %369 = add i32 %368, 1
  store i32 %369, i32* %367, align 8
  %370 = zext i32 %368 to i64
  %371 = getelementptr inbounds i8, i8* %365, i64 %370
  store i8 %362, i8* %371, align 1
  %372 = load i32, i32* %19, align 4
  %373 = trunc i32 %372 to i16
  %374 = zext i16 %373 to i32
  %375 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %376 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %375, i32 0, i32 57
  %377 = load i32, i32* %376, align 4
  %378 = sub nsw i32 16, %377
  %379 = ashr i32 %374, %378
  %380 = trunc i32 %379 to i16
  %381 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %382 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %381, i32 0, i32 56
  store i16 %380, i16* %382, align 8
  %383 = load i32, i32* %18, align 4
  %384 = sub nsw i32 %383, 16
  %385 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %386 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %385, i32 0, i32 57
  %387 = load i32, i32* %386, align 4
  %388 = add nsw i32 %387, %384
  store i32 %388, i32* %386, align 4
  br label %412

389:                                              ; preds = %307
  %390 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %391 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %390, i32 0, i32 39
  %392 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %391, i64 0, i64 16
  %393 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %392, i32 0, i32 0
  %394 = bitcast %union.anon* %393 to i16*
  %395 = load i16, i16* %394, align 4
  %396 = zext i16 %395 to i32
  %397 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %398 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %397, i32 0, i32 57
  %399 = load i32, i32* %398, align 4
  %400 = shl i32 %396, %399
  %401 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %402 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %401, i32 0, i32 56
  %403 = load i16, i16* %402, align 8
  %404 = zext i16 %403 to i32
  %405 = or i32 %404, %400
  %406 = trunc i32 %405 to i16
  store i16 %406, i16* %402, align 8
  %407 = load i32, i32* %18, align 4
  %408 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %409 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %408, i32 0, i32 57
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %410, %407
  store i32 %411, i32* %409, align 4
  br label %412

412:                                              ; preds = %389, %321
  store i32 2, i32* %20, align 4
  %413 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %414 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %413, i32 0, i32 57
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* %20, align 4
  %417 = sub nsw i32 16, %416
  %418 = icmp sgt i32 %415, %417
  br i1 %418, label %419, label %482

419:                                              ; preds = %412
  %420 = load i32, i32* %11, align 4
  %421 = sub nsw i32 %420, 3
  store i32 %421, i32* %21, align 4
  %422 = load i32, i32* %21, align 4
  %423 = trunc i32 %422 to i16
  %424 = zext i16 %423 to i32
  %425 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %426 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %425, i32 0, i32 57
  %427 = load i32, i32* %426, align 4
  %428 = shl i32 %424, %427
  %429 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %430 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %429, i32 0, i32 56
  %431 = load i16, i16* %430, align 8
  %432 = zext i16 %431 to i32
  %433 = or i32 %432, %428
  %434 = trunc i32 %433 to i16
  store i16 %434, i16* %430, align 8
  %435 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %436 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %435, i32 0, i32 56
  %437 = load i16, i16* %436, align 8
  %438 = zext i16 %437 to i32
  %439 = and i32 %438, 255
  %440 = trunc i32 %439 to i8
  %441 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %442 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %441, i32 0, i32 2
  %443 = load i8*, i8** %442, align 8
  %444 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %445 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %444, i32 0, i32 5
  %446 = load i32, i32* %445, align 8
  %447 = add i32 %446, 1
  store i32 %447, i32* %445, align 8
  %448 = zext i32 %446 to i64
  %449 = getelementptr inbounds i8, i8* %443, i64 %448
  store i8 %440, i8* %449, align 1
  %450 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %451 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %450, i32 0, i32 56
  %452 = load i16, i16* %451, align 8
  %453 = zext i16 %452 to i32
  %454 = ashr i32 %453, 8
  %455 = trunc i32 %454 to i8
  %456 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %457 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %456, i32 0, i32 2
  %458 = load i8*, i8** %457, align 8
  %459 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %460 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %459, i32 0, i32 5
  %461 = load i32, i32* %460, align 8
  %462 = add i32 %461, 1
  store i32 %462, i32* %460, align 8
  %463 = zext i32 %461 to i64
  %464 = getelementptr inbounds i8, i8* %458, i64 %463
  store i8 %455, i8* %464, align 1
  %465 = load i32, i32* %21, align 4
  %466 = trunc i32 %465 to i16
  %467 = zext i16 %466 to i32
  %468 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %469 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %468, i32 0, i32 57
  %470 = load i32, i32* %469, align 4
  %471 = sub nsw i32 16, %470
  %472 = ashr i32 %467, %471
  %473 = trunc i32 %472 to i16
  %474 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %475 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %474, i32 0, i32 56
  store i16 %473, i16* %475, align 8
  %476 = load i32, i32* %20, align 4
  %477 = sub nsw i32 %476, 16
  %478 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %479 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %478, i32 0, i32 57
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %480, %477
  store i32 %481, i32* %479, align 4
  br label %502

482:                                              ; preds = %412
  %483 = load i32, i32* %11, align 4
  %484 = sub nsw i32 %483, 3
  %485 = trunc i32 %484 to i16
  %486 = zext i16 %485 to i32
  %487 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %488 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %487, i32 0, i32 57
  %489 = load i32, i32* %488, align 4
  %490 = shl i32 %486, %489
  %491 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %492 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %491, i32 0, i32 56
  %493 = load i16, i16* %492, align 8
  %494 = zext i16 %493 to i32
  %495 = or i32 %494, %490
  %496 = trunc i32 %495 to i16
  store i16 %496, i16* %492, align 8
  %497 = load i32, i32* %20, align 4
  %498 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %499 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %498, i32 0, i32 57
  %500 = load i32, i32* %499, align 4
  %501 = add nsw i32 %500, %497
  store i32 %501, i32* %499, align 4
  br label %502

502:                                              ; preds = %482, %419
  br label %899

503:                                              ; preds = %186
  %504 = load i32, i32* %11, align 4
  %505 = icmp sle i32 %504, 10
  br i1 %505, label %506, label %702

506:                                              ; preds = %503
  %507 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %508 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %507, i32 0, i32 39
  %509 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %508, i64 0, i64 17
  %510 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %509, i32 0, i32 1
  %511 = bitcast %union.anon.0* %510 to i16*
  %512 = load i16, i16* %511, align 2
  %513 = zext i16 %512 to i32
  store i32 %513, i32* %22, align 4
  %514 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %515 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %514, i32 0, i32 57
  %516 = load i32, i32* %515, align 4
  %517 = load i32, i32* %22, align 4
  %518 = sub nsw i32 16, %517
  %519 = icmp sgt i32 %516, %518
  br i1 %519, label %520, label %588

520:                                              ; preds = %506
  %521 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %522 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %521, i32 0, i32 39
  %523 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %522, i64 0, i64 17
  %524 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %523, i32 0, i32 0
  %525 = bitcast %union.anon* %524 to i16*
  %526 = load i16, i16* %525, align 4
  %527 = zext i16 %526 to i32
  store i32 %527, i32* %23, align 4
  %528 = load i32, i32* %23, align 4
  %529 = trunc i32 %528 to i16
  %530 = zext i16 %529 to i32
  %531 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %532 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %531, i32 0, i32 57
  %533 = load i32, i32* %532, align 4
  %534 = shl i32 %530, %533
  %535 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %536 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %535, i32 0, i32 56
  %537 = load i16, i16* %536, align 8
  %538 = zext i16 %537 to i32
  %539 = or i32 %538, %534
  %540 = trunc i32 %539 to i16
  store i16 %540, i16* %536, align 8
  %541 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %542 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %541, i32 0, i32 56
  %543 = load i16, i16* %542, align 8
  %544 = zext i16 %543 to i32
  %545 = and i32 %544, 255
  %546 = trunc i32 %545 to i8
  %547 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %548 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %547, i32 0, i32 2
  %549 = load i8*, i8** %548, align 8
  %550 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %551 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %550, i32 0, i32 5
  %552 = load i32, i32* %551, align 8
  %553 = add i32 %552, 1
  store i32 %553, i32* %551, align 8
  %554 = zext i32 %552 to i64
  %555 = getelementptr inbounds i8, i8* %549, i64 %554
  store i8 %546, i8* %555, align 1
  %556 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %557 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %556, i32 0, i32 56
  %558 = load i16, i16* %557, align 8
  %559 = zext i16 %558 to i32
  %560 = ashr i32 %559, 8
  %561 = trunc i32 %560 to i8
  %562 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %563 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %562, i32 0, i32 2
  %564 = load i8*, i8** %563, align 8
  %565 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %566 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %565, i32 0, i32 5
  %567 = load i32, i32* %566, align 8
  %568 = add i32 %567, 1
  store i32 %568, i32* %566, align 8
  %569 = zext i32 %567 to i64
  %570 = getelementptr inbounds i8, i8* %564, i64 %569
  store i8 %561, i8* %570, align 1
  %571 = load i32, i32* %23, align 4
  %572 = trunc i32 %571 to i16
  %573 = zext i16 %572 to i32
  %574 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %575 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %574, i32 0, i32 57
  %576 = load i32, i32* %575, align 4
  %577 = sub nsw i32 16, %576
  %578 = ashr i32 %573, %577
  %579 = trunc i32 %578 to i16
  %580 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %581 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %580, i32 0, i32 56
  store i16 %579, i16* %581, align 8
  %582 = load i32, i32* %22, align 4
  %583 = sub nsw i32 %582, 16
  %584 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %585 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %584, i32 0, i32 57
  %586 = load i32, i32* %585, align 4
  %587 = add nsw i32 %586, %583
  store i32 %587, i32* %585, align 4
  br label %611

588:                                              ; preds = %506
  %589 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %590 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %589, i32 0, i32 39
  %591 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %590, i64 0, i64 17
  %592 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %591, i32 0, i32 0
  %593 = bitcast %union.anon* %592 to i16*
  %594 = load i16, i16* %593, align 4
  %595 = zext i16 %594 to i32
  %596 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %597 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %596, i32 0, i32 57
  %598 = load i32, i32* %597, align 4
  %599 = shl i32 %595, %598
  %600 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %601 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %600, i32 0, i32 56
  %602 = load i16, i16* %601, align 8
  %603 = zext i16 %602 to i32
  %604 = or i32 %603, %599
  %605 = trunc i32 %604 to i16
  store i16 %605, i16* %601, align 8
  %606 = load i32, i32* %22, align 4
  %607 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %608 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %607, i32 0, i32 57
  %609 = load i32, i32* %608, align 4
  %610 = add nsw i32 %609, %606
  store i32 %610, i32* %608, align 4
  br label %611

611:                                              ; preds = %588, %520
  store i32 3, i32* %24, align 4
  %612 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %613 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %612, i32 0, i32 57
  %614 = load i32, i32* %613, align 4
  %615 = load i32, i32* %24, align 4
  %616 = sub nsw i32 16, %615
  %617 = icmp sgt i32 %614, %616
  br i1 %617, label %618, label %681

618:                                              ; preds = %611
  %619 = load i32, i32* %11, align 4
  %620 = sub nsw i32 %619, 3
  store i32 %620, i32* %25, align 4
  %621 = load i32, i32* %25, align 4
  %622 = trunc i32 %621 to i16
  %623 = zext i16 %622 to i32
  %624 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %625 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %624, i32 0, i32 57
  %626 = load i32, i32* %625, align 4
  %627 = shl i32 %623, %626
  %628 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %629 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %628, i32 0, i32 56
  %630 = load i16, i16* %629, align 8
  %631 = zext i16 %630 to i32
  %632 = or i32 %631, %627
  %633 = trunc i32 %632 to i16
  store i16 %633, i16* %629, align 8
  %634 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %635 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %634, i32 0, i32 56
  %636 = load i16, i16* %635, align 8
  %637 = zext i16 %636 to i32
  %638 = and i32 %637, 255
  %639 = trunc i32 %638 to i8
  %640 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %641 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %640, i32 0, i32 2
  %642 = load i8*, i8** %641, align 8
  %643 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %644 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %643, i32 0, i32 5
  %645 = load i32, i32* %644, align 8
  %646 = add i32 %645, 1
  store i32 %646, i32* %644, align 8
  %647 = zext i32 %645 to i64
  %648 = getelementptr inbounds i8, i8* %642, i64 %647
  store i8 %639, i8* %648, align 1
  %649 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %650 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %649, i32 0, i32 56
  %651 = load i16, i16* %650, align 8
  %652 = zext i16 %651 to i32
  %653 = ashr i32 %652, 8
  %654 = trunc i32 %653 to i8
  %655 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %656 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %655, i32 0, i32 2
  %657 = load i8*, i8** %656, align 8
  %658 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %659 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %658, i32 0, i32 5
  %660 = load i32, i32* %659, align 8
  %661 = add i32 %660, 1
  store i32 %661, i32* %659, align 8
  %662 = zext i32 %660 to i64
  %663 = getelementptr inbounds i8, i8* %657, i64 %662
  store i8 %654, i8* %663, align 1
  %664 = load i32, i32* %25, align 4
  %665 = trunc i32 %664 to i16
  %666 = zext i16 %665 to i32
  %667 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %668 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %667, i32 0, i32 57
  %669 = load i32, i32* %668, align 4
  %670 = sub nsw i32 16, %669
  %671 = ashr i32 %666, %670
  %672 = trunc i32 %671 to i16
  %673 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %674 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %673, i32 0, i32 56
  store i16 %672, i16* %674, align 8
  %675 = load i32, i32* %24, align 4
  %676 = sub nsw i32 %675, 16
  %677 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %678 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %677, i32 0, i32 57
  %679 = load i32, i32* %678, align 4
  %680 = add nsw i32 %679, %676
  store i32 %680, i32* %678, align 4
  br label %701

681:                                              ; preds = %611
  %682 = load i32, i32* %11, align 4
  %683 = sub nsw i32 %682, 3
  %684 = trunc i32 %683 to i16
  %685 = zext i16 %684 to i32
  %686 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %687 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %686, i32 0, i32 57
  %688 = load i32, i32* %687, align 4
  %689 = shl i32 %685, %688
  %690 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %691 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %690, i32 0, i32 56
  %692 = load i16, i16* %691, align 8
  %693 = zext i16 %692 to i32
  %694 = or i32 %693, %689
  %695 = trunc i32 %694 to i16
  store i16 %695, i16* %691, align 8
  %696 = load i32, i32* %24, align 4
  %697 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %698 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %697, i32 0, i32 57
  %699 = load i32, i32* %698, align 4
  %700 = add nsw i32 %699, %696
  store i32 %700, i32* %698, align 4
  br label %701

701:                                              ; preds = %681, %618
  br label %898

702:                                              ; preds = %503
  %703 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %704 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %703, i32 0, i32 39
  %705 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %704, i64 0, i64 18
  %706 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %705, i32 0, i32 1
  %707 = bitcast %union.anon.0* %706 to i16*
  %708 = load i16, i16* %707, align 2
  %709 = zext i16 %708 to i32
  store i32 %709, i32* %26, align 4
  %710 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %711 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %710, i32 0, i32 57
  %712 = load i32, i32* %711, align 4
  %713 = load i32, i32* %26, align 4
  %714 = sub nsw i32 16, %713
  %715 = icmp sgt i32 %712, %714
  br i1 %715, label %716, label %784

716:                                              ; preds = %702
  %717 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %718 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %717, i32 0, i32 39
  %719 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %718, i64 0, i64 18
  %720 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %719, i32 0, i32 0
  %721 = bitcast %union.anon* %720 to i16*
  %722 = load i16, i16* %721, align 4
  %723 = zext i16 %722 to i32
  store i32 %723, i32* %27, align 4
  %724 = load i32, i32* %27, align 4
  %725 = trunc i32 %724 to i16
  %726 = zext i16 %725 to i32
  %727 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %728 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %727, i32 0, i32 57
  %729 = load i32, i32* %728, align 4
  %730 = shl i32 %726, %729
  %731 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %732 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %731, i32 0, i32 56
  %733 = load i16, i16* %732, align 8
  %734 = zext i16 %733 to i32
  %735 = or i32 %734, %730
  %736 = trunc i32 %735 to i16
  store i16 %736, i16* %732, align 8
  %737 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %738 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %737, i32 0, i32 56
  %739 = load i16, i16* %738, align 8
  %740 = zext i16 %739 to i32
  %741 = and i32 %740, 255
  %742 = trunc i32 %741 to i8
  %743 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %744 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %743, i32 0, i32 2
  %745 = load i8*, i8** %744, align 8
  %746 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %747 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %746, i32 0, i32 5
  %748 = load i32, i32* %747, align 8
  %749 = add i32 %748, 1
  store i32 %749, i32* %747, align 8
  %750 = zext i32 %748 to i64
  %751 = getelementptr inbounds i8, i8* %745, i64 %750
  store i8 %742, i8* %751, align 1
  %752 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %753 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %752, i32 0, i32 56
  %754 = load i16, i16* %753, align 8
  %755 = zext i16 %754 to i32
  %756 = ashr i32 %755, 8
  %757 = trunc i32 %756 to i8
  %758 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %759 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %758, i32 0, i32 2
  %760 = load i8*, i8** %759, align 8
  %761 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %762 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %761, i32 0, i32 5
  %763 = load i32, i32* %762, align 8
  %764 = add i32 %763, 1
  store i32 %764, i32* %762, align 8
  %765 = zext i32 %763 to i64
  %766 = getelementptr inbounds i8, i8* %760, i64 %765
  store i8 %757, i8* %766, align 1
  %767 = load i32, i32* %27, align 4
  %768 = trunc i32 %767 to i16
  %769 = zext i16 %768 to i32
  %770 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %771 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %770, i32 0, i32 57
  %772 = load i32, i32* %771, align 4
  %773 = sub nsw i32 16, %772
  %774 = ashr i32 %769, %773
  %775 = trunc i32 %774 to i16
  %776 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %777 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %776, i32 0, i32 56
  store i16 %775, i16* %777, align 8
  %778 = load i32, i32* %26, align 4
  %779 = sub nsw i32 %778, 16
  %780 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %781 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %780, i32 0, i32 57
  %782 = load i32, i32* %781, align 4
  %783 = add nsw i32 %782, %779
  store i32 %783, i32* %781, align 4
  br label %807

784:                                              ; preds = %702
  %785 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %786 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %785, i32 0, i32 39
  %787 = getelementptr inbounds [39 x %struct.ct_data_s], [39 x %struct.ct_data_s]* %786, i64 0, i64 18
  %788 = getelementptr inbounds %struct.ct_data_s, %struct.ct_data_s* %787, i32 0, i32 0
  %789 = bitcast %union.anon* %788 to i16*
  %790 = load i16, i16* %789, align 4
  %791 = zext i16 %790 to i32
  %792 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %793 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %792, i32 0, i32 57
  %794 = load i32, i32* %793, align 4
  %795 = shl i32 %791, %794
  %796 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %797 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %796, i32 0, i32 56
  %798 = load i16, i16* %797, align 8
  %799 = zext i16 %798 to i32
  %800 = or i32 %799, %795
  %801 = trunc i32 %800 to i16
  store i16 %801, i16* %797, align 8
  %802 = load i32, i32* %26, align 4
  %803 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %804 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %803, i32 0, i32 57
  %805 = load i32, i32* %804, align 4
  %806 = add nsw i32 %805, %802
  store i32 %806, i32* %804, align 4
  br label %807

807:                                              ; preds = %784, %716
  store i32 7, i32* %28, align 4
  %808 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %809 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %808, i32 0, i32 57
  %810 = load i32, i32* %809, align 4
  %811 = load i32, i32* %28, align 4
  %812 = sub nsw i32 16, %811
  %813 = icmp sgt i32 %810, %812
  br i1 %813, label %814, label %877

814:                                              ; preds = %807
  %815 = load i32, i32* %11, align 4
  %816 = sub nsw i32 %815, 11
  store i32 %816, i32* %29, align 4
  %817 = load i32, i32* %29, align 4
  %818 = trunc i32 %817 to i16
  %819 = zext i16 %818 to i32
  %820 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %821 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %820, i32 0, i32 57
  %822 = load i32, i32* %821, align 4
  %823 = shl i32 %819, %822
  %824 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %825 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %824, i32 0, i32 56
  %826 = load i16, i16* %825, align 8
  %827 = zext i16 %826 to i32
  %828 = or i32 %827, %823
  %829 = trunc i32 %828 to i16
  store i16 %829, i16* %825, align 8
  %830 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %831 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %830, i32 0, i32 56
  %832 = load i16, i16* %831, align 8
  %833 = zext i16 %832 to i32
  %834 = and i32 %833, 255
  %835 = trunc i32 %834 to i8
  %836 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %837 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %836, i32 0, i32 2
  %838 = load i8*, i8** %837, align 8
  %839 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %840 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %839, i32 0, i32 5
  %841 = load i32, i32* %840, align 8
  %842 = add i32 %841, 1
  store i32 %842, i32* %840, align 8
  %843 = zext i32 %841 to i64
  %844 = getelementptr inbounds i8, i8* %838, i64 %843
  store i8 %835, i8* %844, align 1
  %845 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %846 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %845, i32 0, i32 56
  %847 = load i16, i16* %846, align 8
  %848 = zext i16 %847 to i32
  %849 = ashr i32 %848, 8
  %850 = trunc i32 %849 to i8
  %851 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %852 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %851, i32 0, i32 2
  %853 = load i8*, i8** %852, align 8
  %854 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %855 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %854, i32 0, i32 5
  %856 = load i32, i32* %855, align 8
  %857 = add i32 %856, 1
  store i32 %857, i32* %855, align 8
  %858 = zext i32 %856 to i64
  %859 = getelementptr inbounds i8, i8* %853, i64 %858
  store i8 %850, i8* %859, align 1
  %860 = load i32, i32* %29, align 4
  %861 = trunc i32 %860 to i16
  %862 = zext i16 %861 to i32
  %863 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %864 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %863, i32 0, i32 57
  %865 = load i32, i32* %864, align 4
  %866 = sub nsw i32 16, %865
  %867 = ashr i32 %862, %866
  %868 = trunc i32 %867 to i16
  %869 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %870 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %869, i32 0, i32 56
  store i16 %868, i16* %870, align 8
  %871 = load i32, i32* %28, align 4
  %872 = sub nsw i32 %871, 16
  %873 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %874 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %873, i32 0, i32 57
  %875 = load i32, i32* %874, align 4
  %876 = add nsw i32 %875, %872
  store i32 %876, i32* %874, align 4
  br label %897

877:                                              ; preds = %807
  %878 = load i32, i32* %11, align 4
  %879 = sub nsw i32 %878, 11
  %880 = trunc i32 %879 to i16
  %881 = zext i16 %880 to i32
  %882 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %883 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %882, i32 0, i32 57
  %884 = load i32, i32* %883, align 4
  %885 = shl i32 %881, %884
  %886 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %887 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %886, i32 0, i32 56
  %888 = load i16, i16* %887, align 8
  %889 = zext i16 %888 to i32
  %890 = or i32 %889, %885
  %891 = trunc i32 %890 to i16
  store i16 %891, i16* %887, align 8
  %892 = load i32, i32* %28, align 4
  %893 = load %struct.internal_state*, %struct.internal_state** %4, align 8
  %894 = getelementptr inbounds %struct.internal_state, %struct.internal_state* %893, i32 0, i32 57
  %895 = load i32, i32* %894, align 4
  %896 = add nsw i32 %895, %892
  store i32 %896, i32* %894, align 4
  br label %897

897:                                              ; preds = %877, %814
  br label %898

898:                                              ; preds = %897, %701
  br label %899

899:                                              ; preds = %898, %502
  br label %900

900:                                              ; preds = %899, %185
  br label %901

901:                                              ; preds = %900
  store i32 0, i32* %11, align 4
  %902 = load i32, i32* %9, align 4
  store i32 %902, i32* %8, align 4
  %903 = load i32, i32* %10, align 4
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %905, label %906

905:                                              ; preds = %901
  store i32 138, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %913

906:                                              ; preds = %901
  %907 = load i32, i32* %9, align 4
  %908 = load i32, i32* %10, align 4
  %909 = icmp eq i32 %907, %908
  br i1 %909, label %910, label %911

910:                                              ; preds = %906
  store i32 6, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %912

911:                                              ; preds = %906
  store i32 7, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %912

912:                                              ; preds = %911, %910
  br label %913

913:                                              ; preds = %912, %905
  br label %914

914:                                              ; preds = %913, %63
  %915 = load i32, i32* %7, align 4
  %916 = add nsw i32 %915, 1
  store i32 %916, i32* %7, align 4
  br label %40, !llvm.loop !36

917:                                              ; preds = %40
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
