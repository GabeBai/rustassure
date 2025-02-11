; ModuleID = 'src/zstr_length.c'
source_filename = "src/zstr_length.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_tmp_str_num = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_mag = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_div = external global [1 x %struct.zahl], align 8
@libzahl_error = external local_unnamed_addr global i32, align 4
@libzahl_temp_stack = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_stack_head = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_allocation = external local_unnamed_addr global i8*, align 8
@libzahl_jmp_buf = external global [48 x i32], align 4
@libzahl_tmp_div = external global [1 x %struct.zahl], align 8

; Function Attrs: nounwind ssp uwtable
define i64 @zstr_length(%struct.zahl* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %2
  tail call fastcc void @libzahl_failure()
  unreachable

5:                                                ; preds = %2
  tail call fastcc void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef %0)
  %6 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 0), align 8, !tbaa !11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %194, label %8

8:                                                ; preds = %5, %189
  %9 = phi i64 [ %191, %189 ], [ 1, %5 ]
  %10 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 3), align 8, !tbaa !18
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @libzahl_realloc(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0), i64 noundef 1) #7
  br label %13

13:                                               ; preds = %12, %8
  store i32 1, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 0), align 8, !tbaa !11
  %14 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 4), align 8, !tbaa !19
  store i64 %1, i64* %14, align 8, !tbaa !20
  store i64 1, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 2), align 8, !tbaa !22
  tail call fastcc void @zset(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0))
  %15 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 0), align 8, !tbaa !11
  br label %16

16:                                               ; preds = %186, %13
  %17 = phi i32 [ %187, %186 ], [ %15, %13 ]
  %18 = phi i64 [ %188, %186 ], [ 1, %13 ]
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %78, label %20, !prof !10

20:                                               ; preds = %16
  %21 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 0), align 8, !tbaa !11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %189, label %23, !prof !10

23:                                               ; preds = %20
  %24 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 2), align 8, !tbaa !22
  %25 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 2), align 8, !tbaa !22
  %26 = add i64 %25, -1
  %27 = add i64 %24, -1
  %28 = icmp ugt i64 %27, %26
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 4), align 8, !tbaa !19
  br label %35

31:                                               ; preds = %23
  %32 = icmp ugt i64 %26, %27
  br i1 %32, label %33, label %45

33:                                               ; preds = %31
  %34 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 4), align 8, !tbaa !19
  br label %51

35:                                               ; preds = %41, %29
  %36 = phi i64 [ %27, %29 ], [ %43, %41 ]
  %37 = phi i64 [ %24, %29 ], [ %42, %41 ]
  %38 = getelementptr inbounds i64, i64* %30, i64 %36
  %39 = load i64, i64* %38, align 8, !tbaa !20
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %189

41:                                               ; preds = %35
  %42 = add i64 %37, -1
  store i64 %42, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 2), align 8, !tbaa !22
  %43 = add i64 %36, -1
  %44 = icmp ugt i64 %43, %26
  br i1 %44, label %35, label %45

45:                                               ; preds = %57, %41, %31
  %46 = phi i64 [ %24, %31 ], [ %42, %41 ], [ %24, %57 ]
  %47 = phi i64 [ %27, %31 ], [ %26, %41 ], [ %27, %57 ]
  %48 = icmp eq i64 %47, 0
  %49 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 4), align 8, !tbaa !19
  %50 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 4), align 8, !tbaa !19
  br i1 %48, label %71, label %61

51:                                               ; preds = %57, %33
  %52 = phi i64 [ %26, %33 ], [ %59, %57 ]
  %53 = phi i64 [ %25, %33 ], [ %58, %57 ]
  %54 = getelementptr inbounds i64, i64* %34, i64 %52
  %55 = load i64, i64* %54, align 8, !tbaa !20
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %51
  %58 = add i64 %53, -1
  store i64 %58, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 2), align 8, !tbaa !22
  %59 = add i64 %52, -1
  %60 = icmp ugt i64 %59, %27
  br i1 %60, label %51, label %45

61:                                               ; preds = %45, %68
  %62 = phi i64 [ %69, %68 ], [ %47, %45 ]
  %63 = getelementptr inbounds i64, i64* %49, i64 %62
  %64 = load i64, i64* %63, align 8, !tbaa !20
  %65 = getelementptr inbounds i64, i64* %50, i64 %62
  %66 = load i64, i64* %65, align 8, !tbaa !20
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = add i64 %62, -1
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %61

