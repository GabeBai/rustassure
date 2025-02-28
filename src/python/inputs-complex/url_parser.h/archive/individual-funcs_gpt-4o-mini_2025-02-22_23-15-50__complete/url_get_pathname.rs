use std::ffi::{CStr, CString};
use std::ptr;

#[repr(C)]
pub struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

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

extern "C" {
    fn url_parse(url: *const i8) -> *mut UrlData;
    fn url_free(data: *mut UrlData);
}

pub fn url_get_pathname(url: &str) -> Option<String> {
    let c_url = CString::new(url).ok()?;
    unsafe {
        let data = url_parse(c_url.as_ptr());
        if data.is_null() {
            return None;
        }
        let path_ptr = (*data).path;
        let out = if !path_ptr.is_null() {
            let c_str = CStr::from_ptr(path_ptr);
            Some(c_str.to_string_lossy().into_owned())
        } else {
            None
        };
        url_free(data);
        out
    }
}
