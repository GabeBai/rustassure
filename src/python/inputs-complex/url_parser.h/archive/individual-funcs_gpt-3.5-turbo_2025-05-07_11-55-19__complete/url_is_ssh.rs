use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(u16)]
#[derive(Debug, PartialEq)]
pub enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x40,
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

#[derive(Debug)]
struct UrlKeyValue {
    key: *const c_char,
    value: *const c_char,
}

fn url_is_ssh(str: &str) -> bool {
    str == "ssh" || str == "git"
}

fn main() {
    let str1 = "ssh";
    let str2 = "http";

    if url_is_ssh(str1) {
        println!("{} is SSH", str1);
    } else {
        println!("{} is not SSH", str1);
    }

    if url_is_ssh(str2) {
        println!("{} is SSH", str2);
    } else {
        println!("{} is not SSH", str2);
    }
}
