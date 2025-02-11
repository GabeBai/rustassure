; ModuleID = 'src/zsets.c'
source_filename = "src/zsets.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_str_num = external global [1 x %struct.zahl], align 8
@libzahl_const_1e19 = external global [1 x %struct.zahl], align 8

; Function Attrs: nounwind ssp uwtable
define i32 @zsets(%struct.zahl* noundef %0, i8* noundef %1) local_unnamed_addr #0 {
  %3 = load i8, i8* %1, align 1, !tbaa !10
  %4 = icmp eq i8 %3, 45
  %5 = icmp eq i8 %3, 43
  %6 = or i1 %4, %5
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds i8, i8* %1, i64 %7
  %9 = load i8, i8* %8, align 1, !tbaa !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13, !prof !13

11:                                               ; preds = %2
  %12 = tail call i32* @__error() #3
  store i32 22, i32* %12, align 4, !tbaa !14
  br label %323

13:                                               ; preds = %2, %21
  %14 = phi i8* [ %22, %21 ], [ %8, %2 ]
  %15 = phi i8 [ %23, %21 ], [ %9, %2 ]
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %16, -58
  %18 = icmp ult i32 %17, -10
  br i1 %18, label %19, label %21, !prof !13

19:                                               ; preds = %13
  %20 = tail call i32* @__error() #3
  store i32 22, i32* %20, align 4, !tbaa !14
  br label %323

21:                                               ; preds = %13
  %22 = getelementptr inbounds i8, i8* %14, i64 1
  %23 = load i8, i8* %22, align 1, !tbaa !10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %13

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  store i32 0, i32* %26, align 8, !tbaa !16
  %27 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 0), align 8, !tbaa !16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !13

29:                                               ; preds = %25
  store i32 0, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 0), align 8, !tbaa !16
  br label %133

30:                                               ; preds = %25
  store i32 %27, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 0), align 8, !tbaa !16
  %31 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 2), align 8, !tbaa !20
  store i64 %31, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 2), align 8, !tbaa !20
  %32 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 3), align 8, !tbaa !21
  %33 = icmp ult i64 %32, %31
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  tail call void @libzahl_realloc(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), i64 noundef %31) #3
  %35 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 2), align 8, !tbaa !20
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i64 [ %31, %30 ], [ %35, %34 ]
  %38 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 4), align 8, !tbaa !22
  %39 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 4), align 8, !tbaa !22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23) #3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26) #3
  switch i64 %37, label %118 [
    i64 20, label %40
    i64 19, label %44
    i64 18, label %48
    i64 17, label %52
    i64 16, label %56
    i64 15, label %60
    i64 14, label %64
    i64 13, label %68
    i64 12, label %72
    i64 11, label %76
    i64 10, label %80
    i64 9, label %84
    i64 8, label %88
    i64 7, label %92
    i64 6, label %96
    i64 5, label %100
    i64 4, label %104
    i64 3, label %108
    i64 2, label %112
    i64 1, label %116
    i64 0, label %133
  ]

40:                                               ; preds = %36
  %41 = getelementptr inbounds i64, i64* %39, i64 19
  %42 = load i64, i64* %41, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %43 = getelementptr inbounds i64, i64* %38, i64 19
  store i64 %42, i64* %43, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds i64, i64* %39, i64 18
  %46 = load i64, i64* %45, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %47 = getelementptr inbounds i64, i64* %38, i64 18
  store i64 %46, i64* %47, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %48

48:                                               ; preds = %44, %36
  %49 = getelementptr inbounds i64, i64* %39, i64 17
  %50 = load i64, i64* %49, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %51 = getelementptr inbounds i64, i64* %38, i64 17
  store i64 %50, i64* %51, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %52

52:                                               ; preds = %48, %36
  %53 = getelementptr inbounds i64, i64* %39, i64 16
  %54 = load i64, i64* %53, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %55 = getelementptr inbounds i64, i64* %38, i64 16
  store i64 %54, i64* %55, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %56

56:                                               ; preds = %52, %36
  %57 = getelementptr inbounds i64, i64* %39, i64 15
  %58 = load i64, i64* %57, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %59 = getelementptr inbounds i64, i64* %38, i64 15
  store i64 %58, i64* %59, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %60

60:                                               ; preds = %56, %36
  %61 = getelementptr inbounds i64, i64* %39, i64 14
  %62 = load i64, i64* %61, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %63 = getelementptr inbounds i64, i64* %38, i64 14
  store i64 %62, i64* %63, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %64

