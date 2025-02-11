; ModuleID = 'infback.c'
source_filename = "infback.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.gz_header_s*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, %struct.code*, %struct.code*, i32, i32, i32, i32, i32, i32, %struct.code*, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.gz_header_s = type { i32, i64, i32, i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"1.2.8-optipng\00", align 1
@inflateBack.order = internal constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 2
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 2
@fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateBackInit_(%struct.z_stream_s* noundef %0, i32 noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_stream_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %10, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %5
  %16 = load i8*, i8** %10, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 112
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %15, %5
  store i32 -6, i32* %6, align 4
  br label %93

27:                                               ; preds = %23
  %28 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %29 = icmp eq %struct.z_stream_s* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %9, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 15
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33, %30, %27
  store i32 -2, i32* %6, align 4
  br label %93

40:                                               ; preds = %36
  %41 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %41, i32 0, i32 6
  store i8* null, i8** %42, align 8
  %43 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %43, i32 0, i32 8
  %45 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %44, align 8
  %46 = icmp eq i8* (i8*, i32, i32)* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %48, i32 0, i32 8
  store i8* (i8*, i32, i32)* @zcalloc, i8* (i8*, i32, i32)** %49, align 8
  %50 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %50, i32 0, i32 10
  store i8* null, i8** %51, align 8
  br label %52

52:                                               ; preds = %47, %40
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %54 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %53, i32 0, i32 9
  %55 = load void (i8*, i8*)*, void (i8*, i8*)** %54, align 8
  %56 = icmp eq void (i8*, i8*)* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %59 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %58, i32 0, i32 9
  store void (i8*, i8*)* @zcfree, void (i8*, i8*)** %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %62 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %61, i32 0, i32 8
  %63 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %62, align 8
  %64 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %65 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %64, i32 0, i32 10
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* %63(i8* noundef %66, i32 noundef 1, i32 noundef 7152)
  %68 = bitcast i8* %67 to %struct.inflate_state*
  store %struct.inflate_state* %68, %struct.inflate_state** %12, align 8
  %69 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %70 = icmp eq %struct.inflate_state* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  store i32 -4, i32* %6, align 4
  br label %93

72:                                               ; preds = %60
  %73 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %74 = bitcast %struct.inflate_state* %73 to %struct.internal_state*
  %75 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %75, i32 0, i32 7
  store %struct.internal_state* %74, %struct.internal_state** %76, align 8
  %77 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %78 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %77, i32 0, i32 5
  store i32 32768, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %81 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 1, %82
  %84 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %85 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %84, i32 0, i32 10
  store i32 %83, i32* %85, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %88 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %87, i32 0, i32 13
  store i8* %86, i8** %88, align 8
  %89 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %90 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %89, i32 0, i32 12
  store i32 0, i32* %90, align 4
  %91 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %92 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %91, i32 0, i32 11
  store i32 0, i32* %92, align 8
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %72, %71, %39, %26
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare hidden i8* @zcalloc(i8* noundef, i32 noundef, i32 noundef) #1

declare hidden void @zcfree(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateBack(%struct.z_stream_s* noundef %0, i32 (i8*, i8**)* noundef %1, i8* noundef %2, i32 (i8*, i8*, i32)* noundef %3, i8* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_stream_s*, align 8
  %8 = alloca i32 (i8*, i8**)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, i8*, i32)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.inflate_state*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.code, align 2
  %22 = alloca %struct.code, align 2
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %7, align 8
  store i32 (i8*, i8**)* %1, i32 (i8*, i8**)** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 (i8*, i8*, i32)* %3, i32 (i8*, i8*, i32)** %10, align 8
  store i8* %4, i8** %11, align 8
  %25 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %26 = icmp eq %struct.z_stream_s* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %5
  %28 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %28, i32 0, i32 7
  %30 = load %struct.internal_state*, %struct.internal_state** %29, align 8
  %31 = icmp eq %struct.internal_state* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %5
  store i32 -2, i32* %6, align 4
  br label %1715

33:                                               ; preds = %27
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %34, i32 0, i32 7
  %36 = load %struct.internal_state*, %struct.internal_state** %35, align 8
  %37 = bitcast %struct.internal_state* %36 to %struct.inflate_state*
  store %struct.inflate_state* %37, %struct.inflate_state** %12, align 8
  %38 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %38, i32 0, i32 6
  store i8* null, i8** %39, align 8
  %40 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %41 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %40, i32 0, i32 0
  store i32 11, i32* %41, align 8
  %42 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %43 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %45 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %44, i32 0, i32 11
  store i32 0, i32* %45, align 8
  %46 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %47 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %33
  %52 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %53 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  br label %56

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ %54, %51 ], [ 0, %55 ]
  store i32 %57, i32* %15, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %58 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %59 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %58, i32 0, i32 13
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %14, align 8
  %61 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %62 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %1706, %56
  %65 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %66 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %1705 [
    i32 11, label %68
    i32 13, label %159
    i32 16, label %311
    i32 20, label %956
    i32 28, label %1682
    i32 29, label %1704
  ]

68:                                               ; preds = %64
  %69 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %70 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %18, align 4
  %76 = and i32 %75, 7
  %77 = load i64, i64* %17, align 8
  %78 = zext i32 %76 to i64
  %79 = lshr i64 %77, %78
  store i64 %79, i64* %17, align 8
  %80 = load i32, i32* %18, align 4
  %81 = and i32 %80, 7
  %82 = load i32, i32* %18, align 4
  %83 = sub i32 %82, %81
  store i32 %83, i32* %18, align 4
  br label %84

84:                                               ; preds = %74
  %85 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %86 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %85, i32 0, i32 0
  store i32 28, i32* %86, align 8
  br label %1706

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %120, %88
  %90 = load i32, i32* %18, align 4
  %91 = icmp ult i32 %90, 3
  br i1 %91, label %92, label %121

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %15, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 %98(i8* noundef %99, i8** noundef %13)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %94
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %15, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %15, align 4
  %109 = load i8*, i8** %13, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %13, align 8
  %111 = load i8, i8* %109, align 1
  %112 = zext i8 %111 to i64
  %113 = load i32, i32* %18, align 4
  %114 = zext i32 %113 to i64
  %115 = shl i64 %112, %114
  %116 = load i64, i64* %17, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %17, align 8
  %118 = load i32, i32* %18, align 4
  %119 = add i32 %118, 8
  store i32 %119, i32* %18, align 4
  br label %120

120:                                              ; preds = %106
  br label %89, !llvm.loop !10

121:                                              ; preds = %89
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %17, align 8
  %124 = trunc i64 %123 to i32
  %125 = and i32 %124, 1
  %126 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %127 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %122
  %129 = load i64, i64* %17, align 8
  %130 = lshr i64 %129, 1
  store i64 %130, i64* %17, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sub i32 %131, 1
  store i32 %132, i32* %18, align 4
  br label %133

133:                                              ; preds = %128
  %134 = load i64, i64* %17, align 8
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 3
  switch i32 %136, label %152 [
    i32 0, label %137
    i32 1, label %140
    i32 2, label %144
    i32 3, label %147
  ]

137:                                              ; preds = %133
  %138 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %139 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %138, i32 0, i32 0
  store i32 13, i32* %139, align 8
  br label %152

140:                                              ; preds = %133
  %141 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  call void @fixedtables(%struct.inflate_state* noundef %141)
  %142 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %143 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %142, i32 0, i32 0
  store i32 20, i32* %143, align 8
  br label %152

144:                                              ; preds = %133
  %145 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %146 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %145, i32 0, i32 0
  store i32 16, i32* %146, align 8
  br label %152

147:                                              ; preds = %133
  %148 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %149 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %148, i32 0, i32 6
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %149, align 8
  %150 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %151 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %150, i32 0, i32 0
  store i32 29, i32* %151, align 8
  br label %152

152:                                              ; preds = %147, %133, %144, %140, %137
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %17, align 8
  %155 = lshr i64 %154, 2
  store i64 %155, i64* %17, align 8
  %156 = load i32, i32* %18, align 4
  %157 = sub i32 %156, 2
  store i32 %157, i32* %18, align 4
  br label %158

158:                                              ; preds = %153
  br label %1706

159:                                              ; preds = %64
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %18, align 4
  %162 = and i32 %161, 7
  %163 = load i64, i64* %17, align 8
  %164 = zext i32 %162 to i64
  %165 = lshr i64 %163, %164
  store i64 %165, i64* %17, align 8
  %166 = load i32, i32* %18, align 4
  %167 = and i32 %166, 7
  %168 = load i32, i32* %18, align 4
  %169 = sub i32 %168, %167
  store i32 %169, i32* %18, align 4
  br label %170

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %203, %171
  %173 = load i32, i32* %18, align 4
  %174 = icmp ult i32 %173, 32
  br i1 %174, label %175, label %204

175:                                              ; preds = %172
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %15, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %177
  %181 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 %181(i8* noundef %182, i8** noundef %13)
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %187, %177
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %15, align 4
  %191 = add i32 %190, -1
  store i32 %191, i32* %15, align 4
  %192 = load i8*, i8** %13, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %13, align 8
  %194 = load i8, i8* %192, align 1
  %195 = zext i8 %194 to i64
  %196 = load i32, i32* %18, align 4
  %197 = zext i32 %196 to i64
  %198 = shl i64 %195, %197
  %199 = load i64, i64* %17, align 8
  %200 = add i64 %199, %198
  store i64 %200, i64* %17, align 8
  %201 = load i32, i32* %18, align 4
  %202 = add i32 %201, 8
  store i32 %202, i32* %18, align 4
  br label %203

203:                                              ; preds = %189
  br label %172, !llvm.loop !12

204:                                              ; preds = %172
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %17, align 8
  %207 = and i64 %206, 65535
  %208 = load i64, i64* %17, align 8
  %209 = lshr i64 %208, 16
  %210 = xor i64 %209, 65535
  %211 = icmp ne i64 %207, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %214 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %213, i32 0, i32 6
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8** %214, align 8
  %215 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %216 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %215, i32 0, i32 0
  store i32 29, i32* %216, align 8
  br label %1706

217:                                              ; preds = %205
  %218 = load i64, i64* %17, align 8
  %219 = trunc i64 %218 to i32
  %220 = and i32 %219, 65535
  %221 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %222 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %221, i32 0, i32 16
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %217
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %281, %224
  %226 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %227 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %226, i32 0, i32 16
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %308

230:                                              ; preds = %225
  %231 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %232 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %231, i32 0, i32 16
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %19, align 4
  br label %234

234:                                              ; preds = %230
  %235 = load i32, i32* %15, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %234
  %238 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %239 = load i8*, i8** %9, align 8
  %240 = call i32 %238(i8* noundef %239, i8** noundef %13)
  store i32 %240, i32* %15, align 4
  %241 = load i32, i32* %15, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %237
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

244:                                              ; preds = %237
  br label %245

245:                                              ; preds = %244, %234
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %16, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %268

250:                                              ; preds = %247
  %251 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %252 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %251, i32 0, i32 13
  %253 = load i8*, i8** %252, align 8
  store i8* %253, i8** %14, align 8
  %254 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %255 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %254, i32 0, i32 10
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %16, align 4
  %257 = load i32, i32* %16, align 4
  %258 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %259 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %258, i32 0, i32 11
  store i32 %257, i32* %259, align 8
  %260 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %10, align 8
  %261 = load i8*, i8** %11, align 8
  %262 = load i8*, i8** %14, align 8
  %263 = load i32, i32* %16, align 4
  %264 = call i32 %260(i8* noundef %261, i8* noundef %262, i32 noundef %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %250
  store i32 -5, i32* %24, align 4
  br label %1707

267:                                              ; preds = %250
  br label %268

268:                                              ; preds = %267, %247
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %19, align 4
  %271 = load i32, i32* %15, align 4
  %272 = icmp ugt i32 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %269
  %274 = load i32, i32* %15, align 4
  store i32 %274, i32* %19, align 4
  br label %275

275:                                              ; preds = %273, %269
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* %16, align 4
  %278 = icmp ugt i32 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = load i32, i32* %16, align 4
  store i32 %280, i32* %19, align 4
  br label %281

281:                                              ; preds = %279, %275
  %282 = load i8*, i8** %14, align 8
  %283 = load i8*, i8** %13, align 8
  %284 = load i32, i32* %19, align 4
  %285 = zext i32 %284 to i64
  %286 = load i8*, i8** %14, align 8
  %287 = call i64 @llvm.objectsize.i64.p0i8(i8* %286, i1 false, i1 true, i1 false)
  %288 = call i8* @__memcpy_chk(i8* noundef %282, i8* noundef %283, i64 noundef %285, i64 noundef %287) #5
  %289 = load i32, i32* %19, align 4
  %290 = load i32, i32* %15, align 4
  %291 = sub i32 %290, %289
  store i32 %291, i32* %15, align 4
  %292 = load i32, i32* %19, align 4
  %293 = load i8*, i8** %13, align 8
  %294 = zext i32 %292 to i64
  %295 = getelementptr inbounds i8, i8* %293, i64 %294
  store i8* %295, i8** %13, align 8
  %296 = load i32, i32* %19, align 4
  %297 = load i32, i32* %16, align 4
  %298 = sub i32 %297, %296
  store i32 %298, i32* %16, align 4
  %299 = load i32, i32* %19, align 4
  %300 = load i8*, i8** %14, align 8
  %301 = zext i32 %299 to i64
  %302 = getelementptr inbounds i8, i8* %300, i64 %301
  store i8* %302, i8** %14, align 8
  %303 = load i32, i32* %19, align 4
  %304 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %305 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %304, i32 0, i32 16
  %306 = load i32, i32* %305, align 4
  %307 = sub i32 %306, %303
  store i32 %307, i32* %305, align 4
  br label %225, !llvm.loop !13

308:                                              ; preds = %225
  %309 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %310 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %309, i32 0, i32 0
  store i32 11, i32* %310, align 8
  br label %1706

311:                                              ; preds = %64
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %344, %312
  %314 = load i32, i32* %18, align 4
  %315 = icmp ult i32 %314, 14
  br i1 %315, label %316, label %345

316:                                              ; preds = %313
  br label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %15, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %318
  %322 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %323 = load i8*, i8** %9, align 8
  %324 = call i32 %322(i8* noundef %323, i8** noundef %13)
  store i32 %324, i32* %15, align 4
  %325 = load i32, i32* %15, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %321
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

328:                                              ; preds = %321
  br label %329

329:                                              ; preds = %328, %318
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %15, align 4
  %332 = add i32 %331, -1
  store i32 %332, i32* %15, align 4
  %333 = load i8*, i8** %13, align 8
  %334 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %334, i8** %13, align 8
  %335 = load i8, i8* %333, align 1
  %336 = zext i8 %335 to i64
  %337 = load i32, i32* %18, align 4
  %338 = zext i32 %337 to i64
  %339 = shl i64 %336, %338
  %340 = load i64, i64* %17, align 8
  %341 = add i64 %340, %339
  store i64 %341, i64* %17, align 8
  %342 = load i32, i32* %18, align 4
  %343 = add i32 %342, 8
  store i32 %343, i32* %18, align 4
  br label %344

344:                                              ; preds = %330
  br label %313, !llvm.loop !14

345:                                              ; preds = %313
  br label %346

346:                                              ; preds = %345
  %347 = load i64, i64* %17, align 8
  %348 = trunc i64 %347 to i32
  %349 = and i32 %348, 31
  %350 = add i32 %349, 257
  %351 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %352 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %351, i32 0, i32 24
  store i32 %350, i32* %352, align 4
  br label %353

353:                                              ; preds = %346
  %354 = load i64, i64* %17, align 8
  %355 = lshr i64 %354, 5
  store i64 %355, i64* %17, align 8
  %356 = load i32, i32* %18, align 4
  %357 = sub i32 %356, 5
  store i32 %357, i32* %18, align 4
  br label %358

358:                                              ; preds = %353
  %359 = load i64, i64* %17, align 8
  %360 = trunc i64 %359 to i32
  %361 = and i32 %360, 31
  %362 = add i32 %361, 1
  %363 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %364 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %363, i32 0, i32 25
  store i32 %362, i32* %364, align 8
  br label %365

365:                                              ; preds = %358
  %366 = load i64, i64* %17, align 8
  %367 = lshr i64 %366, 5
  store i64 %367, i64* %17, align 8
  %368 = load i32, i32* %18, align 4
  %369 = sub i32 %368, 5
  store i32 %369, i32* %18, align 4
  br label %370

370:                                              ; preds = %365
  %371 = load i64, i64* %17, align 8
  %372 = trunc i64 %371 to i32
  %373 = and i32 %372, 15
  %374 = add i32 %373, 4
  %375 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %376 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %375, i32 0, i32 23
  store i32 %374, i32* %376, align 8
  br label %377

377:                                              ; preds = %370
  %378 = load i64, i64* %17, align 8
  %379 = lshr i64 %378, 4
  store i64 %379, i64* %17, align 8
  %380 = load i32, i32* %18, align 4
  %381 = sub i32 %380, 4
  store i32 %381, i32* %18, align 4
  br label %382

382:                                              ; preds = %377
  %383 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %384 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %383, i32 0, i32 24
  %385 = load i32, i32* %384, align 4
  %386 = icmp ugt i32 %385, 286
  br i1 %386, label %392, label %387

387:                                              ; preds = %382
  %388 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %389 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %388, i32 0, i32 25
  %390 = load i32, i32* %389, align 8
  %391 = icmp ugt i32 %390, 30
  br i1 %391, label %392, label %397

392:                                              ; preds = %387, %382
  %393 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %394 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %393, i32 0, i32 6
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8** %394, align 8
  %395 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %396 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %395, i32 0, i32 0
  store i32 29, i32* %396, align 8
  br label %1706

397:                                              ; preds = %387
  %398 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %399 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %398, i32 0, i32 26
  store i32 0, i32* %399, align 4
  br label %400

400:                                              ; preds = %464, %397
  %401 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %402 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %401, i32 0, i32 26
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %405 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %404, i32 0, i32 23
  %406 = load i32, i32* %405, align 8
  %407 = icmp ult i32 %403, %406
  br i1 %407, label %408, label %465

408:                                              ; preds = %400
  br label %409

409:                                              ; preds = %408
  br label %410

410:                                              ; preds = %441, %409
  %411 = load i32, i32* %18, align 4
  %412 = icmp ult i32 %411, 3
  br i1 %412, label %413, label %442

413:                                              ; preds = %410
  br label %414

414:                                              ; preds = %413
  br label %415

415:                                              ; preds = %414
  %416 = load i32, i32* %15, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %426

418:                                              ; preds = %415
  %419 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %420 = load i8*, i8** %9, align 8
  %421 = call i32 %419(i8* noundef %420, i8** noundef %13)
  store i32 %421, i32* %15, align 4
  %422 = load i32, i32* %15, align 4
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %418
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

425:                                              ; preds = %418
  br label %426

426:                                              ; preds = %425, %415
  br label %427

427:                                              ; preds = %426
  %428 = load i32, i32* %15, align 4
  %429 = add i32 %428, -1
  store i32 %429, i32* %15, align 4
  %430 = load i8*, i8** %13, align 8
  %431 = getelementptr inbounds i8, i8* %430, i32 1
  store i8* %431, i8** %13, align 8
  %432 = load i8, i8* %430, align 1
  %433 = zext i8 %432 to i64
  %434 = load i32, i32* %18, align 4
  %435 = zext i32 %434 to i64
  %436 = shl i64 %433, %435
  %437 = load i64, i64* %17, align 8
  %438 = add i64 %437, %436
  store i64 %438, i64* %17, align 8
  %439 = load i32, i32* %18, align 4
  %440 = add i32 %439, 8
  store i32 %440, i32* %18, align 4
  br label %441

441:                                              ; preds = %427
  br label %410, !llvm.loop !15

442:                                              ; preds = %410
  br label %443

443:                                              ; preds = %442
  %444 = load i64, i64* %17, align 8
  %445 = trunc i64 %444 to i32
  %446 = and i32 %445, 7
  %447 = trunc i32 %446 to i16
  %448 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %449 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %448, i32 0, i32 28
  %450 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %451 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %450, i32 0, i32 26
  %452 = load i32, i32* %451, align 4
  %453 = add i32 %452, 1
  store i32 %453, i32* %451, align 4
  %454 = zext i32 %452 to i64
  %455 = getelementptr inbounds [19 x i16], [19 x i16]* @inflateBack.order, i64 0, i64 %454
  %456 = load i16, i16* %455, align 2
  %457 = zext i16 %456 to i64
  %458 = getelementptr inbounds [320 x i16], [320 x i16]* %449, i64 0, i64 %457
  store i16 %447, i16* %458, align 2
  br label %459

459:                                              ; preds = %443
  %460 = load i64, i64* %17, align 8
  %461 = lshr i64 %460, 3
  store i64 %461, i64* %17, align 8
  %462 = load i32, i32* %18, align 4
  %463 = sub i32 %462, 3
  store i32 %463, i32* %18, align 4
  br label %464

464:                                              ; preds = %459
  br label %400, !llvm.loop !16

465:                                              ; preds = %400
  br label %466

466:                                              ; preds = %471, %465
  %467 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %468 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %467, i32 0, i32 26
  %469 = load i32, i32* %468, align 4
  %470 = icmp ult i32 %469, 19
  br i1 %470, label %471, label %483

471:                                              ; preds = %466
  %472 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %473 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %472, i32 0, i32 28
  %474 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %475 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %474, i32 0, i32 26
  %476 = load i32, i32* %475, align 4
  %477 = add i32 %476, 1
  store i32 %477, i32* %475, align 4
  %478 = zext i32 %476 to i64
  %479 = getelementptr inbounds [19 x i16], [19 x i16]* @inflateBack.order, i64 0, i64 %478
  %480 = load i16, i16* %479, align 2
  %481 = zext i16 %480 to i64
  %482 = getelementptr inbounds [320 x i16], [320 x i16]* %473, i64 0, i64 %481
  store i16 0, i16* %482, align 2
  br label %466, !llvm.loop !17

483:                                              ; preds = %466
  %484 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %485 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %484, i32 0, i32 30
  %486 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %485, i64 0, i64 0
  %487 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %488 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %487, i32 0, i32 27
  store %struct.code* %486, %struct.code** %488, align 8
  %489 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %490 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %489, i32 0, i32 27
  %491 = load %struct.code*, %struct.code** %490, align 8
  %492 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %493 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %492, i32 0, i32 19
  store %struct.code* %491, %struct.code** %493, align 8
  %494 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %495 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %494, i32 0, i32 21
  store i32 7, i32* %495, align 8
  %496 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %497 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %496, i32 0, i32 28
  %498 = getelementptr inbounds [320 x i16], [320 x i16]* %497, i64 0, i64 0
  %499 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %500 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %499, i32 0, i32 27
  %501 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %502 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %501, i32 0, i32 21
  %503 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %504 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %503, i32 0, i32 29
  %505 = getelementptr inbounds [288 x i16], [288 x i16]* %504, i64 0, i64 0
  %506 = call i32 @inflate_table(i32 noundef 0, i16* noundef %498, i32 noundef 19, %struct.code** noundef %500, i32* noundef %502, i16* noundef %505)
  store i32 %506, i32* %24, align 4
  %507 = load i32, i32* %24, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %483
  %510 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %511 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %510, i32 0, i32 6
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %511, align 8
  %512 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %513 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %512, i32 0, i32 0
  store i32 29, i32* %513, align 8
  br label %1706

514:                                              ; preds = %483
  %515 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %516 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %515, i32 0, i32 26
  store i32 0, i32* %516, align 4
  br label %517

517:                                              ; preds = %866, %514
  %518 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %519 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %518, i32 0, i32 26
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %522 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %521, i32 0, i32 24
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %525 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %524, i32 0, i32 25
  %526 = load i32, i32* %525, align 8
  %527 = add i32 %523, %526
  %528 = icmp ult i32 %520, %527
  br i1 %528, label %529, label %867

529:                                              ; preds = %517
  br label %530

530:                                              ; preds = %580, %529
  %531 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %532 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %531, i32 0, i32 19
  %533 = load %struct.code*, %struct.code** %532, align 8
  %534 = load i64, i64* %17, align 8
  %535 = trunc i64 %534 to i32
  %536 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %537 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %536, i32 0, i32 21
  %538 = load i32, i32* %537, align 8
  %539 = shl i32 1, %538
  %540 = sub i32 %539, 1
  %541 = and i32 %535, %540
  %542 = zext i32 %541 to i64
  %543 = getelementptr inbounds %struct.code, %struct.code* %533, i64 %542
  %544 = bitcast %struct.code* %21 to i8*
  %545 = bitcast %struct.code* %543 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %544, i8* align 2 %545, i64 4, i1 false)
  %546 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %547 = load i8, i8* %546, align 1
  %548 = zext i8 %547 to i32
  %549 = load i32, i32* %18, align 4
  %550 = icmp ule i32 %548, %549
  br i1 %550, label %551, label %552

551:                                              ; preds = %530
  br label %581

552:                                              ; preds = %530
  br label %553

553:                                              ; preds = %552
  br label %554

554:                                              ; preds = %553
  %555 = load i32, i32* %15, align 4
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %565

557:                                              ; preds = %554
  %558 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %559 = load i8*, i8** %9, align 8
  %560 = call i32 %558(i8* noundef %559, i8** noundef %13)
  store i32 %560, i32* %15, align 4
  %561 = load i32, i32* %15, align 4
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %557
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

564:                                              ; preds = %557
  br label %565

565:                                              ; preds = %564, %554
  br label %566

566:                                              ; preds = %565
  %567 = load i32, i32* %15, align 4
  %568 = add i32 %567, -1
  store i32 %568, i32* %15, align 4
  %569 = load i8*, i8** %13, align 8
  %570 = getelementptr inbounds i8, i8* %569, i32 1
  store i8* %570, i8** %13, align 8
  %571 = load i8, i8* %569, align 1
  %572 = zext i8 %571 to i64
  %573 = load i32, i32* %18, align 4
  %574 = zext i32 %573 to i64
  %575 = shl i64 %572, %574
  %576 = load i64, i64* %17, align 8
  %577 = add i64 %576, %575
  store i64 %577, i64* %17, align 8
  %578 = load i32, i32* %18, align 4
  %579 = add i32 %578, 8
  store i32 %579, i32* %18, align 4
  br label %580

580:                                              ; preds = %566
  br label %530

581:                                              ; preds = %551
  %582 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 2
  %583 = load i16, i16* %582, align 2
  %584 = zext i16 %583 to i32
  %585 = icmp slt i32 %584, 16
  br i1 %585, label %586, label %610

586:                                              ; preds = %581
  br label %587

587:                                              ; preds = %586
  %588 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %589 = load i8, i8* %588, align 1
  %590 = zext i8 %589 to i32
  %591 = load i64, i64* %17, align 8
  %592 = zext i32 %590 to i64
  %593 = lshr i64 %591, %592
  store i64 %593, i64* %17, align 8
  %594 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %595 = load i8, i8* %594, align 1
  %596 = zext i8 %595 to i32
  %597 = load i32, i32* %18, align 4
  %598 = sub i32 %597, %596
  store i32 %598, i32* %18, align 4
  br label %599

599:                                              ; preds = %587
  %600 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 2
  %601 = load i16, i16* %600, align 2
  %602 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %603 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %602, i32 0, i32 28
  %604 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %605 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %604, i32 0, i32 26
  %606 = load i32, i32* %605, align 4
  %607 = add i32 %606, 1
  store i32 %607, i32* %605, align 4
  %608 = zext i32 %606 to i64
  %609 = getelementptr inbounds [320 x i16], [320 x i16]* %603, i64 0, i64 %608
  store i16 %601, i16* %609, align 2
  br label %866

610:                                              ; preds = %581
  %611 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 2
  %612 = load i16, i16* %611, align 2
  %613 = zext i16 %612 to i32
  %614 = icmp eq i32 %613, 16
  br i1 %614, label %615, label %698

615:                                              ; preds = %610
  br label %616

616:                                              ; preds = %615
  br label %617

617:                                              ; preds = %652, %616
  %618 = load i32, i32* %18, align 4
  %619 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %620 = load i8, i8* %619, align 1
  %621 = zext i8 %620 to i32
  %622 = add nsw i32 %621, 2
  %623 = icmp ult i32 %618, %622
  br i1 %623, label %624, label %653

624:                                              ; preds = %617
  br label %625

625:                                              ; preds = %624
  br label %626

626:                                              ; preds = %625
  %627 = load i32, i32* %15, align 4
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %637

629:                                              ; preds = %626
  %630 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %631 = load i8*, i8** %9, align 8
  %632 = call i32 %630(i8* noundef %631, i8** noundef %13)
  store i32 %632, i32* %15, align 4
  %633 = load i32, i32* %15, align 4
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %636

635:                                              ; preds = %629
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

636:                                              ; preds = %629
  br label %637

637:                                              ; preds = %636, %626
  br label %638

638:                                              ; preds = %637
  %639 = load i32, i32* %15, align 4
  %640 = add i32 %639, -1
  store i32 %640, i32* %15, align 4
  %641 = load i8*, i8** %13, align 8
  %642 = getelementptr inbounds i8, i8* %641, i32 1
  store i8* %642, i8** %13, align 8
  %643 = load i8, i8* %641, align 1
  %644 = zext i8 %643 to i64
  %645 = load i32, i32* %18, align 4
  %646 = zext i32 %645 to i64
  %647 = shl i64 %644, %646
  %648 = load i64, i64* %17, align 8
  %649 = add i64 %648, %647
  store i64 %649, i64* %17, align 8
  %650 = load i32, i32* %18, align 4
  %651 = add i32 %650, 8
  store i32 %651, i32* %18, align 4
  br label %652

652:                                              ; preds = %638
  br label %617, !llvm.loop !18

653:                                              ; preds = %617
  br label %654

654:                                              ; preds = %653
  br label %655

655:                                              ; preds = %654
  %656 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %657 = load i8, i8* %656, align 1
  %658 = zext i8 %657 to i32
  %659 = load i64, i64* %17, align 8
  %660 = zext i32 %658 to i64
  %661 = lshr i64 %659, %660
  store i64 %661, i64* %17, align 8
  %662 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %663 = load i8, i8* %662, align 1
  %664 = zext i8 %663 to i32
  %665 = load i32, i32* %18, align 4
  %666 = sub i32 %665, %664
  store i32 %666, i32* %18, align 4
  br label %667

667:                                              ; preds = %655
  %668 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %669 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %668, i32 0, i32 26
  %670 = load i32, i32* %669, align 4
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %677

672:                                              ; preds = %667
  %673 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %674 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %673, i32 0, i32 6
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %674, align 8
  %675 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %676 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %675, i32 0, i32 0
  store i32 29, i32* %676, align 8
  br label %867

677:                                              ; preds = %667
  %678 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %679 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %678, i32 0, i32 28
  %680 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %681 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %680, i32 0, i32 26
  %682 = load i32, i32* %681, align 4
  %683 = sub i32 %682, 1
  %684 = zext i32 %683 to i64
  %685 = getelementptr inbounds [320 x i16], [320 x i16]* %679, i64 0, i64 %684
  %686 = load i16, i16* %685, align 2
  %687 = zext i16 %686 to i32
  store i32 %687, i32* %23, align 4
  %688 = load i64, i64* %17, align 8
  %689 = trunc i64 %688 to i32
  %690 = and i32 %689, 3
  %691 = add i32 3, %690
  store i32 %691, i32* %19, align 4
  br label %692

692:                                              ; preds = %677
  %693 = load i64, i64* %17, align 8
  %694 = lshr i64 %693, 2
  store i64 %694, i64* %17, align 8
  %695 = load i32, i32* %18, align 4
  %696 = sub i32 %695, 2
  store i32 %696, i32* %18, align 4
  br label %697

697:                                              ; preds = %692
  br label %830

698:                                              ; preds = %610
  %699 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 2
  %700 = load i16, i16* %699, align 2
  %701 = zext i16 %700 to i32
  %702 = icmp eq i32 %701, 17
  br i1 %702, label %703, label %766

703:                                              ; preds = %698
  br label %704

704:                                              ; preds = %703
  br label %705

705:                                              ; preds = %740, %704
  %706 = load i32, i32* %18, align 4
  %707 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %708 = load i8, i8* %707, align 1
  %709 = zext i8 %708 to i32
  %710 = add nsw i32 %709, 3
  %711 = icmp ult i32 %706, %710
  br i1 %711, label %712, label %741

712:                                              ; preds = %705
  br label %713

713:                                              ; preds = %712
  br label %714

714:                                              ; preds = %713
  %715 = load i32, i32* %15, align 4
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %725

717:                                              ; preds = %714
  %718 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %719 = load i8*, i8** %9, align 8
  %720 = call i32 %718(i8* noundef %719, i8** noundef %13)
  store i32 %720, i32* %15, align 4
  %721 = load i32, i32* %15, align 4
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %724

723:                                              ; preds = %717
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

724:                                              ; preds = %717
  br label %725

725:                                              ; preds = %724, %714
  br label %726

726:                                              ; preds = %725
  %727 = load i32, i32* %15, align 4
  %728 = add i32 %727, -1
  store i32 %728, i32* %15, align 4
  %729 = load i8*, i8** %13, align 8
  %730 = getelementptr inbounds i8, i8* %729, i32 1
  store i8* %730, i8** %13, align 8
  %731 = load i8, i8* %729, align 1
  %732 = zext i8 %731 to i64
  %733 = load i32, i32* %18, align 4
  %734 = zext i32 %733 to i64
  %735 = shl i64 %732, %734
  %736 = load i64, i64* %17, align 8
  %737 = add i64 %736, %735
  store i64 %737, i64* %17, align 8
  %738 = load i32, i32* %18, align 4
  %739 = add i32 %738, 8
  store i32 %739, i32* %18, align 4
  br label %740

740:                                              ; preds = %726
  br label %705, !llvm.loop !19

741:                                              ; preds = %705
  br label %742

742:                                              ; preds = %741
  br label %743

743:                                              ; preds = %742
  %744 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %745 = load i8, i8* %744, align 1
  %746 = zext i8 %745 to i32
  %747 = load i64, i64* %17, align 8
  %748 = zext i32 %746 to i64
  %749 = lshr i64 %747, %748
  store i64 %749, i64* %17, align 8
  %750 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %751 = load i8, i8* %750, align 1
  %752 = zext i8 %751 to i32
  %753 = load i32, i32* %18, align 4
  %754 = sub i32 %753, %752
  store i32 %754, i32* %18, align 4
  br label %755

755:                                              ; preds = %743
  store i32 0, i32* %23, align 4
  %756 = load i64, i64* %17, align 8
  %757 = trunc i64 %756 to i32
  %758 = and i32 %757, 7
  %759 = add i32 3, %758
  store i32 %759, i32* %19, align 4
  br label %760

760:                                              ; preds = %755
  %761 = load i64, i64* %17, align 8
  %762 = lshr i64 %761, 3
  store i64 %762, i64* %17, align 8
  %763 = load i32, i32* %18, align 4
  %764 = sub i32 %763, 3
  store i32 %764, i32* %18, align 4
  br label %765

765:                                              ; preds = %760
  br label %829

766:                                              ; preds = %698
  br label %767

767:                                              ; preds = %766
  br label %768

768:                                              ; preds = %803, %767
  %769 = load i32, i32* %18, align 4
  %770 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %771 = load i8, i8* %770, align 1
  %772 = zext i8 %771 to i32
  %773 = add nsw i32 %772, 7
  %774 = icmp ult i32 %769, %773
  br i1 %774, label %775, label %804

775:                                              ; preds = %768
  br label %776

776:                                              ; preds = %775
  br label %777

777:                                              ; preds = %776
  %778 = load i32, i32* %15, align 4
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %788

780:                                              ; preds = %777
  %781 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %782 = load i8*, i8** %9, align 8
  %783 = call i32 %781(i8* noundef %782, i8** noundef %13)
  store i32 %783, i32* %15, align 4
  %784 = load i32, i32* %15, align 4
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %786, label %787

786:                                              ; preds = %780
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

787:                                              ; preds = %780
  br label %788

788:                                              ; preds = %787, %777
  br label %789

789:                                              ; preds = %788
  %790 = load i32, i32* %15, align 4
  %791 = add i32 %790, -1
  store i32 %791, i32* %15, align 4
  %792 = load i8*, i8** %13, align 8
  %793 = getelementptr inbounds i8, i8* %792, i32 1
  store i8* %793, i8** %13, align 8
  %794 = load i8, i8* %792, align 1
  %795 = zext i8 %794 to i64
  %796 = load i32, i32* %18, align 4
  %797 = zext i32 %796 to i64
  %798 = shl i64 %795, %797
  %799 = load i64, i64* %17, align 8
  %800 = add i64 %799, %798
  store i64 %800, i64* %17, align 8
  %801 = load i32, i32* %18, align 4
  %802 = add i32 %801, 8
  store i32 %802, i32* %18, align 4
  br label %803

803:                                              ; preds = %789
  br label %768, !llvm.loop !20

804:                                              ; preds = %768
  br label %805

805:                                              ; preds = %804
  br label %806

806:                                              ; preds = %805
  %807 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %808 = load i8, i8* %807, align 1
  %809 = zext i8 %808 to i32
  %810 = load i64, i64* %17, align 8
  %811 = zext i32 %809 to i64
  %812 = lshr i64 %810, %811
  store i64 %812, i64* %17, align 8
  %813 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %814 = load i8, i8* %813, align 1
  %815 = zext i8 %814 to i32
  %816 = load i32, i32* %18, align 4
  %817 = sub i32 %816, %815
  store i32 %817, i32* %18, align 4
  br label %818

818:                                              ; preds = %806
  store i32 0, i32* %23, align 4
  %819 = load i64, i64* %17, align 8
  %820 = trunc i64 %819 to i32
  %821 = and i32 %820, 127
  %822 = add i32 11, %821
  store i32 %822, i32* %19, align 4
  br label %823

823:                                              ; preds = %818
  %824 = load i64, i64* %17, align 8
  %825 = lshr i64 %824, 7
  store i64 %825, i64* %17, align 8
  %826 = load i32, i32* %18, align 4
  %827 = sub i32 %826, 7
  store i32 %827, i32* %18, align 4
  br label %828

828:                                              ; preds = %823
  br label %829

829:                                              ; preds = %828, %765
  br label %830

830:                                              ; preds = %829, %697
  %831 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %832 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %831, i32 0, i32 26
  %833 = load i32, i32* %832, align 4
  %834 = load i32, i32* %19, align 4
  %835 = add i32 %833, %834
  %836 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %837 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %836, i32 0, i32 24
  %838 = load i32, i32* %837, align 4
  %839 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %840 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %839, i32 0, i32 25
  %841 = load i32, i32* %840, align 8
  %842 = add i32 %838, %841
  %843 = icmp ugt i32 %835, %842
  br i1 %843, label %844, label %849

844:                                              ; preds = %830
  %845 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %846 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %845, i32 0, i32 6
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %846, align 8
  %847 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %848 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %847, i32 0, i32 0
  store i32 29, i32* %848, align 8
  br label %867

849:                                              ; preds = %830
  br label %850

850:                                              ; preds = %854, %849
  %851 = load i32, i32* %19, align 4
  %852 = add i32 %851, -1
  store i32 %852, i32* %19, align 4
  %853 = icmp ne i32 %851, 0
  br i1 %853, label %854, label %865

854:                                              ; preds = %850
  %855 = load i32, i32* %23, align 4
  %856 = trunc i32 %855 to i16
  %857 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %858 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %857, i32 0, i32 28
  %859 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %860 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %859, i32 0, i32 26
  %861 = load i32, i32* %860, align 4
  %862 = add i32 %861, 1
  store i32 %862, i32* %860, align 4
  %863 = zext i32 %861 to i64
  %864 = getelementptr inbounds [320 x i16], [320 x i16]* %858, i64 0, i64 %863
  store i16 %856, i16* %864, align 2
  br label %850, !llvm.loop !21

865:                                              ; preds = %850
  br label %866

866:                                              ; preds = %865, %599
  br label %517, !llvm.loop !22

867:                                              ; preds = %844, %672, %517
  %868 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %869 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %868, i32 0, i32 0
  %870 = load i32, i32* %869, align 8
  %871 = icmp eq i32 %870, 29
  br i1 %871, label %872, label %873

872:                                              ; preds = %867
  br label %1706

873:                                              ; preds = %867
  %874 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %875 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %874, i32 0, i32 28
  %876 = getelementptr inbounds [320 x i16], [320 x i16]* %875, i64 0, i64 256
  %877 = load i16, i16* %876, align 8
  %878 = zext i16 %877 to i32
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %880, label %885

880:                                              ; preds = %873
  %881 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %882 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %881, i32 0, i32 6
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8** %882, align 8
  %883 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %884 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %883, i32 0, i32 0
  store i32 29, i32* %884, align 8
  br label %1706

885:                                              ; preds = %873
  %886 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %887 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %886, i32 0, i32 30
  %888 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %887, i64 0, i64 0
  %889 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %890 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %889, i32 0, i32 27
  store %struct.code* %888, %struct.code** %890, align 8
  %891 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %892 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %891, i32 0, i32 27
  %893 = load %struct.code*, %struct.code** %892, align 8
  %894 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %895 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %894, i32 0, i32 19
  store %struct.code* %893, %struct.code** %895, align 8
  %896 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %897 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %896, i32 0, i32 21
  store i32 9, i32* %897, align 8
  %898 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %899 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %898, i32 0, i32 28
  %900 = getelementptr inbounds [320 x i16], [320 x i16]* %899, i64 0, i64 0
  %901 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %902 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %901, i32 0, i32 24
  %903 = load i32, i32* %902, align 4
  %904 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %905 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %904, i32 0, i32 27
  %906 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %907 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %906, i32 0, i32 21
  %908 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %909 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %908, i32 0, i32 29
  %910 = getelementptr inbounds [288 x i16], [288 x i16]* %909, i64 0, i64 0
  %911 = call i32 @inflate_table(i32 noundef 1, i16* noundef %900, i32 noundef %903, %struct.code** noundef %905, i32* noundef %907, i16* noundef %910)
  store i32 %911, i32* %24, align 4
  %912 = load i32, i32* %24, align 4
  %913 = icmp ne i32 %912, 0
  br i1 %913, label %914, label %919

914:                                              ; preds = %885
  %915 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %916 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %915, i32 0, i32 6
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8** %916, align 8
  %917 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %918 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %917, i32 0, i32 0
  store i32 29, i32* %918, align 8
  br label %1706

919:                                              ; preds = %885
  %920 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %921 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %920, i32 0, i32 27
  %922 = load %struct.code*, %struct.code** %921, align 8
  %923 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %924 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %923, i32 0, i32 20
  store %struct.code* %922, %struct.code** %924, align 8
  %925 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %926 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %925, i32 0, i32 22
  store i32 6, i32* %926, align 4
  %927 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %928 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %927, i32 0, i32 28
  %929 = getelementptr inbounds [320 x i16], [320 x i16]* %928, i64 0, i64 0
  %930 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %931 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %930, i32 0, i32 24
  %932 = load i32, i32* %931, align 4
  %933 = zext i32 %932 to i64
  %934 = getelementptr inbounds i16, i16* %929, i64 %933
  %935 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %936 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %935, i32 0, i32 25
  %937 = load i32, i32* %936, align 8
  %938 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %939 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %938, i32 0, i32 27
  %940 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %941 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %940, i32 0, i32 22
  %942 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %943 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %942, i32 0, i32 29
  %944 = getelementptr inbounds [288 x i16], [288 x i16]* %943, i64 0, i64 0
  %945 = call i32 @inflate_table(i32 noundef 2, i16* noundef %934, i32 noundef %937, %struct.code** noundef %939, i32* noundef %941, i16* noundef %944)
  store i32 %945, i32* %24, align 4
  %946 = load i32, i32* %24, align 4
  %947 = icmp ne i32 %946, 0
  br i1 %947, label %948, label %953

948:                                              ; preds = %919
  %949 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %950 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %949, i32 0, i32 6
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8** %950, align 8
  %951 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %952 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %951, i32 0, i32 0
  store i32 29, i32* %952, align 8
  br label %1706

953:                                              ; preds = %919
  %954 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %955 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %954, i32 0, i32 0
  store i32 20, i32* %955, align 8
  br label %956

956:                                              ; preds = %64, %953
  %957 = load i32, i32* %15, align 4
  %958 = icmp uge i32 %957, 6
  br i1 %958, label %959, label %1023

959:                                              ; preds = %956
  %960 = load i32, i32* %16, align 4
  %961 = icmp uge i32 %960, 258
  br i1 %961, label %962, label %1023

962:                                              ; preds = %959
  br label %963

963:                                              ; preds = %962
  %964 = load i8*, i8** %14, align 8
  %965 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %966 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %965, i32 0, i32 3
  store i8* %964, i8** %966, align 8
  %967 = load i32, i32* %16, align 4
  %968 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %969 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %968, i32 0, i32 4
  store i32 %967, i32* %969, align 8
  %970 = load i8*, i8** %13, align 8
  %971 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %972 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %971, i32 0, i32 0
  store i8* %970, i8** %972, align 8
  %973 = load i32, i32* %15, align 4
  %974 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %975 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %974, i32 0, i32 1
  store i32 %973, i32* %975, align 8
  %976 = load i64, i64* %17, align 8
  %977 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %978 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %977, i32 0, i32 14
  store i64 %976, i64* %978, align 8
  %979 = load i32, i32* %18, align 4
  %980 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %981 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %980, i32 0, i32 15
  store i32 %979, i32* %981, align 8
  br label %982

982:                                              ; preds = %963
  %983 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %984 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %983, i32 0, i32 11
  %985 = load i32, i32* %984, align 8
  %986 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %987 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %986, i32 0, i32 10
  %988 = load i32, i32* %987, align 4
  %989 = icmp ult i32 %985, %988
  br i1 %989, label %990, label %998

990:                                              ; preds = %982
  %991 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %992 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %991, i32 0, i32 10
  %993 = load i32, i32* %992, align 4
  %994 = load i32, i32* %16, align 4
  %995 = sub i32 %993, %994
  %996 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %997 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %996, i32 0, i32 11
  store i32 %995, i32* %997, align 8
  br label %998

998:                                              ; preds = %990, %982
  %999 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %1000 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1001 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1000, i32 0, i32 10
  %1002 = load i32, i32* %1001, align 4
  call void @inflate_fast(%struct.z_stream_s* noundef %999, i32 noundef %1002)
  br label %1003

1003:                                             ; preds = %998
  %1004 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %1005 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1004, i32 0, i32 3
  %1006 = load i8*, i8** %1005, align 8
  store i8* %1006, i8** %14, align 8
  %1007 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %1008 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1007, i32 0, i32 4
  %1009 = load i32, i32* %1008, align 8
  store i32 %1009, i32* %16, align 4
  %1010 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %1011 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1010, i32 0, i32 0
  %1012 = load i8*, i8** %1011, align 8
  store i8* %1012, i8** %13, align 8
  %1013 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %1014 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1013, i32 0, i32 1
  %1015 = load i32, i32* %1014, align 8
  store i32 %1015, i32* %15, align 4
  %1016 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1017 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1016, i32 0, i32 14
  %1018 = load i64, i64* %1017, align 8
  store i64 %1018, i64* %17, align 8
  %1019 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1020 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1019, i32 0, i32 15
  %1021 = load i32, i32* %1020, align 8
  store i32 %1021, i32* %18, align 4
  br label %1022

1022:                                             ; preds = %1003
  br label %1706

1023:                                             ; preds = %959, %956
  br label %1024

1024:                                             ; preds = %1074, %1023
  %1025 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1026 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1025, i32 0, i32 19
  %1027 = load %struct.code*, %struct.code** %1026, align 8
  %1028 = load i64, i64* %17, align 8
  %1029 = trunc i64 %1028 to i32
  %1030 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1031 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1030, i32 0, i32 21
  %1032 = load i32, i32* %1031, align 8
  %1033 = shl i32 1, %1032
  %1034 = sub i32 %1033, 1
  %1035 = and i32 %1029, %1034
  %1036 = zext i32 %1035 to i64
  %1037 = getelementptr inbounds %struct.code, %struct.code* %1027, i64 %1036
  %1038 = bitcast %struct.code* %21 to i8*
  %1039 = bitcast %struct.code* %1037 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1038, i8* align 2 %1039, i64 4, i1 false)
  %1040 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %1041 = load i8, i8* %1040, align 1
  %1042 = zext i8 %1041 to i32
  %1043 = load i32, i32* %18, align 4
  %1044 = icmp ule i32 %1042, %1043
  br i1 %1044, label %1045, label %1046

