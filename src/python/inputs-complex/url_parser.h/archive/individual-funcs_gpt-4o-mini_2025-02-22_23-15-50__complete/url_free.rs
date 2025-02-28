use std::ffi::CString;
use std::ptr;

#[repr(C)]
pub struct UrlData {
    whole_url: *mut i8,
    protocol: *const i8,
    userinfo: *const i8,
    host: *const i8,
    port: *const i8,
    path: *const i8,
    query: *const UrlKeyValue,
    fragment: *const i8,
}

#[repr(C)]
pub struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

pub fn url_free(data: *mut UrlData) {
    if data.is_null() {
        return;
    }
    unsafe {
        if !(*data).whole_url.is_null() {
            CString::from_raw((*data).whole_url);
        }
        if !(*data).query.is_null() {
            CString::from_raw((*data).query as *mut i8);
        }
        Box::from_raw(data);
    }
}
