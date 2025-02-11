; ModuleID = 'src/zstr.c'
source_filename = "src/zstr.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.zahl = type { i32, i32, i64, i64, i64* }

@libzahl_temp_allocation = external local_unnamed_addr global i8*, align 8
@libzahl_tmp_str_num = external global [1 x %struct.zahl], align 8
@libzahl_tmp_str_rem = external global [1 x %struct.zahl], align 8
@libzahl_const_1e19 = external global [1 x %struct.zahl], align 8
@libzahl_error = external local_unnamed_addr global i32, align 4
@libzahl_temp_stack = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_temp_stack_head = external local_unnamed_addr global %struct.zahl**, align 8
@libzahl_jmp_buf = external global [48 x i32], align 4
@.str = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 1

; Function Attrs: nounwind ssp uwtable
define i8* @zstr(%struct.zahl* noundef readonly %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [20 x i8], align 1
  %5 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %5) #10
  %6 = getelementptr %struct.zahl, %struct.zahl* %0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18, !prof !17

9:                                                ; preds = %3
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %15, !prof !17

11:                                               ; preds = %9
  %12 = tail call dereferenceable_or_null(2) i8* @malloc(i64 noundef 2) #11
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15, !prof !17

14:                                               ; preds = %11
  tail call fastcc void @libzahl_memfailure()
  unreachable

15:                                               ; preds = %11, %9
  %16 = phi i8* [ %12, %11 ], [ %1, %9 ]
  store i8 48, i8* %16, align 1, !tbaa !18
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %17, align 1, !tbaa !18
  br label %442

18:                                               ; preds = %3
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %22 = load i64, i64* %21, align 8, !tbaa !19
  %23 = mul i64 %22, 20
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i64 [ %2, %18 ], [ %23, %20 ]
  %26 = icmp eq i8* %1, null
  br i1 %26, label %27, label %32, !prof !17

27:                                               ; preds = %24
  %28 = add i64 %25, 1
  %29 = tail call i8* @malloc(i64 noundef %28) #11
  store i8* %29, i8** @libzahl_temp_allocation, align 8, !tbaa !20
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32, !prof !17

31:                                               ; preds = %27
  tail call fastcc void @libzahl_memfailure()
  unreachable

32:                                               ; preds = %27, %24
  %33 = phi i8* [ %29, %27 ], [ %1, %24 ]
  %34 = lshr i32 %7, 31
  %35 = zext i32 %34 to i64
  %36 = icmp eq %struct.zahl* %0, getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0)
  br i1 %36, label %143, label %37

37:                                               ; preds = %32
  store i32 %7, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %38 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 2
  %39 = load i64, i64* %38, align 8, !tbaa !19
  store i64 %39, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 2), align 8, !tbaa !19
  %40 = load i64, i64* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 3), align 8, !tbaa !21
  %41 = load i64, i64* %38, align 8, !tbaa !19
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  tail call void @libzahl_realloc(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), i64 noundef %41) #10
  %44 = load i64, i64* %38, align 8, !tbaa !19
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi i64 [ %41, %37 ], [ %44, %43 ]
  %47 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 4), align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.zahl, %struct.zahl* %0, i64 0, i32 4
  %49 = load i64*, i64** %48, align 8, !tbaa !22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26) #10
  switch i64 %46, label %128 [
    i64 20, label %50
    i64 19, label %54
    i64 18, label %58
    i64 17, label %62
    i64 16, label %66
    i64 15, label %70
    i64 14, label %74
    i64 13, label %78
    i64 12, label %82
    i64 11, label %86
    i64 10, label %90
    i64 9, label %94
    i64 8, label %98
    i64 7, label %102
    i64 6, label %106
    i64 5, label %110
    i64 4, label %114
    i64 3, label %118
    i64 2, label %122
    i64 1, label %126
    i64 0, label %143
  ]

50:                                               ; preds = %45
  %51 = getelementptr inbounds i64, i64* %49, i64 19
  %52 = load i64, i64* %51, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %53 = getelementptr inbounds i64, i64* %47, i64 19
  store i64 %52, i64* %53, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %54

