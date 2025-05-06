use std::ffi::CString;

#[repr(C)]
struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

#[repr(C)]
struct UrlData {
    whole_url: *mut i8,
    protocol: *const i8,
    userinfo: *const i8,
    host: *const i8,
    port: *const i8,
    path: *const i8,
    query: *const UrlKeyValue,
    fragment: *const i8,
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

extern {
    fn url_parse(url: *const i8) -> *mut UrlData;
    fn url_data_inspect(data: *const UrlData);
}

fn url_inspect(url: &str) {
    let c_url = CString::new(url).expect("CString::new failed");
    let url_data = unsafe { url_parse(c_url.as_ptr()) };
    unsafe { url_data_inspect(url_data) };
}

fn main() {
    let url = "http://example.com";
    url_inspect(url);
}
