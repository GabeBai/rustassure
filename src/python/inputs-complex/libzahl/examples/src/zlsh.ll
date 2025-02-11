; ModuleID = 'src/zlsh.c'
source_filename = "src/zlsh.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

; Function Attrs: nounwind ssp uwtable
define void @zlsh(%struct.zahl* noundef %0, %struct.zahl* noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %227, label %7, !prof !17

7:                                                ; preds = %3
  %8 = lshr i64 %2, 6
  %9 = and i64 %2, 63
  %10 = sub nuw nsw i64 64, %9
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %12 = load i64, i64* %11, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %14 = load i64, i64* %13, align 8, !tbaa !19
  %15 = add nuw nsw i64 %8, 1
  %16 = add i64 %15, %14
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %16) #5
  br label %19

19:                                               ; preds = %18, %7
  %20 = icmp eq %struct.zahl* %0, %1
  br i1 %20, label %21, label %123, !prof !20

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %23 = load i64*, i64** %22, align 8, !tbaa !21
  %24 = getelementptr inbounds i64, i64* %23, i64 %8
  %25 = load i64, i64* %13, align 8, !tbaa !19
  switch i64 %25, label %104 [
    i64 20, label %26
    i64 19, label %30
    i64 18, label %34
    i64 17, label %38
    i64 16, label %42
    i64 15, label %46
    i64 14, label %50
    i64 13, label %54
    i64 12, label %58
    i64 11, label %62
    i64 10, label %66
    i64 9, label %70
    i64 8, label %74
    i64 7, label %78
    i64 6, label %82
    i64 5, label %86
    i64 4, label %90
    i64 3, label %94
    i64 2, label %98
    i64 1, label %102
    i64 0, label %130
  ]

26:                                               ; preds = %21
  %27 = getelementptr inbounds i64, i64* %23, i64 19
  %28 = load i64, i64* %27, align 8, !tbaa !22
  %29 = getelementptr inbounds i64, i64* %24, i64 19
  store i64 %28, i64* %29, align 8, !tbaa !22
  br label %30

30:                                               ; preds = %26, %21
  %31 = getelementptr inbounds i64, i64* %23, i64 18
  %32 = load i64, i64* %31, align 8, !tbaa !22
  %33 = getelementptr inbounds i64, i64* %24, i64 18
  store i64 %32, i64* %33, align 8, !tbaa !22
  br label %34

34:                                               ; preds = %30, %21
  %35 = getelementptr inbounds i64, i64* %23, i64 17
  %36 = load i64, i64* %35, align 8, !tbaa !22
  %37 = getelementptr inbounds i64, i64* %24, i64 17
  store i64 %36, i64* %37, align 8, !tbaa !22
  br label %38

38:                                               ; preds = %34, %21
  %39 = getelementptr inbounds i64, i64* %23, i64 16
  %40 = load i64, i64* %39, align 8, !tbaa !22
  %41 = getelementptr inbounds i64, i64* %24, i64 16
  store i64 %40, i64* %41, align 8, !tbaa !22
  br label %42

42:                                               ; preds = %38, %21
  %43 = getelementptr inbounds i64, i64* %23, i64 15
  %44 = load i64, i64* %43, align 8, !tbaa !22
  %45 = getelementptr inbounds i64, i64* %24, i64 15
  store i64 %44, i64* %45, align 8, !tbaa !22
  br label %46

46:                                               ; preds = %42, %21
  %47 = getelementptr inbounds i64, i64* %23, i64 14
  %48 = load i64, i64* %47, align 8, !tbaa !22
  %49 = getelementptr inbounds i64, i64* %24, i64 14
  store i64 %48, i64* %49, align 8, !tbaa !22
  br label %50

50:                                               ; preds = %46, %21
  %51 = getelementptr inbounds i64, i64* %23, i64 13
  %52 = load i64, i64* %51, align 8, !tbaa !22
  %53 = getelementptr inbounds i64, i64* %24, i64 13
  store i64 %52, i64* %53, align 8, !tbaa !22
  br label %54

54:                                               ; preds = %50, %21
  %55 = getelementptr inbounds i64, i64* %23, i64 12
  %56 = load i64, i64* %55, align 8, !tbaa !22
  %57 = getelementptr inbounds i64, i64* %24, i64 12
  store i64 %56, i64* %57, align 8, !tbaa !22
  br label %58

