use std::ffi::CString;
use std::ptr;

pub fn url_get_fragment(url: *const libc::c_char) -> *mut libc::c_char {
    unsafe {
        let data = url_parse(url);
        let out = if !data.is_null() && !(*data).fragment.is_null() {
            CString::new(std::ffi::CStr::from_ptr((*data).fragment).to_bytes()).unwrap().into_raw()
        } else {
            ptr::null_mut()
        };
        url_free(data);
        out
    }
}

extern "C" {
    fn url_parse(url: *const libc::c_char) -> *mut url_data_t;
    fn url_free(data: *mut url_data_t);
}

#[repr(C)]
struct url_data_t {
    whole_url: *mut libc::c_char,
    protocol: *const libc::c_char,
    userinfo: *const libc::c_char,
    host: *const libc::c_char,
    port: *const libc::c_char,
    path: *const libc::c_char,
    query: *const url_key_value,
    fragment: *const libc::c_char,
}

#[repr(C)]
struct url_key_value {
    key: *const libc::c_char,
    value: *const libc::c_char,
}