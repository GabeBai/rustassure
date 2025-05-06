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

fn url_get_host(url: *const libc::c_char) -> Option<String> {
    unsafe {
        let data = url_parse(url);
        let out = if !data.is_null() && !(*data).host.is_null() {
            let host = CString::from_raw((*data).host as *mut i8).into_string().unwrap();
            Some(host)
        } else {
            None
        };
        url_free(data);
        out
    }
}

fn main() {
    let url = CString::new("http://example.com/path?query=123#fragment").unwrap();
    let host = url_get_host(url.as_ptr());
    match host {
        Some(h) => println!("Host: {}", h),
        None => println!("Failed to extract host"),
    }
}