64:                                               ; preds = %60, %36
  %65 = getelementptr inbounds i64, i64* %39, i64 13
  %66 = load i64, i64* %65, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %67 = getelementptr inbounds i64, i64* %38, i64 13
  store i64 %66, i64* %67, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %68

68:                                               ; preds = %64, %36
  %69 = getelementptr inbounds i64, i64* %39, i64 12
  %70 = load i64, i64* %69, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %71 = getelementptr inbounds i64, i64* %38, i64 12
  store i64 %70, i64* %71, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %72

72:                                               ; preds = %68, %36
  %73 = getelementptr inbounds i64, i64* %39, i64 11
  %74 = load i64, i64* %73, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %75 = getelementptr inbounds i64, i64* %38, i64 11
  store i64 %74, i64* %75, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %76

76:                                               ; preds = %72, %36
  %77 = getelementptr inbounds i64, i64* %39, i64 10
  %78 = load i64, i64* %77, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %79 = getelementptr inbounds i64, i64* %38, i64 10
  store i64 %78, i64* %79, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %80

80:                                               ; preds = %76, %36
  %81 = getelementptr inbounds i64, i64* %39, i64 9
  %82 = load i64, i64* %81, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %83 = getelementptr inbounds i64, i64* %38, i64 9
  store i64 %82, i64* %83, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %84

84:                                               ; preds = %80, %36
  %85 = getelementptr inbounds i64, i64* %39, i64 8
  %86 = load i64, i64* %85, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %87 = getelementptr inbounds i64, i64* %38, i64 8
  store i64 %86, i64* %87, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %88

88:                                               ; preds = %84, %36
  %89 = getelementptr inbounds i64, i64* %39, i64 7
  %90 = load i64, i64* %89, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %91 = getelementptr inbounds i64, i64* %38, i64 7
  store i64 %90, i64* %91, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %92

92:                                               ; preds = %88, %36
  %93 = getelementptr inbounds i64, i64* %39, i64 6
  %94 = load i64, i64* %93, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %95 = getelementptr inbounds i64, i64* %38, i64 6
  store i64 %94, i64* %95, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %96

96:                                               ; preds = %92, %36
  %97 = getelementptr inbounds i64, i64* %39, i64 5
  %98 = load i64, i64* %97, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %99 = getelementptr inbounds i64, i64* %38, i64 5
  store i64 %98, i64* %99, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %100

100:                                              ; preds = %96, %36
  %101 = getelementptr inbounds i64, i64* %39, i64 4
  %102 = load i64, i64* %101, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %103 = getelementptr inbounds i64, i64* %38, i64 4
  store i64 %102, i64* %103, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %104

104:                                              ; preds = %100, %36
  %105 = getelementptr inbounds i64, i64* %39, i64 3
  %106 = load i64, i64* %105, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %107 = getelementptr inbounds i64, i64* %38, i64 3
  store i64 %106, i64* %107, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %108

108:                                              ; preds = %104, %36
  %109 = getelementptr inbounds i64, i64* %39, i64 2
  %110 = load i64, i64* %109, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %111 = getelementptr inbounds i64, i64* %38, i64 2
  store i64 %110, i64* %111, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %112

112:                                              ; preds = %108, %36
  %113 = getelementptr inbounds i64, i64* %39, i64 1
  %114 = load i64, i64* %113, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %115 = getelementptr inbounds i64, i64* %38, i64 1
  store i64 %114, i64* %115, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %116

116:                                              ; preds = %112, %36
  %117 = load i64, i64* %39, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  store i64 %117, i64* %38, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %133

118:                                              ; preds = %36, %118
  %119 = phi i64 [ %131, %118 ], [ 0, %36 ]
  %120 = getelementptr inbounds i64, i64* %39, i64 %119
  %121 = getelementptr inbounds i64, i64* %38, i64 %119
  %122 = bitcast i64* %120 to <2 x i64>*
  %123 = load <2 x i64>, <2 x i64>* %122, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %124 = bitcast i64* %121 to <2 x i64>*
  store <2 x i64> %123, <2 x i64>* %124, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  %125 = or i64 %119, 2
  %126 = getelementptr inbounds i64, i64* %39, i64 %125
  %127 = getelementptr inbounds i64, i64* %38, i64 %125
  %128 = bitcast i64* %126 to <2 x i64>*
  %129 = load <2 x i64>, <2 x i64>* %128, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %130 = bitcast i64* %127 to <2 x i64>*
  store <2 x i64> %129, <2 x i64>* %130, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  %131 = add i64 %119, 4
  %132 = icmp ult i64 %131, %37
  br i1 %132, label %118, label %133

