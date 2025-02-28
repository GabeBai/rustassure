use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
pub enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x80, // Changed to 0x80 for uniqueness
    Userinfo = 0x100,
    IPv6Char = 0x200, // Changed to 0x200 for uniqueness
}

#[repr(C)]
pub struct UrlKeyValue {
    key: *const c_char,
    value: *const c_char,
}

#[no_mangle]
pub extern "C" fn url_is_ssh(str: *const c_char) -> bool {
    let str = unsafe { CStr::from_ptr(str) };
    let str = str.to_str().unwrap_or("");

    str == "ssh" || str == "git"
}