1045:                                             ; preds = %1024
  br label %1075

1046:                                             ; preds = %1024
  br label %1047

1047:                                             ; preds = %1046
  br label %1048

1048:                                             ; preds = %1047
  %1049 = load i32, i32* %15, align 4
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1059

1051:                                             ; preds = %1048
  %1052 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %1053 = load i8*, i8** %9, align 8
  %1054 = call i32 %1052(i8* noundef %1053, i8** noundef %13)
  store i32 %1054, i32* %15, align 4
  %1055 = load i32, i32* %15, align 4
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1057, label %1058

1057:                                             ; preds = %1051
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

1058:                                             ; preds = %1051
  br label %1059

1059:                                             ; preds = %1058, %1048
  br label %1060

1060:                                             ; preds = %1059
  %1061 = load i32, i32* %15, align 4
  %1062 = add i32 %1061, -1
  store i32 %1062, i32* %15, align 4
  %1063 = load i8*, i8** %13, align 8
  %1064 = getelementptr inbounds i8, i8* %1063, i32 1
  store i8* %1064, i8** %13, align 8
  %1065 = load i8, i8* %1063, align 1
  %1066 = zext i8 %1065 to i64
  %1067 = load i32, i32* %18, align 4
  %1068 = zext i32 %1067 to i64
  %1069 = shl i64 %1066, %1068
  %1070 = load i64, i64* %17, align 8
  %1071 = add i64 %1070, %1069
  store i64 %1071, i64* %17, align 8
  %1072 = load i32, i32* %18, align 4
  %1073 = add i32 %1072, 8
  store i32 %1073, i32* %18, align 4
  br label %1074

