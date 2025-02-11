; ModuleID = 'src/zptest.c'
source_filename = "src/zptest.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_ptest_n1 = external global [1 x %struct.zahl], align 8
@libzahl_const_1 = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_n4 = external global [1 x %struct.zahl], align 8
@libzahl_const_4 = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_d = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_a = external global [1 x %struct.zahl], align 8
@libzahl_const_2 = external global [1 x %struct.zahl], align 8
@libzahl_tmp_ptest_x = external global [1 x %struct.zahl], align 8

; Function Attrs: nounwind ssp uwtable
define i32 @zptest(%struct.zahl* noundef %0, %struct.zahl* noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %29, label %7, !prof !17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %9 = load i64*, i64** %8, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %11 = load i64, i64* %10, align 8, !tbaa !19
  %12 = add i64 %11, -1
  %13 = getelementptr inbounds i64, i64* %9, i64 %12
  %14 = load i64, i64* %13, align 8, !tbaa !20
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %7, %16
  %17 = phi i64 [ %18, %16 ], [ %12, %7 ]
  %18 = add i64 %17, -1
  %19 = getelementptr inbounds i64, i64* %9, i64 %18
  %20 = load i64, i64* %19, align 8, !tbaa !20
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %16, label %22

22:                                               ; preds = %16
  store i64 %17, i64* %10, align 8, !tbaa !19
  br label %23

23:                                               ; preds = %22, %7
  %24 = phi i64 [ %17, %22 ], [ %11, %7 ]
  %25 = icmp ult i64 %24, 2
  %26 = load i64, i64* %9, align 8, !tbaa !20
  %27 = icmp ult i64 %26, 4
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %37, !prof !22

29:                                               ; preds = %23, %3
  %30 = tail call fastcc i32 @zcmpu(%struct.zahl* noundef nonnull %1, i64 noundef 1)
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %412

32:                                               ; preds = %29
  %33 = icmp eq %struct.zahl* %0, null
  %34 = icmp eq %struct.zahl* %0, %1
  %35 = or i1 %33, %34
  br i1 %35, label %412, label %36

36:                                               ; preds = %32
  tail call fastcc void @zset(%struct.zahl* noundef nonnull %0, %struct.zahl* noundef nonnull %1)
  br label %412

37:                                               ; preds = %23
  %38 = and i64 %26, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %52, !prof !17

40:                                               ; preds = %37
  %41 = icmp eq %struct.zahl* %0, null
  br i1 %41, label %412, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %44 = load i64, i64* %43, align 8, !tbaa !23
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef 1) #6
  br label %47

47:                                               ; preds = %42, %46
  %48 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 1, i32* %48, align 8, !tbaa !10
  %49 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %50 = load i64*, i64** %49, align 8, !tbaa !18
  store i64 2, i64* %50, align 8, !tbaa !20
  %51 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 1, i64* %51, align 8, !tbaa !19
  br label %412

52:                                               ; preds = %37
  tail call void @zsub_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0), %struct.zahl* noundef nonnull %1, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0)) #6
  tail call void @zsub_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n4, i64 0, i64 0), %struct.zahl* noundef nonnull %1, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_4, i64 0, i64 0)) #6
  %53 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %69, label %55, !prof !17

55:                                               ; preds = %52
  %56 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i64 [ %62, %57 ], [ 0, %55 ]
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8, !tbaa !20
  %61 = icmp eq i64 %60, 0
  %62 = add i64 %58, 1
  br i1 %61, label %57, label %63

63:                                               ; preds = %57
  %64 = shl i64 %58, 6
  %65 = getelementptr inbounds i64, i64* %56, i64 %64
  %66 = load i64, i64* %65, align 8, !tbaa !20
  %67 = tail call i64 @llvm.cttz.i64(i64 %66, i1 false) #6, !range !24
  %68 = add i64 %67, %64
  br label %69

69:                                               ; preds = %52, %63
  %70 = phi i64 [ %68, %63 ], [ -1, %52 ]
  tail call void @zrsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_d, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0), i64 noundef %70) #6
  %71 = icmp eq i32 %2, 0
  br i1 %71, label %412, label %72

72:                                               ; preds = %69
  %73 = icmp ugt i64 %70, 1
  br label %74