58:                                               ; preds = %54, %21
  %59 = getelementptr inbounds i64, i64* %23, i64 11
  %60 = load i64, i64* %59, align 8, !tbaa !22
  %61 = getelementptr inbounds i64, i64* %24, i64 11
  store i64 %60, i64* %61, align 8, !tbaa !22
  br label %62

62:                                               ; preds = %58, %21
  %63 = getelementptr inbounds i64, i64* %23, i64 10
  %64 = load i64, i64* %63, align 8, !tbaa !22
  %65 = getelementptr inbounds i64, i64* %24, i64 10
  store i64 %64, i64* %65, align 8, !tbaa !22
  br label %66

66:                                               ; preds = %62, %21
  %67 = getelementptr inbounds i64, i64* %23, i64 9
  %68 = load i64, i64* %67, align 8, !tbaa !22
  %69 = getelementptr inbounds i64, i64* %24, i64 9
  store i64 %68, i64* %69, align 8, !tbaa !22
  br label %70

70:                                               ; preds = %66, %21
  %71 = getelementptr inbounds i64, i64* %23, i64 8
  %72 = load i64, i64* %71, align 8, !tbaa !22
  %73 = getelementptr inbounds i64, i64* %24, i64 8
  store i64 %72, i64* %73, align 8, !tbaa !22
  br label %74

74:                                               ; preds = %70, %21
  %75 = getelementptr inbounds i64, i64* %23, i64 7
  %76 = load i64, i64* %75, align 8, !tbaa !22
  %77 = getelementptr inbounds i64, i64* %24, i64 7
  store i64 %76, i64* %77, align 8, !tbaa !22
  br label %78

78:                                               ; preds = %74, %21
  %79 = getelementptr inbounds i64, i64* %23, i64 6
  %80 = load i64, i64* %79, align 8, !tbaa !22
  %81 = getelementptr inbounds i64, i64* %24, i64 6
  store i64 %80, i64* %81, align 8, !tbaa !22
  br label %82

82:                                               ; preds = %78, %21
  %83 = getelementptr inbounds i64, i64* %23, i64 5
  %84 = load i64, i64* %83, align 8, !tbaa !22
  %85 = getelementptr inbounds i64, i64* %24, i64 5
  store i64 %84, i64* %85, align 8, !tbaa !22
  br label %86

86:                                               ; preds = %82, %21
  %87 = getelementptr inbounds i64, i64* %23, i64 4
  %88 = load i64, i64* %87, align 8, !tbaa !22
  %89 = getelementptr inbounds i64, i64* %24, i64 4
  store i64 %88, i64* %89, align 8, !tbaa !22
  br label %90

90:                                               ; preds = %86, %21
  %91 = getelementptr inbounds i64, i64* %23, i64 3
  %92 = load i64, i64* %91, align 8, !tbaa !22
  %93 = getelementptr inbounds i64, i64* %24, i64 3
  store i64 %92, i64* %93, align 8, !tbaa !22
  br label %94

94:                                               ; preds = %90, %21
  %95 = getelementptr inbounds i64, i64* %23, i64 2
  %96 = load i64, i64* %95, align 8, !tbaa !22
  %97 = getelementptr inbounds i64, i64* %24, i64 2
  store i64 %96, i64* %97, align 8, !tbaa !22
  br label %98

98:                                               ; preds = %94, %21
  %99 = getelementptr inbounds i64, i64* %23, i64 1
  %100 = load i64, i64* %99, align 8, !tbaa !22
  %101 = getelementptr inbounds i64, i64* %24, i64 1
  store i64 %100, i64* %101, align 8, !tbaa !22
  br label %102

102:                                              ; preds = %98, %21
  %103 = load i64, i64* %23, align 8, !tbaa !22
  store i64 %103, i64* %24, align 8, !tbaa !22
  br label %130

104:                                              ; preds = %21
  %105 = add nsw i64 %25, 3
  %106 = and i64 %105, -4
  %107 = icmp sgt i64 %106, 3
  br i1 %107, label %108, label %130

