extern crate libc;

use libc::{c_char, c_void};
use std::ffi::{CStr, CString};
use std::ptr;

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

extern "C" {
    fn url_parse(url: *const c_char) -> *mut UrlData;
    fn url_free(data: *mut UrlData);
}

pub fn url_get_userinfo(url: &str) -> Option<String> {
    let c_url = CString::new(url).unwrap();
    unsafe {
        let data = url_parse(c_url.as_ptr());
        if !data.is_null() {
            let userinfo = (*data).userinfo;
            let out = if !userinfo.is_null() {
                let c_str = CStr::from_ptr(userinfo);
                Some(c_str.to_string_lossy().into_owned())
            } else {
                None
            };
            url_free(data);
            out
        } else {
            None
        }
    }
}