74:                                               ; preds = %72, %224
  %75 = phi i32 [ %2, %72 ], [ %76, %224 ]
  %76 = add nsw i32 %75, -1
  tail call void @zrand(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0), i32 noundef 2, i32 noundef 1, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n4, i64 0, i64 0)) #6
  tail call void @zadd_unsigned(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_2, i64 0, i64 0)) #6
  tail call void @zmodpow(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_d, i64 0, i64 0), %struct.zahl* noundef %1) #6
  %77 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %78 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = icmp slt i32 %77, %78
  br i1 %81, label %150, label %82

82:                                               ; preds = %80
  %83 = icmp sgt i32 %77, %78
  %84 = zext i1 %83 to i32
  br label %147

85:                                               ; preds = %74
  %86 = icmp eq i32 %77, 0
  br i1 %86, label %144, label %87, !prof !17

87:                                               ; preds = %85
  %88 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %89 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %90 = add i64 %89, -1
  %91 = add i64 %88, -1
  %92 = icmp ugt i64 %91, %90
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %99

95:                                               ; preds = %87
  %96 = icmp ugt i64 %90, %91
  br i1 %96, label %97, label %109

97:                                               ; preds = %95
  %98 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %114

99:                                               ; preds = %105, %93
  %100 = phi i64 [ %91, %93 ], [ %107, %105 ]
  %101 = phi i64 [ %88, %93 ], [ %106, %105 ]
  %102 = getelementptr inbounds i64, i64* %94, i64 %100
  %103 = load i64, i64* %102, align 8, !tbaa !20
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %144

105:                                              ; preds = %99
  %106 = add i64 %101, -1
  store i64 %106, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %107 = add i64 %100, -1
  %108 = icmp ugt i64 %107, %90
  br i1 %108, label %99, label %109

109:                                              ; preds = %120, %105, %95
  %110 = phi i64 [ %91, %95 ], [ %90, %105 ], [ %91, %120 ]
  %111 = icmp eq i64 %110, 0
  %112 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 4), align 8, !tbaa !18
  %113 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br i1 %111, label %134, label %124

114:                                              ; preds = %120, %97
  %115 = phi i64 [ %89, %97 ], [ %121, %120 ]
  %116 = phi i64 [ %90, %97 ], [ %122, %120 ]
  %117 = getelementptr inbounds i64, i64* %98, i64 %116
  %118 = load i64, i64* %117, align 8, !tbaa !20
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %114
  %121 = add i64 %115, -1
  store i64 %121, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %122 = add i64 %116, -1
  %123 = icmp ugt i64 %122, %91
  br i1 %123, label %114, label %109

124:                                              ; preds = %109, %131
  %125 = phi i64 [ %132, %131 ], [ %110, %109 ]
  %126 = getelementptr inbounds i64, i64* %112, i64 %125
  %127 = load i64, i64* %126, align 8, !tbaa !20
  %128 = getelementptr inbounds i64, i64* %113, i64 %125
  %129 = load i64, i64* %128, align 8, !tbaa !20
  %130 = icmp eq i64 %127, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = add i64 %125, -1
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %124

134:                                              ; preds = %131, %124, %109
  %135 = phi i64 [ 0, %109 ], [ 0, %131 ], [ %125, %124 ]
  %136 = getelementptr inbounds i64, i64* %112, i64 %135
  %137 = load i64, i64* %136, align 8, !tbaa !20
  %138 = getelementptr inbounds i64, i64* %113, i64 %135
  %139 = load i64, i64* %138, align 8, !tbaa !20
  %140 = icmp ult i64 %137, %139
  %141 = icmp ugt i64 %137, %139
  %142 = zext i1 %141 to i32
  %143 = select i1 %140, i32 -1, i32 %142
  br label %144

144:                                              ; preds = %114, %99, %134, %85
  %145 = phi i32 [ %143, %134 ], [ 0, %85 ], [ 1, %99 ], [ -1, %114 ]
  %146 = mul nsw i32 %145, %77
  br label %147

147:                                              ; preds = %82, %144
  %148 = phi i32 [ %146, %144 ], [ %84, %82 ]
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %224, label %150

150:                                              ; preds = %80, %147
  %151 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %152 = icmp eq i32 %77, %151
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = icmp slt i32 %77, %151
  br i1 %154, label %223, label %155

155:                                              ; preds = %153
  %156 = icmp sgt i32 %77, %151
  %157 = zext i1 %156 to i32
  br label %220

