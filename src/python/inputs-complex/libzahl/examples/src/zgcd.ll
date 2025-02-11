; ModuleID = 'src/zgcd.c'
source_filename = "src/zgcd.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_gcd_u = external global [1 x %struct.zahl], align 8
@libzahl_tmp_gcd_v = external global [1 x %struct.zahl], align 8

; Function Attrs: nounwind ssp uwtable
define void @zgcd(%struct.zahl* noundef %0, %struct.zahl* noundef %1, %struct.zahl* noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10, !prof !17

7:                                                ; preds = %3
  %8 = icmp eq %struct.zahl* %0, %2
  br i1 %8, label %211, label %9

9:                                                ; preds = %7
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef %2)
  br label %211

10:                                               ; preds = %3
  %11 = getelementptr %struct.zahl, %struct.zahl* %2, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !17

14:                                               ; preds = %10
  %15 = icmp eq %struct.zahl* %0, %1
  br i1 %15, label %211, label %16

16:                                               ; preds = %14
  tail call fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* noundef nonnull %1)
  br label %211

17:                                               ; preds = %10
  %18 = and i32 %12, %5
  %19 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %20 = load i64*, i64** %19, align 8, !tbaa !18
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i64 [ %26, %21 ], [ 0, %17 ]
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8, !tbaa !19
  %25 = icmp eq i64 %24, 0
  %26 = add i64 %22, 1
  br i1 %25, label %21, label %27

27:                                               ; preds = %21
  %28 = shl i64 %22, 6
  %29 = getelementptr inbounds i64, i64* %20, i64 %28
  %30 = load i64, i64* %29, align 8, !tbaa !19
  %31 = tail call i64 @llvm.cttz.i64(i64 %30, i1 false) #5, !range !21
  %32 = add i64 %31, %28
  %33 = getelementptr inbounds %struct.zahl, %struct.zahl* %2, i64 0, i32 4
  %34 = load i64*, i64** %33, align 8, !tbaa !18
  br label %35

35:                                               ; preds = %35, %27
  %36 = phi i64 [ %40, %35 ], [ 0, %27 ]
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8, !tbaa !19
  %39 = icmp eq i64 %38, 0
  %40 = add i64 %36, 1
  br i1 %39, label %35, label %41

41:                                               ; preds = %35
  %42 = shl i64 %36, 6
  %43 = getelementptr inbounds i64, i64* %34, i64 %42
  %44 = load i64, i64* %43, align 8, !tbaa !19
  %45 = tail call i64 @llvm.cttz.i64(i64 %44, i1 false) #5, !range !21
  %46 = add i64 %45, %42
  %47 = icmp ult i64 %32, %46
  %48 = select i1 %47, i64 %32, i64 %46
  tail call void @zrsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0), %struct.zahl* noundef %1, i64 noundef %32) #5
  tail call void @zrsh(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0), %struct.zahl* noundef %2, i64 noundef %46) #5
  %49 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 4), align 8, !tbaa !18
  %50 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 4), align 8, !tbaa !18
  %51 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %52 = icmp eq i32 %51, 0
  br label %53

53:                                               ; preds = %127, %41
  %54 = phi i1 [ %52, %41 ], [ %128, %127 ]
  %55 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %116, label %57, !prof !17

57:                                               ; preds = %53
  %58 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 2), align 8, !tbaa !22
  %59 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 2), align 8, !tbaa !22
  br i1 %54, label %60, label %62, !prof !17

60:                                               ; preds = %57
  %61 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %119

62:                                               ; preds = %57
  %63 = add i64 %59, -1
  %64 = add i64 %58, -1
  %65 = icmp ugt i64 %64, %63
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %72

68:                                               ; preds = %62
  %69 = icmp ugt i64 %63, %64
  br i1 %69, label %70, label %82

70:                                               ; preds = %68
  %71 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %89

72:                                               ; preds = %78, %66
  %73 = phi i64 [ %64, %66 ], [ %80, %78 ]
  %74 = phi i64 [ %58, %66 ], [ %79, %78 ]
  %75 = getelementptr inbounds i64, i64* %67, i64 %73
  %76 = load i64, i64* %75, align 8, !tbaa !19
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %119