1074:                                             ; preds = %1060
  br label %1024

1075:                                             ; preds = %1045
  %1076 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 0
  %1077 = load i8, i8* %1076, align 2
  %1078 = zext i8 %1077 to i32
  %1079 = icmp ne i32 %1078, 0
  br i1 %1079, label %1080, label %1170

1080:                                             ; preds = %1075
  %1081 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 0
  %1082 = load i8, i8* %1081, align 2
  %1083 = zext i8 %1082 to i32
  %1084 = and i32 %1083, 240
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1086, label %1170

1086:                                             ; preds = %1080
  %1087 = bitcast %struct.code* %22 to i8*
  %1088 = bitcast %struct.code* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1087, i8* align 2 %1088, i64 4, i1 false)
  br label %1089

1089:                                             ; preds = %1155, %1086
  %1090 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1091 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1090, i32 0, i32 19
  %1092 = load %struct.code*, %struct.code** %1091, align 8
  %1093 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 2
  %1094 = load i16, i16* %1093, align 2
  %1095 = zext i16 %1094 to i32
  %1096 = load i64, i64* %17, align 8
  %1097 = trunc i64 %1096 to i32
  %1098 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 1
  %1099 = load i8, i8* %1098, align 1
  %1100 = zext i8 %1099 to i32
  %1101 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 0
  %1102 = load i8, i8* %1101, align 2
  %1103 = zext i8 %1102 to i32
  %1104 = add nsw i32 %1100, %1103
  %1105 = shl i32 1, %1104
  %1106 = sub i32 %1105, 1
  %1107 = and i32 %1097, %1106
  %1108 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 1
  %1109 = load i8, i8* %1108, align 1
  %1110 = zext i8 %1109 to i32
  %1111 = lshr i32 %1107, %1110
  %1112 = add i32 %1095, %1111
  %1113 = zext i32 %1112 to i64
  %1114 = getelementptr inbounds %struct.code, %struct.code* %1092, i64 %1113
  %1115 = bitcast %struct.code* %21 to i8*
  %1116 = bitcast %struct.code* %1114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1115, i8* align 2 %1116, i64 4, i1 false)
  %1117 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 1
  %1118 = load i8, i8* %1117, align 1
  %1119 = zext i8 %1118 to i32
  %1120 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %1121 = load i8, i8* %1120, align 1
  %1122 = zext i8 %1121 to i32
  %1123 = add nsw i32 %1119, %1122
  %1124 = load i32, i32* %18, align 4
  %1125 = icmp ule i32 %1123, %1124
  br i1 %1125, label %1126, label %1127

