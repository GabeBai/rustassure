use std::ffi::{CStr, CString};
use std::os::raw::c_char;
use std::ptr;

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

#[repr(C)]
pub struct UrlKeyValue {
    key: *const c_char,
    value: *const c_char,
}

// Assuming url_parse and url_free are defined elsewhere
extern "C" {
    fn url_parse(url: *const c_char) -> *mut UrlData;
    fn url_free(data: *mut UrlData);
}

fn url_get_fragment(url: *const c_char) -> *mut c_char {
    unsafe {
        let data = url_parse(url);
        if data.is_null() {
            return ptr::null_mut();
        }

        let fragment = (*data).fragment;
        let out = if !fragment.is_null() {
            // Create a CString from the fragment
            CString::from_raw(fragment as *mut c_char).into_raw()
        } else {
            ptr::null_mut()
        };

        url_free(data);
        out
    }
}
