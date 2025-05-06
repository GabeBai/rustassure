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

fn url_get_port(url: *const libc::c_char) -> *mut libc::c_char {
    unsafe {
        let data = url_parse(url);
        let out = if !data.is_null() && !(*data).port.is_null() {
            libc::strdup((*data).port)
        } else {
            ptr::null_mut()
        };
        url_free(data);
        out
    }
}

fn main() {
    let url = CString::new("http://example.com:8080/path?query=123#fragment").expect("CString::new failed").into_raw();
    let port = url_get_port(url);
    if !port.is_null() {
        let port_str = unsafe { std::ffi::CStr::from_ptr(port).to_str().expect("Invalid UTF-8") };
        println!("Port: {}", port_str);
        libc::free(port as *mut std::ffi::c_void);
    } else {
        println!("No port found");
    }
    unsafe { CString::from_raw(url); }
}