1126:                                             ; preds = %1089
  br label %1156

1127:                                             ; preds = %1089
  br label %1128

1128:                                             ; preds = %1127
  br label %1129

1129:                                             ; preds = %1128
  %1130 = load i32, i32* %15, align 4
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1132, label %1140

1132:                                             ; preds = %1129
  %1133 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %1134 = load i8*, i8** %9, align 8
  %1135 = call i32 %1133(i8* noundef %1134, i8** noundef %13)
  store i32 %1135, i32* %15, align 4
  %1136 = load i32, i32* %15, align 4
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1138, label %1139

1138:                                             ; preds = %1132
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

1139:                                             ; preds = %1132
  br label %1140

1140:                                             ; preds = %1139, %1129
  br label %1141

1141:                                             ; preds = %1140
  %1142 = load i32, i32* %15, align 4
  %1143 = add i32 %1142, -1
  store i32 %1143, i32* %15, align 4
  %1144 = load i8*, i8** %13, align 8
  %1145 = getelementptr inbounds i8, i8* %1144, i32 1
  store i8* %1145, i8** %13, align 8
  %1146 = load i8, i8* %1144, align 1
  %1147 = zext i8 %1146 to i64
  %1148 = load i32, i32* %18, align 4
  %1149 = zext i32 %1148 to i64
  %1150 = shl i64 %1147, %1149
  %1151 = load i64, i64* %17, align 8
  %1152 = add i64 %1151, %1150
  store i64 %1152, i64* %17, align 8
  %1153 = load i32, i32* %18, align 4
  %1154 = add i32 %1153, 8
  store i32 %1154, i32* %18, align 4
  br label %1155