158:                                              ; preds = %150
  %159 = icmp eq i32 %77, 0
  br i1 %159, label %217, label %160, !prof !17

160:                                              ; preds = %158
  %161 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %162 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %163 = add i64 %162, -1
  %164 = add i64 %161, -1
  %165 = icmp ugt i64 %164, %163
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %172

168:                                              ; preds = %160
  %169 = icmp ugt i64 %163, %164
  br i1 %169, label %170, label %182

170:                                              ; preds = %168
  %171 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %187

172:                                              ; preds = %178, %166
  %173 = phi i64 [ %164, %166 ], [ %180, %178 ]
  %174 = phi i64 [ %161, %166 ], [ %179, %178 ]
  %175 = getelementptr inbounds i64, i64* %167, i64 %173
  %176 = load i64, i64* %175, align 8, !tbaa !20
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %217

178:                                              ; preds = %172
  %179 = add i64 %174, -1
  store i64 %179, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %180 = add i64 %173, -1
  %181 = icmp ugt i64 %180, %163
  br i1 %181, label %172, label %182

182:                                              ; preds = %193, %178, %168
  %183 = phi i64 [ %164, %168 ], [ %163, %178 ], [ %164, %193 ]
  %184 = icmp eq i64 %183, 0
  %185 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 4), align 8, !tbaa !18
  %186 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br i1 %184, label %207, label %197

187:                                              ; preds = %193, %170
  %188 = phi i64 [ %162, %170 ], [ %194, %193 ]
  %189 = phi i64 [ %163, %170 ], [ %195, %193 ]
  %190 = getelementptr inbounds i64, i64* %171, i64 %189
  %191 = load i64, i64* %190, align 8, !tbaa !20
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %217

193:                                              ; preds = %187
  %194 = add i64 %188, -1
  store i64 %194, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %195 = add i64 %189, -1
  %196 = icmp ugt i64 %195, %164
  br i1 %196, label %187, label %182

197:                                              ; preds = %182, %204
  %198 = phi i64 [ %205, %204 ], [ %183, %182 ]
  %199 = getelementptr inbounds i64, i64* %185, i64 %198
  %200 = load i64, i64* %199, align 8, !tbaa !20
  %201 = getelementptr inbounds i64, i64* %186, i64 %198
  %202 = load i64, i64* %201, align 8, !tbaa !20
  %203 = icmp eq i64 %200, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %197
  %205 = add i64 %198, -1
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %197

207:                                              ; preds = %204, %197, %182
  %208 = phi i64 [ 0, %182 ], [ 0, %204 ], [ %198, %197 ]
  %209 = getelementptr inbounds i64, i64* %185, i64 %208
  %210 = load i64, i64* %209, align 8, !tbaa !20
  %211 = getelementptr inbounds i64, i64* %186, i64 %208
  %212 = load i64, i64* %211, align 8, !tbaa !20
  %213 = icmp ult i64 %210, %212
  %214 = icmp ugt i64 %210, %212
  %215 = zext i1 %214 to i32
  %216 = select i1 %213, i32 -1, i32 %215
  br label %217

217:                                              ; preds = %187, %172, %207, %158
  %218 = phi i32 [ %216, %207 ], [ 0, %158 ], [ 1, %172 ], [ -1, %187 ]
  %219 = mul nsw i32 %218, %77
  br label %220

220:                                              ; preds = %155, %217
  %221 = phi i32 [ %219, %217 ], [ %157, %155 ]
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %153, %220
  br i1 %73, label %226, label %393

224:                                              ; preds = %147, %220, %393
  %225 = icmp eq i32 %76, 0
  br i1 %225, label %412, label %74

226:                                              ; preds = %223, %390
  %227 = phi i64 [ %391, %390 ], [ 1, %223 ]
  tail call void @zmodsqr(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0), %struct.zahl* noundef %1) #6
  %228 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %229 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %236, label %231

231:                                              ; preds = %226
  %232 = icmp slt i32 %228, %229
  br i1 %232, label %317, label %233

233:                                              ; preds = %231
  %234 = icmp sgt i32 %228, %229
  %235 = zext i1 %234 to i32
  br label %298

236:                                              ; preds = %226
  %237 = icmp eq i32 %228, 0
  br i1 %237, label %295, label %238, !prof !17