71:                                               ; preds = %68, %61, %45
  %72 = phi i64 [ 0, %45 ], [ %62, %61 ], [ 0, %68 ]
  %73 = getelementptr inbounds i64, i64* %49, i64 %72
  %74 = load i64, i64* %73, align 8, !tbaa !20
  %75 = getelementptr inbounds i64, i64* %50, i64 %72
  %76 = load i64, i64* %75, align 8, !tbaa !20
  %77 = icmp ugt i64 %74, %76
  br i1 %77, label %189, label %79

78:                                               ; preds = %16
  store i32 0, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0, i32 0), align 8, !tbaa !11
  br label %182

79:                                               ; preds = %51, %71
  %80 = phi i64 [ %46, %71 ], [ %24, %51 ]
  store i32 %17, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0, i32 0), align 8, !tbaa !11
  store i64 %80, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0, i32 2), align 8, !tbaa !22
  %81 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0, i32 3), align 8, !tbaa !18
  %82 = icmp ult i64 %81, %80
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0), i64 noundef %80) #7
  %84 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 2), align 8, !tbaa !22
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi i64 [ %80, %79 ], [ %84, %83 ]
  %87 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0, i32 4), align 8, !tbaa !19
  %88 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 4), align 8, !tbaa !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23) #7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26) #7
  switch i64 %86, label %167 [
    i64 20, label %89
    i64 19, label %93
    i64 18, label %97
    i64 17, label %101
    i64 16, label %105
    i64 15, label %109
    i64 14, label %113
    i64 13, label %117
    i64 12, label %121
    i64 11, label %125
    i64 10, label %129
    i64 9, label %133
    i64 8, label %137
    i64 7, label %141
    i64 6, label %145
    i64 5, label %149
    i64 4, label %153
    i64 3, label %157
    i64 2, label %161
    i64 1, label %165
    i64 0, label %182
  ]

89:                                               ; preds = %85
  %90 = getelementptr inbounds i64, i64* %88, i64 19
  %91 = load i64, i64* %90, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %92 = getelementptr inbounds i64, i64* %87, i64 19
  store i64 %91, i64* %92, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %93

93:                                               ; preds = %89, %85
  %94 = getelementptr inbounds i64, i64* %88, i64 18
  %95 = load i64, i64* %94, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %96 = getelementptr inbounds i64, i64* %87, i64 18
  store i64 %95, i64* %96, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %97

97:                                               ; preds = %93, %85
  %98 = getelementptr inbounds i64, i64* %88, i64 17
  %99 = load i64, i64* %98, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %100 = getelementptr inbounds i64, i64* %87, i64 17
  store i64 %99, i64* %100, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %101

101:                                              ; preds = %97, %85
  %102 = getelementptr inbounds i64, i64* %88, i64 16
  %103 = load i64, i64* %102, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %104 = getelementptr inbounds i64, i64* %87, i64 16
  store i64 %103, i64* %104, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %105

105:                                              ; preds = %101, %85
  %106 = getelementptr inbounds i64, i64* %88, i64 15
  %107 = load i64, i64* %106, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %108 = getelementptr inbounds i64, i64* %87, i64 15
  store i64 %107, i64* %108, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %109

109:                                              ; preds = %105, %85
  %110 = getelementptr inbounds i64, i64* %88, i64 14
  %111 = load i64, i64* %110, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %112 = getelementptr inbounds i64, i64* %87, i64 14
  store i64 %111, i64* %112, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %113

113:                                              ; preds = %109, %85
  %114 = getelementptr inbounds i64, i64* %88, i64 13
  %115 = load i64, i64* %114, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %116 = getelementptr inbounds i64, i64* %87, i64 13
  store i64 %115, i64* %116, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %117

117:                                              ; preds = %113, %85
  %118 = getelementptr inbounds i64, i64* %88, i64 12
  %119 = load i64, i64* %118, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %120 = getelementptr inbounds i64, i64* %87, i64 12
  store i64 %119, i64* %120, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %121

121:                                              ; preds = %117, %85
  %122 = getelementptr inbounds i64, i64* %88, i64 11
  %123 = load i64, i64* %122, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %124 = getelementptr inbounds i64, i64* %87, i64 11
  store i64 %123, i64* %124, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %125

125:                                              ; preds = %121, %85
  %126 = getelementptr inbounds i64, i64* %88, i64 10
  %127 = load i64, i64* %126, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %128 = getelementptr inbounds i64, i64* %87, i64 10
  store i64 %127, i64* %128, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %129

129:                                              ; preds = %125, %85
  %130 = getelementptr inbounds i64, i64* %88, i64 9
  %131 = load i64, i64* %130, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %132 = getelementptr inbounds i64, i64* %87, i64 9
  store i64 %131, i64* %132, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %133

