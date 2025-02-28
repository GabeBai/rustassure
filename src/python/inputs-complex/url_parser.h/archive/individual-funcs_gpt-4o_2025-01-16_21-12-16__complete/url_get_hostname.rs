#![allow(unaligned_references)]
use std::ffi::{CStr, CString};
use std::ptr;

#[repr(C, packed)]struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

#[repr(C, packed)]struct UrlData {
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
fn url_get_hostname(url: *const i8) -> *mut i8 {
    unsafe {
        let data = url_parse(url);
        if !data.is_null() && !(*data).host.is_null() {
            let host_cstr = CStr::from_ptr((*data).host);
            let host_string = host_cstr.to_string_lossy().into_owned();
            let out = CString::new(host_string).unwrap().into_raw();
            url_free(data);
            out
        } else {
            url_free(data);
            ptr::null_mut()
        }
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let url = CString::new("http://example.com").unwrap();
    let hostname = url_get_hostname(url.as_ptr());
    if !hostname.is_null() {
        unsafe {
            println!("Hostname: {}", CStr::from_ptr(hostname).to_string_lossy());
            CString::from_raw(hostname); // Free the allocated CString
        }
    }
}