238:                                              ; preds = %236
  %239 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %240 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %241 = add i64 %240, -1
  %242 = add i64 %239, -1
  %243 = icmp ugt i64 %242, %241
  br i1 %243, label %244, label %246

244:                                              ; preds = %238
  %245 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %250

246:                                              ; preds = %238
  %247 = icmp ugt i64 %241, %242
  br i1 %247, label %248, label %260

248:                                              ; preds = %246
  %249 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %265

250:                                              ; preds = %256, %244
  %251 = phi i64 [ %242, %244 ], [ %258, %256 ]
  %252 = phi i64 [ %239, %244 ], [ %257, %256 ]
  %253 = getelementptr inbounds i64, i64* %245, i64 %251
  %254 = load i64, i64* %253, align 8, !tbaa !20
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %295

256:                                              ; preds = %250
  %257 = add i64 %252, -1
  store i64 %257, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %258 = add i64 %251, -1
  %259 = icmp ugt i64 %258, %241
  br i1 %259, label %250, label %260

260:                                              ; preds = %271, %256, %246
  %261 = phi i64 [ %242, %246 ], [ %241, %256 ], [ %242, %271 ]
  %262 = icmp eq i64 %261, 0
  %263 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 4), align 8, !tbaa !18
  %264 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br i1 %262, label %285, label %275

265:                                              ; preds = %271, %248
  %266 = phi i64 [ %240, %248 ], [ %272, %271 ]
  %267 = phi i64 [ %241, %248 ], [ %273, %271 ]
  %268 = getelementptr inbounds i64, i64* %249, i64 %267
  %269 = load i64, i64* %268, align 8, !tbaa !20
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %295

271:                                              ; preds = %265
  %272 = add i64 %266, -1
  store i64 %272, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %273 = add i64 %267, -1
  %274 = icmp ugt i64 %273, %242
  br i1 %274, label %265, label %260

275:                                              ; preds = %260, %282
  %276 = phi i64 [ %283, %282 ], [ %261, %260 ]
  %277 = getelementptr inbounds i64, i64* %263, i64 %276
  %278 = load i64, i64* %277, align 8, !tbaa !20
  %279 = getelementptr inbounds i64, i64* %264, i64 %276
  %280 = load i64, i64* %279, align 8, !tbaa !20
  %281 = icmp eq i64 %278, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %275
  %283 = add i64 %276, -1
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %275

285:                                              ; preds = %282, %275, %260
  %286 = phi i64 [ 0, %260 ], [ 0, %282 ], [ %276, %275 ]
  %287 = getelementptr inbounds i64, i64* %263, i64 %286
  %288 = load i64, i64* %287, align 8, !tbaa !20
  %289 = getelementptr inbounds i64, i64* %264, i64 %286
  %290 = load i64, i64* %289, align 8, !tbaa !20
  %291 = icmp ult i64 %288, %290
  %292 = icmp ugt i64 %288, %290
  %293 = zext i1 %292 to i32
  %294 = select i1 %291, i32 -1, i32 %293
  br label %295

295:                                              ; preds = %265, %250, %285, %236
  %296 = phi i32 [ %294, %285 ], [ 0, %236 ], [ 1, %250 ], [ -1, %265 ]
  %297 = mul nsw i32 %296, %228
  br label %298

298:                                              ; preds = %233, %295
  %299 = phi i32 [ %297, %295 ], [ %235, %233 ]
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %317

301:                                              ; preds = %298
  %302 = icmp eq %struct.zahl* %0, null
  br i1 %302, label %412, label %303

303:                                              ; preds = %301
  %304 = bitcast %struct.zahl* %0 to i64*
  %305 = load i64, i64* bitcast ([1 x %struct.zahl]* @libzahl_tmp_ptest_a to i64*), align 8, !tbaa !25
  %306 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %307 = bitcast %struct.zahl* %0 to <2 x i64>*
  %308 = load <2 x i64>, <2 x i64>* %307, align 8, !tbaa !25
  store i64 %305, i64* %304, align 8, !tbaa !25
  %309 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0, i32 2), align 8, !tbaa !25
  store <2 x i64> %308, <2 x i64>* bitcast ([1 x %struct.zahl]* @libzahl_tmp_ptest_a to <2 x i64>*), align 8, !tbaa !25
  store i64 %309, i64* %306, align 8, !tbaa !25
  %310 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %311 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0, i32 3), align 8, !tbaa !25
  %312 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %313 = bitcast i64** %312 to i64*
  %314 = bitcast i64* %310 to <2 x i64>*
  %315 = load <2 x i64>, <2 x i64>* %314, align 8, !tbaa !25
  store i64 %311, i64* %310, align 8, !tbaa !25
  %316 = load i64, i64* bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0, i32 4) to i64*), align 8, !tbaa !25
  store <2 x i64> %315, <2 x i64>* bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0, i32 3) to <2 x i64>*), align 8, !tbaa !25
  store i64 %316, i64* %313, align 8, !tbaa !25
  br label %412

