use std::ffi::CString;
use std::ptr;

#[repr(C)]
struct UrlKeyValue {
    key: *const libc::c_char,
    value: *const libc::c_char,
}

#[repr(C)]
struct UrlData {
    whole_url: *mut libc::c_char,
    protocol: *const libc::c_char,
    userinfo: *const libc::c_char,
    host: *const libc::c_char,
    port: *const libc::c_char,
    path: *const libc::c_char,
    query: *const UrlKeyValue,
    fragment: *const libc::c_char,
}

#[derive(Debug)]
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

extern "C" {
    fn url_parse(url: *const libc::c_char) -> *mut UrlData;
    fn url_free(data: *mut UrlData);
}

fn url_get_pathname(url: &str) -> Option<String> {
    let url_cstr = CString::new(url).expect("CString::new failed");
    unsafe {
        let data = url_parse(url_cstr.as_ptr());
        let out = if !data.is_null() && !(*data).path.is_null() {
            let path = std::ffi::CStr::from_ptr((*data).path).to_string_lossy().into_owned();
            Some(path)
        } else {
            None
        };
        url_free(data);
        out
    }
}

fn main() {
    let url = "http://example.com/path/to/resource";
    if let Some(pathname) = url_get_pathname(url) {
        println!("Pathname: {}", pathname);
    } else {
        println!("Failed to get pathname");
    }
}