133:                                              ; preds = %118, %29, %36, %116
  %134 = ptrtoint i8* %22 to i64
  %135 = ptrtoint i8* %8 to i64
  %136 = sub i64 %134, %135
  %137 = srem i64 %136, 19
  switch i64 %137, label %319 [
    i64 0, label %148
    i64 18, label %154
    i64 17, label %163
    i64 16, label %172
    i64 15, label %181
    i64 14, label %190
    i64 13, label %199
    i64 12, label %208
    i64 11, label %217
    i64 10, label %226
    i64 9, label %235
    i64 8, label %244
    i64 7, label %253
    i64 6, label %262
    i64 5, label %271
    i64 4, label %280
    i64 3, label %289
    i64 2, label %298
    i64 1, label %307
  ]

138:                                              ; preds = %307, %317
  %139 = load i8, i8* %311, align 1, !tbaa !10
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %319, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %26, align 8, !tbaa !16
  %143 = mul nsw i32 %142, %142
  store i32 %143, i32* %26, align 8, !tbaa !16
  %144 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 0), align 8, !tbaa !16
  %145 = mul nsw i32 %144, %144
  store i32 %145, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 0), align 8, !tbaa !16
  tail call void @zmul_ll(%struct.zahl* noundef %0, %struct.zahl* noundef %0, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0)) #3
  store i32 %144, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 0), align 8, !tbaa !16
  store i32 %142, i32* %26, align 8, !tbaa !16
  %146 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0, i32 0), align 8, !tbaa !16
  %147 = mul nsw i32 %146, %142
  store i32 %147, i32* %26, align 8, !tbaa !16
  br label %148

148:                                              ; preds = %133, %141
  %149 = phi i8* [ %311, %141 ], [ %8, %133 ]
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %149, align 1, !tbaa !10
  %152 = and i8 %151, 15
  %153 = zext i8 %152 to i64
  br label %154

154:                                              ; preds = %133, %148
  %155 = phi i8* [ %150, %148 ], [ %8, %133 ]
  %156 = phi i64 [ %153, %148 ], [ 0, %133 ]
  %157 = mul nuw nsw i64 %156, 10
  %158 = getelementptr inbounds i8, i8* %155, i64 1
  %159 = load i8, i8* %155, align 1, !tbaa !10
  %160 = and i8 %159, 15
  %161 = zext i8 %160 to i64
  %162 = add nuw nsw i64 %157, %161
  br label %163

163:                                              ; preds = %133, %154
  %164 = phi i8* [ %158, %154 ], [ %8, %133 ]
  %165 = phi i64 [ %162, %154 ], [ 0, %133 ]
  %166 = mul nuw nsw i64 %165, 10
  %167 = getelementptr inbounds i8, i8* %164, i64 1
  %168 = load i8, i8* %164, align 1, !tbaa !10
  %169 = and i8 %168, 15
  %170 = zext i8 %169 to i64
  %171 = add nuw nsw i64 %166, %170
  br label %172

172:                                              ; preds = %133, %163
  %173 = phi i8* [ %167, %163 ], [ %8, %133 ]
  %174 = phi i64 [ %171, %163 ], [ 0, %133 ]
  %175 = mul nuw nsw i64 %174, 10
  %176 = getelementptr inbounds i8, i8* %173, i64 1
  %177 = load i8, i8* %173, align 1, !tbaa !10
  %178 = and i8 %177, 15
  %179 = zext i8 %178 to i64
  %180 = add nuw nsw i64 %175, %179
  br label %181

181:                                              ; preds = %133, %172
  %182 = phi i8* [ %176, %172 ], [ %8, %133 ]
  %183 = phi i64 [ %180, %172 ], [ 0, %133 ]
  %184 = mul nuw nsw i64 %183, 10
  %185 = getelementptr inbounds i8, i8* %182, i64 1
  %186 = load i8, i8* %182, align 1, !tbaa !10
  %187 = and i8 %186, 15
  %188 = zext i8 %187 to i64
  %189 = add nuw nsw i64 %184, %188
  br label %190