317:                                              ; preds = %231, %298
  %318 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %319 = icmp eq i32 %228, %318
  br i1 %319, label %325, label %320

320:                                              ; preds = %317
  %321 = icmp slt i32 %228, %318
  br i1 %321, label %390, label %322

322:                                              ; preds = %320
  %323 = icmp sgt i32 %228, %318
  %324 = zext i1 %323 to i32
  br label %387

325:                                              ; preds = %317
  %326 = icmp eq i32 %228, 0
  br i1 %326, label %384, label %327, !prof !17

327:                                              ; preds = %325
  %328 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %329 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %330 = add i64 %329, -1
  %331 = add i64 %328, -1
  %332 = icmp ugt i64 %331, %330
  br i1 %332, label %333, label %335

333:                                              ; preds = %327
  %334 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %339

335:                                              ; preds = %327
  %336 = icmp ugt i64 %330, %331
  br i1 %336, label %337, label %349

337:                                              ; preds = %335
  %338 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %354

339:                                              ; preds = %345, %333
  %340 = phi i64 [ %331, %333 ], [ %347, %345 ]
  %341 = phi i64 [ %328, %333 ], [ %346, %345 ]
  %342 = getelementptr inbounds i64, i64* %334, i64 %340
  %343 = load i64, i64* %342, align 8, !tbaa !20
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %345, label %384

345:                                              ; preds = %339
  %346 = add i64 %341, -1
  store i64 %346, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %347 = add i64 %340, -1
  %348 = icmp ugt i64 %347, %330
  br i1 %348, label %339, label %349

349:                                              ; preds = %360, %345, %335
  %350 = phi i64 [ %331, %335 ], [ %330, %345 ], [ %331, %360 ]
  %351 = icmp eq i64 %350, 0
  %352 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_x, i64 0, i64 0, i32 4), align 8, !tbaa !18
  %353 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br i1 %351, label %374, label %364

354:                                              ; preds = %360, %337
  %355 = phi i64 [ %329, %337 ], [ %361, %360 ]
  %356 = phi i64 [ %330, %337 ], [ %362, %360 ]
  %357 = getelementptr inbounds i64, i64* %338, i64 %356
  %358 = load i64, i64* %357, align 8, !tbaa !20
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %384

360:                                              ; preds = %354
  %361 = add i64 %355, -1
  store i64 %361, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_n1, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %362 = add i64 %356, -1
  %363 = icmp ugt i64 %362, %331
  br i1 %363, label %354, label %349

364:                                              ; preds = %349, %371
  %365 = phi i64 [ %372, %371 ], [ %350, %349 ]
  %366 = getelementptr inbounds i64, i64* %352, i64 %365
  %367 = load i64, i64* %366, align 8, !tbaa !20
  %368 = getelementptr inbounds i64, i64* %353, i64 %365
  %369 = load i64, i64* %368, align 8, !tbaa !20
  %370 = icmp eq i64 %367, %369
  br i1 %370, label %371, label %374

371:                                              ; preds = %364
  %372 = add i64 %365, -1
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %364

374:                                              ; preds = %371, %364, %349
  %375 = phi i64 [ 0, %349 ], [ 0, %371 ], [ %365, %364 ]
  %376 = getelementptr inbounds i64, i64* %352, i64 %375
  %377 = load i64, i64* %376, align 8, !tbaa !20
  %378 = getelementptr inbounds i64, i64* %353, i64 %375
  %379 = load i64, i64* %378, align 8, !tbaa !20
  %380 = icmp ult i64 %377, %379
  %381 = icmp ugt i64 %377, %379
  %382 = zext i1 %381 to i32
  %383 = select i1 %380, i32 -1, i32 %382
  br label %384