108:                                              ; preds = %104, %108
  %109 = phi i64 [ %110, %108 ], [ %106, %104 ]
  %110 = add nsw i64 %109, -4
  %111 = add nsw i64 %109, -2
  %112 = getelementptr inbounds i64, i64* %23, i64 %111
  %113 = bitcast i64* %112 to <2 x i64>*
  %114 = load <2 x i64>, <2 x i64>* %113, align 8, !tbaa !22
  %115 = getelementptr inbounds i64, i64* %24, i64 %111
  %116 = bitcast i64* %115 to <2 x i64>*
  store <2 x i64> %114, <2 x i64>* %116, align 8, !tbaa !22
  %117 = getelementptr inbounds i64, i64* %23, i64 %110
  %118 = bitcast i64* %117 to <2 x i64>*
  %119 = load <2 x i64>, <2 x i64>* %118, align 8, !tbaa !22
  %120 = getelementptr inbounds i64, i64* %24, i64 %110
  %121 = bitcast i64* %120 to <2 x i64>*
  store <2 x i64> %119, <2 x i64>* %121, align 8, !tbaa !22
  %122 = icmp ugt i64 %109, 7
  br i1 %122, label %108, label %130

123:                                              ; preds = %19
  %124 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %125 = load i64*, i64** %124, align 8, !tbaa !21
  %126 = getelementptr inbounds i64, i64* %125, i64 %8
  %127 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %128 = load i64*, i64** %127, align 8, !tbaa !21
  %129 = load i64, i64* %13, align 8, !tbaa !19
  tail call fastcc void @libzahl_memcpy(i64* noundef %126, i64* noundef %128, i64 noundef %129)
  br label %130

130:                                              ; preds = %108, %104, %102, %21, %123
  %131 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %132 = load i64*, i64** %131, align 8, !tbaa !21
  %133 = icmp ult i64 %2, 320
  br i1 %133, label %143, label %134

134:                                              ; preds = %130
  %135 = bitcast i64* %132 to i8*
  %136 = call i64 @llvm.umax.i64(i64 %15, i64 8)
  %137 = shl nuw nsw i64 %136, 3
  %138 = add nsw i64 %137, -8
  %139 = and i64 %138, -32
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %135, i8 0, i64 %139, i1 false), !tbaa !22
  %140 = add nsw i64 %136, -1
  %141 = and i64 %140, -4
  %142 = icmp ugt i64 %8, %141
  br i1 %142, label %155, label %160

143:                                              ; preds = %130
  %144 = icmp ult i64 %2, 64
  br i1 %144, label %160, label %145

145:                                              ; preds = %143
  store i64 0, i64* %132, align 8, !tbaa !22
  %146 = icmp eq i64 %8, 1
  br i1 %146, label %160, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds i64, i64* %132, i64 1
  store i64 0, i64* %148, align 8, !tbaa !22
  %149 = icmp ugt i64 %2, 191
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = getelementptr inbounds i64, i64* %132, i64 2
  store i64 0, i64* %151, align 8, !tbaa !22
  %152 = icmp eq i64 %8, 3
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds i64, i64* %132, i64 3
  store i64 0, i64* %154, align 8, !tbaa !22
  br label %160

155:                                              ; preds = %134
  %156 = getelementptr i64, i64* %132, i64 %141
  %157 = bitcast i64* %156 to i8*
  %158 = sub nsw i64 %8, %141
  %159 = shl nsw i64 %158, 3
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %157, i8 0, i64 %159, i1 false) #5, !tbaa !22
  br label %160

160:                                              ; preds = %143, %145, %147, %150, %153, %134, %155
  %161 = load i64, i64* %13, align 8, !tbaa !19
  %162 = add i64 %161, %8
  %163 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %162, i64* %163, align 8, !tbaa !19
  %164 = icmp ne i64 %9, 0
  %165 = icmp ult i64 %8, %162
  %166 = select i1 %164, i1 %165, i1 false
  br i1 %166, label %167, label %225, !prof !24

167:                                              ; preds = %160
  %168 = icmp ult i64 %161, 4
  br i1 %168, label %206, label %169