1155:                                             ; preds = %1141
  br label %1089

1156:                                             ; preds = %1126
  br label %1157

1157:                                             ; preds = %1156
  %1158 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 1
  %1159 = load i8, i8* %1158, align 1
  %1160 = zext i8 %1159 to i32
  %1161 = load i64, i64* %17, align 8
  %1162 = zext i32 %1160 to i64
  %1163 = lshr i64 %1161, %1162
  store i64 %1163, i64* %17, align 8
  %1164 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 1
  %1165 = load i8, i8* %1164, align 1
  %1166 = zext i8 %1165 to i32
  %1167 = load i32, i32* %18, align 4
  %1168 = sub i32 %1167, %1166
  store i32 %1168, i32* %18, align 4
  br label %1169

1169:                                             ; preds = %1157
  br label %1170

1170:                                             ; preds = %1169, %1080, %1075
  br label %1171

1171:                                             ; preds = %1170
  %1172 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %1173 = load i8, i8* %1172, align 1
  %1174 = zext i8 %1173 to i32
  %1175 = load i64, i64* %17, align 8
  %1176 = zext i32 %1174 to i64
  %1177 = lshr i64 %1175, %1176
  store i64 %1177, i64* %17, align 8
  %1178 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %1179 = load i8, i8* %1178, align 1
  %1180 = zext i8 %1179 to i32
  %1181 = load i32, i32* %18, align 4
  %1182 = sub i32 %1181, %1180
  store i32 %1182, i32* %18, align 4
  br label %1183

