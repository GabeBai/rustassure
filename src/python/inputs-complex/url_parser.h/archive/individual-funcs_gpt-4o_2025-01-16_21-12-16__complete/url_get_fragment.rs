#![allow(unaligned_references)]
use std::ffi::{CString, CStr};
use std::ptr;
use std::os::raw::c_char;

#[repr(C, packed)]struct UrlData {
    whole_url: *const c_char,
    protocol: *const c_char,
    userinfo: *const c_char,
    host: *const c_char,
    port: *const c_char,
    path: *const c_char,
    query: *const UrlKeyValue,
    fragment: *const c_char,
}

#[repr(C, packed)]struct UrlKeyValue {
    key: *const c_char,
    value: *const c_char,
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn url_parse(url: *const c_char) -> *mut UrlData;
#[no_mangle]
#[no_mangle]
    fn url_free(data: *mut UrlData);
}

#[no_mangle]
#[no_mangle]
fn url_get_fragment(url: *const c_char) -> *mut c_char {
    unsafe {
        let data = url_parse(url);
        if data.is_null() {
            return ptr::null_mut();
        }

        let fragment = (*data).fragment;
        let out = if !fragment.is_null() {
            // Duplicate the fragment string
            let c_str = CStr::from_ptr(fragment);
            CString::new(c_str.to_bytes()).unwrap().into_raw()
        } else {
            ptr::null_mut()
        };

        url_free(data);
        out
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let url = CString::new("http://example.com/path#fragment").unwrap();
    let fragment = url_get_fragment(url.as_ptr());
    if !fragment.is_null() {
        unsafe {
            println!("Fragment: {}", CStr::from_ptr(fragment).to_str().unwrap());
            // Free the duplicated string
            CString::from_raw(fragment);
        }
    }
}
