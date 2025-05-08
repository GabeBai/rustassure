use std::ffi::CString;

struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

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

extern "C" {
    fn url_parse(url: *const i8) -> *mut UrlData;
    fn url_free(data: *mut UrlData);
}

fn url_get_port(url: *const i8) -> Option<String> {
    unsafe {
        let data = url_parse(url);
        let out = if !data.is_null() && !(*data).port.is_null() {
            Some(CString::from_raw((*data).port as *mut i8).to_string_lossy().into_owned())
        } else {
            None
        };
        url_free(data);
        out
    }
}

fn main() {
    let url = CString::new("http://example.com:8080").expect("CString::new failed").into_raw();
    let port = url_get_port(url);
    match port {
        Some(p) => println!("Port: {}", p),
        None => println!("No port found"),
    }
}