133:                                              ; preds = %129, %85
  %134 = getelementptr inbounds i64, i64* %88, i64 8
  %135 = load i64, i64* %134, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %136 = getelementptr inbounds i64, i64* %87, i64 8
  store i64 %135, i64* %136, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %137

137:                                              ; preds = %133, %85
  %138 = getelementptr inbounds i64, i64* %88, i64 7
  %139 = load i64, i64* %138, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %140 = getelementptr inbounds i64, i64* %87, i64 7
  store i64 %139, i64* %140, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %141

141:                                              ; preds = %137, %85
  %142 = getelementptr inbounds i64, i64* %88, i64 6
  %143 = load i64, i64* %142, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %144 = getelementptr inbounds i64, i64* %87, i64 6
  store i64 %143, i64* %144, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %145

145:                                              ; preds = %141, %85
  %146 = getelementptr inbounds i64, i64* %88, i64 5
  %147 = load i64, i64* %146, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %148 = getelementptr inbounds i64, i64* %87, i64 5
  store i64 %147, i64* %148, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %149

149:                                              ; preds = %145, %85
  %150 = getelementptr inbounds i64, i64* %88, i64 4
  %151 = load i64, i64* %150, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %152 = getelementptr inbounds i64, i64* %87, i64 4
  store i64 %151, i64* %152, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %153

153:                                              ; preds = %149, %85
  %154 = getelementptr inbounds i64, i64* %88, i64 3
  %155 = load i64, i64* %154, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %156 = getelementptr inbounds i64, i64* %87, i64 3
  store i64 %155, i64* %156, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %157

157:                                              ; preds = %153, %85
  %158 = getelementptr inbounds i64, i64* %88, i64 2
  %159 = load i64, i64* %158, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %160 = getelementptr inbounds i64, i64* %87, i64 2
  store i64 %159, i64* %160, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %161

161:                                              ; preds = %157, %85
  %162 = getelementptr inbounds i64, i64* %88, i64 1
  %163 = load i64, i64* %162, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %164 = getelementptr inbounds i64, i64* %87, i64 1
  store i64 %163, i64* %164, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %165

165:                                              ; preds = %161, %85
  %166 = load i64, i64* %88, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  store i64 %166, i64* %87, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  br label %182

167:                                              ; preds = %85, %167
  %168 = phi i64 [ %180, %167 ], [ 0, %85 ]
  %169 = getelementptr inbounds i64, i64* %88, i64 %168
  %170 = getelementptr inbounds i64, i64* %87, i64 %168
  %171 = bitcast i64* %169 to <2 x i64>*
  %172 = load <2 x i64>, <2 x i64>* %171, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %173 = bitcast i64* %170 to <2 x i64>*
  store <2 x i64> %172, <2 x i64>* %173, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  %174 = or i64 %168, 2
  %175 = getelementptr inbounds i64, i64* %88, i64 %174
  %176 = getelementptr inbounds i64, i64* %87, i64 %174
  %177 = bitcast i64* %175 to <2 x i64>*
  %178 = load <2 x i64>, <2 x i64>* %177, align 8, !tbaa !20, !alias.scope !26, !noalias !23
  %179 = bitcast i64* %176 to <2 x i64>*
  store <2 x i64> %178, <2 x i64>* %179, align 8, !tbaa !20, !alias.scope !23, !noalias !26
  %180 = add i64 %168, 4
  %181 = icmp ult i64 %180, %86
  br i1 %181, label %167, label %182

182:                                              ; preds = %167, %78, %85, %165
  %183 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 0), align 8, !tbaa !11
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185, !prof !10

185:                                              ; preds = %182
  tail call void @zsqr_ll(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0)) #7
  br label %186

186:                                              ; preds = %182, %185
  %187 = phi i32 [ 1, %185 ], [ 0, %182 ]
  store i32 %187, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_mag, i64 0, i64 0, i32 0), align 8, !tbaa !11
  %188 = shl i64 %18, 1
  br label %16

189:                                              ; preds = %71, %20, %35
  %190 = lshr i64 %18, 1
  %191 = add i64 %190, %9
  tail call void @zdivmod(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_div, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_div, i64 0, i64 0)) #7
  %192 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 0), align 8, !tbaa !11
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %8