384:                                              ; preds = %354, %339, %374, %325
  %385 = phi i32 [ %383, %374 ], [ 0, %325 ], [ 1, %339 ], [ -1, %354 ]
  %386 = mul nsw i32 %385, %228
  br label %387

387:                                              ; preds = %322, %384
  %388 = phi i32 [ %386, %384 ], [ %324, %322 ]
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %393, label %390

390:                                              ; preds = %320, %387
  %391 = add nuw i64 %227, 1
  %392 = icmp eq i64 %391, %70
  br i1 %392, label %396, label %226

393:                                              ; preds = %387, %223
  %394 = phi i64 [ 1, %223 ], [ %227, %387 ]
  %395 = icmp eq i64 %394, %70
  br i1 %395, label %396, label %224

396:                                              ; preds = %393, %390
  %397 = icmp eq %struct.zahl* %0, null
  br i1 %397, label %412, label %398

398:                                              ; preds = %396
  %399 = bitcast %struct.zahl* %0 to i64*
  %400 = load i64, i64* bitcast ([1 x %struct.zahl]* @libzahl_tmp_ptest_a to i64*), align 8, !tbaa !25
  %401 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %402 = bitcast %struct.zahl* %0 to <2 x i64>*
  %403 = load <2 x i64>, <2 x i64>* %402, align 8, !tbaa !25
  store i64 %400, i64* %399, align 8, !tbaa !25
  %404 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0, i32 2), align 8, !tbaa !25
  store <2 x i64> %403, <2 x i64>* bitcast ([1 x %struct.zahl]* @libzahl_tmp_ptest_a to <2 x i64>*), align 8, !tbaa !25
  store i64 %404, i64* %401, align 8, !tbaa !25
  %405 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %406 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0, i32 3), align 8, !tbaa !25
  %407 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %408 = bitcast i64** %407 to i64*
  %409 = bitcast i64* %405 to <2 x i64>*
  %410 = load <2 x i64>, <2 x i64>* %409, align 8, !tbaa !25
  store i64 %406, i64* %405, align 8, !tbaa !25
  %411 = load i64, i64* bitcast (i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0, i32 4) to i64*), align 8, !tbaa !25
  store <2 x i64> %410, <2 x i64>* bitcast (i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_ptest_a, i64 0, i64 0, i32 3) to <2 x i64>*), align 8, !tbaa !25
  store i64 %411, i64* %408, align 8, !tbaa !25
  br label %412

412:                                              ; preds = %224, %69, %396, %398, %301, %303, %40, %47, %29, %32, %36
  %413 = phi i32 [ 0, %36 ], [ 0, %32 ], [ 2, %29 ], [ 0, %47 ], [ 0, %40 ], [ 0, %303 ], [ 0, %301 ], [ 0, %398 ], [ 0, %396 ], [ 1, %69 ], [ 1, %224 ]
  ret i32 %413
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind ssp uwtable
define internal fastcc i32 @zcmpu(%struct.zahl* nocapture noundef %0, i64 noundef %1) unnamed_addr #1 {
  %3 = getelementptr %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %31, label %6, !prof !17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %8 = load i64*, i64** %7, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !19
  %11 = add i64 %10, -1
  %12 = getelementptr inbounds i64, i64* %8, i64 %11
  %13 = load i64, i64* %12, align 8, !tbaa !20
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %6, %15
  %16 = phi i64 [ %17, %15 ], [ %11, %6 ]
  %17 = add i64 %16, -1
  %18 = getelementptr inbounds i64, i64* %8, i64 %17
  %19 = load i64, i64* %18, align 8, !tbaa !20
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %15, label %21

21:                                               ; preds = %15
  store i64 %16, i64* %9, align 8, !tbaa !19
  br label %22

22:                                               ; preds = %21, %6
  %23 = phi i64 [ %16, %21 ], [ %10, %6 ]
  %24 = icmp ugt i64 %23, 1
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8, !tbaa !20
  %27 = icmp ult i64 %26, %1
  %28 = icmp ugt i64 %26, %1
  %29 = zext i1 %28 to i32
  %30 = select i1 %27, i32 -1, i32 %29
  br label %31

31:                                               ; preds = %22, %2, %25
  %32 = phi i32 [ %30, %25 ], [ -1, %2 ], [ 1, %22 ]
  ret i32 %32
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  br i1 %5, label %7, label %8, !prof !17

