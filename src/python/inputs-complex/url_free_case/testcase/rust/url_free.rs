#![allow(unaligned_references)]
use std::ffi::CString;
use std::ptr;

#[derive(Debug)]
#[repr(C, packed)]struct UrlKeyValue {
    key: CString,
    value: CString,
}

#[derive(Debug)]
#[repr(C, packed)]struct UrlData {
    whole_url: CString,
    protocol: CString,
    userinfo: CString,
}

impl UrlData {
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
    fn new(
        whole_url: &str,
        protocol: &str,
    ) -> Self {
        UrlData {
            whole_url: CString::new(whole_url).unwrap(),
            protocol: CString::new(protocol).unwrap(),
            userinfo: CString::new(protocol).unwrap(),
        }
    }
}

#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
#[no_mangle]
fn url_free(data: Option<Box<UrlData>>) {
    if let Some(data) = data {
        // The Box will automatically free the memory when it goes out of scope
        // No need to manually free each field as in C
    }
}
