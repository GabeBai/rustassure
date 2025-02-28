#![allow(unaligned_references)]
use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
pub struct UrlKeyValue {
    key: *const c_char,
    value: *const c_char,
}

#[repr(C)]
pub struct UrlData {
    whole_url: *mut c_char,
    protocol: *const c_char,
    userinfo: *const c_char,
    host: *const c_char,
    port: *const c_char,
    path: *const c_char,
    query: *const UrlKeyValue,
    fragment: *const c_char,
}

pub unsafe fn url_get_query_value(url: *const UrlData, key: *const c_char) -> *const c_char {
    if (*url).query.is_null() {
        return std::ptr::null();
    }
    let mut kv = (*url).query;
    while !(*kv).key.is_null() {
        if CStr::from_ptr((*kv).key) == CStr::from_ptr(key) {
            return (*kv).value;
        }
        kv = kv.add(1);
    }
    std::ptr::null()
}