78:                                               ; preds = %72
  %79 = add i64 %74, -1
  store i64 %79, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 2), align 8, !tbaa !22
  %80 = add i64 %73, -1
  %81 = icmp ugt i64 %80, %63
  br i1 %81, label %72, label %82

82:                                               ; preds = %95, %78, %68
  %83 = phi i64 [ %59, %68 ], [ %59, %78 ], [ %96, %95 ]
  %84 = phi i64 [ %58, %68 ], [ %79, %78 ], [ %58, %95 ]
  %85 = phi i64 [ %64, %68 ], [ %63, %78 ], [ %64, %95 ]
  %86 = icmp eq i64 %85, 0
  %87 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 4), align 8, !tbaa !18
  %88 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br i1 %86, label %109, label %99

89:                                               ; preds = %95, %70
  %90 = phi i64 [ %63, %70 ], [ %97, %95 ]
  %91 = phi i64 [ %59, %70 ], [ %96, %95 ]
  %92 = getelementptr inbounds i64, i64* %71, i64 %90
  %93 = load i64, i64* %92, align 8, !tbaa !19
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %89
  %96 = add i64 %91, -1
  store i64 %96, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 2), align 8, !tbaa !22
  %97 = add i64 %90, -1
  %98 = icmp ugt i64 %97, %64
  br i1 %98, label %89, label %82

99:                                               ; preds = %82, %106
  %100 = phi i64 [ %107, %106 ], [ %85, %82 ]
  %101 = getelementptr inbounds i64, i64* %87, i64 %100
  %102 = load i64, i64* %101, align 8, !tbaa !19
  %103 = getelementptr inbounds i64, i64* %88, i64 %100
  %104 = load i64, i64* %103, align 8, !tbaa !19
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = add i64 %100, -1
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %99

109:                                              ; preds = %106, %99, %82
  %110 = phi i64 [ 0, %82 ], [ %100, %99 ], [ 0, %106 ]
  %111 = getelementptr inbounds i64, i64* %87, i64 %110
  %112 = load i64, i64* %111, align 8, !tbaa !19
  %113 = getelementptr inbounds i64, i64* %88, i64 %110
  %114 = load i64, i64* %113, align 8, !tbaa !19
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %124, label %117

116:                                              ; preds = %53
  br i1 %54, label %207, label %124, !prof !23

117:                                              ; preds = %109
  %118 = icmp ugt i64 %112, %114
  br i1 %118, label %119, label %207, !prof !23

119:                                              ; preds = %72, %60, %117
  %120 = phi i64* [ %61, %60 ], [ %87, %117 ], [ %67, %72 ]
  %121 = phi i64 [ %59, %60 ], [ %83, %117 ], [ %59, %72 ]
  %122 = phi i64 [ %58, %60 ], [ %84, %117 ], [ %74, %72 ]
  store i64 %121, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 2), align 8, !tbaa !22
  store i64 %122, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 2), align 8, !tbaa !22
  %123 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 4), align 8, !tbaa !18
  store i64* %120, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 4), align 8, !tbaa !18
  store i64* %123, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %124

124:                                              ; preds = %89, %109, %119, %116
  tail call void @zsub_positive_assign(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0)) #5
  %125 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129, !prof !17

127:                                              ; preds = %124, %137, %167, %175, %183, %206
  %128 = phi i1 [ true, %124 ], [ false, %137 ], [ true, %167 ], [ false, %175 ], [ false, %183 ], [ false, %206 ]
  br label %53

129:                                              ; preds = %124
  %130 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi i64 [ %136, %131 ], [ 0, %129 ]
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8, !tbaa !19
  %135 = icmp eq i64 %134, 0
  %136 = add i64 %132, 1
  br i1 %135, label %131, label %137

137:                                              ; preds = %131
  %138 = shl i64 %132, 6
  %139 = getelementptr inbounds i64, i64* %130, i64 %138
  %140 = load i64, i64* %139, align 8, !tbaa !19
  %141 = tail call i64 @llvm.cttz.i64(i64 %140, i1 false) #5, !range !21
  %142 = add i64 %141, %138
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %127, label %144, !prof !24

