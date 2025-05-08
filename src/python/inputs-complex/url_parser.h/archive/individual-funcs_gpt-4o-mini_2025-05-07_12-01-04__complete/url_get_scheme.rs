use std::ffi::CStr;
use std::ptr;
use std::str;

#[derive(Debug)]
pub struct UrlKeyValue {
    key: String,
    value: String,
}

pub fn url_get_scheme(url: &str) -> Option<String> {
    // Allocate a buffer for the protocol
    let mut protocol = String::with_capacity(32);
    
    // Use a slice to read the protocol from the URL
    if let Some(pos) = url.find("://") {
        protocol.push_str(&url[..pos]);
    } else {
        return None; // No protocol found
    }

    // Check if the protocol is valid
    if url_is_protocol(&protocol) {
        return Some(protocol);
    }

    None // Return None if the protocol is not valid
}

// Dummy implementation for url_is_protocol
pub fn url_is_protocol(str: &str) -> bool {
    // Implement your protocol validation logic here
    // For demonstration, let's assume any non-empty string is valid
    !str.is_empty()
}

fn main() {
    let url = "https://example.com";
    match url_get_scheme(url) {
        Some(scheme) => println!("Scheme: {}", scheme),
        None => println!("No valid scheme found."),
    }
}
