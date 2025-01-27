#![allow(unaligned_references)]
use std::ffi::CString;
use std::str;

#[no_mangle]
#[no_mangle]
fn url_is_protocol(protocol: &str) -> bool {
    // Implement your logic to check if the protocol is valid
    // For demonstration, let's assume any non-empty string is a valid protocol
    !protocol.is_empty()
}

#[no_mangle]
#[no_mangle]
fn url_get_scheme(url: &str) -> Option<String> {
    // Find the position of "://"
    if let Some(pos) = url.find("://") {
        // Extract the scheme part
        let scheme = &url[..pos];
        
        // Check if the extracted scheme is a valid protocol
        if url_is_protocol(scheme) {
            return Some(scheme.to_string());
        }
    }
    None
}

#[no_mangle]
#[no_mangle]
fn main() {
    let url = "https://example.com";
    match url_get_scheme(url) {
        Some(scheme) => println!("Scheme: {}", scheme),
        None => println!("No valid scheme found"),
    }
}
