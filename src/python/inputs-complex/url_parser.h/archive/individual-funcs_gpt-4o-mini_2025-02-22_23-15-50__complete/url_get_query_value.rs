use std::ffi::{CStr, CString};
use std::ptr;

#[repr(C)]
pub struct UrlData {
    whole_url: *const i8,
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

pub fn url_get_query_value<'a>(url: &'a UrlData, key: &'a CStr) -> Option<&'a CStr> {
    if url.query.is_null() {
        return None;
    }

    let mut kv = url.query;

    // Safety: We assume that the query is null-terminated.
    unsafe {
        while !(*kv).key.is_null() {
            let kv_key = CStr::from_ptr((*kv).key);
            if kv_key == key {
                return Some(CStr::from_ptr((*kv).value));
            }
            kv = kv.add(1);
        }
    }

    None
}
