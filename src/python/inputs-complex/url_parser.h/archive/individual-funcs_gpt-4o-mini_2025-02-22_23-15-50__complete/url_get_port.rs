use std::ffi::{CStr, CString};
use std::ptr;
use std::os::raw::c_char;

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

pub fn url_get_port(url: &str) -> Option<String> {
    let c_url = CString::new(url).unwrap();
    unsafe {
        let data = url_parse(c_url.as_ptr());
        if !data.is_null() {
            let port_ptr = (*data).port;
            let out = if !port_ptr.is_null() {
                let port_cstr = CStr::from_ptr(port_ptr);
                Some(port_cstr.to_string_lossy().into_owned())
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
