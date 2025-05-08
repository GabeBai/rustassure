use std::ffi::CStr;
use std::os::raw::c_char;

extern "C" {
    fn url_get_scheme(url: *const c_char) -> *const c_char;
}

pub fn url_get_protocol(url: *const c_char) -> *const c_char {
    unsafe { url_get_scheme(url) }
}