190:                                              ; preds = %133, %181
  %191 = phi i8* [ %185, %181 ], [ %8, %133 ]
  %192 = phi i64 [ %189, %181 ], [ 0, %133 ]
  %193 = mul nuw nsw i64 %192, 10
  %194 = getelementptr inbounds i8, i8* %191, i64 1
  %195 = load i8, i8* %191, align 1, !tbaa !10
  %196 = and i8 %195, 15
  %197 = zext i8 %196 to i64
  %198 = add nuw nsw i64 %193, %197
  br label %199

199:                                              ; preds = %133, %190
  %200 = phi i8* [ %194, %190 ], [ %8, %133 ]
  %201 = phi i64 [ %198, %190 ], [ 0, %133 ]
  %202 = mul nuw nsw i64 %201, 10
  %203 = getelementptr inbounds i8, i8* %200, i64 1
  %204 = load i8, i8* %200, align 1, !tbaa !10
  %205 = and i8 %204, 15
  %206 = zext i8 %205 to i64
  %207 = add nuw nsw i64 %202, %206
  br label %208

208:                                              ; preds = %133, %199
  %209 = phi i8* [ %203, %199 ], [ %8, %133 ]
  %210 = phi i64 [ %207, %199 ], [ 0, %133 ]
  %211 = mul nuw nsw i64 %210, 10
  %212 = getelementptr inbounds i8, i8* %209, i64 1
  %213 = load i8, i8* %209, align 1, !tbaa !10
  %214 = and i8 %213, 15
  %215 = zext i8 %214 to i64
  %216 = add nuw nsw i64 %211, %215
  br label %217

217:                                              ; preds = %133, %208
  %218 = phi i8* [ %212, %208 ], [ %8, %133 ]
  %219 = phi i64 [ %216, %208 ], [ 0, %133 ]
  %220 = mul nuw nsw i64 %219, 10
  %221 = getelementptr inbounds i8, i8* %218, i64 1
  %222 = load i8, i8* %218, align 1, !tbaa !10
  %223 = and i8 %222, 15
  %224 = zext i8 %223 to i64
  %225 = add nuw nsw i64 %220, %224
  br label %226

226:                                              ; preds = %133, %217
  %227 = phi i8* [ %221, %217 ], [ %8, %133 ]
  %228 = phi i64 [ %225, %217 ], [ 0, %133 ]
  %229 = mul nuw nsw i64 %228, 10
  %230 = getelementptr inbounds i8, i8* %227, i64 1
  %231 = load i8, i8* %227, align 1, !tbaa !10
  %232 = and i8 %231, 15
  %233 = zext i8 %232 to i64
  %234 = add nuw nsw i64 %229, %233
  br label %235

235:                                              ; preds = %133, %226
  %236 = phi i8* [ %230, %226 ], [ %8, %133 ]
  %237 = phi i64 [ %234, %226 ], [ 0, %133 ]
  %238 = mul nuw nsw i64 %237, 10
  %239 = getelementptr inbounds i8, i8* %236, i64 1
  %240 = load i8, i8* %236, align 1, !tbaa !10
  %241 = and i8 %240, 15
  %242 = zext i8 %241 to i64
  %243 = add nuw nsw i64 %238, %242
  br label %244

244:                                              ; preds = %133, %235
  %245 = phi i8* [ %239, %235 ], [ %8, %133 ]
  %246 = phi i64 [ %243, %235 ], [ 0, %133 ]
  %247 = mul nuw nsw i64 %246, 10
  %248 = getelementptr inbounds i8, i8* %245, i64 1
  %249 = load i8, i8* %245, align 1, !tbaa !10
  %250 = and i8 %249, 15
  %251 = zext i8 %250 to i64
  %252 = add nuw nsw i64 %247, %251
  br label %253

253:                                              ; preds = %133, %244
  %254 = phi i8* [ %248, %244 ], [ %8, %133 ]
  %255 = phi i64 [ %252, %244 ], [ 0, %133 ]
  %256 = mul nuw nsw i64 %255, 10
  %257 = getelementptr inbounds i8, i8* %254, i64 1
  %258 = load i8, i8* %254, align 1, !tbaa !10
  %259 = and i8 %258, 15
  %260 = zext i8 %259 to i64
  %261 = add nuw nsw i64 %256, %260
  br label %262

262:                                              ; preds = %133, %253
  %263 = phi i8* [ %257, %253 ], [ %8, %133 ]
  %264 = phi i64 [ %261, %253 ], [ 0, %133 ]
  %265 = mul nuw nsw i64 %264, 10
  %266 = getelementptr inbounds i8, i8* %263, i64 1
  %267 = load i8, i8* %263, align 1, !tbaa !10
  %268 = and i8 %267, 15
  %269 = zext i8 %268 to i64
  %270 = add nuw nsw i64 %265, %269
  br label %271