144:                                              ; preds = %137
  %145 = lshr i64 %142, 6
  %146 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 2), align 8, !tbaa !22
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %167, !prof !23

148:                                              ; preds = %144
  %149 = add i64 %146, -1
  %150 = getelementptr inbounds i64, i64* %130, i64 %149
  %151 = load i64, i64* %150, align 8, !tbaa !19
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %148, %153
  %154 = phi i64 [ %155, %153 ], [ %149, %148 ]
  %155 = add i64 %154, -1
  %156 = getelementptr inbounds i64, i64* %130, i64 %155
  %157 = load i64, i64* %156, align 8, !tbaa !19
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %153, label %159

159:                                              ; preds = %153
  store i64 %154, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 2), align 8, !tbaa !22
  br label %160

160:                                              ; preds = %159, %148
  %161 = phi i64 [ %154, %159 ], [ %146, %148 ]
  %162 = phi i64 [ %157, %159 ], [ %151, %148 ]
  %163 = shl i64 %161, 6
  %164 = tail call i64 @llvm.ctlz.i64(i64 %162, i1 true) #5, !range !21
  %165 = sub i64 %163, %164
  %166 = icmp ugt i64 %165, %142
  br i1 %166, label %168, label %167, !prof !23

167:                                              ; preds = %160, %144
  store i32 0, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 0), align 8, !tbaa !10
  br label %127

168:                                              ; preds = %160
  %169 = and i64 %142, 63
  %170 = sub nuw nsw i64 64, %169
  %171 = icmp ult i64 %142, 64
  br i1 %171, label %175, label %172, !prof !17

172:                                              ; preds = %168
  %173 = sub i64 %161, %145
  store i64 %173, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 2), align 8, !tbaa !22
  %174 = getelementptr inbounds i64, i64* %130, i64 %145
  store i64* %174, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %175

175:                                              ; preds = %172, %168
  %176 = phi i64* [ %174, %172 ], [ %130, %168 ]
  %177 = phi i64 [ %173, %172 ], [ %161, %168 ]
  %178 = icmp eq i64 %169, 0
  br i1 %178, label %127, label %179, !prof !23

179:                                              ; preds = %175
  %180 = load i64, i64* %176, align 8, !tbaa !19
  %181 = lshr i64 %180, %169
  store i64 %181, i64* %176, align 8, !tbaa !19
  %182 = icmp ugt i64 %177, 1
  br i1 %182, label %188, label %183

183:                                              ; preds = %188, %179
  %184 = add i64 %177, -1
  %185 = getelementptr inbounds i64, i64* %176, i64 %184
  %186 = load i64, i64* %185, align 8, !tbaa !19
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %200, label %127

188:                                              ; preds = %179, %188
  %189 = phi i64 [ %197, %188 ], [ %181, %179 ]
  %190 = phi i64 [ %198, %188 ], [ 1, %179 ]
  %191 = getelementptr inbounds i64, i64* %176, i64 %190
  %192 = load i64, i64* %191, align 8, !tbaa !19
  %193 = shl i64 %192, %170
  %194 = add i64 %190, -1
  %195 = getelementptr inbounds i64, i64* %176, i64 %194
  %196 = or i64 %193, %189
  store i64 %196, i64* %195, align 8, !tbaa !19
  %197 = lshr i64 %192, %169
  store i64 %197, i64* %191, align 8, !tbaa !19
  %198 = add nuw i64 %190, 1
  %199 = icmp eq i64 %198, %177
  br i1 %199, label %183, label %188

200:                                              ; preds = %183, %200
  %201 = phi i64 [ %202, %200 ], [ %184, %183 ]
  %202 = add i64 %201, -1
  %203 = getelementptr inbounds i64, i64* %176, i64 %202
  %204 = load i64, i64* %203, align 8, !tbaa !19
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %200, label %206

206:                                              ; preds = %200
  store i64 %201, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 2), align 8, !tbaa !22
  br label %127

