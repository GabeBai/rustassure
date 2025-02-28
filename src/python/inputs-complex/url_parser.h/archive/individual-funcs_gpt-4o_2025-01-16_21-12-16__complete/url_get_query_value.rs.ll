; ModuleID = 'inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_get_query_value.rs.bc'
source_filename = "url_get_query_value.eb5fbfa4-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ffi::c_str::CStr" = type { [0 x i8] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<i8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<i8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%UrlData = type { i8*, i8*, i8*, i8*, i8*, i8*, { i8*, i8* }*, i8* }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

; Function Attrs: inlinehint uwtable
define { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core10intrinsics17const_eval_select17h27d8cf5f51697d17E(i8* align 1 %arg.0, i64 %arg.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast i8* %arg.0 to [0 x i8]*
  %2 = invoke { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ops8function6FnOnce9call_once17hc5ebb7dfad80b8a6E([0 x i8]* align 1 %1, i64 %arg.1)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb1:                                              ; preds = %start
  %8 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %2, 0
  %9 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %2, 1
  br label %bb2

bb4:                                              ; preds = %bb3
  %10 = bitcast { i8*, i32 }* %0 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb2:                                              ; preds = %bb1
  %16 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %8, 0
  %17 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %16, i64 %9, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %17
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h5b7a4e6a833d971aE"({ %"core::ffi::c_str::CStr"*, i64 }* align 8 %self, { %"core::ffi::c_str::CStr"*, i64 }* align 8 %other) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { %"core::ffi::c_str::CStr"*, i64 }, { %"core::ffi::c_str::CStr"*, i64 }* %self, i32 0, i32 0
  %_5.0 = load %"core::ffi::c_str::CStr"*, %"core::ffi::c_str::CStr"** %0, align 8, !nonnull !1, !align !2, !noundef !1
  %1 = getelementptr inbounds { %"core::ffi::c_str::CStr"*, i64 }, { %"core::ffi::c_str::CStr"*, i64 }* %self, i32 0, i32 1
  %_5.1 = load i64, i64* %1, align 8
  %2 = getelementptr inbounds { %"core::ffi::c_str::CStr"*, i64 }, { %"core::ffi::c_str::CStr"*, i64 }* %other, i32 0, i32 0
  %_6.0 = load %"core::ffi::c_str::CStr"*, %"core::ffi::c_str::CStr"** %2, align 8, !nonnull !1, !align !2, !noundef !1
  %3 = getelementptr inbounds { %"core::ffi::c_str::CStr"*, i64 }, { %"core::ffi::c_str::CStr"*, i64 }* %other, i32 0, i32 1
  %_6.1 = load i64, i64* %3, align 8
  %4 = call zeroext i1 @"_ZN63_$LT$core..ffi..c_str..CStr$u20$as$u20$core..cmp..PartialEq$GT$2eq17h63297324f75cee13E"(%"core::ffi::c_str::CStr"* align 1 %_5.0, i64 %_5.1, %"core::ffi::c_str::CStr"* align 1 %_6.0, i64 %_6.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define internal { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked17h9d86dc8d374aae0dE([0 x i8]* align 1 %bytes.0, i64 %bytes.1) unnamed_addr #0 {
start:
  %_2 = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %bytes.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %bytes.1, i64* %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !nonnull !1, !align !2, !noundef !1
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core10intrinsics17const_eval_select17h27d8cf5f51697d17E(i8* align 1 %4, i64 %6)
  %8 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %7, 0
  %9 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %8, 0
  %11 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %10, i64 %9, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %11
}

; Function Attrs: inlinehint uwtable
define internal { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17hdf82ec837f687158E(i8* %ptr) unnamed_addr #0 {
start:
  %len = call i64 @strlen(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  %_9 = add i64 %len, 1
  %0 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h4393c668d7cc0ff7E(i8* %ptr, i64 %_9)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked17h9d86dc8d374aae0dE([0 x i8]* align 1 %_7.0, i64 %_7.1)
  %2 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %1, 0
  %3 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %2, 0
  %5 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %4, i64 %3, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ops8function6FnOnce9call_once17hc5ebb7dfad80b8a6E([0 x i8]* align 1 %0, i64 %1) unnamed_addr #0 {
start:
  %_2 = alloca { i8*, i64 }, align 8
  %2 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %5, i32 0, i32 0
  %7 = load [0 x i8]*, [0 x i8]** %6, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %5, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked7rt_impl17he2e3e977306ccfd4E([0 x i8]* align 1 %7, i64 %9)
  %11 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %10, 0
  %12 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %10, 1
  br label %bb1

bb1:                                              ; preds = %start
  %13 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %11, 0
  %14 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %13, i64 %12, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %14
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h10934d8621541d0eE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hd4b2a7329f0fdc37E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h151a2b771521c0baE({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h151a2b771521c0baE({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata14from_raw_parts17h8c28f9e3f9518afdE({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<i8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<i8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<i8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<i8>", %"core::ptr::metadata::PtrComponents<i8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<i8>"* %_3 to %"core::ptr::metadata::PtrComponents<i8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<i8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<i8>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<i8>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata14from_raw_parts17hde8905d64b1f4f9eE({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h18fea0ba3cec441bE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hd4b2a7329f0fdc37E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h645a831a99af607fE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17hde8905d64b1f4f9eE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h18fea0ba3cec441bE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17ha0718c082b6497e9E"({ i8*, i8* }* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_2 = bitcast { i8*, i8* }* %self to i8*
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17hde8905d64b1f4f9eE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h18fea0ba3cec441bE"(i8* %_2, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h4393c668d7cc0ff7E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h10934d8621541d0eE(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: uwtable
define i8* @_ZN19url_get_query_value19url_get_query_value17he4e160039a6bfb2bE(%UrlData* %url, i8* %key) unnamed_addr #1 {
start:
  %0 = alloca { i8*, i8* }*, align 8
  %1 = alloca {}*, align 8
  %2 = alloca {}*, align 8
  %_14 = alloca { %"core::ffi::c_str::CStr"*, i64 }, align 8
  %_11 = alloca { %"core::ffi::c_str::CStr"*, i64 }, align 8
  %kv = alloca { i8*, i8* }*, align 8
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds %UrlData, %UrlData* %url, i32 0, i32 6
  %_4 = load { i8*, i8* }*, { i8*, i8* }** %4, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17ha0718c082b6497e9E"({ i8*, i8* }* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %5 = getelementptr inbounds %UrlData, %UrlData* %url, i32 0, i32 6
  %6 = load { i8*, i8* }*, { i8*, i8* }** %5, align 8
  store { i8*, i8* }* %6, { i8*, i8* }** %kv, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  %7 = bitcast {}** %2 to i64*
  store i64 0, i64* %7, align 8
  %8 = load {}*, {}** %2, align 8
  %9 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17h8c28f9e3f9518afdE({}* %8)
  store i8* %9, i8** %3, align 8
  br label %bb14

bb14:                                             ; preds = %bb10, %bb13, %bb2
  %10 = load i8*, i8** %3, align 8
  ret i8* %10

bb4:                                              ; preds = %bb12, %bb3
  %11 = load { i8*, i8* }*, { i8*, i8* }** %kv, align 8
  %12 = bitcast { i8*, i8* }* %11 to i8**
  %_8 = load i8*, i8** %12, align 8
  %_7 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h645a831a99af607fE"(i8* %_8)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_6 = xor i1 %_7, true
  br i1 %_6, label %bb6, label %bb13

bb13:                                             ; preds = %bb5
  %13 = bitcast {}** %1 to i64*
  store i64 0, i64* %13, align 8
  %14 = load {}*, {}** %1, align 8
  %15 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17h8c28f9e3f9518afdE({}* %14)
  store i8* %15, i8** %3, align 8
  br label %bb14

bb6:                                              ; preds = %bb5
  %16 = load { i8*, i8* }*, { i8*, i8* }** %kv, align 8
  %17 = bitcast { i8*, i8* }* %16 to i8**
  %_12 = load i8*, i8** %17, align 8
  %18 = call { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17hdf82ec837f687158E(i8* %_12)
  store { %"core::ffi::c_str::CStr"*, i64 } %18, { %"core::ffi::c_str::CStr"*, i64 }* %_11, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  %19 = call { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17hdf82ec837f687158E(i8* %key)
  store { %"core::ffi::c_str::CStr"*, i64 } %19, { %"core::ffi::c_str::CStr"*, i64 }* %_14, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  %_9 = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h5b7a4e6a833d971aE"({ %"core::ffi::c_str::CStr"*, i64 }* align 8 %_11, { %"core::ffi::c_str::CStr"*, i64 }* align 8 %_14)
  br label %bb9

bb9:                                              ; preds = %bb8
  br i1 %_9, label %bb10, label %bb11

bb11:                                             ; preds = %bb9
  %_17 = load { i8*, i8* }*, { i8*, i8* }** %kv, align 8
  %20 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_17, i64 1
  store { i8*, i8* }* %20, { i8*, i8* }** %0, align 8
  %21 = load { i8*, i8* }*, { i8*, i8* }** %0, align 8
  br label %bb12

bb10:                                             ; preds = %bb9
  %22 = load { i8*, i8* }*, { i8*, i8* }** %kv, align 8
  %23 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %3, align 8
  br label %bb14

bb12:                                             ; preds = %bb11
  store { i8*, i8* }* %21, { i8*, i8* }** %kv, align 8
  br label %bb4
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: uwtable
declare zeroext i1 @"_ZN63_$LT$core..ffi..c_str..CStr$u20$as$u20$core..cmp..PartialEq$GT$2eq17h63297324f75cee13E"(%"core::ffi::c_str::CStr"* align 1, i64, %"core::ffi::c_str::CStr"* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare i64 @strlen(i8*) unnamed_addr #1

; Function Attrs: uwtable
declare { %"core::ffi::c_str::CStr"*, i64 } @_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked7rt_impl17he2e3e977306ccfd4E([0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}

^0 = module: (path: "inputs-complex/url.h/individual-funcs_gpt-4o_2025-01-16_21-12-16/url_get_query_value.rs.bc", hash: (3200825673, 1810264580, 2308487061, 1389384855, 4152818670))
^1 = gv: (name: "_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked17h9d86dc8d374aae0dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 17, calls: ((callee: ^18))))) ; guid = 344803456644308591
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h645a831a99af607fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^19), (callee: ^14))))) ; guid = 1002294573503478524
^4 = gv: (name: "_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h5b7a4e6a833d971aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^5))))) ; guid = 2000448117341017947
^5 = gv: (name: "_ZN63_$LT$core..ffi..c_str..CStr$u20$as$u20$core..cmp..PartialEq$GT$2eq17h63297324f75cee13E") ; guid = 2194698021357763150
^6 = gv: (name: "strlen") ; guid = 2965136410638013299
^7 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h8c28f9e3f9518afdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 5007034664204779747
^8 = gv: (name: "_ZN19url_get_query_value19url_get_query_value17he4e160039a6bfb2bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, calls: ((callee: ^20), (callee: ^7), (callee: ^3), (callee: ^10), (callee: ^4))))) ; guid = 6243541601991143054
^9 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17h4393c668d7cc0ff7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^13))))) ; guid = 6384499403125877063
^10 = gv: (name: "_ZN4core3ffi5c_str4CStr8from_ptr17hdf82ec837f687158E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^6), (callee: ^9), (callee: ^1))))) ; guid = 11041341342373614422
^11 = gv: (name: "_ZN4core3ffi5c_str4CStr29from_bytes_with_nul_unchecked7rt_impl17he2e3e977306ccfd4E") ; guid = 13418657139553215595
^12 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17hc5ebb7dfad80b8a6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18, calls: ((callee: ^11))))) ; guid = 13675045450574304203
^13 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h10934d8621541d0eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^16), (callee: ^15))))) ; guid = 13790513579620452019
^14 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h18fea0ba3cec441bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 13798322433058446156
^15 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h151a2b771521c0baE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 13908431906802036310
^16 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hd4b2a7329f0fdc37E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 14142232460520995337
^17 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^18 = gv: (name: "_ZN4core10intrinsics17const_eval_select17h27d8cf5f51697d17E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^12)), refs: (^17)))) ; guid = 14836868348376957074
^19 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hde8905d64b1f4f9eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 15000941822683537925
^20 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17ha0718c082b6497e9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^19), (callee: ^14))))) ; guid = 15479483079808103936
^21 = blockcount: 48
