#![allow(unaligned_references)]
use std::ffi::CString;
use std::ptr;
use std::os::raw::c_char;
use std::io::{self, Write};

#[derive(Debug)]
#[repr(C, packed)]struct UrlData {
    whole_url: String,
    protocol: String,
    userinfo: Option<String>,
    host: String,
    port: Option<String>,
    path: String,
    query: Option<String>,
    fragment: Option<String>,
}

#[no_mangle]
#[no_mangle]
fn url_parse(url: &str) -> Option<UrlData> {
    let mut data = UrlData {
        whole_url: url.to_string(),
        protocol: String::new(),
        userinfo: None,
        host: String::new(),
        port: None,
        path: String::new(),
        query: None,
        fragment: None,
    };

    let mut p = url;
    let p_end = p.len();

    // Simulate scan_part function
    let protocol_end = p.find(':')?;
    data.protocol = p[..protocol_end].to_string();
    p = &p[protocol_end + 1..];

    if !p.starts_with("//") {
        eprintln!("ERROR url.c Line 205! p=\"{}\"", p);
        return None;
    }
    p = &p[2..];

    // Simulate scan_part function for userinfo
    if let Some(userinfo_end) = p.find('@') {
        data.userinfo = Some(p[..userinfo_end].to_string());
        p = &p[userinfo_end + 1..];
    }

    // Simulate scan_part function for host
    let hostname_end = p.find('/').unwrap_or(p_end);
    data.host = p[..hostname_end].to_string();
    p = &p[hostname_end..];

    // Simulate scan_part function for path
    let path_end = p.find('?').unwrap_or_else(|| p.find('#').unwrap_or(p_end));
    data.path = p[..path_end].to_string();
    p = &p[path_end..];

    // Handle query and fragment
    if p.starts_with('?') {
        let query_end = p.find('#').unwrap_or(p_end);
        data.query = Some(p[1..query_end].to_string());
        p = &p[query_end..];
    }

    if p.starts_with('#') {
        data.fragment = Some(p[1..].to_string());
    }

    Some(data)
}

#[no_mangle]
#[no_mangle]
fn main() {
    let url = "http://example.com/path?query#fragment";
    if let Some(parsed_url) = url_parse(url) {
        println!("{:?}", parsed_url);
    } else {
        eprintln!("Failed to parse URL");
    }
}
