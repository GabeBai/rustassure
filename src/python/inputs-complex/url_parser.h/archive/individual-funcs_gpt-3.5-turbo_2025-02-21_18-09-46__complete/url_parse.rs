use std::ffi::CString;
use std::ptr;

#[repr(C)]
pub struct url_data {
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
pub struct url_key_value {
    key: *const libc::c_char,
    value: *const libc::c_char,
}

fn url_parse(url: *const libc::c_char) -> *mut url_data {
    let data = libc::calloc(1, std::mem::size_of::<url_data>()) as *mut url_data;
    if data.is_null() {
        return ptr::null_mut();
    }

    let url_cstr = unsafe { CString::from_raw(url as *mut i8) };
    let url_str = url_cstr.to_str().unwrap();

    // Translate the rest of the C code here...

    data
}
