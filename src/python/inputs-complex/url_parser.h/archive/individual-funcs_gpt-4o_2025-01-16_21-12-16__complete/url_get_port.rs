#![allow(unaligned_references)]
use std::ffi::CString;
use std::ptr;
use std::str;

#[derive(Debug)]
#[repr(C, packed)]struct UrlData {
    whole_url: String,
    protocol: Option<String>,
    userinfo: Option<String>,
    host: Option<String>,
    port: Option<String>,
    path: Option<String>,
    query: Option<Vec<UrlKeyValue>>,
    fragment: Option<String>,
}

#[derive(Debug)]
#[repr(C, packed)]struct UrlKeyValue {
    key: String,
    value: String,
}

#[no_mangle]
#[no_mangle]
fn url_parse(url: &str) -> Option<UrlData> {
    // This is a placeholder for the actual URL parsing logic.
    // You would need to implement this function to parse the URL and return UrlData.
    // For now, let's return a dummy UrlData with only the port field filled for demonstration.
    Some(UrlData {
        whole_url: url.to_string(),
        protocol: None,
        userinfo: None,
        host: None,
        port: Some("8080".to_string()), // Example port
        path: None,
        query: None,
        fragment: None,
    })
}

#[no_mangle]
#[no_mangle]
fn url_free(_data: UrlData) {
    // In Rust, memory is managed automatically, so we don't need to manually free it.
    // This function is a no-op.
}

#[no_mangle]
#[no_mangle]
fn url_get_port(url: &str) -> Option<String> {
    if let Some(data) = url_parse(url) {
        let port = data.port.clone();
        url_free(data);
        port
    } else {
        None
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let url = "http://example.com:8080";
    if let Some(port) = url_get_port(url) {
        println!("Port: {}", port);
    } else {
        println!("No port found.");
    }
}
