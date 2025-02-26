use std::ffi::{CString, CStr};
use std::ptr;

fn url_is_protocol(protocol: &str) -> bool {
    // Implement your protocol validation logic here
    // For example, check if the protocol is one of the known protocols
    match protocol {
        "http" | "https" | "ftp" => true,
        _ => false,
    }
}

fn url_get_scheme(url: &str) -> Option<String> {
    // Split the URL by "://"
    if let Some(pos) = url.find("://") {
        let protocol = &url[..pos]; // Get the substring before "://"
        if url_is_protocol(protocol) {
            return Some(protocol.to_string()); // Return the protocol as a String
        }
    }
    None // Return None if no valid protocol is found
}

fn main() {
    let url = "https://example.com";
    match url_get_scheme(url) {
        Some(protocol) => println!("Protocol: {}", protocol),
        None => println!("No valid protocol found."),
    }
}