169:                                              ; preds = %167
  %170 = and i64 %161, -4
  %171 = add i64 %8, %170
  %172 = insertelement <2 x i64> poison, i64 %10, i64 0
  %173 = shufflevector <2 x i64> %172, <2 x i64> poison, <2 x i32> zeroinitializer
  %174 = insertelement <2 x i64> poison, i64 %10, i64 0
  %175 = shufflevector <2 x i64> %174, <2 x i64> poison, <2 x i32> zeroinitializer
  %176 = insertelement <2 x i64> poison, i64 %9, i64 0
  %177 = shufflevector <2 x i64> %176, <2 x i64> poison, <2 x i32> zeroinitializer
  %178 = insertelement <2 x i64> poison, i64 %9, i64 0
  %179 = shufflevector <2 x i64> %178, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %180

180:                                              ; preds = %180, %169
  %181 = phi i64 [ 0, %169 ], [ %200, %180 ]
  %182 = phi <2 x i64> [ <i64 poison, i64 0>, %169 ], [ %191, %180 ]
  %183 = add i64 %8, %181
  %184 = getelementptr inbounds i64, i64* %132, i64 %183
  %185 = bitcast i64* %184 to <2 x i64>*
  %186 = load <2 x i64>, <2 x i64>* %185, align 8, !tbaa !22
  %187 = getelementptr inbounds i64, i64* %184, i64 2
  %188 = bitcast i64* %187 to <2 x i64>*
  %189 = load <2 x i64>, <2 x i64>* %188, align 8, !tbaa !22
  %190 = lshr <2 x i64> %186, %173
  %191 = lshr <2 x i64> %189, %175
  %192 = shufflevector <2 x i64> %182, <2 x i64> %190, <2 x i32> <i32 1, i32 2>
  %193 = shufflevector <2 x i64> %190, <2 x i64> %191, <2 x i32> <i32 1, i32 2>
  %194 = shl <2 x i64> %186, %177
  %195 = shl <2 x i64> %189, %179
  %196 = or <2 x i64> %194, %192
  %197 = or <2 x i64> %195, %193
  %198 = bitcast i64* %184 to <2 x i64>*
  store <2 x i64> %196, <2 x i64>* %198, align 8, !tbaa !22
  %199 = bitcast i64* %187 to <2 x i64>*
  store <2 x i64> %197, <2 x i64>* %199, align 8, !tbaa !22
  %200 = add nuw i64 %181, 4
  %201 = icmp eq i64 %200, %170
  br i1 %201, label %202, label %180, !llvm.loop !25

202:                                              ; preds = %180
  %203 = icmp eq i64 %161, %170
  %204 = extractelement <2 x i64> %191, i64 1
  %205 = extractelement <2 x i64> %191, i64 1
  br i1 %203, label %219, label %206

206:                                              ; preds = %167, %202
  %207 = phi i64 [ %204, %202 ], [ 0, %167 ]
  %208 = phi i64 [ %171, %202 ], [ %8, %167 ]
  br label %209

209:                                              ; preds = %206, %209
  %210 = phi i64 [ %214, %209 ], [ %207, %206 ]
  %211 = phi i64 [ %217, %209 ], [ %208, %206 ]
  %212 = getelementptr inbounds i64, i64* %132, i64 %211
  %213 = load i64, i64* %212, align 8, !tbaa !22
  %214 = lshr i64 %213, %10
  %215 = shl i64 %213, %9
  %216 = or i64 %215, %210
  store i64 %216, i64* %212, align 8, !tbaa !22
  %217 = add nuw i64 %211, 1
  %218 = icmp eq i64 %217, %162
  br i1 %218, label %219, label %209, !llvm.loop !27

219:                                              ; preds = %209, %202
  %220 = phi i64 [ %205, %202 ], [ %214, %209 ]
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = add i64 %162, 1
  store i64 %223, i64* %163, align 8, !tbaa !19
  %224 = getelementptr inbounds i64, i64* %132, i64 %162
  store i64 %220, i64* %224, align 8, !tbaa !22
  br label %225

225:                                              ; preds = %219, %222, %160
  %226 = load i32, i32* %4, align 8, !tbaa !10
  br label %227