54:                                               ; preds = %50, %45
  %55 = getelementptr inbounds i64, i64* %49, i64 18
  %56 = load i64, i64* %55, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %57 = getelementptr inbounds i64, i64* %47, i64 18
  store i64 %56, i64* %57, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %58

58:                                               ; preds = %54, %45
  %59 = getelementptr inbounds i64, i64* %49, i64 17
  %60 = load i64, i64* %59, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %61 = getelementptr inbounds i64, i64* %47, i64 17
  store i64 %60, i64* %61, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %62

62:                                               ; preds = %58, %45
  %63 = getelementptr inbounds i64, i64* %49, i64 16
  %64 = load i64, i64* %63, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %65 = getelementptr inbounds i64, i64* %47, i64 16
  store i64 %64, i64* %65, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %66

66:                                               ; preds = %62, %45
  %67 = getelementptr inbounds i64, i64* %49, i64 15
  %68 = load i64, i64* %67, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %69 = getelementptr inbounds i64, i64* %47, i64 15
  store i64 %68, i64* %69, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %70

70:                                               ; preds = %66, %45
  %71 = getelementptr inbounds i64, i64* %49, i64 14
  %72 = load i64, i64* %71, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %73 = getelementptr inbounds i64, i64* %47, i64 14
  store i64 %72, i64* %73, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %74

74:                                               ; preds = %70, %45
  %75 = getelementptr inbounds i64, i64* %49, i64 13
  %76 = load i64, i64* %75, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %77 = getelementptr inbounds i64, i64* %47, i64 13
  store i64 %76, i64* %77, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %78

78:                                               ; preds = %74, %45
  %79 = getelementptr inbounds i64, i64* %49, i64 12
  %80 = load i64, i64* %79, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %81 = getelementptr inbounds i64, i64* %47, i64 12
  store i64 %80, i64* %81, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %82

82:                                               ; preds = %78, %45
  %83 = getelementptr inbounds i64, i64* %49, i64 11
  %84 = load i64, i64* %83, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %85 = getelementptr inbounds i64, i64* %47, i64 11
  store i64 %84, i64* %85, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %86

86:                                               ; preds = %82, %45
  %87 = getelementptr inbounds i64, i64* %49, i64 10
  %88 = load i64, i64* %87, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %89 = getelementptr inbounds i64, i64* %47, i64 10
  store i64 %88, i64* %89, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %90

90:                                               ; preds = %86, %45
  %91 = getelementptr inbounds i64, i64* %49, i64 9
  %92 = load i64, i64* %91, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %93 = getelementptr inbounds i64, i64* %47, i64 9
  store i64 %92, i64* %93, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %94

94:                                               ; preds = %90, %45
  %95 = getelementptr inbounds i64, i64* %49, i64 8
  %96 = load i64, i64* %95, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %97 = getelementptr inbounds i64, i64* %47, i64 8
  store i64 %96, i64* %97, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %98

98:                                               ; preds = %94, %45
  %99 = getelementptr inbounds i64, i64* %49, i64 7
  %100 = load i64, i64* %99, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %101 = getelementptr inbounds i64, i64* %47, i64 7
  store i64 %100, i64* %101, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %102

102:                                              ; preds = %98, %45
  %103 = getelementptr inbounds i64, i64* %49, i64 6
  %104 = load i64, i64* %103, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %105 = getelementptr inbounds i64, i64* %47, i64 6
  store i64 %104, i64* %105, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %106

106:                                              ; preds = %102, %45
  %107 = getelementptr inbounds i64, i64* %49, i64 5
  %108 = load i64, i64* %107, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %109 = getelementptr inbounds i64, i64* %47, i64 5
  store i64 %108, i64* %109, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %110

110:                                              ; preds = %106, %45
  %111 = getelementptr inbounds i64, i64* %49, i64 4
  %112 = load i64, i64* %111, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %113 = getelementptr inbounds i64, i64* %47, i64 4
  store i64 %112, i64* %113, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %114

