use std::ptr;
use std::ffi::CString;
use std::os::raw::c_char;
use std::collections::HashMap;

#[derive(Debug)]
struct UrlData {
    whole_url: CString,
    protocol: Option<String>,
    userinfo: Option<String>,
    host: Option<String>,
    port: Option<String>,
    path: Option<String>,
    query: Option<HashMap<String, String>>,
    fragment: Option<String>,
}

#[derive(Debug, Clone, Copy)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x80, // Changed to avoid duplicate value
    Userinfo = 0x100,
    IPv6Char = 0x200,
}

impl std::ops::BitOr for Category {
    type Output = u32;

    fn bitor(self, rhs: Category) -> Self::Output {
        (self as u32) | (rhs as u32)
    }
}

impl std::ops::BitOr<u32> for Category {
    type Output = u32;

    fn bitor(self, rhs: u32) -> Self::Output {
        (self as u32) | rhs
    }
}

fn url_parse(url: &str) -> Option<UrlData> {
    let whole_url = CString::new(url).ok()?;
    let mut data = UrlData {
        whole_url: whole_url.clone(),
        protocol: None,
        userinfo: None,
        host: None,
        port: None,
        path: None,
        query: None,
        fragment: None,
    };

    // Simulate parsing logic here
    // This is a placeholder for the actual parsing logic
    // You would need to implement functions like `scan_part`, `decode_percent`, etc.

    Some(data)
}

fn main() {
    let url = "http://example.com";
    if let Some(parsed_url) = url_parse(url) {
        println!("{:?}", parsed_url);
    } else {
        eprintln!("Failed to parse URL");
    }
}
