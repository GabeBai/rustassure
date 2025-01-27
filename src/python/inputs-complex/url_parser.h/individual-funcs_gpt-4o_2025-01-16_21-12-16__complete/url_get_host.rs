#![allow(unaligned_references)]
use std::ffi::{CString, CStr};
use std::ptr;

#[repr(C, packed)]struct UrlData {
    whole_url: *const i8,
    protocol: *const i8,
    userinfo: *const i8,
    host: *const i8,
    port: *const i8,
    path: *const i8,
    query: *const UrlKeyValue,
    fragment: *const i8,
}

#[repr(C, packed)]struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn url_parse(url: *const i8) -> *mut UrlData;
#[no_mangle]
#[no_mangle]
    fn url_free(data: *mut UrlData);
}

#[no_mangle]
#[no_mangle]
fn url_get_host(url: *const i8) -> Option<String> {
    unsafe {
        let data = url_parse(url);
        if data.is_null() {
            return None;
        }

        let host = if !(*data).host.is_null() {
            let c_str = CStr::from_ptr((*data).host);
            Some(c_str.to_string_lossy().into_owned())
        } else {
            None
        };

        url_free(data);
        host
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let url = CString::new("http://example.com").unwrap();
    if let Some(host) = url_get_host(url.as_ptr()) {
        println!("Host: {}", host);
    } else {
        println!("Failed to get host.");
    }
}
