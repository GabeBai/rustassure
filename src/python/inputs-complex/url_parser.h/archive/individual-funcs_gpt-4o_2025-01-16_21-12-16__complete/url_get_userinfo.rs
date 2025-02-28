#![allow(unaligned_references)]
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
#[no_mangle]
#[no_mangle]
    fn url_parse(url: *const i8) -> *mut UrlData;
#[no_mangle]
#[no_mangle]
    fn url_free(data: *mut UrlData);
}

#[no_mangle]
#[no_mangle]
pub fn url_get_userinfo(url: *const i8) -> Option<CString> {
    unsafe {
        let data = url_parse(url);
        if data.is_null() {
            return None;
        }

        let userinfo = (*data).userinfo;
        let result = if !userinfo.is_null() {
            // Convert the C string to a Rust CString
            Some(CStr::from_ptr(userinfo).to_owned())
        } else {
            None
        };

        url_free(data);
        result
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let url = CString::new("http://example.com").unwrap();
    let userinfo = url_get_userinfo(url.as_ptr());
    match userinfo {
        Some(info) => println!("Userinfo: {:?}", info),
        None => println!("No userinfo found"),
    }
}