114:                                              ; preds = %110, %45
  %115 = getelementptr inbounds i64, i64* %49, i64 3
  %116 = load i64, i64* %115, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %117 = getelementptr inbounds i64, i64* %47, i64 3
  store i64 %116, i64* %117, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %118

118:                                              ; preds = %114, %45
  %119 = getelementptr inbounds i64, i64* %49, i64 2
  %120 = load i64, i64* %119, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %121 = getelementptr inbounds i64, i64* %47, i64 2
  store i64 %120, i64* %121, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %122

122:                                              ; preds = %118, %45
  %123 = getelementptr inbounds i64, i64* %49, i64 1
  %124 = load i64, i64* %123, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %125 = getelementptr inbounds i64, i64* %47, i64 1
  store i64 %124, i64* %125, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %126

126:                                              ; preds = %122, %45
  %127 = load i64, i64* %49, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  store i64 %127, i64* %47, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  br label %143

128:                                              ; preds = %45, %128
  %129 = phi i64 [ %141, %128 ], [ 0, %45 ]
  %130 = getelementptr inbounds i64, i64* %49, i64 %129
  %131 = getelementptr inbounds i64, i64* %47, i64 %129
  %132 = bitcast i64* %130 to <2 x i64>*
  %133 = load <2 x i64>, <2 x i64>* %132, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %134 = bitcast i64* %131 to <2 x i64>*
  store <2 x i64> %133, <2 x i64>* %134, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  %135 = or i64 %129, 2
  %136 = getelementptr inbounds i64, i64* %49, i64 %135
  %137 = getelementptr inbounds i64, i64* %47, i64 %135
  %138 = bitcast i64* %136 to <2 x i64>*
  %139 = load <2 x i64>, <2 x i64>* %138, align 8, !tbaa !28, !alias.scope !26, !noalias !23
  %140 = bitcast i64* %137 to <2 x i64>*
  store <2 x i64> %139, <2 x i64>* %140, align 8, !tbaa !28, !alias.scope !23, !noalias !26
  %141 = add i64 %129, 4
  %142 = icmp ult i64 %141, %46
  br i1 %142, label %128, label %143

143:                                              ; preds = %128, %32, %45, %126
  %144 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %145 = and i32 %144, 1
  store i32 %145, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 0), align 8, !tbaa !10
  store i8 45, i8* %33, align 1, !tbaa !18
  %146 = getelementptr inbounds i8, i8* %33, i64 %35
  %147 = sub i64 %25, %35
  %148 = tail call i64 @llvm.usub.sat.i64(i64 %147, i64 19)
  br label %149

149:                                              ; preds = %163, %143
  %150 = phi i64 [ %148, %143 ], [ %251, %163 ]
  %151 = phi i64 [ %147, %143 ], [ %150, %163 ]
  %152 = phi i64 [ 0, %143 ], [ %252, %163 ]
  %153 = phi i8 [ 0, %143 ], [ %248, %163 ]
  tail call void @zdivmod(%struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0), %struct.zahl* noundef getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_const_1e19, i64 0, i64 0)) #10
  %154 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_num, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %253, label %156, !prof !17

156:                                              ; preds = %149
  %157 = getelementptr inbounds i8, i8* %146, i64 %150
  %158 = load i32, i32* getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0, i32 0), align 8, !tbaa !10
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0, i32 4), align 8, !tbaa !22
  %162 = load i64, i64* %161, align 8, !tbaa !28
  br label %163

