use std::ffi::CString;
use std::ptr;

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

#[repr(C)]
struct url_key_value {
    key: *const libc::c_char,
    value: *const libc::c_char,
}

extern "C" {
    fn url_parse(url: *const libc::c_char) -> *mut url_data;
    fn url_free(data: *mut url_data);
}

fn url_get_path(url: *const libc::c_char) -> *mut libc::c_char {
    unsafe {
        let data = url_parse(url);
        let out = if !data.is_null() && !(*data).path.is_null() {
            libc::strdup((*data).path)
        } else {
            ptr::null_mut()
        };
        url_free(data);
        out
    }
}

fn main() {
    let url = CString::new("http://example.com/path/to/resource").expect("CString::new failed").into_raw();
    let path = url_get_path(url);
    if !path.is_null() {
        let path_str = unsafe { std::ffi::CStr::from_ptr(path).to_str().expect("Invalid UTF-8") };
        println!("Path: {}", path_str);
        libc::free(path as *mut std::ffi::c_void);
    } else {
        println!("Failed to get path");
    }
}