1183:                                             ; preds = %1171
  %1184 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 2
  %1185 = load i16, i16* %1184, align 2
  %1186 = zext i16 %1185 to i32
  %1187 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1188 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1187, i32 0, i32 16
  store i32 %1186, i32* %1188, align 4
  %1189 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 0
  %1190 = load i8, i8* %1189, align 2
  %1191 = zext i8 %1190 to i32
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %1193, label %1227

1193:                                             ; preds = %1183
  br label %1194

1194:                                             ; preds = %1193
  %1195 = load i32, i32* %16, align 4
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1197, label %1215

1197:                                             ; preds = %1194
  %1198 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1199 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1198, i32 0, i32 13
  %1200 = load i8*, i8** %1199, align 8
  store i8* %1200, i8** %14, align 8
  %1201 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1202 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1201, i32 0, i32 10
  %1203 = load i32, i32* %1202, align 4
  store i32 %1203, i32* %16, align 4
  %1204 = load i32, i32* %16, align 4
  %1205 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1206 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1205, i32 0, i32 11
  store i32 %1204, i32* %1206, align 8
  %1207 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %10, align 8
  %1208 = load i8*, i8** %11, align 8
  %1209 = load i8*, i8** %14, align 8
  %1210 = load i32, i32* %16, align 4
  %1211 = call i32 %1207(i8* noundef %1208, i8* noundef %1209, i32 noundef %1210)
  %1212 = icmp ne i32 %1211, 0
  br i1 %1212, label %1213, label %1214

1213:                                             ; preds = %1197
  store i32 -5, i32* %24, align 4
  br label %1707

1214:                                             ; preds = %1197
  br label %1215

1215:                                             ; preds = %1214, %1194
  br label %1216

1216:                                             ; preds = %1215
  %1217 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1218 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1217, i32 0, i32 16
  %1219 = load i32, i32* %1218, align 4
  %1220 = trunc i32 %1219 to i8
  %1221 = load i8*, i8** %14, align 8
  %1222 = getelementptr inbounds i8, i8* %1221, i32 1
  store i8* %1222, i8** %14, align 8
  store i8 %1220, i8* %1221, align 1
  %1223 = load i32, i32* %16, align 4
  %1224 = add i32 %1223, -1
  store i32 %1224, i32* %16, align 4
  %1225 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1226 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1225, i32 0, i32 0
  store i32 20, i32* %1226, align 8
  br label %1706

1227:                                             ; preds = %1183
  %1228 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 0
  %1229 = load i8, i8* %1228, align 2
  %1230 = zext i8 %1229 to i32
  %1231 = and i32 %1230, 32
  %1232 = icmp ne i32 %1231, 0
  br i1 %1232, label %1233, label %1236

1233:                                             ; preds = %1227
  %1234 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1235 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1234, i32 0, i32 0
  store i32 11, i32* %1235, align 8
  br label %1706

1236:                                             ; preds = %1227
  %1237 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 0
  %1238 = load i8, i8* %1237, align 2
  %1239 = zext i8 %1238 to i32
  %1240 = and i32 %1239, 64
  %1241 = icmp ne i32 %1240, 0
  br i1 %1241, label %1242, label %1247

1242:                                             ; preds = %1236
  %1243 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %1244 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1243, i32 0, i32 6
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8** %1244, align 8
  %1245 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1246 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1245, i32 0, i32 0
  store i32 29, i32* %1246, align 8
  br label %1706

1247:                                             ; preds = %1236
  %1248 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 0
  %1249 = load i8, i8* %1248, align 2
  %1250 = zext i8 %1249 to i32
  %1251 = and i32 %1250, 15
  %1252 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1253 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1252, i32 0, i32 18
  store i32 %1251, i32* %1253, align 4
  %1254 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1255 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1254, i32 0, i32 18
  %1256 = load i32, i32* %1255, align 4
  %1257 = icmp ne i32 %1256, 0
  br i1 %1257, label %1258, label %1322

1258:                                             ; preds = %1247
  br label %1259

1259:                                             ; preds = %1258
  br label %1260

1260:                                             ; preds = %1294, %1259
  %1261 = load i32, i32* %18, align 4
  %1262 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1263 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1262, i32 0, i32 18
  %1264 = load i32, i32* %1263, align 4
  %1265 = icmp ult i32 %1261, %1264
  br i1 %1265, label %1266, label %1295

1266:                                             ; preds = %1260
  br label %1267

1267:                                             ; preds = %1266
  br label %1268

1268:                                             ; preds = %1267
  %1269 = load i32, i32* %15, align 4
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1271, label %1279

1271:                                             ; preds = %1268
  %1272 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %1273 = load i8*, i8** %9, align 8
  %1274 = call i32 %1272(i8* noundef %1273, i8** noundef %13)
  store i32 %1274, i32* %15, align 4
  %1275 = load i32, i32* %15, align 4
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1277, label %1278

1277:                                             ; preds = %1271
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

1278:                                             ; preds = %1271
  br label %1279

1279:                                             ; preds = %1278, %1268
  br label %1280

1280:                                             ; preds = %1279
  %1281 = load i32, i32* %15, align 4
  %1282 = add i32 %1281, -1
  store i32 %1282, i32* %15, align 4
  %1283 = load i8*, i8** %13, align 8
  %1284 = getelementptr inbounds i8, i8* %1283, i32 1
  store i8* %1284, i8** %13, align 8
  %1285 = load i8, i8* %1283, align 1
  %1286 = zext i8 %1285 to i64
  %1287 = load i32, i32* %18, align 4
  %1288 = zext i32 %1287 to i64
  %1289 = shl i64 %1286, %1288
  %1290 = load i64, i64* %17, align 8
  %1291 = add i64 %1290, %1289
  store i64 %1291, i64* %17, align 8
  %1292 = load i32, i32* %18, align 4
  %1293 = add i32 %1292, 8
  store i32 %1293, i32* %18, align 4
  br label %1294

1294:                                             ; preds = %1280
  br label %1260, !llvm.loop !23

1295:                                             ; preds = %1260
  br label %1296

1296:                                             ; preds = %1295
  %1297 = load i64, i64* %17, align 8
  %1298 = trunc i64 %1297 to i32
  %1299 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1300 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1299, i32 0, i32 18
  %1301 = load i32, i32* %1300, align 4
  %1302 = shl i32 1, %1301
  %1303 = sub i32 %1302, 1
  %1304 = and i32 %1298, %1303
  %1305 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1306 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1305, i32 0, i32 16
  %1307 = load i32, i32* %1306, align 4
  %1308 = add i32 %1307, %1304
  store i32 %1308, i32* %1306, align 4
  br label %1309

1309:                                             ; preds = %1296
  %1310 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1311 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1310, i32 0, i32 18
  %1312 = load i32, i32* %1311, align 4
  %1313 = load i64, i64* %17, align 8
  %1314 = zext i32 %1312 to i64
  %1315 = lshr i64 %1313, %1314
  store i64 %1315, i64* %17, align 8
  %1316 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1317 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1316, i32 0, i32 18
  %1318 = load i32, i32* %1317, align 4
  %1319 = load i32, i32* %18, align 4
  %1320 = sub i32 %1319, %1318
  store i32 %1320, i32* %18, align 4
  br label %1321

1321:                                             ; preds = %1309
  br label %1322

1322:                                             ; preds = %1321, %1247
  br label %1323

1323:                                             ; preds = %1373, %1322
  %1324 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1325 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1324, i32 0, i32 20
  %1326 = load %struct.code*, %struct.code** %1325, align 8
  %1327 = load i64, i64* %17, align 8
  %1328 = trunc i64 %1327 to i32
  %1329 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1330 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1329, i32 0, i32 22
  %1331 = load i32, i32* %1330, align 4
  %1332 = shl i32 1, %1331
  %1333 = sub i32 %1332, 1
  %1334 = and i32 %1328, %1333
  %1335 = zext i32 %1334 to i64
  %1336 = getelementptr inbounds %struct.code, %struct.code* %1326, i64 %1335
  %1337 = bitcast %struct.code* %21 to i8*
  %1338 = bitcast %struct.code* %1336 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1337, i8* align 2 %1338, i64 4, i1 false)
  %1339 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %1340 = load i8, i8* %1339, align 1
  %1341 = zext i8 %1340 to i32
  %1342 = load i32, i32* %18, align 4
  %1343 = icmp ule i32 %1341, %1342
  br i1 %1343, label %1344, label %1345

1344:                                             ; preds = %1323
  br label %1374

1345:                                             ; preds = %1323
  br label %1346

1346:                                             ; preds = %1345
  br label %1347

1347:                                             ; preds = %1346
  %1348 = load i32, i32* %15, align 4
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1350, label %1358

1350:                                             ; preds = %1347
  %1351 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %1352 = load i8*, i8** %9, align 8
  %1353 = call i32 %1351(i8* noundef %1352, i8** noundef %13)
  store i32 %1353, i32* %15, align 4
  %1354 = load i32, i32* %15, align 4
  %1355 = icmp eq i32 %1354, 0
  br i1 %1355, label %1356, label %1357

1356:                                             ; preds = %1350
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

1357:                                             ; preds = %1350
  br label %1358

1358:                                             ; preds = %1357, %1347
  br label %1359

1359:                                             ; preds = %1358
  %1360 = load i32, i32* %15, align 4
  %1361 = add i32 %1360, -1
  store i32 %1361, i32* %15, align 4
  %1362 = load i8*, i8** %13, align 8
  %1363 = getelementptr inbounds i8, i8* %1362, i32 1
  store i8* %1363, i8** %13, align 8
  %1364 = load i8, i8* %1362, align 1
  %1365 = zext i8 %1364 to i64
  %1366 = load i32, i32* %18, align 4
  %1367 = zext i32 %1366 to i64
  %1368 = shl i64 %1365, %1367
  %1369 = load i64, i64* %17, align 8
  %1370 = add i64 %1369, %1368
  store i64 %1370, i64* %17, align 8
  %1371 = load i32, i32* %18, align 4
  %1372 = add i32 %1371, 8
  store i32 %1372, i32* %18, align 4
  br label %1373