163:                                              ; preds = %156, %160
  %164 = phi i64 [ %162, %160 ], [ 0, %156 ]
  %165 = getelementptr inbounds i8, i8* %157, i64 1
  %166 = bitcast i8* %165 to i16*
  %167 = freeze i64 %164
  %168 = udiv i64 %167, 100
  %169 = mul i64 %168, 100
  %170 = sub i64 %167, %169
  %171 = shl nuw nsw i64 %170, 1
  %172 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %171
  %173 = bitcast i8* %172 to i16*
  %174 = load i16, i16* %173, align 2, !tbaa !30
  %175 = getelementptr inbounds i8, i8* %157, i64 17
  %176 = bitcast i8* %175 to i16*
  store i16 %174, i16* %176, align 2, !tbaa !30
  %177 = urem i64 %168, 100
  %178 = shl nuw nsw i64 %177, 1
  %179 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %178
  %180 = bitcast i8* %179 to i16*
  %181 = load i16, i16* %180, align 2, !tbaa !30
  %182 = getelementptr inbounds i8, i8* %157, i64 15
  %183 = bitcast i8* %182 to i16*
  store i16 %181, i16* %183, align 2, !tbaa !30
  %184 = udiv i64 %164, 10000
  %185 = urem i64 %184, 100
  %186 = shl nuw nsw i64 %185, 1
  %187 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %186
  %188 = bitcast i8* %187 to i16*
  %189 = load i16, i16* %188, align 2, !tbaa !30
  %190 = getelementptr inbounds i8, i8* %157, i64 13
  %191 = bitcast i8* %190 to i16*
  store i16 %189, i16* %191, align 2, !tbaa !30
  %192 = udiv i64 %164, 1000000
  %193 = urem i64 %192, 100
  %194 = shl nuw nsw i64 %193, 1
  %195 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %194
  %196 = bitcast i8* %195 to i16*
  %197 = load i16, i16* %196, align 2, !tbaa !30
  %198 = getelementptr inbounds i8, i8* %157, i64 11
  %199 = bitcast i8* %198 to i16*
  store i16 %197, i16* %199, align 2, !tbaa !30
  %200 = udiv i64 %164, 100000000
  %201 = urem i64 %200, 100
  %202 = shl nuw nsw i64 %201, 1
  %203 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %202
  %204 = bitcast i8* %203 to i16*
  %205 = load i16, i16* %204, align 2, !tbaa !30
  %206 = getelementptr inbounds i8, i8* %157, i64 9
  %207 = bitcast i8* %206 to i16*
  store i16 %205, i16* %207, align 2, !tbaa !30
  %208 = udiv i64 %164, 10000000000
  %209 = trunc i64 %208 to i32
  %210 = urem i32 %209, 100
  %211 = shl nuw nsw i32 %210, 1
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %212
  %214 = bitcast i8* %213 to i16*
  %215 = load i16, i16* %214, align 2, !tbaa !30
  %216 = getelementptr inbounds i8, i8* %157, i64 7
  %217 = bitcast i8* %216 to i16*
  store i16 %215, i16* %217, align 2, !tbaa !30
  %218 = udiv i64 %164, 1000000000000
  %219 = trunc i64 %218 to i32
  %220 = urem i32 %219, 100
  %221 = shl nuw nsw i32 %220, 1
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %222
  %224 = bitcast i8* %223 to i16*
  %225 = load i16, i16* %224, align 2, !tbaa !30
  %226 = getelementptr inbounds i8, i8* %157, i64 5
  %227 = bitcast i8* %226 to i16*
  store i16 %225, i16* %227, align 2, !tbaa !30
  %228 = udiv i64 %164, 100000000000000
  %229 = trunc i64 %228 to i32
  %230 = urem i32 %229, 100
  %231 = shl nuw nsw i32 %230, 1
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %232
  %234 = bitcast i8* %233 to i16*
  %235 = load i16, i16* %234, align 2, !tbaa !30
  %236 = getelementptr inbounds i8, i8* %157, i64 3
  %237 = bitcast i8* %236 to i16*
  store i16 %235, i16* %237, align 2, !tbaa !30
  %238 = udiv i64 %164, 10000000000000000
  %239 = trunc i64 %238 to i16
  %240 = urem i16 %239, 100
  %241 = shl nuw nsw i16 %240, 1
  %242 = zext i16 %241 to i64
  %243 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %242
  %244 = bitcast i8* %243 to i16*
  %245 = load i16, i16* %244, align 2, !tbaa !30
  store i16 %245, i16* %166, align 2, !tbaa !30
  %246 = udiv i64 %164, 1000000000000000000
  %247 = trunc i64 %246 to i8
  %248 = add nuw nsw i8 %247, 48
  store i8 %248, i8* %157, align 1, !tbaa !18
  %249 = add i64 %150, 19
  %250 = getelementptr inbounds i8, i8* %146, i64 %249
  store i8 %153, i8* %250, align 1, !tbaa !18
  %251 = tail call i64 @llvm.usub.sat.i64(i64 %150, i64 19)
  %252 = add i64 %152, 19
  br label %149

