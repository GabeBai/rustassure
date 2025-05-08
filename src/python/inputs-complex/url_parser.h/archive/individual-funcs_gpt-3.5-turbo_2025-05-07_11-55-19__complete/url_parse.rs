use std::ffi::CString;
use std::os::raw::c_char;

extern "C" {
    fn fprintf(stream: *mut std::ffi::c_void, format: *const c_char, ...) -> i32;
    fn calloc(nmemb: usize, size: usize) -> *mut std::ffi::c_void;
    fn strlen(s: *const c_char) -> usize;
}

#[repr(C)]
struct url_key_value {
    key: *const c_char,
    value: *const c_char,
}

#[repr(C)]
struct url_data {
    whole_url: *mut c_char,
    protocol: *const c_char,
    userinfo: *const c_char,
    host: *const c_char,
    port: *const c_char,
    path: *const c_char,
    query: *const url_key_value,
    fragment: *const c_char,
}

extern "C" {
    fn url_parse(url: *const c_char) -> *mut url_data;
    fn url_free(data: *mut url_data);
    fn url_is_ssh(str: *const c_char) -> bool;
}

#[repr(u32)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x40,
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

fn main() {
    let url = CString::new("your_url_here").expect("CString::new failed").into_raw();
    let data = unsafe { url_parse(url) };
    if data.is_null() {
        eprintln!("ERROR url.c Line {}! p={}", 190, "your_url_here");
    } else {
        // Access the fields of data as needed
        unsafe {
            url_free(data);
        }
    }
}