194:                                              ; preds = %189, %5
  %195 = phi i64 [ 1, %5 ], [ %191, %189 ]
  %196 = getelementptr %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %197 = load i32, i32* %196, align 8, !tbaa !11
  %198 = lshr i32 %197, 31
  %199 = zext i32 %198 to i64
  %200 = add i64 %195, %199
  ret i64 %200
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal fastcc void @libzahl_failure() unnamed_addr #1 {
  store i32 -5, i32* @libzahl_error, align 4, !tbaa !28
  %1 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !29
  %2 = icmp eq %struct.zahl** %1, null
  %3 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %4 = icmp eq %struct.zahl** %3, %1
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %0, %6
  %7 = phi %struct.zahl** [ %10, %6 ], [ %3, %0 ]
  %8 = getelementptr inbounds %struct.zahl*, %struct.zahl** %7, i64 -1
  store %struct.zahl** %8, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !29
  %9 = load %struct.zahl*, %struct.zahl** %8, align 8, !tbaa !29
  tail call void @zfree(%struct.zahl* noundef %9) #7
  %10 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !29
  %11 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !29
  %12 = icmp eq %struct.zahl** %10, %11
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %0
  %14 = load i8*, i8** @libzahl_temp_allocation, align 8, !tbaa !29
  tail call void @free(i8* noundef %14)
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !29
  tail call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #8
  unreachable
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @zset(%struct.zahl* noundef %0, %struct.zahl* nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !11
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  br i1 %5, label %7, label %8, !prof !10

7:                                                ; preds = %2
  store i32 0, i32* %6, align 8, !tbaa !11
  br label %117

8:                                                ; preds = %2
  store i32 %4, i32* %6, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  store i64 %10, i64* %11, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 3
  %13 = load i64, i64* %12, align 8, !tbaa !18
  %14 = load i64, i64* %9, align 8, !tbaa !22
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  tail call void @libzahl_realloc(%struct.zahl* noundef nonnull %0, i64 noundef %14) #7
  %17 = load i64, i64* %9, align 8, !tbaa !22
  br label %18

18:                                               ; preds = %8, %16
  %19 = phi i64 [ %14, %8 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.zahl, %struct.zahl* %1, i64 0, i32 4
  %23 = load i64*, i64** %22, align 8, !tbaa !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
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
  %26 = load i64, i64* %25, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %27 = getelementptr inbounds i64, i64* %21, i64 19
  store i64 %26, i64* %27, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds i64, i64* %23, i64 18
  %30 = load i64, i64* %29, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %31 = getelementptr inbounds i64, i64* %21, i64 18
  store i64 %30, i64* %31, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %32

32:                                               ; preds = %28, %18
  %33 = getelementptr inbounds i64, i64* %23, i64 17
  %34 = load i64, i64* %33, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %35 = getelementptr inbounds i64, i64* %21, i64 17
  store i64 %34, i64* %35, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %36

36:                                               ; preds = %32, %18
  %37 = getelementptr inbounds i64, i64* %23, i64 16
  %38 = load i64, i64* %37, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %39 = getelementptr inbounds i64, i64* %21, i64 16
  store i64 %38, i64* %39, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %40

40:                                               ; preds = %36, %18
  %41 = getelementptr inbounds i64, i64* %23, i64 15
  %42 = load i64, i64* %41, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %43 = getelementptr inbounds i64, i64* %21, i64 15
  store i64 %42, i64* %43, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %44

44:                                               ; preds = %40, %18
  %45 = getelementptr inbounds i64, i64* %23, i64 14
  %46 = load i64, i64* %45, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %47 = getelementptr inbounds i64, i64* %21, i64 14
  store i64 %46, i64* %47, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %48

48:                                               ; preds = %44, %18
  %49 = getelementptr inbounds i64, i64* %23, i64 13
  %50 = load i64, i64* %49, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %51 = getelementptr inbounds i64, i64* %21, i64 13
  store i64 %50, i64* %51, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %52

52:                                               ; preds = %48, %18
  %53 = getelementptr inbounds i64, i64* %23, i64 12
  %54 = load i64, i64* %53, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %55 = getelementptr inbounds i64, i64* %21, i64 12
  store i64 %54, i64* %55, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %56

56:                                               ; preds = %52, %18
  %57 = getelementptr inbounds i64, i64* %23, i64 11
  %58 = load i64, i64* %57, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %59 = getelementptr inbounds i64, i64* %21, i64 11
  store i64 %58, i64* %59, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %60

60:                                               ; preds = %56, %18
  %61 = getelementptr inbounds i64, i64* %23, i64 10
  %62 = load i64, i64* %61, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %63 = getelementptr inbounds i64, i64* %21, i64 10
  store i64 %62, i64* %63, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %64

64:                                               ; preds = %60, %18
  %65 = getelementptr inbounds i64, i64* %23, i64 9
  %66 = load i64, i64* %65, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %67 = getelementptr inbounds i64, i64* %21, i64 9
  store i64 %66, i64* %67, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %68

68:                                               ; preds = %64, %18
  %69 = getelementptr inbounds i64, i64* %23, i64 8
  %70 = load i64, i64* %69, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %71 = getelementptr inbounds i64, i64* %21, i64 8
  store i64 %70, i64* %71, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %72

72:                                               ; preds = %68, %18
  %73 = getelementptr inbounds i64, i64* %23, i64 7
  %74 = load i64, i64* %73, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %75 = getelementptr inbounds i64, i64* %21, i64 7
  store i64 %74, i64* %75, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %76

76:                                               ; preds = %72, %18
  %77 = getelementptr inbounds i64, i64* %23, i64 6
  %78 = load i64, i64* %77, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %79 = getelementptr inbounds i64, i64* %21, i64 6
  store i64 %78, i64* %79, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %80

80:                                               ; preds = %76, %18
  %81 = getelementptr inbounds i64, i64* %23, i64 5
  %82 = load i64, i64* %81, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %83 = getelementptr inbounds i64, i64* %21, i64 5
  store i64 %82, i64* %83, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %84

84:                                               ; preds = %80, %18
  %85 = getelementptr inbounds i64, i64* %23, i64 4
  %86 = load i64, i64* %85, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %87 = getelementptr inbounds i64, i64* %21, i64 4
  store i64 %86, i64* %87, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %88

88:                                               ; preds = %84, %18
  %89 = getelementptr inbounds i64, i64* %23, i64 3
  %90 = load i64, i64* %89, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %91 = getelementptr inbounds i64, i64* %21, i64 3
  store i64 %90, i64* %91, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %92

92:                                               ; preds = %88, %18
  %93 = getelementptr inbounds i64, i64* %23, i64 2
  %94 = load i64, i64* %93, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %95 = getelementptr inbounds i64, i64* %21, i64 2
  store i64 %94, i64* %95, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %96

96:                                               ; preds = %92, %18
  %97 = getelementptr inbounds i64, i64* %23, i64 1
  %98 = load i64, i64* %97, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %99 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %98, i64* %99, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %100

100:                                              ; preds = %96, %18
  %101 = load i64, i64* %23, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  store i64 %101, i64* %21, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  br label %117

102:                                              ; preds = %18, %102
  %103 = phi i64 [ %115, %102 ], [ 0, %18 ]
  %104 = getelementptr inbounds i64, i64* %23, i64 %103
  %105 = getelementptr inbounds i64, i64* %21, i64 %103
  %106 = bitcast i64* %104 to <2 x i64>*
  %107 = load <2 x i64>, <2 x i64>* %106, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %108 = bitcast i64* %105 to <2 x i64>*
  store <2 x i64> %107, <2 x i64>* %108, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  %109 = or i64 %103, 2
  %110 = getelementptr inbounds i64, i64* %23, i64 %109
  %111 = getelementptr inbounds i64, i64* %21, i64 %109
  %112 = bitcast i64* %110 to <2 x i64>*
  %113 = load <2 x i64>, <2 x i64>* %112, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %114 = bitcast i64* %111 to <2 x i64>*
  store <2 x i64> %113, <2 x i64>* %114, align 8, !tbaa !20, !alias.scope !30, !noalias !33
  %115 = add i64 %103, 4
  %116 = icmp ult i64 %115, %19
  br i1 %116, label %102, label %117

117:                                              ; preds = %102, %100, %18, %7
  ret void
}

declare void @zfree(%struct.zahl* noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) local_unnamed_addr #5

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #3

declare void @zsqr_ll(%struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

declare void @zdivmod(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!12, !13, i64 0}
!12 = !{!"zahl", !13, i64 0, !13, i64 4, !16, i64 8, !16, i64 16, !17, i64 24}
!13 = !{!"int", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"long", !14, i64 0}
!17 = !{!"any pointer", !14, i64 0}
!18 = !{!12, !16, i64 16}
!19 = !{!12, !17, i64 24}
!20 = !{!21, !21, i64 0}
!21 = !{!"long long", !14, i64 0}
!22 = !{!12, !16, i64 8}
!23 = !{!24}
!24 = distinct !{!24, !25, !"libzahl_memcpy: argument 0"}
!25 = distinct !{!25, !"libzahl_memcpy"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"libzahl_memcpy: argument 1"}
!28 = !{!13, !13, i64 0}
!29 = !{!17, !17, i64 0}
!30 = !{!31}
!31 = distinct !{!31, !32, !"libzahl_memcpy: argument 0"}
!32 = distinct !{!32, !"libzahl_memcpy"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"libzahl_memcpy: argument 1"}