253:                                              ; preds = %149
  %254 = load i64*, i64** getelementptr inbounds ([1 x %struct.zahl], [1 x %struct.zahl]* @libzahl_tmp_str_rem, i64 0, i64 0, i32 4), align 8, !tbaa !22
  %255 = load i64, i64* %254, align 8, !tbaa !28
  %256 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 1
  %257 = bitcast i8* %256 to i16*
  %258 = freeze i64 %255
  %259 = udiv i64 %258, 100
  %260 = mul i64 %259, 100
  %261 = sub i64 %258, %260
  %262 = shl nuw nsw i64 %261, 1
  %263 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %262
  %264 = bitcast i8* %263 to i16*
  %265 = load i16, i16* %264, align 2, !tbaa !30
  %266 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 17
  %267 = bitcast i8* %266 to i16*
  store i16 %265, i16* %267, align 2, !tbaa !30
  %268 = urem i64 %259, 100
  %269 = shl nuw nsw i64 %268, 1
  %270 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %269
  %271 = bitcast i8* %270 to i16*
  %272 = load i16, i16* %271, align 2, !tbaa !30
  %273 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 15
  %274 = bitcast i8* %273 to i16*
  store i16 %272, i16* %274, align 2, !tbaa !30
  %275 = udiv i64 %255, 10000
  %276 = urem i64 %275, 100
  %277 = shl nuw nsw i64 %276, 1
  %278 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %277
  %279 = bitcast i8* %278 to i16*
  %280 = load i16, i16* %279, align 2, !tbaa !30
  %281 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 13
  %282 = bitcast i8* %281 to i16*
  store i16 %280, i16* %282, align 2, !tbaa !30
  %283 = udiv i64 %255, 1000000
  %284 = urem i64 %283, 100
  %285 = shl nuw nsw i64 %284, 1
  %286 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %285
  %287 = bitcast i8* %286 to i16*
  %288 = load i16, i16* %287, align 2, !tbaa !30
  %289 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 11
  %290 = bitcast i8* %289 to i16*
  store i16 %288, i16* %290, align 2, !tbaa !30
  %291 = udiv i64 %255, 100000000
  %292 = urem i64 %291, 100
  %293 = shl nuw nsw i64 %292, 1
  %294 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %293
  %295 = bitcast i8* %294 to i16*
  %296 = load i16, i16* %295, align 2, !tbaa !30
  %297 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 9
  %298 = bitcast i8* %297 to i16*
  store i16 %296, i16* %298, align 2, !tbaa !30
  %299 = udiv i64 %255, 10000000000
  %300 = trunc i64 %299 to i32
  %301 = urem i32 %300, 100
  %302 = shl nuw nsw i32 %301, 1
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %303
  %305 = bitcast i8* %304 to i16*
  %306 = load i16, i16* %305, align 2, !tbaa !30
  %307 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 7
  %308 = bitcast i8* %307 to i16*
  store i16 %306, i16* %308, align 2, !tbaa !30
  %309 = udiv i64 %255, 1000000000000
  %310 = trunc i64 %309 to i32
  %311 = urem i32 %310, 100
  %312 = shl nuw nsw i32 %311, 1
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %313
  %315 = bitcast i8* %314 to i16*
  %316 = load i16, i16* %315, align 2, !tbaa !30
  %317 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 5
  %318 = bitcast i8* %317 to i16*
  store i16 %316, i16* %318, align 2, !tbaa !30
  %319 = udiv i64 %255, 100000000000000
  %320 = trunc i64 %319 to i32
  %321 = urem i32 %320, 100
  %322 = shl nuw nsw i32 %321, 1
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %323
  %325 = bitcast i8* %324 to i16*
  %326 = load i16, i16* %325, align 2, !tbaa !30
  %327 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 3
  %328 = bitcast i8* %327 to i16*
  store i16 %326, i16* %328, align 2, !tbaa !30
  %329 = udiv i64 %255, 10000000000000000
  %330 = trunc i64 %329 to i16
  %331 = urem i16 %330, 100
  %332 = shl nuw nsw i16 %331, 1
  %333 = zext i16 %332 to i64
  %334 = getelementptr inbounds [201 x i8], [201 x i8]* @.str, i64 0, i64 %333
  %335 = bitcast i8* %334 to i16*
  %336 = load i16, i16* %335, align 2, !tbaa !30
  store i16 %336, i16* %257, align 2, !tbaa !30
  %337 = udiv i64 %255, 1000000000000000000
  %338 = trunc i64 %337 to i8
  %339 = add nuw nsw i8 %338, 48
  store i8 %339, i8* %5, align 1, !tbaa !18
  %340 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 19
  store i8 0, i8* %340, align 1, !tbaa !18
  %341 = icmp eq i8 %338, 0
  br i1 %341, label %342, label %358