227:                                              ; preds = %3, %225
  %228 = phi i32 [ %226, %225 ], [ 0, %3 ]
  %229 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 %228, i32* %229, align 8, !tbaa !10
  ret void
}

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind ssp uwtable
define internal fastcc void @libzahl_memcpy(i64* noalias noundef writeonly %0, i64* noalias noundef readonly %1, i64 noundef %2) unnamed_addr #2 {
  switch i64 %2, label %82 [
    i64 20, label %4
    i64 19, label %8
    i64 18, label %12
    i64 17, label %16
    i64 16, label %20
    i64 15, label %24
    i64 14, label %28
    i64 13, label %32
    i64 12, label %36
    i64 11, label %40
    i64 10, label %44
    i64 9, label %48
    i64 8, label %52
    i64 7, label %56
    i64 6, label %60
    i64 5, label %64
    i64 4, label %68
    i64 3, label %72
    i64 2, label %76
    i64 1, label %80
    i64 0, label %97
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds i64, i64* %1, i64 19
  %6 = load i64, i64* %5, align 8, !tbaa !22
  %7 = getelementptr inbounds i64, i64* %0, i64 19
  store i64 %6, i64* %7, align 8, !tbaa !22
  br label %8

8:                                                ; preds = %3, %4
  %9 = getelementptr inbounds i64, i64* %1, i64 18
  %10 = load i64, i64* %9, align 8, !tbaa !22
  %11 = getelementptr inbounds i64, i64* %0, i64 18
  store i64 %10, i64* %11, align 8, !tbaa !22
  br label %12

12:                                               ; preds = %3, %8
  %13 = getelementptr inbounds i64, i64* %1, i64 17
  %14 = load i64, i64* %13, align 8, !tbaa !22
  %15 = getelementptr inbounds i64, i64* %0, i64 17
  store i64 %14, i64* %15, align 8, !tbaa !22
  br label %16

16:                                               ; preds = %3, %12
  %17 = getelementptr inbounds i64, i64* %1, i64 16
  %18 = load i64, i64* %17, align 8, !tbaa !22
  %19 = getelementptr inbounds i64, i64* %0, i64 16
  store i64 %18, i64* %19, align 8, !tbaa !22
  br label %20

20:                                               ; preds = %3, %16
  %21 = getelementptr inbounds i64, i64* %1, i64 15
  %22 = load i64, i64* %21, align 8, !tbaa !22
  %23 = getelementptr inbounds i64, i64* %0, i64 15
  store i64 %22, i64* %23, align 8, !tbaa !22
  br label %24

24:                                               ; preds = %3, %20
  %25 = getelementptr inbounds i64, i64* %1, i64 14
  %26 = load i64, i64* %25, align 8, !tbaa !22
  %27 = getelementptr inbounds i64, i64* %0, i64 14
  store i64 %26, i64* %27, align 8, !tbaa !22
  br label %28

28:                                               ; preds = %3, %24
  %29 = getelementptr inbounds i64, i64* %1, i64 13
  %30 = load i64, i64* %29, align 8, !tbaa !22
  %31 = getelementptr inbounds i64, i64* %0, i64 13
  store i64 %30, i64* %31, align 8, !tbaa !22
  br label %32

32:                                               ; preds = %3, %28
  %33 = getelementptr inbounds i64, i64* %1, i64 12
  %34 = load i64, i64* %33, align 8, !tbaa !22
  %35 = getelementptr inbounds i64, i64* %0, i64 12
  store i64 %34, i64* %35, align 8, !tbaa !22
  br label %36

36:                                               ; preds = %3, %32
  %37 = getelementptr inbounds i64, i64* %1, i64 11
  %38 = load i64, i64* %37, align 8, !tbaa !22
  %39 = getelementptr inbounds i64, i64* %0, i64 11
  store i64 %38, i64* %39, align 8, !tbaa !22
  br label %40

40:                                               ; preds = %3, %36
  %41 = getelementptr inbounds i64, i64* %1, i64 10
  %42 = load i64, i64* %41, align 8, !tbaa !22
  %43 = getelementptr inbounds i64, i64* %0, i64 10
  store i64 %42, i64* %43, align 8, !tbaa !22
  br label %44

44:                                               ; preds = %3, %40
  %45 = getelementptr inbounds i64, i64* %1, i64 9
  %46 = load i64, i64* %45, align 8, !tbaa !22
  %47 = getelementptr inbounds i64, i64* %0, i64 9
  store i64 %46, i64* %47, align 8, !tbaa !22
  br label %48

48:                                               ; preds = %3, %44
  %49 = getelementptr inbounds i64, i64* %1, i64 8
  %50 = load i64, i64* %49, align 8, !tbaa !22
  %51 = getelementptr inbounds i64, i64* %0, i64 8
  store i64 %50, i64* %51, align 8, !tbaa !22
  br label %52

52:                                               ; preds = %3, %48
  %53 = getelementptr inbounds i64, i64* %1, i64 7
  %54 = load i64, i64* %53, align 8, !tbaa !22
  %55 = getelementptr inbounds i64, i64* %0, i64 7
  store i64 %54, i64* %55, align 8, !tbaa !22
  br label %56

56:                                               ; preds = %3, %52
  %57 = getelementptr inbounds i64, i64* %1, i64 6
  %58 = load i64, i64* %57, align 8, !tbaa !22
  %59 = getelementptr inbounds i64, i64* %0, i64 6
  store i64 %58, i64* %59, align 8, !tbaa !22
  br label %60

60:                                               ; preds = %3, %56
  %61 = getelementptr inbounds i64, i64* %1, i64 5
  %62 = load i64, i64* %61, align 8, !tbaa !22
  %63 = getelementptr inbounds i64, i64* %0, i64 5
  store i64 %62, i64* %63, align 8, !tbaa !22
  br label %64

64:                                               ; preds = %3, %60
  %65 = getelementptr inbounds i64, i64* %1, i64 4
  %66 = load i64, i64* %65, align 8, !tbaa !22
  %67 = getelementptr inbounds i64, i64* %0, i64 4
  store i64 %66, i64* %67, align 8, !tbaa !22
  br label %68

68:                                               ; preds = %3, %64
  %69 = getelementptr inbounds i64, i64* %1, i64 3
  %70 = load i64, i64* %69, align 8, !tbaa !22
  %71 = getelementptr inbounds i64, i64* %0, i64 3
  store i64 %70, i64* %71, align 8, !tbaa !22
  br label %72

72:                                               ; preds = %3, %68
  %73 = getelementptr inbounds i64, i64* %1, i64 2
  %74 = load i64, i64* %73, align 8, !tbaa !22
  %75 = getelementptr inbounds i64, i64* %0, i64 2
  store i64 %74, i64* %75, align 8, !tbaa !22
  br label %76

76:                                               ; preds = %3, %72
  %77 = getelementptr inbounds i64, i64* %1, i64 1
  %78 = load i64, i64* %77, align 8, !tbaa !22
  %79 = getelementptr inbounds i64, i64* %0, i64 1
  store i64 %78, i64* %79, align 8, !tbaa !22
  br label %80

80:                                               ; preds = %3, %76
  %81 = load i64, i64* %1, align 8, !tbaa !22
  store i64 %81, i64* %0, align 8, !tbaa !22
  br label %97

82:                                               ; preds = %3, %82
  %83 = phi i64 [ %95, %82 ], [ 0, %3 ]
  %84 = getelementptr inbounds i64, i64* %1, i64 %83
  %85 = getelementptr inbounds i64, i64* %0, i64 %83
  %86 = bitcast i64* %84 to <2 x i64>*
  %87 = load <2 x i64>, <2 x i64>* %86, align 8, !tbaa !22
  %88 = bitcast i64* %85 to <2 x i64>*
  store <2 x i64> %87, <2 x i64>* %88, align 8, !tbaa !22
  %89 = or i64 %83, 2
  %90 = getelementptr inbounds i64, i64* %1, i64 %89
  %91 = getelementptr inbounds i64, i64* %0, i64 %89
  %92 = bitcast i64* %90 to <2 x i64>*
  %93 = load <2 x i64>, <2 x i64>* %92, align 8, !tbaa !22
  %94 = bitcast i64* %91 to <2 x i64>*
  store <2 x i64> %93, <2 x i64>* %94, align 8, !tbaa !22
  %95 = add i64 %83, 4
  %96 = icmp ult i64 %95, %2
  br i1 %96, label %82, label %97

97:                                               ; preds = %82, %80, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { inlinehint nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
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
!18 = !{!11, !15, i64 16}
!19 = !{!11, !15, i64 8}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!11, !16, i64 24}
!22 = !{!23, !23, i64 0}
!23 = !{!"long long", !13, i64 0}
!24 = !{!"branch_weights", i32 2000, i32 2002}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = distinct !{!27, !28, !26}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