7:                                                ; preds = %2
  store i32 0, i32* %6, align 8, !tbaa !10
  br label %117

8:                                                ; preds = %2
  store i32 %4, i32* %6, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %10, i64* %11, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %13 = load i64, i64* %12, align 8, !tbaa !23
  %14 = load i64, i64* %9, align 8, !tbaa !19
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %14) #6
  %17 = load i64, i64* %9, align 8, !tbaa !19
  br label %18

18:                                               ; preds = %8, %16
  %19 = phi i64 [ %14, %8 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8, !tbaa !18
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %23 = load i64*, i64** %22, align 8, !tbaa !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  switch i64 %19, label %102 [
    i64 20, label %24
    i64 19, label %28
    i64 18, label %32
    i64 17, label %36
    i64 16, label %40
    i64 15, label %44
    i64 14, label %48
    i64 13, label %52
    i64 12, label %56
    i64 11, label %60
    i64 10, label %64
    i64 9, label %68
    i64 8, label %72
    i64 7, label %76
    i64 6, label %80
    i64 5, label %84
    i64 4, label %88
    i64 3, label %92
    i64 2, label %96
    i64 1, label %100
    i64 0, label %117
  ]

24:                                               ; preds = %18
  %25 = getelementptr inbounds i64, i64* %23, i64 19
  %26 = load i64, i64* %25, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %27 = getelementptr inbounds i64, i64* %21, i64 19
  store i64 %26, i64* %27, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds i64, i64* %23, i64 18
  %30 = load i64, i64* %29, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %31 = getelementptr inbounds i64, i64* %21, i64 18
  store i64 %30, i64* %31, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %32

32:                                               ; preds = %28, %18
  %33 = getelementptr inbounds i64, i64* %23, i64 17
  %34 = load i64, i64* %33, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %35 = getelementptr inbounds i64, i64* %21, i64 17
  store i64 %34, i64* %35, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %36

36:                                               ; preds = %32, %18
  %37 = getelementptr inbounds i64, i64* %23, i64 16
  %38 = load i64, i64* %37, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %39 = getelementptr inbounds i64, i64* %21, i64 16
  store i64 %38, i64* %39, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %40

40:                                               ; preds = %36, %18
  %41 = getelementptr inbounds i64, i64* %23, i64 15
  %42 = load i64, i64* %41, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %43 = getelementptr inbounds i64, i64* %21, i64 15
  store i64 %42, i64* %43, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %44

44:                                               ; preds = %40, %18
  %45 = getelementptr inbounds i64, i64* %23, i64 14
  %46 = load i64, i64* %45, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %47 = getelementptr inbounds i64, i64* %21, i64 14
  store i64 %46, i64* %47, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %48

48:                                               ; preds = %44, %18
  %49 = getelementptr inbounds i64, i64* %23, i64 13
  %50 = load i64, i64* %49, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %51 = getelementptr inbounds i64, i64* %21, i64 13
  store i64 %50, i64* %51, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %52

52:                                               ; preds = %48, %18
  %53 = getelementptr inbounds i64, i64* %23, i64 12
  %54 = load i64, i64* %53, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %55 = getelementptr inbounds i64, i64* %21, i64 12
  store i64 %54, i64* %55, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %56

56:                                               ; preds = %52, %18
  %57 = getelementptr inbounds i64, i64* %23, i64 11
  %58 = load i64, i64* %57, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %59 = getelementptr inbounds i64, i64* %21, i64 11
  store i64 %58, i64* %59, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %60

60:                                               ; preds = %56, %18
  %61 = getelementptr inbounds i64, i64* %23, i64 10
  %62 = load i64, i64* %61, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %63 = getelementptr inbounds i64, i64* %21, i64 10
  store i64 %62, i64* %63, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %64

64:                                               ; preds = %60, %18
  %65 = getelementptr inbounds i64, i64* %23, i64 9
  %66 = load i64, i64* %65, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %67 = getelementptr inbounds i64, i64* %21, i64 9
  store i64 %66, i64* %67, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %68

68:                                               ; preds = %64, %18
  %69 = getelementptr inbounds i64, i64* %23, i64 8
  %70 = load i64, i64* %69, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %71 = getelementptr inbounds i64, i64* %21, i64 8
  store i64 %70, i64* %71, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %72

72:                                               ; preds = %68, %18
  %73 = getelementptr inbounds i64, i64* %23, i64 7
  %74 = load i64, i64* %73, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %75 = getelementptr inbounds i64, i64* %21, i64 7
  store i64 %74, i64* %75, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %76

76:                                               ; preds = %72, %18
  %77 = getelementptr inbounds i64, i64* %23, i64 6
  %78 = load i64, i64* %77, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %79 = getelementptr inbounds i64, i64* %21, i64 6
  store i64 %78, i64* %79, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %80

80:                                               ; preds = %76, %18
  %81 = getelementptr inbounds i64, i64* %23, i64 5
  %82 = load i64, i64* %81, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %83 = getelementptr inbounds i64, i64* %21, i64 5
  store i64 %82, i64* %83, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %84

84:                                               ; preds = %80, %18
  %85 = getelementptr inbounds i64, i64* %23, i64 4
  %86 = load i64, i64* %85, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %87 = getelementptr inbounds i64, i64* %21, i64 4
  store i64 %86, i64* %87, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %88

88:                                               ; preds = %84, %18
  %89 = getelementptr inbounds i64, i64* %23, i64 3
  %90 = load i64, i64* %89, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %91 = getelementptr inbounds i64, i64* %21, i64 3
  store i64 %90, i64* %91, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %92

92:                                               ; preds = %88, %18
  %93 = getelementptr inbounds i64, i64* %23, i64 2
  %94 = load i64, i64* %93, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %95 = getelementptr inbounds i64, i64* %21, i64 2
  store i64 %94, i64* %95, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %96

96:                                               ; preds = %92, %18
  %97 = getelementptr inbounds i64, i64* %23, i64 1
  %98 = load i64, i64* %97, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %99 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %98, i64* %99, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %100

100:                                              ; preds = %96, %18
  %101 = load i64, i64* %23, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  store i64 %101, i64* %21, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  br label %117

102:                                              ; preds = %18, %102
  %103 = phi i64 [ %115, %102 ], [ 0, %18 ]
  %104 = getelementptr inbounds i64, i64* %23, i64 %103
  %105 = getelementptr inbounds i64, i64* %21, i64 %103
  %106 = bitcast i64* %104 to <2 x i64>*
  %107 = load <2 x i64>, <2 x i64>* %106, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %108 = bitcast i64* %105 to <2 x i64>*
  store <2 x i64> %107, <2 x i64>* %108, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  %109 = or i64 %103, 2
  %110 = getelementptr inbounds i64, i64* %23, i64 %109
  %111 = getelementptr inbounds i64, i64* %21, i64 %109
  %112 = bitcast i64* %110 to <2 x i64>*
  %113 = load <2 x i64>, <2 x i64>* %112, align 8, !tbaa !20, !alias.scope !29, !noalias !26
  %114 = bitcast i64* %111 to <2 x i64>*
  store <2 x i64> %113, <2 x i64>* %114, align 8, !tbaa !20, !alias.scope !26, !noalias !29
  %115 = add i64 %103, 4
  %116 = icmp ult i64 %115, %19
  br i1 %116, label %102, label %117

117:                                              ; preds = %102, %100, %18, %7
  ret void
}

declare void @zsub_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @zrsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) local_unnamed_addr #3

declare void @zrand(%struct.zahl* noundef, i32 noundef, i32 noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @zadd_unsigned(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @zmodpow(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @zmodsqr(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { inlinehint nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #6 = { nounwind }

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
!10 = !{!11, !12, i64 0}
!11 = !{!"zahl", !12, i64 0, !12, i64 4, !15, i64 8, !15, i64 16, !16, i64 24}
!12 = !{!"int", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"long", !13, i64 0}
!16 = !{!"any pointer", !13, i64 0}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!11, !16, i64 24}
!19 = !{!11, !15, i64 8}
!20 = !{!21, !21, i64 0}
!21 = !{!"long long", !13, i64 0}
!22 = !{!"branch_weights", i32 2002, i32 6002}
!23 = !{!11, !15, i64 16}
!24 = !{i64 0, i64 65}
!25 = !{!15, !15, i64 0}
!26 = !{!27}
!27 = distinct !{!27, !28, !"libzahl_memcpy: argument 0"}
!28 = distinct !{!28, !"libzahl_memcpy"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"libzahl_memcpy: argument 1"}