207:                                              ; preds = %116, %117
  tail call void @zlsh(%struct.zahl* noundef %0, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0), i64 noundef %48) #5
  %208 = icmp sgt i32 %18, -1
  %209 = select i1 %208, i32 1, i32 -1
  %210 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %209, i32* %210, align 8, !tbaa !10
  store i64* %49, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_u, i64 0, i64 0, i32 4), align 8, !tbaa !18
  store i64* %50, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_gcd_v, i64 0, i64 0, i32 4), align 8, !tbaa !18
  br label %211

211:                                              ; preds = %14, %16, %7, %9, %207
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* nocapture noundef readonly %1) unnamed_addr #1 {
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
  %10 = load i64, i64* %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %10, i64* %11, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %13 = load i64, i64* %12, align 8, !tbaa !25
  %14 = load i64, i64* %9, align 8, !tbaa !22
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %14) #5
  %17 = load i64, i64* %9, align 8, !tbaa !22
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
  %26 = load i64, i64* %25, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %27 = getelementptr inbounds i64, i64* %21, i64 19
  store i64 %26, i64* %27, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds i64, i64* %23, i64 18
  %30 = load i64, i64* %29, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %31 = getelementptr inbounds i64, i64* %21, i64 18
  store i64 %30, i64* %31, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %32

32:                                               ; preds = %28, %18
  %33 = getelementptr inbounds i64, i64* %23, i64 17
  %34 = load i64, i64* %33, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %35 = getelementptr inbounds i64, i64* %21, i64 17
  store i64 %34, i64* %35, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %36

36:                                               ; preds = %32, %18
  %37 = getelementptr inbounds i64, i64* %23, i64 16
  %38 = load i64, i64* %37, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %39 = getelementptr inbounds i64, i64* %21, i64 16
  store i64 %38, i64* %39, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %40

40:                                               ; preds = %36, %18
  %41 = getelementptr inbounds i64, i64* %23, i64 15
  %42 = load i64, i64* %41, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %43 = getelementptr inbounds i64, i64* %21, i64 15
  store i64 %42, i64* %43, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %44

44:                                               ; preds = %40, %18
  %45 = getelementptr inbounds i64, i64* %23, i64 14
  %46 = load i64, i64* %45, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %47 = getelementptr inbounds i64, i64* %21, i64 14
  store i64 %46, i64* %47, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %48

48:                                               ; preds = %44, %18
  %49 = getelementptr inbounds i64, i64* %23, i64 13
  %50 = load i64, i64* %49, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %51 = getelementptr inbounds i64, i64* %21, i64 13
  store i64 %50, i64* %51, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %52

52:                                               ; preds = %48, %18
  %53 = getelementptr inbounds i64, i64* %23, i64 12
  %54 = load i64, i64* %53, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %55 = getelementptr inbounds i64, i64* %21, i64 12
  store i64 %54, i64* %55, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %56

56:                                               ; preds = %52, %18
  %57 = getelementptr inbounds i64, i64* %23, i64 11
  %58 = load i64, i64* %57, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %59 = getelementptr inbounds i64, i64* %21, i64 11
  store i64 %58, i64* %59, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %60

60:                                               ; preds = %56, %18
  %61 = getelementptr inbounds i64, i64* %23, i64 10
  %62 = load i64, i64* %61, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %63 = getelementptr inbounds i64, i64* %21, i64 10
  store i64 %62, i64* %63, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %64

64:                                               ; preds = %60, %18
  %65 = getelementptr inbounds i64, i64* %23, i64 9
  %66 = load i64, i64* %65, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %67 = getelementptr inbounds i64, i64* %21, i64 9
  store i64 %66, i64* %67, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %68

68:                                               ; preds = %64, %18
  %69 = getelementptr inbounds i64, i64* %23, i64 8
  %70 = load i64, i64* %69, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %71 = getelementptr inbounds i64, i64* %21, i64 8
  store i64 %70, i64* %71, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %72