342:                                              ; preds = %253
  %343 = trunc i16 %336 to i8
  %344 = icmp eq i8 %343, 48
  br i1 %344, label %345, label %351

345:                                              ; preds = %342, %345
  %346 = phi i64 [ %350, %345 ], [ 2, %342 ]
  %347 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 %346
  %348 = load i8, i8* %347, align 1, !tbaa !18
  %349 = icmp eq i8 %348, 48
  %350 = add nuw nsw i64 %346, 1
  br i1 %349, label %345, label %351

351:                                              ; preds = %345, %342
  %352 = phi i8 [ %343, %342 ], [ %348, %345 ]
  %353 = phi i64 [ 1, %342 ], [ %346, %345 ]
  %354 = sub nsw i64 19, %353
  %355 = icmp eq i64 %353, 19
  br i1 %355, label %430, label %356

356:                                              ; preds = %351
  store i8 %352, i8* %5, align 1, !tbaa !18
  %357 = icmp eq i64 %353, 18
  br i1 %357, label %430, label %358

358:                                              ; preds = %253, %356
  %359 = phi i64 [ %353, %356 ], [ 0, %253 ]
  %360 = phi i64 [ %354, %356 ], [ 19, %253 ]
  %361 = sub i64 18, %359
  %362 = getelementptr [20 x i8], [20 x i8]* %4, i64 0, i64 %359
  %363 = icmp ult i64 %361, 8
  br i1 %363, label %417, label %364

364:                                              ; preds = %358
  %365 = sub i64 19, %359
  %366 = getelementptr [20 x i8], [20 x i8]* %4, i64 0, i64 %365
  %367 = add nuw i64 %359, 1
  %368 = getelementptr [20 x i8], [20 x i8]* %4, i64 0, i64 %367
  %369 = icmp ult i8* %368, %366
  br i1 %369, label %417, label %370

370:                                              ; preds = %364
  %371 = icmp ult i64 %361, 32
  br i1 %371, label %398, label %372

372:                                              ; preds = %370
  %373 = and i64 %361, -32
  %374 = getelementptr i8, i8* %362, i64 1
  br label %375

