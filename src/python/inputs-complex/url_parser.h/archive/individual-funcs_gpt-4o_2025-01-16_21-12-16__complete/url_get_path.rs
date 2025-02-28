#![allow(unaligned_references)]
use std::ffi::CString;
use std::ptr;

#[repr(C, packed)]struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

#[repr(C, packed)]struct UrlData {
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
#[no_mangle]
#[no_mangle]
    fn url_parse(url: *const i8) -> *mut UrlData;
#[no_mangle]
#[no_mangle]
    fn url_free(data: *mut UrlData);
}

#[no_mangle]
#[no_mangle]
fn url_get_path(url: &str) -> Option<String> {
    let c_url = CString::new(url).expect("CString::new failed");
    unsafe {
        let data = url_parse(c_url.as_ptr());
        if data.is_null() {
            return None;
        }
        let path = if !(*data).path.is_null() {
            Some(CString::from_raw((*data).path as *mut i8).into_string().unwrap())
        } else {
            None
        };
        url_free(data);
        path
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let url = "http://example.com/path";
    if let Some(path) = url_get_path(url) {
        println!("Path: {}", path);
    } else {
        println!("No path found.");
    }
}
