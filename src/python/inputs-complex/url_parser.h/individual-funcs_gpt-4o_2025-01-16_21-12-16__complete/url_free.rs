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
    host: CString,
    port: CString,
    path: CString,
    query: Option<UrlKeyValue>,
    fragment: CString,
}

impl UrlData {
#[no_mangle]
#[no_mangle]
    fn new(
        whole_url: &str,
        protocol: &str,
        userinfo: &str,
        host: &str,
        port: &str,
        path: &str,
        query: Option<UrlKeyValue>,
        fragment: &str,
    ) -> Self {
        UrlData {
            whole_url: CString::new(whole_url).unwrap(),
            protocol: CString::new(protocol).unwrap(),
            userinfo: CString::new(userinfo).unwrap(),
            host: CString::new(host).unwrap(),
            port: CString::new(port).unwrap(),
            path: CString::new(path).unwrap(),
            query,
            fragment: CString::new(fragment).unwrap(),
        }
    }
}

#[no_mangle]
#[no_mangle]
fn url_free(data: Option<Box<UrlData>>) {
    if let Some(data) = data {
        // The Box will automatically free the memory when it goes out of scope
        // No need to manually free each field as in C
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let query = UrlKeyValue {
        key: CString::new("key").unwrap(),
        value: CString::new("value").unwrap(),
    };

    let url_data = UrlData::new(
        "http://example.com",
        "http",
        "user:pass",
        "example.com",
        "80",
        "/path",
        Some(query),
        "fragment",
    );

    // Wrap in Box to simulate heap allocation
    let boxed_url_data = Some(Box::new(url_data));

    // Free the URL data
    url_free(boxed_url_data);
}
