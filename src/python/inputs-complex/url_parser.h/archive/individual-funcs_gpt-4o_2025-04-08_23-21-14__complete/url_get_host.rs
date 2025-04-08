use std::ffi::{CStr, CString};
use std::ptr;

#[repr(C)]
struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

#[repr(C)]
struct UrlData {
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

#[derive(Debug)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x41, // Changed to a unique value
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

fn url_get_host(url: &str) -> Option<String> {
    let c_url = CString::new(url).expect("CString::new failed");
    unsafe {
        let data = url_parse(c_url.as_ptr());
        if data.is_null() {
            return None;
        }
        let host = if !(*data).host.is_null() {
            Some(CStr::from_ptr((*data).host).to_string_lossy().into_owned())
        } else {
            None
        };
        url_free(data);
        host
    }
}

fn main() {
    let url = "http://example.com";
    match url_get_host(url) {
        Some(host) => println!("Host: {}", host),
        None => println!("Failed to get host"),
    }
}
