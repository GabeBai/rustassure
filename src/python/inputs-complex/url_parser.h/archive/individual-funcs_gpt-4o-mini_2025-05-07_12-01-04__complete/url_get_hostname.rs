// Add this to your Cargo.toml
// [dependencies]
// libc = "0.2" // Ensure you have the correct version

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

#[derive(Debug)]
pub enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x40,
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

extern "C" {
    fn url_parse(url: *const c_char) -> *mut UrlData;
    fn url_free(data: *mut UrlData);
}

pub fn url_get_hostname(url: &str) -> Option<String> {
    let c_url = CString::new(url).unwrap();
    unsafe {
        let data = url_parse(c_url.as_ptr());
        if !data.is_null() {
            let host = (*data).host;
            let out = if !host.is_null() {
                CStr::from_ptr(host).to_string_lossy().into_owned()
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