1373:                                             ; preds = %1359
  br label %1323

1374:                                             ; preds = %1344
  %1375 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 0
  %1376 = load i8, i8* %1375, align 2
  %1377 = zext i8 %1376 to i32
  %1378 = and i32 %1377, 240
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1380, label %1464

1380:                                             ; preds = %1374
  %1381 = bitcast %struct.code* %22 to i8*
  %1382 = bitcast %struct.code* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1381, i8* align 2 %1382, i64 4, i1 false)
  br label %1383

1383:                                             ; preds = %1449, %1380
  %1384 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1385 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1384, i32 0, i32 20
  %1386 = load %struct.code*, %struct.code** %1385, align 8
  %1387 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 2
  %1388 = load i16, i16* %1387, align 2
  %1389 = zext i16 %1388 to i32
  %1390 = load i64, i64* %17, align 8
  %1391 = trunc i64 %1390 to i32
  %1392 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 1
  %1393 = load i8, i8* %1392, align 1
  %1394 = zext i8 %1393 to i32
  %1395 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 0
  %1396 = load i8, i8* %1395, align 2
  %1397 = zext i8 %1396 to i32
  %1398 = add nsw i32 %1394, %1397
  %1399 = shl i32 1, %1398
  %1400 = sub i32 %1399, 1
  %1401 = and i32 %1391, %1400
  %1402 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 1
  %1403 = load i8, i8* %1402, align 1
  %1404 = zext i8 %1403 to i32
  %1405 = lshr i32 %1401, %1404
  %1406 = add i32 %1389, %1405
  %1407 = zext i32 %1406 to i64
  %1408 = getelementptr inbounds %struct.code, %struct.code* %1386, i64 %1407
  %1409 = bitcast %struct.code* %21 to i8*
  %1410 = bitcast %struct.code* %1408 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1409, i8* align 2 %1410, i64 4, i1 false)
  %1411 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 1
  %1412 = load i8, i8* %1411, align 1
  %1413 = zext i8 %1412 to i32
  %1414 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %1415 = load i8, i8* %1414, align 1
  %1416 = zext i8 %1415 to i32
  %1417 = add nsw i32 %1413, %1416
  %1418 = load i32, i32* %18, align 4
  %1419 = icmp ule i32 %1417, %1418
  br i1 %1419, label %1420, label %1421

1420:                                             ; preds = %1383
  br label %1450

1421:                                             ; preds = %1383
  br label %1422

1422:                                             ; preds = %1421
  br label %1423

1423:                                             ; preds = %1422
  %1424 = load i32, i32* %15, align 4
  %1425 = icmp eq i32 %1424, 0
  br i1 %1425, label %1426, label %1434

1426:                                             ; preds = %1423
  %1427 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %1428 = load i8*, i8** %9, align 8
  %1429 = call i32 %1427(i8* noundef %1428, i8** noundef %13)
  store i32 %1429, i32* %15, align 4
  %1430 = load i32, i32* %15, align 4
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1432, label %1433

1432:                                             ; preds = %1426
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

1433:                                             ; preds = %1426
  br label %1434

1434:                                             ; preds = %1433, %1423
  br label %1435

1435:                                             ; preds = %1434
  %1436 = load i32, i32* %15, align 4
  %1437 = add i32 %1436, -1
  store i32 %1437, i32* %15, align 4
  %1438 = load i8*, i8** %13, align 8
  %1439 = getelementptr inbounds i8, i8* %1438, i32 1
  store i8* %1439, i8** %13, align 8
  %1440 = load i8, i8* %1438, align 1
  %1441 = zext i8 %1440 to i64
  %1442 = load i32, i32* %18, align 4
  %1443 = zext i32 %1442 to i64
  %1444 = shl i64 %1441, %1443
  %1445 = load i64, i64* %17, align 8
  %1446 = add i64 %1445, %1444
  store i64 %1446, i64* %17, align 8
  %1447 = load i32, i32* %18, align 4
  %1448 = add i32 %1447, 8
  store i32 %1448, i32* %18, align 4
  br label %1449

1449:                                             ; preds = %1435
  br label %1383

1450:                                             ; preds = %1420
  br label %1451

1451:                                             ; preds = %1450
  %1452 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 1
  %1453 = load i8, i8* %1452, align 1
  %1454 = zext i8 %1453 to i32
  %1455 = load i64, i64* %17, align 8
  %1456 = zext i32 %1454 to i64
  %1457 = lshr i64 %1455, %1456
  store i64 %1457, i64* %17, align 8
  %1458 = getelementptr inbounds %struct.code, %struct.code* %22, i32 0, i32 1
  %1459 = load i8, i8* %1458, align 1
  %1460 = zext i8 %1459 to i32
  %1461 = load i32, i32* %18, align 4
  %1462 = sub i32 %1461, %1460
  store i32 %1462, i32* %18, align 4
  br label %1463

1463:                                             ; preds = %1451
  br label %1464

1464:                                             ; preds = %1463, %1374
  br label %1465

1465:                                             ; preds = %1464
  %1466 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %1467 = load i8, i8* %1466, align 1
  %1468 = zext i8 %1467 to i32
  %1469 = load i64, i64* %17, align 8
  %1470 = zext i32 %1468 to i64
  %1471 = lshr i64 %1469, %1470
  store i64 %1471, i64* %17, align 8
  %1472 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 1
  %1473 = load i8, i8* %1472, align 1
  %1474 = zext i8 %1473 to i32
  %1475 = load i32, i32* %18, align 4
  %1476 = sub i32 %1475, %1474
  store i32 %1476, i32* %18, align 4
  br label %1477

1477:                                             ; preds = %1465
  %1478 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 0
  %1479 = load i8, i8* %1478, align 2
  %1480 = zext i8 %1479 to i32
  %1481 = and i32 %1480, 64
  %1482 = icmp ne i32 %1481, 0
  br i1 %1482, label %1483, label %1488

1483:                                             ; preds = %1477
  %1484 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %1485 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1484, i32 0, i32 6
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8** %1485, align 8
  %1486 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1487 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1486, i32 0, i32 0
  store i32 29, i32* %1487, align 8
  br label %1706

1488:                                             ; preds = %1477
  %1489 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 2
  %1490 = load i16, i16* %1489, align 2
  %1491 = zext i16 %1490 to i32
  %1492 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1493 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1492, i32 0, i32 17
  store i32 %1491, i32* %1493, align 8
  %1494 = getelementptr inbounds %struct.code, %struct.code* %21, i32 0, i32 0
  %1495 = load i8, i8* %1494, align 2
  %1496 = zext i8 %1495 to i32
  %1497 = and i32 %1496, 15
  %1498 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1499 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1498, i32 0, i32 18
  store i32 %1497, i32* %1499, align 4
  %1500 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1501 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1500, i32 0, i32 18
  %1502 = load i32, i32* %1501, align 4
  %1503 = icmp ne i32 %1502, 0
  br i1 %1503, label %1504, label %1568

1504:                                             ; preds = %1488
  br label %1505

1505:                                             ; preds = %1504
  br label %1506

1506:                                             ; preds = %1540, %1505
  %1507 = load i32, i32* %18, align 4
  %1508 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1509 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1508, i32 0, i32 18
  %1510 = load i32, i32* %1509, align 4
  %1511 = icmp ult i32 %1507, %1510
  br i1 %1511, label %1512, label %1541

1512:                                             ; preds = %1506
  br label %1513

1513:                                             ; preds = %1512
  br label %1514

1514:                                             ; preds = %1513
  %1515 = load i32, i32* %15, align 4
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1517, label %1525

1517:                                             ; preds = %1514
  %1518 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %8, align 8
  %1519 = load i8*, i8** %9, align 8
  %1520 = call i32 %1518(i8* noundef %1519, i8** noundef %13)
  store i32 %1520, i32* %15, align 4
  %1521 = load i32, i32* %15, align 4
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1523, label %1524

1523:                                             ; preds = %1517
  store i8* null, i8** %13, align 8
  store i32 -5, i32* %24, align 4
  br label %1707

1524:                                             ; preds = %1517
  br label %1525

1525:                                             ; preds = %1524, %1514
  br label %1526

1526:                                             ; preds = %1525
  %1527 = load i32, i32* %15, align 4
  %1528 = add i32 %1527, -1
  store i32 %1528, i32* %15, align 4
  %1529 = load i8*, i8** %13, align 8
  %1530 = getelementptr inbounds i8, i8* %1529, i32 1
  store i8* %1530, i8** %13, align 8
  %1531 = load i8, i8* %1529, align 1
  %1532 = zext i8 %1531 to i64
  %1533 = load i32, i32* %18, align 4
  %1534 = zext i32 %1533 to i64
  %1535 = shl i64 %1532, %1534
  %1536 = load i64, i64* %17, align 8
  %1537 = add i64 %1536, %1535
  store i64 %1537, i64* %17, align 8
  %1538 = load i32, i32* %18, align 4
  %1539 = add i32 %1538, 8
  store i32 %1539, i32* %18, align 4
  br label %1540

1540:                                             ; preds = %1526
  br label %1506, !llvm.loop !24

1541:                                             ; preds = %1506
  br label %1542

1542:                                             ; preds = %1541
  %1543 = load i64, i64* %17, align 8
  %1544 = trunc i64 %1543 to i32
  %1545 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1546 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1545, i32 0, i32 18
  %1547 = load i32, i32* %1546, align 4
  %1548 = shl i32 1, %1547
  %1549 = sub i32 %1548, 1
  %1550 = and i32 %1544, %1549
  %1551 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1552 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1551, i32 0, i32 17
  %1553 = load i32, i32* %1552, align 8
  %1554 = add i32 %1553, %1550
  store i32 %1554, i32* %1552, align 8
  br label %1555

1555:                                             ; preds = %1542
  %1556 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1557 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1556, i32 0, i32 18
  %1558 = load i32, i32* %1557, align 4
  %1559 = load i64, i64* %17, align 8
  %1560 = zext i32 %1558 to i64
  %1561 = lshr i64 %1559, %1560
  store i64 %1561, i64* %17, align 8
  %1562 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1563 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1562, i32 0, i32 18
  %1564 = load i32, i32* %1563, align 4
  %1565 = load i32, i32* %18, align 4
  %1566 = sub i32 %1565, %1564
  store i32 %1566, i32* %18, align 4
  br label %1567

1567:                                             ; preds = %1555
  br label %1568

1568:                                             ; preds = %1567, %1488
  %1569 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1570 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1569, i32 0, i32 17
  %1571 = load i32, i32* %1570, align 8
  %1572 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1573 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1572, i32 0, i32 10
  %1574 = load i32, i32* %1573, align 4
  %1575 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1576 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1575, i32 0, i32 11
  %1577 = load i32, i32* %1576, align 8
  %1578 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1579 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1578, i32 0, i32 10
  %1580 = load i32, i32* %1579, align 4
  %1581 = icmp ult i32 %1577, %1580
  br i1 %1581, label %1582, label %1584

