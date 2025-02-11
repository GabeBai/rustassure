; ModuleID = 'inflate.c'
source_filename = "inflate.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.gz_header_s*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, %struct.code*, %struct.code*, i32, i32, i32, i32, i32, i32, %struct.code*, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.gz_header_s = type { i32, i64, i32, i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"1.2.8-optipng\00", align 1
@inflate.order = internal constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 2
@.str.1 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 2
@fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateResetKeep(%struct.z_stream_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  %5 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %6 = icmp eq %struct.z_stream_s* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %9 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 7
  %10 = load %struct.internal_state*, %struct.internal_state** %9, align 8
  %11 = icmp eq %struct.internal_state* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i32 -2, i32* %2, align 4
  br label %66

13:                                               ; preds = %7
  %14 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %14, i32 0, i32 7
  %16 = load %struct.internal_state*, %struct.internal_state** %15, align 8
  %17 = bitcast %struct.internal_state* %16 to %struct.inflate_state*
  store %struct.inflate_state* %17, %struct.inflate_state** %4, align 8
  %18 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %19 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %21 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %23 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %24, i32 0, i32 6
  store i8* null, i8** %25, align 8
  %26 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %27 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %13
  %31 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %32 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %37 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %36, i32 0, i32 12
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %30, %13
  %39 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %40 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %42 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %44 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %43, i32 0, i32 3
  store i32 0, i32* %44, align 4
  %45 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %46 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %45, i32 0, i32 5
  store i32 32768, i32* %46, align 4
  %47 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %48 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %47, i32 0, i32 8
  store %struct.gz_header_s* null, %struct.gz_header_s** %48, align 8
  %49 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %50 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %49, i32 0, i32 14
  store i64 0, i64* %50, align 8
  %51 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %52 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %51, i32 0, i32 15
  store i32 0, i32* %52, align 8
  %53 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %54 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %53, i32 0, i32 30
  %55 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %54, i64 0, i64 0
  %56 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %57 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %56, i32 0, i32 27
  store %struct.code* %55, %struct.code** %57, align 8
  %58 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %59 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %58, i32 0, i32 20
  store %struct.code* %55, %struct.code** %59, align 8
  %60 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %61 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %60, i32 0, i32 19
  store %struct.code* %55, %struct.code** %61, align 8
  %62 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %63 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %62, i32 0, i32 31
  store i32 1, i32* %63, align 8
  %64 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %65 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %64, i32 0, i32 32
  store i32 -1, i32* %65, align 4
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %38, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateReset(%struct.z_stream_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  %5 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %6 = icmp eq %struct.z_stream_s* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %9 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 7
  %10 = load %struct.internal_state*, %struct.internal_state** %9, align 8
  %11 = icmp eq %struct.internal_state* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i32 -2, i32* %2, align 4
  br label %26

13:                                               ; preds = %7
  %14 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %14, i32 0, i32 7
  %16 = load %struct.internal_state*, %struct.internal_state** %15, align 8
  %17 = bitcast %struct.internal_state* %16 to %struct.inflate_state*
  store %struct.inflate_state* %17, %struct.inflate_state** %4, align 8
  %18 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %19 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %18, i32 0, i32 10
  store i32 0, i32* %19, align 4
  %20 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %21 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %20, i32 0, i32 11
  store i32 0, i32* %21, align 8
  %22 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %23 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %22, i32 0, i32 12
  store i32 0, i32* %23, align 4
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %25 = call i32 @inflateResetKeep(%struct.z_stream_s* noundef %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %13, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateReset2(%struct.z_stream_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %9 = icmp eq %struct.z_stream_s* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %12 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 7
  %13 = load %struct.internal_state*, %struct.internal_state** %12, align 8
  %14 = icmp eq %struct.internal_state* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  store i32 -2, i32* %3, align 4
  br label %72

16:                                               ; preds = %10
  %17 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %17, i32 0, i32 7
  %19 = load %struct.internal_state*, %struct.internal_state** %18, align 8
  %20 = bitcast %struct.internal_state* %19 to %struct.inflate_state*
  store %struct.inflate_state* %20, %struct.inflate_state** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %37, 15
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  store i32 -2, i32* %3, align 4
  br label %72

40:                                               ; preds = %36, %30
  %41 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %42 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %41, i32 0, i32 13
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %47 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %53 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %52, i32 0, i32 9
  %54 = load void (i8*, i8*)*, void (i8*, i8*)** %53, align 8
  %55 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %55, i32 0, i32 10
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %59 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %58, i32 0, i32 13
  %60 = load i8*, i8** %59, align 8
  call void %54(i8* noundef %57, i8* noundef %60)
  %61 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %62 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %61, i32 0, i32 13
  store i8* null, i8** %62, align 8
  br label %63

63:                                               ; preds = %51, %45, %40
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %66 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %69 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 8
  %70 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %71 = call i32 @inflateReset(%struct.z_stream_s* noundef %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %63, %39, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateInit2_(%struct.z_stream_s* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_stream_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 112
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %14, %4
  store i32 -6, i32* %5, align 4
  br label %87

26:                                               ; preds = %22
  %27 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %28 = icmp eq %struct.z_stream_s* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 -2, i32* %5, align 4
  br label %87

30:                                               ; preds = %26
  %31 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %31, i32 0, i32 6
  store i8* null, i8** %32, align 8
  %33 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %33, i32 0, i32 8
  %35 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %34, align 8
  %36 = icmp eq i8* (i8*, i32, i32)* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %38, i32 0, i32 8
  store i8* (i8*, i32, i32)* @zcalloc, i8* (i8*, i32, i32)** %39, align 8
  %40 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %41 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %40, i32 0, i32 10
  store i8* null, i8** %41, align 8
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %43, i32 0, i32 9
  %45 = load void (i8*, i8*)*, void (i8*, i8*)** %44, align 8
  %46 = icmp eq void (i8*, i8*)* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %48, i32 0, i32 9
  store void (i8*, i8*)* @zcfree, void (i8*, i8*)** %49, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %52 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %51, i32 0, i32 8
  %53 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %52, align 8
  %54 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %55 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %54, i32 0, i32 10
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* %53(i8* noundef %56, i32 noundef 1, i32 noundef 7152)
  %58 = bitcast i8* %57 to %struct.inflate_state*
  store %struct.inflate_state* %58, %struct.inflate_state** %11, align 8
  %59 = load %struct.inflate_state*, %struct.inflate_state** %11, align 8
  %60 = icmp eq %struct.inflate_state* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i32 -4, i32* %5, align 4
  br label %87

62:                                               ; preds = %50
  %63 = load %struct.inflate_state*, %struct.inflate_state** %11, align 8
  %64 = bitcast %struct.inflate_state* %63 to %struct.internal_state*
  %65 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %66 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %65, i32 0, i32 7
  store %struct.internal_state* %64, %struct.internal_state** %66, align 8
  %67 = load %struct.inflate_state*, %struct.inflate_state** %11, align 8
  %68 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %67, i32 0, i32 13
  store i8* null, i8** %68, align 8
  %69 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @inflateReset2(%struct.z_stream_s* noundef %69, i32 noundef %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %62
  %75 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %75, i32 0, i32 9
  %77 = load void (i8*, i8*)*, void (i8*, i8*)** %76, align 8
  %78 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %79 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %78, i32 0, i32 10
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.inflate_state*, %struct.inflate_state** %11, align 8
  %82 = bitcast %struct.inflate_state* %81 to i8*
  call void %77(i8* noundef %80, i8* noundef %82)
  %83 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %84 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %83, i32 0, i32 7
  store %struct.internal_state* null, %struct.internal_state** %84, align 8
  br label %85

85:                                               ; preds = %74, %62
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %61, %29, %25
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare hidden i8* @zcalloc(i8* noundef, i32 noundef, i32 noundef) #1

declare hidden void @zcfree(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateInit_(%struct.z_stream_s* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @inflateInit2_(%struct.z_stream_s* noundef %7, i32 noundef 15, i8* noundef %8, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflatePrime(%struct.z_stream_s* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %10 = icmp eq %struct.z_stream_s* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 7
  %14 = load %struct.internal_state*, %struct.internal_state** %13, align 8
  %15 = icmp eq %struct.internal_state* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %3
  store i32 -2, i32* %4, align 4
  br label %64

17:                                               ; preds = %11
  %18 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %18, i32 0, i32 7
  %20 = load %struct.internal_state*, %struct.internal_state** %19, align 8
  %21 = bitcast %struct.internal_state* %20 to %struct.inflate_state*
  store %struct.inflate_state* %21, %struct.inflate_state** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %26 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %25, i32 0, i32 14
  store i64 0, i64* %26, align 8
  %27 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %28 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %27, i32 0, i32 15
  store i32 0, i32* %28, align 8
  store i32 0, i32* %4, align 4
  br label %64

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 16
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %34 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %33, i32 0, i32 15
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %35, %36
  %38 = icmp ugt i32 %37, 32
  br i1 %38, label %39, label %40

39:                                               ; preds = %32, %29
  store i32 -2, i32* %4, align 4
  br label %64

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = sub nsw i64 %43, 1
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %51 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %56 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %55, i32 0, i32 14
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %61 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %60, i32 0, i32 15
  %62 = load i32, i32* %61, align 8
  %63 = add i32 %62, %59
  store i32 %63, i32* %61, align 8
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %40, %39, %24, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflate(%struct.z_stream_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inflate_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.code, align 2
  %18 = alloca %struct.code, align 2
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %22 = icmp eq %struct.z_stream_s* %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %2
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %24, i32 0, i32 7
  %26 = load %struct.internal_state*, %struct.internal_state** %25, align 8
  %27 = icmp eq %struct.internal_state* %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %28, %23, %2
  store i32 -2, i32* %3, align 4
  br label %2081

44:                                               ; preds = %38, %33
  %45 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %46 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %45, i32 0, i32 7
  %47 = load %struct.internal_state*, %struct.internal_state** %46, align 8
  %48 = bitcast %struct.internal_state* %47 to %struct.inflate_state*
  store %struct.inflate_state* %48, %struct.inflate_state** %6, align 8
  %49 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %50 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 11
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %55 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %54, i32 0, i32 0
  store i32 12, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %44
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %59 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %8, align 8
  %61 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %62 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %10, align 4
  %64 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %65 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %7, align 8
  %67 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %68 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %9, align 4
  %70 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %71 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %70, i32 0, i32 14
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %11, align 8
  %73 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %74 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %73, i32 0, i32 15
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %57
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %14, align 4
  store i32 0, i32* %20, align 4
  br label %79

79:                                               ; preds = %1919, %76
  %80 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %81 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %1918 [
    i32 0, label %83
    i32 9, label %193
    i32 10, label %243
    i32 11, label %277
    i32 12, label %285
    i32 13, label %377
    i32 14, label %440
    i32 15, label %443
    i32 16, label %495
    i32 17, label %577
    i32 18, label %688
    i32 19, label %1096
    i32 20, label %1099
    i32 21, label %1358
    i32 22, label %1433
    i32 23, label %1609
    i32 24, label %1679
    i32 25, label %1803
    i32 26, label %1818
    i32 28, label %1914
    i32 29, label %1915
    i32 30, label %1916
    i32 31, label %1917
  ]

83:                                               ; preds = %79
  %84 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %85 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %90 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %89, i32 0, i32 0
  store i32 12, i32* %90, align 8
  br label %1919

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %115, %92
  %94 = load i32, i32* %12, align 4
  %95 = icmp ult i32 %94, 16
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %1920

101:                                              ; preds = %97
  %102 = load i32, i32* %9, align 4
  %103 = add i32 %102, -1
  store i32 %103, i32* %9, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %7, align 8
  %106 = load i8, i8* %104, align 1
  %107 = zext i8 %106 to i64
  %108 = load i32, i32* %12, align 4
  %109 = zext i32 %108 to i64
  %110 = shl i64 %107, %109
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %11, align 8
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %113, 8
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %101
  br label %93, !llvm.loop !10

116:                                              ; preds = %93
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %11, align 8
  %119 = trunc i64 %118 to i32
  %120 = and i32 %119, 255
  %121 = shl i32 %120, 8
  %122 = zext i32 %121 to i64
  %123 = load i64, i64* %11, align 8
  %124 = lshr i64 %123, 8
  %125 = add i64 %122, %124
  %126 = urem i64 %125, 31
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %130 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %129, i32 0, i32 6
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %130, align 8
  %131 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %132 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %131, i32 0, i32 0
  store i32 29, i32* %132, align 8
  br label %1919

133:                                              ; preds = %117
  %134 = load i64, i64* %11, align 8
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 15
  %137 = icmp ne i32 %136, 8
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %140 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %139, i32 0, i32 6
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %140, align 8
  %141 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %142 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %141, i32 0, i32 0
  store i32 29, i32* %142, align 8
  br label %1919

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %11, align 8
  %146 = lshr i64 %145, 4
  store i64 %146, i64* %11, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sub i32 %147, 4
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %144
  %150 = load i64, i64* %11, align 8
  %151 = trunc i64 %150 to i32
  %152 = and i32 %151, 15
  %153 = add i32 %152, 8
  store i32 %153, i32* %19, align 4
  %154 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %155 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load i32, i32* %19, align 4
  %160 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %161 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %160, i32 0, i32 9
  store i32 %159, i32* %161, align 8
  br label %174

162:                                              ; preds = %149
  %163 = load i32, i32* %19, align 4
  %164 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %165 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 8
  %167 = icmp ugt i32 %163, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %170 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %169, i32 0, i32 6
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %170, align 8
  %171 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %172 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %171, i32 0, i32 0
  store i32 29, i32* %172, align 8
  br label %1919

173:                                              ; preds = %162
  br label %174

174:                                              ; preds = %173, %158
  %175 = load i32, i32* %19, align 4
  %176 = shl i32 1, %175
  %177 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %178 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 4
  %179 = call i64 @adler32(i64 noundef 0, i8* noundef null, i32 noundef 0)
  %180 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %181 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %180, i32 0, i32 6
  store i64 %179, i64* %181, align 8
  %182 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %183 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %182, i32 0, i32 12
  store i64 %179, i64* %183, align 8
  %184 = load i64, i64* %11, align 8
  %185 = and i64 %184, 512
  %186 = icmp ne i64 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 9, i32 11
  %189 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %190 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %174
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %192

192:                                              ; preds = %191
  br label %1919

193:                                              ; preds = %79
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %217, %194
  %196 = load i32, i32* %12, align 4
  %197 = icmp ult i32 %196, 32
  br i1 %197, label %198, label %218

198:                                              ; preds = %195
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %9, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %1920

203:                                              ; preds = %199
  %204 = load i32, i32* %9, align 4
  %205 = add i32 %204, -1
  store i32 %205, i32* %9, align 4
  %206 = load i8*, i8** %7, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %7, align 8
  %208 = load i8, i8* %206, align 1
  %209 = zext i8 %208 to i64
  %210 = load i32, i32* %12, align 4
  %211 = zext i32 %210 to i64
  %212 = shl i64 %209, %211
  %213 = load i64, i64* %11, align 8
  %214 = add i64 %213, %212
  store i64 %214, i64* %11, align 8
  %215 = load i32, i32* %12, align 4
  %216 = add i32 %215, 8
  store i32 %216, i32* %12, align 4
  br label %217

217:                                              ; preds = %203
  br label %195, !llvm.loop !12

218:                                              ; preds = %195
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %11, align 8
  %221 = lshr i64 %220, 24
  %222 = and i64 %221, 255
  %223 = load i64, i64* %11, align 8
  %224 = lshr i64 %223, 8
  %225 = and i64 %224, 65280
  %226 = add i64 %222, %225
  %227 = load i64, i64* %11, align 8
  %228 = and i64 %227, 65280
  %229 = shl i64 %228, 8
  %230 = add i64 %226, %229
  %231 = load i64, i64* %11, align 8
  %232 = and i64 %231, 255
  %233 = shl i64 %232, 24
  %234 = add i64 %230, %233
  %235 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %236 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %235, i32 0, i32 6
  store i64 %234, i64* %236, align 8
  %237 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %238 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %237, i32 0, i32 12
  store i64 %234, i64* %238, align 8
  br label %239

239:                                              ; preds = %219
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %240

240:                                              ; preds = %239
  %241 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %242 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %241, i32 0, i32 0
  store i32 10, i32* %242, align 8
  br label %243

243:                                              ; preds = %79, %240
  %244 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %245 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %269

248:                                              ; preds = %243
  br label %249

249:                                              ; preds = %248
  %250 = load i8*, i8** %8, align 8
  %251 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %252 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %251, i32 0, i32 3
  store i8* %250, i8** %252, align 8
  %253 = load i32, i32* %10, align 4
  %254 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %255 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %254, i32 0, i32 4
  store i32 %253, i32* %255, align 8
  %256 = load i8*, i8** %7, align 8
  %257 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %258 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %257, i32 0, i32 0
  store i8* %256, i8** %258, align 8
  %259 = load i32, i32* %9, align 4
  %260 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %261 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 8
  %262 = load i64, i64* %11, align 8
  %263 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %264 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %263, i32 0, i32 14
  store i64 %262, i64* %264, align 8
  %265 = load i32, i32* %12, align 4
  %266 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %267 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %266, i32 0, i32 15
  store i32 %265, i32* %267, align 8
  br label %268

268:                                              ; preds = %249
  store i32 2, i32* %3, align 4
  br label %2081

269:                                              ; preds = %243
  %270 = call i64 @adler32(i64 noundef 0, i8* noundef null, i32 noundef 0)
  %271 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %272 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %271, i32 0, i32 6
  store i64 %270, i64* %272, align 8
  %273 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %274 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %273, i32 0, i32 12
  store i64 %270, i64* %274, align 8
  %275 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %276 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %275, i32 0, i32 0
  store i32 11, i32* %276, align 8
  br label %277

277:                                              ; preds = %79, %269
  %278 = load i32, i32* %5, align 4
  %279 = icmp eq i32 %278, 5
  br i1 %279, label %283, label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %5, align 4
  %282 = icmp eq i32 %281, 6
  br i1 %282, label %283, label %284

283:                                              ; preds = %280, %277
  br label %1920

284:                                              ; preds = %280
  br label %285

285:                                              ; preds = %79, %284
  %286 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %287 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %304

290:                                              ; preds = %285
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %12, align 4
  %293 = and i32 %292, 7
  %294 = load i64, i64* %11, align 8
  %295 = zext i32 %293 to i64
  %296 = lshr i64 %294, %295
  store i64 %296, i64* %11, align 8
  %297 = load i32, i32* %12, align 4
  %298 = and i32 %297, 7
  %299 = load i32, i32* %12, align 4
  %300 = sub i32 %299, %298
  store i32 %300, i32* %12, align 4
  br label %301

301:                                              ; preds = %291
  %302 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %303 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %302, i32 0, i32 0
  store i32 26, i32* %303, align 8
  br label %1919

304:                                              ; preds = %285
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %328, %305
  %307 = load i32, i32* %12, align 4
  %308 = icmp ult i32 %307, 3
  br i1 %308, label %309, label %329

309:                                              ; preds = %306
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %9, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  br label %1920

314:                                              ; preds = %310
  %315 = load i32, i32* %9, align 4
  %316 = add i32 %315, -1
  store i32 %316, i32* %9, align 4
  %317 = load i8*, i8** %7, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %7, align 8
  %319 = load i8, i8* %317, align 1
  %320 = zext i8 %319 to i64
  %321 = load i32, i32* %12, align 4
  %322 = zext i32 %321 to i64
  %323 = shl i64 %320, %322
  %324 = load i64, i64* %11, align 8
  %325 = add i64 %324, %323
  store i64 %325, i64* %11, align 8
  %326 = load i32, i32* %12, align 4
  %327 = add i32 %326, 8
  store i32 %327, i32* %12, align 4
  br label %328

328:                                              ; preds = %314
  br label %306, !llvm.loop !13

329:                                              ; preds = %306
  br label %330

330:                                              ; preds = %329
  %331 = load i64, i64* %11, align 8
  %332 = trunc i64 %331 to i32
  %333 = and i32 %332, 1
  %334 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %335 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %334, i32 0, i32 1
  store i32 %333, i32* %335, align 4
  br label %336

336:                                              ; preds = %330
  %337 = load i64, i64* %11, align 8
  %338 = lshr i64 %337, 1
  store i64 %338, i64* %11, align 8
  %339 = load i32, i32* %12, align 4
  %340 = sub i32 %339, 1
  store i32 %340, i32* %12, align 4
  br label %341

341:                                              ; preds = %336
  %342 = load i64, i64* %11, align 8
  %343 = trunc i64 %342 to i32
  %344 = and i32 %343, 3
  switch i32 %344, label %370 [
    i32 0, label %345
    i32 1, label %348
    i32 2, label %362
    i32 3, label %365
  ]

345:                                              ; preds = %341
  %346 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %347 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %346, i32 0, i32 0
  store i32 13, i32* %347, align 8
  br label %370

348:                                              ; preds = %341
  %349 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  call void @fixedtables(%struct.inflate_state* noundef %349)
  %350 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %351 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %350, i32 0, i32 0
  store i32 19, i32* %351, align 8
  %352 = load i32, i32* %5, align 4
  %353 = icmp eq i32 %352, 6
  br i1 %353, label %354, label %361

354:                                              ; preds = %348
  br label %355

355:                                              ; preds = %354
  %356 = load i64, i64* %11, align 8
  %357 = lshr i64 %356, 2
  store i64 %357, i64* %11, align 8
  %358 = load i32, i32* %12, align 4
  %359 = sub i32 %358, 2
  store i32 %359, i32* %12, align 4
  br label %360

360:                                              ; preds = %355
  br label %1920

361:                                              ; preds = %348
  br label %370

362:                                              ; preds = %341
  %363 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %364 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %363, i32 0, i32 0
  store i32 16, i32* %364, align 8
  br label %370

365:                                              ; preds = %341
  %366 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %367 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %366, i32 0, i32 6
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %367, align 8
  %368 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %369 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %368, i32 0, i32 0
  store i32 29, i32* %369, align 8
  br label %370

370:                                              ; preds = %365, %341, %362, %361, %345
  br label %371

371:                                              ; preds = %370
  %372 = load i64, i64* %11, align 8
  %373 = lshr i64 %372, 2
  store i64 %373, i64* %11, align 8
  %374 = load i32, i32* %12, align 4
  %375 = sub i32 %374, 2
  store i32 %375, i32* %12, align 4
  br label %376

376:                                              ; preds = %371
  br label %1919

377:                                              ; preds = %79
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %12, align 4
  %380 = and i32 %379, 7
  %381 = load i64, i64* %11, align 8
  %382 = zext i32 %380 to i64
  %383 = lshr i64 %381, %382
  store i64 %383, i64* %11, align 8
  %384 = load i32, i32* %12, align 4
  %385 = and i32 %384, 7
  %386 = load i32, i32* %12, align 4
  %387 = sub i32 %386, %385
  store i32 %387, i32* %12, align 4
  br label %388

388:                                              ; preds = %378
  br label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %412, %389
  %391 = load i32, i32* %12, align 4
  %392 = icmp ult i32 %391, 32
  br i1 %392, label %393, label %413

393:                                              ; preds = %390
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %9, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %394
  br label %1920

398:                                              ; preds = %394
  %399 = load i32, i32* %9, align 4
  %400 = add i32 %399, -1
  store i32 %400, i32* %9, align 4
  %401 = load i8*, i8** %7, align 8
  %402 = getelementptr inbounds i8, i8* %401, i32 1
  store i8* %402, i8** %7, align 8
  %403 = load i8, i8* %401, align 1
  %404 = zext i8 %403 to i64
  %405 = load i32, i32* %12, align 4
  %406 = zext i32 %405 to i64
  %407 = shl i64 %404, %406
  %408 = load i64, i64* %11, align 8
  %409 = add i64 %408, %407
  store i64 %409, i64* %11, align 8
  %410 = load i32, i32* %12, align 4
  %411 = add i32 %410, 8
  store i32 %411, i32* %12, align 4
  br label %412

412:                                              ; preds = %398
  br label %390, !llvm.loop !14

413:                                              ; preds = %390
  br label %414

414:                                              ; preds = %413
  %415 = load i64, i64* %11, align 8
  %416 = and i64 %415, 65535
  %417 = load i64, i64* %11, align 8
  %418 = lshr i64 %417, 16
  %419 = xor i64 %418, 65535
  %420 = icmp ne i64 %416, %419
  br i1 %420, label %421, label %426

421:                                              ; preds = %414
  %422 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %423 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %422, i32 0, i32 6
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8** %423, align 8
  %424 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %425 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %424, i32 0, i32 0
  store i32 29, i32* %425, align 8
  br label %1919

426:                                              ; preds = %414
  %427 = load i64, i64* %11, align 8
  %428 = trunc i64 %427 to i32
  %429 = and i32 %428, 65535
  %430 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %431 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %430, i32 0, i32 16
  store i32 %429, i32* %431, align 4
  br label %432

432:                                              ; preds = %426
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %433

433:                                              ; preds = %432
  %434 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %435 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %434, i32 0, i32 0
  store i32 14, i32* %435, align 8
  %436 = load i32, i32* %5, align 4
  %437 = icmp eq i32 %436, 6
  br i1 %437, label %438, label %439

438:                                              ; preds = %433
  br label %1920

439:                                              ; preds = %433
  br label %440

440:                                              ; preds = %79, %439
  %441 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %442 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %441, i32 0, i32 0
  store i32 15, i32* %442, align 8
  br label %443

443:                                              ; preds = %79, %440
  %444 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %445 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %444, i32 0, i32 16
  %446 = load i32, i32* %445, align 4
  store i32 %446, i32* %15, align 4
  %447 = load i32, i32* %15, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %492

449:                                              ; preds = %443
  %450 = load i32, i32* %15, align 4
  %451 = load i32, i32* %9, align 4
  %452 = icmp ugt i32 %450, %451
  br i1 %452, label %453, label %455

453:                                              ; preds = %449
  %454 = load i32, i32* %9, align 4
  store i32 %454, i32* %15, align 4
  br label %455

455:                                              ; preds = %453, %449
  %456 = load i32, i32* %15, align 4
  %457 = load i32, i32* %10, align 4
  %458 = icmp ugt i32 %456, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %455
  %460 = load i32, i32* %10, align 4
  store i32 %460, i32* %15, align 4
  br label %461

461:                                              ; preds = %459, %455
  %462 = load i32, i32* %15, align 4
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %461
  br label %1920

465:                                              ; preds = %461
  %466 = load i8*, i8** %8, align 8
  %467 = load i8*, i8** %7, align 8
  %468 = load i32, i32* %15, align 4
  %469 = zext i32 %468 to i64
  %470 = load i8*, i8** %8, align 8
  %471 = call i64 @llvm.objectsize.i64.p0i8(i8* %470, i1 false, i1 true, i1 false)
  %472 = call i8* @__memcpy_chk(i8* noundef %466, i8* noundef %467, i64 noundef %469, i64 noundef %471) #5
  %473 = load i32, i32* %15, align 4
  %474 = load i32, i32* %9, align 4
  %475 = sub i32 %474, %473
  store i32 %475, i32* %9, align 4
  %476 = load i32, i32* %15, align 4
  %477 = load i8*, i8** %7, align 8
  %478 = zext i32 %476 to i64
  %479 = getelementptr inbounds i8, i8* %477, i64 %478
  store i8* %479, i8** %7, align 8
  %480 = load i32, i32* %15, align 4
  %481 = load i32, i32* %10, align 4
  %482 = sub i32 %481, %480
  store i32 %482, i32* %10, align 4
  %483 = load i32, i32* %15, align 4
  %484 = load i8*, i8** %8, align 8
  %485 = zext i32 %483 to i64
  %486 = getelementptr inbounds i8, i8* %484, i64 %485
  store i8* %486, i8** %8, align 8
  %487 = load i32, i32* %15, align 4
  %488 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %489 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %488, i32 0, i32 16
  %490 = load i32, i32* %489, align 4
  %491 = sub i32 %490, %487
  store i32 %491, i32* %489, align 4
  br label %1919

492:                                              ; preds = %443
  %493 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %494 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %493, i32 0, i32 0
  store i32 11, i32* %494, align 8
  br label %1919

495:                                              ; preds = %79
  br label %496

496:                                              ; preds = %495
  br label %497

497:                                              ; preds = %519, %496
  %498 = load i32, i32* %12, align 4
  %499 = icmp ult i32 %498, 14
  br i1 %499, label %500, label %520

500:                                              ; preds = %497
  br label %501

501:                                              ; preds = %500
  %502 = load i32, i32* %9, align 4
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %501
  br label %1920

505:                                              ; preds = %501
  %506 = load i32, i32* %9, align 4
  %507 = add i32 %506, -1
  store i32 %507, i32* %9, align 4
  %508 = load i8*, i8** %7, align 8
  %509 = getelementptr inbounds i8, i8* %508, i32 1
  store i8* %509, i8** %7, align 8
  %510 = load i8, i8* %508, align 1
  %511 = zext i8 %510 to i64
  %512 = load i32, i32* %12, align 4
  %513 = zext i32 %512 to i64
  %514 = shl i64 %511, %513
  %515 = load i64, i64* %11, align 8
  %516 = add i64 %515, %514
  store i64 %516, i64* %11, align 8
  %517 = load i32, i32* %12, align 4
  %518 = add i32 %517, 8
  store i32 %518, i32* %12, align 4
  br label %519

519:                                              ; preds = %505
  br label %497, !llvm.loop !15

520:                                              ; preds = %497
  br label %521

521:                                              ; preds = %520
  %522 = load i64, i64* %11, align 8
  %523 = trunc i64 %522 to i32
  %524 = and i32 %523, 31
  %525 = add i32 %524, 257
  %526 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %527 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %526, i32 0, i32 24
  store i32 %525, i32* %527, align 4
  br label %528

528:                                              ; preds = %521
  %529 = load i64, i64* %11, align 8
  %530 = lshr i64 %529, 5
  store i64 %530, i64* %11, align 8
  %531 = load i32, i32* %12, align 4
  %532 = sub i32 %531, 5
  store i32 %532, i32* %12, align 4
  br label %533

533:                                              ; preds = %528
  %534 = load i64, i64* %11, align 8
  %535 = trunc i64 %534 to i32
  %536 = and i32 %535, 31
  %537 = add i32 %536, 1
  %538 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %539 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %538, i32 0, i32 25
  store i32 %537, i32* %539, align 8
  br label %540

540:                                              ; preds = %533
  %541 = load i64, i64* %11, align 8
  %542 = lshr i64 %541, 5
  store i64 %542, i64* %11, align 8
  %543 = load i32, i32* %12, align 4
  %544 = sub i32 %543, 5
  store i32 %544, i32* %12, align 4
  br label %545

545:                                              ; preds = %540
  %546 = load i64, i64* %11, align 8
  %547 = trunc i64 %546 to i32
  %548 = and i32 %547, 15
  %549 = add i32 %548, 4
  %550 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %551 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %550, i32 0, i32 23
  store i32 %549, i32* %551, align 8
  br label %552

552:                                              ; preds = %545
  %553 = load i64, i64* %11, align 8
  %554 = lshr i64 %553, 4
  store i64 %554, i64* %11, align 8
  %555 = load i32, i32* %12, align 4
  %556 = sub i32 %555, 4
  store i32 %556, i32* %12, align 4
  br label %557

557:                                              ; preds = %552
  %558 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %559 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %558, i32 0, i32 24
  %560 = load i32, i32* %559, align 4
  %561 = icmp ugt i32 %560, 286
  br i1 %561, label %567, label %562

562:                                              ; preds = %557
  %563 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %564 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %563, i32 0, i32 25
  %565 = load i32, i32* %564, align 8
  %566 = icmp ugt i32 %565, 30
  br i1 %566, label %567, label %572

567:                                              ; preds = %562, %557
  %568 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %569 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %568, i32 0, i32 6
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %569, align 8
  %570 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %571 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %570, i32 0, i32 0
  store i32 29, i32* %571, align 8
  br label %1919

572:                                              ; preds = %562
  %573 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %574 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %573, i32 0, i32 26
  store i32 0, i32* %574, align 4
  %575 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %576 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %575, i32 0, i32 0
  store i32 17, i32* %576, align 8
  br label %577

577:                                              ; preds = %79, %572
  br label %578

578:                                              ; preds = %633, %577
  %579 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %580 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %579, i32 0, i32 26
  %581 = load i32, i32* %580, align 4
  %582 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %583 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %582, i32 0, i32 23
  %584 = load i32, i32* %583, align 8
  %585 = icmp ult i32 %581, %584
  br i1 %585, label %586, label %634

586:                                              ; preds = %578
  br label %587

587:                                              ; preds = %586
  br label %588

588:                                              ; preds = %610, %587
  %589 = load i32, i32* %12, align 4
  %590 = icmp ult i32 %589, 3
  br i1 %590, label %591, label %611

591:                                              ; preds = %588
  br label %592

592:                                              ; preds = %591
  %593 = load i32, i32* %9, align 4
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %596

595:                                              ; preds = %592
  br label %1920

596:                                              ; preds = %592
  %597 = load i32, i32* %9, align 4
  %598 = add i32 %597, -1
  store i32 %598, i32* %9, align 4
  %599 = load i8*, i8** %7, align 8
  %600 = getelementptr inbounds i8, i8* %599, i32 1
  store i8* %600, i8** %7, align 8
  %601 = load i8, i8* %599, align 1
  %602 = zext i8 %601 to i64
  %603 = load i32, i32* %12, align 4
  %604 = zext i32 %603 to i64
  %605 = shl i64 %602, %604
  %606 = load i64, i64* %11, align 8
  %607 = add i64 %606, %605
  store i64 %607, i64* %11, align 8
  %608 = load i32, i32* %12, align 4
  %609 = add i32 %608, 8
  store i32 %609, i32* %12, align 4
  br label %610

610:                                              ; preds = %596
  br label %588, !llvm.loop !16

611:                                              ; preds = %588
  br label %612

612:                                              ; preds = %611
  %613 = load i64, i64* %11, align 8
  %614 = trunc i64 %613 to i32
  %615 = and i32 %614, 7
  %616 = trunc i32 %615 to i16
  %617 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %618 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %617, i32 0, i32 28
  %619 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %620 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %619, i32 0, i32 26
  %621 = load i32, i32* %620, align 4
  %622 = add i32 %621, 1
  store i32 %622, i32* %620, align 4
  %623 = zext i32 %621 to i64
  %624 = getelementptr inbounds [19 x i16], [19 x i16]* @inflate.order, i64 0, i64 %623
  %625 = load i16, i16* %624, align 2
  %626 = zext i16 %625 to i64
  %627 = getelementptr inbounds [320 x i16], [320 x i16]* %618, i64 0, i64 %626
  store i16 %616, i16* %627, align 2
  br label %628

628:                                              ; preds = %612
  %629 = load i64, i64* %11, align 8
  %630 = lshr i64 %629, 3
  store i64 %630, i64* %11, align 8
  %631 = load i32, i32* %12, align 4
  %632 = sub i32 %631, 3
  store i32 %632, i32* %12, align 4
  br label %633

633:                                              ; preds = %628
  br label %578, !llvm.loop !17

634:                                              ; preds = %578
  br label %635

635:                                              ; preds = %640, %634
  %636 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %637 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %636, i32 0, i32 26
  %638 = load i32, i32* %637, align 4
  %639 = icmp ult i32 %638, 19
  br i1 %639, label %640, label %652

640:                                              ; preds = %635
  %641 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %642 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %641, i32 0, i32 28
  %643 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %644 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %643, i32 0, i32 26
  %645 = load i32, i32* %644, align 4
  %646 = add i32 %645, 1
  store i32 %646, i32* %644, align 4
  %647 = zext i32 %645 to i64
  %648 = getelementptr inbounds [19 x i16], [19 x i16]* @inflate.order, i64 0, i64 %647
  %649 = load i16, i16* %648, align 2
  %650 = zext i16 %649 to i64
  %651 = getelementptr inbounds [320 x i16], [320 x i16]* %642, i64 0, i64 %650
  store i16 0, i16* %651, align 2
  br label %635, !llvm.loop !18

652:                                              ; preds = %635
  %653 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %654 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %653, i32 0, i32 30
  %655 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %654, i64 0, i64 0
  %656 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %657 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %656, i32 0, i32 27
  store %struct.code* %655, %struct.code** %657, align 8
  %658 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %659 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %658, i32 0, i32 27
  %660 = load %struct.code*, %struct.code** %659, align 8
  %661 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %662 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %661, i32 0, i32 19
  store %struct.code* %660, %struct.code** %662, align 8
  %663 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %664 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %663, i32 0, i32 21
  store i32 7, i32* %664, align 8
  %665 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %666 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %665, i32 0, i32 28
  %667 = getelementptr inbounds [320 x i16], [320 x i16]* %666, i64 0, i64 0
  %668 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %669 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %668, i32 0, i32 27
  %670 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %671 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %670, i32 0, i32 21
  %672 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %673 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %672, i32 0, i32 29
  %674 = getelementptr inbounds [288 x i16], [288 x i16]* %673, i64 0, i64 0
  %675 = call i32 @inflate_table(i32 noundef 0, i16* noundef %667, i32 noundef 19, %struct.code** noundef %669, i32* noundef %671, i16* noundef %674)
  store i32 %675, i32* %20, align 4
  %676 = load i32, i32* %20, align 4
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %683

678:                                              ; preds = %652
  %679 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %680 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %679, i32 0, i32 6
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8** %680, align 8
  %681 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %682 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %681, i32 0, i32 0
  store i32 29, i32* %682, align 8
  br label %1919

683:                                              ; preds = %652
  %684 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %685 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %684, i32 0, i32 26
  store i32 0, i32* %685, align 4
  %686 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %687 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %686, i32 0, i32 0
  store i32 18, i32* %687, align 8
  br label %688

688:                                              ; preds = %79, %683
  br label %689

689:                                              ; preds = %1002, %688
  %690 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %691 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %690, i32 0, i32 26
  %692 = load i32, i32* %691, align 4
  %693 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %694 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %693, i32 0, i32 24
  %695 = load i32, i32* %694, align 4
  %696 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %697 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %696, i32 0, i32 25
  %698 = load i32, i32* %697, align 8
  %699 = add i32 %695, %698
  %700 = icmp ult i32 %692, %699
  br i1 %700, label %701, label %1003

701:                                              ; preds = %689
  br label %702

702:                                              ; preds = %743, %701
  %703 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %704 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %703, i32 0, i32 19
  %705 = load %struct.code*, %struct.code** %704, align 8
  %706 = load i64, i64* %11, align 8
  %707 = trunc i64 %706 to i32
  %708 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %709 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %708, i32 0, i32 21
  %710 = load i32, i32* %709, align 8
  %711 = shl i32 1, %710
  %712 = sub i32 %711, 1
  %713 = and i32 %707, %712
  %714 = zext i32 %713 to i64
  %715 = getelementptr inbounds %struct.code, %struct.code* %705, i64 %714
  %716 = bitcast %struct.code* %17 to i8*
  %717 = bitcast %struct.code* %715 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %716, i8* align 2 %717, i64 4, i1 false)
  %718 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %719 = load i8, i8* %718, align 1
  %720 = zext i8 %719 to i32
  %721 = load i32, i32* %12, align 4
  %722 = icmp ule i32 %720, %721
  br i1 %722, label %723, label %724

723:                                              ; preds = %702
  br label %744

724:                                              ; preds = %702
  br label %725

725:                                              ; preds = %724
  %726 = load i32, i32* %9, align 4
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %729

728:                                              ; preds = %725
  br label %1920

729:                                              ; preds = %725
  %730 = load i32, i32* %9, align 4
  %731 = add i32 %730, -1
  store i32 %731, i32* %9, align 4
  %732 = load i8*, i8** %7, align 8
  %733 = getelementptr inbounds i8, i8* %732, i32 1
  store i8* %733, i8** %7, align 8
  %734 = load i8, i8* %732, align 1
  %735 = zext i8 %734 to i64
  %736 = load i32, i32* %12, align 4
  %737 = zext i32 %736 to i64
  %738 = shl i64 %735, %737
  %739 = load i64, i64* %11, align 8
  %740 = add i64 %739, %738
  store i64 %740, i64* %11, align 8
  %741 = load i32, i32* %12, align 4
  %742 = add i32 %741, 8
  store i32 %742, i32* %12, align 4
  br label %743

743:                                              ; preds = %729
  br label %702

744:                                              ; preds = %723
  %745 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 2
  %746 = load i16, i16* %745, align 2
  %747 = zext i16 %746 to i32
  %748 = icmp slt i32 %747, 16
  br i1 %748, label %749, label %773

749:                                              ; preds = %744
  br label %750

750:                                              ; preds = %749
  %751 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %752 = load i8, i8* %751, align 1
  %753 = zext i8 %752 to i32
  %754 = load i64, i64* %11, align 8
  %755 = zext i32 %753 to i64
  %756 = lshr i64 %754, %755
  store i64 %756, i64* %11, align 8
  %757 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %758 = load i8, i8* %757, align 1
  %759 = zext i8 %758 to i32
  %760 = load i32, i32* %12, align 4
  %761 = sub i32 %760, %759
  store i32 %761, i32* %12, align 4
  br label %762

762:                                              ; preds = %750
  %763 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 2
  %764 = load i16, i16* %763, align 2
  %765 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %766 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %765, i32 0, i32 28
  %767 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %768 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %767, i32 0, i32 26
  %769 = load i32, i32* %768, align 4
  %770 = add i32 %769, 1
  store i32 %770, i32* %768, align 4
  %771 = zext i32 %769 to i64
  %772 = getelementptr inbounds [320 x i16], [320 x i16]* %766, i64 0, i64 %771
  store i16 %764, i16* %772, align 2
  br label %1002

773:                                              ; preds = %744
  %774 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 2
  %775 = load i16, i16* %774, align 2
  %776 = zext i16 %775 to i32
  %777 = icmp eq i32 %776, 16
  br i1 %777, label %778, label %852

778:                                              ; preds = %773
  br label %779

779:                                              ; preds = %778
  br label %780

780:                                              ; preds = %806, %779
  %781 = load i32, i32* %12, align 4
  %782 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %783 = load i8, i8* %782, align 1
  %784 = zext i8 %783 to i32
  %785 = add nsw i32 %784, 2
  %786 = icmp ult i32 %781, %785
  br i1 %786, label %787, label %807

787:                                              ; preds = %780
  br label %788

788:                                              ; preds = %787
  %789 = load i32, i32* %9, align 4
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %791, label %792

791:                                              ; preds = %788
  br label %1920

792:                                              ; preds = %788
  %793 = load i32, i32* %9, align 4
  %794 = add i32 %793, -1
  store i32 %794, i32* %9, align 4
  %795 = load i8*, i8** %7, align 8
  %796 = getelementptr inbounds i8, i8* %795, i32 1
  store i8* %796, i8** %7, align 8
  %797 = load i8, i8* %795, align 1
  %798 = zext i8 %797 to i64
  %799 = load i32, i32* %12, align 4
  %800 = zext i32 %799 to i64
  %801 = shl i64 %798, %800
  %802 = load i64, i64* %11, align 8
  %803 = add i64 %802, %801
  store i64 %803, i64* %11, align 8
  %804 = load i32, i32* %12, align 4
  %805 = add i32 %804, 8
  store i32 %805, i32* %12, align 4
  br label %806

806:                                              ; preds = %792
  br label %780, !llvm.loop !19

807:                                              ; preds = %780
  br label %808

808:                                              ; preds = %807
  br label %809

809:                                              ; preds = %808
  %810 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %811 = load i8, i8* %810, align 1
  %812 = zext i8 %811 to i32
  %813 = load i64, i64* %11, align 8
  %814 = zext i32 %812 to i64
  %815 = lshr i64 %813, %814
  store i64 %815, i64* %11, align 8
  %816 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %817 = load i8, i8* %816, align 1
  %818 = zext i8 %817 to i32
  %819 = load i32, i32* %12, align 4
  %820 = sub i32 %819, %818
  store i32 %820, i32* %12, align 4
  br label %821

821:                                              ; preds = %809
  %822 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %823 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %822, i32 0, i32 26
  %824 = load i32, i32* %823, align 4
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %826, label %831

826:                                              ; preds = %821
  %827 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %828 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %827, i32 0, i32 6
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8** %828, align 8
  %829 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %830 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %829, i32 0, i32 0
  store i32 29, i32* %830, align 8
  br label %1003

831:                                              ; preds = %821
  %832 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %833 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %832, i32 0, i32 28
  %834 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %835 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %834, i32 0, i32 26
  %836 = load i32, i32* %835, align 4
  %837 = sub i32 %836, 1
  %838 = zext i32 %837 to i64
  %839 = getelementptr inbounds [320 x i16], [320 x i16]* %833, i64 0, i64 %838
  %840 = load i16, i16* %839, align 2
  %841 = zext i16 %840 to i32
  store i32 %841, i32* %19, align 4
  %842 = load i64, i64* %11, align 8
  %843 = trunc i64 %842 to i32
  %844 = and i32 %843, 3
  %845 = add i32 3, %844
  store i32 %845, i32* %15, align 4
  br label %846

846:                                              ; preds = %831
  %847 = load i64, i64* %11, align 8
  %848 = lshr i64 %847, 2
  store i64 %848, i64* %11, align 8
  %849 = load i32, i32* %12, align 4
  %850 = sub i32 %849, 2
  store i32 %850, i32* %12, align 4
  br label %851

851:                                              ; preds = %846
  br label %966

852:                                              ; preds = %773
  %853 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 2
  %854 = load i16, i16* %853, align 2
  %855 = zext i16 %854 to i32
  %856 = icmp eq i32 %855, 17
  br i1 %856, label %857, label %911

857:                                              ; preds = %852
  br label %858

858:                                              ; preds = %857
  br label %859

859:                                              ; preds = %885, %858
  %860 = load i32, i32* %12, align 4
  %861 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %862 = load i8, i8* %861, align 1
  %863 = zext i8 %862 to i32
  %864 = add nsw i32 %863, 3
  %865 = icmp ult i32 %860, %864
  br i1 %865, label %866, label %886

866:                                              ; preds = %859
  br label %867

867:                                              ; preds = %866
  %868 = load i32, i32* %9, align 4
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %870, label %871

870:                                              ; preds = %867
  br label %1920

871:                                              ; preds = %867
  %872 = load i32, i32* %9, align 4
  %873 = add i32 %872, -1
  store i32 %873, i32* %9, align 4
  %874 = load i8*, i8** %7, align 8
  %875 = getelementptr inbounds i8, i8* %874, i32 1
  store i8* %875, i8** %7, align 8
  %876 = load i8, i8* %874, align 1
  %877 = zext i8 %876 to i64
  %878 = load i32, i32* %12, align 4
  %879 = zext i32 %878 to i64
  %880 = shl i64 %877, %879
  %881 = load i64, i64* %11, align 8
  %882 = add i64 %881, %880
  store i64 %882, i64* %11, align 8
  %883 = load i32, i32* %12, align 4
  %884 = add i32 %883, 8
  store i32 %884, i32* %12, align 4
  br label %885

885:                                              ; preds = %871
  br label %859, !llvm.loop !20

886:                                              ; preds = %859
  br label %887

887:                                              ; preds = %886
  br label %888

888:                                              ; preds = %887
  %889 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %890 = load i8, i8* %889, align 1
  %891 = zext i8 %890 to i32
  %892 = load i64, i64* %11, align 8
  %893 = zext i32 %891 to i64
  %894 = lshr i64 %892, %893
  store i64 %894, i64* %11, align 8
  %895 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %896 = load i8, i8* %895, align 1
  %897 = zext i8 %896 to i32
  %898 = load i32, i32* %12, align 4
  %899 = sub i32 %898, %897
  store i32 %899, i32* %12, align 4
  br label %900

900:                                              ; preds = %888
  store i32 0, i32* %19, align 4
  %901 = load i64, i64* %11, align 8
  %902 = trunc i64 %901 to i32
  %903 = and i32 %902, 7
  %904 = add i32 3, %903
  store i32 %904, i32* %15, align 4
  br label %905

905:                                              ; preds = %900
  %906 = load i64, i64* %11, align 8
  %907 = lshr i64 %906, 3
  store i64 %907, i64* %11, align 8
  %908 = load i32, i32* %12, align 4
  %909 = sub i32 %908, 3
  store i32 %909, i32* %12, align 4
  br label %910

910:                                              ; preds = %905
  br label %965

911:                                              ; preds = %852
  br label %912

912:                                              ; preds = %911
  br label %913

913:                                              ; preds = %939, %912
  %914 = load i32, i32* %12, align 4
  %915 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %916 = load i8, i8* %915, align 1
  %917 = zext i8 %916 to i32
  %918 = add nsw i32 %917, 7
  %919 = icmp ult i32 %914, %918
  br i1 %919, label %920, label %940

920:                                              ; preds = %913
  br label %921

921:                                              ; preds = %920
  %922 = load i32, i32* %9, align 4
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %924, label %925

924:                                              ; preds = %921
  br label %1920

925:                                              ; preds = %921
  %926 = load i32, i32* %9, align 4
  %927 = add i32 %926, -1
  store i32 %927, i32* %9, align 4
  %928 = load i8*, i8** %7, align 8
  %929 = getelementptr inbounds i8, i8* %928, i32 1
  store i8* %929, i8** %7, align 8
  %930 = load i8, i8* %928, align 1
  %931 = zext i8 %930 to i64
  %932 = load i32, i32* %12, align 4
  %933 = zext i32 %932 to i64
  %934 = shl i64 %931, %933
  %935 = load i64, i64* %11, align 8
  %936 = add i64 %935, %934
  store i64 %936, i64* %11, align 8
  %937 = load i32, i32* %12, align 4
  %938 = add i32 %937, 8
  store i32 %938, i32* %12, align 4
  br label %939

939:                                              ; preds = %925
  br label %913, !llvm.loop !21

940:                                              ; preds = %913
  br label %941

941:                                              ; preds = %940
  br label %942

942:                                              ; preds = %941
  %943 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %944 = load i8, i8* %943, align 1
  %945 = zext i8 %944 to i32
  %946 = load i64, i64* %11, align 8
  %947 = zext i32 %945 to i64
  %948 = lshr i64 %946, %947
  store i64 %948, i64* %11, align 8
  %949 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %950 = load i8, i8* %949, align 1
  %951 = zext i8 %950 to i32
  %952 = load i32, i32* %12, align 4
  %953 = sub i32 %952, %951
  store i32 %953, i32* %12, align 4
  br label %954

954:                                              ; preds = %942
  store i32 0, i32* %19, align 4
  %955 = load i64, i64* %11, align 8
  %956 = trunc i64 %955 to i32
  %957 = and i32 %956, 127
  %958 = add i32 11, %957
  store i32 %958, i32* %15, align 4
  br label %959

959:                                              ; preds = %954
  %960 = load i64, i64* %11, align 8
  %961 = lshr i64 %960, 7
  store i64 %961, i64* %11, align 8
  %962 = load i32, i32* %12, align 4
  %963 = sub i32 %962, 7
  store i32 %963, i32* %12, align 4
  br label %964

964:                                              ; preds = %959
  br label %965

965:                                              ; preds = %964, %910
  br label %966

966:                                              ; preds = %965, %851
  %967 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %968 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %967, i32 0, i32 26
  %969 = load i32, i32* %968, align 4
  %970 = load i32, i32* %15, align 4
  %971 = add i32 %969, %970
  %972 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %973 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %972, i32 0, i32 24
  %974 = load i32, i32* %973, align 4
  %975 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %976 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %975, i32 0, i32 25
  %977 = load i32, i32* %976, align 8
  %978 = add i32 %974, %977
  %979 = icmp ugt i32 %971, %978
  br i1 %979, label %980, label %985

980:                                              ; preds = %966
  %981 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %982 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %981, i32 0, i32 6
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8** %982, align 8
  %983 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %984 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %983, i32 0, i32 0
  store i32 29, i32* %984, align 8
  br label %1003

985:                                              ; preds = %966
  br label %986

986:                                              ; preds = %990, %985
  %987 = load i32, i32* %15, align 4
  %988 = add i32 %987, -1
  store i32 %988, i32* %15, align 4
  %989 = icmp ne i32 %987, 0
  br i1 %989, label %990, label %1001

990:                                              ; preds = %986
  %991 = load i32, i32* %19, align 4
  %992 = trunc i32 %991 to i16
  %993 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %994 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %993, i32 0, i32 28
  %995 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %996 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %995, i32 0, i32 26
  %997 = load i32, i32* %996, align 4
  %998 = add i32 %997, 1
  store i32 %998, i32* %996, align 4
  %999 = zext i32 %997 to i64
  %1000 = getelementptr inbounds [320 x i16], [320 x i16]* %994, i64 0, i64 %999
  store i16 %992, i16* %1000, align 2
  br label %986, !llvm.loop !22

1001:                                             ; preds = %986
  br label %1002

1002:                                             ; preds = %1001, %762
  br label %689, !llvm.loop !23

1003:                                             ; preds = %980, %826, %689
  %1004 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1005 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1004, i32 0, i32 0
  %1006 = load i32, i32* %1005, align 8
  %1007 = icmp eq i32 %1006, 29
  br i1 %1007, label %1008, label %1009

1008:                                             ; preds = %1003
  br label %1919

1009:                                             ; preds = %1003
  %1010 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1011 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1010, i32 0, i32 28
  %1012 = getelementptr inbounds [320 x i16], [320 x i16]* %1011, i64 0, i64 256
  %1013 = load i16, i16* %1012, align 8
  %1014 = zext i16 %1013 to i32
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1016, label %1021

1016:                                             ; preds = %1009
  %1017 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1018 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1017, i32 0, i32 6
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8** %1018, align 8
  %1019 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1020 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1019, i32 0, i32 0
  store i32 29, i32* %1020, align 8
  br label %1919

1021:                                             ; preds = %1009
  %1022 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1023 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1022, i32 0, i32 30
  %1024 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %1023, i64 0, i64 0
  %1025 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1026 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1025, i32 0, i32 27
  store %struct.code* %1024, %struct.code** %1026, align 8
  %1027 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1028 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1027, i32 0, i32 27
  %1029 = load %struct.code*, %struct.code** %1028, align 8
  %1030 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1031 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1030, i32 0, i32 19
  store %struct.code* %1029, %struct.code** %1031, align 8
  %1032 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1033 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1032, i32 0, i32 21
  store i32 9, i32* %1033, align 8
  %1034 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1035 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1034, i32 0, i32 28
  %1036 = getelementptr inbounds [320 x i16], [320 x i16]* %1035, i64 0, i64 0
  %1037 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1038 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1037, i32 0, i32 24
  %1039 = load i32, i32* %1038, align 4
  %1040 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1041 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1040, i32 0, i32 27
  %1042 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1043 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1042, i32 0, i32 21
  %1044 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1045 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1044, i32 0, i32 29
  %1046 = getelementptr inbounds [288 x i16], [288 x i16]* %1045, i64 0, i64 0
  %1047 = call i32 @inflate_table(i32 noundef 1, i16* noundef %1036, i32 noundef %1039, %struct.code** noundef %1041, i32* noundef %1043, i16* noundef %1046)
  store i32 %1047, i32* %20, align 4
  %1048 = load i32, i32* %20, align 4
  %1049 = icmp ne i32 %1048, 0
  br i1 %1049, label %1050, label %1055

1050:                                             ; preds = %1021
  %1051 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1052 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1051, i32 0, i32 6
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %1052, align 8
  %1053 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1054 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1053, i32 0, i32 0
  store i32 29, i32* %1054, align 8
  br label %1919

1055:                                             ; preds = %1021
  %1056 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1057 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1056, i32 0, i32 27
  %1058 = load %struct.code*, %struct.code** %1057, align 8
  %1059 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1060 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1059, i32 0, i32 20
  store %struct.code* %1058, %struct.code** %1060, align 8
  %1061 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1062 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1061, i32 0, i32 22
  store i32 6, i32* %1062, align 4
  %1063 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1064 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1063, i32 0, i32 28
  %1065 = getelementptr inbounds [320 x i16], [320 x i16]* %1064, i64 0, i64 0
  %1066 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1067 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1066, i32 0, i32 24
  %1068 = load i32, i32* %1067, align 4
  %1069 = zext i32 %1068 to i64
  %1070 = getelementptr inbounds i16, i16* %1065, i64 %1069
  %1071 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1072 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1071, i32 0, i32 25
  %1073 = load i32, i32* %1072, align 8
  %1074 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1075 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1074, i32 0, i32 27
  %1076 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1077 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1076, i32 0, i32 22
  %1078 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1079 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1078, i32 0, i32 29
  %1080 = getelementptr inbounds [288 x i16], [288 x i16]* %1079, i64 0, i64 0
  %1081 = call i32 @inflate_table(i32 noundef 2, i16* noundef %1070, i32 noundef %1073, %struct.code** noundef %1075, i32* noundef %1077, i16* noundef %1080)
  store i32 %1081, i32* %20, align 4
  %1082 = load i32, i32* %20, align 4
  %1083 = icmp ne i32 %1082, 0
  br i1 %1083, label %1084, label %1089

1084:                                             ; preds = %1055
  %1085 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1086 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1085, i32 0, i32 6
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8** %1086, align 8
  %1087 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1088 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1087, i32 0, i32 0
  store i32 29, i32* %1088, align 8
  br label %1919

1089:                                             ; preds = %1055
  %1090 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1091 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1090, i32 0, i32 0
  store i32 19, i32* %1091, align 8
  %1092 = load i32, i32* %5, align 4
  %1093 = icmp eq i32 %1092, 6
  br i1 %1093, label %1094, label %1095

1094:                                             ; preds = %1089
  br label %1920

1095:                                             ; preds = %1089
  br label %1096

1096:                                             ; preds = %79, %1095
  %1097 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1098 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1097, i32 0, i32 0
  store i32 20, i32* %1098, align 8
  br label %1099

1099:                                             ; preds = %79, %1096
  %1100 = load i32, i32* %9, align 4
  %1101 = icmp uge i32 %1100, 6
  br i1 %1101, label %1102, label %1156

1102:                                             ; preds = %1099
  %1103 = load i32, i32* %10, align 4
  %1104 = icmp uge i32 %1103, 258
  br i1 %1104, label %1105, label %1156

1105:                                             ; preds = %1102
  br label %1106

1106:                                             ; preds = %1105
  %1107 = load i8*, i8** %8, align 8
  %1108 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1109 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1108, i32 0, i32 3
  store i8* %1107, i8** %1109, align 8
  %1110 = load i32, i32* %10, align 4
  %1111 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1112 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1111, i32 0, i32 4
  store i32 %1110, i32* %1112, align 8
  %1113 = load i8*, i8** %7, align 8
  %1114 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1115 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1114, i32 0, i32 0
  store i8* %1113, i8** %1115, align 8
  %1116 = load i32, i32* %9, align 4
  %1117 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1118 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1117, i32 0, i32 1
  store i32 %1116, i32* %1118, align 8
  %1119 = load i64, i64* %11, align 8
  %1120 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1121 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1120, i32 0, i32 14
  store i64 %1119, i64* %1121, align 8
  %1122 = load i32, i32* %12, align 4
  %1123 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1124 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1123, i32 0, i32 15
  store i32 %1122, i32* %1124, align 8
  br label %1125

1125:                                             ; preds = %1106
  %1126 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1127 = load i32, i32* %14, align 4
  call void @inflate_fast(%struct.z_stream_s* noundef %1126, i32 noundef %1127)
  br label %1128

1128:                                             ; preds = %1125
  %1129 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1130 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1129, i32 0, i32 3
  %1131 = load i8*, i8** %1130, align 8
  store i8* %1131, i8** %8, align 8
  %1132 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1133 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1132, i32 0, i32 4
  %1134 = load i32, i32* %1133, align 8
  store i32 %1134, i32* %10, align 4
  %1135 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1136 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1135, i32 0, i32 0
  %1137 = load i8*, i8** %1136, align 8
  store i8* %1137, i8** %7, align 8
  %1138 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1139 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1138, i32 0, i32 1
  %1140 = load i32, i32* %1139, align 8
  store i32 %1140, i32* %9, align 4
  %1141 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1142 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1141, i32 0, i32 14
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %11, align 8
  %1144 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1145 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1144, i32 0, i32 15
  %1146 = load i32, i32* %1145, align 8
  store i32 %1146, i32* %12, align 4
  br label %1147

1147:                                             ; preds = %1128
  %1148 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1149 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1148, i32 0, i32 0
  %1150 = load i32, i32* %1149, align 8
  %1151 = icmp eq i32 %1150, 11
  br i1 %1151, label %1152, label %1155

1152:                                             ; preds = %1147
  %1153 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1154 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1153, i32 0, i32 32
  store i32 -1, i32* %1154, align 4
  br label %1155

1155:                                             ; preds = %1152, %1147
  br label %1919

1156:                                             ; preds = %1102, %1099
  %1157 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1158 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1157, i32 0, i32 32
  store i32 0, i32* %1158, align 4
  br label %1159

1159:                                             ; preds = %1200, %1156
  %1160 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1161 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1160, i32 0, i32 19
  %1162 = load %struct.code*, %struct.code** %1161, align 8
  %1163 = load i64, i64* %11, align 8
  %1164 = trunc i64 %1163 to i32
  %1165 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1166 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1165, i32 0, i32 21
  %1167 = load i32, i32* %1166, align 8
  %1168 = shl i32 1, %1167
  %1169 = sub i32 %1168, 1
  %1170 = and i32 %1164, %1169
  %1171 = zext i32 %1170 to i64
  %1172 = getelementptr inbounds %struct.code, %struct.code* %1162, i64 %1171
  %1173 = bitcast %struct.code* %17 to i8*
  %1174 = bitcast %struct.code* %1172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1173, i8* align 2 %1174, i64 4, i1 false)
  %1175 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %1176 = load i8, i8* %1175, align 1
  %1177 = zext i8 %1176 to i32
  %1178 = load i32, i32* %12, align 4
  %1179 = icmp ule i32 %1177, %1178
  br i1 %1179, label %1180, label %1181

1180:                                             ; preds = %1159
  br label %1201

1181:                                             ; preds = %1159
  br label %1182

1182:                                             ; preds = %1181
  %1183 = load i32, i32* %9, align 4
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1185, label %1186

1185:                                             ; preds = %1182
  br label %1920

1186:                                             ; preds = %1182
  %1187 = load i32, i32* %9, align 4
  %1188 = add i32 %1187, -1
  store i32 %1188, i32* %9, align 4
  %1189 = load i8*, i8** %7, align 8
  %1190 = getelementptr inbounds i8, i8* %1189, i32 1
  store i8* %1190, i8** %7, align 8
  %1191 = load i8, i8* %1189, align 1
  %1192 = zext i8 %1191 to i64
  %1193 = load i32, i32* %12, align 4
  %1194 = zext i32 %1193 to i64
  %1195 = shl i64 %1192, %1194
  %1196 = load i64, i64* %11, align 8
  %1197 = add i64 %1196, %1195
  store i64 %1197, i64* %11, align 8
  %1198 = load i32, i32* %12, align 4
  %1199 = add i32 %1198, 8
  store i32 %1199, i32* %12, align 4
  br label %1200

1200:                                             ; preds = %1186
  br label %1159

1201:                                             ; preds = %1180
  %1202 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 0
  %1203 = load i8, i8* %1202, align 2
  %1204 = zext i8 %1203 to i32
  %1205 = icmp ne i32 %1204, 0
  br i1 %1205, label %1206, label %1294

1206:                                             ; preds = %1201
  %1207 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 0
  %1208 = load i8, i8* %1207, align 2
  %1209 = zext i8 %1208 to i32
  %1210 = and i32 %1209, 240
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1212, label %1294

1212:                                             ; preds = %1206
  %1213 = bitcast %struct.code* %18 to i8*
  %1214 = bitcast %struct.code* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1213, i8* align 2 %1214, i64 4, i1 false)
  br label %1215

1215:                                             ; preds = %1272, %1212
  %1216 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1217 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1216, i32 0, i32 19
  %1218 = load %struct.code*, %struct.code** %1217, align 8
  %1219 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 2
  %1220 = load i16, i16* %1219, align 2
  %1221 = zext i16 %1220 to i32
  %1222 = load i64, i64* %11, align 8
  %1223 = trunc i64 %1222 to i32
  %1224 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 1
  %1225 = load i8, i8* %1224, align 1
  %1226 = zext i8 %1225 to i32
  %1227 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 0
  %1228 = load i8, i8* %1227, align 2
  %1229 = zext i8 %1228 to i32
  %1230 = add nsw i32 %1226, %1229
  %1231 = shl i32 1, %1230
  %1232 = sub i32 %1231, 1
  %1233 = and i32 %1223, %1232
  %1234 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 1
  %1235 = load i8, i8* %1234, align 1
  %1236 = zext i8 %1235 to i32
  %1237 = lshr i32 %1233, %1236
  %1238 = add i32 %1221, %1237
  %1239 = zext i32 %1238 to i64
  %1240 = getelementptr inbounds %struct.code, %struct.code* %1218, i64 %1239
  %1241 = bitcast %struct.code* %17 to i8*
  %1242 = bitcast %struct.code* %1240 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1241, i8* align 2 %1242, i64 4, i1 false)
  %1243 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 1
  %1244 = load i8, i8* %1243, align 1
  %1245 = zext i8 %1244 to i32
  %1246 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %1247 = load i8, i8* %1246, align 1
  %1248 = zext i8 %1247 to i32
  %1249 = add nsw i32 %1245, %1248
  %1250 = load i32, i32* %12, align 4
  %1251 = icmp ule i32 %1249, %1250
  br i1 %1251, label %1252, label %1253

1252:                                             ; preds = %1215
  br label %1273

1253:                                             ; preds = %1215
  br label %1254

1254:                                             ; preds = %1253
  %1255 = load i32, i32* %9, align 4
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1257, label %1258

1257:                                             ; preds = %1254
  br label %1920

1258:                                             ; preds = %1254
  %1259 = load i32, i32* %9, align 4
  %1260 = add i32 %1259, -1
  store i32 %1260, i32* %9, align 4
  %1261 = load i8*, i8** %7, align 8
  %1262 = getelementptr inbounds i8, i8* %1261, i32 1
  store i8* %1262, i8** %7, align 8
  %1263 = load i8, i8* %1261, align 1
  %1264 = zext i8 %1263 to i64
  %1265 = load i32, i32* %12, align 4
  %1266 = zext i32 %1265 to i64
  %1267 = shl i64 %1264, %1266
  %1268 = load i64, i64* %11, align 8
  %1269 = add i64 %1268, %1267
  store i64 %1269, i64* %11, align 8
  %1270 = load i32, i32* %12, align 4
  %1271 = add i32 %1270, 8
  store i32 %1271, i32* %12, align 4
  br label %1272

1272:                                             ; preds = %1258
  br label %1215

1273:                                             ; preds = %1252
  br label %1274

1274:                                             ; preds = %1273
  %1275 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 1
  %1276 = load i8, i8* %1275, align 1
  %1277 = zext i8 %1276 to i32
  %1278 = load i64, i64* %11, align 8
  %1279 = zext i32 %1277 to i64
  %1280 = lshr i64 %1278, %1279
  store i64 %1280, i64* %11, align 8
  %1281 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 1
  %1282 = load i8, i8* %1281, align 1
  %1283 = zext i8 %1282 to i32
  %1284 = load i32, i32* %12, align 4
  %1285 = sub i32 %1284, %1283
  store i32 %1285, i32* %12, align 4
  br label %1286

1286:                                             ; preds = %1274
  %1287 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 1
  %1288 = load i8, i8* %1287, align 1
  %1289 = zext i8 %1288 to i32
  %1290 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1291 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1290, i32 0, i32 32
  %1292 = load i32, i32* %1291, align 4
  %1293 = add nsw i32 %1292, %1289
  store i32 %1293, i32* %1291, align 4
  br label %1294

1294:                                             ; preds = %1286, %1206, %1201
  br label %1295

1295:                                             ; preds = %1294
  %1296 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %1297 = load i8, i8* %1296, align 1
  %1298 = zext i8 %1297 to i32
  %1299 = load i64, i64* %11, align 8
  %1300 = zext i32 %1298 to i64
  %1301 = lshr i64 %1299, %1300
  store i64 %1301, i64* %11, align 8
  %1302 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %1303 = load i8, i8* %1302, align 1
  %1304 = zext i8 %1303 to i32
  %1305 = load i32, i32* %12, align 4
  %1306 = sub i32 %1305, %1304
  store i32 %1306, i32* %12, align 4
  br label %1307

1307:                                             ; preds = %1295
  %1308 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %1309 = load i8, i8* %1308, align 1
  %1310 = zext i8 %1309 to i32
  %1311 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1312 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1311, i32 0, i32 32
  %1313 = load i32, i32* %1312, align 4
  %1314 = add nsw i32 %1313, %1310
  store i32 %1314, i32* %1312, align 4
  %1315 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 2
  %1316 = load i16, i16* %1315, align 2
  %1317 = zext i16 %1316 to i32
  %1318 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1319 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1318, i32 0, i32 16
  store i32 %1317, i32* %1319, align 4
  %1320 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 0
  %1321 = load i8, i8* %1320, align 2
  %1322 = zext i8 %1321 to i32
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1324, label %1327

1324:                                             ; preds = %1307
  %1325 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1326 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1325, i32 0, i32 0
  store i32 25, i32* %1326, align 8
  br label %1919

1327:                                             ; preds = %1307
  %1328 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 0
  %1329 = load i8, i8* %1328, align 2
  %1330 = zext i8 %1329 to i32
  %1331 = and i32 %1330, 32
  %1332 = icmp ne i32 %1331, 0
  br i1 %1332, label %1333, label %1338

1333:                                             ; preds = %1327
  %1334 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1335 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1334, i32 0, i32 32
  store i32 -1, i32* %1335, align 4
  %1336 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1337 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1336, i32 0, i32 0
  store i32 11, i32* %1337, align 8
  br label %1919

1338:                                             ; preds = %1327
  %1339 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 0
  %1340 = load i8, i8* %1339, align 2
  %1341 = zext i8 %1340 to i32
  %1342 = and i32 %1341, 64
  %1343 = icmp ne i32 %1342, 0
  br i1 %1343, label %1344, label %1349

1344:                                             ; preds = %1338
  %1345 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1346 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1345, i32 0, i32 6
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8** %1346, align 8
  %1347 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1348 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1347, i32 0, i32 0
  store i32 29, i32* %1348, align 8
  br label %1919

1349:                                             ; preds = %1338
  %1350 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 0
  %1351 = load i8, i8* %1350, align 2
  %1352 = zext i8 %1351 to i32
  %1353 = and i32 %1352, 15
  %1354 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1355 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1354, i32 0, i32 18
  store i32 %1353, i32* %1355, align 4
  %1356 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1357 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1356, i32 0, i32 0
  store i32 21, i32* %1357, align 8
  br label %1358

1358:                                             ; preds = %79, %1349
  %1359 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1360 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1359, i32 0, i32 18
  %1361 = load i32, i32* %1360, align 4
  %1362 = icmp ne i32 %1361, 0
  br i1 %1362, label %1363, label %1425

1363:                                             ; preds = %1358
  br label %1364

1364:                                             ; preds = %1363
  br label %1365

1365:                                             ; preds = %1390, %1364
  %1366 = load i32, i32* %12, align 4
  %1367 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1368 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1367, i32 0, i32 18
  %1369 = load i32, i32* %1368, align 4
  %1370 = icmp ult i32 %1366, %1369
  br i1 %1370, label %1371, label %1391

1371:                                             ; preds = %1365
  br label %1372

1372:                                             ; preds = %1371
  %1373 = load i32, i32* %9, align 4
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1375, label %1376

1375:                                             ; preds = %1372
  br label %1920

1376:                                             ; preds = %1372
  %1377 = load i32, i32* %9, align 4
  %1378 = add i32 %1377, -1
  store i32 %1378, i32* %9, align 4
  %1379 = load i8*, i8** %7, align 8
  %1380 = getelementptr inbounds i8, i8* %1379, i32 1
  store i8* %1380, i8** %7, align 8
  %1381 = load i8, i8* %1379, align 1
  %1382 = zext i8 %1381 to i64
  %1383 = load i32, i32* %12, align 4
  %1384 = zext i32 %1383 to i64
  %1385 = shl i64 %1382, %1384
  %1386 = load i64, i64* %11, align 8
  %1387 = add i64 %1386, %1385
  store i64 %1387, i64* %11, align 8
  %1388 = load i32, i32* %12, align 4
  %1389 = add i32 %1388, 8
  store i32 %1389, i32* %12, align 4
  br label %1390

1390:                                             ; preds = %1376
  br label %1365, !llvm.loop !24

1391:                                             ; preds = %1365
  br label %1392

1392:                                             ; preds = %1391
  %1393 = load i64, i64* %11, align 8
  %1394 = trunc i64 %1393 to i32
  %1395 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1396 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1395, i32 0, i32 18
  %1397 = load i32, i32* %1396, align 4
  %1398 = shl i32 1, %1397
  %1399 = sub i32 %1398, 1
  %1400 = and i32 %1394, %1399
  %1401 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1402 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1401, i32 0, i32 16
  %1403 = load i32, i32* %1402, align 4
  %1404 = add i32 %1403, %1400
  store i32 %1404, i32* %1402, align 4
  br label %1405

1405:                                             ; preds = %1392
  %1406 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1407 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1406, i32 0, i32 18
  %1408 = load i32, i32* %1407, align 4
  %1409 = load i64, i64* %11, align 8
  %1410 = zext i32 %1408 to i64
  %1411 = lshr i64 %1409, %1410
  store i64 %1411, i64* %11, align 8
  %1412 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1413 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1412, i32 0, i32 18
  %1414 = load i32, i32* %1413, align 4
  %1415 = load i32, i32* %12, align 4
  %1416 = sub i32 %1415, %1414
  store i32 %1416, i32* %12, align 4
  br label %1417

1417:                                             ; preds = %1405
  %1418 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1419 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1418, i32 0, i32 18
  %1420 = load i32, i32* %1419, align 4
  %1421 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1422 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1421, i32 0, i32 32
  %1423 = load i32, i32* %1422, align 4
  %1424 = add i32 %1423, %1420
  store i32 %1424, i32* %1422, align 4
  br label %1425

1425:                                             ; preds = %1417, %1358
  %1426 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1427 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1426, i32 0, i32 16
  %1428 = load i32, i32* %1427, align 4
  %1429 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1430 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1429, i32 0, i32 33
  store i32 %1428, i32* %1430, align 8
  %1431 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1432 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1431, i32 0, i32 0
  store i32 22, i32* %1432, align 8
  br label %1433

1433:                                             ; preds = %79, %1425
  br label %1434

1434:                                             ; preds = %1475, %1433
  %1435 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1436 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1435, i32 0, i32 20
  %1437 = load %struct.code*, %struct.code** %1436, align 8
  %1438 = load i64, i64* %11, align 8
  %1439 = trunc i64 %1438 to i32
  %1440 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1441 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1440, i32 0, i32 22
  %1442 = load i32, i32* %1441, align 4
  %1443 = shl i32 1, %1442
  %1444 = sub i32 %1443, 1
  %1445 = and i32 %1439, %1444
  %1446 = zext i32 %1445 to i64
  %1447 = getelementptr inbounds %struct.code, %struct.code* %1437, i64 %1446
  %1448 = bitcast %struct.code* %17 to i8*
  %1449 = bitcast %struct.code* %1447 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1448, i8* align 2 %1449, i64 4, i1 false)
  %1450 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %1451 = load i8, i8* %1450, align 1
  %1452 = zext i8 %1451 to i32
  %1453 = load i32, i32* %12, align 4
  %1454 = icmp ule i32 %1452, %1453
  br i1 %1454, label %1455, label %1456

1455:                                             ; preds = %1434
  br label %1476

1456:                                             ; preds = %1434
  br label %1457

1457:                                             ; preds = %1456
  %1458 = load i32, i32* %9, align 4
  %1459 = icmp eq i32 %1458, 0
  br i1 %1459, label %1460, label %1461

1460:                                             ; preds = %1457
  br label %1920

1461:                                             ; preds = %1457
  %1462 = load i32, i32* %9, align 4
  %1463 = add i32 %1462, -1
  store i32 %1463, i32* %9, align 4
  %1464 = load i8*, i8** %7, align 8
  %1465 = getelementptr inbounds i8, i8* %1464, i32 1
  store i8* %1465, i8** %7, align 8
  %1466 = load i8, i8* %1464, align 1
  %1467 = zext i8 %1466 to i64
  %1468 = load i32, i32* %12, align 4
  %1469 = zext i32 %1468 to i64
  %1470 = shl i64 %1467, %1469
  %1471 = load i64, i64* %11, align 8
  %1472 = add i64 %1471, %1470
  store i64 %1472, i64* %11, align 8
  %1473 = load i32, i32* %12, align 4
  %1474 = add i32 %1473, 8
  store i32 %1474, i32* %12, align 4
  br label %1475

1475:                                             ; preds = %1461
  br label %1434

1476:                                             ; preds = %1455
  %1477 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 0
  %1478 = load i8, i8* %1477, align 2
  %1479 = zext i8 %1478 to i32
  %1480 = and i32 %1479, 240
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1482, label %1564

1482:                                             ; preds = %1476
  %1483 = bitcast %struct.code* %18 to i8*
  %1484 = bitcast %struct.code* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1483, i8* align 2 %1484, i64 4, i1 false)
  br label %1485

1485:                                             ; preds = %1542, %1482
  %1486 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1487 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1486, i32 0, i32 20
  %1488 = load %struct.code*, %struct.code** %1487, align 8
  %1489 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 2
  %1490 = load i16, i16* %1489, align 2
  %1491 = zext i16 %1490 to i32
  %1492 = load i64, i64* %11, align 8
  %1493 = trunc i64 %1492 to i32
  %1494 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 1
  %1495 = load i8, i8* %1494, align 1
  %1496 = zext i8 %1495 to i32
  %1497 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 0
  %1498 = load i8, i8* %1497, align 2
  %1499 = zext i8 %1498 to i32
  %1500 = add nsw i32 %1496, %1499
  %1501 = shl i32 1, %1500
  %1502 = sub i32 %1501, 1
  %1503 = and i32 %1493, %1502
  %1504 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 1
  %1505 = load i8, i8* %1504, align 1
  %1506 = zext i8 %1505 to i32
  %1507 = lshr i32 %1503, %1506
  %1508 = add i32 %1491, %1507
  %1509 = zext i32 %1508 to i64
  %1510 = getelementptr inbounds %struct.code, %struct.code* %1488, i64 %1509
  %1511 = bitcast %struct.code* %17 to i8*
  %1512 = bitcast %struct.code* %1510 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1511, i8* align 2 %1512, i64 4, i1 false)
  %1513 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 1
  %1514 = load i8, i8* %1513, align 1
  %1515 = zext i8 %1514 to i32
  %1516 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %1517 = load i8, i8* %1516, align 1
  %1518 = zext i8 %1517 to i32
  %1519 = add nsw i32 %1515, %1518
  %1520 = load i32, i32* %12, align 4
  %1521 = icmp ule i32 %1519, %1520
  br i1 %1521, label %1522, label %1523

1522:                                             ; preds = %1485
  br label %1543

1523:                                             ; preds = %1485
  br label %1524

1524:                                             ; preds = %1523
  %1525 = load i32, i32* %9, align 4
  %1526 = icmp eq i32 %1525, 0
  br i1 %1526, label %1527, label %1528

1527:                                             ; preds = %1524
  br label %1920

1528:                                             ; preds = %1524
  %1529 = load i32, i32* %9, align 4
  %1530 = add i32 %1529, -1
  store i32 %1530, i32* %9, align 4
  %1531 = load i8*, i8** %7, align 8
  %1532 = getelementptr inbounds i8, i8* %1531, i32 1
  store i8* %1532, i8** %7, align 8
  %1533 = load i8, i8* %1531, align 1
  %1534 = zext i8 %1533 to i64
  %1535 = load i32, i32* %12, align 4
  %1536 = zext i32 %1535 to i64
  %1537 = shl i64 %1534, %1536
  %1538 = load i64, i64* %11, align 8
  %1539 = add i64 %1538, %1537
  store i64 %1539, i64* %11, align 8
  %1540 = load i32, i32* %12, align 4
  %1541 = add i32 %1540, 8
  store i32 %1541, i32* %12, align 4
  br label %1542

1542:                                             ; preds = %1528
  br label %1485

1543:                                             ; preds = %1522
  br label %1544

1544:                                             ; preds = %1543
  %1545 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 1
  %1546 = load i8, i8* %1545, align 1
  %1547 = zext i8 %1546 to i32
  %1548 = load i64, i64* %11, align 8
  %1549 = zext i32 %1547 to i64
  %1550 = lshr i64 %1548, %1549
  store i64 %1550, i64* %11, align 8
  %1551 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 1
  %1552 = load i8, i8* %1551, align 1
  %1553 = zext i8 %1552 to i32
  %1554 = load i32, i32* %12, align 4
  %1555 = sub i32 %1554, %1553
  store i32 %1555, i32* %12, align 4
  br label %1556

1556:                                             ; preds = %1544
  %1557 = getelementptr inbounds %struct.code, %struct.code* %18, i32 0, i32 1
  %1558 = load i8, i8* %1557, align 1
  %1559 = zext i8 %1558 to i32
  %1560 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1561 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1560, i32 0, i32 32
  %1562 = load i32, i32* %1561, align 4
  %1563 = add nsw i32 %1562, %1559
  store i32 %1563, i32* %1561, align 4
  br label %1564

1564:                                             ; preds = %1556, %1476
  br label %1565

1565:                                             ; preds = %1564
  %1566 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %1567 = load i8, i8* %1566, align 1
  %1568 = zext i8 %1567 to i32
  %1569 = load i64, i64* %11, align 8
  %1570 = zext i32 %1568 to i64
  %1571 = lshr i64 %1569, %1570
  store i64 %1571, i64* %11, align 8
  %1572 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %1573 = load i8, i8* %1572, align 1
  %1574 = zext i8 %1573 to i32
  %1575 = load i32, i32* %12, align 4
  %1576 = sub i32 %1575, %1574
  store i32 %1576, i32* %12, align 4
  br label %1577

1577:                                             ; preds = %1565
  %1578 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 1
  %1579 = load i8, i8* %1578, align 1
  %1580 = zext i8 %1579 to i32
  %1581 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1582 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1581, i32 0, i32 32
  %1583 = load i32, i32* %1582, align 4
  %1584 = add nsw i32 %1583, %1580
  store i32 %1584, i32* %1582, align 4
  %1585 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 0
  %1586 = load i8, i8* %1585, align 2
  %1587 = zext i8 %1586 to i32
  %1588 = and i32 %1587, 64
  %1589 = icmp ne i32 %1588, 0
  br i1 %1589, label %1590, label %1595

1590:                                             ; preds = %1577
  %1591 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1592 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1591, i32 0, i32 6
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8** %1592, align 8
  %1593 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1594 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1593, i32 0, i32 0
  store i32 29, i32* %1594, align 8
  br label %1919

1595:                                             ; preds = %1577
  %1596 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 2
  %1597 = load i16, i16* %1596, align 2
  %1598 = zext i16 %1597 to i32
  %1599 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1600 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1599, i32 0, i32 17
  store i32 %1598, i32* %1600, align 8
  %1601 = getelementptr inbounds %struct.code, %struct.code* %17, i32 0, i32 0
  %1602 = load i8, i8* %1601, align 2
  %1603 = zext i8 %1602 to i32
  %1604 = and i32 %1603, 15
  %1605 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1606 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1605, i32 0, i32 18
  store i32 %1604, i32* %1606, align 4
  %1607 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1608 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1607, i32 0, i32 0
  store i32 23, i32* %1608, align 8
  br label %1609

1609:                                             ; preds = %79, %1595
  %1610 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1611 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1610, i32 0, i32 18
  %1612 = load i32, i32* %1611, align 4
  %1613 = icmp ne i32 %1612, 0
  br i1 %1613, label %1614, label %1676

1614:                                             ; preds = %1609
  br label %1615

1615:                                             ; preds = %1614
  br label %1616

1616:                                             ; preds = %1641, %1615
  %1617 = load i32, i32* %12, align 4
  %1618 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1619 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1618, i32 0, i32 18
  %1620 = load i32, i32* %1619, align 4
  %1621 = icmp ult i32 %1617, %1620
  br i1 %1621, label %1622, label %1642

1622:                                             ; preds = %1616
  br label %1623

1623:                                             ; preds = %1622
  %1624 = load i32, i32* %9, align 4
  %1625 = icmp eq i32 %1624, 0
  br i1 %1625, label %1626, label %1627

1626:                                             ; preds = %1623
  br label %1920

1627:                                             ; preds = %1623
  %1628 = load i32, i32* %9, align 4
  %1629 = add i32 %1628, -1
  store i32 %1629, i32* %9, align 4
  %1630 = load i8*, i8** %7, align 8
  %1631 = getelementptr inbounds i8, i8* %1630, i32 1
  store i8* %1631, i8** %7, align 8
  %1632 = load i8, i8* %1630, align 1
  %1633 = zext i8 %1632 to i64
  %1634 = load i32, i32* %12, align 4
  %1635 = zext i32 %1634 to i64
  %1636 = shl i64 %1633, %1635
  %1637 = load i64, i64* %11, align 8
  %1638 = add i64 %1637, %1636
  store i64 %1638, i64* %11, align 8
  %1639 = load i32, i32* %12, align 4
  %1640 = add i32 %1639, 8
  store i32 %1640, i32* %12, align 4
  br label %1641

1641:                                             ; preds = %1627
  br label %1616, !llvm.loop !25

1642:                                             ; preds = %1616
  br label %1643

1643:                                             ; preds = %1642
  %1644 = load i64, i64* %11, align 8
  %1645 = trunc i64 %1644 to i32
  %1646 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1647 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1646, i32 0, i32 18
  %1648 = load i32, i32* %1647, align 4
  %1649 = shl i32 1, %1648
  %1650 = sub i32 %1649, 1
  %1651 = and i32 %1645, %1650
  %1652 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1653 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1652, i32 0, i32 17
  %1654 = load i32, i32* %1653, align 8
  %1655 = add i32 %1654, %1651
  store i32 %1655, i32* %1653, align 8
  br label %1656

1656:                                             ; preds = %1643
  %1657 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1658 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1657, i32 0, i32 18
  %1659 = load i32, i32* %1658, align 4
  %1660 = load i64, i64* %11, align 8
  %1661 = zext i32 %1659 to i64
  %1662 = lshr i64 %1660, %1661
  store i64 %1662, i64* %11, align 8
  %1663 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1664 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1663, i32 0, i32 18
  %1665 = load i32, i32* %1664, align 4
  %1666 = load i32, i32* %12, align 4
  %1667 = sub i32 %1666, %1665
  store i32 %1667, i32* %12, align 4
  br label %1668

1668:                                             ; preds = %1656
  %1669 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1670 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1669, i32 0, i32 18
  %1671 = load i32, i32* %1670, align 4
  %1672 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1673 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1672, i32 0, i32 32
  %1674 = load i32, i32* %1673, align 4
  %1675 = add i32 %1674, %1671
  store i32 %1675, i32* %1673, align 4
  br label %1676

1676:                                             ; preds = %1668, %1609
  %1677 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1678 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1677, i32 0, i32 0
  store i32 24, i32* %1678, align 8
  br label %1679

1679:                                             ; preds = %79, %1676
  %1680 = load i32, i32* %10, align 4
  %1681 = icmp eq i32 %1680, 0
  br i1 %1681, label %1682, label %1683

1682:                                             ; preds = %1679
  br label %1920

1683:                                             ; preds = %1679
  %1684 = load i32, i32* %14, align 4
  %1685 = load i32, i32* %10, align 4
  %1686 = sub i32 %1684, %1685
  store i32 %1686, i32* %15, align 4
  %1687 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1688 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1687, i32 0, i32 17
  %1689 = load i32, i32* %1688, align 8
  %1690 = load i32, i32* %15, align 4
  %1691 = icmp ugt i32 %1689, %1690
  br i1 %1691, label %1692, label %1758

1692:                                             ; preds = %1683
  %1693 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1694 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1693, i32 0, i32 17
  %1695 = load i32, i32* %1694, align 8
  %1696 = load i32, i32* %15, align 4
  %1697 = sub i32 %1695, %1696
  store i32 %1697, i32* %15, align 4
  %1698 = load i32, i32* %15, align 4
  %1699 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1700 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1699, i32 0, i32 11
  %1701 = load i32, i32* %1700, align 8
  %1702 = icmp ugt i32 %1698, %1701
  br i1 %1702, label %1703, label %1714

1703:                                             ; preds = %1692
  %1704 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1705 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1704, i32 0, i32 31
  %1706 = load i32, i32* %1705, align 8
  %1707 = icmp ne i32 %1706, 0
  br i1 %1707, label %1708, label %1713

1708:                                             ; preds = %1703
  %1709 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1710 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1709, i32 0, i32 6
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8** %1710, align 8
  %1711 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1712 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1711, i32 0, i32 0
  store i32 29, i32* %1712, align 8
  br label %1919

1713:                                             ; preds = %1703
  br label %1714

1714:                                             ; preds = %1713, %1692
  %1715 = load i32, i32* %15, align 4
  %1716 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1717 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1716, i32 0, i32 12
  %1718 = load i32, i32* %1717, align 4
  %1719 = icmp ugt i32 %1715, %1718
  br i1 %1719, label %1720, label %1736

1720:                                             ; preds = %1714
  %1721 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1722 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1721, i32 0, i32 12
  %1723 = load i32, i32* %1722, align 4
  %1724 = load i32, i32* %15, align 4
  %1725 = sub i32 %1724, %1723
  store i32 %1725, i32* %15, align 4
  %1726 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1727 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1726, i32 0, i32 13
  %1728 = load i8*, i8** %1727, align 8
  %1729 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1730 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1729, i32 0, i32 10
  %1731 = load i32, i32* %1730, align 4
  %1732 = load i32, i32* %15, align 4
  %1733 = sub i32 %1731, %1732
  %1734 = zext i32 %1733 to i64
  %1735 = getelementptr inbounds i8, i8* %1728, i64 %1734
  store i8* %1735, i8** %16, align 8
  br label %1747

1736:                                             ; preds = %1714
  %1737 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1738 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1737, i32 0, i32 13
  %1739 = load i8*, i8** %1738, align 8
  %1740 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1741 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1740, i32 0, i32 12
  %1742 = load i32, i32* %1741, align 4
  %1743 = load i32, i32* %15, align 4
  %1744 = sub i32 %1742, %1743
  %1745 = zext i32 %1744 to i64
  %1746 = getelementptr inbounds i8, i8* %1739, i64 %1745
  store i8* %1746, i8** %16, align 8
  br label %1747

1747:                                             ; preds = %1736, %1720
  %1748 = load i32, i32* %15, align 4
  %1749 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1750 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1749, i32 0, i32 16
  %1751 = load i32, i32* %1750, align 4
  %1752 = icmp ugt i32 %1748, %1751
  br i1 %1752, label %1753, label %1757

1753:                                             ; preds = %1747
  %1754 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1755 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1754, i32 0, i32 16
  %1756 = load i32, i32* %1755, align 4
  store i32 %1756, i32* %15, align 4
  br label %1757

1757:                                             ; preds = %1753, %1747
  br label %1769

1758:                                             ; preds = %1683
  %1759 = load i8*, i8** %8, align 8
  %1760 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1761 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1760, i32 0, i32 17
  %1762 = load i32, i32* %1761, align 8
  %1763 = zext i32 %1762 to i64
  %1764 = sub i64 0, %1763
  %1765 = getelementptr inbounds i8, i8* %1759, i64 %1764
  store i8* %1765, i8** %16, align 8
  %1766 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1767 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1766, i32 0, i32 16
  %1768 = load i32, i32* %1767, align 4
  store i32 %1768, i32* %15, align 4
  br label %1769

1769:                                             ; preds = %1758, %1757
  %1770 = load i32, i32* %15, align 4
  %1771 = load i32, i32* %10, align 4
  %1772 = icmp ugt i32 %1770, %1771
  br i1 %1772, label %1773, label %1775

1773:                                             ; preds = %1769
  %1774 = load i32, i32* %10, align 4
  store i32 %1774, i32* %15, align 4
  br label %1775

1775:                                             ; preds = %1773, %1769
  %1776 = load i32, i32* %15, align 4
  %1777 = load i32, i32* %10, align 4
  %1778 = sub i32 %1777, %1776
  store i32 %1778, i32* %10, align 4
  %1779 = load i32, i32* %15, align 4
  %1780 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1781 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1780, i32 0, i32 16
  %1782 = load i32, i32* %1781, align 4
  %1783 = sub i32 %1782, %1779
  store i32 %1783, i32* %1781, align 4
  br label %1784

1784:                                             ; preds = %1790, %1775
  %1785 = load i8*, i8** %16, align 8
  %1786 = getelementptr inbounds i8, i8* %1785, i32 1
  store i8* %1786, i8** %16, align 8
  %1787 = load i8, i8* %1785, align 1
  %1788 = load i8*, i8** %8, align 8
  %1789 = getelementptr inbounds i8, i8* %1788, i32 1
  store i8* %1789, i8** %8, align 8
  store i8 %1787, i8* %1788, align 1
  br label %1790

1790:                                             ; preds = %1784
  %1791 = load i32, i32* %15, align 4
  %1792 = add i32 %1791, -1
  store i32 %1792, i32* %15, align 4
  %1793 = icmp ne i32 %1792, 0
  br i1 %1793, label %1784, label %1794, !llvm.loop !26

1794:                                             ; preds = %1790
  %1795 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1796 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1795, i32 0, i32 16
  %1797 = load i32, i32* %1796, align 4
  %1798 = icmp eq i32 %1797, 0
  br i1 %1798, label %1799, label %1802

1799:                                             ; preds = %1794
  %1800 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1801 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1800, i32 0, i32 0
  store i32 20, i32* %1801, align 8
  br label %1802

1802:                                             ; preds = %1799, %1794
  br label %1919

1803:                                             ; preds = %79
  %1804 = load i32, i32* %10, align 4
  %1805 = icmp eq i32 %1804, 0
  br i1 %1805, label %1806, label %1807

1806:                                             ; preds = %1803
  br label %1920

1807:                                             ; preds = %1803
  %1808 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1809 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1808, i32 0, i32 16
  %1810 = load i32, i32* %1809, align 4
  %1811 = trunc i32 %1810 to i8
  %1812 = load i8*, i8** %8, align 8
  %1813 = getelementptr inbounds i8, i8* %1812, i32 1
  store i8* %1813, i8** %8, align 8
  store i8 %1811, i8* %1812, align 1
  %1814 = load i32, i32* %10, align 4
  %1815 = add i32 %1814, -1
  store i32 %1815, i32* %10, align 4
  %1816 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1817 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1816, i32 0, i32 0
  store i32 20, i32* %1817, align 8
  br label %1919

1818:                                             ; preds = %79
  %1819 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1820 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1819, i32 0, i32 2
  %1821 = load i32, i32* %1820, align 8
  %1822 = icmp ne i32 %1821, 0
  br i1 %1822, label %1823, label %1911

1823:                                             ; preds = %1818
  br label %1824

1824:                                             ; preds = %1823
  br label %1825

1825:                                             ; preds = %1847, %1824
  %1826 = load i32, i32* %12, align 4
  %1827 = icmp ult i32 %1826, 32
  br i1 %1827, label %1828, label %1848

1828:                                             ; preds = %1825
  br label %1829

1829:                                             ; preds = %1828
  %1830 = load i32, i32* %9, align 4
  %1831 = icmp eq i32 %1830, 0
  br i1 %1831, label %1832, label %1833

1832:                                             ; preds = %1829
  br label %1920

1833:                                             ; preds = %1829
  %1834 = load i32, i32* %9, align 4
  %1835 = add i32 %1834, -1
  store i32 %1835, i32* %9, align 4
  %1836 = load i8*, i8** %7, align 8
  %1837 = getelementptr inbounds i8, i8* %1836, i32 1
  store i8* %1837, i8** %7, align 8
  %1838 = load i8, i8* %1836, align 1
  %1839 = zext i8 %1838 to i64
  %1840 = load i32, i32* %12, align 4
  %1841 = zext i32 %1840 to i64
  %1842 = shl i64 %1839, %1841
  %1843 = load i64, i64* %11, align 8
  %1844 = add i64 %1843, %1842
  store i64 %1844, i64* %11, align 8
  %1845 = load i32, i32* %12, align 4
  %1846 = add i32 %1845, 8
  store i32 %1846, i32* %12, align 4
  br label %1847

1847:                                             ; preds = %1833
  br label %1825, !llvm.loop !27

1848:                                             ; preds = %1825
  br label %1849

1849:                                             ; preds = %1848
  %1850 = load i32, i32* %10, align 4
  %1851 = load i32, i32* %14, align 4
  %1852 = sub i32 %1851, %1850
  store i32 %1852, i32* %14, align 4
  %1853 = load i32, i32* %14, align 4
  %1854 = zext i32 %1853 to i64
  %1855 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1856 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1855, i32 0, i32 5
  %1857 = load i64, i64* %1856, align 8
  %1858 = add i64 %1857, %1854
  store i64 %1858, i64* %1856, align 8
  %1859 = load i32, i32* %14, align 4
  %1860 = zext i32 %1859 to i64
  %1861 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1862 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1861, i32 0, i32 7
  %1863 = load i64, i64* %1862, align 8
  %1864 = add i64 %1863, %1860
  store i64 %1864, i64* %1862, align 8
  %1865 = load i32, i32* %14, align 4
  %1866 = icmp ne i32 %1865, 0
  br i1 %1866, label %1867, label %1882

1867:                                             ; preds = %1849
  %1868 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1869 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1868, i32 0, i32 6
  %1870 = load i64, i64* %1869, align 8
  %1871 = load i8*, i8** %8, align 8
  %1872 = load i32, i32* %14, align 4
  %1873 = zext i32 %1872 to i64
  %1874 = sub i64 0, %1873
  %1875 = getelementptr inbounds i8, i8* %1871, i64 %1874
  %1876 = load i32, i32* %14, align 4
  %1877 = call i64 @adler32(i64 noundef %1870, i8* noundef %1875, i32 noundef %1876)
  %1878 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1879 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1878, i32 0, i32 6
  store i64 %1877, i64* %1879, align 8
  %1880 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1881 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1880, i32 0, i32 12
  store i64 %1877, i64* %1881, align 8
  br label %1882

1882:                                             ; preds = %1867, %1849
  %1883 = load i32, i32* %10, align 4
  store i32 %1883, i32* %14, align 4
  %1884 = load i64, i64* %11, align 8
  %1885 = lshr i64 %1884, 24
  %1886 = and i64 %1885, 255
  %1887 = load i64, i64* %11, align 8
  %1888 = lshr i64 %1887, 8
  %1889 = and i64 %1888, 65280
  %1890 = add i64 %1886, %1889
  %1891 = load i64, i64* %11, align 8
  %1892 = and i64 %1891, 65280
  %1893 = shl i64 %1892, 8
  %1894 = add i64 %1890, %1893
  %1895 = load i64, i64* %11, align 8
  %1896 = and i64 %1895, 255
  %1897 = shl i64 %1896, 24
  %1898 = add i64 %1894, %1897
  %1899 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1900 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1899, i32 0, i32 6
  %1901 = load i64, i64* %1900, align 8
  %1902 = icmp ne i64 %1898, %1901
  br i1 %1902, label %1903, label %1908

1903:                                             ; preds = %1882
  %1904 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1905 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1904, i32 0, i32 6
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8** %1905, align 8
  %1906 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1907 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1906, i32 0, i32 0
  store i32 29, i32* %1907, align 8
  br label %1919

1908:                                             ; preds = %1882
  br label %1909

1909:                                             ; preds = %1908
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %1910

1910:                                             ; preds = %1909
  br label %1911

1911:                                             ; preds = %1910, %1818
  %1912 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1913 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1912, i32 0, i32 0
  store i32 28, i32* %1913, align 8
  br label %1914

1914:                                             ; preds = %79, %1911
  store i32 1, i32* %20, align 4
  br label %1920

1915:                                             ; preds = %79
  store i32 -3, i32* %20, align 4
  br label %1920

1916:                                             ; preds = %79
  store i32 -4, i32* %3, align 4
  br label %2081

1917:                                             ; preds = %79
  br label %1918

1918:                                             ; preds = %79, %1917
  store i32 -2, i32* %3, align 4
  br label %2081

1919:                                             ; preds = %1903, %1807, %1802, %1708, %1590, %1344, %1333, %1324, %1155, %1084, %1050, %1016, %1008, %678, %567, %492, %465, %421, %376, %301, %192, %168, %138, %128, %88
  br label %79

1920:                                             ; preds = %1915, %1914, %1832, %1806, %1682, %1626, %1527, %1460, %1375, %1257, %1185, %1094, %924, %870, %791, %728, %595, %504, %464, %438, %397, %360, %313, %283, %202, %100
  br label %1921

1921:                                             ; preds = %1920
  %1922 = load i8*, i8** %8, align 8
  %1923 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1924 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1923, i32 0, i32 3
  store i8* %1922, i8** %1924, align 8
  %1925 = load i32, i32* %10, align 4
  %1926 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1927 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1926, i32 0, i32 4
  store i32 %1925, i32* %1927, align 8
  %1928 = load i8*, i8** %7, align 8
  %1929 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1930 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1929, i32 0, i32 0
  store i8* %1928, i8** %1930, align 8
  %1931 = load i32, i32* %9, align 4
  %1932 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1933 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1932, i32 0, i32 1
  store i32 %1931, i32* %1933, align 8
  %1934 = load i64, i64* %11, align 8
  %1935 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1936 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1935, i32 0, i32 14
  store i64 %1934, i64* %1936, align 8
  %1937 = load i32, i32* %12, align 4
  %1938 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1939 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1938, i32 0, i32 15
  store i32 %1937, i32* %1939, align 8
  br label %1940

1940:                                             ; preds = %1921
  %1941 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1942 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1941, i32 0, i32 10
  %1943 = load i32, i32* %1942, align 4
  %1944 = icmp ne i32 %1943, 0
  br i1 %1944, label %1964, label %1945

1945:                                             ; preds = %1940
  %1946 = load i32, i32* %14, align 4
  %1947 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1948 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1947, i32 0, i32 4
  %1949 = load i32, i32* %1948, align 8
  %1950 = icmp ne i32 %1946, %1949
  br i1 %1950, label %1951, label %1980

1951:                                             ; preds = %1945
  %1952 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1953 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1952, i32 0, i32 0
  %1954 = load i32, i32* %1953, align 8
  %1955 = icmp ult i32 %1954, 29
  br i1 %1955, label %1956, label %1980

1956:                                             ; preds = %1951
  %1957 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1958 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1957, i32 0, i32 0
  %1959 = load i32, i32* %1958, align 8
  %1960 = icmp ult i32 %1959, 26
  br i1 %1960, label %1964, label %1961

1961:                                             ; preds = %1956
  %1962 = load i32, i32* %5, align 4
  %1963 = icmp ne i32 %1962, 4
  br i1 %1963, label %1964, label %1980

1964:                                             ; preds = %1961, %1956, %1940
  %1965 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1966 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1967 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1966, i32 0, i32 3
  %1968 = load i8*, i8** %1967, align 8
  %1969 = load i32, i32* %14, align 4
  %1970 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1971 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1970, i32 0, i32 4
  %1972 = load i32, i32* %1971, align 8
  %1973 = sub i32 %1969, %1972
  %1974 = call i32 @updatewindow(%struct.z_stream_s* noundef %1965, i8* noundef %1968, i32 noundef %1973)
  %1975 = icmp ne i32 %1974, 0
  br i1 %1975, label %1976, label %1979

1976:                                             ; preds = %1964
  %1977 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %1978 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %1977, i32 0, i32 0
  store i32 30, i32* %1978, align 8
  store i32 -4, i32* %3, align 4
  br label %2081

1979:                                             ; preds = %1964
  br label %1980

1980:                                             ; preds = %1979, %1961, %1951, %1945
  %1981 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1982 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1981, i32 0, i32 1
  %1983 = load i32, i32* %1982, align 8
  %1984 = load i32, i32* %13, align 4
  %1985 = sub i32 %1984, %1983
  store i32 %1985, i32* %13, align 4
  %1986 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1987 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1986, i32 0, i32 4
  %1988 = load i32, i32* %1987, align 8
  %1989 = load i32, i32* %14, align 4
  %1990 = sub i32 %1989, %1988
  store i32 %1990, i32* %14, align 4
  %1991 = load i32, i32* %13, align 4
  %1992 = zext i32 %1991 to i64
  %1993 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %1994 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1993, i32 0, i32 2
  %1995 = load i64, i64* %1994, align 8
  %1996 = add i64 %1995, %1992
  store i64 %1996, i64* %1994, align 8
  %1997 = load i32, i32* %14, align 4
  %1998 = zext i32 %1997 to i64
  %1999 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %2000 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %1999, i32 0, i32 5
  %2001 = load i64, i64* %2000, align 8
  %2002 = add i64 %2001, %1998
  store i64 %2002, i64* %2000, align 8
  %2003 = load i32, i32* %14, align 4
  %2004 = zext i32 %2003 to i64
  %2005 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %2006 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %2005, i32 0, i32 7
  %2007 = load i64, i64* %2006, align 8
  %2008 = add i64 %2007, %2004
  store i64 %2008, i64* %2006, align 8
  %2009 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %2010 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %2009, i32 0, i32 2
  %2011 = load i32, i32* %2010, align 8
  %2012 = icmp ne i32 %2011, 0
  br i1 %2012, label %2013, label %2033

2013:                                             ; preds = %1980
  %2014 = load i32, i32* %14, align 4
  %2015 = icmp ne i32 %2014, 0
  br i1 %2015, label %2016, label %2033

2016:                                             ; preds = %2013
  %2017 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %2018 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %2017, i32 0, i32 6
  %2019 = load i64, i64* %2018, align 8
  %2020 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %2021 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %2020, i32 0, i32 3
  %2022 = load i8*, i8** %2021, align 8
  %2023 = load i32, i32* %14, align 4
  %2024 = zext i32 %2023 to i64
  %2025 = sub i64 0, %2024
  %2026 = getelementptr inbounds i8, i8* %2022, i64 %2025
  %2027 = load i32, i32* %14, align 4
  %2028 = call i64 @adler32(i64 noundef %2019, i8* noundef %2026, i32 noundef %2027)
  %2029 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %2030 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %2029, i32 0, i32 6
  store i64 %2028, i64* %2030, align 8
  %2031 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %2032 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %2031, i32 0, i32 12
  store i64 %2028, i64* %2032, align 8
  br label %2033

2033:                                             ; preds = %2016, %2013, %1980
  %2034 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %2035 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %2034, i32 0, i32 15
  %2036 = load i32, i32* %2035, align 8
  %2037 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %2038 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %2037, i32 0, i32 1
  %2039 = load i32, i32* %2038, align 4
  %2040 = icmp ne i32 %2039, 0
  %2041 = zext i1 %2040 to i64
  %2042 = select i1 %2040, i32 64, i32 0
  %2043 = add i32 %2036, %2042
  %2044 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %2045 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %2044, i32 0, i32 0
  %2046 = load i32, i32* %2045, align 8
  %2047 = icmp eq i32 %2046, 11
  %2048 = zext i1 %2047 to i64
  %2049 = select i1 %2047, i32 128, i32 0
  %2050 = add i32 %2043, %2049
  %2051 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %2052 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %2051, i32 0, i32 0
  %2053 = load i32, i32* %2052, align 8
  %2054 = icmp eq i32 %2053, 19
  br i1 %2054, label %2060, label %2055

2055:                                             ; preds = %2033
  %2056 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %2057 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %2056, i32 0, i32 0
  %2058 = load i32, i32* %2057, align 8
  %2059 = icmp eq i32 %2058, 14
  br label %2060

2060:                                             ; preds = %2055, %2033
  %2061 = phi i1 [ true, %2033 ], [ %2059, %2055 ]
  %2062 = zext i1 %2061 to i64
  %2063 = select i1 %2061, i32 256, i32 0
  %2064 = add i32 %2050, %2063
  %2065 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %2066 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %2065, i32 0, i32 11
  store i32 %2064, i32* %2066, align 8
  %2067 = load i32, i32* %13, align 4
  %2068 = icmp eq i32 %2067, 0
  br i1 %2068, label %2069, label %2072

2069:                                             ; preds = %2060
  %2070 = load i32, i32* %14, align 4
  %2071 = icmp eq i32 %2070, 0
  br i1 %2071, label %2075, label %2072

2072:                                             ; preds = %2069, %2060
  %2073 = load i32, i32* %5, align 4
  %2074 = icmp eq i32 %2073, 4
  br i1 %2074, label %2075, label %2079

2075:                                             ; preds = %2072, %2069
  %2076 = load i32, i32* %20, align 4
  %2077 = icmp eq i32 %2076, 0
  br i1 %2077, label %2078, label %2079

2078:                                             ; preds = %2075
  store i32 -5, i32* %20, align 4
  br label %2079

2079:                                             ; preds = %2078, %2075, %2072
  %2080 = load i32, i32* %20, align 4
  store i32 %2080, i32* %3, align 4
  br label %2081

2081:                                             ; preds = %2079, %1976, %1918, %1916, %268, %43
  %2082 = load i32, i32* %3, align 4
  ret i32 %2082
}

declare i64 @adler32(i64 noundef, i8* noundef, i32 noundef) #1

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
define internal i32 @updatewindow(%struct.z_stream_s* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inflate_state*, align 8
  %9 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 7
  %12 = load %struct.internal_state*, %struct.internal_state** %11, align 8
  %13 = bitcast %struct.internal_state* %12 to %struct.inflate_state*
  store %struct.inflate_state* %13, %struct.inflate_state** %8, align 8
  %14 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %15 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %14, i32 0, i32 13
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %20 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 8
  %21 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %20, align 8
  %22 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %23 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %22, i32 0, i32 10
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %26 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 1, %27
  %29 = call i8* %21(i8* noundef %24, i32 noundef %28, i32 noundef 1)
  %30 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %31 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %30, i32 0, i32 13
  store i8* %29, i8** %31, align 8
  %32 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %33 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %32, i32 0, i32 13
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %188

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37, %3
  %39 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %40 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %45 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 1, %46
  %48 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %49 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 4
  %50 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %51 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %50, i32 0, i32 12
  store i32 0, i32* %51, align 4
  %52 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %53 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %52, i32 0, i32 11
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %43, %38
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %57 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = icmp uge i32 %55, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %54
  %61 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %62 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %61, i32 0, i32 13
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %66 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i8, i8* %64, i64 %69
  %71 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %72 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  %75 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %76 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %75, i32 0, i32 13
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @llvm.objectsize.i64.p0i8(i8* %77, i1 false, i1 true, i1 false)
  %79 = call i8* @__memcpy_chk(i8* noundef %63, i8* noundef %70, i64 noundef %74, i64 noundef %78) #5
  %80 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %81 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %80, i32 0, i32 12
  store i32 0, i32* %81, align 4
  %82 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %83 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %86 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 8
  br label %187

87:                                               ; preds = %54
  %88 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %89 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %92 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 4
  %94 = sub i32 %90, %93
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %98, %87
  %101 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %102 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %101, i32 0, i32 13
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %105 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = sub i64 0, %111
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %117 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %116, i32 0, i32 13
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %120 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %118, i64 %122
  %124 = call i64 @llvm.objectsize.i64.p0i8(i8* %123, i1 false, i1 true, i1 false)
  %125 = call i8* @__memcpy_chk(i8* noundef %108, i8* noundef %113, i64 noundef %115, i64 noundef %124) #5
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %7, align 4
  %128 = sub i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %155

131:                                              ; preds = %100
  %132 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %133 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %132, i32 0, i32 13
  %134 = load i8*, i8** %133, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = sub i64 0, %137
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = load i32, i32* %7, align 4
  %141 = zext i32 %140 to i64
  %142 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %143 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %142, i32 0, i32 13
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @llvm.objectsize.i64.p0i8(i8* %144, i1 false, i1 true, i1 false)
  %146 = call i8* @__memcpy_chk(i8* noundef %134, i8* noundef %139, i64 noundef %141, i64 noundef %145) #5
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %149 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %148, i32 0, i32 12
  store i32 %147, i32* %149, align 4
  %150 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %151 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %154 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %153, i32 0, i32 11
  store i32 %152, i32* %154, align 8
  br label %186

155:                                              ; preds = %100
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %158 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %157, i32 0, i32 12
  %159 = load i32, i32* %158, align 4
  %160 = add i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %162 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %161, i32 0, i32 12
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %165 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %164, i32 0, i32 10
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %163, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %155
  %169 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %170 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %169, i32 0, i32 12
  store i32 0, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %155
  %172 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %173 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %176 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %175, i32 0, i32 10
  %177 = load i32, i32* %176, align 4
  %178 = icmp ult i32 %174, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %171
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %182 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %181, i32 0, i32 11
  %183 = load i32, i32* %182, align 8
  %184 = add i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %171
  br label %186

186:                                              ; preds = %185, %131
  br label %187

187:                                              ; preds = %186, %60
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %36
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateEnd(%struct.z_stream_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  %5 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %6 = icmp eq %struct.z_stream_s* %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %9 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 7
  %10 = load %struct.internal_state*, %struct.internal_state** %9, align 8
  %11 = icmp eq %struct.internal_state* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %13, i32 0, i32 9
  %15 = load void (i8*, i8*)*, void (i8*, i8*)** %14, align 8
  %16 = icmp eq void (i8*, i8*)* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %7, %1
  store i32 -2, i32* %2, align 4
  br label %50

18:                                               ; preds = %12
  %19 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %20 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 7
  %21 = load %struct.internal_state*, %struct.internal_state** %20, align 8
  %22 = bitcast %struct.internal_state* %21 to %struct.inflate_state*
  store %struct.inflate_state* %22, %struct.inflate_state** %4, align 8
  %23 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %24 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %23, i32 0, i32 13
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %28, i32 0, i32 9
  %30 = load void (i8*, i8*)*, void (i8*, i8*)** %29, align 8
  %31 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %31, i32 0, i32 10
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %35 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %34, i32 0, i32 13
  %36 = load i8*, i8** %35, align 8
  call void %30(i8* noundef %33, i8* noundef %36)
  br label %37

37:                                               ; preds = %27, %18
  %38 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %38, i32 0, i32 9
  %40 = load void (i8*, i8*)*, void (i8*, i8*)** %39, align 8
  %41 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %41, i32 0, i32 10
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %44, i32 0, i32 7
  %46 = load %struct.internal_state*, %struct.internal_state** %45, align 8
  %47 = bitcast %struct.internal_state* %46 to i8*
  call void %40(i8* noundef %43, i8* noundef %47)
  %48 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %48, i32 0, i32 7
  store %struct.internal_state* null, %struct.internal_state** %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %37, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateGetDictionary(%struct.z_stream_s* noundef %0, i8* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %10 = icmp eq %struct.z_stream_s* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 7
  %14 = load %struct.internal_state*, %struct.internal_state** %13, align 8
  %15 = icmp eq %struct.internal_state* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %3
  store i32 -2, i32* %4, align 4
  br label %92

17:                                               ; preds = %11
  %18 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %18, i32 0, i32 7
  %20 = load %struct.internal_state*, %struct.internal_state** %19, align 8
  %21 = bitcast %struct.internal_state* %20 to %struct.inflate_state*
  store %struct.inflate_state* %21, %struct.inflate_state** %8, align 8
  %22 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %23 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %83

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %32 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %31, i32 0, i32 13
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %35 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %40 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %43 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %41, %44
  %46 = zext i32 %45 to i64
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @llvm.objectsize.i64.p0i8(i8* %47, i1 false, i1 true, i1 false)
  %49 = call i8* @__memcpy_chk(i8* noundef %30, i8* noundef %38, i64 noundef %46, i64 noundef %48) #5
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %52 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 8
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  %56 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %57 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i8, i8* %55, i64 %60
  %62 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %63 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %62, i32 0, i32 13
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %66 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %71 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 8
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %76 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 4
  %78 = zext i32 %77 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds i8, i8* %74, i64 %79
  %81 = call i64 @llvm.objectsize.i64.p0i8(i8* %80, i1 false, i1 true, i1 false)
  %82 = call i8* @__memcpy_chk(i8* noundef %61, i8* noundef %64, i64 noundef %68, i64 noundef %81) #5
  br label %83

83:                                               ; preds = %29, %26, %17
  %84 = load i32*, i32** %7, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %88 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %83
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %16
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateSetDictionary(%struct.z_stream_s* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inflate_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %12 = icmp eq %struct.z_stream_s* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %14, i32 0, i32 7
  %16 = load %struct.internal_state*, %struct.internal_state** %15, align 8
  %17 = icmp eq %struct.internal_state* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %3
  store i32 -2, i32* %4, align 4
  br label %68

19:                                               ; preds = %13
  %20 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %21 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %20, i32 0, i32 7
  %22 = load %struct.internal_state*, %struct.internal_state** %21, align 8
  %23 = bitcast %struct.internal_state* %22 to %struct.inflate_state*
  store %struct.inflate_state* %23, %struct.inflate_state** %8, align 8
  %24 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %25 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %30 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 10
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -2, i32* %4, align 4
  br label %68

34:                                               ; preds = %28, %19
  %35 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %36 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = call i64 @adler32(i64 noundef 0, i8* noundef null, i32 noundef 0)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @adler32(i64 noundef %41, i8* noundef %42, i32 noundef %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %47 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 -3, i32* %4, align 4
  br label %68

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @updatewindow(%struct.z_stream_s* noundef %53, i8* noundef %57, i32 noundef %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %64 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %63, i32 0, i32 0
  store i32 30, i32* %64, align 8
  store i32 -4, i32* %4, align 4
  br label %68

65:                                               ; preds = %52
  %66 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %67 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %66, i32 0, i32 3
  store i32 1, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %62, %50, %33, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateGetHeader(%struct.z_stream_s* noundef %0, %struct.gz_header_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca %struct.gz_header_s*, align 8
  %6 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  store %struct.gz_header_s* %1, %struct.gz_header_s** %5, align 8
  %7 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %8 = icmp eq %struct.z_stream_s* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 7
  %12 = load %struct.internal_state*, %struct.internal_state** %11, align 8
  %13 = icmp eq %struct.internal_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  store i32 -2, i32* %3, align 4
  br label %32

15:                                               ; preds = %9
  %16 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 7
  %18 = load %struct.internal_state*, %struct.internal_state** %17, align 8
  %19 = bitcast %struct.internal_state* %18 to %struct.inflate_state*
  store %struct.inflate_state* %19, %struct.inflate_state** %6, align 8
  %20 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %21 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 -2, i32* %3, align 4
  br label %32

26:                                               ; preds = %15
  %27 = load %struct.gz_header_s*, %struct.gz_header_s** %5, align 8
  %28 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %29 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %28, i32 0, i32 8
  store %struct.gz_header_s* %27, %struct.gz_header_s** %29, align 8
  %30 = load %struct.gz_header_s*, %struct.gz_header_s** %5, align 8
  %31 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %30, i32 0, i32 12
  store i32 0, i32* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %25, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateSync(%struct.z_stream_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  %9 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %10 = icmp eq %struct.z_stream_s* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 7
  %14 = load %struct.internal_state*, %struct.internal_state** %13, align 8
  %15 = icmp eq %struct.internal_state* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  store i32 -2, i32* %2, align 4
  br label %136

17:                                               ; preds = %11
  %18 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %18, i32 0, i32 7
  %20 = load %struct.internal_state*, %struct.internal_state** %19, align 8
  %21 = bitcast %struct.internal_state* %20 to %struct.inflate_state*
  store %struct.inflate_state* %21, %struct.inflate_state** %8, align 8
  %22 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %23 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %28 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %29, 8
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -5, i32* %2, align 4
  br label %136

32:                                               ; preds = %26, %17
  %33 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %34 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 31
  br i1 %36, label %37, label %87

37:                                               ; preds = %32
  %38 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %39 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %38, i32 0, i32 0
  store i32 31, i32* %39, align 8
  %40 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %41 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %40, i32 0, i32 15
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 7
  %44 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %45 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %44, i32 0, i32 14
  %46 = load i64, i64* %45, align 8
  %47 = zext i32 %43 to i64
  %48 = shl i64 %46, %47
  store i64 %48, i64* %45, align 8
  %49 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %50 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %49, i32 0, i32 15
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 7
  %53 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %54 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %53, i32 0, i32 15
  %55 = load i32, i32* %54, align 8
  %56 = sub i32 %55, %52
  store i32 %56, i32* %54, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %62, %37
  %58 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %59 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %58, i32 0, i32 15
  %60 = load i32, i32* %59, align 8
  %61 = icmp uge i32 %60, 8
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %64 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %63, i32 0, i32 14
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i8
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %4, align 4
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 %69
  store i8 %66, i8* %70, align 1
  %71 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %72 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %71, i32 0, i32 14
  %73 = load i64, i64* %72, align 8
  %74 = lshr i64 %73, 8
  store i64 %74, i64* %72, align 8
  %75 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %76 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %75, i32 0, i32 15
  %77 = load i32, i32* %76, align 8
  %78 = sub i32 %77, 8
  store i32 %78, i32* %76, align 8
  br label %57, !llvm.loop !28

79:                                               ; preds = %57
  %80 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %81 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %80, i32 0, i32 26
  store i32 0, i32* %81, align 4
  %82 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %83 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %82, i32 0, i32 26
  %84 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @syncsearch(i32* noundef %83, i8* noundef %84, i32 noundef %85)
  br label %87

87:                                               ; preds = %79, %32
  %88 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %89 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %88, i32 0, i32 26
  %90 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %91 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %94 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @syncsearch(i32* noundef %89, i8* noundef %92, i32 noundef %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %99 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sub i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %104 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = zext i32 %102 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %104, align 8
  %108 = load i32, i32* %4, align 4
  %109 = zext i32 %108 to i64
  %110 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %111 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %115 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %114, i32 0, i32 26
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 4
  br i1 %117, label %118, label %119

118:                                              ; preds = %87
  store i32 -3, i32* %2, align 4
  br label %136

119:                                              ; preds = %87
  %120 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %121 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %5, align 8
  %123 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %124 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %6, align 8
  %126 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %127 = call i32 @inflateReset(%struct.z_stream_s* noundef %126)
  %128 = load i64, i64* %5, align 8
  %129 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %130 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %6, align 8
  %132 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %133 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %132, i32 0, i32 5
  store i64 %131, i64* %133, align 8
  %134 = load %struct.inflate_state*, %struct.inflate_state** %8, align 8
  %135 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %134, i32 0, i32 0
  store i32 11, i32* %135, align 8
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %119, %118, %31, %16
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @syncsearch(i32* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %47, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = icmp ult i32 %16, 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i1 [ false, %11 ], [ %17, %15 ]
  br i1 %19, label %20, label %50

20:                                               ; preds = %18
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i32, i32* %7, align 4
  %28 = icmp ult i32 %27, 2
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 255
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %47

35:                                               ; preds = %20
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = sub i32 4, %44
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %42
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %11, !llvm.loop !29

50:                                               ; preds = %18
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %4, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateSyncPoint(%struct.z_stream_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  %5 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %6 = icmp eq %struct.z_stream_s* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %9 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 7
  %10 = load %struct.internal_state*, %struct.internal_state** %9, align 8
  %11 = icmp eq %struct.internal_state* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i32 -2, i32* %2, align 4
  br label %30

13:                                               ; preds = %7
  %14 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %14, i32 0, i32 7
  %16 = load %struct.internal_state*, %struct.internal_state** %15, align 8
  %17 = bitcast %struct.internal_state* %16 to %struct.inflate_state*
  store %struct.inflate_state* %17, %struct.inflate_state** %4, align 8
  %18 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %19 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 13
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %24 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %23, i32 0, i32 15
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %22, %13
  %28 = phi i1 [ false, %13 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateCopy(%struct.z_stream_s* noundef %0, %struct.z_stream_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca %struct.inflate_state*, align 8
  %7 = alloca %struct.inflate_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  store %struct.z_stream_s* %1, %struct.z_stream_s** %5, align 8
  %10 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %11 = icmp eq %struct.z_stream_s* %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %14 = icmp eq %struct.z_stream_s* %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 7
  %18 = load %struct.internal_state*, %struct.internal_state** %17, align 8
  %19 = icmp eq %struct.internal_state* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %21, i32 0, i32 8
  %23 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %22, align 8
  %24 = icmp eq i8* (i8*, i32, i32)* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %27 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %26, i32 0, i32 9
  %28 = load void (i8*, i8*)*, void (i8*, i8*)** %27, align 8
  %29 = icmp eq void (i8*, i8*)* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20, %15, %12, %2
  store i32 -2, i32* %3, align 4
  br label %184

31:                                               ; preds = %25
  %32 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %32, i32 0, i32 7
  %34 = load %struct.internal_state*, %struct.internal_state** %33, align 8
  %35 = bitcast %struct.internal_state* %34 to %struct.inflate_state*
  store %struct.inflate_state* %35, %struct.inflate_state** %6, align 8
  %36 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %37 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %36, i32 0, i32 8
  %38 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %37, align 8
  %39 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %39, i32 0, i32 10
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* %38(i8* noundef %41, i32 noundef 1, i32 noundef 7152)
  %43 = bitcast i8* %42 to %struct.inflate_state*
  store %struct.inflate_state* %43, %struct.inflate_state** %7, align 8
  %44 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %45 = icmp eq %struct.inflate_state* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  store i32 -4, i32* %3, align 4
  br label %184

47:                                               ; preds = %31
  store i8* null, i8** %8, align 8
  %48 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %49 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %48, i32 0, i32 13
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %54 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %53, i32 0, i32 8
  %55 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %54, align 8
  %56 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %57 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %56, i32 0, i32 10
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %60 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 1, %61
  %63 = call i8* %55(i8* noundef %58, i32 noundef %62, i32 noundef 1)
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %52
  %67 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %68 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %67, i32 0, i32 9
  %69 = load void (i8*, i8*)*, void (i8*, i8*)** %68, align 8
  %70 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %71 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %70, i32 0, i32 10
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %74 = bitcast %struct.inflate_state* %73 to i8*
  call void %69(i8* noundef %72, i8* noundef %74)
  store i32 -4, i32* %3, align 4
  br label %184

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %78 = bitcast %struct.z_stream_s* %77 to i8*
  %79 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8
  %80 = bitcast %struct.z_stream_s* %79 to i8*
  %81 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %82 = bitcast %struct.z_stream_s* %81 to i8*
  %83 = call i64 @llvm.objectsize.i64.p0i8(i8* %82, i1 false, i1 true, i1 false)
  %84 = call i8* @__memcpy_chk(i8* noundef %78, i8* noundef %80, i64 noundef 112, i64 noundef %83) #5
  %85 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %86 = bitcast %struct.inflate_state* %85 to i8*
  %87 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %88 = bitcast %struct.inflate_state* %87 to i8*
  %89 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %90 = bitcast %struct.inflate_state* %89 to i8*
  %91 = call i64 @llvm.objectsize.i64.p0i8(i8* %90, i1 false, i1 true, i1 false)
  %92 = call i8* @__memcpy_chk(i8* noundef %86, i8* noundef %88, i64 noundef 7152, i64 noundef %91) #5
  %93 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %94 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %93, i32 0, i32 19
  %95 = load %struct.code*, %struct.code** %94, align 8
  %96 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %97 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %96, i32 0, i32 30
  %98 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %97, i64 0, i64 0
  %99 = icmp uge %struct.code* %95, %98
  br i1 %99, label %100, label %143

100:                                              ; preds = %76
  %101 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %102 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %101, i32 0, i32 19
  %103 = load %struct.code*, %struct.code** %102, align 8
  %104 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %105 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %104, i32 0, i32 30
  %106 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %105, i64 0, i64 0
  %107 = getelementptr inbounds %struct.code, %struct.code* %106, i64 1444
  %108 = getelementptr inbounds %struct.code, %struct.code* %107, i64 -1
  %109 = icmp ule %struct.code* %103, %108
  br i1 %109, label %110, label %143

110:                                              ; preds = %100
  %111 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %112 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %111, i32 0, i32 30
  %113 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %112, i64 0, i64 0
  %114 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %115 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %114, i32 0, i32 19
  %116 = load %struct.code*, %struct.code** %115, align 8
  %117 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %118 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %117, i32 0, i32 30
  %119 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %118, i64 0, i64 0
  %120 = ptrtoint %struct.code* %116 to i64
  %121 = ptrtoint %struct.code* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = getelementptr inbounds %struct.code, %struct.code* %113, i64 %123
  %125 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %126 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %125, i32 0, i32 19
  store %struct.code* %124, %struct.code** %126, align 8
  %127 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %128 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %127, i32 0, i32 30
  %129 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %128, i64 0, i64 0
  %130 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %131 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %130, i32 0, i32 20
  %132 = load %struct.code*, %struct.code** %131, align 8
  %133 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %134 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %133, i32 0, i32 30
  %135 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %134, i64 0, i64 0
  %136 = ptrtoint %struct.code* %132 to i64
  %137 = ptrtoint %struct.code* %135 to i64
  %138 = sub i64 %136, %137
  %139 = sdiv exact i64 %138, 4
  %140 = getelementptr inbounds %struct.code, %struct.code* %129, i64 %139
  %141 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %142 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %141, i32 0, i32 20
  store %struct.code* %140, %struct.code** %142, align 8
  br label %143

143:                                              ; preds = %110, %100, %76
  %144 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %145 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %144, i32 0, i32 30
  %146 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %145, i64 0, i64 0
  %147 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %148 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %147, i32 0, i32 27
  %149 = load %struct.code*, %struct.code** %148, align 8
  %150 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %151 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %150, i32 0, i32 30
  %152 = getelementptr inbounds [1444 x %struct.code], [1444 x %struct.code]* %151, i64 0, i64 0
  %153 = ptrtoint %struct.code* %149 to i64
  %154 = ptrtoint %struct.code* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 4
  %157 = getelementptr inbounds %struct.code, %struct.code* %146, i64 %156
  %158 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %159 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %158, i32 0, i32 27
  store %struct.code* %157, %struct.code** %159, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %176

162:                                              ; preds = %143
  %163 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %164 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 8
  %166 = shl i32 1, %165
  store i32 %166, i32* %9, align 4
  %167 = load i8*, i8** %8, align 8
  %168 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %169 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %168, i32 0, i32 13
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = zext i32 %171 to i64
  %173 = load i8*, i8** %8, align 8
  %174 = call i64 @llvm.objectsize.i64.p0i8(i8* %173, i1 false, i1 true, i1 false)
  %175 = call i8* @__memcpy_chk(i8* noundef %167, i8* noundef %170, i64 noundef %172, i64 noundef %174) #5
  br label %176

176:                                              ; preds = %162, %143
  %177 = load i8*, i8** %8, align 8
  %178 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %179 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %178, i32 0, i32 13
  store i8* %177, i8** %179, align 8
  %180 = load %struct.inflate_state*, %struct.inflate_state** %7, align 8
  %181 = bitcast %struct.inflate_state* %180 to %struct.internal_state*
  %182 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %183 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %182, i32 0, i32 7
  store %struct.internal_state* %181, %struct.internal_state** %183, align 8
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %176, %66, %46, %30
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateUndermine(%struct.z_stream_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %8 = icmp eq %struct.z_stream_s* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 7
  %12 = load %struct.internal_state*, %struct.internal_state** %11, align 8
  %13 = icmp eq %struct.internal_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  store i32 -2, i32* %3, align 4
  br label %28

15:                                               ; preds = %9
  %16 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 7
  %18 = load %struct.internal_state*, %struct.internal_state** %17, align 8
  %19 = bitcast %struct.internal_state* %18 to %struct.inflate_state*
  store %struct.inflate_state* %19, %struct.inflate_state** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %25 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %24, i32 0, i32 31
  store i32 %23, i32* %25, align 8
  %26 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %27 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %26, i32 0, i32 31
  store i32 1, i32* %27, align 8
  store i32 -3, i32* %3, align 4
  br label %28

28:                                               ; preds = %15, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @inflateMark(%struct.z_stream_s* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca %struct.inflate_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  %5 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %6 = icmp eq %struct.z_stream_s* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %9 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 7
  %10 = load %struct.internal_state*, %struct.internal_state** %9, align 8
  %11 = icmp eq %struct.internal_state* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i64 -65536, i64* %2, align 8
  br label %51

13:                                               ; preds = %7
  %14 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %14, i32 0, i32 7
  %16 = load %struct.internal_state*, %struct.internal_state** %15, align 8
  %17 = bitcast %struct.internal_state* %16 to %struct.inflate_state*
  store %struct.inflate_state* %17, %struct.inflate_state** %4, align 8
  %18 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %19 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %18, i32 0, i32 32
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = shl i64 %21, 16
  %23 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %24 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 15
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %29 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %28, i32 0, i32 16
  %30 = load i32, i32* %29, align 4
  br label %47

31:                                               ; preds = %13
  %32 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %33 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 24
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %38 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %37, i32 0, i32 33
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %41 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %40, i32 0, i32 16
  %42 = load i32, i32* %41, align 4
  %43 = sub i32 %39, %42
  br label %45

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %36
  %46 = phi i32 [ %43, %36 ], [ 0, %44 ]
  br label %47

47:                                               ; preds = %45, %27
  %48 = phi i32 [ %30, %27 ], [ %46, %45 ]
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %22, %49
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %47, %12
  %52 = load i64, i64* %2, align 8
  ret i64 %52
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
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