72:                                               ; preds = %68, %18
  %73 = getelementptr inbounds i64, i64* %23, i64 7
  %74 = load i64, i64* %73, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %75 = getelementptr inbounds i64, i64* %21, i64 7
  store i64 %74, i64* %75, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %76

76:                                               ; preds = %72, %18
  %77 = getelementptr inbounds i64, i64* %23, i64 6
  %78 = load i64, i64* %77, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %79 = getelementptr inbounds i64, i64* %21, i64 6
  store i64 %78, i64* %79, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %80

80:                                               ; preds = %76, %18
  %81 = getelementptr inbounds i64, i64* %23, i64 5
  %82 = load i64, i64* %81, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %83 = getelementptr inbounds i64, i64* %21, i64 5
  store i64 %82, i64* %83, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %84

84:                                               ; preds = %80, %18
  %85 = getelementptr inbounds i64, i64* %23, i64 4
  %86 = load i64, i64* %85, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %87 = getelementptr inbounds i64, i64* %21, i64 4
  store i64 %86, i64* %87, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %88

88:                                               ; preds = %84, %18
  %89 = getelementptr inbounds i64, i64* %23, i64 3
  %90 = load i64, i64* %89, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %91 = getelementptr inbounds i64, i64* %21, i64 3
  store i64 %90, i64* %91, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %92

92:                                               ; preds = %88, %18
  %93 = getelementptr inbounds i64, i64* %23, i64 2
  %94 = load i64, i64* %93, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %95 = getelementptr inbounds i64, i64* %21, i64 2
  store i64 %94, i64* %95, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %96

96:                                               ; preds = %92, %18
  %97 = getelementptr inbounds i64, i64* %23, i64 1
  %98 = load i64, i64* %97, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %99 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %98, i64* %99, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %100

100:                                              ; preds = %96, %18
  %101 = load i64, i64* %23, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  store i64 %101, i64* %21, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  br label %117

102:                                              ; preds = %18, %102
  %103 = phi i64 [ %115, %102 ], [ 0, %18 ]
  %104 = getelementptr inbounds i64, i64* %23, i64 %103
  %105 = getelementptr inbounds i64, i64* %21, i64 %103
  %106 = bitcast i64* %104 to <2 x i64>*
  %107 = load <2 x i64>, <2 x i64>* %106, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %108 = bitcast i64* %105 to <2 x i64>*
  store <2 x i64> %107, <2 x i64>* %108, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  %109 = or i64 %103, 2
  %110 = getelementptr inbounds i64, i64* %23, i64 %109
  %111 = getelementptr inbounds i64, i64* %21, i64 %109
  %112 = bitcast i64* %110 to <2 x i64>*
  %113 = load <2 x i64>, <2 x i64>* %112, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %114 = bitcast i64* %111 to <2 x i64>*
  store <2 x i64> %113, <2 x i64>* %114, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  %115 = add i64 %103, 4
  %116 = icmp ult i64 %115, %19
  br i1 %116, label %102, label %117

117:                                              ; preds = %102, %100, %18, %7
  ret void
}

declare void @zrsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) local_unnamed_addr #2

declare void @zsub_positive_assign(%struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #2

declare void @zlsh(%struct.zahl* noundef, %struct.zahl* noundef, i64 noundef) local_unnamed_addr #2

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblememonly nofree nosync nounwind willreturn }
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
!10 = !{!11, !12, i64 0}
!11 = !{!"zahl", !12, i64 0, !12, i64 4, !15, i64 8, !15, i64 16, !16, i64 24}
!12 = !{!"int", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"long", !13, i64 0}
!16 = !{!"any pointer", !13, i64 0}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!11, !16, i64 24}
!19 = !{!20, !20, i64 0}
!20 = !{!"long long", !13, i64 0}
!21 = !{i64 0, i64 65}
!22 = !{!11, !15, i64 8}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{!"branch_weights", i32 4001, i32 4000000}
!25 = !{!11, !15, i64 16}
!26 = !{!27}
!27 = distinct !{!27, !28, !"libzahl_memcpy: argument 0"}
!28 = distinct !{!28, !"libzahl_memcpy"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"libzahl_memcpy: argument 1"}
