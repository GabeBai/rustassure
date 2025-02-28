use std::ffi::CString;

#[repr(u16)]
pub enum Category {
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

struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

struct UrlData {
    whole_url: *const i8,
    protocol: *const i8,
    userinfo: *const i8,
    host: *const i8,
    port: *const i8,
    path: *const i8,
    query: *const UrlKeyValue,
    fragment: *const i8,
}

extern "C" {
    fn url_parse(url: *const i8) -> *mut UrlData;
    fn url_get_port(url: *const i8) -> *mut i8;
    fn url_free(data: *mut UrlData);
}

fn main() {
    let url = CString::new("http://example.com:8080/path?query=123#fragment").unwrap();
    let url_ptr = url.as_ptr();

    unsafe {
        let data = url_parse(url_ptr);
        let port = url_get_port(url_ptr);

        if !data.is_null() && !port.is_null() {
            let port_str = CString::from_raw(port);
            println!("Port: {}", port_str.to_str().unwrap());
        }

        url_free(data);
    }
}
