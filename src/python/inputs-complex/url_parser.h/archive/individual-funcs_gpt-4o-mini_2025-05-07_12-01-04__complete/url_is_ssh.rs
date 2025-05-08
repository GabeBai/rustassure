extern "C" {
    fn strcmp(s1: *const i8, s2: *const i8) -> i32;
}

#[repr(C)]
pub enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x41, // Changed to a unique value
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

#[repr(C)]
pub struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

#[no_mangle]
pub extern "C" fn url_is_ssh(str: *const i8) -> bool {
    unsafe {
        if strcmp(str, "ssh".as_ptr() as *const i8) == 0 || strcmp(str, "git".as_ptr() as *const i8) == 0 {
            return true;
        }
    }
    false
}