1582:                                             ; preds = %1568
  %1583 = load i32, i32* %16, align 4
  br label %1585

1584:                                             ; preds = %1568
  br label %1585

1585:                                             ; preds = %1584, %1582
  %1586 = phi i32 [ %1583, %1582 ], [ 0, %1584 ]
  %1587 = sub i32 %1574, %1586
  %1588 = icmp ugt i32 %1571, %1587
  br i1 %1588, label %1589, label %1594

1589:                                             ; preds = %1585
  %1590 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %1591 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1590, i32 0, i32 6
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8** %1591, align 8
  %1592 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1593 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1592, i32 0, i32 0
  store i32 29, i32* %1593, align 8
  br label %1706

1594:                                             ; preds = %1585
  br label %1595

1595:                                             ; preds = %1676, %1594
  br label %1596

1596:                                             ; preds = %1595
  %1597 = load i32, i32* %16, align 4
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1599, label %1617

1599:                                             ; preds = %1596
  %1600 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1601 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1600, i32 0, i32 13
  %1602 = load i8*, i8** %1601, align 8
  store i8* %1602, i8** %14, align 8
  %1603 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1604 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1603, i32 0, i32 10
  %1605 = load i32, i32* %1604, align 4
  store i32 %1605, i32* %16, align 4
  %1606 = load i32, i32* %16, align 4
  %1607 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1608 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1607, i32 0, i32 11
  store i32 %1606, i32* %1608, align 8
  %1609 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %10, align 8
  %1610 = load i8*, i8** %11, align 8
  %1611 = load i8*, i8** %14, align 8
  %1612 = load i32, i32* %16, align 4
  %1613 = call i32 %1609(i8* noundef %1610, i8* noundef %1611, i32 noundef %1612)
  %1614 = icmp ne i32 %1613, 0
  br i1 %1614, label %1615, label %1616

1615:                                             ; preds = %1599
  store i32 -5, i32* %24, align 4
  br label %1707

1616:                                             ; preds = %1599
  br label %1617

1617:                                             ; preds = %1616, %1596
  br label %1618

1618:                                             ; preds = %1617
  %1619 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1620 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1619, i32 0, i32 10
  %1621 = load i32, i32* %1620, align 4
  %1622 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1623 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1622, i32 0, i32 17
  %1624 = load i32, i32* %1623, align 8
  %1625 = sub i32 %1621, %1624
  store i32 %1625, i32* %19, align 4
  %1626 = load i32, i32* %19, align 4
  %1627 = load i32, i32* %16, align 4
  %1628 = icmp ult i32 %1626, %1627
  br i1 %1628, label %1629, label %1637

1629:                                             ; preds = %1618
  %1630 = load i8*, i8** %14, align 8
  %1631 = load i32, i32* %19, align 4
  %1632 = zext i32 %1631 to i64
  %1633 = getelementptr inbounds i8, i8* %1630, i64 %1632
  store i8* %1633, i8** %20, align 8
  %1634 = load i32, i32* %16, align 4
  %1635 = load i32, i32* %19, align 4
  %1636 = sub i32 %1634, %1635
  store i32 %1636, i32* %19, align 4
  br label %1646

1637:                                             ; preds = %1618
  %1638 = load i8*, i8** %14, align 8
  %1639 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1640 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1639, i32 0, i32 17
  %1641 = load i32, i32* %1640, align 8
  %1642 = zext i32 %1641 to i64
  %1643 = sub i64 0, %1642
  %1644 = getelementptr inbounds i8, i8* %1638, i64 %1643
  store i8* %1644, i8** %20, align 8
  %1645 = load i32, i32* %16, align 4
  store i32 %1645, i32* %19, align 4
  br label %1646

1646:                                             ; preds = %1637, %1629
  %1647 = load i32, i32* %19, align 4
  %1648 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1649 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1648, i32 0, i32 16
  %1650 = load i32, i32* %1649, align 4
  %1651 = icmp ugt i32 %1647, %1650
  br i1 %1651, label %1652, label %1656

1652:                                             ; preds = %1646
  %1653 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1654 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1653, i32 0, i32 16
  %1655 = load i32, i32* %1654, align 4
  store i32 %1655, i32* %19, align 4
  br label %1656

1656:                                             ; preds = %1652, %1646
  %1657 = load i32, i32* %19, align 4
  %1658 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1659 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1658, i32 0, i32 16
  %1660 = load i32, i32* %1659, align 4
  %1661 = sub i32 %1660, %1657
  store i32 %1661, i32* %1659, align 4
  %1662 = load i32, i32* %19, align 4
  %1663 = load i32, i32* %16, align 4
  %1664 = sub i32 %1663, %1662
  store i32 %1664, i32* %16, align 4
  br label %1665

1665:                                             ; preds = %1671, %1656
  %1666 = load i8*, i8** %20, align 8
  %1667 = getelementptr inbounds i8, i8* %1666, i32 1
  store i8* %1667, i8** %20, align 8
  %1668 = load i8, i8* %1666, align 1
  %1669 = load i8*, i8** %14, align 8
  %1670 = getelementptr inbounds i8, i8* %1669, i32 1
  store i8* %1670, i8** %14, align 8
  store i8 %1668, i8* %1669, align 1
  br label %1671

1671:                                             ; preds = %1665
  %1672 = load i32, i32* %19, align 4
  %1673 = add i32 %1672, -1
  store i32 %1673, i32* %19, align 4
  %1674 = icmp ne i32 %1673, 0
  br i1 %1674, label %1665, label %1675, !llvm.loop !25

1675:                                             ; preds = %1671
  br label %1676

1676:                                             ; preds = %1675
  %1677 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1678 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1677, i32 0, i32 16
  %1679 = load i32, i32* %1678, align 4
  %1680 = icmp ne i32 %1679, 0
  br i1 %1680, label %1595, label %1681, !llvm.loop !26

1681:                                             ; preds = %1676
  br label %1706

1682:                                             ; preds = %64
  store i32 1, i32* %24, align 4
  %1683 = load i32, i32* %16, align 4
  %1684 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1685 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1684, i32 0, i32 10
  %1686 = load i32, i32* %1685, align 4
  %1687 = icmp ult i32 %1683, %1686
  br i1 %1687, label %1688, label %1703

1688:                                             ; preds = %1682
  %1689 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %10, align 8
  %1690 = load i8*, i8** %11, align 8
  %1691 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1692 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1691, i32 0, i32 13
  %1693 = load i8*, i8** %1692, align 8
  %1694 = load %struct.inflate_state*, %struct.inflate_state** %12, align 8
  %1695 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1694, i32 0, i32 10
  %1696 = load i32, i32* %1695, align 4
  %1697 = load i32, i32* %16, align 4
  %1698 = sub i32 %1696, %1697
  %1699 = call i32 %1689(i8* noundef %1690, i8* noundef %1693, i32 noundef %1698)
  %1700 = icmp ne i32 %1699, 0
  br i1 %1700, label %1701, label %1702

1701:                                             ; preds = %1688
  store i32 -5, i32* %24, align 4
  br label %1702

1702:                                             ; preds = %1701, %1688
  br label %1703

1703:                                             ; preds = %1702, %1682
  br label %1707

1704:                                             ; preds = %64
  store i32 -3, i32* %24, align 4
  br label %1707

1705:                                             ; preds = %64
  store i32 -2, i32* %24, align 4
  br label %1707

1706:                                             ; preds = %1681, %1589, %1483, %1242, %1233, %1216, %1022, %948, %914, %880, %872, %509, %392, %308, %212, %158, %84
  br label %64

1707:                                             ; preds = %1705, %1704, %1703, %1615, %1523, %1432, %1356, %1277, %1213, %1138, %1057, %786, %723, %635, %563, %424, %327, %266, %243, %186, %103
  %1708 = load i8*, i8** %13, align 8
  %1709 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %1710 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1709, i32 0, i32 0
  store i8* %1708, i8** %1710, align 8
  %1711 = load i32, i32* %15, align 4
  %1712 = load %struct.z_stream_s*, %struct.z_stream_s** %7, align 8
  %1713 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1712, i32 0, i32 1
  store i32 %1711, i32* %1713, align 8
  %1714 = load i32, i32* %24, align 4
  store i32 %1714, i32* %6, align 4
  br label %1715

1715:                                             ; preds = %1707, %32
  %1716 = load i32, i32* %6, align 4
  ret i32 %1716
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @fixedtables(%struct.inflate_state* noundef %0) #0 {
  %2 = alloca %struct.inflate_state*, align 8
  store %struct.inflate_state* %0, %struct.inflate_state** %2, align 8
  %3 = load %struct.inflate_state*, %struct.inflate_state** %2, align 8
  %4 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %3, i32 0, i32 19
  store %struct.code* getelementptr inbounds ([512 x %struct.code], [512 x %struct.code]* @fixedtables.lenfix, i64 0, i64 0), %struct.code** %4, align 8
  %5 = load %struct.inflate_state*, %struct.inflate_state** %2, align 8
  %6 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %5, i32 0, i32 21
  store i32 9, i32* %6, align 8
  %7 = load %struct.inflate_state*, %struct.inflate_state** %2, align 8
  %8 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %7, i32 0, i32 20
  store %struct.code* getelementptr inbounds ([32 x %struct.code], [32 x %struct.code]* @fixedtables.distfix, i64 0, i64 0), %struct.code** %8, align 8
  %9 = load %struct.inflate_state*, %struct.inflate_state** %2, align 8
  %10 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %9, i32 0, i32 22
  store i32 5, i32* %10, align 4
  ret void
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

declare hidden i32 @inflate_table(i32 noundef, i16* noundef, i32 noundef, %struct.code** noundef, i32* noundef, i16* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare hidden void @inflate_fast(%struct.z_stream_s* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateBackEnd(%struct.z_stream_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  %4 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %5 = icmp eq %struct.z_stream_s* %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %8 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %7, i32 0, i32 7
  %9 = load %struct.internal_state*, %struct.internal_state** %8, align 8
  %10 = icmp eq %struct.internal_state* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 9
  %14 = load void (i8*, i8*)*, void (i8*, i8*)** %13, align 8
  %15 = icmp eq void (i8*, i8*)* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %6, %1
  store i32 -2, i32* %2, align 4
  br label %30

17:                                               ; preds = %11
  %18 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %18, i32 0, i32 9
  %20 = load void (i8*, i8*)*, void (i8*, i8*)** %19, align 8
  %21 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %21, i32 0, i32 10
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %24, i32 0, i32 7
  %26 = load %struct.internal_state*, %struct.internal_state** %25, align 8
  %27 = bitcast %struct.internal_state* %26 to i8*
  call void %20(i8* noundef %23, i8* noundef %27)
  %28 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %28, i32 0, i32 7
  store %struct.internal_state* null, %struct.internal_state** %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %17, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

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
