use std::ffi::CString;

struct url_key_value {
    key: *const i8,
    value: *const i8,
}

struct url_data {
    whole_url: *mut i8,
    protocol: *const i8,
    userinfo: *const i8,
    host: *const i8,
    port: *const i8,
    path: *const i8,
    query: *const url_key_value,
    fragment: *const i8,
}

enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x80,
    Userinfo = 0x100,
    IPv6Char = 0x200,
}

extern "C" {
    fn url_parse(url: *const i8) -> *mut url_data;
    fn url_free(data: *mut url_data);
    fn strdup(s: *const i8) -> *mut i8;
}

fn url_get_pathname(url: *const i8) -> *mut i8 {
    unsafe {
        let data = url_parse(url);
        let out = if !data.is_null() && !(*data).path.is_null() {
            strdup((*data).path)
        } else {
            std::ptr::null_mut()
        };
        url_free(data);
        out
    }
}

fn main() {
    let url = CString::new("https://example.com/path").expect("CString::new failed").into_raw();
    let path = url_get_pathname(url);
    if !path.is_null() {
        let path_str = unsafe { CString::from_raw(path) };
        println!("Pathname: {}", path_str.to_str().expect("Invalid UTF-8"));
    } else {
        println!("Path not found");
    }
}
