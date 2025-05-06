use std::ffi::CString;
use std::ptr;

#[repr(C)]
struct url_key_value {
    key: *const libc::c_char,
    value: *const libc::c_char,
}

#[repr(C)]
struct url_data {
    whole_url: *mut libc::c_char,
    protocol: *const libc::c_char,
    userinfo: *const libc::c_char,
    host: *const libc::c_char,
    port: *const libc::c_char,
    path: *const libc::c_char,
    query: *const url_key_value,
    fragment: *const libc::c_char,
}

extern {
    fn url_parse(url: *const libc::c_char) -> *mut url_data;
    fn url_free(data: *mut url_data);
}

fn url_get_fragment(url: *const libc::c_char) -> *mut libc::c_char {
    unsafe {
        let data = url_parse(url);
        let out = if !data.is_null() && !(*data).fragment.is_null() {
            libc::strdup((*data).fragment)
        } else {
            ptr::null_mut()
        };
        url_free(data);
        out
    }
}

fn main() {
    let url = CString::new("http://example.com#fragment").expect("CString::new failed").into_raw();
    let fragment = url_get_fragment(url);
    if !fragment.is_null() {
        let fragment_str = unsafe { std::ffi::CStr::from_ptr(fragment).to_str().expect("Invalid UTF-8") };
        println!("Fragment: {}", fragment_str);
        libc::free(fragment as *mut std::ffi::c_void);
    }
    unsafe { CString::from_raw(url); }
}