375:                                              ; preds = %375, %372
  %376 = phi i64 [ 0, %372 ], [ %388, %375 ]
  %377 = getelementptr [20 x i8], [20 x i8]* %4, i64 0, i64 %376
  %378 = getelementptr inbounds i8, i8* %374, i64 %376
  %379 = getelementptr inbounds i8, i8* %377, i64 1
  %380 = bitcast i8* %378 to <16 x i8>*
  %381 = load <16 x i8>, <16 x i8>* %380, align 1, !tbaa !18, !alias.scope !32
  %382 = getelementptr inbounds i8, i8* %378, i64 16
  %383 = bitcast i8* %382 to <16 x i8>*
  %384 = load <16 x i8>, <16 x i8>* %383, align 1, !tbaa !18, !alias.scope !32
  %385 = bitcast i8* %379 to <16 x i8>*
  store <16 x i8> %381, <16 x i8>* %385, align 1, !tbaa !18, !alias.scope !35, !noalias !32
  %386 = getelementptr inbounds i8, i8* %377, i64 17
  %387 = bitcast i8* %386 to <16 x i8>*
  store <16 x i8> %384, <16 x i8>* %387, align 1, !tbaa !18, !alias.scope !35, !noalias !32
  %388 = add nuw i64 %376, 32
  %389 = icmp eq i64 %388, %373
  br i1 %389, label %390, label %375, !llvm.loop !37

390:                                              ; preds = %375
  %391 = icmp eq i64 %361, %373
  br i1 %391, label %430, label %392

392:                                              ; preds = %390
  %393 = getelementptr [20 x i8], [20 x i8]* %4, i64 0, i64 %373
  %394 = and i64 %361, 31
  %395 = getelementptr i8, i8* %362, i64 %373
  %396 = and i64 %361, 24
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %417, label %398

398:                                              ; preds = %370, %392
  %399 = phi i64 [ %373, %392 ], [ 0, %370 ]
  %400 = and i64 %361, -8
  %401 = getelementptr i8, i8* %362, i64 %400
  %402 = and i64 %361, 7
  %403 = getelementptr [20 x i8], [20 x i8]* %4, i64 0, i64 %400
  %404 = getelementptr i8, i8* %362, i64 1
  br label %405

405:                                              ; preds = %405, %398
  %406 = phi i64 [ %399, %398 ], [ %413, %405 ]
  %407 = getelementptr [20 x i8], [20 x i8]* %4, i64 0, i64 %406
  %408 = getelementptr inbounds i8, i8* %404, i64 %406
  %409 = getelementptr inbounds i8, i8* %407, i64 1
  %410 = bitcast i8* %408 to <8 x i8>*
  %411 = load <8 x i8>, <8 x i8>* %410, align 1, !tbaa !18
  %412 = bitcast i8* %409 to <8 x i8>*
  store <8 x i8> %411, <8 x i8>* %412, align 1, !tbaa !18
  %413 = add nuw i64 %406, 8
  %414 = icmp eq i64 %413, %400
  br i1 %414, label %415, label %405, !llvm.loop !39

415:                                              ; preds = %405
  %416 = icmp eq i64 %361, %400
  br i1 %416, label %430, label %417

417:                                              ; preds = %364, %358, %392, %415
  %418 = phi i8* [ %362, %358 ], [ %362, %364 ], [ %395, %392 ], [ %401, %415 ]
  %419 = phi i64 [ %361, %358 ], [ %361, %364 ], [ %394, %392 ], [ %402, %415 ]
  %420 = phi i8* [ %5, %358 ], [ %5, %364 ], [ %393, %392 ], [ %403, %415 ]
  br label %421

421:                                              ; preds = %417, %421
  %422 = phi i8* [ %425, %421 ], [ %418, %417 ]
  %423 = phi i64 [ %428, %421 ], [ %419, %417 ]
  %424 = phi i8* [ %426, %421 ], [ %420, %417 ]
  %425 = getelementptr inbounds i8, i8* %422, i64 1
  %426 = getelementptr inbounds i8, i8* %424, i64 1
  %427 = load i8, i8* %425, align 1, !tbaa !18
  %428 = add nsw i64 %423, -1
  store i8 %427, i8* %426, align 1, !tbaa !18
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %430, label %421, !llvm.loop !41