271:                                              ; preds = %133, %262
  %272 = phi i8* [ %266, %262 ], [ %8, %133 ]
  %273 = phi i64 [ %270, %262 ], [ 0, %133 ]
  %274 = mul nuw nsw i64 %273, 10
  %275 = getelementptr inbounds i8, i8* %272, i64 1
  %276 = load i8, i8* %272, align 1, !tbaa !10
  %277 = and i8 %276, 15
  %278 = zext i8 %277 to i64
  %279 = add nuw nsw i64 %274, %278
  br label %280

280:                                              ; preds = %133, %271
  %281 = phi i8* [ %275, %271 ], [ %8, %133 ]
  %282 = phi i64 [ %279, %271 ], [ 0, %133 ]
  %283 = mul nuw nsw i64 %282, 10
  %284 = getelementptr inbounds i8, i8* %281, i64 1
  %285 = load i8, i8* %281, align 1, !tbaa !10
  %286 = and i8 %285, 15
  %287 = zext i8 %286 to i64
  %288 = add nuw nsw i64 %283, %287
  br label %289

289:                                              ; preds = %133, %280
  %290 = phi i8* [ %284, %280 ], [ %8, %133 ]
  %291 = phi i64 [ %288, %280 ], [ 0, %133 ]
  %292 = mul nuw nsw i64 %291, 10
  %293 = getelementptr inbounds i8, i8* %290, i64 1
  %294 = load i8, i8* %290, align 1, !tbaa !10
  %295 = and i8 %294, 15
  %296 = zext i8 %295 to i64
  %297 = add nuw nsw i64 %292, %296
  br label %298

298:                                              ; preds = %133, %289
  %299 = phi i8* [ %293, %289 ], [ %8, %133 ]
  %300 = phi i64 [ %297, %289 ], [ 0, %133 ]
  %301 = mul nuw nsw i64 %300, 10
  %302 = getelementptr inbounds i8, i8* %299, i64 1
  %303 = load i8, i8* %299, align 1, !tbaa !10
  %304 = and i8 %303, 15
  %305 = zext i8 %304 to i64
  %306 = add nuw nsw i64 %301, %305
  br label %307

307:                                              ; preds = %133, %298
  %308 = phi i8* [ %8, %133 ], [ %302, %298 ]
  %309 = phi i64 [ 0, %133 ], [ %306, %298 ]
  %310 = mul nuw i64 %309, 10
  %311 = getelementptr inbounds i8, i8* %308, i64 1
  %312 = load i8, i8* %308, align 1, !tbaa !10
  %313 = and i8 %312, 15
  %314 = zext i8 %313 to i64
  %315 = add nuw i64 %310, %314
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %138, label %317

317:                                              ; preds = %307
  %318 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 4), align 8, !tbaa !22
  store i64 %315, i64* %318, align 8, !tbaa !28
  tail call void @zadd(%struct.zahl* noundef %0, %struct.zahl* noundef %0, %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0)) #3
  br label %138

319:                                              ; preds = %138, %133
  br i1 %4, label %320, label %323, !prof !13

320:                                              ; preds = %319
  %321 = load i32, i32* %26, align 8, !tbaa !16
  %322 = sub nsw i32 0, %321
  store i32 %322, i32* %26, align 8, !tbaa !16
  br label %323

323:                                              ; preds = %319, %320, %19, %11
  %324 = phi i32 [ -1, %11 ], [ -1, %19 ], [ 0, %320 ], [ 0, %319 ]
  ret i32 %324
}

declare i32* @__error() local_unnamed_addr #1

declare void @zadd(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #1

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #1

declare void @zmul_ll(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !11, i64 0}
!16 = !{!17, !15, i64 0}
!17 = !{!"zahl", !15, i64 0, !15, i64 4, !18, i64 8, !18, i64 16, !19, i64 24}
!18 = !{!"long", !11, i64 0}
!19 = !{!"any pointer", !11, i64 0}
!20 = !{!17, !18, i64 8}
!21 = !{!17, !18, i64 16}
!22 = !{!17, !19, i64 24}
!23 = !{!24}
!24 = distinct !{!24, !25, !"libzahl_memcpy: argument 0"}
!25 = distinct !{!25, !"libzahl_memcpy"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"libzahl_memcpy: argument 1"}
!28 = !{!29, !29, i64 0}
!29 = !{!"long long", !11, i64 0}
