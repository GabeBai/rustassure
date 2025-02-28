use std::ffi::CStr;
use std::ptr;

#[repr(C)]
pub struct url_key_value {
    key: *const libc::c_char,
    value: *const libc::c_char,
}

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

#[no_mangle]
pub unsafe extern "C" fn url_get_query_value(url: *const url_data, key: *const libc::c_char) -> *const libc::c_char {
    if (*url).query.is_null() {
        return ptr::null();
    }

    let key = CStr::from_ptr(key);
    let mut kv = (*url).query;

    while !(*kv).key.is_null() {
        if CStr::from_ptr((*kv).key) == key {
            return (*kv).value;
        }
        kv = kv.add(1);
    }

    ptr::null()
}