430:                                              ; preds = %421, %390, %415, %356, %351
  %431 = phi i64 [ %354, %356 ], [ 0, %351 ], [ %360, %415 ], [ %360, %390 ], [ %360, %421 ]
  %432 = phi i64 [ 18, %356 ], [ 19, %351 ], [ %359, %415 ], [ %359, %390 ], [ %359, %421 ]
  %433 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 %431
  store i8 0, i8* %433, align 1, !tbaa !18
  %434 = icmp eq i64 %152, 0
  br i1 %434, label %439, label %435

435:                                              ; preds = %430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %146, i8* noundef nonnull align 1 %5, i64 noundef %431, i1 noundef false) #10
  %436 = getelementptr inbounds i8, i8* %146, i64 %431
  %437 = getelementptr inbounds i8, i8* %146, i64 %151
  %438 = add i64 %152, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %436, i8* noundef nonnull align 1 %437, i64 noundef %438, i1 noundef false) #10
  br label %441

439:                                              ; preds = %430
  %440 = sub nsw i64 20, %432
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %146, i8* noundef nonnull align 1 %5, i64 noundef %440, i1 noundef false) #10
  br label %441

441:                                              ; preds = %435, %439
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !20
  br label %442

442:                                              ; preds = %441, %15
  %443 = phi i8* [ %16, %15 ], [ %33, %441 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %5) #10
  ret i8* %443
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint noreturn nounwind ssp uwtable
define internal fastcc void @libzahl_memfailure() unnamed_addr #3 {
  %1 = tail call i32* @__error() #10
  %2 = load i32, i32* %1, align 4, !tbaa !42
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32* @__error() #10
  store i32 2, i32* %5, align 4, !tbaa !42
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call i32* @__error() #10
  %8 = load i32, i32* %7, align 4, !tbaa !42
  store i32 %8, i32* @libzahl_error, align 4, !tbaa !42
  %9 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !20
  %10 = icmp eq %struct.zahl** %9, null
  %11 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8
  %12 = icmp eq %struct.zahl** %11, %9
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %6, %14
  %15 = phi %struct.zahl** [ %18, %14 ], [ %11, %6 ]
  %16 = getelementptr inbounds %struct.zahl*, %struct.zahl** %15, i64 -1
  store %struct.zahl** %16, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !20
  %17 = load %struct.zahl*, %struct.zahl** %16, align 8, !tbaa !20
  tail call void @zfree(%struct.zahl* noundef %17) #10
  %18 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack_head, align 8, !tbaa !20
  %19 = load %struct.zahl**, %struct.zahl*** @libzahl_temp_stack, align 8, !tbaa !20
  %20 = icmp eq %struct.zahl** %18, %19
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %6
  %22 = load i8*, i8** @libzahl_temp_allocation, align 8, !tbaa !20
  tail call void @free(i8* noundef %22) #10
  store i8* null, i8** @libzahl_temp_allocation, align 8, !tbaa !20
  tail call void @longjmp(i32* noundef getelementptr inbounds ([48 x i32], [48 x i32]* @libzahl_jmp_buf, i64 0, i64 0), i32 noundef 1) #12
  unreachable
}

declare void @zdivmod(%struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef, %struct.zahl* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32* @__error() local_unnamed_addr #4

declare void @zfree(%struct.zahl* noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @longjmp(i32* noundef, i32 noundef) local_unnamed_addr #6

declare void @libzahl_realloc(%struct.zahl* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #9

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { inlinehint noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { allocsize(0) }
attributes #12 = { noreturn nounwind }

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
!18 = !{!13, !13, i64 0}
!19 = !{!11, !15, i64 8}
!20 = !{!16, !16, i64 0}
!21 = !{!11, !15, i64 16}
!22 = !{!11, !16, i64 24}
!23 = !{!24}
!24 = distinct !{!24, !25, !"libzahl_memcpy: argument 0"}
!25 = distinct !{!25, !"libzahl_memcpy"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"libzahl_memcpy: argument 1"}
!28 = !{!29, !29, i64 0}
!29 = !{!"long long", !13, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !13, i64 0}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = distinct !{!39, !38, !40}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !38}
!42 = !{!12, !12, i64 0}
